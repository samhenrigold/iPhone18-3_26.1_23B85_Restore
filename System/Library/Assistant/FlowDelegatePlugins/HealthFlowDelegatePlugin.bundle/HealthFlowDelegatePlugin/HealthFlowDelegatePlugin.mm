id sub_3DBC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v5 = a2;
  v7 = a4;
  v8 = sub_3EF4(a1, v5, v4);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ([v8 isEqualToString:{*(*(&v14 + 1) + 8 * i), v14}])
        {
          v10 = &dword_0 + 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

id sub_3EF4(void *a1, int a2, int a3)
{
  v4 = a2 & ~(a2 >> 31);
  v5 = a1;
  v6 = [v5 length];
  if (v4 + a3 <= v6)
  {
    LOWORD(v7) = a3;
  }

  else
  {
    v7 = (v6 - v4) & ~((v6 - v4) >> 31);
  }

  v8 = [v5 substringWithRange:{v4, v7}];

  return v8;
}

id sub_3F74(void *a1, unsigned int a2)
{
  v3 = a1;
  if ([v3 length] >= a2)
  {
    v4 = [v3 characterAtIndex:a2];
  }

  else
  {
    v4 = &stru_20;
  }

  return v4;
}

BOOL sub_3FC8(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"W"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"K") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"CZ") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"WITZ") != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

id sub_4138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _translateWord:a2];
  [v3 appendString:v4];

  v5 = *(a1 + 32);

  return [v5 appendString:@" "];
}

void sub_41E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = sub_44B8(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *sub_734D0();
    v7 = sub_73970();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_74B40;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_73790();
    v13 = v12;

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_5258();
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    sub_73610("Created INResumeWorkoutIntent: %@", 33, 2, &dword_0, v6, v7, v8);

    v23 = v9;
    (a3)(v5, 0);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_initStackObject();
    sub_B5BC(0);
    v14 = sub_73980();
    v15 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_74B40;
    v17 = v15;
    v18 = sub_B4FC();
    v20 = v19;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_5258();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    sub_73620(v14, &dword_0, v17, "Pause- RCHFlow Strategy: %@", 27, 2, v16);

    swift_allocObject();
    v21 = sub_B5BC(1);
    sub_4F08(&qword_A3BB8, 255, type metadata accessor for HealthFlowError, &unk_7567C);
    swift_allocError();
    *v22 = v21;
    a3();
  }
}

id sub_44B8(uint64_t a1)
{
  v41 = a1;
  v1 = sub_506C(&qword_A3B90, &qword_76E00);
  v2 = __chkstk_darwin(v1 - 8);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v39 = &v38 - v4;
  v5 = type metadata accessor for HealthNLIntent(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_731D0();
  sub_5394();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_72830();
  sub_5394();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  v23 = *(v16 + 16);
  v23(&v38 - v21, v41, v14);
  v24 = sub_5388();
  v26 = v25(v24);
  if (v26 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v27 = sub_5388();
    v28(v27);
    (*(v10 + 32))(v13, v22, v8);
    (*(v10 + 16))(v7, v13, v8);
    sub_51B4();
    v29 = sub_5C3D0(v7);
    sub_51F8(v7, type metadata accessor for HealthNLIntent);
    (*(v10 + 8))(v13, v8);
  }

  else if (v26 == enum case for Parse.directInvocation(_:))
  {
    v23(v20, v41, v14);
    v30 = v39;
    sub_6AFB0(v20, v39);
    v31 = v40;
    sub_50B4(v30, v40);
    v32 = type metadata accessor for DirectInvocationData(0);
    if (sub_5124(v31, 1, v32) == 1)
    {
      sub_514C(v30);
      sub_514C(v31);
      v29 = 0;
    }

    else
    {
      sub_6B824(v43);
      sub_514C(v30);
      sub_51F8(v31, type metadata accessor for DirectInvocationData);
      sub_506C(&qword_A3B98, &unk_74E00);
      sub_51B4();
      if (swift_dynamicCast())
      {
        v29 = v42;
      }

      else
      {
        v29 = 0;
      }
    }

    v35 = sub_5388();
    v36(v35);
  }

  else
  {
    v33 = sub_5388();
    v34(v33);
    return 0;
  }

  return v29;
}

uint64_t sub_48CC(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_71DF0();
    v4 = v3;
    v5 = sub_71DD0();

    return v5;
  }

  else
  {

    return sub_45750(a1, a2);
  }
}

uint64_t sub_4930()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_4A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeWorkoutStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_4AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_4CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeWorkoutStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_4D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ResumeWorkoutStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_4D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_4F08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_5000(uint64_t a1@<X8>)
{
  sub_4FE0();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_506C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_50B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3B90, &qword_76E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_514C(uint64_t a1)
{
  v2 = sub_506C(&qword_A3B90, &qword_76E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_51B4()
{
  result = qword_A3BA0;
  if (!qword_A3BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A3BA0);
  }

  return result;
}

uint64_t sub_51F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_5258()
{
  result = qword_A3BB0;
  if (!qword_A3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3BB0);
  }

  return result;
}

void sub_52E8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for HealthWorkoutResumeCATs(uint64_t a1)
{
  result = qword_A3F40;
  if (!qword_A3F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5434(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_74F60;
  *(v10 + 32) = 1953459315;
  *(v10 + 40) = 0xE400000000000000;
  sub_5AEC(a1, v9, &qword_A3F98, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v9, 1, v11) == 1)
  {
    sub_5B50(v9, &qword_A3F98, qword_75450);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_5BAC((v10 + 48));
    sub_5C0C();
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0x4E74756F6B726F77;
  *(v10 + 88) = 0xEB00000000656D61;
  sub_5AEC(a2, v7, &qword_A3F98, qword_75450);
  if (sub_5124(v7, 1, v11) == 1)
  {
    sub_5B50(v7, &qword_A3F98, qword_75450);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v11;
    sub_5BAC((v10 + 96));
    sub_5C0C();
    (*(v13 + 32))();
  }

  sub_732A0();
}

uint64_t sub_56CC(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F98, qword_75450);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_74B40;
  *(v5 + 32) = 0x656D614E707061;
  *(v5 + 40) = 0xE700000000000000;
  sub_5AEC(a1, v4, &qword_A3F98, qword_75450);
  v6 = sub_73350();
  if (sub_5124(v4, 1, v6) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    (*(v7 + 32))();
  }

  sub_732A0();
}

uint64_t sub_58BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_5AEC(a1, &v13 - v10, &qword_A3F90, &unk_74FC0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v11;
}

uint64_t sub_5A48()
{
  v0 = sub_732C0();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_5AEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_506C(a3, a4);
  sub_5C0C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_5B50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_506C(a2, a3);
  sub_5C0C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *sub_5BAC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_5C18(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_97BE8;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5C64(char a1)
{
  result = 0x7472617473;
  switch(a1)
  {
    case 1:
      result = 0x6573756170;
      break;
    case 2:
      result = 1886352499;
      break;
    case 3:
      result = 0x656D75736572;
      break;
    case 4:
      result = 0x6C65636E6163;
      break;
    case 5:
      result = 2003789939;
      break;
    case 6:
      result = 0x74736575516B7361;
      break;
    case 7:
      result = 0x7075746573;
      break;
    case 8:
      result = 0x796669646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_5D80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5C18(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_5DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5C64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthVerb(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for HealthVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x5F40);
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

unint64_t sub_5F90()
{
  result = qword_A3FA8;
  if (!qword_A3FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3FA8);
  }

  return result;
}

uint64_t sub_5FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_60FC();
  v5 = sub_6150();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_6050()
{
  result = qword_A3FB0;
  if (!qword_A3FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3FB0);
  }

  return result;
}

unint64_t sub_60A8()
{
  result = qword_A3FB8;
  if (!qword_A3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3FB8);
  }

  return result;
}

unint64_t sub_60FC()
{
  result = qword_A3FC0;
  if (!qword_A3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3FC0);
  }

  return result;
}

unint64_t sub_6150()
{
  result = qword_A3FC8[0];
  if (!qword_A3FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_A3FC8);
  }

  return result;
}

uint64_t sub_61A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_61F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_6234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_62D4()
{
  v0 = sub_73720();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_736F0();
  sub_7EEC(v4, v12);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_73710();
  v6 = sub_73970();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "WorkoutNeedsValueStrategyAsync actionForInput", v7, 2u);
    sub_7EBC(v7);
  }

  v8 = sub_7F28();
  v9(v8);
  return sub_72060();
}

uint64_t sub_643C()
{
  sub_7F1C();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v0[15] = *(v2 + 16);
  v5 = sub_72640();
  v0[16] = v5;
  sub_7E94(v5);
  v0[17] = v6;
  v0[18] = sub_7ED4();
  v7 = sub_72830();
  v0[19] = v7;
  sub_7E94(v7);
  v0[20] = v8;
  v0[21] = sub_7ED4();
  v9 = sub_72330();
  v0[22] = v9;
  sub_7E94(v9);
  v0[23] = v10;
  v0[24] = sub_7ED4();
  v11 = sub_73720();
  v0[25] = v11;
  sub_7E94(v11);
  v0[26] = v12;
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v13);
}

uint64_t sub_65F4(uint64_t a1)
{
  v79 = v1;
  v2 = v1[29];
  v4 = v1[25];
  v3 = v1[26];
  v5 = sub_736F0();
  sub_7EEC(v5, (v1 + 2));
  v75 = v5;
  v73 = *(v3 + 16);
  v73(v2, v5, v4);
  v6 = sub_73710();
  v7 = sub_73970();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "WorkoutNeedsValueStrategyAsync parseValueResponse", v8, 2u);
    sub_7EBC(v8);
  }

  v9 = v1[29];
  v11 = v1[25];
  v10 = v1[26];
  v13 = v1[23];
  v12 = v1[24];
  v14 = v1[22];

  v77 = *(v10 + 8);
  v77(v9, v11);
  sub_72630();
  sub_72320();
  v15 = *(v13 + 8);
  v15(v12, v14);
  v16 = sub_7F28();
  if (sub_453DC(v16, v17))
  {
    v18 = v1[27];
    v19 = v1[25];
    v20 = v1[17];
    v21 = v1[18];
    v22 = v1[16];
    v23 = v1[13];
    sub_7EEC(v75, (v1 + 5));
    v73(v18, v75, v19);
    (*(v20 + 16))(v21, v23, v22);
    v24 = sub_73710();
    v25 = sub_73980();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v1[27];
    v28 = v1[25];
    if (v26)
    {
      v29 = v1[24];
      v69 = v1[22];
      log = v24;
      v76 = v1[25];
      v31 = v1[17];
      v30 = v1[18];
      v71 = v25;
      v32 = v1[16];
      v74 = v1[27];
      v33 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v78[0] = v72;
      *v33 = 136315394;
      v34 = sub_73ED0();
      v36 = sub_19144(v34, v35, v78);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      sub_72630();
      sub_72320();
      v15(v29, v69);
      (*(v31 + 8))(v30, v32);
      v37 = sub_7F28();
      v40 = sub_19144(v37, v38, v39);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_0, log, v71, "%s NeedsValueStrategy: Slot - %s is not workoutName slot", v33, 0x16u);
      swift_arrayDestroy();
      sub_7EBC(v72);
      sub_7EBC(v33);

      v41 = v76;
      v42 = v74;
    }

    else
    {

      v47 = sub_7F34();
      v48(v47);
      v42 = v27;
      v41 = v28;
    }

    v77(v42, v41);
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v49 = sub_B5BC(2);
    sub_7D5C();
    sub_7EB0();
    swift_allocError();
    *v50 = v49;
    swift_willThrow();

    sub_7EA4();
  }

  else
  {
    v43 = v1[21];
    v44 = v1[14];
    v45 = v1[15];
    sub_727E0();
    v46 = *(v44 + 32);
    v53 = sub_33058(v43, v45, v45, v46);
    (*(v1[20] + 8))(v1[21], v1[19]);
    sub_7EEC(v75, (v1 + 8));
    v54 = sub_7F34();
    (v73)(v54);
    v55 = v53;
    v56 = sub_73710();
    v57 = sub_73970();

    if (os_log_type_enabled(v56, v57))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v55;
      *v60 = v55;
      v61 = v55;
      _os_log_impl(&dword_0, v56, v57, "Updated intent after prompting for value: %@", v59, 0xCu);
      sub_7DF8(v60);
      sub_7EBC(v60);
      sub_7EBC(v59);
    }

    v62 = v1[28];
    v63 = v1[25];
    v64 = v1[15];

    v77(v62, v63);
    v65 = (*(v46 + 24))(v64, v46);
    v66 = v65;
    if (v65)
    {
      v65 = sub_7DB4();
    }

    else
    {
      v78[1] = 0;
      v78[2] = 0;
    }

    v78[0] = v66;
    v67 = v1[11];
    v78[3] = v65;
    sub_722A0();
    v68 = sub_722B0();
    sub_7CC4(v67, 0, 1, v68);

    sub_7EA4();
  }

  return v51();
}

uint64_t sub_6C68()
{
  sub_7F1C();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  sub_71F70();
  v1[9] = sub_7ED4();
  v5 = sub_72580();
  v1[10] = v5;
  sub_7E94(v5);
  v1[11] = v6;
  v1[12] = sub_7ED4();
  v7 = sub_73720();
  v1[13] = v7;
  sub_7E94(v7);
  v1[14] = v8;
  v1[15] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v9);
}

uint64_t sub_6D84(uint64_t a1)
{
  v2 = sub_736F0();
  sub_7EEC(v2, v1 + 16);
  v3 = sub_7F28();
  v4(v3);
  v5 = sub_73710();
  v6 = sub_73970();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "WorkoutNeedsValueStrategyAsync makePromptForValue", v7, 2u);
    sub_7EBC(v7);
  }

  v9 = *(v1 + 112);
  v8 = *(v1 + 120);
  v10 = *(v1 + 104);
  v11 = *(v1 + 64);

  (*(v9 + 8))(v8, v10);
  sub_72640();
  v12 = sub_72610();
  *(v1 + 160) = sub_73F8();

  sub_7C78((v11 + 200), *(v11 + 224));
  v13 = swift_task_alloc();
  *(v1 + 128) = v13;
  *v13 = v1;
  v13[1] = sub_6F34;

  return sub_45DBC();
}

uint64_t sub_6F34()
{
  v2 = *v1;
  sub_7F04();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;

  if (v0)
  {

    sub_7EA4();

    return v5();
  }

  else
  {
    sub_7F10();

    return _swift_task_switch(v7);
  }
}

uint64_t sub_7088()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 64);
  sub_71F50();
  *(swift_task_alloc() + 16) = v1;
  sub_72530();

  v3 = v2[33];
  v4 = v2[34];
  sub_7C78(v2 + 30, v3);
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_71A4;
  v6 = *(v0 + 136);
  v7 = *(v0 + 96);
  v8 = *(v0 + 40);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v8, v6, v7, v3, v4);
}

uint64_t sub_71A4()
{
  sub_7F1C();
  sub_7F04();
  *v3 = v2;
  v4 = *v1;
  sub_7F04();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_7F10();

  return _swift_task_switch(v7);
}

uint64_t sub_72A8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);

  sub_7EA4();

  return v4();
}

uint64_t sub_7354()
{
  v1 = sub_7F34();
  v2(v1);

  sub_7EA4();

  return v3();
}

uint64_t sub_73F8()
{
  objc_opt_self();
  sub_7EB0();
  if (swift_dynamicCastObjCClass())
  {
    return 4;
  }

  objc_opt_self();
  sub_7EB0();
  if (swift_dynamicCastObjCClass())
  {
    return 2;
  }

  objc_opt_self();
  sub_7EB0();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  sub_7EB0();
  if (swift_dynamicCastObjCClass())
  {
    return 3;
  }

  objc_opt_self();
  sub_7EB0();
  if (swift_dynamicCastObjCClass())
  {
    return 0;
  }

  result = sub_73CC0();
  __break(1u);
  return result;
}

uint64_t sub_7508(uint64_t a1, char a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_5C64(a2);
  sub_737F0();

  sub_73350();
  sub_7F40();
  v7 = type metadata accessor for WorkoutPromptForSlotValueParameters(0);
  sub_7CEC(v6, a1 + *(v7 + 20));
  sub_737F0();
  sub_7F40();
  v8 = sub_7F34();
  return sub_7CEC(v8, v9);
}

uint64_t sub_75F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_36B58(a2, &v8 - v4);
  v6 = sub_721F0();
  sub_7CC4(v5, 0, 1, v6);
  sub_72550();
  return sub_72570();
}

uint64_t sub_76C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7E90;

  return sub_643C();
}

uint64_t sub_777C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7E90;

  return sub_6C68();
}

uint64_t sub_782C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_7E90;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_78F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_7E90;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_79B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_7A90;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_7A90()
{
  sub_7F1C();
  v1 = *v0;
  sub_7F04();
  *v2 = v1;

  sub_7EA4();

  return v3();
}

uint64_t sub_7B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_7E90;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, a6, a7);
}

void *sub_7C78(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_7CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_7D5C()
{
  result = qword_A3BB8;
  if (!qword_A3BB8)
  {
    type metadata accessor for HealthFlowError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A3BB8);
  }

  return result;
}

unint64_t sub_7DB4()
{
  result = qword_A4058;
  if (!qword_A4058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4058);
  }

  return result;
}

