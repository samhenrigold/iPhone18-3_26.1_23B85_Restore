Swift::Bool __swiftcall PhoneCallNLIntent.isGroupFaceTimeCall()()
{
  OUTLINED_FUNCTION_24_3();
  v1 = *(v0 + 128);
  v2 = *(v1() + 16);

  OUTLINED_FUNCTION_20_0();
  v3 = PhoneCallNLIntent.isFaceTimeCall()();
  if (v2)
  {
    if (v3)
    {
      v4 = OUTLINED_FUNCTION_20_0();
      v5 = (v1)(v4);
      goto LABEL_6;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_97_3();
  v6 = OUTLINED_FUNCTION_20_0();
  v5 = v7(v6);
LABEL_6:
  v8 = *(v5 + 16);

  if (v8 > 1)
  {
    return 1;
  }

  v10 = OUTLINED_FUNCTION_20_0();
  v12 = *(v11(v10) + 16);

  return v12 != 0;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isVideoCall()()
{
  OUTLINED_FUNCTION_24_3();
  if (PhoneCallNLIntent.hasAnyFaceTime()() && (OUTLINED_FUNCTION_20_0(), !PhoneCallNLIntent.hasAudioCallSemantic()()))
  {
    OUTLINED_FUNCTION_20_0();
    return !PhoneCallNLIntent.isFind()();
  }

  else
  {
    return 0;
  }
}

uint64_t PhoneCallNLIntent.isOutgoingCall()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_24_3();
  if (v6())
  {
    return 1;
  }

  v7 = OUTLINED_FUNCTION_20_0();
  if (a4(v7))
  {
    return 1;
  }

  v9 = OUTLINED_FUNCTION_20_0();

  return a5(v9);
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasVideoCallSemantic()()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_37_21();
  v1 = *(v0 + 80);
  v1();
  OUTLINED_FUNCTION_69_9();
  if (!v3)
  {
    PhoneCallNoun.rawValue.getter(v2);
    OUTLINED_FUNCTION_103_2();
    if (v3)
    {
      v6 = v5 == 0xE800000000000000;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      OUTLINED_FUNCTION_35_18(v4);
    }
  }

  v7 = OUTLINED_FUNCTION_8_2();
  v8(v7);
  OUTLINED_FUNCTION_20_31();
  if (!v3)
  {
    PhoneCallVerb.rawValue.getter(v9);
    OUTLINED_FUNCTION_103_2();
    if (v10)
    {
      v13 = v12 == 0xE800000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      OUTLINED_FUNCTION_35_18(v11);
    }
  }

  v14 = OUTLINED_FUNCTION_8_2();
  (v1)(v14);
  OUTLINED_FUNCTION_69_9();
  if (!v3)
  {
    v16 = PhoneCallNoun.rawValue.getter(v15);
    if (v16 != 0x61665F70756F7267 || v17 != 0xEE00656D69746563)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  OUTLINED_FUNCTION_60_1();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasAudioCallSemantic()()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_92_3();
  (*(v5 + 80))();
  OUTLINED_FUNCTION_69_9();
  if (!v9)
  {
    v7 = PhoneCallNoun.rawValue.getter(v6);
    v9 = v7 == v0 && v8 == 0xEE006F6964756120;
    if (!v9)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v2 + 104))(v4, v2);
  OUTLINED_FUNCTION_20_31();
  if (!v9)
  {
    v11 = PhoneCallVerb.rawValue.getter(v10);
    if (v11 != v0 || v12 != 0xEE006F6964756120)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  OUTLINED_FUNCTION_60_1();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isRedialOrCallBack()()
{
  OUTLINED_FUNCTION_24_3();
  v0 = PhoneCallNLIntent.isRedial()();
  OUTLINED_FUNCTION_20_0();
  return (v0 | PhoneCallNLIntent.isCallBack()()) & 1;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v9 = *(v7 + v5);
    result = a1(&v9, a2);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

void specialized Sequence<>.contains(_:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  OUTLINED_FUNCTION_74_6();
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  do
  {
    if (v5-- == 0)
    {
      break;
    }

    v8 = 0xE600000000000000;
    v9 = v1;
    switch(*v6)
    {
      case 1:
        v8 = 0xE300000000000000;
        v9 = OUTLINED_FUNCTION_53_18();
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_19_30();
        break;
      case 3:
        v8 = 0xE700000000000000;
        v9 = OUTLINED_FUNCTION_4_7();
        break;
      case 4:
        v8 = 0xE800000000000000;
        v9 = OUTLINED_FUNCTION_7_53();
        break;
      case 5:
        v8 = 0xE800000000000000;
        v9 = OUTLINED_FUNCTION_11_42() & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
        break;
      case 6:
        v8 = 0xE400000000000000;
        v9 = OUTLINED_FUNCTION_110_3();
        break;
      case 7:
        v8 = 0xE800000000000000;
        v9 = OUTLINED_FUNCTION_6_59();
        break;
      case 8:
        v8 = 0xE700000000000000;
        v9 = OUTLINED_FUNCTION_9_52();
        break;
      case 9:
        v8 = 0xE700000000000000;
        v9 = OUTLINED_FUNCTION_5_64();
        break;
      case 0xA:
        v9 = 0x646C6F486E6FLL;
        break;
      case 0xB:
        v9 = OUTLINED_FUNCTION_12_46() & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
        v8 = 0xE900000000000065;
        break;
      case 0xC:
        v9 = OUTLINED_FUNCTION_8_9();
        v8 = 0xEC0000006C69616DLL;
        break;
      case 0xD:
        v9 = OUTLINED_FUNCTION_54_18();
        v8 = 0x8000000000453620;
        break;
      default:
        break;
    }

    v10 = 0xE600000000000000;
    v11 = v1;
    switch(v3)
    {
      case 1:
        v10 = 0xE300000000000000;
        v11 = 7824750;
        break;
      case 2:
        v11 = 0x746E65636572;
        break;
      case 3:
        v10 = 0xE700000000000000;
        v11 = 0x64657661736E75;
        break;
      case 4:
        v10 = 0xE800000000000000;
        v11 = 0x6465766965636572;
        break;
      case 5:
        v10 = 0xE800000000000000;
        v11 = 0x676E696F6774756FLL;
        break;
      case 6:
        v10 = 0xE400000000000000;
        OUTLINED_FUNCTION_101_3();
        break;
      case 7:
        v10 = 0xE800000000000000;
        v11 = 0x7373656E69737562;
        break;
      case 8:
        v10 = 0xE700000000000000;
        v11 = 0x746E6572727563;
        break;
      case 9:
        v10 = 0xE700000000000000;
        v11 = 0x676E69676E6972;
        break;
      case 10:
        v11 = 0x646C6F486E6FLL;
        break;
      case 11:
        v11 = 0x676E615265746164;
        v10 = 0xE900000000000065;
        break;
      case 12:
        v11 = 0x6563696F5677656ELL;
        v10 = 0xEC0000006C69616DLL;
        break;
      case 13:
        v11 = 0xD000000000000014;
        v10 = 0x8000000000453620;
        break;
      default:
        break;
    }

    if (v9 == v11 && v8 == v10)
    {

      break;
    }

    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_20_2();

    ++v6;
  }

  while ((v0 & 1) == 0);
  OUTLINED_FUNCTION_65();
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void *PhoneCallNLIntent.getPersons()()
{
  OUTLINED_FUNCTION_41_21();
  v1 = v0();
  v2 = *(v1 + 16);
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = v1 + 32;
    do
    {
      outlined init with copy of SharedGlobalsProviding();
      OUTLINED_FUNCTION_86(v5);
      SiriPhoneContact.toINPerson()();
      __swift_destroy_boxed_opaque_existential_1(v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 40;
      --v2;
    }

    while (v2);

    return v6;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isBusinessRedirectCall()()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_57_15();
  v2 = v1();
  if (v2)
  {
    v3 = (v2 + 32);
    v4 = *(v2 + 16);
    while (2)
    {
      if (v4-- != 0)
      {
        v6 = 0xE600000000000000;
        v7 = 0x64657373696DLL;
        switch(*v3)
        {
          case 1:
            v6 = 0xE300000000000000;
            v7 = OUTLINED_FUNCTION_53_18();
            goto LABEL_19;
          case 2:
            v7 = OUTLINED_FUNCTION_19_30();
            goto LABEL_19;
          case 3:
            v6 = 0xE700000000000000;
            v7 = OUTLINED_FUNCTION_4_7();
            goto LABEL_19;
          case 4:
            v6 = 0xE800000000000000;
            v7 = OUTLINED_FUNCTION_7_53();
            goto LABEL_19;
          case 5:
            v6 = 0xE800000000000000;
            v8 = OUTLINED_FUNCTION_11_42();
            goto LABEL_15;
          case 6:
            v6 = 0xE400000000000000;
            v7 = OUTLINED_FUNCTION_110_3();
            goto LABEL_19;
          case 7:
            v6 = 0xE800000000000000;
            v7 = OUTLINED_FUNCTION_6_59();
            goto LABEL_19;
          case 8:
            v6 = 0xE700000000000000;
            v7 = OUTLINED_FUNCTION_9_52();
            goto LABEL_19;
          case 9:
            v6 = 0xE700000000000000;
            v7 = OUTLINED_FUNCTION_5_64();
            goto LABEL_19;
          case 0xA:
            v7 = OUTLINED_FUNCTION_13_41();
            goto LABEL_19;
          case 0xB:
            v6 = 0xE900000000000065;
            v8 = OUTLINED_FUNCTION_12_46();
LABEL_15:
            v7 = v8 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
            goto LABEL_19;
          case 0xC:
            v6 = 0xEC0000006C69616DLL;
            v7 = 0x6563696F5677656ELL;
            goto LABEL_19;
          case 0xD:

            break;
          default:
LABEL_19:
            OUTLINED_FUNCTION_79_6(v7, v6, 0xD000000000000014);
            OUTLINED_FUNCTION_62_15();
            ++v3;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_65();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isEmergencyContactCall()()
{
  OUTLINED_FUNCTION_41_21();
  v2();
  OUTLINED_FUNCTION_99_2();
  if (v0)
  {
    OUTLINED_FUNCTION_96_3();
    while (1)
    {
      OUTLINED_FUNCTION_95_3();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_85_4();
      v5 = OUTLINED_FUNCTION_1_83(v10);
      v7 = SiriPhoneContact.getEmergencyType()(v5, v6);
      if (v8 != 3)
      {
        if (!v8)
        {
          outlined consume of PhoneCallEmergencyType?(v7, 0);

          __swift_destroy_boxed_opaque_existential_1(v10);
          return 1;
        }

        outlined consume of PhoneCallEmergencyType?(v7, v8);
      }

      ++v1;
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_94_6();
      if (v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isFaceTimeCall()()
{
  OUTLINED_FUNCTION_24_3();
  if (PhoneCallNLIntent.hasAnyFaceTime()())
  {
    return 1;
  }

  v1 = OUTLINED_FUNCTION_20_0();
  v2(v1);
  OUTLINED_FUNCTION_69_9();
  if (v4)
  {
    return 0;
  }

  PhoneCallNoun.rawValue.getter(v3);
  OUTLINED_FUNCTION_78_8();
  if (v4)
  {
    v7 = v6 == 0xEE00656D69746563;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  OUTLINED_FUNCTION_61_15(v5);
  OUTLINED_FUNCTION_33_2();
  return 1;
}

void PhoneCallNLIntent.shouldResetRequest(previousNLIntent:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  outlined init with copy of PhoneCallNLIntent?(v12, &v57);
  if (v58)
  {
    outlined init with take of PhoneCallFeatureFlagProviding(&v57, v60);
    v58 = v3;
    v59 = v1;
    __swift_allocate_boxed_opaque_existential_1(&v57);
    v13 = *(v5 + 16);
    OUTLINED_FUNCTION_77_9();
    v13();
    v14 = OUTLINED_FUNCTION_91_6();
    v16 = static PhoneCallNLIntent.isAppModified(previousNLIntent:currentNLIntent:)(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(&v57);
    if (v16)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriPhone);
      OUTLINED_FUNCTION_91_6();
      outlined init with copy of SharedGlobalsProviding();
      OUTLINED_FUNCTION_77_9();
      v13();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v56 = v21;
        *v20 = 136315394;
        v22 = v59;
        v23 = OUTLINED_FUNCTION_86(&v57);
        v24 = PhoneCallNLIntent.applicationId.getter(v23, v22);
        if (v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = 7104878;
        }

        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0xE300000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(&v57);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v56);

        *(v20 + 4) = v28;
        *(v20 + 12) = 2080;
        v29 = PhoneCallNLIntent.applicationId.getter(v3, v1);
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 7104878;
        }

        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0xE300000000000000;
        }

        (*(v5 + 8))(v11, v3);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v56);

        *(v20 + 14) = v33;
        _os_log_impl(&dword_0, v18, v19, "#PhoneCallNLIntent applicationId is changed from %s to %s, set shouldResetRequest as true", v20, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v21);
        OUTLINED_FUNCTION_26_0(v20);

LABEL_35:
        v44 = v60;
        goto LABEL_36;
      }

      (*(v5 + 8))(v11, v3);
      goto LABEL_30;
    }

    v58 = v3;
    v59 = v1;
    __swift_allocate_boxed_opaque_existential_1(&v57);
    OUTLINED_FUNCTION_77_9();
    v13();
    OUTLINED_FUNCTION_91_6();
    static PhoneCallNLIntent.isPhoneCallVerbModified(previousNLIntent:currentNLIntent:)();
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1(&v57);
    if (v35)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.siriPhone);
      OUTLINED_FUNCTION_91_6();
      outlined init with copy of SharedGlobalsProviding();
      OUTLINED_FUNCTION_77_9();
      v13();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = v55;
        *v39 = 136315394;
        v41 = v58;
        v40 = v59;
        __swift_project_boxed_opaque_existential_1(&v57, v58);
        (*(v40 + 104))(v41, v40);
        OUTLINED_FUNCTION_20_31();
        if (v43)
        {
          v47 = 0xE300000000000000;
          v45 = 7104878;
        }

        else
        {
          v45 = PhoneCallVerb.rawValue.getter(v42);
          v47 = v46;
        }

        __swift_destroy_boxed_opaque_existential_1(&v57);
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v56);

        *(v39 + 4) = v48;
        *(v39 + 12) = 2080;
        (*(v1 + 104))(v3, v1);
        OUTLINED_FUNCTION_20_31();
        if (v43)
        {
          v52 = 0xE300000000000000;
          v50 = 7104878;
        }

        else
        {
          v50 = PhoneCallVerb.rawValue.getter(v49);
          v52 = v51;
        }

        (*(v5 + 8))(v8, v3);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v56);

        *(v39 + 14) = v53;
        _os_log_impl(&dword_0, v37, v38, "#PhoneCallNLIntent phoneCallVerb is changed from %s to %s, set shouldResetRequest as true", v39, 0x16u);
        v54 = v55;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v54);
        OUTLINED_FUNCTION_26_0(v39);

        goto LABEL_35;
      }

      (*(v5 + 8))(v8, v3);
LABEL_30:
      __swift_destroy_boxed_opaque_existential_1(v60);
      v44 = &v57;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v44);
      goto LABEL_37;
    }

    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    outlined destroy of PhoneCallApp?(&v57, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd);
  }

LABEL_37:
  OUTLINED_FUNCTION_65();
}

Swift::Bool __swiftcall PhoneCallNLIntent.isEmergencyNumberCall()()
{
  OUTLINED_FUNCTION_41_21();
  v2();
  OUTLINED_FUNCTION_99_2();
  if (v0)
  {
    OUTLINED_FUNCTION_96_3();
    while (1)
    {
      OUTLINED_FUNCTION_95_3();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_85_4();
      v5 = OUTLINED_FUNCTION_1_83(v10);
      v7 = SiriPhoneContact.getEmergencyType()(v5, v6);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          outlined consume of PhoneCallEmergencyType?(v7, 2uLL);

          __swift_destroy_boxed_opaque_existential_1(v10);
          return 1;
        }

        outlined consume of PhoneCallEmergencyType?(v7, v8);
      }

      ++v1;
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_94_6();
      if (v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isEmergencyServicesCall()()
{
  OUTLINED_FUNCTION_107_3();
  v31 = v0;
  v32 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_41_21();
  v7 = v6();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v7 + 32;
    while (v10 < *(v8 + 16))
    {
      outlined init with copy of SharedGlobalsProviding();
      v12 = v30;
      v13 = OUTLINED_FUNCTION_86(&v29);
      v14 = SiriPhoneContact.getEmergencyType()(v13, v12);
      if (v15 != 3)
      {
        if (v15 == 1)
        {
          v16 = 1;
          outlined consume of PhoneCallEmergencyType?(v14, 1uLL);

          __swift_destroy_boxed_opaque_existential_1(&v29);
          goto LABEL_10;
        }

        outlined consume of PhoneCallEmergencyType?(v14, v15);
      }

      ++v10;
      __swift_destroy_boxed_opaque_existential_1(&v29);
      v11 += 40;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_0_6();
    swift_once();
    goto LABEL_22;
  }

LABEL_8:

  v16 = 0;
LABEL_10:
  (*(v3 + 72))(v5, v3);
  OUTLINED_FUNCTION_56_8();
  if (v18)
  {
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    PhoneCallDestinationType.rawValue.getter(v17);
    OUTLINED_FUNCTION_27_22();
    if (v18)
    {
      v21 = v20 == 0xE900000000000079;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
    }

    else
    {
      OUTLINED_FUNCTION_111_4(v19, v3, 0x636E656772656D65, 121);
      OUTLINED_FUNCTION_33_2();
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10_0(v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    OUTLINED_FUNCTION_33(&dword_0, v26, v27, "#PhoneCallNLIntent EmergencyServices intent");
    OUTLINED_FUNCTION_26_0(v25);
  }

LABEL_25:
  OUTLINED_FUNCTION_106_1();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isAnswerCall()()
{
  OUTLINED_FUNCTION_34_14();
  v0();
  OUTLINED_FUNCTION_20_31();
  if (v3)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_27_22();
  if (v3)
  {
    v6 = v5 == 0xE600000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_36_19(v4);
    OUTLINED_FUNCTION_33_2();
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isHangUpCall()()
{
  OUTLINED_FUNCTION_34_14();
  v1();
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v2);
  OUTLINED_FUNCTION_27_22();
  if (v4)
  {
    v7 = v6 == 0xE700000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_86_6(v5, v0);
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isBusinessNameCall()()
{
  OUTLINED_FUNCTION_10_55();
  v3 = (*(v2 + 40))();
  if (v3)
  {
    v4 = (v3 + 32);
    v5 = *(v3 + 16);
    OUTLINED_FUNCTION_74_6();
    while (v5)
    {
      v6 = v1;
      switch(*v4)
      {
        case 1:
          v6 = OUTLINED_FUNCTION_24_27();
          break;
        case 2:
          v6 = OUTLINED_FUNCTION_19_30();
          break;
        case 3:
          v6 = OUTLINED_FUNCTION_4_7();
          break;
        case 4:
          v6 = OUTLINED_FUNCTION_7_53();
          break;
        case 5:
          v7 = OUTLINED_FUNCTION_11_42();
          goto LABEL_15;
        case 6:
          v6 = OUTLINED_FUNCTION_110_3();
          break;
        case 7:

          goto LABEL_19;
        case 8:
          v6 = OUTLINED_FUNCTION_9_52();
          break;
        case 9:
          v6 = OUTLINED_FUNCTION_5_64();
          break;
        case 0xA:
          v6 = OUTLINED_FUNCTION_13_41();
          break;
        case 0xB:
          v7 = OUTLINED_FUNCTION_12_46();
LABEL_15:
          v6 = v7 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
          break;
        case 0xC:
          v6 = OUTLINED_FUNCTION_2_81();
          break;
        case 0xD:
          v6 = OUTLINED_FUNCTION_54_18();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_35_18(v6);
      OUTLINED_FUNCTION_113_0();
      ++v4;
      --v5;
      if (v0)
      {
LABEL_19:

        OUTLINED_FUNCTION_20_0();
        return !PhoneCallNLIntent.hasPhoneNumber()();
      }
    }
  }

  return 0;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isCallWithReference()()
{
  OUTLINED_FUNCTION_24_3();
  if (!PhoneCallNLIntent.hasCallVerb()())
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_20_0();
  v3 = v2(v1);
  specialized Array.count.getter(v3);
  OUTLINED_FUNCTION_40_0();

  return v0 != 0;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isDisplayNameEmergencyContact()()
{
  OUTLINED_FUNCTION_107_3();
  v18 = v0;
  v19 = v1;
  OUTLINED_FUNCTION_41_21();
  v3 = v2();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 32;
    while (v6 < *(v4 + 16))
    {
      OUTLINED_FUNCTION_85_4();
      v8 = v16;
      v9 = v17;
      __swift_project_boxed_opaque_existential_1(&v15, v16);
      v10 = (*(v9 + 408))(v8, v9);
      if (v11)
      {
        if (v10 == 0xD000000000000011 && v11 == 0x800000000045E840)
        {

          __swift_destroy_boxed_opaque_existential_1(&v15);
          goto LABEL_15;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        LOBYTE(v3) = __swift_destroy_boxed_opaque_existential_1(&v15);
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        LOBYTE(v3) = __swift_destroy_boxed_opaque_existential_1(&v15);
      }

      ++v6;
      v7 += 40;
      if (v5 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    OUTLINED_FUNCTION_106_1();
  }

  return v3;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isNextAfterPlayingVoiceMail()()
{
  (*(v0 + 112))();
  OUTLINED_FUNCTION_68_7();
  if (v4)
  {
    return 0;
  }

  VoiceMail.VoiceMailVerb.rawValue.getter(v2);
  OUTLINED_FUNCTION_27_22();
  if (v4)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
  }

  else
  {
    OUTLINED_FUNCTION_59_8(v5, v1, 1885956979);
    OUTLINED_FUNCTION_33_2();
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasWantedToRepeat()()
{
  OUTLINED_FUNCTION_34_14();
  v0();
  OUTLINED_FUNCTION_20_31();
  if (v3)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_78_8();
  if (v3)
  {
    v6 = v5 == 0xEC00000074616570;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_61_15(v4);
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isRepeatAfterPlayingVoiceMail()()
{
  (*(v0 + 112))();
  OUTLINED_FUNCTION_68_7();
  if (v3)
  {
    return 0;
  }

  VoiceMail.VoiceMailVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_27_22();
  if (v3)
  {
    v6 = v5 == 0xE600000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_36_19(v4);
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isVoiceMailCallOrCallBack()()
{
  OUTLINED_FUNCTION_24_3();
  if (PhoneCallNLIntent.hasCallVerb()())
  {
    OUTLINED_FUNCTION_20_0();
    if (PhoneCallNLIntent.hasNoContactOrReference()())
    {
      return 1;
    }
  }

  OUTLINED_FUNCTION_20_0();
  if (PhoneCallNLIntent.isCallBack()())
  {
    return 1;
  }

  OUTLINED_FUNCTION_20_0();

  return PhoneCallNLIntent.isCallWithReference()();
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasCancellation()()
{
  (*(v0 + 64))();
  OUTLINED_FUNCTION_56_8();
  if (v3)
  {
    return 0;
  }

  PhoneCallConfirmation.description.getter(v1);
  OUTLINED_FUNCTION_27_22();
  if (v3)
  {
    v6 = v5 == 0xE600000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_36_19(v4);
    OUTLINED_FUNCTION_33_2();
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasRejection()()
{
  (*(v0 + 64))();
  OUTLINED_FUNCTION_56_8();
  if (v6)
  {
    return 0;
  }

  v4 = PhoneCallConfirmation.description.getter(v2);
  v6 = v4 == 28526 && v5 == 0xE200000000000000;
  if (v6)
  {

    return 1;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_33_2();
    return v1 & 1;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasVoiceMail()()
{
  OUTLINED_FUNCTION_10_55();
  (*(v0 + 112))();
  OUTLINED_FUNCTION_68_7();
  if (!v1)
  {
    return 1;
  }

  v2 = OUTLINED_FUNCTION_14_45();
  v3(v2);
  OUTLINED_FUNCTION_43_19();
  return !v1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasPhoneNumber()()
{
  OUTLINED_FUNCTION_41_21();
  v2();
  OUTLINED_FUNCTION_99_2();
  if (v0)
  {
    OUTLINED_FUNCTION_96_3();
    while (1)
    {
      OUTLINED_FUNCTION_95_3();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_85_4();
      OUTLINED_FUNCTION_1_83(v8);
      v5 = SiriPhoneContact.getPhoneNumber()();
      if (v5.value._object)
      {

        if ((v5.value._object & 0x2000000000000000) != 0)
        {
          v6 = (v5.value._object >> 56) & 0xF;
        }

        else
        {
          v6 = v5.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        __swift_destroy_boxed_opaque_existential_1(v8);
        if (v6)
        {

          return 1;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v8);
      }

      ++v1;
      OUTLINED_FUNCTION_94_6();
      if (v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    return 0;
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isRedial()()
{
  OUTLINED_FUNCTION_10_55();
  (*(v0 + 104))();
  OUTLINED_FUNCTION_20_31();
  if (v3)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_42_17();
  if (v3)
  {
    v5 = v4 == 0xE600000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_76_6(v6, v7, v8);
    OUTLINED_FUNCTION_62_15();
    return 0;
  }

  OUTLINED_FUNCTION_20_0();
  if (!PhoneCallNLIntent.hasAnyContactReference()())
  {
    OUTLINED_FUNCTION_97_3();
    v9 = OUTLINED_FUNCTION_20_0();
    v11 = *(v10(v9) + 16);

    if (v11)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.siriPhone);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        OUTLINED_FUNCTION_33(&dword_0, v16, v17, "#PhoneCallNLIntent Not a redial request as utterance contains either number or contact name");
        OUTLINED_FUNCTION_26_0(v15);
      }

      return 0;
    }
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isCallBack()()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 104);
  v10(v6);
  OUTLINED_FUNCTION_20_31();
  if (v15)
  {
    v12 = 0;
    goto LABEL_35;
  }

  v57 = v10;
  v13 = PhoneCallVerb.rawValue.getter(v11);
  v15 = v13 == 1819042147 && v14 == 0xE400000000000000;
  if (v15)
  {

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_17_34(v13, v14);
  OUTLINED_FUNCTION_80_5();
  if (v0)
  {
LABEL_11:
    v53 = v8;
    v54 = v4;
    v16 = OUTLINED_FUNCTION_55_0();
    v18 = v17(v16);
    v19 = _swiftEmptyArrayStorage;
    if (v18)
    {
      v19 = v18;
    }

    v20 = v19[2];
    v52 = v19;
    v21 = v19 + 4;
    OUTLINED_FUNCTION_74_6();
    v55 = 0xE900000000000065;
    v56 = v22;
    while (2)
    {
      v23 = v20-- != 0;
      v12 = v23;
      if (v23)
      {
        switch(*v21)
        {
          case 1:
            OUTLINED_FUNCTION_24_27();
            goto LABEL_32;
          case 2:
            OUTLINED_FUNCTION_19_30();
            goto LABEL_32;
          case 3:
            OUTLINED_FUNCTION_4_7();
            goto LABEL_32;
          case 4:
            OUTLINED_FUNCTION_7_53();
            goto LABEL_32;
          case 5:
            OUTLINED_FUNCTION_11_42();
            goto LABEL_32;
          case 6:

            break;
          case 7:
            OUTLINED_FUNCTION_6_59();
            goto LABEL_32;
          case 8:
            OUTLINED_FUNCTION_9_52();
            goto LABEL_32;
          case 9:
            OUTLINED_FUNCTION_5_64();
            goto LABEL_32;
          case 0xA:
            OUTLINED_FUNCTION_13_41();
            goto LABEL_32;
          case 0xB:
            OUTLINED_FUNCTION_12_46();
            goto LABEL_32;
          case 0xC:
            OUTLINED_FUNCTION_2_81();
            goto LABEL_32;
          case 0xD:
            OUTLINED_FUNCTION_54_18();
            goto LABEL_32;
          default:
LABEL_32:
            OUTLINED_FUNCTION_101_3();
            OUTLINED_FUNCTION_59_8(v24, v25, v26);
            OUTLINED_FUNCTION_113_0();
            ++v21;
            if (v8)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    v8 = v53;
    v4 = v54;
    goto LABEL_34;
  }

  v12 = 0;
LABEL_34:
  v10 = v57;
LABEL_35:
  v27 = OUTLINED_FUNCTION_55_0();
  (v10)(v27);
  OUTLINED_FUNCTION_20_31();
  if (v15)
  {
    if (!v12)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v29 = PhoneCallVerb.rawValue.getter(v28);
    if (v29 == 0x636162206C6C6163 && v30 == 0xE90000000000006BLL)
    {
    }

    else
    {
      OUTLINED_FUNCTION_111_4(v29, v30, 0x636162206C6C6163, 107);
      OUTLINED_FUNCTION_80_5();
    }
  }

  OUTLINED_FUNCTION_55_0();
  if (PhoneCallNLIntent.hasAnyContactReference()() || (v32 = OUTLINED_FUNCTION_55_0(), v34 = *(v33(v32) + 16), , !v34))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.siriPhone);
    OUTLINED_FUNCTION_77_9();
    v42();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 67109120;
      v46 = OUTLINED_FUNCTION_55_0();
      v48 = *(v47(v46) + 16);

      v49 = OUTLINED_FUNCTION_20_0();
      v50(v49);
      *(v45 + 4) = v48 == 0;
      _os_log_impl(&dword_0, v43, v44, "PhoneCallNLIntent contacts empty: %{BOOL}d", v45, 8u);
      OUTLINED_FUNCTION_26_0(v45);
    }

    else
    {
      (*(v4 + 8))(v8, v2);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      OUTLINED_FUNCTION_33(&dword_0, v39, v40, "#PhoneCallNLIntent Not a call back request as utterance contains either number or contact name");
      OUTLINED_FUNCTION_26_0(v38);
    }
  }

LABEL_58:
  OUTLINED_FUNCTION_65();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isEmergencyResourceCall()()
{
  OUTLINED_FUNCTION_41_21();
  v2();
  OUTLINED_FUNCTION_99_2();
  if (v0)
  {
    OUTLINED_FUNCTION_96_3();
    while (1)
    {
      OUTLINED_FUNCTION_95_3();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_85_4();
      v5 = OUTLINED_FUNCTION_1_83(v10);
      v7 = SiriPhoneContact.getEmergencyType()(v5, v6);
      if (v8 >= 3)
      {
        if (v8 != 3)
        {
          outlined consume of PhoneCallEmergencyType?(v7, v8);

          __swift_destroy_boxed_opaque_existential_1(v10);
          return 1;
        }
      }

      else
      {
        outlined consume of PhoneCallEmergencyType?(v7, v8);
      }

      ++v1;
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_94_6();
      if (v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return 0;
  }

  return result;
}

uint64_t PhoneCallVerb.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      result = 0x636162206C6C6163;
      break;
    case 2:
    case 3:
      result = OUTLINED_FUNCTION_17_6();
      break;
    case 4:
      result = OUTLINED_FUNCTION_33_18();
      break;
    case 5:
      result = 1684957542;
      break;
    case 6:
      result = OUTLINED_FUNCTION_72_5();
      break;
    case 7:
      result = 0x79666972616C63;
      break;
    case 8:
      result = 1684104562;
      break;
    case 9:
      result = 0x6D7269666E6F63;
      break;
    case 10:
      result = 0x726577736E61;
      break;
    case 11:
      result = 0x70755F676E6168;
      break;
    case 12:
      result = 0x6574656C6564;
      break;
    case 13:
      result = 0x65526F54746E6177;
      break;
    case 14:
      result = 1852403562;
      break;
    case 15:
      result = 0x6974726150646461;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallVerb.isCallOrFaceTime()()
{
  PhoneCallVerb.rawValue.getter(v0);
  OUTLINED_FUNCTION_78_8();
  v4 = v4 && v3 == 0xE400000000000000;
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = v2;
  v6 = OUTLINED_FUNCTION_17_34(v2, v1);

  if (v6)
  {
    return 1;
  }

  OUTLINED_FUNCTION_92_3();
  if (v5 == v6 && v1 == 0xE800000000000000)
  {
LABEL_16:

    return 1;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    if (v5 != v6 || v1 != 0xEE006F6964756120)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_33_2();
      return v5 & 1;
    }

    goto LABEL_16;
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasApplicationNameOrId()()
{
  OUTLINED_FUNCTION_24_3();
  v4 = PhoneCallNLIntent.appName.getter(v2, v3);
  specialized Optional<A>.isNilOrEmpty.getter(v4, v5);
  OUTLINED_FUNCTION_62_15();
  if (v1)
  {
    v6 = OUTLINED_FUNCTION_20_0();
    v8 = PhoneCallNLIntent.applicationId.getter(v6, v7);
    specialized Optional<A>.isNilOrEmpty.getter(v8, v9);
    OUTLINED_FUNCTION_33_2();
    v10 = v0 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isOutgoingCallExcludeCallBackAndRedial()()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_37_21();
  v1 = *(v0 + 104);
  v1();
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    PhoneCallVerb.rawValue.getter(v2);
    OUTLINED_FUNCTION_103_2();
    if (v4)
    {
      v6 = v5 == 0xEE006F6964756120;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {

      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v7 = OUTLINED_FUNCTION_20_0();
  (v1)(v7);
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    v9 = 0;
  }

  else
  {
    PhoneCallVerb.rawValue.getter(v8);
    OUTLINED_FUNCTION_103_2();
    if (v10)
    {
      v13 = v12 == 0xE800000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v9 = 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_35_18(v11);
    }
  }

  v14 = OUTLINED_FUNCTION_20_0();
  (v1)(v14);
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    OUTLINED_FUNCTION_20_0();
    v15 = PhoneCallNLIntent.hasPhoneNumber()();
  }

  else
  {
    v15 = 0;
  }

  OUTLINED_FUNCTION_20_0();
  v16 = PhoneCallNLIntent.hasCallVerb()();
  if (v15 || ((v16 | v3 | v9) & 1) != 0)
  {
    OUTLINED_FUNCTION_60_1();
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_60_1();

    return PhoneCallNLIntent.isInferredCallFromRedialOrCallBack()();
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isTelephonyTargetFromSrr()()
{
  OUTLINED_FUNCTION_41_21();
  v1 = v0();
  v2 = 0;
  v10 = v1;
  v11 = *(v1 + 16);
  for (i = v1 + 32; ; i += 40)
  {
    if (v11 == v2)
    {
LABEL_13:

      OUTLINED_FUNCTION_105_4();
      return v1;
    }

    if (v2 >= *(v10 + 16))
    {
      break;
    }

    outlined init with copy of SharedGlobalsProviding();
    v5 = v13;
    v4 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 + 80);
    switch(v6(v5, v4))
    {
      case 1u:
      case 2u:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v7)
        {
          goto LABEL_12;
        }

        break;
      case 3u:
        break;
      default:
LABEL_11:

LABEL_12:
        __swift_destroy_boxed_opaque_existential_1(v12);
        goto LABEL_13;
    }

    switch(v6(v5, v4))
    {
      case 1u:
        goto LABEL_11;
      case 3u:
        LOBYTE(v1) = __swift_destroy_boxed_opaque_existential_1(v12);
        break;
      default:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        LOBYTE(v1) = __swift_destroy_boxed_opaque_existential_1(v12);
        if (v8)
        {
          goto LABEL_13;
        }

        break;
    }

    ++v2;
  }

  __break(1u);
  return v1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasAnyFaceTime()()
{
  OUTLINED_FUNCTION_24_3();
  if (PhoneCallNLIntent.hasAudioCallSemantic()() || (OUTLINED_FUNCTION_20_0(), PhoneCallNLIntent.hasVideoCallSemantic()()))
  {
    v0 = 1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_20_0();
    v4 = PhoneCallNLIntent.applicationId.getter(v2, v3);
    if (v5)
    {
      if (v4 == 0xD000000000000012 && v5 == 0x80000000004574F0)
      {
        v0 = 1;
      }

      else
      {
        v0 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v0 = 0;
    }
  }

  return v0 & 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isIncomingCallSearch()()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_10_55();
  (*(v1 + 104))();
  OUTLINED_FUNCTION_56_8();
  if (!v8)
  {
    goto LABEL_42;
  }

  v2 = OUTLINED_FUNCTION_20_0();
  v3(v2);
  OUTLINED_FUNCTION_69_9();
  if (v8)
  {
    v5 = OUTLINED_FUNCTION_20_0();
    v7 = v6(v5);
    if (v7 == 35)
    {
      goto LABEL_42;
    }

    PhoneCallReference.rawValue.getter(v7);
    OUTLINED_FUNCTION_42_17();
    if (!v8 || v13 != 0xE300000000000000)
    {
      OUTLINED_FUNCTION_108_3(v12, v0);
      OUTLINED_FUNCTION_62_15();
      goto LABEL_18;
    }
  }

  else
  {
    PhoneCallNoun.rawValue.getter(v4);
    OUTLINED_FUNCTION_42_17();
    if (!v8 || v10 != 0xE400000000000000)
    {
      OUTLINED_FUNCTION_17_34(v9, v0);
      OUTLINED_FUNCTION_62_15();
      goto LABEL_18;
    }
  }

LABEL_18:
  v15 = OUTLINED_FUNCTION_20_0();
  v17 = v16(v15);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = v18[2];
  if (!v19)
  {
LABEL_41:

LABEL_42:
    OUTLINED_FUNCTION_65();
    return result;
  }

  v20 = 0;
  v21 = v19 - 1;
  OUTLINED_FUNCTION_93_6();
  while (v20 < v18[2])
  {
    v23 = 0xE600000000000000;
    v24 = 0x64657373696DLL;
    switch(*(v18 + v20 + 32))
    {
      case 1:
        v23 = 0xE300000000000000;
        v24 = OUTLINED_FUNCTION_53_18();
        break;
      case 2:
        v24 = OUTLINED_FUNCTION_19_30();
        break;
      case 3:
        v23 = 0xE700000000000000;
        v24 = OUTLINED_FUNCTION_4_7();
        break;
      case 4:
        v23 = 0xE800000000000000;
        v24 = OUTLINED_FUNCTION_7_53();
        break;
      case 5:
        v23 = 0xE800000000000000;
        v25 = OUTLINED_FUNCTION_11_42();
        goto LABEL_35;
      case 6:
        v23 = 0xE400000000000000;
        v24 = OUTLINED_FUNCTION_110_3();
        break;
      case 7:
        v23 = 0xE800000000000000;
        v24 = OUTLINED_FUNCTION_6_59();
        break;
      case 8:

        goto LABEL_41;
      case 9:
        v23 = 0xE700000000000000;
        v24 = OUTLINED_FUNCTION_5_64();
        break;
      case 0xA:
        v24 = OUTLINED_FUNCTION_13_41();
        break;
      case 0xB:
        v23 = 0xE900000000000065;
        v25 = OUTLINED_FUNCTION_12_46();
LABEL_35:
        v24 = v25 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
        break;
      case 0xC:
        v23 = 0xEC0000006C69616DLL;
        v24 = 0x6563696F5677656ELL;
        break;
      case 0xD:
        v24 = OUTLINED_FUNCTION_54_18();
        v23 = 0x8000000000453620;
        break;
      default:
        break;
    }

    v26 = OUTLINED_FUNCTION_86_6(v24, v23);

    if ((v26 & 1) == 0)
    {
      v8 = v21 == v20++;
      if (!v8)
      {
        continue;
      }
    }

    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t PhoneCallReference.ordinalIndex.getter(char a1)
{
  PhoneCallReference.rawValue.getter(a1);
  OUTLINED_FUNCTION_78_8();
  v4 = v4 && v3 == 0xE500000000000000;
  if (v4 || (v5 = v2, (OUTLINED_FUNCTION_16_39(0x7473726966, 0xE500000000000000) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v7 = v5 == 0x646E6F636573 && v1 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_16_39(0x646E6F636573, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v5 == 0x6472696874 && v1 == 0xE500000000000000;
      if (v8 || (OUTLINED_FUNCTION_16_39(0x6472696874, 0xE500000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v5 == 0x687472756F66 && v1 == 0xE600000000000000;
        if (v9 || (OUTLINED_FUNCTION_16_39(0x687472756F66, 0xE600000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = v5 == 0x6874666966 && v1 == 0xE500000000000000;
          if (v10 || (OUTLINED_FUNCTION_16_39(0x6874666966, 0xE500000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = v5 == 0x6874786973 && v1 == 0xE500000000000000;
            if (v11 || (OUTLINED_FUNCTION_16_39(0x6874786973, 0xE500000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = v5 == 0x68746E65766573 && v1 == 0xE700000000000000;
              if (v12 || (OUTLINED_FUNCTION_16_39(0x68746E65766573, 0xE700000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = v5 == 0x687468676965 && v1 == 0xE600000000000000;
                if (v13 || (OUTLINED_FUNCTION_16_39(0x687468676965, 0xE600000000000000) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v14 = v5 == 0x68746E696ELL && v1 == 0xE500000000000000;
                  if (v14 || (OUTLINED_FUNCTION_16_39(0x68746E696ELL, 0xE500000000000000) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v15 = v5 == 0x68746E6574 && v1 == 0xE500000000000000;
                    if (v15 || (OUTLINED_FUNCTION_16_39(0x68746E6574, 0xE500000000000000) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v16 = v5 == 0x68746E6576656C65 && v1 == 0xE800000000000000;
                      if (v16 || (OUTLINED_FUNCTION_16_39(0x68746E6576656C65, 0xE800000000000000) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v17 = v5 == 0x6874666C657774 && v1 == 0xE700000000000000;
                        if (v17 || (OUTLINED_FUNCTION_16_39(0x6874666C657774, 0xE700000000000000) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v18 = OUTLINED_FUNCTION_40_20(0x72696874u);
                          v19 = v4 && v1 == 0xEA00000000006874;
                          if (v19 || (OUTLINED_FUNCTION_16_39(v18, 0xEA00000000006874) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v20 = OUTLINED_FUNCTION_40_20(0x72756F66u);
                            v21 = v4 && v1 == 0xEA00000000006874;
                            if (v21 || (OUTLINED_FUNCTION_16_39(v20, 0xEA00000000006874) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v22 = v5 == 0x746E656574666966 && v1 == 0xE900000000000068;
                              if (v22 || (OUTLINED_FUNCTION_16_39(0x746E656574666966, 0xE900000000000068) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v23 = v5 == 0x746E656574786973 && v1 == 0xE900000000000068;
                                if (v23 || (OUTLINED_FUNCTION_16_39(0x746E656574786973, 0xE900000000000068) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v24 = v5 == 0x6565746E65766573 && v1 == 0xEB0000000068746ELL;
                                  if (v24 || (OUTLINED_FUNCTION_16_39(0x6565746E65766573, 0xEB0000000068746ELL) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v25 = OUTLINED_FUNCTION_40_20(0x68676965u);
                                    v26 = v4 && v1 == 0xEA00000000006874;
                                    if (v26 || (OUTLINED_FUNCTION_16_39(v25, 0xEA00000000006874) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v27 = OUTLINED_FUNCTION_40_20(0x656E696Eu);
                                      v28 = v4 && v1 == 0xEA00000000006874;
                                      if (v28 || (OUTLINED_FUNCTION_16_39(v27, 0xEA00000000006874) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v29 = v5 == 0x746569746E657774 && v1 == 0xE900000000000068;
                                        if (v29 || (OUTLINED_FUNCTION_16_39(0x746569746E657774, 0xE900000000000068) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v30 = v5 == 0x662079746E657774 && v1 == 0xEC00000074737269;
                                          if (v30 || (OUTLINED_FUNCTION_16_39(0x662079746E657774, 0xEC00000074737269) & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v31 = v5 == 0x732079746E657774 && v1 == 0xED0000646E6F6365;
                                            if (v31 || (OUTLINED_FUNCTION_16_39(0x732079746E657774, 0xED0000646E6F6365) & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v32 = v5 == 0x742079746E657774 && v1 == 0xEC00000064726968;
                                              if (v32 || (OUTLINED_FUNCTION_16_39(0x742079746E657774, 0xEC00000064726968) & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v33 = v5 == 0x662079746E657774 && v1 == 0xED0000687472756FLL;
                                                if (v33 || (OUTLINED_FUNCTION_16_39(0x662079746E657774, 0xED0000687472756FLL) & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (v5 == 0x662079746E657774 && v1 == 0xEC00000068746669)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_16_39(0x662079746E657774, 0xEC00000068746669);
                                                  OUTLINED_FUNCTION_33_2();
                                                  if (v5)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 0;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isFirstPartyOrDefaultAppRequest()()
{
  PhoneCallNLIntent.applicationId.getter(v0, v1);
  if (!v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_70_1();
  type metadata accessor for App();
  App.__allocating_init(appIdentifier:)();
  v3 = App.isFirstParty()();

  return v3;
}

PhoneCallFlowDelegatePlugin::PhoneCallAttribute_optional __swiftcall PhoneCallAttribute.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallAttribute.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallAttribute.rawValue.getter(char a1)
{
  result = 0x64657373696DLL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_53_18();
      break;
    case 2:
      result = OUTLINED_FUNCTION_19_30();
      break;
    case 3:
      result = OUTLINED_FUNCTION_4_7();
      break;
    case 4:
      result = OUTLINED_FUNCTION_7_53();
      break;
    case 5:
      v3 = OUTLINED_FUNCTION_11_42();
      goto LABEL_11;
    case 6:
      result = OUTLINED_FUNCTION_22_23();
      break;
    case 7:
      result = OUTLINED_FUNCTION_6_59();
      break;
    case 8:
      result = OUTLINED_FUNCTION_9_52();
      break;
    case 9:
      result = OUTLINED_FUNCTION_5_64();
      break;
    case 10:
      result = OUTLINED_FUNCTION_13_41();
      break;
    case 11:
      v3 = OUTLINED_FUNCTION_12_46();
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 12:
      result = OUTLINED_FUNCTION_8_9();
      break;
    case 13:
      result = OUTLINED_FUNCTION_54_18();
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallAttribute_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallAttribute@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallAttribute_optional *a2@<X8>)
{
  result.value = PhoneCallAttribute.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallAttribute()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallAttribute.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance PhoneCallAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance PhoneCallAttribute(a1, a2, a3, lazy protocol witness table accessor for type PhoneCallAttribute and conformance PhoneCallAttribute, lazy protocol witness table accessor for type PhoneCallAttribute and conformance PhoneCallAttribute, lazy protocol witness table accessor for type PhoneCallAttribute and conformance PhoneCallAttribute, a7, a8, a9, a10);
}

{
  OUTLINED_FUNCTION_61_6();
  v11 = v10;
  v13 = v12;
  v14();
  v13();
  v11();
  OUTLINED_FUNCTION_60_1();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

PhoneCallFlowDelegatePlugin::PhoneCallAudioRoute_optional __swiftcall PhoneCallAudioRoute.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallAudioRoute.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallAudioRoute.rawValue.getter(char a1)
{
  result = 0x7072656B61657073;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_3_22();
      break;
    case 2:
      result = 0x746F6F7465756C62;
      break;
    case 3:
      result = 0x65756C625F746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallAudioRoute_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallAudioRoute@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallAudioRoute_optional *a2@<X8>)
{
  result.value = PhoneCallAudioRoute.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallAudioRoute()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallAudioRoute.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallCapability.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallCapability_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCapability@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallCapability_optional *a2@<X8>)
{
  result.value = PhoneCallCapability.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallCapability()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallCapability.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xE500000000000000;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallPreferredProvider_optional __swiftcall PhoneCallPreferredProvider.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallPreferredProvider.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallPreferredProvider.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E6F6870656C6574;
  }

  if (a1 == 1)
  {
    return 0x656D697465636166;
  }

  return 0x7261506472696874;
}

PhoneCallFlowDelegatePlugin::PhoneCallPreferredProvider_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallPreferredProvider@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallPreferredProvider_optional *a2@<X8>)
{
  result.value = PhoneCallPreferredProvider.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallPreferredProvider()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallPreferredProvider.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallConfirmation.description.getter(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x206D7269666E6F63;
      break;
    case 4:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallConfirmation_optional __swiftcall PhoneCallConfirmation.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallConfirmation.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallConfirmation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallConfirmation@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallConfirmation_optional *a2@<X8>)
{
  result.value = PhoneCallConfirmation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallConfirmation()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallConfirmation.description.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallNoun_optional __swiftcall PhoneCallNoun.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallNoun.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallNoun.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      result = 0x736C6C6163;
      break;
    case 2:
    case 3:
      result = OUTLINED_FUNCTION_17_6();
      break;
    case 4:
      result = 0x61665F70756F7267;
      break;
    case 5:
      result = OUTLINED_FUNCTION_33_18();
      break;
    case 6:
      result = OUTLINED_FUNCTION_3_22();
      break;
    case 7:
      result = OUTLINED_FUNCTION_46_18();
      break;
    case 8:
      result = 0x746F6F7465756C62;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallNoun_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallNoun@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallNoun_optional *a2@<X8>)
{
  result.value = PhoneCallNoun.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallNoun()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallNoun.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void PhoneCallReference.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_50_18();
      break;
    case 2:
      OUTLINED_FUNCTION_63_9();
      break;
    case 8:
      OUTLINED_FUNCTION_45_14();
      break;
    case 10:
      OUTLINED_FUNCTION_39_16();
      break;
    case 12:
      OUTLINED_FUNCTION_48_17(0x72696874u);
      break;
    case 13:
      OUTLINED_FUNCTION_48_17(0x72756F66u);
      break;
    case 14:
    case 15:
    case 19:
      OUTLINED_FUNCTION_87_5();
      break;
    case 16:
      OUTLINED_FUNCTION_32_17();
      break;
    case 17:
      OUTLINED_FUNCTION_48_17(0x68676965u);
      break;
    case 18:
      OUTLINED_FUNCTION_48_17(0x656E696Eu);
      break;
    case 20:
    case 23:
    case 24:
      OUTLINED_FUNCTION_52_15();
      break;
    case 21:
      OUTLINED_FUNCTION_25_24();
      break;
    case 22:
      OUTLINED_FUNCTION_31_19();
      break;
    case 25:
      OUTLINED_FUNCTION_22_23();
      break;
    case 26:
      OUTLINED_FUNCTION_49_16();
      break;
    case 27:
      OUTLINED_FUNCTION_71_4();
      break;
    case 28:
      OUTLINED_FUNCTION_38_18();
      break;
    case 29:
      OUTLINED_FUNCTION_29_21();
      break;
    case 30:
      OUTLINED_FUNCTION_30_25();
      break;
    case 32:
      OUTLINED_FUNCTION_70_5();
      break;
    default:
      return;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallReference_optional __swiftcall PhoneCallReference.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallReference_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallReference@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallReference_optional *a2@<X8>)
{
  result.value = PhoneCallReference.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallReference()
{
  v1 = OUTLINED_FUNCTION_40_2();
  PhoneCallReference.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

PhoneCallFlowDelegatePlugin::PhoneCallContactReference_optional __swiftcall PhoneCallContactReference.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v1;
  }
}

void PhoneCallContactReference.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_50_18();
      break;
    case 2:
      OUTLINED_FUNCTION_63_9();
      break;
    case 8:
      OUTLINED_FUNCTION_45_14();
      break;
    case 10:
      OUTLINED_FUNCTION_39_16();
      break;
    case 12:
      OUTLINED_FUNCTION_48_17(0x72696874u);
      break;
    case 13:
      OUTLINED_FUNCTION_48_17(0x72756F66u);
      break;
    case 14:
    case 15:
    case 19:
      OUTLINED_FUNCTION_87_5();
      break;
    case 16:
      OUTLINED_FUNCTION_32_17();
      break;
    case 17:
      OUTLINED_FUNCTION_48_17(0x68676965u);
      break;
    case 18:
      OUTLINED_FUNCTION_48_17(0x656E696Eu);
      break;
    case 20:
    case 23:
    case 24:
      OUTLINED_FUNCTION_52_15();
      break;
    case 21:
      OUTLINED_FUNCTION_25_24();
      break;
    case 22:
      OUTLINED_FUNCTION_31_19();
      break;
    case 25:
      OUTLINED_FUNCTION_22_23();
      break;
    case 26:
      OUTLINED_FUNCTION_49_16();
      break;
    case 27:
      OUTLINED_FUNCTION_71_4();
      break;
    case 28:
      OUTLINED_FUNCTION_38_18();
      break;
    case 29:
      OUTLINED_FUNCTION_29_21();
      break;
    case 30:
      OUTLINED_FUNCTION_30_25();
      break;
    case 32:
      OUTLINED_FUNCTION_70_5();
      break;
    default:
      return;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallContactReference_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallContactReference@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallContactReference_optional *a2@<X8>)
{
  result.value = PhoneCallContactReference.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallContactReference()
{
  v1 = OUTLINED_FUNCTION_40_2();
  PhoneCallContactReference.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

PhoneCallFlowDelegatePlugin::PhoneCallVerb_optional __swiftcall PhoneCallVerb.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallVerb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallVerb@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallVerb_optional *a2@<X8>)
{
  result.value = PhoneCallVerb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallVerb()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallVerb.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t *VoiceMail.voiceMailNoun.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceMailNoun != -1)
  {
    swift_once();
  }

  return &static VoiceMail.voiceMailNoun;
}

uint64_t one-time initialization function for voiceMailNoun(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = OUTLINED_FUNCTION_104_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  *a5 = result;
  return result;
}

uint64_t *VoiceMail.voiceMailVerb.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceMailVerb != -1)
  {
    swift_once();
  }

  return &static VoiceMail.voiceMailVerb;
}

uint64_t static VoiceMail.voiceMailNoun.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t VoiceMail.VoiceMailNoun.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6563696F76;
  }

  else
  {
    return 0x69616D6563696F76;
  }
}

PhoneCallFlowDelegatePlugin::VoiceMail::VoiceMailNoun_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceMail.VoiceMailNoun@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoiceMail::VoiceMailNoun_optional *a2@<X8>)
{
  result.value = VoiceMail.VoiceMailNoun.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceMail.VoiceMailNoun()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = VoiceMail.VoiceMailNoun.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::VoiceMail::VoiceMailVerb_optional __swiftcall VoiceMail.VoiceMailVerb.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceMail.VoiceMailVerb.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t VoiceMail.VoiceMailVerb.rawValue.getter(char a1)
{
  result = 2036427888;
  switch(a1)
  {
    case 1:
      result = 0x746165706572;
      break;
    case 2:
      result = 1885956979;
      break;
    case 3:
      result = 0x6573756170;
      break;
    case 4:
      result = 0x656D75736572;
      break;
    case 5:
      result = 0x6574656C6564;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::VoiceMail::VoiceMailVerb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceMail.VoiceMailVerb@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoiceMail::VoiceMailVerb_optional *a2@<X8>)
{
  result.value = VoiceMail.VoiceMailVerb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceMail.VoiceMailVerb()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = VoiceMail.VoiceMailVerb.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallDestinationType_optional __swiftcall PhoneCallDestinationType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDestinationType.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallDestinationType.rawValue.getter(char a1)
{
  result = 0x6C616D726F6ELL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_46_18();
      break;
    case 2:
      result = 0x69616D6563696F76;
      break;
    case 3:
      result = OUTLINED_FUNCTION_72_5();
      break;
    case 4:
      result = 0x6B6361626C6C6163;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallDestinationType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDestinationType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallDestinationType_optional *a2@<X8>)
{
  result.value = PhoneCallDestinationType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDestinationType()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallDestinationType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallContactRole::NLv3_optional __swiftcall PhoneCallContactRole.NLv3.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallContactRole.NLv3.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallContactRole.NLv3.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 28532;
  }

  if (a1 == 1)
  {
    return 1836020326;
  }

  return 1752459639;
}

PhoneCallFlowDelegatePlugin::PhoneCallContactRole::NLv3_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallContactRole.NLv3@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallContactRole::NLv3_optional *a2@<X8>)
{
  result.value = PhoneCallContactRole.NLv3.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallContactRole.NLv3()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallContactRole.NLv3.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

id SmsGroup.asINCallGroup.getter()
{
  OUTLINED_FUNCTION_10_55();
  v3 = (*(v2 + 8))();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_20_0();
  v7(v6);
  OUTLINED_FUNCTION_70_1();
  v8 = objc_allocWithZone(INCallGroup);
  return @nonobjc INCallGroup.init(groupName:groupId:)(v3, v5, v0, v1);
}

Swift::Bool __swiftcall PhoneCallNLIntent.isPlayVoiceMail()()
{
  OUTLINED_FUNCTION_10_55();
  (*(v0 + 120))();
  OUTLINED_FUNCTION_43_19();
  if (!v1)
  {
    OUTLINED_FUNCTION_20_0();
    if (!PhoneCallNLIntent.hasCallVerb()())
    {
      return 1;
    }
  }

  v2 = OUTLINED_FUNCTION_20_0();
  v3(v2);
  OUTLINED_FUNCTION_68_7();
  return !v1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasVoiceMailNoun()()
{
  (*(v0 + 120))();
  OUTLINED_FUNCTION_43_19();
  return !v1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasCallVerb()()
{
  OUTLINED_FUNCTION_34_14();
  v1();
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v2);
  OUTLINED_FUNCTION_27_22();
  if (v4)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
  }

  else
  {
    OUTLINED_FUNCTION_17_34(v5, v0);
    OUTLINED_FUNCTION_33_2();
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasVoiceMailVerb()()
{
  (*(v0 + 112))();
  OUTLINED_FUNCTION_68_7();
  return !v1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isPlayIt()()
{
  OUTLINED_FUNCTION_10_55();
  (*(v1 + 112))();
  OUTLINED_FUNCTION_68_7();
  if (v4)
  {
    return 0;
  }

  VoiceMail.VoiceMailVerb.rawValue.getter(v2);
  OUTLINED_FUNCTION_42_17();
  if (v4)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    OUTLINED_FUNCTION_59_8(v5, v0, 2036427888);
    OUTLINED_FUNCTION_62_15();
    return 0;
  }

  v8 = OUTLINED_FUNCTION_14_45();
  v9(v8);
  OUTLINED_FUNCTION_43_19();
  return v4 != 0;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isFind()()
{
  OUTLINED_FUNCTION_34_14();
  v1();
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v2);
  OUTLINED_FUNCTION_27_22();
  if (v4)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_59_8(v5, v0, 1684957542);
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isDelete()()
{
  OUTLINED_FUNCTION_34_14();
  v0();
  OUTLINED_FUNCTION_20_31();
  if (v3)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_27_22();
  if (v3)
  {
    v6 = v5 == 0xE600000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_36_19(v4);
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasRelationship()()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_24_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - v4;
  v41 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_9_1();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_97_3();
  v39 = v0;
  v40 = v1;
  v38 = v2;
  v11 = OUTLINED_FUNCTION_20_0();
  v13 = v12(v11);
  v14 = v13;
  v15 = v13[2];
  if (v15)
  {
    v16 = 0;
    v17 = v13 + 4;
    while (v16 < v14[2])
    {
      outlined init with copy of SharedGlobalsProviding();
      v18 = v42[4];
      __swift_project_boxed_opaque_existential_1(v42, v42[3]);
      v19 = OUTLINED_FUNCTION_40_0();
      v21 = v20(v19, v18);
      if (v22)
      {
        v23 = v21;
        v24 = v22;

        if ((v24 & 0x2000000000000000) != 0)
        {
          v25 = HIBYTE(v24) & 0xF;
        }

        else
        {
          v25 = v23 & 0xFFFFFFFFFFFFLL;
        }

        LOBYTE(v13) = __swift_destroy_boxed_opaque_existential_1(v42);
        if (v25)
        {
          goto LABEL_27;
        }
      }

      else
      {
        LOBYTE(v13) = __swift_destroy_boxed_opaque_existential_1(v42);
      }

      ++v16;
      v17 += 5;
      if (v15 == v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_12:

    v13 = (*(v39 + 128))(v38);
    v26 = v13;
    v27 = 0;
    v28 = v13[2];
    while (v28 != v27)
    {
      if (v27 >= v26[2])
      {
        goto LABEL_30;
      }

      v29 = v41;
      (*(v7 + 16))(v10, v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27, v41);
      ContactQuery.relationship.getter();
      (*(v7 + 8))(v10, v29);
      v30 = type metadata accessor for ContactRelationshipQuery();
      if (__swift_getEnumTagSinglePayload(v5, 1, v30) != 1)
      {

        outlined destroy of PhoneCallApp?(v5, &_s13SiriInference24ContactRelationshipQueryVSgMd);
        goto LABEL_28;
      }

      ++v27;
      LOBYTE(v13) = outlined destroy of PhoneCallApp?(v5, &_s13SiriInference24ContactRelationshipQueryVSgMd);
    }

    v31 = PhoneCallNLIntent.getPersons()();
    v13 = specialized Array.count.getter(v31);
    v32 = v13;
    v33 = 0;
    while (v32 != v33)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_20_0();
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_32;
        }

        v13 = *(v31 + 8 * v33 + 32);
      }

      v34 = v13;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_31;
      }

      v35 = [v13 relationship];

      ++v33;
      if (v35)
      {

        goto LABEL_28;
      }
    }

LABEL_27:

LABEL_28:
    OUTLINED_FUNCTION_65();
  }

  return v13;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isInferredCallFromRedialOrCallBack()()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_24_3();
  v1 = *(v0 + 104);
  v1();
  OUTLINED_FUNCTION_20_31();
  if (!v4)
  {
    PhoneCallVerb.rawValue.getter(v2);
    OUTLINED_FUNCTION_42_17();
    v4 = v4 && v3 == 0xE600000000000000;
    if (v4)
    {

      OUTLINED_FUNCTION_20_0();
      if (!PhoneCallNLIntent.isRedial()())
      {
        goto LABEL_18;
      }
    }

    else
    {
      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_76_6(v5, v6, v7);
      OUTLINED_FUNCTION_62_15();
    }
  }

  v8 = OUTLINED_FUNCTION_20_0();
  (v1)(v8);
  OUTLINED_FUNCTION_20_31();
  if (!v4)
  {
    PhoneCallVerb.rawValue.getter(v9);
    OUTLINED_FUNCTION_42_17();
    if (v10)
    {
      v12 = v11 == 0xE90000000000006BLL;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
    }

    else
    {
      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_111_4(v13, v14, v15, 107);
      OUTLINED_FUNCTION_62_15();
    }

    OUTLINED_FUNCTION_20_0();
    PhoneCallNLIntent.isCallBack()();
  }

LABEL_18:
  OUTLINED_FUNCTION_60_1();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isVoiceMailCall()()
{
  OUTLINED_FUNCTION_24_3();
  if (!PhoneCallNLIntent.isOutgoingCall()())
  {
    return 0;
  }

  OUTLINED_FUNCTION_20_0();

  return PhoneCallNLIntent.hasVoiceMail()();
}

Swift::Bool __swiftcall PhoneCallNLIntent.isAudioCall()()
{
  OUTLINED_FUNCTION_24_3();
  if (!PhoneCallNLIntent.hasAudioCallSemantic()())
  {
    OUTLINED_FUNCTION_20_0();
    if (!PhoneCallNLIntent.hasCallVerb()())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_20_0();
  if (PhoneCallNLIntent.isFind()())
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_14_45();
  v2(v1);
  OUTLINED_FUNCTION_43_19();
  return v3 != 0;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasAnyContactReference()()
{
  OUTLINED_FUNCTION_107_3();
  v21 = v0;
  v22 = v1;
  OUTLINED_FUNCTION_41_21();
  v3 = v2();
  v4 = v3;
  v5 = 0;
  v6 = *(v3 + 16);
  for (i = v3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {
      goto LABEL_20;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_85_4();
    v8 = v20;
    OUTLINED_FUNCTION_1_83(&v19);
    v9.value = SiriPhoneContact.getContactReference()().value;
    if (v9.value != PhoneCallFlowDelegatePlugin_PhoneCallContactReference_unknownDefault)
    {
      PhoneCallContactReference.rawValue.getter(v9.value);
      if (v10 == 6647407 && v11 == 0xE300000000000000)
      {
LABEL_18:

LABEL_19:
        __swift_destroy_boxed_opaque_existential_1(&v19);
LABEL_20:

        OUTLINED_FUNCTION_106_1();
        return v3;
      }

      OUTLINED_FUNCTION_108_3(v10, v11);
      OUTLINED_FUNCTION_20_2();
      if (v8)
      {
        goto LABEL_19;
      }
    }

    v13 = v20;
    OUTLINED_FUNCTION_1_83(&v19);
    v14.value = SiriPhoneContact.getContactReference()().value;
    if (v14.value == PhoneCallFlowDelegatePlugin_PhoneCallContactReference_unknownDefault)
    {
      LOBYTE(v3) = __swift_destroy_boxed_opaque_existential_1(&v19);
    }

    else
    {
      PhoneCallContactReference.rawValue.getter(v14.value);
      if (v15 == 2037277037 && v16 == 0xE400000000000000)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_59_8(v15, v16, 2037277037);
      OUTLINED_FUNCTION_20_2();
      LOBYTE(v3) = __swift_destroy_boxed_opaque_existential_1(&v19);
      if (v13)
      {
        goto LABEL_20;
      }
    }

    ++v5;
  }

  __break(1u);
  return v3;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasNoContactOrReference()()
{
  OUTLINED_FUNCTION_10_55();
  v1 = (*(v0 + 144))();
  v2 = specialized Array.count.getter(v1);

  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_97_3();
  v3 = OUTLINED_FUNCTION_20_0();
  v5 = *(v4(v3) + 16);

  if (v5)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_20_0();
  v9 = *(v8(v7) + 16);

  return v9 == 0;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isJoinCall()()
{
  OUTLINED_FUNCTION_34_14();
  v1();
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v2);
  OUTLINED_FUNCTION_27_22();
  if (v4)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_59_8(v5, v0, 1852403562);
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isRemoveParticipant()()
{
  OUTLINED_FUNCTION_34_14();
  v0();
  OUTLINED_FUNCTION_20_31();
  if (v5)
  {
    v2 = 0;
  }

  else
  {
    v3 = PhoneCallVerb.rawValue.getter(v1);
    v5 = v3 == 0xD000000000000011 && 0x8000000000453820 == v4;
    if (v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v2 & 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasReadVerb()()
{
  OUTLINED_FUNCTION_34_14();
  v1();
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v2);
  OUTLINED_FUNCTION_27_22();
  if (v4)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_59_8(v5, v0, 1684104562);
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isSearchCallOrVoiceMail()()
{
  OUTLINED_FUNCTION_24_3();
  if (PhoneCallNLIntent.isFind()() || (OUTLINED_FUNCTION_20_0(), PhoneCallNLIntent.hasReadVerb()()) && (v1 = OUTLINED_FUNCTION_14_45(), v2(v1), OUTLINED_FUNCTION_43_19(), v3) || (OUTLINED_FUNCTION_20_0(), PhoneCallNLIntent.hasCallVerb()()) && (v4 = OUTLINED_FUNCTION_14_45(), v5(v4), OUTLINED_FUNCTION_43_19(), !v3))
  {
    OUTLINED_FUNCTION_20_0();
    if (!PhoneCallNLIntent.isIncomingCallSearch()())
    {
      return 1;
    }
  }

  OUTLINED_FUNCTION_20_0();

  return PhoneCallNLIntent.hasVoiceMail()();
}

Swift::Bool __swiftcall PhoneCallNLIntent.isSearchCallHistoryWithDate()()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_57_15();
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_8_2();
    if (PhoneCallNLIntent.isFind()())
    {
      v4 = (v3 + 32);
      v5 = *(v3 + 16);
      while (2)
      {
        if (v5-- != 0)
        {
          v7 = 0xE600000000000000;
          v8 = 0x64657373696DLL;
          switch(*v4)
          {
            case 1:
              v7 = 0xE300000000000000;
              v8 = OUTLINED_FUNCTION_53_18();
              goto LABEL_19;
            case 2:
              v8 = OUTLINED_FUNCTION_19_30();
              goto LABEL_19;
            case 3:
              v7 = 0xE700000000000000;
              v8 = OUTLINED_FUNCTION_4_7();
              goto LABEL_19;
            case 4:
              v7 = 0xE800000000000000;
              v8 = OUTLINED_FUNCTION_7_53();
              goto LABEL_19;
            case 5:
              v7 = 0xE800000000000000;
              v8 = OUTLINED_FUNCTION_11_42() & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
              goto LABEL_19;
            case 6:
              v7 = 0xE400000000000000;
              v8 = OUTLINED_FUNCTION_110_3();
              goto LABEL_19;
            case 7:
              v7 = 0xE800000000000000;
              v8 = OUTLINED_FUNCTION_6_59();
              goto LABEL_19;
            case 8:
              v7 = 0xE700000000000000;
              v8 = OUTLINED_FUNCTION_9_52();
              goto LABEL_19;
            case 9:
              v7 = 0xE700000000000000;
              v8 = OUTLINED_FUNCTION_5_64();
              goto LABEL_19;
            case 0xA:
              v8 = OUTLINED_FUNCTION_13_41();
              goto LABEL_19;
            case 0xB:

              break;
            case 0xC:
              v7 = 0xEC0000006C69616DLL;
              v8 = OUTLINED_FUNCTION_8_9();
              goto LABEL_19;
            case 0xD:
              v8 = OUTLINED_FUNCTION_54_18();
              v7 = 0x8000000000453620;
              goto LABEL_19;
            default:
LABEL_19:
              OUTLINED_FUNCTION_111_4(v8, v7, 0x676E615265746164, 101);
              OUTLINED_FUNCTION_62_15();
              ++v4;
              if (v0)
              {
                break;
              }

              continue;
          }
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_65();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isSearchCallHistoryWithAppName()()
{
  OUTLINED_FUNCTION_24_3();
  PhoneCallNLIntent.applicationId.getter(v1, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_20_0();
  v6 = PhoneCallNLIntent.applicationId.getter(v4, v5);
  if (v7)
  {
    if (v6 == 0xD000000000000015 && v7 == 0x8000000000452BD0)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_62_15();
      if ((v0 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  OUTLINED_FUNCTION_20_0();

  return PhoneCallNLIntent.isFind()();
}

Swift::Bool __swiftcall PhoneCallNLIntent.isSearchCallHistoryWithUnsupportedAttribute()()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_57_15();
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_8_2();
    if (PhoneCallNLIntent.isFind()())
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        OUTLINED_FUNCTION_93_6();
        v6 = (v4 + 32);
        v7 = (v4 + 32);
        while (v5)
        {
          v8 = 0xE300000000000000;
          v9 = 7824750;
          switch(*v7)
          {
            case 1:
              break;
            case 2:
              v8 = 0xE600000000000000;
              v9 = 0x746E65636572;
              break;
            case 3:
              v8 = 0xE700000000000000;
              v9 = OUTLINED_FUNCTION_4_7();
              break;
            case 4:
              v8 = 0xE800000000000000;
              v9 = OUTLINED_FUNCTION_7_53();
              break;
            case 5:
              v8 = 0xE800000000000000;
              v10 = OUTLINED_FUNCTION_11_42();
              goto LABEL_17;
            case 6:
              v8 = 0xE400000000000000;
              v9 = OUTLINED_FUNCTION_110_3();
              break;
            case 7:
              v8 = 0xE800000000000000;
              v9 = OUTLINED_FUNCTION_6_59();
              break;
            case 8:
              v8 = 0xE700000000000000;
              v9 = v0;
              break;
            case 9:
              v8 = 0xE700000000000000;
              v9 = OUTLINED_FUNCTION_5_64();
              break;
            case 0xA:
              v8 = 0xE600000000000000;
              v9 = OUTLINED_FUNCTION_13_41();
              break;
            case 0xB:
              v8 = 0xE900000000000065;
              v10 = OUTLINED_FUNCTION_12_46();
LABEL_17:
              v9 = v10 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
              break;
            case 0xC:
              v8 = 0xEC0000006C69616DLL;
              v9 = OUTLINED_FUNCTION_8_9();
              break;
            case 0xD:
              v8 = 0x8000000000453620;
              v9 = OUTLINED_FUNCTION_54_18();
              break;
            default:
              goto LABEL_74;
          }

          OUTLINED_FUNCTION_76_6(v9, v8, 0x64657373696DLL);
          OUTLINED_FUNCTION_80_5();
          ++v7;
          --v5;
          if (v1)
          {
            goto LABEL_55;
          }
        }

        v11 = *(v4 + 16);
        v12 = (v4 + 32);
        while (v11)
        {
          switch(*v12)
          {
            case 1:
              OUTLINED_FUNCTION_53_18();
              break;
            case 3:
              OUTLINED_FUNCTION_4_7();
              break;
            case 4:
              OUTLINED_FUNCTION_7_53();
              break;
            case 5:
              OUTLINED_FUNCTION_11_42();
              break;
            case 6:
              goto LABEL_74;
            case 7:
              OUTLINED_FUNCTION_6_59();
              break;
            case 9:
              OUTLINED_FUNCTION_5_64();
              break;
            case 0xA:
              OUTLINED_FUNCTION_13_41();
              break;
            case 0xB:
              OUTLINED_FUNCTION_12_46();
              break;
            case 0xC:
              OUTLINED_FUNCTION_8_9();
              break;
            case 0xD:
              OUTLINED_FUNCTION_54_18();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_101_3();
          OUTLINED_FUNCTION_59_8(v13, v14, v15);
          OUTLINED_FUNCTION_80_5();
          ++v12;
          --v11;
          if (v1)
          {
            goto LABEL_55;
          }
        }

        v16 = *(v4 + 16);
        v17 = (v4 + 32);
        while (v16)
        {
          v18 = 0xE600000000000000;
          v19 = 0x64657373696DLL;
          switch(*v17)
          {
            case 1:
              v18 = 0xE300000000000000;
              v19 = OUTLINED_FUNCTION_53_18();
              break;
            case 2:
              goto LABEL_74;
            case 3:
              v18 = 0xE700000000000000;
              v19 = OUTLINED_FUNCTION_4_7();
              break;
            case 4:
              v18 = 0xE800000000000000;
              v19 = OUTLINED_FUNCTION_7_53();
              break;
            case 5:
              v18 = 0xE800000000000000;
              v20 = OUTLINED_FUNCTION_11_42();
              goto LABEL_51;
            case 6:
              v18 = 0xE400000000000000;
              v19 = OUTLINED_FUNCTION_110_3();
              break;
            case 7:
              v18 = 0xE800000000000000;
              v19 = OUTLINED_FUNCTION_6_59();
              break;
            case 8:
              v18 = 0xE700000000000000;
              v19 = v0;
              break;
            case 9:
              v18 = 0xE700000000000000;
              v19 = OUTLINED_FUNCTION_5_64();
              break;
            case 0xA:
              v19 = OUTLINED_FUNCTION_13_41();
              break;
            case 0xB:
              v18 = 0xE900000000000065;
              v20 = OUTLINED_FUNCTION_12_46();
LABEL_51:
              v19 = v20 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
              break;
            case 0xC:
              v18 = 0xEC0000006C69616DLL;
              v19 = OUTLINED_FUNCTION_8_9();
              break;
            case 0xD:
              v18 = 0x8000000000453620;
              v19 = OUTLINED_FUNCTION_54_18();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_76_6(v19, v18, 0x746E65636572);
          OUTLINED_FUNCTION_80_5();
          ++v17;
          --v16;
          if (v1)
          {
            goto LABEL_55;
          }
        }

        for (i = *(v4 + 16); i; --i)
        {
          v23 = 0xE600000000000000;
          v24 = 0x64657373696DLL;
          switch(*v6)
          {
            case 1:
              v24 = OUTLINED_FUNCTION_24_27();
              break;
            case 2:
              v24 = 0x746E65636572;
              break;
            case 3:
              v23 = 0xE700000000000000;
              v24 = OUTLINED_FUNCTION_4_7();
              break;
            case 4:
              v23 = 0xE800000000000000;
              v24 = OUTLINED_FUNCTION_7_53();
              break;
            case 5:
              v23 = 0xE800000000000000;
              v25 = OUTLINED_FUNCTION_11_42();
              goto LABEL_70;
            case 6:
              v23 = 0xE400000000000000;
              v24 = OUTLINED_FUNCTION_110_3();
              break;
            case 7:
              v23 = 0xE800000000000000;
              v24 = OUTLINED_FUNCTION_6_59();
              break;
            case 8:
LABEL_74:

              goto LABEL_55;
            case 9:
              v23 = 0xE700000000000000;
              v24 = OUTLINED_FUNCTION_5_64();
              break;
            case 0xA:
              v24 = OUTLINED_FUNCTION_13_41();
              break;
            case 0xB:
              v23 = 0xE900000000000065;
              v25 = OUTLINED_FUNCTION_12_46();
LABEL_70:
              v24 = v25 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
              break;
            case 0xC:
              v24 = OUTLINED_FUNCTION_2_81();
              break;
            case 0xD:
              v23 = 0x8000000000453620;
              v24 = OUTLINED_FUNCTION_54_18();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_86_6(v24, v23);
          OUTLINED_FUNCTION_113_0();
          ++v6;
        }
      }
    }

LABEL_55:
  }

  OUTLINED_FUNCTION_65();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isWhoJustCalled()()
{
  OUTLINED_FUNCTION_10_55();
  v3 = (*(v2 + 40))();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_20_0();
    if (!PhoneCallNLIntent.isFind()())
    {
      goto LABEL_42;
    }

    v5 = *(v4 + 16);
    v6 = (v4 + 32);
    v7 = (v4 + 32);
    while (2)
    {
      if (v5)
      {
        switch(*v7)
        {
          case 1:
            OUTLINED_FUNCTION_24_27();
            goto LABEL_18;
          case 2:
            OUTLINED_FUNCTION_19_30();
            goto LABEL_18;
          case 3:
            OUTLINED_FUNCTION_4_7();
            goto LABEL_18;
          case 4:
            OUTLINED_FUNCTION_7_53();
            goto LABEL_18;
          case 5:
            OUTLINED_FUNCTION_11_42();
            goto LABEL_18;
          case 6:

            goto LABEL_19;
          case 7:
            OUTLINED_FUNCTION_6_59();
            goto LABEL_18;
          case 8:
            OUTLINED_FUNCTION_9_52();
            goto LABEL_18;
          case 9:
            OUTLINED_FUNCTION_5_64();
            goto LABEL_18;
          case 0xA:
            OUTLINED_FUNCTION_13_41();
            goto LABEL_18;
          case 0xB:
            OUTLINED_FUNCTION_12_46();
            goto LABEL_18;
          case 0xC:
            OUTLINED_FUNCTION_2_81();
            goto LABEL_18;
          case 0xD:
            OUTLINED_FUNCTION_54_18();
            goto LABEL_18;
          default:
LABEL_18:
            OUTLINED_FUNCTION_101_3();
            OUTLINED_FUNCTION_59_8(v8, v9, v10);
            OUTLINED_FUNCTION_113_0();
            ++v7;
            --v5;
            if ((v1 & 1) == 0)
            {
              continue;
            }

LABEL_19:
            v11 = *(v4 + 16);
            while (2)
            {
              if (!v11)
              {
                goto LABEL_42;
              }

              switch(*v6)
              {
                case 1:
                  OUTLINED_FUNCTION_24_27();
                  goto LABEL_34;
                case 2:
                  OUTLINED_FUNCTION_19_30();
                  goto LABEL_34;
                case 3:
                  OUTLINED_FUNCTION_4_7();
                  goto LABEL_34;
                case 4:

                  goto LABEL_35;
                case 5:
                  OUTLINED_FUNCTION_11_42();
                  goto LABEL_34;
                case 7:
                  OUTLINED_FUNCTION_6_59();
                  goto LABEL_34;
                case 8:
                  OUTLINED_FUNCTION_9_52();
                  goto LABEL_34;
                case 9:
                  OUTLINED_FUNCTION_5_64();
                  goto LABEL_34;
                case 0xA:
                  OUTLINED_FUNCTION_13_41();
                  goto LABEL_34;
                case 0xB:
                  OUTLINED_FUNCTION_12_46();
                  goto LABEL_34;
                case 0xC:
                  OUTLINED_FUNCTION_2_81();
                  goto LABEL_34;
                case 0xD:
                  OUTLINED_FUNCTION_54_18();
                  goto LABEL_34;
                default:
LABEL_34:
                  _stringCompareWithSmolCheck(_:_:expecting:)();
                  OUTLINED_FUNCTION_113_0();
                  ++v6;
                  --v11;
                  if ((v1 & 1) == 0)
                  {
                    continue;
                  }

LABEL_35:

                  v12 = OUTLINED_FUNCTION_20_0();
                  v13(v12);
                  OUTLINED_FUNCTION_69_9();
                  if (v17)
                  {
                    goto LABEL_43;
                  }

                  PhoneCallNoun.rawValue.getter(v14);
                  OUTLINED_FUNCTION_27_22();
                  v17 = v17 && v16 == 0xE400000000000000;
                  if (v17)
                  {
                  }

                  else
                  {
                    OUTLINED_FUNCTION_17_34(v15, v0);
                    OUTLINED_FUNCTION_33_2();
                  }

                  LOBYTE(v3) = 1;
                  break;
              }

              break;
            }

            break;
        }
      }

      else
      {
LABEL_42:

LABEL_43:
        LOBYTE(v3) = 0;
      }

      break;
    }
  }

  return v3;
}

__C::INCallRecordTypeOptions_optional __swiftcall PhoneCallNLIntent.getCallRecordTypeOption(attr:)(PhoneCallFlowDelegatePlugin::PhoneCallAttribute attr)
{
  v1 = attr;
  v2 = 0;
  v3 = 2;
  switch(v1)
  {
    case 0:
      break;
    case 4:
      v2 = 0;
      v3 = 4;
      break;
    case 5:
      v2 = 0;
      v3 = 1;
      break;
    case 6:
      v2 = 0;
      v3 = 8;
      break;
    case 8:
      v2 = 0;
      v3 = 64;
      break;
    case 9:
      v2 = 0;
      v3 = 32;
      break;
    case 10:
      v2 = 0;
      v3 = 128;
      break;
    default:
      v3 = 0;
      v2 = 1;
      break;
  }

  result.value.rawValue = v3;
  result.is_nil = v2;
  return result;
}

unint64_t PhoneCallNLIntent.getCallRecordType()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_57_15();
  result = v5();
  if (result)
  {
    v7 = result;
    __chkstk_darwin(result);
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = v2;
    result = specialized Collection.firstIndex(where:)(partial apply for closure #1 in PhoneCallNLIntent.getCallRecordType(), v10, v7);
    if (v8)
    {

      return 0;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v7 + 16))
    {
      v9 = *(v7 + result + 32);

      return PhoneCallNLIntent.getCallRecordType(attr:)(v9);
    }

    __break(1u);
  }

  return result;
}

uint64_t PhoneCallNLIntent.getCallRecordType(attr:)(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_43CD28[a1];
  }
}

BOOL static PhoneCallNLIntent.isAppModified(previousNLIntent:currentNLIntent:)(void *a1, void *a2)
{
  v4 = a2[4];
  v5 = OUTLINED_FUNCTION_1_83(a2);
  v7 = PhoneCallNLIntent.applicationId.getter(v5, v6);
  specialized Optional<A>.isNilOrEmpty.getter(v7, v8);
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_1_83(a2);
    v17 = PhoneCallNLIntent.applicationId.getter(v15, v16);
    v19 = v18;
    v20 = a1[4];
    v21 = OUTLINED_FUNCTION_86(a1);
    v22 = PhoneCallNLIntent.applicationId.getter(v21, v20);
    if (v19)
    {
      if (!v23)
      {
        goto LABEL_26;
      }

      if (v17 == v22 && v19 == v23)
      {
      }

      else
      {
        OUTLINED_FUNCTION_79_6(v17, v19, v22);
        OUTLINED_FUNCTION_62_15();

        if ((v17 & 1) == 0)
        {
          return 1;
        }
      }
    }

    else if (v23)
    {
      goto LABEL_26;
    }
  }

  v9 = a2[4];
  v10 = OUTLINED_FUNCTION_1_83(a2);
  v12 = PhoneCallNLIntent.appName.getter(v10, v11);
  specialized Optional<A>.isNilOrEmpty.getter(v12, v13);
  OUTLINED_FUNCTION_20_2();
  if (v9)
  {
    return 0;
  }

  v25 = OUTLINED_FUNCTION_1_83(a2);
  v27 = PhoneCallNLIntent.appName.getter(v25, v26);
  v29 = v28;
  v30 = a1[4];
  v31 = OUTLINED_FUNCTION_86(a1);
  v32 = PhoneCallNLIntent.appName.getter(v31, v30);
  if (!v29)
  {
    if (!v33)
    {
      return 0;
    }

    goto LABEL_26;
  }

  if (!v33)
  {
LABEL_26:

    return 1;
  }

  if (v27 == v32 && v29 == v33)
  {

    return 0;
  }

  OUTLINED_FUNCTION_8_2();
  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v35 & 1) == 0;
}

void static PhoneCallNLIntent.isPhoneCallVerbModified(previousNLIntent:currentNLIntent:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 104);
  v5(v3, v4);
  OUTLINED_FUNCTION_20_31();
  if (v13)
  {
    v5(v3, v4);
    OUTLINED_FUNCTION_20_31();
    if (!v13)
    {
      v7 = (v5)(v3, v4);
      v8 = *(v1 + 24);
      v9 = *(v1 + 32);
      v10 = OUTLINED_FUNCTION_55_0();
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v12 = (*(v9 + 104))(v8, v9);
      v13 = v7 == 17 || v12 == 17;
      if (!v13)
      {
        v14 = v12;
        v15 = PhoneCallVerb.rawValue.getter(v7);
        v17 = v16;
        if (v15 != PhoneCallVerb.rawValue.getter(v14) || v17 != v18)
        {
          v20 = OUTLINED_FUNCTION_20_0();
          OUTLINED_FUNCTION_79_6(v20, v21, v22);
        }
      }
    }
  }

  else
  {
    v23 = PhoneCallVerb.rawValue.getter(v6);
    if (v23 == 1819042147 && v24 == 0xE400000000000000)
    {
    }

    else
    {
      OUTLINED_FUNCTION_17_34(v23, v24);
      OUTLINED_FUNCTION_80_5();
    }
  }

  OUTLINED_FUNCTION_60_1();
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasUnsupportedSearchCallHistoryParameter()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  OUTLINED_FUNCTION_57_15();
  if (!v6())
  {
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 0;
  v9 = &dword_54B000;
LABEL_3:
  v10 = v8;
  do
  {
    v11 = *(&outlined read-only object #0 of PhoneCallNLIntent.hasUnsupportedSearchCallHistoryParameter() + v10 + 32);
    v8 = v10 + 1;
    specialized Sequence<>.contains(_:)();
    if (v12)
    {
      if (*(v9 + 369) != -1)
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
        v27 = v4;
        v16 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v28 = v25;
        *v16 = 136315138;
        v17 = PhoneCallAttribute.rawValue.getter(v11);
        v26 = v5;
        v19 = v3;
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v28);

        *(v16 + 4) = v20;
        v3 = v19;
        v5 = v26;
        _os_log_impl(&dword_0, v14, v15, "#PhoneCallNLIntent find unsupported search call history parameter %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        OUTLINED_FUNCTION_26_0(v25);
        v21 = v16;
        v4 = v27;
        OUTLINED_FUNCTION_26_0(v21);
      }

      v7 = 1;
      v9 = &dword_54B000;
      if (v10 == 2)
      {

        goto LABEL_20;
      }

      goto LABEL_3;
    }

    ++v10;
  }

  while (v8 != 3);

  if ((v7 & 1) == 0 && !PhoneCallNLIntent.hasPhoneNumber()() && ((*(v4 + 56))(v5, v4), OUTLINED_FUNCTION_43_19(), v22))
  {
    OUTLINED_FUNCTION_105_4();

    return PhoneCallNLIntent.isSearchCallHistoryWithAppName()();
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_105_4();
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasOnlyCallVerb()()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_24_3();
  v3 = *(v2 + 104);
  v3();
  OUTLINED_FUNCTION_20_31();
  if (v7)
  {
    v5 = OUTLINED_FUNCTION_20_0();
    (v3)(v5);
    OUTLINED_FUNCTION_20_31();
    if (!v7)
    {
      OUTLINED_FUNCTION_37_21();
      PhoneCallVerb.rawValue.getter(v11);
      OUTLINED_FUNCTION_42_17();
      if (v12)
      {
        v14 = v13 == 0xE800000000000000;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_40_4();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_62_15();
      if (v1)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_60_1();
    return result;
  }

  PhoneCallVerb.rawValue.getter(v4);
  OUTLINED_FUNCTION_42_17();
  if (v7)
  {
    v10 = v9 == 0xE400000000000000;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
LABEL_17:

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_17_34(v8, v0);
  OUTLINED_FUNCTION_62_15();
LABEL_18:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_60_1();

  return PhoneCallNLIntent.hasNoContactOrReference()();
}

id @nonobjc INCallGroup.init(groupName:groupId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  OUTLINED_FUNCTION_8_2();
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithGroupName:v6 groupId:v7];

  return v8;
}

uint64_t outlined destroy of PhoneCallApp?(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_104_2(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PhoneCallAVMode and conformance PhoneCallAVMode()
{
  result = lazy protocol witness table cache variable for type PhoneCallAVMode and conformance PhoneCallAVMode;
  if (!lazy protocol witness table cache variable for type PhoneCallAVMode and conformance PhoneCallAVMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAVMode and conformance PhoneCallAVMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallAttribute and conformance PhoneCallAttribute()
{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute;
  if (!lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAttribute and conformance PhoneCallAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute()
{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute;
  if (!lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallAudioRoute and conformance PhoneCallAudioRoute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallCapability and conformance PhoneCallCapability()
{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability;
  if (!lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCapability and conformance PhoneCallCapability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider()
{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider;
  if (!lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallPreferredProvider and conformance PhoneCallPreferredProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallConfirmation and conformance PhoneCallConfirmation()
{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmation and conformance PhoneCallConfirmation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallNoun and conformance PhoneCallNoun()
{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun;
  if (!lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNoun and conformance PhoneCallNoun);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallReference and conformance PhoneCallReference()
{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference;
  if (!lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallReference and conformance PhoneCallReference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallContactReference and conformance PhoneCallContactReference()
{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference;
  if (!lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactReference and conformance PhoneCallContactReference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallVerb and conformance PhoneCallVerb()
{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb;
  if (!lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerb and conformance PhoneCallVerb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun()
{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailNoun and conformance VoiceMail.VoiceMailNoun);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb()
{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb;
  if (!lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMail.VoiceMailVerb and conformance VoiceMail.VoiceMailVerb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallDestinationType and conformance PhoneCallDestinationType()
{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType;
  if (!lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDestinationType and conformance PhoneCallDestinationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3()
{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole.NLv3 and conformance PhoneCallContactRole.NLv3);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PhoneCallAttribute] and conformance [A](unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_104_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallContactRole and conformance PhoneCallContactRole()
{
  result = lazy protocol witness table cache variable for type PhoneCallContactRole and conformance PhoneCallContactRole;
  if (!lazy protocol witness table cache variable for type PhoneCallContactRole and conformance PhoneCallContactRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallContactRole and conformance PhoneCallContactRole);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallAudioRoute(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallNoun(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PhoneCallReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallContactReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallContactReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallVerb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallAVMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_84_6(-1);
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
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_84_6(v8);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallAVMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoiceMail.VoiceMailVerb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallConfirmation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_84_6(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_84_6(v8);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallPreferredProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_84_6(-1);
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
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_84_6(v8);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallPreferredProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_83_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_81_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_82_5(result, v6);
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_19(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_59_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_79_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_80_5()
{
}

uint64_t OUTLINED_FUNCTION_85_4()
{

  return outlined init with copy of SharedGlobalsProviding();
}

uint64_t OUTLINED_FUNCTION_86_6(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_108_3(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_111_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF12SiriOntology21NonTerminalIntentNodeV_s5NeverO27PhoneCallFlowDelegatePlugin0jK3App_pTg5@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v15[1] = a2;
  v16 = a1;
  v7 = type metadata accessor for NonTerminalIntentNode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = v15 - v12;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v5, v15 - v12, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  result = __swift_getEnumTagSinglePayload(v13, 1, v7);
  if (result == 1)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    v16(v10);
    result = (*(v8 + 8))(v10, v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static PhoneCallNLv3Intent.placeCall()@<X0>(uint64_t x8_0@<X8>)
{
  return static PhoneCallNLv3Intent.placeCall()(x8_0);
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV5ValueOSgMd, &_s12SiriOntology15TerminalElementV5ValueOSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_29_3();
  v7 = type metadata accessor for TerminalIntentNode();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  TerminalElement.SemanticValue.init(_:javaPojoName:)();
  v14 = enum case for TerminalElement.Value.semantic(_:);
  v15 = type metadata accessor for TerminalElement.Value();
  OUTLINED_FUNCTION_23_1();
  (*(v16 + 104))(v3, v14, v15);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v15);
  OUTLINED_FUNCTION_75_8();
  OUTLINED_FUNCTION_0_66();
  TerminalIntentNode.init(name:value:semanticTags:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_424FD0;
  *(v17 + 56) = v7;
  *(v17 + 64) = &protocol witness table for TerminalIntentNode;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  (*(v9 + 16))(boxed_opaque_existential_1, v13, v7);
  static PhoneCallNLv3Intent.phoneCallNLv3Intent(_:)(x8_0);

  v19 = OUTLINED_FUNCTION_23_6();
  return v20(v19);
}

uint64_t specialized PhoneCallNLIntent.hasVideoCallSemantic()()
{
  type metadata accessor for PhoneCallNLv3Intent(0);
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent, &protocol conformance descriptor for PhoneCallNLv3Intent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v13 == 9)
  {
    v0 = 0;
  }

  else if (PhoneCallNoun.rawValue.getter(v13) == 0x656D697465636166 && v1 == 0xE800000000000000)
  {

    v0 = 1;
  }

  else
  {
    v0 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v12 == 17)
  {
    v3 = 0;
  }

  else if (PhoneCallVerb.rawValue.getter(v12) == 0x656D697465636166 && v4 == 0xE800000000000000)
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v11 == 9)
  {
    v6 = 0;
  }

  else if (PhoneCallNoun.rawValue.getter(v11) == 0x61665F70756F7267 && v7 == 0xEE00656D69746563)
  {

    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v3 | v6;
  }

  return v9 & 1;
}

uint64_t specialized PhoneCallNLIntent.hasAudioCallSemantic()()
{
  type metadata accessor for PhoneCallNLv3Intent(0);
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent, &protocol conformance descriptor for PhoneCallNLv3Intent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v8 == 9)
  {
    v0 = 0;
  }

  else if (PhoneCallNoun.rawValue.getter(v8) == 0x656D697465636166 && v1 == 0xEE006F6964756120)
  {

    v0 = 1;
  }

  else
  {
    v0 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v7 == 17)
  {
    v3 = 0;
  }

  else if (PhoneCallVerb.rawValue.getter(v7) == 0x656D697465636166 && v4 == 0xEE006F6964756120)
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return (v0 | v3) & 1;
}

uint64_t *PhoneCallNLv3Intent.callId.unsafeMutableAddressor()
{
  if (one-time initialization token for callId != -1)
  {
    OUTLINED_FUNCTION_43_20(&one-time initialization token for callId);
  }

  return &static PhoneCallNLv3Intent.callId;
}

uint64_t PhoneCallNLv3Intent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhoneCallNLv3Intent(0);
  v5 = v4[5];
  type metadata accessor for AppOntologyNode();
  OUTLINED_FUNCTION_12_8();
  v82 = v6;
  swift_allocObject();
  v7 = AppOntologyNode.init(name:multicardinal:)();
  *(a2 + v5) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMR);
  OUTLINED_FUNCTION_12_8();
  v80 = v8;
  swift_allocObject();
  v81 = v7;

  OUTLINED_FUNCTION_51_20();
  v9 = TerminalOntologyNode.init(name:multicardinal:)();
  OUTLINED_FUNCTION_73_5(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMR);
  OUTLINED_FUNCTION_12_8();
  v78 = v10;
  swift_allocObject();
  v79 = v7;

  OUTLINED_FUNCTION_51_20();
  v11 = TerminalOntologyNode.init(name:multicardinal:)();
  OUTLINED_FUNCTION_73_5(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMR);
  OUTLINED_FUNCTION_12_8();
  v74 = v12;
  swift_allocObject();
  v77 = v7;

  OUTLINED_FUNCTION_51_20();
  v13 = TerminalOntologyNode.init(name:multicardinal:)();
  OUTLINED_FUNCTION_73_5(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMR);
  OUTLINED_FUNCTION_12_8();
  v69 = v14;
  swift_allocObject();
  v72 = v7;

  v15 = TerminalOntologyNode.init(name:multicardinal:)();
  OUTLINED_FUNCTION_73_5(v15);
  v16 = v4[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMR);
  OUTLINED_FUNCTION_12_8();
  v64 = v17;
  swift_allocObject();
  v67 = v7;

  v18 = TerminalOntologyNode.init(name:multicardinal:)();
  *(a2 + v16) = v18;
  v19 = v4[12];
  type metadata accessor for PhoneCallContactOntologyNode(0);
  OUTLINED_FUNCTION_12_8();
  v71 = v20;
  swift_allocObject();

  v21 = PhoneCallContactOntologyNode.init(name:multicardinal:)();
  *(a2 + v19) = v21;
  v22 = v4[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_12_8();
  v76 = v23;
  swift_allocObject();
  v66 = v21;

  v24 = TerminalOntologyNode.init(name:multicardinal:)();
  *(a2 + v22) = v24;
  v25 = v4[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMR);
  OUTLINED_FUNCTION_12_8();
  v68 = v26;
  swift_allocObject();
  v70 = v24;

  v27 = TerminalOntologyNode.init(name:multicardinal:)();
  *(a2 + v25) = v27;
  v28 = v4[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMR);
  OUTLINED_FUNCTION_12_8();
  v75 = v29;
  swift_allocObject();
  v65 = v27;

  OUTLINED_FUNCTION_0_66();
  v30 = TerminalOntologyNode.init(name:multicardinal:)();
  *(a2 + v28) = v30;
  v31 = v4[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_424FF0;
  v33 = one-time initialization token for voiceMailNoun;
  v73 = v30;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = static VoiceMail.voiceMailNoun;
  *(v32 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4NounOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4NounOGMR);
  OUTLINED_FUNCTION_2_14();
  *(v32 + 64) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v35, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4NounOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4NounOGMR, v36);
  *(v32 + 32) = v34;
  v37 = one-time initialization token for voiceMailVerb;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = static VoiceMail.voiceMailVerb;
  *(v32 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4VerbOGMR);
  *(v32 + 104) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<VoiceMail.VoiceMailVerb> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin9VoiceMailO0jK4VerbOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v32 + 72) = v38;
  type metadata accessor for NonTerminalOntologyNode();
  OUTLINED_FUNCTION_12_8();
  v63 = v39;
  swift_allocObject();

  v40 = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  *(a2 + v31) = v40;
  v41 = v4[17];
  v42 = type metadata accessor for SmsGroupOntologyNode(0);
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  v61 = v40;

  v43 = SmsGroupOntologyNode.init(name:multicardinal:)();
  *(a2 + v41) = v43;
  v44 = type metadata accessor for NLIntent();
  v45 = *(v44 - 8);
  v62 = v44;
  (*(v45 + 16))(a2, a1);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_43CD80;
  *(v46 + 56) = v82;
  *(v46 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v46 + 32) = v81;
  *(v46 + 96) = v80;
  *(v46 + 104) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallAttribute> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v46 + 72) = v79;
  *(v46 + 136) = v78;
  *(v46 + 144) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallAudioRoute> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v46 + 112) = v77;
  *(v46 + 176) = v74;
  *(v46 + 184) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallCapability> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v46 + 152) = v72;
  *(v46 + 216) = v69;
  *(v46 + 224) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallPreferredProvider> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v46 + 192) = v67;
  *(v46 + 256) = v64;
  *(v46 + 264) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallDestinationType> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v46 + 232) = v18;
  v47 = one-time initialization token for confirmation;

  if (v47 != -1)
  {
    OUTLINED_FUNCTION_41_22(&one-time initialization token for confirmation);
  }

  v48 = static PhoneCallNLv3Intent.confirmation;
  *(v46 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMR);
  OUTLINED_FUNCTION_2_14();
  v51 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v49, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMR, v50);
  *(v46 + 272) = v48;
  *(v46 + 336) = v71;
  *(v46 + 344) = &protocol witness table for NonTerminalOntologyNode;
  *(v46 + 304) = v51;
  *(v46 + 312) = v66;
  v52 = one-time initialization token for callId;

  if (v52 != -1)
  {
    OUTLINED_FUNCTION_43_20(&one-time initialization token for callId);
  }

  v53 = static PhoneCallNLv3Intent.callId;
  *(v46 + 376) = v76;
  v54 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v46 + 352) = v53;
  *(v46 + 416) = v76;
  *(v46 + 424) = v54;
  *(v46 + 384) = v54;
  *(v46 + 392) = v70;
  *(v46 + 456) = v68;
  *(v46 + 464) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallNoun> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v46 + 432) = v65;
  v55 = one-time initialization token for reference;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_25_23(&one-time initialization token for reference);
  }

  v56 = static PhoneCallNLv3Intent.reference;
  v57 = OUTLINED_FUNCTION_103_0();
  *(v46 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(v57, v58);
  *(v46 + 504) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallReference> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9ReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9ReferenceOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v46 + 472) = v56;
  *(v46 + 536) = v75;
  *(v46 + 544) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallVerb> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v46 + 512) = v73;
  *(v46 + 576) = v63;
  *(v46 + 584) = &protocol witness table for NonTerminalOntologyNode;
  *(v46 + 552) = v61;
  *(v46 + 616) = v42;
  *(v46 + 624) = &protocol witness table for NonTerminalOntologyNode;
  *(v46 + 592) = v43;
  type metadata accessor for DomainOntologyNode();
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();

  OUTLINED_FUNCTION_75_8();
  v59 = DomainOntologyNode.init(name:childNodes:isInEventTree:)();
  result = (*(v45 + 8))(a1, v62);
  *(a2 + v4[6]) = v59;
  return result;
}

uint64_t *PhoneCallNLv3Intent.appName.unsafeMutableAddressor()
{
  if (one-time initialization token for appName != -1)
  {
    swift_once();
  }

  return &static PhoneCallNLv3Intent.appName;
}

uint64_t *PhoneCallNLv3Intent.reference.unsafeMutableAddressor()
{
  if (one-time initialization token for reference != -1)
  {
    OUTLINED_FUNCTION_25_23(&one-time initialization token for reference);
  }

  return &static PhoneCallNLv3Intent.reference;
}

uint64_t *PhoneCallNLv3Intent.confirmation.unsafeMutableAddressor()
{
  if (one-time initialization token for confirmation != -1)
  {
    OUTLINED_FUNCTION_41_22(&one-time initialization token for confirmation);
  }

  return &static PhoneCallNLv3Intent.confirmation;
}

uint64_t PhoneCallNLv3Intent.domainOntologyNode.getter()
{
  type metadata accessor for PhoneCallNLv3Intent(0);
}

uint64_t static PhoneCallNLv3Intent.appName.getter()
{
  return static PhoneCallNLv3Intent.appName.getter();
}

{
  OUTLINED_FUNCTION_42_18();
  if (!v0)
  {
    swift_once();
  }
}

uint64_t *PhoneCallNLv3Intent.applicationId.unsafeMutableAddressor()
{
  if (one-time initialization token for applicationId != -1)
  {
    swift_once();
  }

  return &static PhoneCallNLv3Intent.applicationId;
}

uint64_t one-time initialization function for confirmation()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF12ConfirmationOGMR);
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallNLv3Intent.confirmation = result;
  return result;
}

uint64_t one-time initialization function for reference()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9ReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9ReferenceOGMR);
  OUTLINED_FUNCTION_12_8();
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallNLv3Intent.reference = result;
  return result;
}

uint64_t PhoneCallNLv3Intent.app.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_55_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v7, v8, &protocol conformance descriptor for PhoneCallNLv3Intent);
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  v13 = v1;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF12SiriOntology21NonTerminalIntentNodeV_s5NeverO27PhoneCallFlowDelegatePlugin0jK3App_pTg5(partial apply for closure #1 in PhoneCallNLv3Intent.app.getter, v12, a1);
  v9 = OUTLINED_FUNCTION_13_17();
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, v10, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
}

uint64_t closure #1 in PhoneCallNLv3Intent.app.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AppIntentNode(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for AppIntentNode;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = type metadata accessor for NonTerminalIntentNode();
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = *(a2 + *(type metadata accessor for PhoneCallNLv3Intent(0) + 20));
}

uint64_t PhoneCallNLv3Intent.phoneCallAVMode.getter()
{
  if (specialized PhoneCallNLIntent.hasVideoCallSemantic()())
  {
    return 1;
  }

  if (specialized PhoneCallNLIntent.hasAudioCallSemantic()())
  {
    return 0;
  }

  return 2;
}

uint64_t PhoneCallNLv3Intent.phoneCallAttributes.getter()
{
  OUTLINED_FUNCTION_21_28();
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1, &protocol conformance descriptor for PhoneCallNLv3Intent);
  v2 = OUTLINED_FUNCTION_20_0();

  return IntentNodeTraversable.values<A>(forNode:)(v2);
}

uint64_t PhoneCallNLv3Intent.phoneCallAudioRoute.getter()
{
  OUTLINED_FUNCTION_21_28();
  OUTLINED_FUNCTION_0_83();
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1, &protocol conformance descriptor for PhoneCallNLv3Intent);
  OUTLINED_FUNCTION_16_40(v2);
  return v4;
}

uint64_t PhoneCallNLv3Intent.phoneCallCapability.getter()
{
  OUTLINED_FUNCTION_21_28();
  OUTLINED_FUNCTION_0_83();
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1, &protocol conformance descriptor for PhoneCallNLv3Intent);
  OUTLINED_FUNCTION_16_40(v2);
  return v4;
}

uint64_t PhoneCallNLv3Intent.phoneCallPreferredProvider.getter()
{
  OUTLINED_FUNCTION_21_28();
  OUTLINED_FUNCTION_0_83();
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1, &protocol conformance descriptor for PhoneCallNLv3Intent);
  OUTLINED_FUNCTION_16_40(v2);
  return v4;
}

uint64_t PhoneCallNLv3Intent.phoneCallDestinationType.getter()
{
  OUTLINED_FUNCTION_21_28();
  OUTLINED_FUNCTION_0_83();
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1, &protocol conformance descriptor for PhoneCallNLv3Intent);
  OUTLINED_FUNCTION_16_40(v2);
  return v4;
}

uint64_t PhoneCallNLv3Intent.phoneCallVerb.getter()
{
  OUTLINED_FUNCTION_21_28();
  OUTLINED_FUNCTION_0_83();
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1, &protocol conformance descriptor for PhoneCallNLv3Intent);
  OUTLINED_FUNCTION_16_40(v2);
  return v4;
}

uint64_t PhoneCallNLv3Intent.phoneCallNoun.getter()
{
  OUTLINED_FUNCTION_21_28();
  OUTLINED_FUNCTION_0_83();
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1, &protocol conformance descriptor for PhoneCallNLv3Intent);
  OUTLINED_FUNCTION_16_40(v2);
  return v4;
}

uint64_t PhoneCallNLv3Intent.phoneCallConfirmation.getter()
{
  OUTLINED_FUNCTION_42_18();
  if (!v0)
  {
    swift_once();
  }

  type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v1, v2, &protocol conformance descriptor for PhoneCallNLv3Intent);
  OUTLINED_FUNCTION_55();
  IntentNodeTraversable.value<A>(forNode:)();
  return v4;
}

uint64_t PhoneCallNLv3Intent.contacts.getter()
{
  OUTLINED_FUNCTION_21_28();
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v1, v2, &protocol conformance descriptor for PhoneCallNLv3Intent);
  OUTLINED_FUNCTION_20_0();
  IntentNodeTraversable.intentNodes(forOntologyNode:)();
  v3 = OUTLINED_FUNCTION_72_6();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(v3, v4, v5);
  OUTLINED_FUNCTION_33_2();
  return v0;
}

uint64_t closure #1 in PhoneCallNLv3Intent.contacts.getter@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  (*(v8 + 16))(v7 - v6, a1);
  type metadata accessor for PhoneCallNLv3Intent(0);
  v9 = type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_12_8();
  v10 = swift_allocObject();
  PhoneCallContactIntentNode.init(intentNode:ontologyNode:)();
  a3[3] = v9;
  a3[4] = &protocol witness table for PhoneCallContactIntentNode;
  *a3 = v10;
}

uint64_t PhoneCallContactIntentNode.__allocating_init(intentNode:ontologyNode:)()
{
  OUTLINED_FUNCTION_24_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_20_0();
  PhoneCallContactIntentNode.init(intentNode:ontologyNode:)();
  return v0;
}

void PhoneCallNLv3Intent.contactQueries.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v8, v9, &protocol conformance descriptor for PhoneCallNLv3Intent);
  OUTLINED_FUNCTION_76_7();
  v10 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
  v23 = v0;
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(closure #1 in PhoneCallNLv3Intent.contacts.getterpartial apply, &v22, v10);

  v12 = *(v11 + 16);

  if (v12)
  {
    OUTLINED_FUNCTION_76_7();
    v13 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
    __chkstk_darwin(v13);
    OUTLINED_FUNCTION_6_49();
    *(v14 - 16) = v0;
    v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(closure #1 in PhoneCallNLv3Intent.contacts.getterpartial apply, v15, v13);

    v17 = *(v16 + 16);
    if (v17)
    {
      v25 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v18 = v25;
      v19 = v16 + 32;
      do
      {
        outlined init with copy of SignalProviding(v19, v24);
        __swift_project_boxed_opaque_existential_1(v24, v24[3]);
        SiriPhoneContact.asSiriInferenceContact.getter();
        __swift_destroy_boxed_opaque_existential_1(v24);
        v25 = v18;
        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          v18 = v25;
        }

        v18[2] = v21 + 1;
        (*(v3 + 32))(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v7, v1);
        v19 += 40;
        --v17;
      }

      while (v17);
    }
  }

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallNLv3Intent.smsGroups.getter()
{
  OUTLINED_FUNCTION_21_28();
  OUTLINED_FUNCTION_0_83();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v1, v2, &protocol conformance descriptor for PhoneCallNLv3Intent);
  OUTLINED_FUNCTION_20_0();
  IntentNodeTraversable.intentNodes(forOntologyNode:)();
  v3 = OUTLINED_FUNCTION_72_6();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin8SmsGroup_ps5NeverOTg5(v3, v4, v5);
  OUTLINED_FUNCTION_33_2();
  return v0;
}

uint64_t closure #1 in PhoneCallNLv3Intent.smsGroups.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for SmsGroupIntentNode(0);
  a3[3] = v6;
  a3[4] = &protocol witness table for SmsGroupIntentNode;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = type metadata accessor for NonTerminalIntentNode();
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = *(a2 + *(type metadata accessor for PhoneCallNLv3Intent(0) + 68));
}

uint64_t AppIntentNode.init(intentNode:ontologyNode:)()
{
  OUTLINED_FUNCTION_67_10();
  OUTLINED_FUNCTION_23_1();
  (*(v4 + 32))(v3, v2);
  result = v0(0);
  *(v3 + *(result + 20)) = v1;
  return result;
}

uint64_t static PhoneCallNLv3Intent.phoneCallNLv3Intent(_:)@<X0>(uint64_t a2@<X8>)
{
  v18 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23MitigatorClassificationOSgMd, &_s12SiriOntology23MitigatorClassificationOSgMR);
  __chkstk_darwin(v2 - 8);
  v17 = &v15 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology7NLStateVSgMd, &_s12SiriOntology7NLStateVSgMR);
  __chkstk_darwin(v4 - 8);
  v16 = &v15 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMR);
  v6 = swift_allocObject();
  v19 = xmmword_424FD0;
  *(v6 + 16) = xmmword_424FD0;
  v7 = swift_allocObject();
  *(v7 + 16) = v19;
  v8 = swift_allocObject();
  *(v8 + 16) = v19;
  v9 = swift_allocObject();
  *(v9 + 16) = v19;
  v10 = swift_allocObject();
  *(v10 + 16) = v19;
  v11 = type metadata accessor for NonTerminalIntentNode();
  *(v10 + 56) = v11;
  *(v10 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1((v10 + 32));

  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v9 + 56) = v11;
  *(v9 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v8 + 56) = v11;
  *(v8 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v7 + 56) = v11;
  *(v7 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  *(v6 + 56) = v11;
  *(v6 + 64) = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  v20[3] = v11;
  v20[4] = &protocol witness table for NonTerminalIntentNode;
  __swift_allocate_boxed_opaque_existential_1(v20);
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  v12 = type metadata accessor for NLState();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v12);
  v13 = type metadata accessor for MitigatorClassification();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v13);
  return NLIntent.init(rootNode:score:originalInput:allWordsMatched:primary:usingExplicitInput:intentRank:isNERBasedParse:intentID:nlState:mitigatorClassification:strippedVoiceTrigger:isInvalidVoiceTrigger:isSuggested:metaDomainActions:)();
}

uint64_t static PhoneCallNLv3Intent.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_24_3();
  if ((static NLIntent.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NonTerminalOntologyNode();
  v0 = type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_25_25(v0[5]);
  if ((static NonTerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_25(v0[6]);
  if ((static NonTerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMR);
  OUTLINED_FUNCTION_25_25(v0[7]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10AudioRouteOGMR);
  OUTLINED_FUNCTION_25_25(v0[8]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF10CapabilityOGMR);
  OUTLINED_FUNCTION_25_25(v0[9]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF17PreferredProviderOGMR);
  OUTLINED_FUNCTION_25_25(v0[10]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF15DestinationTypeOGMR);
  OUTLINED_FUNCTION_25_25(v0[11]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_25(v0[12]);
  if ((static NonTerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  OUTLINED_FUNCTION_25_25(v0[13]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4NounOGMR);
  OUTLINED_FUNCTION_25_25(v0[14]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF4VerbOGMR);
  OUTLINED_FUNCTION_25_25(v0[15]);
  if ((static TerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_25(v0[16]);
  if ((static NonTerminalOntologyNode.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_25(v0[17]);
  return static NonTerminalOntologyNode.== infix(_:_:)() & 1;
}

uint64_t PhoneCallNLv3Intent.hash(into:)()
{
  type metadata accessor for NLIntent();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
  OUTLINED_FUNCTION_55_0();
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for PhoneCallNLv3Intent(0);
  type metadata accessor for AppOntologyNode();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type AppOntologyNode and conformance NonTerminalOntologyNode, &type metadata accessor for AppOntologyNode, &protocol conformance descriptor for NonTerminalOntologyNode);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  type metadata accessor for DomainOntologyNode();
  OUTLINED_FUNCTION_80_6(&lazy protocol witness table cache variable for type DomainOntologyNode and conformance NonTerminalOntologyNode);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  OUTLINED_FUNCTION_53_19();
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallAttribute> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF9AttributeOGMR, &protocol conformance descriptor for TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallAudioRoute> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallCapability> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallPreferredProvider> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallDestinationType> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  type metadata accessor for PhoneCallContactOntologyNode(0);
  OUTLINED_FUNCTION_80_6(&lazy protocol witness table cache variable for type PhoneCallContactOntologyNode and conformance NonTerminalOntologyNode);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallNoun> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_30_26(&lazy protocol witness table cache variable for type TerminalOntologyNode<PhoneCallVerb> and conformance TerminalOntologyNode<A>);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  type metadata accessor for NonTerminalOntologyNode();
  OUTLINED_FUNCTION_80_6(&lazy protocol witness table cache variable for type NonTerminalOntologyNode and conformance NonTerminalOntologyNode);
  OUTLINED_FUNCTION_5_65();
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_26_23();
  type metadata accessor for SmsGroupOntologyNode(0);
  OUTLINED_FUNCTION_80_6(&lazy protocol witness table cache variable for type SmsGroupOntologyNode and conformance NonTerminalOntologyNode);
  OUTLINED_FUNCTION_5_65();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PhoneCallNLv3Intent.hashValue.getter()
{
  Hasher.init(_seed:)();
  PhoneCallNLv3Intent.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallNLv3Intent(uint64_t a1)
{
  Hasher.init(_seed:)();
  PhoneCallNLv3Intent.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance PhoneCallNLv3Intent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent, &protocol conformance descriptor for PhoneCallNLv3Intent);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance PhoneCallNLv3Intent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent, &protocol conformance descriptor for PhoneCallNLv3Intent);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallNLv3Intent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent, &protocol conformance descriptor for PhoneCallNLv3Intent);

  return NLIntentWrapper.description.getter(a1, v2);
}

uint64_t key path setter for PhoneCallContactIntentNode.intentNode : PhoneCallContactIntentNode(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonTerminalIntentNode();
  v5 = __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 128))(v7);
}

uint64_t PhoneCallContactIntentNode.intentNode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_intentNode;
  swift_beginAccess();
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_23_1();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t PhoneCallContactIntentNode.intentNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_intentNode;
  swift_beginAccess();
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_23_1();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t key path setter for PhoneCallContactIntentNode.ontologyNode : PhoneCallContactIntentNode(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t PhoneCallContactIntentNode.ontologyNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_ontologyNode;
  OUTLINED_FUNCTION_78_3(a1);
  *(v1 + v3) = a1;
}

uint64_t PhoneCallContactIntentNode.init(intentNode:ontologyNode:)()
{
  OUTLINED_FUNCTION_24_3();
  v3 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_handleLabel);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_emergencyLocationType) = 3;
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_contactSource) = 3;
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_intentNode;
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_23_1();
  (*(v5 + 32))(v1 + v4, v2);
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_ontologyNode) = v0;
  return v1;
}

uint64_t static PhoneCallContactIntentNode.from(intentNode:ontologyNode:)()
{
  OUTLINED_FUNCTION_24_3();
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4, v2);
  v8 = *(v1 + 168);

  return v8(v6, v0);
}

void PhoneCallContactIntentNode.person.getter()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  v21 = v0;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_11_43(&one-time initialization token for personNode);
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v15, v16, &protocol conformance descriptor for PhoneCallContactIntentNode);
  IntentNodeTraversable.intentNode(forOntologyNode:)();
  OUTLINED_FUNCTION_9_40(v7, 1, v8);
  if (v17)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v18 = 1;
  }

  else
  {
    (*(v10 + 32))(v14, v7, v8);
    (*(v10 + 16))(v1, v14, v8);
    type metadata accessor for PersonOntologyNode();
    OUTLINED_FUNCTION_12_8();
    swift_allocObject();
    PersonOntologyNode.init(name:multicardinal:)();
    PersonIntentNode.init(intentNode:ontologyNode:)();
    (*(v10 + 8))(v14, v8);
    v18 = 0;
  }

  v19 = type metadata accessor for PersonIntentNode();
  __swift_storeEnumTagSinglePayload(v3, v18, 1, v19);
  OUTLINED_FUNCTION_65();
}

uint64_t *PhoneCallContactOntologyNode.personNode.unsafeMutableAddressor()
{
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_11_43(&one-time initialization token for personNode);
  }

  return &static PhoneCallContactOntologyNode.personNode;
}

uint64_t key path setter for PhoneCallContactIntentNode.contactId : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t *PhoneCallContactOntologyNode.phoneCallContactIdNode.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallContactIdNode != -1)
  {
    OUTLINED_FUNCTION_34_15(&one-time initialization token for phoneCallContactIdNode);
  }

  return &static PhoneCallContactOntologyNode.phoneCallContactIdNode;
}

uint64_t PhoneCallContactIntentNode.contactId.modify(uint64_t *a1)
{
  *a1 = PhoneCallContactIntentNode.contactId.getter();
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t PhoneCallContactIntentNode.contactReference.getter()
{
  if (one-time initialization token for phoneCallContactReferenceNode != -1)
  {
    OUTLINED_FUNCTION_9_53(&one-time initialization token for phoneCallContactReferenceNode);
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1, &protocol conformance descriptor for PhoneCallContactIntentNode);
  OUTLINED_FUNCTION_55();
  IntentNodeTraversable.value<A>(forNode:)();
  return v3;
}

uint64_t *PhoneCallContactOntologyNode.phoneCallContactReferenceNode.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallContactReferenceNode != -1)
  {
    OUTLINED_FUNCTION_9_53(&one-time initialization token for phoneCallContactReferenceNode);
  }

  return &static PhoneCallContactOntologyNode.phoneCallContactReferenceNode;
}

uint64_t key path setter for PhoneCallContactIntentNode.emailAddress : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 240);

  return v4(v2, v3);
}

uint64_t *PhoneCallContactOntologyNode.emailAddressNode.unsafeMutableAddressor()
{
  if (one-time initialization token for emailAddressNode != -1)
  {
    OUTLINED_FUNCTION_33_19(&one-time initialization token for emailAddressNode);
  }

  return &static PhoneCallContactOntologyNode.emailAddressNode;
}

uint64_t PhoneCallContactIntentNode.emailAddress.modify(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = PhoneCallContactIntentNode.emailAddress.getter(a1, a2, a3);
  a1[1] = v4;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.contactName : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 264);

  return v4(v2, v3);
}

uint64_t *PhoneCallContactOntologyNode.phoneCallContactNameNode.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallContactNameNode != -1)
  {
    OUTLINED_FUNCTION_32_18(&one-time initialization token for phoneCallContactNameNode);
  }

  return &static PhoneCallContactOntologyNode.phoneCallContactNameNode;
}

uint64_t PhoneCallContactIntentNode.contactName.modify(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = PhoneCallContactIntentNode.contactName.getter(a1, a2, a3);
  a1[1] = v4;
  return OUTLINED_FUNCTION_26_7();
}

void PhoneCallContactIntentNode.isMe.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for PersonOntologyNode.PersonSelfReference();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v34 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSg_AFtMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_5_63();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
  v14 = OUTLINED_FUNCTION_21(v13);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  __chkstk_darwin(v20);
  v22 = &v33 - v21;
  PhoneCallContactIntentNode.person.getter();
  v23 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_9_40(v12, 1, v23);
  if (v27)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v1);
  }

  else
  {
    PersonIntentNodeContaining.selfReference.getter();
    OUTLINED_FUNCTION_40();
    v24 = OUTLINED_FUNCTION_103_0();
    v25(v24);
  }

  (*(v3 + 104))(v19, enum case for PersonOntologyNode.PersonSelfReference.me(_:), v1);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v1);
  v26 = *(v7 + 48);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v22, v0, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v19, v0 + v26, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
  OUTLINED_FUNCTION_1_0(v0);
  if (!v27)
  {
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v0, v16, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
    OUTLINED_FUNCTION_1_0(v0 + v26);
    if (!v27)
    {
      v30 = v34;
      (*(v3 + 32))(v34, v0 + v26, v1);
      lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(&lazy protocol witness table cache variable for type PersonOntologyNode.PersonSelfReference and conformance PersonOntologyNode.PersonSelfReference, &type metadata accessor for PersonOntologyNode.PersonSelfReference, &protocol conformance descriptor for PersonOntologyNode.PersonSelfReference);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v3 + 8);
      v31(v30, v1);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
      v32 = OUTLINED_FUNCTION_13_17();
      (v31)(v32);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
      goto LABEL_13;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
    v28 = OUTLINED_FUNCTION_13_17();
    v29(v28);
LABEL_12:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSg_AFtMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSg_AFtMR);
    goto LABEL_13;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
  OUTLINED_FUNCTION_1_0(v0 + v26);
  if (!v27)
  {
    goto LABEL_12;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMd, &_s12SiriOntology06PersonB4NodeC0C13SelfReferenceOSgMR);
LABEL_13:
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallContactIntentNode.isMe.modify()
{
  PhoneCallContactIntentNode.isMe.getter();
  OUTLINED_FUNCTION_77_10(v0);
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.personName : PhoneCallContactIntentNode(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *(**a2 + 312);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(__dst, &v5, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v3(__dst);
}

void PhoneCallContactIntentNode.personName.getter()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  OUTLINED_FUNCTION_21(v4);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_5_63();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  OUTLINED_FUNCTION_21(v6);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v10);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_29_3();
  v12 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  PhoneCallContactIntentNode.person.getter();
  v19 = OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_9_40(v19, v20, v12);
  if (v50)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  else
  {
    (*(v14 + 32))(v18, v1, v12);
    type metadata accessor for PersonOntologyNode();
    Name = static PersonOntologyNode.personFirstNameNode.getter();
    v36 = OUTLINED_FUNCTION_49_17(Name);
    v64 = v37;
    v65 = v36;

    v38 = static PersonOntologyNode.personMiddleNameNode.getter();
    v39 = OUTLINED_FUNCTION_49_17(v38);
    v62 = v40;
    v63 = v39;

    v41 = static PersonOntologyNode.personLastNameNode.getter();
    v42 = OUTLINED_FUNCTION_49_17(v41);
    v60 = v43;
    v61 = v42;

    v44 = PersonIntentNodeContaining.nickName.getter();
    v58 = v45;
    v59 = v44;
    v46 = static PersonOntologyNode.personFullNameNode.getter();
    v47 = OUTLINED_FUNCTION_49_17(v46);
    v56 = v48;
    v57 = v47;

    PersonIntentNodeContaining.namePrefix.getter();
    v49 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
    OUTLINED_FUNCTION_9_40(v9, 1, v49);
    if (v50)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v30 = PersonOntologyNode.PersonNamePrefix.rawValue.getter();
      v31 = v51;
      OUTLINED_FUNCTION_40();
      (*(v52 + 8))(v9, v49);
    }

    PersonIntentNodeContaining.namePostfix.getter();
    v53 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
    OUTLINED_FUNCTION_9_40(v0, 1, v53);
    if (v50)
    {
      (*(v14 + 8))(v18, v12);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v32 = PersonOntologyNode.PersonNamePostfix.rawValue.getter();
      v33 = v54;
      (*(v14 + 8))(v18, v12);
      OUTLINED_FUNCTION_40();
      (*(v55 + 8))(v0, v53);
    }

    v34 = v64;
    v21 = v65;
    v23 = v62;
    v22 = v63;
    v25 = v60;
    v24 = v61;
    v27 = v58;
    v26 = v59;
    v29 = v56;
    v28 = v57;
  }

  *v3 = v21;
  v3[1] = v34;
  v3[2] = v22;
  v3[3] = v23;
  v3[4] = v24;
  v3[5] = v25;
  v3[6] = v26;
  v3[7] = v27;
  v3[8] = v28;
  v3[9] = v29;
  v3[10] = v30;
  v3[11] = v31;
  v3[12] = v32;
  v3[13] = v33;
  OUTLINED_FUNCTION_65();
}

void (*PhoneCallContactIntentNode.personName.modify(void **a1))(const void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0xE0uLL);
  PhoneCallContactIntentNode.personName.getter();
  return PhoneCallContactIntentNode.personName.modify;
}

void PhoneCallContactIntentNode.personName.modify(const void **a1)
{
  v1 = *a1;
  memcpy(*a1 + 112, *a1, 0x70uLL);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1 + 112, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);

  free(v1);
}

uint64_t key path setter for PhoneCallContactIntentNode.organizationName : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 336);

  return v4(v2, v3);
}

uint64_t PhoneCallContactIntentNode.organizationName.modify(uint64_t *a1)
{
  *a1 = PhoneCallContactIntentNode.organizationName.getter();
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.telephoneNumber : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 360);

  return v4(v2, v3);
}

uint64_t *PhoneCallContactOntologyNode.phoneNumberNode.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneNumberNode != -1)
  {
    OUTLINED_FUNCTION_12_47(&one-time initialization token for phoneNumberNode);
  }

  return &static PhoneCallContactOntologyNode.phoneNumberNode;
}

uint64_t PhoneCallContactIntentNode.telephoneNumber.modify(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = PhoneCallContactIntentNode.telephoneNumber.getter(a1, a2, a3);
  a1[1] = v4;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.relationship : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 384);

  return v4(v2, v3);
}

uint64_t PhoneCallContactIntentNode.organizationName.getter(void (*a1)(uint64_t, void *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_5_63();
  PhoneCallContactIntentNode.person.getter();
  v5 = type metadata accessor for PersonIntentNode();
  OUTLINED_FUNCTION_9_40(v1, 1, v5);
  if (v6)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s12SiriOntology16PersonIntentNodeVSgMd, &_s12SiriOntology16PersonIntentNodeVSgMR);
  }

  else
  {
    a1(v5, &protocol witness table for PersonIntentNode);
    OUTLINED_FUNCTION_40();
    (*(v7 + 8))(v1, v5);
  }

  return OUTLINED_FUNCTION_19_0();
}

uint64_t PhoneCallContactIntentNode.relationship.modify(uint64_t *a1)
{
  *a1 = PhoneCallContactIntentNode.relationship.getter();
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.handleType : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 408);

  return v4(v2, v3);
}

uint64_t PhoneCallContactIntentNode.contactId.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v3, v4, &protocol conformance descriptor for PhoneCallContactIntentNode);
  OUTLINED_FUNCTION_55();
  IntentNodeTraversable.value<A>(forNode:)();
  return v6;
}

uint64_t *PhoneCallContactOntologyNode.contactTypeNode.unsafeMutableAddressor()
{
  if (one-time initialization token for contactTypeNode != -1)
  {
    OUTLINED_FUNCTION_10_56(&one-time initialization token for contactTypeNode);
  }

  return &static PhoneCallContactOntologyNode.contactTypeNode;
}

uint64_t PhoneCallContactIntentNode.handleType.modify(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = PhoneCallContactIntentNode.handleType.getter(a1, a2, a3);
  a1[1] = v4;
  return OUTLINED_FUNCTION_26_7();
}

uint64_t key path setter for PhoneCallContactIntentNode.handleLabel : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 432);

  return v4(v2, v3);
}

uint64_t PhoneCallContactIntentNode.handleLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_handleLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PhoneCallContactIntentNode.handleLabel.setter()
{
  OUTLINED_FUNCTION_24_3();
  v3 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_handleLabel);
  swift_beginAccess();
  *v3 = v2;
  v3[1] = v0;
}

uint64_t key path setter for PhoneCallContactIntentNode.emergencyType : PhoneCallContactIntentNode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 456);
  outlined copy of PhoneCallEmergencyType?(*a1, v3);
  return v4(v2, v3);
}

void PhoneCallContactIntentNode.emergencyType.getter()
{
  OUTLINED_FUNCTION_66();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementVSgMd, &_s12SiriOntology15TerminalElementVSgMR);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v5 = &v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v8);
  v10 = &v52 - v9;
  v54 = v0;
  v56 = v0;
  if (one-time initialization token for phoneNumberNode != -1)
  {
LABEL_39:
    OUTLINED_FUNCTION_12_47(&one-time initialization token for phoneNumberNode);
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v11, v12, &protocol conformance descriptor for PhoneCallContactIntentNode);
  IntentNodeTraversable.intentNode<A>(forOntologyNode:)();
  v13 = OUTLINED_FUNCTION_55_0();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v13, v14, v15, v16);
  v17 = type metadata accessor for TerminalIntentNode();
  v18 = OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_9_40(v18, v19, v17);
  v55 = v10;
  if (v26)
  {
    v20 = &_s12SiriOntology18TerminalIntentNodeVSgMd;
    v21 = &_s12SiriOntology18TerminalIntentNodeVSgMR;
    v22 = v1;
  }

  else
  {
    v23 = TerminalIntentNode.elements.getter();
    OUTLINED_FUNCTION_40();
    (*(v24 + 8))(v1, v17);
    specialized BidirectionalCollection.last.getter(v23, v5);

    v25 = type metadata accessor for TerminalElement();
    OUTLINED_FUNCTION_9_40(v5, 1, v25);
    if (!v26)
    {
      v1 = TerminalElement.semanticTags.getter();
      OUTLINED_FUNCTION_40();
      (*(v36 + 8))(v5, v25);
      v10 = 0;
      v37 = *(v1 + 16);
      v38 = v1 + 40;
      v52 = v1 + 40;
      v53 = _swiftEmptyArrayStorage;
LABEL_24:
      v39 = v38 + 16 * v10;
      while (v37 != v10)
      {
        if (v10 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        ++v10;
        v40 = v39 + 16;

        String.index(_:offsetBy:limitedBy:)();
        String.subscript.getter();
        v41 = Substring.lowercased()();

        v42 = specialized Collection.dropFirst(_:)(1uLL);
        v60 = v41;
        v56 = v42;
        v57 = v43;
        v58 = v44;
        v59 = v45;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();

        v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallContactIntentNode.emergencyType.getter, v60);

        v39 = v40;
        if (!v5)
        {
          v5 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
            v5 = v49;
          }

          v47 = *(v5 + 2);
          v46 = *(v5 + 3);
          v48 = v47 + 1;
          if (v47 >= v46 >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v5);
            v5 = v50;
          }

          v53 = v5;
          *(v5 + 2) = v48;
          v38 = v52;
          goto LABEL_24;
        }
      }

      v51 = *(v53 + 2);

      if (!v51)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }

    v20 = &_s12SiriOntology15TerminalElementVSgMd;
    v21 = &_s12SiriOntology15TerminalElementVSgMR;
    v22 = v5;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, v20, v21);
LABEL_9:
  OUTLINED_FUNCTION_2_0();
  v27 += 32;
  v28 = *v27;
  v29 = (*v27)();
  if (v30)
  {
    if (v29 == 0xD000000000000012 && v30 == 0x800000000045E860)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

LABEL_34:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v55, &_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
    goto LABEL_37;
  }

LABEL_15:
  v33 = (v28)(v29);
  if (!v34)
  {
    goto LABEL_34;
  }

  if (v33 != 0xD000000000000011 || v34 != 0x800000000045E840)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v55, &_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
LABEL_37:
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallContactIntentNode.emergencyType.modify(void *a1)
{
  PhoneCallContactIntentNode.emergencyType.getter();
  *a1 = 0;
  a1[1] = v2;
  return OUTLINED_FUNCTION_26_7();
}

BOOL PhoneCallContactIntentNode.isAmbiguousHandle.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementVSgMd, &_s12SiriOntology15TerminalElementVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_5_63();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v7);
  v9 = v34 - v8;
  v34[0] = v0;
  if (one-time initialization token for contactTypeNode != -1)
  {
    OUTLINED_FUNCTION_10_56(&one-time initialization token for contactTypeNode);
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v10, v11, &protocol conformance descriptor for PhoneCallContactIntentNode);
  IntentNodeTraversable.intentNode<A>(forOntologyNode:)();
  v12 = OUTLINED_FUNCTION_55_0();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v12, v13, v14, v15);
  v16 = type metadata accessor for TerminalIntentNode();
  v17 = OUTLINED_FUNCTION_54_19();
  OUTLINED_FUNCTION_9_40(v17, v18, v16);
  if (v27)
  {
    v19 = OUTLINED_FUNCTION_19_0();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, v20, &_s12SiriOntology18TerminalIntentNodeVSgMR);
    v21 = v2;
    v22 = &_s12SiriOntology18TerminalIntentNodeVSgMd;
    v23 = &_s12SiriOntology18TerminalIntentNodeVSgMR;
LABEL_9:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, v22, v23);
    return 0;
  }

  v24 = TerminalIntentNode.elements.getter();
  OUTLINED_FUNCTION_40();
  (*(v25 + 8))(v2, v16);
  specialized BidirectionalCollection.last.getter(v24, v1);

  v26 = type metadata accessor for TerminalElement();
  OUTLINED_FUNCTION_9_40(v1, 1, v26);
  if (v27)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
    v22 = &_s12SiriOntology15TerminalElementVSgMd;
    v23 = &_s12SiriOntology15TerminalElementVSgMR;
    v21 = v1;
    goto LABEL_9;
  }

  TerminalElement.semanticTags.getter();
  OUTLINED_FUNCTION_40();
  v30 = (*(v29 + 8))(v1, v26);
  v34[0] = 0x756F756769626D41;
  v34[1] = 0xEF656C646E614873;
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_6_49();
  *(v31 - 16) = v34;
  v32 = specialized Sequence.contains(where:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  return v32;
}

uint64_t PhoneCallContactIntentNode.isAmbiguousHandle.modify()
{
  v0 = PhoneCallContactIntentNode.isAmbiguousHandle.getter();
  OUTLINED_FUNCTION_77_10(v0);
  return OUTLINED_FUNCTION_26_7();
}

uint64_t PhoneCallContactIntentNode.emergencyLocationType.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_emergencyLocationType;
  OUTLINED_FUNCTION_146(a1);
  return *(v1 + v2);
}

uint64_t PhoneCallContactIntentNode.emergencyLocationType.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_emergencyLocationType;
  result = OUTLINED_FUNCTION_78_3(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t PhoneCallContactIntentNode.searchQualifier.getter()
{
  if (one-time initialization token for phoneCallContactRole != -1)
  {
    OUTLINED_FUNCTION_8_54(&one-time initialization token for phoneCallContactRole);
  }

  type metadata accessor for PhoneCallContactIntentNode(0);
  OUTLINED_FUNCTION_1_84();
  lazy protocol witness table accessor for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent(v0, v1, &protocol conformance descriptor for PhoneCallContactIntentNode);
  OUTLINED_FUNCTION_55();
  IntentNodeTraversable.value<A>(forNode:)();
  result = 0;
  switch(v3)
  {
    case 1:
      return result;
    case 2:
      result = 1;
      break;
    case 3:
      result = 512;
      break;
    default:
      result = 2;
      break;
  }

  return result;
}

uint64_t *PhoneCallContactOntologyNode.phoneCallContactRole.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallContactRole != -1)
  {
    OUTLINED_FUNCTION_8_54(&one-time initialization token for phoneCallContactRole);
  }

  return &static PhoneCallContactOntologyNode.phoneCallContactRole;
}

uint64_t key path setter for PhoneCallContactIntentNode.backingContact : PhoneCallContactIntentNode(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(a1, &v8 - v5, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  return (*(**a2 + 544))(v6);
}

uint64_t PhoneCallContactIntentNode.backingContact.getter@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  v3 = type metadata accessor for BackingContact(0);
  OUTLINED_FUNCTION_55();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t PhoneCallContactIntentNode.backingContact.setter(uint64_t a1)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Cannot set a backing contact for an NLv3 intent!", v5, 2u);
  }

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
}

void (*PhoneCallContactIntentNode.backingContact.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  PhoneCallContactIntentNode.backingContact.getter(v6);
  return PhoneCallContactIntentNode.backingContact.modify;
}

void PhoneCallContactIntentNode.backingContact.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(*(a1 + 16), v2, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
    PhoneCallContactIntentNode.backingContact.setter(v2);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  }

  else
  {
    PhoneCallContactIntentNode.backingContact.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t PhoneCallContactIntentNode.contactSource.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_contactSource;
  OUTLINED_FUNCTION_146(a1);
  return *(v1 + v2);
}

uint64_t PhoneCallContactIntentNode.contactSource.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_contactSource;
  result = OUTLINED_FUNCTION_78_3(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t PhoneCallContactIntentNode.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin26PhoneCallContactIntentNode_intentNode;
  type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PhoneCallContactIntentNode.__deallocating_deinit()
{
  PhoneCallContactIntentNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for SiriPhoneContact.isMe.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 296))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 200))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.contactName.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 272))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.contactSource.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 576))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

void *protocol witness for SiriPhoneContact.personName.getter in conformance PhoneCallContactIntentNode@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_43_0();
  (*(v2 + 304))(v4);
  return memcpy(a1, v4, 0x70uLL);
}

uint64_t (*protocol witness for SiriPhoneContact.personName.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 320))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.organizationName.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 344))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.telephoneNumber.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 368))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.emailAddress.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 248))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.relationship.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 392))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.handleType.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 416))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.handleLabel.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 440))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.emergencyType.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 464))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.emergencyLocationType.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 512))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.contactReference.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 224))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.isAmbiguousHandle.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 488))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance PhoneCallContactIntentNode;
}

uint64_t (*protocol witness for SiriPhoneContact.backingContact.modify in conformance PhoneCallContactIntentNode(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 552))();
  return protocol witness for SiriPhoneContact.backingContact.modify in conformance PhoneCallContactIntentNode;
}

uint64_t protocol witness for static NonTerminalIntentNodeWrapper.from(intentNode:ontologyNode:) in conformance PhoneCallContactIntentNode@<X0>(uint64_t *a1@<X8>)
{
  result = static PhoneCallContactIntentNode.from(intentNode:ontologyNode:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance PhoneCallContactIntentNode(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NonTerminalIntentNodeWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance PhoneCallContactIntentNode(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NonTerminalIntentNodeWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t one-time initialization function for personNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FD0;
  v1 = type metadata accessor for PersonOntologyNode();
  swift_allocObject();
  v2 = PersonOntologyNode.init(name:multicardinal:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v2;
  type metadata accessor for NonTerminalOntologyNode();
  swift_allocObject();
  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static PhoneCallContactOntologyNode.personNode = result;
  return result;
}

uint64_t one-time initialization function for phoneCallContactNameNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallContactOntologyNode.phoneCallContactNameNode = result;
  return result;
}

uint64_t one-time initialization function for phoneCallContactIdNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallContactOntologyNode.phoneCallContactIdNode = result;
  return result;
}

uint64_t one-time initialization function for phoneCallContactReferenceNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF16ContactReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF16ContactReferenceOGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallContactOntologyNode.phoneCallContactReferenceNode = result;
  return result;
}

uint64_t one-time initialization function for phoneCallContactRole()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF11ContactRoleO4NLv3OGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF11ContactRoleO4NLv3OGMR);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static PhoneCallContactOntologyNode.phoneCallContactRole = result;
  return result;
}

uint64_t PhoneCallContactOntologyNode.init(name:multicardinal:)()
{
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_43CD90;
  if (one-time initialization token for personNode != -1)
  {
    OUTLINED_FUNCTION_11_43(&one-time initialization token for personNode);
  }

  v1 = static PhoneCallContactOntologyNode.personNode;
  *(v0 + 56) = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;
  v2 = one-time initialization token for phoneNumberNode;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_12_47(&one-time initialization token for phoneNumberNode);
  }

  v3 = static PhoneCallContactOntologyNode.phoneNumberNode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 96) = v4;
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_76_7();
  v9 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v5, v6, v7, v8);
  *(v0 + 104) = v9;
  *(v0 + 72) = v3;
  v10 = one-time initialization token for phoneCallContactNameNode;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_32_18(&one-time initialization token for phoneCallContactNameNode);
  }

  v11 = static PhoneCallContactOntologyNode.phoneCallContactNameNode;
  *(v0 + 136) = v4;
  *(v0 + 144) = v9;
  *(v0 + 112) = v11;
  v12 = one-time initialization token for phoneCallContactIdNode;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_34_15(&one-time initialization token for phoneCallContactIdNode);
  }

  v13 = static PhoneCallContactOntologyNode.phoneCallContactIdNode;
  *(v0 + 176) = v4;
  *(v0 + 184) = v9;
  *(v0 + 152) = v13;
  v14 = one-time initialization token for phoneCallContactRole;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_8_54(&one-time initialization token for phoneCallContactRole);
  }

  v15 = static PhoneCallContactOntologyNode.phoneCallContactRole;
  v16 = OUTLINED_FUNCTION_103_0();
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_2_14();
  *(v0 + 224) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v18, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF11ContactRoleO4NLv3OGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF11ContactRoleO4NLv3OGMR, v19);
  *(v0 + 192) = v15;
  v20 = one-time initialization token for phoneCallContactReferenceNode;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_9_53(&one-time initialization token for phoneCallContactReferenceNode);
  }

  v21 = static PhoneCallContactOntologyNode.phoneCallContactReferenceNode;
  v22 = OUTLINED_FUNCTION_103_0();
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_2_14();
  *(v0 + 264) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v24, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF16ContactReferenceOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin0eF16ContactReferenceOGMR, v25);
  *(v0 + 232) = v21;
  v26 = one-time initialization token for emailAddressNode;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_33_19(&one-time initialization token for emailAddressNode);
  }

  v27 = static PhoneCallContactOntologyNode.emailAddressNode;
  *(v0 + 296) = v4;
  *(v0 + 304) = v9;
  *(v0 + 272) = v27;
  v28 = one-time initialization token for contactTypeNode;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_10_56(&one-time initialization token for contactTypeNode);
  }

  v29 = static PhoneCallContactOntologyNode.contactTypeNode;
  *(v0 + 336) = v4;
  *(v0 + 344) = v9;
  *(v0 + 312) = v29;

  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_65();

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
}