uint64_t sub_7DF8(uint64_t a1)
{
  v2 = sub_506C(&qword_A4060, &qword_75440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7EBC(uint64_t a1)
{
}

uint64_t sub_7ED4()
{

  return swift_task_alloc();
}

uint64_t sub_7EEC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_7F40()
{

  return sub_7CC4(v0, 0, 1, v1);
}

void sub_7F68(uint64_t a1)
{
  sub_822C(319, &qword_A40F0, &protocol descriptor for FlowConfigurable);
  if (v1 <= 0x3F)
  {
    sub_81DC(319, &qword_A40F8, &type metadata accessor for DeviceUnit);
    if (v2 <= 0x3F)
    {
      sub_81DC(319, &qword_A4100, &type metadata accessor for DeviceIdiom);
      if (v3 <= 0x3F)
      {
        sub_822C(319, &qword_A4108, &protocol descriptor for ResponseGenerating);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_8090(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_506C(qword_A4068, qword_752D0);
    v9 = a1 + *(a3 + 52);

    return sub_5124(v9, a2, v8);
  }
}

uint64_t sub_8138(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_506C(qword_A4068, qword_752D0);
    v8 = v5 + *(a4 + 52);

    return sub_7CC4(v8, a2, a2, v7);
  }

  return result;
}

void sub_81DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_B138();
    v4 = sub_73A90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_822C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_8290()
{
  sub_7F1C();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v5 = sub_71F70();
  sub_B1C0(v5);
  v1[29] = sub_7ED4();
  v6 = sub_72580();
  v1[30] = v6;
  sub_7E94(v6);
  v1[31] = v7;
  v1[32] = sub_7ED4();
  v8 = sub_72420();
  v1[33] = v8;
  sub_7E94(v8);
  v1[34] = v9;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v10 = sub_73720();
  v1[37] = v10;
  sub_7E94(v10);
  v1[38] = v11;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v12);
}

uint64_t sub_843C(uint64_t a1)
{
  v43 = v1;
  v2 = v1[42];
  v3 = v1[37];
  v4 = v1[38];
  v6 = v1[35];
  v5 = v1[36];
  v7 = v1[33];
  v8 = v1[34];
  v9 = v1[26];
  v10 = sub_736F0();
  v1[43] = v10;
  swift_beginAccess();
  v11 = *(v4 + 16);
  v1[44] = v11;
  v1[45] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v10, v3);
  v12 = *(v8 + 16);
  v12(v5, v9, v7);
  v12(v6, v9, v7);
  v13 = sub_73710();
  v14 = sub_73970();
  if (os_log_type_enabled(v13, v14))
  {
    v39 = v1[38];
    v40 = v1[37];
    v41 = v1[42];
    v15 = v1[36];
    v37 = v1[35];
    v16 = v1[33];
    v17 = v1[34];
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v18 = 136315394;
    v1[24] = sub_72400();
    v19 = *(v17 + 8);
    v19(v15, v16);
    sub_733D0();
    sub_AF54(&qword_A4120, &type metadata accessor for App);
    v20 = sub_73DA0();
    v22 = v21;

    v23 = sub_19144(v20, v22, &v42);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = sub_72410();
    v19(v37, v16);
    *(v18 + 14) = v24;
    *v36 = v24;
    _os_log_impl(&dword_0, v13, v14, "Launching app: %s with intent: %@", v18, 0x16u);
    sub_AEF4(v36, &qword_A4060, &qword_75440);
    sub_7EBC(v36);
    sub_AE38(v38);
    sub_7EBC(v38);
    sub_7EBC(v18);

    v25 = *(v39 + 8);
    v25(v41, v40);
  }

  else
  {
    v26 = v1[42];
    v27 = v1[37];
    v28 = v1[38];
    v29 = v1[35];
    v30 = v1[33];
    v31 = *(v1[34] + 8);
    v31(v1[36], v30);

    v31(v29, v30);
    v25 = *(v28 + 8);
    v25(v26, v27);
  }

  v1[46] = v25;
  sub_ADF8(0, &qword_A4110, SAIntentGroupLaunchAppWithIntent_ptr);
  sub_72400();
  v32 = sub_72410();
  v33 = sub_723F0();
  v1[47] = sub_73A10();

  v34 = swift_task_alloc();
  v1[48] = v34;
  *v34 = v1;
  v34[1] = sub_882C;

  return sub_9434();
}

uint64_t sub_882C()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 392) = v4;
  *(v2 + 400) = v0;

  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_892C()
{
  sub_B120();
  sub_B0B0();
  v1 = v0[28];
  sub_71F30();
  v2 = sub_72530();
  v3 = *(v1 + 280);
  v0[51] = v3;
  v4 = v0[44];
  v5 = v0[43];
  v6 = v0[37];
  if (v3)
  {
    v7 = v0[41];
    sub_B168(v2, (v0 + 18));
    v4(v7, v5, v6);
    v8 = v3;
    v9 = sub_73710();
    v10 = sub_73970();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v3;
      v13 = v8;
      _os_log_impl(&dword_0, v9, v10, "Submitting SAIntentGroupLaunchAppWithIntent to remote device: %@", v11, 0xCu);
      sub_AEF4(v12, &qword_A4060, &qword_75440);
      sub_7EBC(v12);
      sub_7EBC(v11);
    }

    v14 = v0[46];
    v15 = v0[41];
    v16 = v0[37];
    v17 = v0[38];
    v18 = v0[28];

    v0[52] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v15, v16);
    v19 = v18[3];
    v20 = v18[4];
    sub_7C78(v18, v19);
    (*(v20 + 24))(v19, v20);
    sub_7C78(v0 + 7, v0[10]);
    sub_73590();
    v0[53] = v21;
    v22 = swift_task_alloc();
    v0[54] = v22;
    sub_ADF8(0, &qword_A4118, SABaseCommand_ptr);
    *v22 = v0;
    v22[1] = sub_8D10;
    sub_B108();

    return AceServiceInvokerAsync.submitToRemote<A>(_:_:)(v23);
  }

  else
  {
    v25 = v0[39];
    sub_B168(v2, (v0 + 15));
    v4(v25, v5, v6);
    v26 = sub_73710();
    v27 = sub_73970();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Submitting SAIntentGroupLaunchAppWithIntent to local device", v28, 2u);
      sub_7EBC(v28);
    }

    v30 = v0[46];
    v29 = v0[47];
    v31 = v0[39];
    v32 = v0[37];

    v30(v31, v32);
    sub_506C(&unk_A63F0, &unk_760C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_752C0;
    *(v33 + 32) = v29;
    v34 = v29;
    sub_72560();
    sub_71D90();
    sub_B204();
    v35 = sub_71E60();
    sub_B1CC(v35);

    sub_B184();
    swift_task_alloc();
    sub_B144();
    v0[57] = v36;
    *v36 = v37;
    sub_B078(v36);
    sub_B108();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v38, v39, v40, v41, v42);
  }
}

uint64_t sub_8D10()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v4 = *v1;
  sub_B044();
  *v5 = v4;
  *(v7 + 440) = v6;
  *(v7 + 448) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_8E28()
{
  sub_B120();
  sub_B0B0();
  v1 = *(v0 + 440);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v6 = sub_AE38((v0 + 56));
  sub_B168(v6, v0 + 168);
  v2(v4, v3, v5);
  v7 = v1;
  sub_B150();
  v8 = sub_73710();
  v9 = sub_73970();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 440);
  v12 = *(v0 + 408);
  if (v10)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v11;
    *v14 = v11;
    v15 = v11;
    _os_log_impl(&dword_0, v8, v9, "Result from submitting to remote device: %@", v13, 0xCu);
    sub_AEF4(v14, &qword_A4060, &qword_75440);
    sub_7EBC(v14);
    sub_7EBC(v13);
    v11 = v8;
    v8 = v15;
  }

  (*(v0 + 368))(*(v0 + 320), *(v0 + 296));
  sub_71D90();
  sub_B204();
  v16 = sub_71E60();
  sub_B1CC(v16);

  sub_B184();
  swift_task_alloc();
  sub_B144();
  *(v0 + 456) = v17;
  *v17 = v18;
  sub_B078(v17);
  sub_B108();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v19, v20, v21, v22, v23);
}

uint64_t sub_8FE0()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v4 = *v1;
  sub_B044();
  *v5 = v4;
  *(v6 + 464) = v0;

  sub_7F10();

  return _swift_task_switch(v7);
}

void sub_90D8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);

  (*(v2 + 8))(v3, v4);

  sub_7EA4();
  sub_B0EC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_91C4()
{
  sub_B0B0();

  sub_B0C8();

  sub_7EA4();

  return v1();
}

uint64_t sub_9274()
{
  sub_B0B0();
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);

  (*(v4 + 8))(v3, v5);
  sub_AE38((v0 + 56));
  sub_B0C8();

  sub_7EA4();

  return v6();
}

uint64_t sub_935C()
{
  sub_B0B0();
  v1 = *(v0 + 376);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);

  (*(v3 + 8))(v2, v4);
  sub_B0C8();

  sub_7EA4();

  return v5();
}

uint64_t sub_9434()
{
  sub_7F1C();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_731F0();
  v1[23] = v4;
  sub_7E94(v4);
  v1[24] = v5;
  v1[25] = sub_7ED4();
  v6 = sub_506C(&qword_A4128, &qword_75448);
  v1[26] = v6;
  sub_B1C0(v6);
  v1[27] = sub_7ED4();
  v7 = sub_506C(qword_A4068, qword_752D0);
  sub_B1C0(v7);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v8 = sub_73720();
  v1[30] = v8;
  sub_7E94(v8);
  v1[31] = v9;
  v1[32] = sub_7ED4();
  v10 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v10);
  v1[33] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v11);
}

void sub_95C8()
{
  sub_72420();
  v0[34] = sub_72400();
  swift_retain_n();
  v1 = sub_72250();
  if (v1 && (v2 = v1, v3 = [v1 displayAppName], v2, v3))
  {
    sub_73790();

    sub_737F0();

    v4 = 0;
  }

  else
  {

    v4 = 1;
  }

  v5 = v0[33];
  v6 = sub_73350();
  sub_7CC4(v5, v4, 1, v6);
  v0[35] = sub_72410();
  objc_opt_self();
  sub_B138();
  if (swift_dynamicCastObjCClass())
  {
    sub_7C78((v0[22] + 40), *(v0[22] + 64));
    sub_B150();
    sub_733C0();
    v7 = sub_B1EC();
    v0[36] = v7;
    sub_B1B4(v7);
    swift_task_alloc();
    sub_B144();
    v0[37] = v8;
    *v8 = v9;
    v8[1] = sub_9E10;
    sub_B064();
    sub_B0EC();

    sub_2F4FC();
    return;
  }

  objc_opt_self();
  sub_B138();
  if (swift_dynamicCastObjCClass())
  {
    sub_7C78((v0[22] + 80), *(v0[22] + 104));
    sub_B150();
    sub_733C0();
    v11 = sub_B1EC();
    v0[39] = v11;
    sub_B1B4(v11);
    swift_task_alloc();
    sub_B144();
    v0[40] = v12;
    *v12 = v13;
    v12[1] = sub_A090;
    sub_B064();
    sub_B0EC();

    sub_624C4();
    return;
  }

  objc_opt_self();
  sub_B138();
  if (swift_dynamicCastObjCClass())
  {
    v16 = v0[31];
    v15 = v0[32];
    v17 = v0[30];
    v18 = sub_736F0();
    swift_beginAccess();
    (*(v16 + 16))(v15, v18, v17);
    v19 = sub_73710();
    v20 = sub_73970();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "Pause Workout Intent, Continue in app", v21, 2u);
      sub_7EBC(v21);
    }

    v22 = v0[32];
    v23 = v0[30];
    v24 = v0[31];
    v25 = v0[22];

    (*(v24 + 8))(v22, v23);
    sub_7C78((v25 + 120), *(v25 + 144));
    sub_B150();
    sub_733C0();
    v26 = sub_B1EC();
    v0[42] = v26;
    sub_B1B4(v26);
    swift_task_alloc();
    sub_B144();
    v0[43] = v27;
    *v27 = v28;
    v27[1] = sub_A310;
    sub_B064();
    sub_B0EC();

    sub_6A074();
    return;
  }

  objc_opt_self();
  sub_B138();
  if (swift_dynamicCastObjCClass())
  {
    sub_7C78((v0[22] + 160), *(v0[22] + 184));
    sub_B150();
    sub_733C0();
    v30 = sub_B1EC();
    v0[45] = v30;
    sub_B1B4(v30);
    swift_task_alloc();
    sub_B144();
    v0[46] = v31;
    *v31 = v32;
    v31[1] = sub_A590;
    sub_B064();
    sub_B0EC();

    sub_66A44();
    return;
  }

  objc_opt_self();
  sub_B138();
  if (!swift_dynamicCastObjCClass())
  {
    sub_73CC0();
    sub_B0EC();
    return;
  }

  v34 = v0[29];
  v36 = v0[26];
  v35 = v0[27];
  v37 = v0[23];
  v38 = v0[22];
  v39 = *(v0[21] + 52);
  (*(v0[24] + 104))(v34, enum case for DeviceIdiom.watch(_:), v37);
  sub_7CC4(v34, 0, 1, v37);
  v40 = *(v36 + 48);
  sub_AE84(v38 + v39, v35);
  sub_AE84(v34, v35 + v40);
  if (sub_5124(v35, 1, v37) != 1)
  {
    v42 = v0[23];
    sub_AE84(v0[27], v0[28]);
    v43 = sub_5124(v35 + v40, 1, v42);
    v44 = v0[28];
    v45 = v0[29];
    if (v43 != 1)
    {
      v57 = v0[27];
      v49 = v0[24];
      v48 = v0[25];
      v50 = v0[23];
      (*(v49 + 32))(v48, v35 + v40, v50);
      sub_AF54(&qword_A4130, &type metadata accessor for DeviceIdiom);
      sub_73770();
      v51 = *(v49 + 8);
      v51(v48, v50);
      sub_AEF4(v45, qword_A4068, qword_752D0);
      v51(v44, v50);
      sub_AEF4(v57, qword_A4068, qword_752D0);
      goto LABEL_32;
    }

    v46 = v0[23];
    v47 = v0[24];
    sub_AEF4(v0[29], qword_A4068, qword_752D0);
    (*(v47 + 8))(v44, v46);
    goto LABEL_30;
  }

  v41 = v0[23];
  sub_AEF4(v0[29], qword_A4068, qword_752D0);
  if (sub_5124(v35 + v40, 1, v41) != 1)
  {
LABEL_30:
    sub_AEF4(v0[27], &qword_A4128, &qword_75448);
    goto LABEL_32;
  }

  sub_AEF4(v0[27], qword_A4068, qword_752D0);
LABEL_32:
  v52 = v0[33];
  sub_7C78((v0[22] + 200), *(v0[22] + 224));
  sub_733C0();
  v53 = swift_task_alloc();
  v0[48] = v53;
  *(v53 + 16) = v52;
  swift_task_alloc();
  sub_B144();
  v0[49] = v54;
  *v54 = v55;
  v54[1] = sub_A810;
  sub_B0EC();

  sub_64BF8();
}

uint64_t sub_9E10()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 304) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_9F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = *(v11 + 280);

  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_B030();
  sub_B108();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = *(v11 + 280);

  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_7EA4();
  sub_B108();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_A090()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 328) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_A1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = *(v11 + 280);

  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_B030();
  sub_B108();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_A25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = *(v11 + 280);

  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_7EA4();
  sub_B108();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_A310()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 352) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = *(v11 + 280);

  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_B030();
  sub_B108();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_A4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = *(v11 + 280);

  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_7EA4();
  sub_B108();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_A590()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 376) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_A6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = *(v11 + 280);

  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_B030();
  sub_B108();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = *(v11 + 280);

  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_7EA4();
  sub_B108();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_A810()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 400) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = *(v11 + 280);

  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_B030();
  sub_B108();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_A9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B120();
  sub_B0B0();
  v12 = *(v11 + 280);

  sub_B01C();
  sub_AEF4(v10, &qword_A3F98, qword_75450);

  sub_7EA4();
  sub_B108();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_AA94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_8290();
}

uint64_t sub_AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2, a3, a4);
}

uint64_t sub_AC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_ACC4;

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()(a1, a2, a3);
}

uint64_t sub_ACC4()
{
  sub_7F1C();
  sub_B0BC();
  v1 = *v0;
  sub_B044();
  *v2 = v1;

  sub_7EA4();

  return v3();
}

uint64_t sub_ADF8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_AE38(void *a1)
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

uint64_t sub_AE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(qword_A4068, qword_752D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AEF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_506C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_AF54(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_B138();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_AFA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_B0C8()
{
}

uint64_t sub_B168(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_B1CC(uint64_t a1)
{

  return dispatch thunk of SiriKitEventSending.send(_:)(a1, v1, v2);
}

uint64_t sub_B1EC()
{

  return swift_task_alloc();
}

uint64_t sub_B204()
{
  sub_7C78((v0 + 16), *(v0 + 40));

  return type metadata accessor for SiriKitEvent(0);
}

uint64_t sub_B23C@<X0>(void *a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_72240();
  swift_allocObject();
  v5 = sub_72230();
  a1[6] = v4;
  a1[7] = &protocol witness table for ResponseFactory;
  a1[3] = v5;
  result = sub_73750();
  *a1 = 0xD000000000000014;
  a1[1] = 0x800000000007CFC0;
  a1[2] = v3;
  a1[8] = result;
  return result;
}

uint64_t type metadata accessor for PauseWorkoutContinueInAppStrategy(uint64_t a1)
{
  result = qword_A4160;
  if (!qword_A4160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B3C4(uint64_t a1)
{
  switch(a1)
  {
    case 10:
      return 0;
    case 11:
      return 1;
    case 70:
      return 9;
    case 20:
      return 3;
    case 30:
      return 4;
    case 40:
      return 5;
    case 41:
      return 6;
    case 50:
      return 7;
    case 60:
      return 8;
    case 12:
      return 2;
  }

  return 10;
}

uint64_t sub_B4A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B3C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_B4D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B46C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_B4FC()
{
  BYTE8(v2) = 0;
  sub_73B60(24);
  v3._object = 0x800000000007D260;
  v3._countAndFlagsBits = 0xD000000000000011;
  sub_73820(v3);
  *&v2 = *(v0 + 16);
  sub_73C40();
  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  sub_73820(v4);
  sub_73820(*(v0 + 24));
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_73820(v5);
  return *(&v2 + 1);
}

uint64_t sub_B5BC(char a1)
{
  v2 = 0xD000000000000038;
  *(v1 + 16) = a1;
  v3 = "t had unexpected contents";
  switch(a1)
  {
    case 1:
      v3 = " any of the supported slots";
      v2 = 0xD000000000000029;
      break;
    case 2:
      v3 = "n and didn't find one";
      v2 = 0xD00000000000003BLL;
      break;
    case 3:
      v3 = "slot that was provided";
      v2 = 0xD000000000000045;
      break;
    case 4:
      v3 = "tem after disambiguation";
      v2 = 0xD000000000000036;
      break;
    case 5:
      v3 = "type of disambiguation items";
      break;
    case 6:
      v3 = "The cat failed to execute";
      v2 = 0xD00000000000004CLL;
      break;
    case 7:
      v3 = "ad an unknown code";
      v2 = 0xD000000000000019;
      break;
    case 8:
      v3 = "User canceled the flow";
      v2 = 0xD000000000000022;
      break;
    case 9:
      v3 = "HealthFlowError";
      v2 = 0xD000000000000016;
      break;
    default:
      break;
  }

  *(v1 + 24) = v2;
  *(v1 + 32) = v3 | 0x8000000000000000;
  return v1;
}

uint64_t sub_B6DC()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for HealthFlowErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthFlowErrorCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0xB88CLL);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_B8C8()
{
  result = qword_A42D8;
  if (!qword_A42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A42D8);
  }

  return result;
}

uint64_t sub_B960(uint64_t a1)
{
  v60 = a1;
  v1 = sub_506C(&qword_A42E0, &unk_77840);
  __chkstk_darwin(v1 - 8);
  v59 = &v53 - v2;
  sub_729E0();
  sub_5394();
  v55 = v4;
  v56 = v3;
  __chkstk_darwin(v3);
  sub_C2A4();
  v7 = v6 - v5;
  v58 = sub_72AB0();
  sub_5394();
  v54 = v8;
  __chkstk_darwin(v9);
  sub_C2A4();
  v53 = v11 - v10;
  v12 = sub_72880();
  sub_5394();
  v57 = v13;
  __chkstk_darwin(v14);
  sub_C2A4();
  v17 = v16 - v15;
  v18 = type metadata accessor for HealthNLIntent(0);
  __chkstk_darwin(v18 - 8);
  sub_C2A4();
  v21 = v20 - v19;
  v22 = sub_731D0();
  sub_5394();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_C2A4();
  v28 = v27 - v26;
  v29 = sub_72830();
  sub_5394();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_C2A4();
  v35 = v34 - v33;
  (*(v31 + 16))(v34 - v33, v60, v29);
  v36 = sub_5388();
  v38 = v37(v36);
  if (v38 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v39 = sub_5388();
    v40(v39);
    (*(v24 + 32))(v28, v35, v22);
    (*(v24 + 16))(v21, v28, v22);
    v41 = sub_BE5C();
    sub_BFD8(v21);
    (*(v24 + 8))(v28, v22);
  }

  else
  {
    if (v38 == enum case for Parse.uso(_:))
    {
      v42 = sub_5388();
      v43(v42);
      v44 = v57;
      (*(v57 + 32))(v17, v35, v12);
      sub_72870();
      v45 = sub_729D0();
      (*(v55 + 8))(v7, v56);
      v46 = v59;
      sub_5F1B0(v45, v59);

      v47 = v58;
      if (sub_5124(v46, 1, v58) != 1)
      {
        v51 = v53;
        v50 = v54;
        (*(v54 + 32))(v53, v46, v47);
        v41 = sub_BF0C();
        (*(v50 + 8))(v51, v47);
        (*(v44 + 8))(v17, v12);
        return v41;
      }

      (*(v44 + 8))(v17, v12);
      sub_AEF4(v46, &qword_A42E0, &unk_77840);
    }

    else
    {
      v48 = sub_5388();
      v49(v48);
    }

    return 5;
  }

  return v41;
}

uint64_t sub_BE5C()
{
  if (qword_A38F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_C1B8();
  sub_72E30();
  if (v1 >= 5uLL)
  {
    return 5;
  }

  else
  {
    return (0x304010200uLL >> (8 * v1));
  }
}

uint64_t sub_BF0C()
{
  v0 = sub_72C00();
  if (sub_114FC(v0))
  {
    sub_11500();
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = sub_73B70();
    }

    else
    {
      v1 = *(v0 + 32);
    }

    if (sub_72A60())
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }

    v3 = sub_C034(v1, v2);

    return v3;
  }

  else
  {

    return 5;
  }
}

uint64_t sub_BFD8(uint64_t a1)
{
  v2 = type metadata accessor for HealthNLIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C034(uint64_t a1, uint64_t a2)
{
  sub_72EB0();
  if (!v18)
  {
    goto LABEL_16;
  }

  sub_C210(v17, v16);
  sub_73020();
  if (!swift_dynamicCast())
  {
    v3 = sub_73080();
    if (!sub_C280(v3, v4))
    {
      v5 = sub_72F60();
      if (sub_C280(v5, v6))
      {

        sub_AE38(v16);
        a2 = 1;
        goto LABEL_17;
      }

      v7 = sub_72FD0();
      if (sub_C280(v7, v8))
      {

        sub_AE38(v16);
        a2 = 2;
        goto LABEL_17;
      }

      v9 = sub_73040();
      if (sub_C280(v9, v10))
      {

        sub_AE38(v16);
        a2 = 4;
        goto LABEL_17;
      }

      v11 = sub_73010();
      if (sub_C280(v11, v12))
      {

        sub_AE38(v16);
        a2 = 3;
        goto LABEL_17;
      }

      v13 = sub_73030();
      if (sub_C280(v13, v14))
      {

        sub_AE38(v16);
        goto LABEL_17;
      }

      sub_AE38(v16);
LABEL_16:
      a2 = 5;
      goto LABEL_17;
    }
  }

  sub_AE38(v16);
  a2 = 0;
LABEL_17:
  sub_AEF4(v17, &qword_A42F0, &qword_77260);
  return a2;
}

unint64_t sub_C1B8()
{
  result = qword_A42E8;
  if (!qword_A42E8)
  {
    type metadata accessor for HealthNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A42E8);
  }

  return result;
}

uint64_t sub_C210(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A42F0, &qword_77260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C280(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_C2B4()
{
  sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  sub_ADF8(0, &qword_A4520, INStartWorkoutIntentResponse_ptr);
  sub_DB00();
  sub_71CE0();
  sub_506C(&qword_A4528, &qword_75860);
  sub_737A0();
  sub_DC18();
  swift_allocObject();
  sub_DB78();
  sub_DA14();
  sub_D960(v0, v1, &unk_790E0);
  sub_71B20();
  sub_DCA8();
  sub_506C(&qword_A4530, &qword_75868);
  sub_DC9C();
  sub_DAF0();
  sub_71C80();
  type metadata accessor for StartWorkoutHandleIntentStrategy();
  v2 = swift_allocObject();
  sub_71E80();
  v3 = sub_D960(&qword_A4538, type metadata accessor for StartWorkoutHandleIntentStrategy, &unk_75C9C);
  sub_DB58(v3, v4, v5, v6, v7, v8, v9, v10, v66, v2);
  sub_71B00();
  sub_DBF0();
  sub_DACC();
  sub_71C70();
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();
  sub_DC80(started);
  sub_DD38();
  v12 = sub_D960(&qword_A4540, type metadata accessor for StartWorkoutsNeedsValueStrategy, &unk_76368);
  sub_DB58(v12, v13, v14, v15, v16, v17, v18, v19, v67, v72);
  sub_71AE0();
  sub_DBF0();
  sub_DACC();
  sub_71C60();
  v20 = type metadata accessor for StartWorkoutConfirmSlotStrategy();
  sub_DC80(v20);
  sub_DD38();
  v21 = sub_D960(&qword_A4548, type metadata accessor for StartWorkoutConfirmSlotStrategy, &unk_76B18);
  sub_DB58(v21, v22, v23, v24, v25, v26, v27, v28, v68, v72);
  sub_71B50();
  sub_DBF0();
  sub_DACC();
  sub_71CB0();
  v29 = type metadata accessor for StartWorkoutDisambiguationStrategy();
  sub_DC80(v29);
  sub_DD38();
  v30 = sub_D960(&qword_A4550, type metadata accessor for StartWorkoutDisambiguationStrategy, &unk_78568);
  sub_DB58(v30, v31, v32, v33, v34, v35, v36, v37, v69, v72);
  sub_71B70();
  sub_DBF0();
  sub_DACC();
  sub_71CC0();
  v38 = type metadata accessor for StartWorkoutUnsupportedValueStrategy();
  sub_DC80(v38);
  sub_DD38();
  v39 = sub_D960(&qword_A4558, type metadata accessor for StartWorkoutUnsupportedValueStrategy, &unk_77FA8);
  sub_DB58(v39, v40, v41, v42, v43, v44, v45, v46, v70, v72);
  sub_71BB0();
  sub_DBF0();
  sub_DACC();
  sub_71CA0();
  v47 = type metadata accessor for StartWorkoutContinueInAppStrategy(0);
  v48 = sub_DBD4(v47);
  *(v48 + 16) = 0;
  LOBYTE(v72) = v48;
  v49 = sub_D960(&qword_A4560, type metadata accessor for StartWorkoutContinueInAppStrategy, &unk_76D30);
  sub_DB58(v49, v50, v51, v52, v53, v54, v55, v56, v71, v72);
  sub_71B40();
  sub_DBF0();
  sub_DACC();
  sub_71C90();
  sub_72840();
  v57 = sub_DD2C();
  v59 = sub_506C(v57, v58);
  sub_DD10(v59);
  sub_D9F8();
  *&v72 = sub_D898(&v72, v60, 0);
  sub_DA2C();
  sub_DC0C();
  sub_D9A8(v61, v62, v63, v64);
  sub_71B90();
  sub_DCB4();
  sub_DAF0();
  sub_71CD0();
}

uint64_t sub_C680(void *a1)
{
  sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
  sub_ADF8(0, &qword_A4420, INEndWorkoutIntentResponse_ptr);
  sub_DB00();
  sub_71CE0();
  sub_506C(&qword_A4428, &unk_757F0);
  sub_737A0();
  v2 = sub_DC18();
  sub_DCF4(v2);
  sub_DB78();
  sub_DA14();
  sub_D960(v3, v4, &unk_790E0);
  sub_71B20();
  sub_DD44();
  sub_506C(&qword_A4430, &qword_76E30);
  sub_DC9C();
  sub_DB4C();
  sub_71C80();
  v5 = type metadata accessor for EndWorkoutHandleIntentStrategy();
  v6 = sub_DBD4(v5);
  *(v6 + 16) = a1;
  *&v62[0] = v6;
  sub_D960(&qword_A4438, type metadata accessor for EndWorkoutHandleIntentStrategy, &unk_75E08);
  v59 = a1;
  sub_DBBC();
  sub_71B00();

  sub_DBB0();
  sub_DB4C();
  sub_71C70();
  v7 = sub_DBB0();
  sub_506C(v7, v8);
  sub_DA98();
  sub_D9A8(v9, v10, &qword_75800, v11);
  sub_71AE0();
  sub_DB4C();
  sub_71C60();
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  sub_CB04(v60, &qword_A4418, INEndWorkoutIntent_ptr, sub_5E46C, v62);
  v12 = sub_DBB0();
  sub_506C(v12, v13);
  sub_DA7C();
  sub_D9A8(v14, v15, &qword_75808, v16);
  sub_71B50();
  sub_DBBC();
  sub_AEF4(v17, v18, v19);
  sub_DB4C();
  v20 = sub_71CB0();
  sub_DC34(v20, v21, v22, v23, v24, v25, v26, v27);
  v28 = sub_DBB0();
  sub_506C(v28, v29);
  sub_DA60();
  sub_D9A8(v30, v31, &qword_75810, v32);
  sub_71B70();
  sub_DBBC();
  sub_AEF4(v33, v34, v35);
  sub_DB4C();
  v36 = sub_71CC0();
  sub_DC34(v36, v37, v38, v39, v40, v41, v42, v43);
  v44 = sub_DBB0();
  sub_506C(v44, v45);
  sub_DA44();
  sub_D9A8(v46, v47, &qword_75818, v48);
  sub_71BB0();
  sub_DBBC();
  sub_AEF4(v49, v50, v51);
  sub_DB4C();
  sub_71CA0();
  v52 = type metadata accessor for EndWorkoutContinueInAppStrategy(0);
  v53 = sub_DBD4(v52);
  *(v53 + 16) = a1;
  *&v62[0] = v53;
  sub_D960(&qword_A4480, type metadata accessor for EndWorkoutContinueInAppStrategy, &unk_76D30);
  v54 = v59;
  sub_71B40();
  sub_DCA8();

  sub_DAF0();
  sub_71C90();
  sub_72840();
  sub_506C(&qword_A4488, &qword_75820);
  swift_allocObject();
  sub_D9F8();
  *&v62[0] = sub_D898(v62, v55, 0);
  sub_DA2C();
  sub_D9A8(v56, &qword_A4488, &qword_75820, v57);
  sub_71B90();

  sub_DB4C();
  sub_71CD0();
}

uint64_t sub_CB04@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_D8F0(a1, &v17);
  if (v18)
  {
    sub_AEF4(a1, &qword_A4410, &qword_757E8);
    sub_D8D8(&v17, v19);
    return sub_D8D8(v19, a5);
  }

  else
  {
    sub_DC0C();
    sub_AEF4(v11, v12, v13);
    sub_ADF8(0, a2, a3);
    a4();
    sub_DC0C();
    return sub_AEF4(v14, v15, v16);
  }
}

uint64_t sub_D850(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_D898(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = 0;
  sub_D8D8(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_D8D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_D8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A4410, &qword_757E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_D9A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_D850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_DB78()
{

  sub_4A414();
}

uint64_t sub_DBD4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_DBF0()
{
}

uint64_t sub_DC18()
{

  return type metadata accessor for WorkoutAppResolutionStrategy();
}

uint64_t sub_DC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v16 = 0;
  v13 = 0u;
  v15 = 0u;

  return sub_CB04(va, v9, v8, v10, va1);
}

uint64_t sub_DC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_CB04(a1, v3, v2, v4, a2);
}

uint64_t sub_DC80(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_DCB4()
{
}

uint64_t sub_DCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_71B20();
}

uint64_t sub_DCF4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_DD10(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_DD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_71B90();
}

void sub_DDA8(uint64_t a1)
{
  sub_11784();
  v119 = v1;
  sub_73720();
  sub_5394();
  v114 = v3;
  v115 = v2;
  __chkstk_darwin(v2);
  sub_C2A4();
  v113 = v5 - v4;
  sub_115DC();
  sub_72820();
  sub_5394();
  v116 = v7;
  v117 = v6;
  __chkstk_darwin(v6);
  sub_11544();
  v105 = v8;
  sub_11658();
  v10 = __chkstk_darwin(v9);
  v12 = &v102 - v11;
  __chkstk_darwin(v10);
  sub_117D0();
  v118 = v13;
  v14 = sub_506C(&qword_A42E0, &unk_77840);
  v15 = sub_B1C0(v14);
  __chkstk_darwin(v15);
  v108 = &v102 - v16;
  sub_115DC();
  sub_729E0();
  sub_5394();
  v106 = v18;
  v107 = v17;
  __chkstk_darwin(v17);
  sub_C2A4();
  v21 = v20 - v19;
  v112 = sub_72AB0();
  sub_5394();
  v104 = v22;
  __chkstk_darwin(v23);
  sub_C2A4();
  v103 = v25 - v24;
  sub_115DC();
  sub_72880();
  sub_5394();
  v110 = v27;
  v111 = v26;
  __chkstk_darwin(v26);
  sub_C2A4();
  v109 = v29 - v28;
  v30 = sub_115DC();
  v31 = type metadata accessor for DisambiguateAppNLIntent(v30);
  v32 = sub_B1C0(v31);
  __chkstk_darwin(v32);
  sub_C2A4();
  v35 = v34 - v33;
  v36 = type metadata accessor for HealthNLIntent(0);
  v37 = sub_B1C0(v36);
  __chkstk_darwin(v37);
  sub_C2A4();
  v40 = v39 - v38;
  v41 = sub_731D0();
  sub_5394();
  v43 = v42;
  __chkstk_darwin(v44);
  sub_C2A4();
  v47 = v46 - v45;
  v48 = sub_72830();
  sub_5394();
  v50 = v49;
  __chkstk_darwin(v51);
  sub_C2A4();
  v54 = v53 - v52;
  (*(v50 + 16))(v53 - v52, v119, v48);
  v55 = sub_11680();
  v57 = v56(v55);
  if (v57 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v58 = sub_11680();
    v59(v58);
    (*(v43 + 32))(v47, v54, v41);
    v60 = *(v43 + 16);
    v60(v40, v47, v41);
    sub_E724(v40);
    v62 = v61;
    sub_115C4();
    sub_103BC(v40, v63);
    if (!v62)
    {
      v60(v35, v47, v41);
      sub_E9EC(v35);
      sub_103BC(v35, type metadata accessor for DisambiguateAppNLIntent);
    }

    (*(v43 + 8))(v47, v41);
    goto LABEL_19;
  }

  if (v57 == enum case for Parse.directInvocation(_:))
  {
    v64 = sub_11680();
    v65(v64);
    v67 = v116;
    v66 = v117;
    v68 = v118;
    (*(v116 + 32))(v118, v54, v117);
    v69 = *(v67 + 16);
    v69(v12, v68, v66);
    v70 = sub_3185C(v12);
    if (v71)
    {
      if (v71 == 1)
      {
        v72 = sub_736F0();
        swift_beginAccess();
        (*(v114 + 16))(v113, v72, v115);
        v73 = v105;
        v69(v105, v68, v66);
        v74 = sub_73710();
        v75 = sub_73980();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v120 = v77;
          *v76 = 136315138;
          v78 = sub_72800();
          v80 = v79;
          v81 = *(v67 + 8);
          v81(v73, v66);
          v82 = sub_19144(v78, v80, &v120);

          *(v76 + 4) = v82;
          _os_log_impl(&dword_0, v74, v75, "Unknow DirectInvocation with identifier: %s", v76, 0xCu);
          sub_AE38(v77);
          sub_7EBC(v77);
          sub_7EBC(v76);

          (*(v114 + 8))(v113, v115);
          v81(v118, v66);
        }

        else
        {

          v96 = *(v67 + 8);
          v96(v73, v66);
          v97 = sub_11680();
          v98(v97);
          v96(v68, v66);
        }

        goto LABEL_19;
      }

      sub_733D0();
      sub_733A0();
    }

    else
    {
      sub_10328(v70, 0);
    }

    (*(v67 + 8))(v68, v66);
LABEL_19:
    sub_11754();
    return;
  }

  if (v57 != enum case for Parse.uso(_:))
  {
    v90 = sub_11680();
    v91(v90);
    goto LABEL_19;
  }

  v83 = sub_11680();
  v84(v83);
  (*(v110 + 32))(v109, v54, v111);
  sub_72870();
  v85 = sub_729D0();
  (*(v106 + 8))(v21, v107);
  v86 = v108;
  sub_5F1B0(v85, v108);

  v87 = v112;
  if (sub_5124(v86, 1, v112) == 1)
  {
    v88 = sub_116DC();
    v89(v88);
    sub_10364(v86, &qword_A42E0, &unk_77840);
    goto LABEL_19;
  }

  v92 = v104;
  v93 = v103;
  (*(v104 + 32))(v103, v86, v87);
  v99 = sub_72C00();
  if (!sub_FB90(v99))
  {

    (*(v92 + 8))(v93, v87);
    v94 = sub_116DC();
    v95(v94);
    goto LABEL_19;
  }

  if ((v99 & 0xC000000000000001) != 0)
  {
    sub_73B70();
    goto LABEL_24;
  }

  if (*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_24:

    sub_ECB4();

    (*(v92 + 8))(v93, v87);
    v100 = sub_116DC();
    v101(v100);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_E724(uint64_t a1)
{
  sub_11784();
  v2 = sub_506C(&qword_A45F8, &qword_758B8);
  v3 = sub_B1C0(v2);
  __chkstk_darwin(v3);
  v5 = v12 - v4;
  if (qword_A3938 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  v6 = type metadata accessor for HealthNLIntent.HealthNLApp(0);
  sub_10468(&qword_A42E8, type metadata accessor for HealthNLIntent, &unk_7A328);
  sub_11504();
  v9 = sub_10468(v7, v8, &unk_7A5F4);
  sub_116EC(v9);
  if (sub_5124(v5, 1, v6) == 1)
  {
    sub_10364(v5, &qword_A45F8, &qword_758B8);
  }

  else
  {
    if (qword_A3978 != -1)
    {
      sub_11618(&qword_A3978);
    }

    sub_11504();
    sub_10468(v10, v11, &unk_7A5C4);
    sub_11664();
    if (v12[7])
    {
      sub_1151C();
    }

    else
    {
      if (qword_A3970 != -1)
      {
        sub_115F8(&qword_A3970);
      }

      sub_11664();
      if (!v12[5])
      {
        sub_103BC(v5, type metadata accessor for HealthNLIntent.HealthNLApp);
        goto LABEL_10;
      }

      sub_11814();
      v12[2] = v1;
      v12[3] = 0x800000000007D2B0;
      sub_10414();
      if (sub_11714())
      {
        sub_11578();
        sub_11828();
        sub_1151C();
      }

      else
      {
        sub_103BC(v5, type metadata accessor for HealthNLIntent.HealthNLApp);
      }
    }

    sub_733D0();
    sub_117B8();
    sub_733A0();
  }

LABEL_10:
  sub_11754();
}

void sub_E9EC(uint64_t a1)
{
  sub_11784();
  v2 = sub_506C(&qword_A45F8, &qword_758B8);
  v3 = sub_B1C0(v2);
  __chkstk_darwin(v3);
  v5 = v12 - v4;
  if (qword_A38D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for DisambiguateAppNLIntent(0);
  v6 = type metadata accessor for HealthNLIntent.HealthNLApp(0);
  sub_10468(&qword_A4600, type metadata accessor for DisambiguateAppNLIntent, &unk_77690);
  sub_11504();
  v9 = sub_10468(v7, v8, &unk_7A5F4);
  sub_116EC(v9);
  if (sub_5124(v5, 1, v6) == 1)
  {
    sub_10364(v5, &qword_A45F8, &qword_758B8);
  }

  else
  {
    if (qword_A3978 != -1)
    {
      sub_11618(&qword_A3978);
    }

    sub_11504();
    sub_10468(v10, v11, &unk_7A5C4);
    sub_11664();
    if (v12[7])
    {
      sub_1151C();
    }

    else
    {
      if (qword_A3970 != -1)
      {
        sub_115F8(&qword_A3970);
      }

      sub_11664();
      if (!v12[5])
      {
        sub_103BC(v5, type metadata accessor for HealthNLIntent.HealthNLApp);
        goto LABEL_10;
      }

      sub_11814();
      v12[2] = v1;
      v12[3] = 0x800000000007D2B0;
      sub_10414();
      if (sub_11714())
      {
        sub_11578();
        sub_11828();
        sub_1151C();
      }

      else
      {
        sub_103BC(v5, type metadata accessor for HealthNLIntent.HealthNLApp);
      }
    }

    sub_733D0();
    sub_117B8();
    sub_733A0();
  }

LABEL_10:
  sub_11754();
}

uint64_t sub_ECB4()
{
  if (!sub_73470())
  {
    return 0;
  }

  sub_72E10();
  if (!v0)
  {

    return 0;
  }

  sub_733D0();
  v1 = sub_733A0();

  return v1;
}

void sub_ED34(uint64_t a1)
{
  sub_11784();
  v2 = v1;
  sub_73720();
  sub_5394();
  v132 = v4;
  v133 = v3;
  __chkstk_darwin(v3);
  sub_C2A4();
  v135 = (v6 - v5);
  sub_115DC();
  v117 = sub_72B20();
  sub_5394();
  v115 = v7;
  __chkstk_darwin(v8);
  sub_C2A4();
  v114 = v10 - v9;
  sub_115DC();
  v118 = sub_729C0();
  sub_5394();
  v116 = v11;
  __chkstk_darwin(v12);
  sub_11544();
  v112 = v13;
  sub_11658();
  __chkstk_darwin(v14);
  sub_117D0();
  v113 = v15;
  v16 = sub_506C(&qword_A42E0, &unk_77840);
  v17 = sub_B1C0(v16);
  __chkstk_darwin(v17);
  sub_11544();
  v120 = v18;
  sub_11658();
  __chkstk_darwin(v19);
  sub_117D0();
  v125 = v20;
  sub_115DC();
  sub_729E0();
  sub_5394();
  v130 = v21;
  v131 = v22;
  __chkstk_darwin(v21);
  sub_11544();
  v119 = v23;
  sub_11658();
  __chkstk_darwin(v24);
  sub_117D0();
  v124 = v25;
  sub_115DC();
  v126 = sub_72AB0();
  sub_5394();
  v122 = v26;
  __chkstk_darwin(v27);
  sub_C2A4();
  v123 = v29 - v28;
  sub_115DC();
  v129 = sub_72880();
  sub_5394();
  v127 = v30;
  __chkstk_darwin(v31);
  sub_C2A4();
  v128 = v33 - v32;
  v34 = sub_115DC();
  v35 = type metadata accessor for HealthNLIntent(v34);
  v36 = sub_B1C0(v35);
  __chkstk_darwin(v36);
  sub_C2A4();
  v39 = v38 - v37;
  v40 = sub_731D0();
  sub_5394();
  v42 = v41;
  __chkstk_darwin(v43);
  sub_C2A4();
  v46 = v45 - v44;
  v47 = sub_72830();
  sub_5394();
  v49 = v48;
  __chkstk_darwin(v50);
  sub_11544();
  v121 = v51;
  sub_11658();
  __chkstk_darwin(v52);
  v134 = &v112 - v53;
  sub_11658();
  __chkstk_darwin(v54);
  v56 = &v112 - v55;
  v57 = *(v49 + 16);
  v57(&v112 - v55, v2, v47);
  v58 = sub_117FC();
  v60 = v59(v58);
  if (v60 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v61 = sub_117FC();
    v62(v61);
    (*(v42 + 32))(v46, v56, v40);
    (*(v42 + 16))(v39, v46, v40);
    sub_590CC();
    sub_115C4();
    sub_103BC(v39, v63);
    (*(v42 + 8))(v46, v40);
LABEL_11:
    sub_11754();
    return;
  }

  if (v60 != enum case for Parse.uso(_:))
  {
    v75 = sub_736E0();
    swift_beginAccess();
    v77 = v132;
    v76 = v133;
    (*(v132 + 16))(v135, v75, v133);
    v57(v134, v2, v47);
    v78 = sub_73710();
    v79 = sub_73980();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v136 = v131;
      *v80 = 136315138;
      LODWORD(v130) = v79;
      v81 = v134;
      v57(v121, v134, v47);
      v82 = sub_737A0();
      v84 = v83;
      v85 = *(v49 + 8);
      v85(v81, v47);
      v86 = sub_19144(v82, v84, &v136);

      *(v80 + 4) = v86;
      _os_log_impl(&dword_0, v78, v130, "Failed to find nlv3 or uso from %s", v80, 0xCu);
      v87 = v131;
      sub_AE38(v131);
      sub_7EBC(v87);
      sub_7EBC(v80);

      (*(v132 + 8))(v135, v133);
    }

    else
    {

      v85 = *(v49 + 8);
      v85(v134, v47);
      (*(v77 + 8))(v135, v76);
    }

    v92 = sub_117FC();
    (v85)(v92);
    goto LABEL_11;
  }

  v64 = sub_117FC();
  v65(v64);
  v66 = v127;
  (*(v127 + 32))(v128, v56, v129);
  v67 = v124;
  sub_72870();
  v68 = sub_729D0();
  v70 = v131 + 1;
  v69 = v131[1];
  v69(v67, v130);
  v71 = v125;
  sub_5F1B0(v68, v125);

  v72 = v126;
  if (sub_5124(v71, 1, v126) == 1)
  {
    v73 = sub_1169C();
    v74(v73);
    sub_10364(v71, &qword_A42E0, &unk_77840);
    goto LABEL_11;
  }

  v89 = v122;
  v88 = v123;
  (*(v122 + 32))(v123, v71, v72);
  v93 = sub_72C00();
  if (!sub_FB90(v93))
  {

    (*(v89 + 8))(v88, v72);
    v90 = sub_1169C();
    v91(v90);
    goto LABEL_11;
  }

  v131 = v70;
  if ((v93 & 0xC000000000000001) != 0)
  {
    sub_73B70();
LABEL_16:

    sub_734A0();
    sub_73480();

    v94 = v119;
    sub_72870();
    v95 = sub_729D0();
    v69(v94, v130);
    v96 = v120;
    sub_5F1B0(v95, v120);

    v97 = sub_5124(v96, 1, v72);
    v98 = (v122 + 8);
    if (v97 == 1)
    {

      (*v98)(v123, v72);
      v99 = sub_1169C();
      v100(v99);
      sub_10364(v96, &qword_A42E0, &unk_77840);
    }

    else
    {
      v101 = v114;
      sub_72A70();
      v135 = *v98;
      v135(v96, v72);
      v102 = v66;
      v103 = v112;
      sub_72AF0();
      (*(v115 + 8))(v101, v117);
      v104 = v72;
      v105 = v116;
      v106 = v113;
      v107 = v103;
      v108 = v118;
      (*(v116 + 32))(v113, v107, v118);
      sub_F7F8(v106);
      v134 = v109;
      v111 = v110;

      (*(v105 + 8))(v106, v108);
      v135(v123, v104);
      (*(v102 + 8))(v128, v129);
      if (v111)
      {
      }
    }

    goto LABEL_11;
  }

  if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_16;
  }

  __break(1u);
}

void sub_F7F8(uint64_t a1)
{
  sub_11784();
  v41 = sub_73580();
  sub_5394();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_C2A4();
  v6 = v5 - v4;
  v7 = sub_72BE0();
  sub_5394();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_C2A4();
  v13 = v12 - v11;
  v14 = *(sub_729B0() + 16);
  if (v14)
  {
    sub_11778();
    v17 = v15 + v16;
    v39 = *(v9 + 72);
    v40 = v18;
    v38 = (v2 + 8);
    v19 = _swiftEmptyArrayStorage;
    v37 = v7;
    while (1)
    {
      v40(v13, v17, v7);
      sub_72BD0();
      v20 = sub_73570();
      v22 = v21;
      (*v38)(v6, v41);
      v23 = v20 == 0x7974697669746361 && v22 == 0xEC000000656D614ELL;
      if (v23 || (sub_73DB0() & 1) != 0)
      {
        break;
      }

      if (v20 == 0x4E74756F6B726F77 && v22 == 0xEB00000000656D61)
      {

LABEL_23:
        v24 = 2;
LABEL_9:
        v25 = sub_72BC0();
        v27 = v26;
        v28 = sub_117B8();
        v29(v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_FCB4(0, v19[2] + 1, 1, v19);
        }

        v31 = v19[2];
        v30 = v19[3];
        if (v31 >= v30 >> 1)
        {
          v19 = sub_FCB4((v30 > 1), v31 + 1, 1, v19);
        }

        v19[2] = v31 + 1;
        v32 = &v19[3 * v31];
        v32[4] = v24;
        v32[5] = v25;
        v32[6] = v27;
        v7 = v37;
        goto LABEL_14;
      }

      v34 = sub_73DB0();

      if (v34)
      {
        goto LABEL_23;
      }

      v35 = sub_117B8();
      v36(v35);
LABEL_14:
      v17 += v39;
      if (!--v14)
      {

        goto LABEL_25;
      }
    }

    v24 = 1;
    goto LABEL_9;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_25:
  v42 = v19;

  sub_104B0(&v42);

  if (v42[2])
  {
  }

  sub_11754();
}

uint64_t sub_FB90(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_73CD0();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

char *sub_FBB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_506C(&qword_A4630, &qword_758D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_FCB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_506C(&qword_A4620, &qword_758C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_506C(&qword_A4628, &qword_758C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_FDEC()
{
  sub_116CC();
  if (v3)
  {
    sub_116BC();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_116AC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10170(*(v0 + 16), v4, &qword_A4640, &qword_758E0, &type metadata accessor for DisplayHint);
  sub_117F0();
  sub_71FA0();
  sub_117C4();
  sub_11778();
  if (v1)
  {
    sub_1179C(&type metadata accessor for DisplayHint, v7);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_11638();
  }
}

void sub_FED0()
{
  sub_116CC();
  if (v3)
  {
    sub_116BC();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_116AC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10170(*(v0 + 16), v4, &qword_A4638, &qword_758D8, &type metadata accessor for SemanticValue);
  sub_117F0();
  sub_72040();
  sub_117C4();
  sub_11778();
  if (v1)
  {
    sub_1179C(&type metadata accessor for SemanticValue, v7);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_11638();
  }
}

void sub_FFB4()
{
  sub_116CC();
  if (v3)
  {
    sub_116BC();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_116AC();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10170(*(v0 + 16), v4, &qword_A4650, &unk_7B680, &type metadata accessor for TerminalIntentNode);
  sub_117F0();
  sub_72E00();
  sub_117C4();
  sub_11778();
  if (v1)
  {
    sub_1179C(&type metadata accessor for TerminalIntentNode, v7);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_11638();
  }
}

void sub_10098()
{
  sub_11808();
  if (v4)
  {
    sub_11568();
    if (v5 != v6)
    {
      sub_1176C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_11558();
    }
  }

  sub_115E8();
  if (v3)
  {
    sub_506C(&qword_A4648, &qword_758E8);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    sub_1173C(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_10170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_506C(a3, a4);
  v8 = sub_117F0();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if (&result[-v11] != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * (&result[-v11] / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10268(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_1168C(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_117DC();

    _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_117DC();

    _swift_arrayInitWithTakeBackToFront(v9);
  }
}

uint64_t sub_10328(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10340(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10364(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_506C(a2, a3);
  sub_1168C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_103BC(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_1168C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10414()
{
  result = qword_A4618;
  if (!qword_A4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4618);
  }

  return result;
}

uint64_t sub_10468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_104B0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_114E8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10520(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10520(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_73D90(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_506C(&qword_A4628, &qword_758C8);
        v6 = sub_738B0();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_106A8(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10624(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        *(v9 + 24) = *v9;
        result = *(v9 + 16);
        *(v9 + 40) = result;
        *v9 = v7;
        *(v9 + 8) = v10;
        *(v9 + 16) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_106A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = result;
  v88 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
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
            return result;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v9;
      if ((result & 1) == 0)
      {
        result = sub_FBB4(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v40 = *(v8 + 2);
      v39 = *(v8 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        result = sub_FBB4((v39 > 1), v40 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v41;
      v42 = v8 + 32;
      v43 = &v8[16 * v40 + 32];
      *v43 = v7;
      v43[1] = v85;
      v86 = *v84;
      if (!*v84)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[16 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = *(v8 + 4);
            v48 = *(v8 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = *(v46 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = *(v46 + 1);
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          result = sub_10CF0((*a3 + 24 * *v76), (*a3 + 24 * *v78), *a3 + 24 * v79, v86);
          if (v5)
          {
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = *(v8 + 2);
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          result = memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          *(v80 + 2) = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = *(v46 + 1);
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*v84)
  {
    goto LABEL_115;
  }

  sub_10BB8(&v88, *v84, a3);
}

uint64_t sub_10BB8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10EC4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_10CF0((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_10CF0(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 24;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_25:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v11 - 3) < *v17)
    {
      v14 = v5 + 24 == v6;
      v6 -= 24;
      if (!v14)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v20;
        v6 = v17;
      }

      goto LABEL_25;
    }

    if (v11 != (v5 + 24))
    {
      v19 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v19;
    }

    v11 -= 24;
  }

LABEL_38:
  v21 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

void sub_10ED8()
{
  sub_11808();
  if (v4)
  {
    sub_11568();
    if (v5 != v6)
    {
      sub_1176C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_11558();
    }
  }

  sub_115E8();
  if (v3)
  {
    sub_506C(&qword_A4648, &qword_758E8);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    sub_1173C(v8);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_10FB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_506C(&qword_A4620, &qword_758C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_506C(&qword_A4628, &qword_758C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_11160(uint64_t a1, uint64_t a2)
{
  sub_11784();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v13)
  {
    sub_11568();
    if (v15 != v16)
    {
      sub_1176C();
      if (v15)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_11558();
    }
  }

  else
  {
    v14 = v2;
  }

  v17 = *(v10 + 16);
  if (v14 <= v17)
  {
    v18 = *(v10 + 16);
  }

  else
  {
    v18 = v14;
  }

  if (!v18)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_506C(v3, v4);
  v19 = *(v8(0) - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v17;
  v22[3] = 2 * ((v23 - v21) / v20);
LABEL_18:
  v8(0);
  sub_117C4();
  sub_11778();
  if (v12)
  {
    sub_10268(v10 + v25, v17, v22 + v25, v6);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_11754();
}

void sub_112FC()
{
  sub_11808();
  if (v4)
  {
    sub_11568();
    if (v5 != v6)
    {
      sub_1176C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_11558();
    }
  }

  sub_115E8();
  if (v3)
  {
    sub_506C(&qword_A4658, &qword_758F0);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v7 != v0 || &v0[5 * v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_506C(&qword_A4660, &qword_758F8);
    swift_arrayInitWithCopy();
  }
}

void sub_11414()
{
  sub_11808();
  if (v4)
  {
    sub_11568();
    if (v5 != v6)
    {
      sub_1176C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_11558();
    }
  }

  sub_115E8();
  if (v3)
  {
    sub_506C(&qword_A4668, &qword_75900);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * v8 - 64;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

uint64_t sub_1151C()
{

  return sub_103BC(v0, type metadata accessor for HealthNLIntent.HealthNLApp);
}

uint64_t sub_11578()
{
  *(v4 - 112) = v1;
  *(v4 - 104) = v0;
  *(v4 - 128) = v2;
  *(v4 - 120) = v3;
  *(v4 - 144) = 0;
  *(v4 - 136) = 0xE000000000000000;

  return sub_73AD0();
}

uint64_t sub_115F8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_11618(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_11638()
{

  return swift_arrayInitWithCopy();
}

void *sub_11664()
{

  return sub_72E30();
}

uint64_t sub_116EC(uint64_t a1)
{

  return sub_72E20();
}

uint64_t sub_11714()
{

  return sub_73AE0();
}

uint64_t sub_1173C(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

void sub_1179C(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_10268(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_11828()
{
}

uint64_t getEnumTagSinglePayload for HealthActivity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xAA)
  {
    if (a2 + 86 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 86) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 87;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x57;
  v5 = v6 - 87;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthActivity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 86 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 86) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xAA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xA9)
  {
    v6 = ((a2 - 170) >> 8) + 1;
    *result = a2 + 86;
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
        JUMPOUT(0x1199CLL);
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
          *result = a2 + 86;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_119D8()
{
  result = qword_A4678;
  if (!qword_A4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4678);
  }

  return result;
}

uint64_t sub_11A2C(char a1)
{
  result = 7629139;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x7370657453;
    case 3:
      return 0x646E617453;
    case 4:
      return 1702260557;
    case 5:
      return 1802264919;
    case 6:
      return 1634168665;
    case 7:
      v11 = 1668178244;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 8:
      return 0x61727473736F7243;
    case 9:
      return 0x63697470696C6C45;
    case 10:
      v14 = 1702326098;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 11:
      v11 = 1818458435;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 12:
      return 0x737269617453;
    case 13:
      v14 = 1701344335;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 14:
      return 0x7572726F6F646E49;
    case 15:
      return 0x7963726F6F646E49;
    case 16:
      return 0x6177726F6F646E49;
    case 17:
      v13 = 0x696372657845;
      return v13 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    case 18:
      return 1835628371;
    case 19:
      return 1701538120;
    case 20:
      return 0xD00000000000001DLL;
    case 21:
    case 37:
      return 0xD000000000000010;
    case 22:
      return 0xD000000000000012;
    case 23:
      return 0x79726568637241;
    case 24:
      return 0x6F746E696D646142;
    case 25:
      v11 = 1920098626;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 26:
      v5 = 1702060354;
      goto LABEL_88;
    case 27:
      v9 = 0x74656B736142;
      goto LABEL_73;
    case 28:
      v10 = 1819766594;
      return v10 | 0x676E6900000000;
    case 29:
      return 0x676E69786F42;
    case 30:
      return 0x676E69626D696C43;
    case 31:
      v8 = 1701998403;
      return v8 | 0x6961725400000000;
    case 32:
      return 0x74656B63697243;
    case 33:
      return 0xD000000000000012;
    case 34:
      v10 = 1819440451;
      return v10 | 0x676E6900000000;
    case 35:
      v6 = 1668507972;
      return v6 | 0x726F705300000000;
    case 36:
      v7 = 0x69686E776F44;
      return v7 & 0xFFFFFFFFFFFFLL | 0x6C6C000000000000;
    case 38:
      v10 = 1668179270;
      return v10 | 0x676E6900000000;
    case 39:
      v10 = 1752394054;
      return v10 | 0x676E6900000000;
    case 40:
      return 0x477373656E746946;
    case 41:
      return 0x6C69626978656C46;
    case 42:
      return 0xD00000000000001ALL;
    case 43:
      return 1718382407;
    case 44:
      return 0x697473616E6D7947;
    case 45:
      v5 = 1684955464;
      goto LABEL_88;
    case 46:
      return 0x6C637943646E6148;
    case 47:
      return 0x79656B636F48;
    case 48:
      v10 = 1953396040;
      return v10 | 0x676E6900000000;
    case 49:
      return 0x65706F52706D754ALL;
    case 50:
      return 0x69786F626B63694BLL;
    case 51:
      v13 = 0x736F7263614CLL;
      return v13 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    case 52:
      return 0x416C61697472614DLL;
    case 53:
      return 0x42646E41646E694DLL;
    case 54:
      v12 = 0x43646578694DLL;
      return v12 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 55:
      return 0x7053656C64646150;
    case 56:
      return 0x736574616C6950;
    case 57:
      return 2036427856;
    case 58:
      return 0xD000000000000016;
    case 59:
      return 0x6274657571636152;
    case 60:
      return 0x7962677552;
    case 61:
      v10 = 1818845523;
      return v10 | 0x676E6900000000;
    case 62:
      v4 = 1952541523;
      return v4 | 0x53676E6900000000;
    case 63:
      v12 = 0x6F62776F6E53;
      return v12 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 64:
      v6 = 2003791443;
      return v6 | 0x726F705300000000;
    case 65:
      return 0x726563636F53;
    case 66:
      v5 = 1952870227;
LABEL_88:
      v7 = v5 & 0xFFFF0000FFFFFFFFLL | 0x616200000000;
      return v7 & 0xFFFFFFFFFFFFLL | 0x6C6C000000000000;
    case 67:
      return 0x687361757153;
    case 68:
      return 0x6C43737269617453;
    case 69:
      v8 = 1885697107;
      return v8 | 0x6961725400000000;
    case 70:
      v4 = 1718777171;
      return v4 | 0x53676E6900000000;
    case 71:
      return 0x6E6554656C626154;
    case 72:
      return 0x696843696154;
    case 73:
      return 0x73696E6E6554;
    case 74:
      return 0x646E416B63617254;
    case 75:
      return 0xD00000000000001BLL;
    case 76:
      v9 = 0x79656C6C6F56;
      goto LABEL_73;
    case 77:
      return 0x7469467265746157;
    case 78:
      return 0x6C6F507265746157;
    case 79:
      return 0x6F70537265746157;
    case 80:
      return 0x6E696C7473657257;
    case 81:
      return 0xD000000000000012;
    case 82:
      return 0xD000000000000011;
    case 83:
      v3 = 0x6F6964726143;
      goto LABEL_5;
    case 84:
      v3 = 0x6C6169636F53;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    case 85:
      v9 = 0x656C6B636950;
LABEL_73:
      result = v9 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
      break;
    case 86:
      result = 0x6E776F646C6F6F43;
      break;
    default:
      result = 7238994;
      break;
  }

  return result;
}

unint64_t sub_123E0(char a1)
{
  sub_73B60(42);

  v3._countAndFlagsBits = sub_11A2C(a1);
  sub_73820(v3);

  return 0xD000000000000028;
}

unint64_t sub_12460(uint64_t a1, uint64_t a2)
{
  v2 = sub_73DC0();

  if (v2 >= 0x57)
  {
    return 87;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_124B4(char a1)
{
  result = 7239026;
  switch(a1)
  {
    case 1:
      return 7629171;
    case 2:
      return 0x7370657473;
    case 3:
      return 0x646E617473;
    case 4:
      return 1702260589;
    case 5:
      return 1802264951;
    case 6:
      return 1634168697;
    case 7:
      v14 = 1668178276;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 8:
      return 0x61727473736F7263;
    case 9:
      return 0x63697470696C6C65;
    case 10:
      v19 = 1702326130;
      return v19 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 11:
      v14 = 1818458467;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 12:
      return 0x737269617473;
    case 13:
      v19 = 1701344367;
      return v19 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 14:
      return 0x7572726F6F646E69;
    case 15:
      return 0x7963726F6F646E69;
    case 16:
      return 0x6177726F6F646E69;
    case 17:
      v16 = 0x696372657865;
      return v16 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    case 18:
      return 1835628403;
    case 19:
      return 1701538152;
    case 20:
      sub_130B8();
      return v17 + 11;
    case 21:
    case 37:
      sub_130B8();
      return v18 - 2;
    case 22:
      return 0xD000000000000012;
    case 23:
      return 0x79726568637261;
    case 24:
      return 0x6F746E696D646162;
    case 25:
      v14 = 1920098658;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 26:
      v5 = 1702060386;
      goto LABEL_88;
    case 27:
      v10 = 0x74656B736162;
      goto LABEL_73;
    case 28:
      v11 = 1819766626;
      return v11 | 0x676E6900000000;
    case 29:
      return 0x676E69786F62;
    case 30:
      return 0x676E69626D696C63;
    case 31:
      v9 = 1701998435;
      return v9 | 0x6961727400000000;
    case 32:
      return 0x74656B63697263;
    case 33:
      return 0xD000000000000012;
    case 34:
      v11 = 1819440483;
      return v11 | 0x676E6900000000;
    case 35:
      v7 = 1668508004;
      return v7 | 0x726F707300000000;
    case 36:
      v8 = 0x69686E776F64;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6C6C000000000000;
    case 38:
      v11 = 1668179302;
      return v11 | 0x676E6900000000;
    case 39:
      v11 = 1752394086;
      return v11 | 0x676E6900000000;
    case 40:
      return 0x677373656E746966;
    case 41:
      return 0x6C69626978656C66;
    case 42:
      sub_130B8();
      return v20 | 8;
    case 43:
      return 1718382439;
    case 44:
      return 0x697473616E6D7967;
    case 45:
      v5 = 1684955496;
      goto LABEL_88;
    case 46:
      v21 = 0x7963646E6168;
      return v21 & 0xFFFFFFFFFFFFLL | 0x6C63000000000000;
    case 47:
      return 0x79656B636F68;
    case 48:
      v11 = 1953396072;
      return v11 | 0x676E6900000000;
    case 49:
      return 0x65706F72706D756ALL;
    case 50:
      return 0x69786F626B63696BLL;
    case 51:
      v16 = 0x736F7263616CLL;
      return v16 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
    case 52:
      return 0x616C61697472616DLL;
    case 53:
      return 0x62646E61646E696DLL;
    case 54:
      v15 = 0x63646578696DLL;
      return v15 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 55:
      return 0x7073656C64646170;
    case 56:
      return 0x736574616C6970;
    case 57:
      return 2036427888;
    case 58:
      sub_130B8();
      return v12 | 4;
    case 59:
      return 0x6274657571636172;
    case 60:
      return 0x7962677572;
    case 61:
      v11 = 1818845555;
      return v11 | 0x676E6900000000;
    case 62:
      v4 = 1952541555;
      return v4 | 0x73676E6900000000;
    case 63:
      v15 = 0x6F62776F6E73;
      return v15 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 64:
      v7 = 2003791475;
      return v7 | 0x726F707300000000;
    case 65:
      return 0x726563636F73;
    case 66:
      v5 = 1952870259;
LABEL_88:
      v8 = v5 & 0xFFFF0000FFFFFFFFLL | 0x616200000000;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6C6C000000000000;
    case 67:
      return 0x687361757173;
    case 68:
      v21 = 0x737269617473;
      return v21 & 0xFFFFFFFFFFFFLL | 0x6C63000000000000;
    case 69:
      v9 = 1885697139;
      return v9 | 0x6961727400000000;
    case 70:
      v4 = 1718777203;
      return v4 | 0x73676E6900000000;
    case 71:
      return 0x6E6574656C626174;
    case 72:
      return 0x696863696174;
    case 73:
      return 0x73696E6E6574;
    case 74:
      return 0x646E616B63617274;
    case 75:
      sub_130B8();
      return v6 + 7;
    case 76:
      v10 = 0x79656C6C6F76;
      goto LABEL_73;
    case 77:
      return 0x7469667265746177;
    case 78:
      return 0x6C6F707265746177;
    case 79:
      return 0x6F70737265746177;
    case 80:
      return 0x6E696C7473657277;
    case 81:
      return 0xD000000000000012;
    case 82:
      sub_130B8();
      return v13 - 1;
    case 83:
      v3 = 0x6F6964726163;
      goto LABEL_5;
    case 84:
      v3 = 0x6C6169636F73;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    case 85:
      v10 = 0x656C6B636950;
LABEL_73:
      result = v10 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
      break;
    case 86:
      result = 0x6E776F646C6F6F43;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_12E9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_12460(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_12ECC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_124B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_12EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_13010();
  v5 = sub_13064();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_12F64()
{
  result = qword_A4680;
  if (!qword_A4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4680);
  }

  return result;
}

unint64_t sub_12FBC()
{
  result = qword_A4688;
  if (!qword_A4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4688);
  }

  return result;
}

unint64_t sub_13010()
{
  result = qword_A4690;
  if (!qword_A4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4690);
  }

  return result;
}

unint64_t sub_13064()
{
  result = qword_A4698;
  if (!qword_A4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4698);
  }

  return result;
}

uint64_t sub_130CC@<X0>(void *a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_72240();
  swift_allocObject();
  v5 = sub_72230();
  a1[6] = v4;
  a1[7] = &protocol witness table for ResponseFactory;
  a1[3] = v5;
  result = sub_73750();
  *a1 = 0xD000000000000014;
  a1[1] = 0x800000000007D490;
  a1[2] = v3;
  a1[8] = result;
  return result;
}

uint64_t type metadata accessor for StartWorkoutContinueInAppStrategy(uint64_t a1)
{
  result = qword_A46C8;
  if (!qword_A46C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1323C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v163 = a8;
  v164 = a7;
  v161 = a9;
  v156 = sub_722B0();
  sub_73A90();
  sub_D850(&qword_A4828, qword_75BA0);
  sub_73E80();
  sub_5394();
  v165 = v14;
  v166 = v13;
  __chkstk_darwin(v13);
  v162 = (&v154 - v15);
  sub_115DC();
  sub_73720();
  sub_5394();
  v167 = v17;
  v168 = v16;
  v18 = __chkstk_darwin(v16);
  v20 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v160 = &v154 - v22;
  v23 = __chkstk_darwin(v21);
  v157 = &v154 - v24;
  v25 = __chkstk_darwin(v23);
  __chkstk_darwin(v25);
  v155 = &v154 - v26;
  v27 = sub_115DC();
  v28 = type metadata accessor for HealthNLIntent(v27);
  __chkstk_darwin(v28 - 8);
  sub_C2A4();
  v31 = v30 - v29;
  sub_115DC();
  v32 = sub_72830();
  sub_5394();
  v34 = v33;
  __chkstk_darwin(v35);
  sub_C2A4();
  v38 = v37 - v36;
  v39 = sub_731D0();
  sub_5394();
  v159 = v40;
  __chkstk_darwin(v41);
  sub_C2A4();
  v158 = v43 - v42;

  v44 = sub_453DC(a3, a4);
  if (v44 == 5)
  {
    v49 = type metadata accessor for HealthFlowError();
    v50 = sub_14F70(v49);
    v51 = sub_B5BC(2);
    v52 = sub_736E0();
    sub_14EE0(v52);
    v54 = v167;
    v53 = v168;
    (*(v167 + 16))(v20, v50, v168);

    v55 = sub_73710();
    v56 = sub_73980();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v160 = v49;
      v58 = v57;
      v59 = sub_14F44();
      v60 = sub_14F88();
      v169[0] = v60;
      *v58 = 136315394;
      v61 = sub_73ED0();
      v63 = v54;
      v64 = sub_19144(v61, v62, v169);

      *(v58 + 4) = v64;
      *(v58 + 12) = 2112;
      sub_14EC8();
      v67 = sub_14CF8(v65, v66, &unk_7567C);
      sub_14F2C(v160, v67);
      *v68 = v51;

      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v69;
      *v59 = v69;
      _os_log_impl(&dword_0, v55, v56, "%s NeedsValueStrategy: %@", v58, 0x16u);
      sub_AEF4(v59, &qword_A4060, &qword_75440);
      sub_7EBC(v59);
      sub_AE38(v60);
      sub_7EBC(v60);
      v70 = v58;
      v49 = v160;
      sub_7EBC(v70);

      (*(v63 + 8))(v20, v168);
    }

    else
    {

      (*(v54 + 8))(v20, v53);
    }

    sub_14EC8();
    v116 = sub_14CF8(v114, v115, &unk_7567C);
    v117 = v49;
    goto LABEL_15;
  }

  if (v44)
  {
    v71 = v44;
    v72 = type metadata accessor for HealthFlowError();
    v73 = sub_14F70(v72);
    v51 = sub_B5BC(2);
    v74 = sub_736E0();
    sub_14EE0(v74);
    v75 = v167;
    v76 = v168;
    v77 = v160;
    (*(v167 + 16))(v160, v73, v168);

    v78 = sub_73710();
    v79 = sub_73980();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = sub_14F88();
      v81 = sub_14F44();
      v159 = swift_slowAlloc();
      v169[0] = v159;
      *v80 = 136315650;
      v82 = sub_73ED0();
      v84 = sub_19144(v82, v83, v169);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2080;
      v85 = sub_45428(v71);
      v87 = sub_19144(v85, v86, v169);

      *(v80 + 14) = v87;
      *(v80 + 22) = 2112;
      sub_14EC8();
      v90 = sub_14CF8(v88, v89, &unk_7567C);
      sub_14F2C(v72, v90);
      *v91 = v51;

      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 24) = v92;
      *v81 = v92;
      _os_log_impl(&dword_0, v78, v79, "%s NeedsValueStrategy: Slot - %s %@", v80, 0x20u);
      sub_AEF4(v81, &qword_A4060, &qword_75440);
      sub_7EBC(v81);
      v93 = v159;
      swift_arrayDestroy();
      sub_7EBC(v93);
      sub_7EBC(v80);

      (*(v167 + 8))(v77, v168);
    }

    else
    {

      (*(v75 + 8))(v77, v76);
    }

    sub_14EC8();
    v116 = sub_14CF8(v118, v119, &unk_7567C);
    v117 = v72;
LABEL_15:
    v120 = sub_14F2C(v117, v116);
    *v121 = v51;
    v122 = v162;
    *v162 = v120;
    v123 = v166;
    swift_storeEnumTagMultiPayload();

    v164(v122);

    v124 = sub_14F1C();
    v126 = v123;
    return v125(v124, v126);
  }

  sub_727E0();
  if ((*(v34 + 88))(v38, v32) != enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v34 + 8))(v38, v32);
    v94 = type metadata accessor for HealthFlowError();
    v95 = sub_14F70(v94);
    v96 = sub_B5BC(0);
    v97 = sub_736E0();
    sub_14EE0(v97);
    v98 = v167;
    v99 = v168;
    v100 = v157;
    (*(v167 + 16))(v157, v95, v168);

    v101 = sub_73710();
    v102 = sub_73980();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = sub_14F44();
      v105 = sub_14F88();
      v169[0] = v105;
      *v103 = 136315394;
      v106 = sub_73ED0();
      v108 = sub_19144(v106, v107, v169);

      *(v103 + 4) = v108;
      *(v103 + 12) = 2112;
      sub_14EC8();
      v111 = sub_14CF8(v109, v110, &unk_7567C);
      sub_14F2C(v94, v111);
      *v112 = v96;

      v113 = _swift_stdlib_bridgeErrorToNSError();
      *(v103 + 14) = v113;
      *v104 = v113;
      _os_log_impl(&dword_0, v101, v102, "%s NeedsValueStrategy: %@", v103, 0x16u);
      sub_AEF4(v104, &qword_A4060, &qword_75440);
      sub_7EBC(v104);
      sub_AE38(v105);
      sub_7EBC(v105);
      sub_7EBC(v103);

      (*(v98 + 8))(v157, v168);
    }

    else
    {

      (*(v98 + 8))(v100, v99);
    }

    sub_14EC8();
    v130 = sub_14CF8(v128, v129, &unk_7567C);
    v131 = sub_14F2C(v94, v130);
    *v132 = v96;
    v133 = v162;
    *v162 = v131;
    v134 = v166;
    swift_storeEnumTagMultiPayload();

    v164(v133);

    v124 = sub_14F1C();
    v126 = v134;
    return v125(v124, v126);
  }

  (*(v34 + 96))(v38, v32);
  v45 = v159;
  v46 = v158;
  (*(v159 + 32))(v158, v38, v39);
  v47 = v31;
  (*(v45 + 16))(v31, v46, v39);
  v48 = v161;
  v135 = sub_33D50(v161, v161, a11);
  v136 = (*(a11 + 24))(v48, a11);
  v170[3] = sub_506C(&qword_A4838, &qword_763E0);
  v170[0] = v136;
  v137 = sub_736E0();
  swift_beginAccess();
  v138 = v167;
  v139 = v155;
  (*(v167 + 16))(v155, v137, v168);
  v140 = v135;
  v141 = sub_73710();
  v142 = sub_73970();

  if (os_log_type_enabled(v141, v142))
  {
    v144 = swift_slowAlloc();
    v145 = sub_14F44();
    *v144 = 138412290;
    *(v144 + 4) = v140;
    *v145 = v140;
    v146 = v140;
    _os_log_impl(&dword_0, v141, v142, "Updated intent after prompting for value: %@", v144, 0xCu);
    sub_AEF4(v145, &qword_A4060, &qword_75440);
    sub_7EBC(v145);
    sub_7EBC(v144);
  }

  (*(v138 + 8))(v139, v168);
  sub_14E68(v170, v169);
  v147 = v140;
  v148 = v162;
  sub_722A0();
  sub_7CC4(v148, 0, 1, v156);
  v149 = v166;
  swift_storeEnumTagMultiPayload();
  v164(v148);

  v150 = sub_14F1C();
  v151(v150, v149);
  sub_BFD8(v47);
  v152 = sub_14F00();
  v153(v152);
  return sub_AE38(v170);
}

uint64_t sub_1404C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(void), uint64_t a7, void (*a8)(void))
{
  v79 = a8;
  v80 = sub_73720();
  sub_5394();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_C2A4();
  v17 = v16 - v15;
  sub_72270();
  sub_5394();
  v75 = v19;
  v76 = v18;
  __chkstk_darwin(v18);
  sub_C2A4();
  v74 = v21 - v20;
  sub_115DC();
  sub_73390();
  sub_5394();
  v77 = v22;
  __chkstk_darwin(v23);
  sub_C2A4();
  v26 = v25 - v24;
  v78 = sub_506C(&unk_A6CD0, &unk_75B80);
  v27 = __chkstk_darwin(v78);
  v29 = (&v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v31 = &v73 - v30;

  v32 = sub_453DC(a3, a4);
  if (v32 == 5)
  {
    v33 = type metadata accessor for HealthFlowError();
    sub_14F70(v33);
    v34 = sub_B5BC(2);
    sub_736E0();
    swift_beginAccess();
    v35 = sub_14F5C();
    v36(v35);

    v37 = sub_73710();
    v38 = sub_73980();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v77 = sub_14F44();
      v78 = sub_14F88();
      v81 = v78;
      *v39 = 136315394;
      v40 = sub_73ED0();
      v42 = sub_19144(v40, v41, &v81);
      v79 = a6;
      v43 = v42;

      *(v39 + 4) = v43;
      *(v39 + 12) = 2112;
      sub_14EC8();
      v46 = sub_14CF8(v44, v45, &unk_7567C);
      sub_14F2C(v33, v46);
      *v47 = v34;

      a6 = v79;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v48;
      v49 = v77;
      *v77 = v48;
      _os_log_impl(&dword_0, v37, v38, "%s NeedsValueStrategy: %@", v39, 0x16u);
      sub_AEF4(v49, &qword_A4060, &qword_75440);
      sub_7EBC(v49);
      v50 = v78;
      sub_AE38(v78);
      sub_7EBC(v50);
      sub_7EBC(v39);
    }

    (*(v13 + 8))(v17, v80);
    sub_14EC8();
    v53 = sub_14CF8(v51, v52, &unk_7567C);
    v54 = sub_14F2C(v33, v53);
    *v55 = v34;
    v81 = v54;
    v83 = 1;

    a6(&v81);

    v56 = &qword_A4810;
    v57 = &unk_760A0;
    v58 = &v81;
  }

  else
  {
    v59 = v32;
    v79 = a6;
    v80 = a7;
    v60 = sub_73970();
    v61 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v62 = swift_allocObject();
    v73 = xmmword_74B40;
    *(v62 + 16) = xmmword_74B40;
    v81 = 0;
    v82 = 0xE000000000000000;
    v84 = v59;
    v63 = v61;
    sub_73C40();
    v65 = v81;
    v64 = v82;
    *(v62 + 56) = &type metadata for String;
    *(v62 + 64) = sub_5258();
    *(v62 + 32) = v65;
    *(v62 + 40) = v64;
    sub_73620(v60, &dword_0, v63, "Generating prompt to get value for : %@", 39, 2, v62);

    sub_73280();
    v66 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v67 = swift_allocObject();
    *(v67 + 16) = v73;
    sub_73380();
    v81 = v67;
    sub_14CF8(&unk_A6CE0, &type metadata accessor for CATOption, &protocol conformance descriptor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_14D40();
    sub_73B10();
    type metadata accessor for HealthCATWrapper(0);
    swift_allocObject();
    sub_4F648(v66, v26);
    sub_4F78C(v59, 4);

    sub_14DA4(v31, v29);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v81 = *v29;
    }

    else
    {
      v70 = v74;
      v69 = v75;
      v71 = v76;
      (*(v75 + 32))(v74, v29, v76);
      sub_14754(&v81);
      (*(v69 + 8))(v70, v71);
    }

    v83 = EnumCaseMultiPayload == 1;
    v79(&v81);
    sub_AEF4(&v81, &qword_A4810, &unk_760A0);
    v56 = &unk_A6CD0;
    v57 = &unk_75B80;
    v58 = v31;
  }

  return sub_AEF4(v58, v56, v57);
}

uint64_t sub_14754@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - v4;
  sub_72840();
  sub_72840();
  sub_7C78(v11, v11[3]);
  sub_71ED0();
  v6 = sub_721F0();
  sub_7CC4(v5, 1, 1, v6);
  v7 = sub_72890();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  a2[3] = v7;
  a2[4] = &protocol witness table for AceOutput;
  sub_5BAC(a2);
  sub_720E0();
  sub_AEF4(v9, &unk_A6D20, &qword_76D80);
  sub_AEF4(v5, &qword_A4050, &unk_75290);
  sub_AE38(v12);
  return sub_AE38(v11);
}

uint64_t sub_14974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_14A58;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_14A58()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_14B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_14EC4;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_14C5C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_14CBC(uint64_t (*a1)(void))
{
  a1();

  return sub_73ED0();
}

uint64_t sub_14CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_14D40()
{
  result = qword_A6CF0;
  if (!qword_A6CF0)
  {
    sub_D850(&qword_A4820, qword_77FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6CF0);
  }

  return result;
}

uint64_t sub_14DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&unk_A6CD0, &unk_75B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_14E14()
{
  result = qword_A4830;
  if (!qword_A4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4830);
  }

  return result;
}

uint64_t sub_14E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_14EE0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_14F2C(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_14F44()
{

  return swift_slowAlloc();
}

uint64_t sub_14F70(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_14F88()
{

  return swift_slowAlloc();
}

uint64_t sub_14FA0@<X0>(void *a1@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_72240();
  swift_allocObject();
  v5 = sub_72230();
  a1[6] = v4;
  a1[7] = &protocol witness table for ResponseFactory;
  a1[3] = v5;
  result = sub_73750();
  *a1 = 0xD000000000000015;
  a1[1] = 0x800000000007D530;
  a1[2] = v3;
  a1[8] = result;
  return result;
}

uint64_t type metadata accessor for ResumeWorkoutContinueInAppStrategy(uint64_t a1)
{
  result = qword_A4868;
  if (!qword_A4868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_150F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_506C(&qword_A4A08, &qword_75D10);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_73910();
  sub_7CC4(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = a4;
  v12[6] = a5;

  sub_54390(0, 0, v10, &unk_75D48, v12);
}

uint64_t sub_151F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_15214);
}

uint64_t sub_15214()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[5] = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_72240();
  swift_allocObject();
  v0[6] = sub_72230();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_15360;

  return sub_45028();
}

uint64_t sub_15360()
{
  sub_7F1C();
  v1 = *(*v0 + 40);
  v2 = *v0;
  sub_B044();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1547C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_506C(&qword_A4A08, &qword_75D10);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_73910();
  sub_7CC4(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a1;
  v14[6] = v5;
  v14[7] = a4;
  v14[8] = a5;
  v15 = a3;

  sub_54390(0, 0, v12, &unk_75D20, v14);
}

uint64_t sub_1559C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  return _swift_task_switch(sub_155C4);
}

uint64_t sub_155C4()
{
  v1 = v0[33];
  sub_506C(&qword_A4A10, &qword_75D28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_74F60;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = [v1 code];
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0x656D614E707061;
  *(inited + 88) = 0xE700000000000000;

  v3 = sub_72250();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayAppName];

    if (v5)
    {
      v4 = sub_73790();
      v7 = v6;

      goto LABEL_7;
    }

    v4 = 0;
  }

  else
  {
  }

  v7 = 0;
LABEL_7:
  *(inited + 120) = sub_506C(&qword_A6D00, &unk_75D30);
  *(inited + 96) = v4;
  *(inited + 104) = v7;
  v8 = sub_73750();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v11 = sub_72240();
  swift_allocObject();
  v12 = sub_72230();
  v0[24] = v11;
  v0[25] = &protocol witness table for ResponseFactory;
  v0[18] = 0xD000000000000019;
  v0[20] = v10;
  v0[21] = v12;
  v0[19] = 0x800000000007D5A0;
  v0[26] = v8;
  v13 = swift_task_alloc();
  v0[38] = v13;
  *v13 = v0;
  v13[1] = sub_15868;

  return sub_2CCDC((v0 + 27), (v0 + 18), _swiftEmptyArrayStorage);
}

uint64_t sub_15868()
{
  sub_7F1C();
  v1 = *v0;
  sub_B044();
  *v2 = v1;

  return _swift_task_switch(sub_15958);
}

uint64_t sub_15958()
{
  sub_7F1C();
  (*(v0 + 288))(v0 + 216);
  sub_16074(v0 + 216);
  sub_160DC(v0 + 144);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_159D0()
{
  sub_AE38((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_15A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_15AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_15B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_15BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_15C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_15CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, started, a3);
}

uint64_t sub_15D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, started, a4);
}

uint64_t sub_15DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for StartWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, started, a6);
}

unint64_t sub_15E1C()
{
  result = qword_A4A00;
  if (!qword_A4A00)
  {
    type metadata accessor for StartWorkoutHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4A00);
  }

  return result;
}

uint64_t sub_15E70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_15EC8()
{
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_1622C(v5);

  return sub_1559C(v6, v7, v8, v9, v10, v2, v3, v4);
}

uint64_t sub_15F8C()
{
  sub_7F1C();
  v1 = *v0;
  sub_B044();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_16074(uint64_t a1)
{
  v2 = sub_506C(&qword_A4810, &unk_760A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16130()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_16178()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_1622C(v3);

  return sub_151F0(v4, v5, v6, v7, v8, v2);
}

uint64_t *sub_1624C()
{
  v1 = &qword_A4A28;
  v2 = sub_506C(&qword_A4A28, &unk_7A800);
  v3 = sub_B1C0(v2);
  __chkstk_darwin(v3);
  sub_16F44();
  v5 = __chkstk_darwin(v4);
  sub_16F60(v5, v6, v7, v8, v9, v10, v11, v12, v25);
  v13 = sub_730B0();
  sub_16FAC(v13);
  if (!v14)
  {
    v15 = sub_16FD8();
    sub_16EE8(v15, v16, v17, v18);
    v19 = sub_7F28();
    v21 = v20(v19);
    if (v21 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Inch(_:))
    {
      v1 = (&dword_0 + 1);
    }

    else if (v21 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Mile(_:))
    {
      v1 = &dword_4;
    }

    else
    {
      if (v21 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Calorie(_:))
      {
        goto LABEL_7;
      }

      if (v21 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Meter(_:))
      {
        v1 = (&dword_0 + 2);
        goto LABEL_12;
      }

      if (v21 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Yard(_:))
      {
        v1 = (&dword_4 + 1);
        goto LABEL_12;
      }

      if (v21 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Kilocalorie(_:))
      {
LABEL_7:
        v1 = (&dword_8 + 2);
      }

      else if (v21 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Foot(_:))
      {
        v1 = (&dword_0 + 3);
      }

      else if (v21 == enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Kilojoule(_:))
      {
        v1 = (&dword_8 + 1);
      }

      else
      {
        v23 = sub_7F28();
        v24(v23);
        v1 = 0;
      }
    }
  }

LABEL_12:
  sub_10364(v0, &qword_A4A28, &unk_7A800);
  return v1;
}

uint64_t *sub_1644C()
{
  v1 = &qword_A4A18;
  v2 = sub_506C(&qword_A4A18, &qword_75D58);
  v3 = sub_B1C0(v2);
  __chkstk_darwin(v3);
  sub_16F44();
  v5 = __chkstk_darwin(v4);
  sub_16F60(v5, v6, v7, v8, v9, v10, v11, v12, v25);
  v13 = sub_72EF0();
  sub_16FAC(v13);
  if (!v14)
  {
    v15 = sub_16FD8();
    sub_16EE8(v15, v16, v17, v18);
    v19 = sub_7F28();
    v21 = v20(v19);
    if (v21 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Second(_:))
    {
      v1 = (&dword_4 + 2);
    }

    else if (v21 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Minute(_:))
    {
      v1 = (&dword_4 + 3);
    }

    else if (v21 == enum case for UsoEntity_common_TimeUnit.DefinedValues.common_TimeUnit_Hour(_:))
    {
      v1 = &dword_8;
    }

    else
    {
      v22 = sub_7F28();
      v23(v22);
      v1 = 0;
    }
  }

  sub_10364(v0, &qword_A4A18, &qword_75D58);
  return v1;
}

uint64_t sub_165C8()
{
  v0 = sub_72EC0();
  v1 = v0;
  if (v0)
  {
    if (sub_114FC(v0))
    {
      sub_11500();
      if ((v1 & 0xC000000000000001) != 0)
      {
        sub_73B70();
      }

      else
      {
      }

      sub_72DB0();

      if (v4)
      {
        v2 = sub_730D0();

        if (v2)
        {
          v1 = sub_72E80();

          return v1;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return v1;
}

uint64_t sub_166B0(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_730B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v50 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_506C(&qword_A4A20, &qword_75D60);
  sub_1168C();
  v8 = __chkstk_darwin(v7);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v44[-v11];
  v13 = sub_506C(&qword_A4A28, &unk_7A800);
  v14 = sub_B1C0(v13);
  v15 = __chkstk_darwin(v14);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v44[-v19];
  v21 = __chkstk_darwin(v18);
  v23 = &v44[-v22];
  __chkstk_darwin(v21);
  v25 = &v44[-v24];
  if (!a1)
  {
    return a1;
  }

  v26 = sub_72F90();
  a1 = v26;
  if (!v26)
  {
    return a1;
  }

  if (!sub_114FC(v26))
  {

    return 0;
  }

  v48 = v10;
  v49 = v4;
  sub_11500();
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_73B70();
  }

  else
  {
  }

  sub_72DB0();

  a1 = v52;
  if (!v52)
  {
    return a1;
  }

  v27 = sub_73120();

  if (!v27)
  {
    return 0;
  }

  a1 = sub_72E80();
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    v30 = *&a1;
    v46 = *(v49 + 104);
    v47 = v49 + 104;
    v46(v25, enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Calorie(_:), v3);
    sub_7CC4(v25, 0, 1, v3);
    v31 = *(v6 + 48);
    sub_16FE4(v25, v12);
    sub_16FE4(v51, &v12[v31]);
    sub_16F8C(v12);
    if (v33)
    {
      sub_10364(v25, &qword_A4A28, &unk_7A800);
      sub_16F8C(&v12[v31]);
      if (v33)
      {
        sub_10364(v12, &qword_A4A28, &unk_7A800);
        goto LABEL_22;
      }
    }

    else
    {
      sub_16EE8(v12, v23, &qword_A4A28, &unk_7A800);
      sub_16F8C(&v12[v31]);
      if (!v33)
      {
        v34 = v50;
        (*(v49 + 32))(v50, &v12[v31], v3);
        sub_16E90();
        v45 = sub_73770();
        v35 = *(v49 + 8);
        v35(v34, v3);
        sub_10364(v25, &qword_A4A28, &unk_7A800);
        v35(v23, v3);
        sub_10364(v12, &qword_A4A28, &unk_7A800);
        if ((v45 & 1) == 0)
        {
LABEL_23:
          v46(v20, enum case for UsoEntity_common_MeasurementUnit.DefinedValues.common_MeasurementUnit_Kilojoule(_:), v3);
          sub_7CC4(v20, 0, 1, v3);
          v36 = *(v6 + 48);
          v37 = v48;
          sub_16FE4(v20, v48);
          sub_16FE4(v51, v37 + v36);
          sub_16F8C(v37);
          if (v33)
          {
            sub_10364(v20, &qword_A4A28, &unk_7A800);
            sub_16F8C(v37 + v36);
            if (v33)
            {
              sub_10364(v37, &qword_A4A28, &unk_7A800);
LABEL_33:
              v30 = v30 * 1000.0;
              return *&v30;
            }
          }

          else
          {
            sub_16EE8(v37, v17, &qword_A4A28, &unk_7A800);
            sub_16F8C(v37 + v36);
            if (!v38)
            {
              v39 = v49;
              v40 = v37 + v36;
              v41 = v50;
              (*(v49 + 32))(v50, v40, v3);
              sub_16E90();
              v42 = sub_73770();
              v43 = *(v39 + 8);
              v43(v41, v3);
              sub_10364(v20, &qword_A4A28, &unk_7A800);
              v43(v17, v3);
              sub_10364(v37, &qword_A4A28, &unk_7A800);
              if ((v42 & 1) == 0)
              {
                return *&v30;
              }

              goto LABEL_33;
            }

            sub_10364(v20, &qword_A4A28, &unk_7A800);
            (*(v49 + 8))(v17, v3);
          }

          sub_10364(v37, &qword_A4A20, &qword_75D60);
          return *&v30;
        }

LABEL_22:
        v30 = v30 / 1000.0;
        goto LABEL_23;
      }

      sub_10364(v25, &qword_A4A28, &unk_7A800);
      (*(v49 + 8))(v23, v3);
    }

    sub_10364(v12, &qword_A4A20, &qword_75D60);
    goto LABEL_23;
  }

  return a1;
}

uint64_t *sub_16D30()
{
  v1 = &qword_A4A38;
  v2 = sub_506C(&qword_A4A38, &qword_75D68);
  v3 = sub_B1C0(v2);
  __chkstk_darwin(v3);
  sub_16F44();
  v5 = __chkstk_darwin(v4);
  sub_16F60(v5, v6, v7, v8, v9, v10, v11, v12, v25);
  v13 = sub_72FF0();
  sub_16FAC(v13);
  if (!v14)
  {
    v15 = sub_16FD8();
    sub_16EE8(v15, v16, v17, v18);
    v19 = sub_7F28();
    v21 = v20(v19);
    if (v21 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:))
    {
      v1 = (&dword_0 + 1);
    }

    else if (v21 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:))
    {
      v1 = (&dword_0 + 2);
    }

    else
    {
      v22 = sub_7F28();
      v23(v22);
      v1 = 0;
    }
  }

  sub_10364(v0, &qword_A4A38, &qword_75D68);
  return v1;
}

unint64_t sub_16E90()
{
  result = qword_A4A30;
  if (!qword_A4A30)
  {
    sub_730B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4A30);
  }

  return result;
}

uint64_t sub_16EE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_506C(a3, a4);
  sub_1168C();
  v5 = sub_16FD8();
  v6(v5);
  return a2;
}

uint64_t sub_16F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_16EE8(v10, &a9 - v9, v11, v12);
}

uint64_t sub_16FE4(uint64_t a1, uint64_t a2)
{

  return sub_16EE8(a1, a2, v2, v3);
}

uint64_t sub_1701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_17040);
}

uint64_t sub_17040()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[5] = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_72240();
  swift_allocObject();
  v0[6] = sub_72230();
  v2 = sub_17B28();
  v0[7] = v2;
  *v2 = v0;
  sub_17B14(v2);
  v3 = sub_17B00(18);

  return v4(v3);
}

uint64_t sub_17184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_506C(&qword_A4A08, &qword_75D10);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = sub_73910();
  sub_7CC4(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v7;
  v15[5] = a4;
  v15[6] = a5;

  sub_54390(0, 0, v13, a7, v15);
}

uint64_t sub_17278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1729C);
}

uint64_t sub_1729C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[5] = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_72240();
  swift_allocObject();
  v0[6] = sub_72230();
  v2 = sub_17B28();
  v0[7] = v2;
  *v2 = v0;
  sub_17B14(v2);
  v3 = sub_17B00(23);

  return v4(v3);
}

uint64_t sub_173C0()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_17588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_17604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_176A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_17720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_177C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_1780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_17870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

unint64_t sub_178E0()
{
  result = qword_A4AF8;
  if (!qword_A4AF8)
  {
    type metadata accessor for EndWorkoutHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4AF8);
  }

  return result;
}

uint64_t sub_17938()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_17278(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_179D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_17A20()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_1701C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_17B28()
{

  return swift_task_alloc();
}

uint64_t sub_17B48()
{
  v0 = sub_73720();
  sub_19830(v0, qword_A4B00);
  sub_18D3C(v0, qword_A4B00);
  sub_ADF8(0, qword_A4C68, OS_os_log_ptr);
  sub_73A70();
  return sub_73730();
}

uint64_t sub_17BE8(uint64_t a1, uint64_t a2)
{
  sub_714B0();
  sub_19894();
  __chkstk_darwin(v4);
  v5 = [objc_allocWithZone(NSMetaphone) init];
  result = sub_197B0(a1, a2, v5);
  if (v7)
  {
    sub_714A0();
    sub_10414();
    v8 = sub_73AC0();

    v9 = sub_5388();
    v10(v9);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_17D24()
{
  sub_198DC();
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = 0x7473696C70;
  v0[5] = 0xE500000000000000;
  v0[6] = 0;
}

uint64_t sub_17D5C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchBundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];

  v9 = sub_1971C(v5, v6, v8, v7, v4);

  if (v9)
  {
    sub_714F0();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_71500();

  return sub_7CC4(a1, v10, 1, v11);
}

uint64_t sub_17E40()
{

  return v0;
}

uint64_t sub_17E70()
{
  sub_17E40();

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *guestNames()()
{
  v0 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  type metadata accessor for SearchBundleHelper();
  swift_initStackObject();
  sub_198DC();
  v3[2] = v4;
  v3[3] = v5;
  v3[4] = 0x7473696C70;
  v3[5] = 0xE500000000000000;
  v3[6] = 0;
  sub_17D5C(v2);
  v6 = guestNames(dataPath:)(v2);

  sub_AEF4(v2, &qword_A3F90, &unk_74FC0);
  return v6;
}

void *guestNames(dataPath:)(uint64_t a1)
{
  v3 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v3 - 8);
  v5 = v28 - v4;
  sub_71500();
  sub_19894();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_198CC();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = v28 - v13;
  sub_1828C(a1, v5);
  if (sub_5124(v5, 1, v1) == 1)
  {
    v15 = &qword_A3F90;
    v16 = &unk_74FC0;
    v17 = v5;
LABEL_3:
    sub_AEF4(v17, v15, v16);
    return _swiftEmptyArrayStorage;
  }

  (*(v7 + 32))(v14, v5, v1);
  sub_ADF8(0, &qword_A4B18, NSDictionary_ptr);
  (*(v7 + 16))(v11, v14, v1);
  v18 = sub_182FC(v11);
  if (!v18)
  {
    v23 = sub_5388();
    v24(v23);
    return _swiftEmptyArrayStorage;
  }

  v19 = v18;
  *&v29 = 0x737473657567;
  *(&v29 + 1) = 0xE600000000000000;
  v20 = [v18 __swift_objectForKeyedSubscript:sub_73DD0()];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_73B00();

    swift_unknownObjectRelease();
    v21 = sub_5388();
    v22(v21);
  }

  else
  {
    v25 = sub_5388();
    v26(v25);

    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    v15 = &qword_A42F0;
    v16 = &qword_77260;
    v17 = v31;
    goto LABEL_3;
  }

  sub_506C(&qword_A4B20, &unk_75EA0);
  if (swift_dynamicCast())
  {
    return v28[1];
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1828C(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F90, &unk_74FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_182FC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_714E0(v3);
  v5 = v4;
  v6 = [v2 initWithContentsOfURL:v4];

  v7 = sub_71500();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void *search(dataPath:guest:modality:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v104 = a4;
  v105 = a5;
  v106 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v106);
  sub_198CC();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v99 - v13;
  sub_71500();
  sub_19894();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_198CC();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = &v99 - v23;
  __chkstk_darwin(v22);
  v26 = &v99 - v25;
  sub_1828C(a1, v14);
  if (sub_5124(v14, 1, v5) == 1)
  {
    v27 = &qword_A3F90;
    v28 = &unk_74FC0;
    v29 = v14;
LABEL_3:
    sub_AEF4(v29, v27, v28);
LABEL_17:
    if (qword_A38C0 != -1)
    {
      sub_198AC(&qword_A38C0);
    }

    v61 = sub_73720();
    sub_18D3C(v61, qword_A4B00);
    sub_1828C(a1, v11);
    v62 = sub_73710();
    v63 = sub_73980();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v110 = v65;
      *v64 = 136315138;
      v66 = sub_73A80();
      v68 = v67;
      sub_AEF4(v11, &qword_A3F90, &unk_74FC0);
      v69 = sub_19144(v66, v68, &v110);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_0, v62, v63, "No data file present: %s", v64, 0xCu);
      sub_AE38(v65);
      sub_7EBC(v65);
      sub_7EBC(v64);
    }

    else
    {

      sub_AEF4(v11, &qword_A3F90, &unk_74FC0);
    }

    return _swiftEmptyArrayStorage;
  }

  v102 = a2;
  v103 = a3;
  (*(v16 + 32))(v26, v14, v5);
  sub_ADF8(0, &qword_A4B18, NSDictionary_ptr);
  v30 = v5;
  v31 = v26;
  v32 = v16;
  v34 = (v16 + 16);
  v33 = *(v16 + 16);
  v35 = sub_5388();
  v33(v35);
  v36 = sub_182FC(v24);
  if (!v36)
  {
    (*(v32 + 8))(v31, v30);
    goto LABEL_17;
  }

  v37 = v36;
  v100 = v31;
  v101 = v32;
  *&v108 = sub_17BE8(v102, v103);
  *(&v108 + 1) = v38;
  v39 = sub_73DD0();
  v99 = v37;
  v40 = [v37 __swift_objectForKeyedSubscript:v39];
  swift_unknownObjectRelease();
  if (v40)
  {
    sub_73B00();
    swift_unknownObjectRelease();
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
  }

  v41 = v100;
  v42 = v30;
  v110 = v108;
  v111 = v109;
  if (!*(&v109 + 1))
  {
    v57 = sub_5388();
    v58(v57);

    v27 = &qword_A42F0;
    v28 = &qword_77260;
    v29 = &v110;
    goto LABEL_3;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v59 = sub_5388();
    v60(v59);

    goto LABEL_17;
  }

  v43 = v107;
  if (qword_A38C0 != -1)
  {
    sub_198AC(&qword_A38C0);
  }

  v44 = sub_73720();
  v45 = sub_18D3C(v44, qword_A4B00);
  (v33)(v20, v41, v30);
  v106 = v45;
  v46 = sub_73710();
  v47 = sub_73970();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v43;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v110 = v50;
    *v49 = 136315138;
    sub_196C4(&qword_A4B30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v51 = sub_73DA0();
    v53 = v52;
    v54 = sub_198FC();
    v34(v54);
    v55 = sub_19144(v51, v53, &v110);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_0, v46, v47, "Looking at data file found at %s", v49, 0xCu);
    sub_AE38(v50);
    sub_7EBC(v50);
    v56 = v49;
    v43 = v48;
    sub_7EBC(v56);
  }

  else
  {

    v72 = sub_198FC();
    v34(v72);
  }

  v73 = v103;
  if (v105)
  {
    *&v110 = sub_737B0();
    *(&v110 + 1) = v74;
    sub_10414();
    v75 = sub_73AB0();
    v77 = v76;

    *&v108 = v75;
    *(&v108 + 1) = v77;

    v78 = [v43 __swift_objectForKeyedSubscript:sub_73DD0()];
    swift_unknownObjectRelease();
    if (v78)
    {
      sub_73B00();
      swift_unknownObjectRelease();
    }

    else
    {
      v108 = 0u;
      v109 = 0u;
    }

    v110 = v108;
    v111 = v109;
    if (*(&v109 + 1))
    {
      sub_ADF8(0, &qword_A4B28, NSArray_ptr);
      if (swift_dynamicCast())
      {

        v89 = v107;
        v70 = sub_18D74(v107);

        (v34)(v100, v42);
        return v70;
      }
    }

    else
    {
      sub_AEF4(&v110, &qword_A42F0, &qword_77260);
    }

    v90 = sub_73710();
    v91 = sub_73980();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v106 = v34;
      v93 = v43;
      v94 = v92;
      v95 = swift_slowAlloc();
      *&v110 = v95;
      *v94 = 136315394;
      *(v94 + 4) = sub_19144(v102, v73, &v110);
      *(v94 + 12) = 2080;
      v96 = sub_19144(v75, v77, &v110);

      *(v94 + 14) = v96;
      _os_log_impl(&dword_0, v90, v91, "No adamIds found for %s and %s", v94, 0x16u);
      swift_arrayDestroy();
      sub_7EBC(v95);
      v97 = v94;
      v43 = v93;
      v34 = v106;
      sub_7EBC(v97);
    }

    else
    {
    }

    v98 = v99;
  }

  else
  {
    v79 = sub_73710();
    v80 = sub_73980();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = v34;
      v83 = v43;
      v84 = swift_slowAlloc();
      *&v108 = v84;
      *v81 = 136315138;
      v110 = v104;
      sub_506C(&qword_A6D00, &unk_75D30);
      v85 = sub_73A80();
      v87 = sub_19144(v85, v86, &v108);

      *(v81 + 4) = v87;
      _os_log_impl(&dword_0, v79, v80, "Failed to normalize modality: %s", v81, 0xCu);
      sub_AE38(v84);
      v88 = v84;
      v43 = v83;
      v34 = v82;
      sub_7EBC(v88);
      sub_7EBC(v81);
    }
  }

  (v34)(v100, v42);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_18D3C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_18D74(void *a1)
{
  v22 = sub_714D0();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v27 = _swiftEmptyArrayStorage;
  sub_401D0();
  v7 = v27;
  result = sub_73A20();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v20 = v3;
  v21 = v1;
  if (v6)
  {
    sub_196C4(&qword_A4C58, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
    do
    {
      result = sub_73AA0();
      if (!v26)
      {
        goto LABEL_15;
      }

      sub_14E68(&v25, &v23);
      v9 = sub_737A0();
      v11 = v10;
      sub_AE38(&v25);
      v27 = v7;
      v12 = v7[2];
      if (v12 >= v7[3] >> 1)
      {
        sub_401D0();
        v7 = v27;
      }

      v7[2] = v12 + 1;
      v13 = &v7[2 * v12];
      v13[4] = v9;
      v13[5] = v11;
    }

    while (--v6);
  }

  sub_196C4(&qword_A4C58, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  while (1)
  {
    sub_73AA0();
    if (!v24)
    {
      break;
    }

    sub_1970C(&v23, &v25);
    sub_14E68(&v25, &v23);
    v14 = sub_737A0();
    v16 = v15;
    sub_AE38(&v25);
    v27 = v7;
    v17 = v7[2];
    if (v17 >= v7[3] >> 1)
    {
      sub_401D0();
      v7 = v27;
    }

    v7[2] = v17 + 1;
    v18 = &v7[2 * v17];
    v18[4] = v14;
    v18[5] = v16;
  }

  (*(v20 + 8))(v5, v22);
  sub_AEF4(&v23, &qword_A42F0, &qword_77260);
  return v7;
}

uint64_t sub_19074(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_190E8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_19144(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_19144(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19208(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_14E68(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_AE38(v11);
  return v7;
}

unint64_t sub_19208(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_19308(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_73BA0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_19308(uint64_t a1, unint64_t a2)
{
  v3 = sub_19354(a1, a2);
  sub_1946C(&off_97BC0);
  return v3;
}

char *sub_19354(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_73830())
  {
    result = sub_19550(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_73B50();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_73BA0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1946C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_195C0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_19550(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_506C(&qword_A4C60, &qword_75F08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_195C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_506C(&qword_A4C60, &qword_75F08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_196B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_196C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_1970C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_1971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_73780();

  v7 = sub_73780();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_197B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();
  v5 = [a3 translate:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_73790();

  return v6;
}

uint64_t *sub_19830(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_198AC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_19910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1994C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_199A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_19A30()
{
  sub_73E40();
  sub_73E50(0);
  return sub_73E60();
}

Swift::Int sub_19A7C(uint64_t a1)
{
  sub_73E40();
  sub_73E50(0);
  return sub_73E60();
}

void sub_19ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v11 = sub_73720();
  sub_5394();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_C2A4();
  v17 = v16 - v15;
  v18 = [a6 disambiguationItems];
  v19 = sub_73870();

  v20 = sub_3E538(v19);

  if (v20)
  {
    sub_506C(&qword_A4CF8, &qword_75FF0);
    swift_allocObject();
    sub_727A0();
    a7();
    sub_11754();
  }

  else
  {
    v42 = type metadata accessor for HealthFlowError();
    sub_14F70(v42);
    v22 = sub_B5BC(6);
    v23 = sub_736E0();
    sub_7EEC(v23, v44);
    (*(v13 + 16))(v17, v23, v11);

    v24 = sub_73710();
    v25 = sub_73980();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_1BA10();
      v27 = sub_14F44();
      v40 = sub_14F88();
      v43 = v40;
      *v26 = 136315394;
      v28 = sub_73ED0();
      v41 = a7;
      v30 = sub_19144(v28, v29, &v43);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2112;
      sub_1B9A0();
      sub_1B78C(v31, v32, &unk_7567C);
      swift_allocError();
      *v33 = v22;

      a7 = v41;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v34;
      *v27 = v34;
      _os_log_impl(&dword_0, v24, v25, "%s Error: %@", v26, 0x16u);
      sub_AEF4(v27, &qword_A4060, &qword_75440);
      sub_7EBC(v27);
      sub_AE38(v40);
      sub_7EBC(v40);
      sub_7EBC(v26);

      (*(v13 + 8))(v17, v11);
    }

    else
    {

      (*(v13 + 8))(v17, v11);
    }

    sub_1B9A0();
    v37 = sub_1B78C(v35, v36, &unk_7567C);
    v38 = sub_1B9D8(v37);
    *v39 = v22;

    (a7)(v38, 1);

    sub_11754();
  }
}

void sub_19E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *), uint64_t a10, uint64_t a11)
{
  v134 = a8;
  v142 = a10;
  v143 = a9;
  v11 = sub_73720();
  sub_5394();
  v138 = v12;
  __chkstk_darwin(v13);
  sub_198CC();
  v145 = (v14 - v15);
  v17 = __chkstk_darwin(v16);
  v136 = &v127 - v18;
  __chkstk_darwin(v17);
  v133 = &v127 - v19;
  v144 = a11;
  v20 = *(a11 + 16);
  sub_722B0();
  sub_5394();
  v131 = v21;
  __chkstk_darwin(v22);
  v130 = &v127 - v23;
  v132 = v24;
  sub_72360();
  sub_D850(&qword_A4828, qword_75BA0);
  sub_73E80();
  sub_5394();
  v140 = v26;
  v141 = v25;
  __chkstk_darwin(v25);
  v28 = sub_1B9F8(v27, v127);
  v29 = type metadata accessor for HealthNLIntent(v28);
  __chkstk_darwin(v29 - 8);
  sub_C2A4();
  v32 = v31 - v30;
  sub_72830();
  sub_5394();
  __chkstk_darwin(v33);
  sub_C2A4();
  v36 = v35 - v34;
  v37 = sub_731D0();
  sub_5394();
  v39 = v38;
  __chkstk_darwin(v40);
  sub_198CC();
  v135 = v41 - v42;
  __chkstk_darwin(v43);
  v45 = &v127 - v44;
  sub_727E0();
  v46 = sub_1BA28();
  if (v47(v46) == enum case for Parse.NLv3IntentOnly(_:))
  {
    v137 = v11;
    v48 = sub_1BA28();
    v49(v48);
    (*(v39 + 32))(v45, v36, v37);
    v128 = v39;
    (*(v39 + 16))(v32, v45, v37);
    v50 = *(v144 + 32);
    v51 = sub_33D50(v20, v20, v50);
    v129 = v45;
    v145 = v51;
    v136 = v37;
    sub_BFD8(v32);
    sub_506C(&qword_A4D00, &unk_760B0);
    v84 = sub_72440();
    v85 = sub_114FC(v84);
    v86 = 0;
    v87 = v144;
    while (v85 != v86)
    {
      if ((v84 & 0xC000000000000001) != 0)
      {
        v88 = sub_73B70();
      }

      else
      {
        if (v86 >= *(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        v88 = *(v84 + 8 * v86 + 32);
      }

      v89 = v88;
      if (__OFADD__(v86, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v146 = v86;
      v147 = v88;
      if (sub_1AB44(&v146, v145, v20, *(v87 + 24), v50))
      {

        v148 = sub_506C(&qword_A4D10, qword_78610);
        v146 = v86;
        v147 = v89;
        v111 = v89;
        v112 = v145;
        v113 = v130;
        sub_722A0();
        v114 = v139;
        v115 = v132;
        sub_72350();
        (*(v131 + 8))(v113, v115);
        v116 = v141;
        swift_storeEnumTagMultiPayload();
        v143(v114);

        (*(v140 + 8))(v114, v116);
        (*(v128 + 8))(v129, v136);
        goto LABEL_20;
      }

      ++v86;
    }

    v90 = type metadata accessor for HealthFlowError();
    sub_14F70(v90);
    v91 = sub_B5BC(5);
    v92 = sub_736E0();
    sub_7EEC(v92, &v146);
    v93 = v137;
    v94 = v138;
    v95 = v133;
    (*(v138 + 16))(v133, v92, v137);

    v96 = sub_73710();
    v97 = sub_73980();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = sub_1BA10();
      v99 = sub_14F44();
      v100 = sub_14F88();
      v149[0] = v100;
      *v98 = 136315394;
      v101 = sub_73ED0();
      v103 = sub_19144(v101, v102, v149);

      *(v98 + 4) = v103;
      *(v98 + 12) = 2112;
      sub_1B9A0();
      v106 = sub_1B78C(v104, v105, &unk_7567C);
      sub_1B9B8(v106);
      *v107 = v91;

      v108 = _swift_stdlib_bridgeErrorToNSError();
      *(v98 + 14) = v108;
      *v99 = v108;
      sub_1BA34(&dword_0, v109, v110, "%s Error: %@");
      sub_AEF4(v99, &qword_A4060, &qword_75440);
      sub_7EBC(v99);
      sub_AE38(v100);
      sub_7EBC(v100);
      sub_7EBC(v98);

      (*(v138 + 8))(v133, v93);
    }

    else
    {

      (*(v94 + 8))(v95, v93);
    }

    v117 = v143;
    v119 = v140;
    v118 = v141;
    v120 = v139;
    v121 = v129;
    v122 = v128;
    sub_1B9A0();
    sub_1B78C(v123, v124, &unk_7567C);
    v125 = swift_allocError();
    *v126 = v91;
    *v120 = v125;
    swift_storeEnumTagMultiPayload();

    v117(v120);

    (*(v119 + 8))(v120, v118);
    (*(v122 + 8))(v121, v136);
  }

  else
  {
    v52 = sub_1BA28();
    v53(v52);
    v54 = type metadata accessor for HealthFlowError();
    sub_14F70(v54);
    v55 = sub_B5BC(0);
    v56 = sub_736E0();
    sub_7EEC(v56, &v146);
    v57 = v138;
    (*(v138 + 16))(v145, v56, v11);

    v58 = sub_73710();
    v59 = v11;
    v60 = sub_73980();

    v61 = v57;
    if (os_log_type_enabled(v58, v60))
    {
      v62 = sub_1BA10();
      v63 = sub_14F44();
      v64 = sub_14F88();
      v137 = v59;
      v65 = v64;
      v149[0] = v64;
      *v62 = 136315394;
      v66 = sub_73ED0();
      v68 = sub_19144(v66, v67, v149);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2112;
      sub_1B9A0();
      v71 = sub_1B78C(v69, v70, &unk_7567C);
      sub_1B9B8(v71);
      *v72 = v55;

      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 14) = v73;
      *v63 = v73;
      sub_1BA34(&dword_0, v74, v75, "%s Error: %@");
      sub_AEF4(v63, &qword_A4060, &qword_75440);
      sub_7EBC(v63);
      sub_AE38(v65);
      sub_7EBC(v65);
      sub_7EBC(v62);

      (*(v61 + 8))(v145, v137);
    }

    else
    {

      (*(v57 + 8))(v145, v59);
    }

    v76 = v141;
    v78 = v139;
    v77 = v140;
    sub_1B9A0();
    v81 = sub_1B78C(v79, v80, &unk_7567C);
    v82 = sub_1B9B8(v81);
    *v83 = v55;
    *v78 = v82;
    swift_storeEnumTagMultiPayload();

    v143(v78);

    (*(v77 + 8))(v78, v76);
  }

LABEL_20:
  sub_11754();
}

uint64_t sub_1AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [*(a1 + 8) spokenPhrase];
  v8 = sub_73790();
  v10 = v9;

  v11 = (*(a5 + 24))(a3, a5);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 spokenPhrase];

    v14 = sub_73790();
    v16 = v15;

    if (v8 == v14 && v10 == v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_73DB0();
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void sub_1AC58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void (*a8)(void), uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v93 = a1;
  v96 = a7;
  v97 = a9;
  v15 = sub_506C(&unk_A6CD0, &unk_75B80);
  __chkstk_darwin(v15 - 8);
  sub_1B9F8(v16, v89);
  v17 = sub_721F0();
  sub_5394();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_C2A4();
  v94 = (v22 - v21);
  v98 = sub_73720();
  sub_5394();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_198CC();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v31 = &v89 - v30;

  v32 = sub_453DC(a3, a4);
  if (v32 == 5)
  {
    v33 = type metadata accessor for HealthFlowError();
    sub_14F70(v33);
    v34 = sub_B5BC(2);
    v35 = sub_736E0();
    sub_7EEC(v35, v101);
    (*(v24 + 16))(v28, v35, v98);

    v36 = sub_73710();
    v37 = sub_73980();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_1BA10();
      v92 = a8;
      v39 = v38;
      v40 = sub_14F44();
      v96 = sub_14F88();
      v99[0] = v96;
      *v39 = 136315394;
      v41 = sub_73ED0();
      v43 = sub_19144(v41, v42, v99);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2112;
      sub_1B9A0();
      v46 = sub_1B78C(v44, v45, &unk_7567C);
      sub_1B9D8(v46);
      *v47 = v34;

      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v48;
      *v40 = v48;
      _os_log_impl(&dword_0, v36, v37, "%s Error: %@", v39, 0x16u);
      sub_AEF4(v40, &qword_A4060, &qword_75440);
      sub_7EBC(v40);
      v49 = v96;
      sub_AE38(v96);
      sub_7EBC(v49);
      v50 = v39;
      a8 = v92;
      sub_7EBC(v50);
    }

    (*(v24 + 8))(v28, v98);
    sub_1B9A0();
    v53 = sub_1B78C(v51, v52, &unk_7567C);
    v54 = sub_1B9D8(v53);
    *v55 = v34;
    v99[0] = v54;
    v100 = 1;

    a8(v99);

    sub_AEF4(v99, &qword_A4810, &unk_760A0);
    goto LABEL_19;
  }

  v56 = v32;
  v91 = v17;
  v57 = sub_736E0();
  sub_7EEC(v57, v101);
  (*(v24 + 16))(v31, v57, v98);
  v58 = sub_73710();
  v59 = sub_73970();
  v60 = os_log_type_enabled(v58, v59);
  v89 = v11;
  v90 = v19;
  if (v60)
  {
    v61 = sub_1BA10();
    v62 = swift_slowAlloc();
    v99[0] = v62;
    *v61 = 136315394;
    v63 = sub_73ED0();
    v65 = sub_19144(v63, v64, v99);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    v66 = sub_45428(v56);
    v68 = sub_19144(v66, v67, v99);

    *(v61 + 14) = v68;
    _os_log_impl(&dword_0, v58, v59, "%s Generating prompt to disambiguate %s", v61, 0x16u);
    swift_arrayDestroy();
    sub_7EBC(v62);
    sub_7EBC(v61);
  }

  (*(v24 + 8))(v31, v98);
  v69 = sub_506C(&qword_A4D00, &unk_760B0);
  v70 = sub_72440();
  v71 = sub_114FC(v70);
  if (!v71)
  {

    v74 = _swiftEmptyArrayStorage;
LABEL_18:
    v83 = v94;
    sub_3727C(v74);

    type metadata accessor for DisambiguationStrategyHelper();
    sub_72440();
    sub_72840();
    v84 = sub_31CE8();

    sub_AE38(v99);
    v85 = v89[3];
    v86 = v89[4];
    sub_7C78(v89, v85);
    v87 = v95;
    v88 = (*(v86 + 16))(v85, v86);
    __chkstk_darwin(v88);
    *(&v89 - 2) = v84;
    *(&v89 - 1) = v83;
    sub_541F4(sub_1B784, v99);
    a8(v99);

    sub_AEF4(v99, &qword_A4810, &unk_760A0);
    sub_AEF4(v87, &unk_A6CD0, &unk_75B80);
    (*(v90 + 8))(v83, v91);
LABEL_19:
    sub_11754();
    return;
  }

  v72 = v71;
  v99[0] = _swiftEmptyArrayStorage;
  sub_401D0();
  if ((v72 & 0x8000000000000000) == 0)
  {
    v98 = v69;
    v92 = a8;
    v73 = 0;
    v74 = v99[0];
    do
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        sub_1BA28();
        v75 = sub_73B70();
      }

      else
      {
        v75 = *(v70 + 8 * v73 + 32);
      }

      v76 = v75;
      v77 = [v75 spokenPhrase];
      v78 = sub_73790();
      v80 = v79;

      v99[0] = v74;
      v81 = v74[2];
      if (v81 >= v74[3] >> 1)
      {
        sub_401D0();
        v74 = v99[0];
      }

      ++v73;
      v74[2] = v81 + 1;
      v82 = &v74[2 * v81];
      v82[4] = v78;
      v82[5] = v80;
    }

    while (v72 != v73);

    a8 = v92;
    goto LABEL_18;
  }

  __break(1u);
}