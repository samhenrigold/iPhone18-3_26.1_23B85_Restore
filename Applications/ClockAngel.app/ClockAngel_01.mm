double sub_100023618(uint64_t *a1)
{
  v2 = type metadata accessor for FullAmbientSnoozeCountdown(0);
  sub_100025B1C((a1 + *(v2 + 28)), *(a1 + *(v2 + 28) + 24));
  return sub_100076EA4(*a1, a1[1]);
}

uint64_t sub_100023660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a1;
  v49 = a2;
  v2 = type metadata accessor for Color.RGBColorSpace();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_1000032D4(&qword_100115250, &qword_1000D23F8);
  v4 = __chkstk_darwin(v44);
  v48 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v41[-v6];
  v52 = 0x657A6F6F6E53;
  v53 = 0xE600000000000000;
  sub_100025FB4();
  v50 = StringProtocol.localizedUppercase.getter();
  v51 = v8;
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Color.secondary.getter();
  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;

  sub_100025B0C(v9, v11, v13 & 1);

  if (qword_1001136B8 != -1)
  {
    swift_once();
  }

  v19 = Text.font(_:)();
  v21 = v20;
  v42 = v22;
  v24 = v23;
  sub_100025B0C(v14, v16, v18 & 1);

  v25 = *(type metadata accessor for FullAmbientSnoozeCountdown(0) + 24);
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 16))(v7, v43 + v25, v26);
  static Font.Weight.semibold.getter();
  v28 = v27;
  v29 = static Color.white.getter();
  v30 = type metadata accessor for RunningCountdownView(0);
  v7[v30[5]] = 0;
  *&v7[v30[6]] = 0x4067C00000000000;
  *&v7[v30[7]] = v28;
  *&v7[v30[8]] = v29;
  v7[v30[9]] = 1;
  v7[v30[10]] = 1;
  type metadata accessor for EnvironmentDelegate(0);
  sub_100025228(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);
  v31 = StateObject.wrappedValue.getter();
  v32 = static ObservableObject.environmentStore.getter();
  v33 = &v7[*(sub_1000032D4(&qword_100113FD8, &qword_1000D63D0) + 36)];
  *v33 = v32;
  v33[1] = v31;
  (*(v46 + 104))(v45, enum case for Color.RGBColorSpace.sRGBLinear(_:), v47);
  v34 = Color.init(_:white:opacity:)();
  v35 = &v7[*(v44 + 36)];
  *v35 = v34;
  v35[1] = 0x3FF0000000000000;
  v35[2] = 0;
  v35[3] = 0;
  v36 = v48;
  sub_10002CFC4(v7, v48, &qword_100115250, &qword_1000D23F8);
  v37 = v49;
  *v49 = v19;
  v37[1] = v21;
  v38 = v42 & 1;
  *(v37 + 16) = v42 & 1;
  v37[3] = v24;
  v39 = sub_1000032D4(&qword_100115258, &qword_1000D2400);
  sub_10002CFC4(v36, v37 + *(v39 + 48), &qword_100115250, &qword_1000D23F8);
  sub_100025AFC(v19, v21, v38);

  sub_10002D02C(v7, &qword_100115250, &qword_1000D23F8);
  sub_10002D02C(v36, &qword_100115250, &qword_1000D23F8);
  sub_100025B0C(v19, v21, v38);
}

uint64_t sub_100023B54@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  *a5 = a1();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  sub_1000032D4(a2, a3);
  return a4(v5);
}

__n128 sub_100023C2C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100023C50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100023C98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100023D00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_100023D14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100023D5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100023DB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100023DCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100023E14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100023E68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100023EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100023FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AlarmPresentationState();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_10002409C(uint64_t a1)
{
  type metadata accessor for AlarmPresentationState();
  if (v1 <= 0x3F)
  {
    sub_1000289D8(319, &qword_100113C70, &type metadata for AlarmType, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000289D8(319, &unk_100113C78, &type metadata for Color, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AlarmKitButton.SizeCategory(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AlarmKitButton.SizeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10002423C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100024254(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100024298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100024368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AlarmPresentationState();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_100024440(uint64_t a1)
{
  type metadata accessor for AlarmPresentationState();
  if (v1 <= 0x3F)
  {
    sub_1000289D8(319, &qword_100113C70, &type metadata for AlarmType, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100024508();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100024508()
{
  result = qword_100113D20;
  if (!qword_100113D20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100113D20);
  }

  return result;
}

uint64_t sub_10002456C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AlarmButton();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100024690(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AlarmPresentationState();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AlarmButton();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000247BC(uint64_t a1)
{
  type metadata accessor for AlarmPresentationState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AlarmButton();
    if (v2 <= 0x3F)
    {
      sub_1000289D8(319, &qword_100113C70, &type metadata for AlarmType, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000289D8(319, &unk_100113C78, &type metadata for Color, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100027F54(319, &qword_100113DC0, &protocol descriptor for SessionUiConfig);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 sub_100024900(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100024914(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002495C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024B18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v5 = type metadata accessor for AlarmPresentationState();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100024C10(uint64_t a1)
{
  v2 = type metadata accessor for AlarmPresentationState();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_100095C28(v4);
}

uint64_t sub_100024CDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode);
  return result;
}

uint64_t sub_100024DB4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100024E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_100024F44()
{
  result = qword_100113E40;
  if (!qword_100113E40)
  {
    sub_10001C820(&qword_100113E38, &qword_1000D1150);
    sub_100024FFC();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113E40);
  }

  return result;
}

unint64_t sub_100024FFC()
{
  result = qword_100113E48;
  if (!qword_100113E48)
  {
    sub_10001C820(&qword_100113E50, &qword_1000D1158);
    sub_10002DAD8(&qword_100113E58, &qword_100113E60, &unk_1000D1160, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113E48);
  }

  return result;
}

unint64_t sub_1000250B4()
{
  result = qword_100113E80;
  if (!qword_100113E80)
  {
    sub_10001C820(&qword_100113E20, &qword_1000D1108);
    sub_100025140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113E80);
  }

  return result;
}

unint64_t sub_100025140()
{
  result = qword_100113E88;
  if (!qword_100113E88)
  {
    sub_10001C820(&qword_100113E90, &qword_1000D1170);
    sub_100025228(&qword_100113E98, type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable, &unk_1000D1C38);
    sub_10002DAD8(&qword_100113E58, &qword_100113E60, &unk_1000D1160, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113E88);
  }

  return result;
}

uint64_t sub_100025228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100025290()
{
  result = qword_100113EA8;
  if (!qword_100113EA8)
  {
    sub_10001C820(&qword_100113E10, &qword_1000D10F8);
    sub_100024F44();
    sub_100025228(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113EA8);
  }

  return result;
}

unint64_t sub_100025380()
{
  result = qword_100113ED0;
  if (!qword_100113ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113ED0);
  }

  return result;
}

unint64_t sub_1000253D4()
{
  result = qword_100113EE0;
  if (!qword_100113EE0)
  {
    sub_10001C820(&qword_100113EC8, &qword_1000D11D8);
    sub_100024FFC();
    sub_100025228(&qword_100113EE8, type metadata accessor for TimerRunningCompressedTrailingView, &unk_1000D60B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113EE0);
  }

  return result;
}

unint64_t sub_100025490()
{
  result = qword_100113EF0;
  if (!qword_100113EF0)
  {
    sub_10001C820(&qword_100113ED8, &qword_1000D11E0);
    sub_100025380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113EF0);
  }

  return result;
}

uint64_t sub_100025524()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100025564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000255CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100025634()
{
  result = qword_100113F38;
  if (!qword_100113F38)
  {
    sub_10001C820(&qword_100113F30, &qword_1000D1220);
    sub_100026514(&qword_100113F40, &qword_100113F28, &qword_1000D1218, sub_1000256EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F38);
  }

  return result;
}

unint64_t sub_1000256EC()
{
  result = qword_100113F48;
  if (!qword_100113F48)
  {
    sub_10001C820(&qword_100113F50, &qword_1000D1228);
    sub_1000257A8();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls, &unk_1000D1B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F48);
  }

  return result;
}

unint64_t sub_1000257A8()
{
  result = qword_100113F58;
  if (!qword_100113F58)
  {
    sub_10001C820(&qword_100113F60, &qword_1000D1230);
    sub_100025228(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView, &unk_1000D1BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F58);
  }

  return result;
}

unint64_t sub_1000258A4()
{
  result = qword_100113F78;
  if (!qword_100113F78)
  {
    sub_10001C820(&qword_100113F18, &qword_1000D1208);
    sub_100025930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F78);
  }

  return result;
}

unint64_t sub_100025930()
{
  result = qword_100113F80;
  if (!qword_100113F80)
  {
    sub_10001C820(&qword_100113F10, &qword_1000D1200);
    sub_100029AAC(&qword_100113F88, &qword_100113F90, &qword_1000D1238, sub_1000259E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F80);
  }

  return result;
}

unint64_t sub_1000259E0()
{
  result = qword_100113F98;
  if (!qword_100113F98)
  {
    sub_10001C820(&qword_100113FA0, &qword_1000D1240);
    sub_100025228(&qword_100113FA8, type metadata accessor for AlarmKitCountdownView, &unk_1000D6930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F98);
  }

  return result;
}

uint64_t sub_100025A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025AFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100025B0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_100025B1C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100025BC8()
{
  result = qword_100113FF8;
  if (!qword_100113FF8)
  {
    sub_10001C820(&qword_100113FF0, &qword_1000D1298);
    sub_100025C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113FF8);
  }

  return result;
}

unint64_t sub_100025C54()
{
  result = qword_100114000;
  if (!qword_100114000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114000);
  }

  return result;
}

uint64_t sub_100025D14()
{
  sub_100017D28((v0 + 24));
  sub_100017D28((v0 + 64));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100025DE0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100025E44()
{
  result = qword_100114048;
  if (!qword_100114048)
  {
    sub_10001C820(&qword_100114030, &qword_1000D12C8);
    sub_100025ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114048);
  }

  return result;
}

unint64_t sub_100025ED0()
{
  result = qword_100114050;
  if (!qword_100114050)
  {
    sub_10001C820(&qword_100114040, &qword_1000D1308);
    sub_10002DAD8(&qword_100114058, &qword_100114060, &unk_1000D1310, &protocol conformance descriptor for HStack<A>);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114050);
  }

  return result;
}

unint64_t sub_100025FB4()
{
  result = qword_1001197E0;
  if (!qword_1001197E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001197E0);
  }

  return result;
}

uint64_t sub_1000260F4()
{
  v1 = *(type metadata accessor for AlarmKitStopSlider(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for AlarmPresentationState();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000262C0()
{
  result = qword_1001140B0;
  if (!qword_1001140B0)
  {
    sub_10001C820(&qword_1001140A0, &qword_1000D13A8);
    sub_10002634C();
    sub_100026408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001140B0);
  }

  return result;
}

unint64_t sub_10002634C()
{
  result = qword_1001140B8;
  if (!qword_1001140B8)
  {
    sub_10001C820(&qword_100114098, &qword_1000D13A0);
    sub_100025228(&qword_1001140C0, type metadata accessor for GlassActionSlider, &unk_1000D2A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001140B8);
  }

  return result;
}

unint64_t sub_100026408()
{
  result = qword_1001140C8;
  if (!qword_1001140C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001140C8);
  }

  return result;
}

unint64_t sub_10002645C()
{
  result = qword_1001140E0;
  if (!qword_1001140E0)
  {
    sub_10001C820(&qword_1001140D8, &qword_1000D13F0);
    sub_100026514(&qword_1001140E8, &qword_1001140D0, &qword_1000D13E8, sub_100026590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001140E0);
  }

  return result;
}

uint64_t sub_100026514(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001C820(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100026590()
{
  result = qword_1001140F0;
  if (!qword_1001140F0)
  {
    sub_10001C820(&qword_1001140F8, &qword_1000D13F8);
    sub_100025C54();
    sub_100026648(&qword_100114100, &qword_100114108, &qword_1000D1400, sub_1000266FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001140F0);
  }

  return result;
}

uint64_t sub_100026648(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001C820(a2, a3);
    a4();
    sub_100025228(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000266FC()
{
  result = qword_100114110;
  if (!qword_100114110)
  {
    sub_10001C820(&qword_100114118, &qword_1000D1408);
    sub_100025228(&qword_100114120, type metadata accessor for LargeActionButton, &unk_1000D68D0);
    sub_100026408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114110);
  }

  return result;
}

uint64_t sub_100026828()
{
  v1 = (type metadata accessor for AlarmKitButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for AlarmPresentationState();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[8];
  v7 = type metadata accessor for AlarmButton();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  sub_100017D28((v0 + v3 + v1[13]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002698C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100026A24(char *a1)
{
  v3 = *(type metadata accessor for AlarmAlertCoverSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001B4F8(a1, v4);
}

unint64_t sub_100026A94()
{
  result = qword_100115ED0;
  if (!qword_100115ED0)
  {
    sub_10002BB3C(255, &qword_100115D80, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115ED0);
  }

  return result;
}

unint64_t sub_100026B28()
{
  result = qword_100114248;
  if (!qword_100114248)
  {
    sub_10001C820(&qword_1001141C0, &qword_1000D1490);
    sub_100026BB4();
    sub_100026C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114248);
  }

  return result;
}

unint64_t sub_100026BB4()
{
  result = qword_100114250;
  if (!qword_100114250)
  {
    sub_10001C820(&qword_100114258, &qword_1000D1510);
    sub_100025228(&qword_100114260, type metadata accessor for AlarmKitStopSlider, &unk_1000D0D80);
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114250);
  }

  return result;
}

unint64_t sub_100026C9C()
{
  result = qword_100114278;
  if (!qword_100114278)
  {
    sub_10001C820(&qword_100114280, &qword_1000D1520);
    sub_100025228(&qword_100114288, type metadata accessor for AlarmKitStopButton, &unk_1000D0DD0);
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114278);
  }

  return result;
}

uint64_t sub_100026D94(double a1)
{
  v3 = *(type metadata accessor for AlarmAlertCoverSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001BFBC(v4, a1);
}

unint64_t sub_100026E3C()
{
  result = qword_100114390;
  if (!qword_100114390)
  {
    sub_10001C820(&qword_100114388, &qword_1000D1638);
    sub_100026EF4();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114390);
  }

  return result;
}

unint64_t sub_100026EF4()
{
  result = qword_100114398;
  if (!qword_100114398)
  {
    sub_10001C820(&qword_1001143A0, &qword_1000D1640);
    sub_10002DAD8(&qword_1001143A8, &qword_1001143B0, &qword_1000D1648, &protocol conformance descriptor for HStack<A>);
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114398);
  }

  return result;
}

unint64_t sub_100026FD8()
{
  result = qword_1001143C8;
  if (!qword_1001143C8)
  {
    sub_10001C820(&qword_100114360, &qword_1000D15E0);
    sub_100027064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001143C8);
  }

  return result;
}

unint64_t sub_100027064()
{
  result = qword_1001143D0;
  if (!qword_1001143D0)
  {
    sub_10001C820(&qword_100114358, &qword_1000D15D8);
    sub_10002711C();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001143D0);
  }

  return result;
}

unint64_t sub_10002711C()
{
  result = qword_1001143D8;
  if (!qword_1001143D8)
  {
    sub_10001C820(&qword_100114350, &qword_1000D15D0);
    sub_1000271D4();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001143D8);
  }

  return result;
}

unint64_t sub_1000271D4()
{
  result = qword_1001143E0;
  if (!qword_1001143E0)
  {
    sub_10001C820(&qword_100114348, &qword_1000D15C8);
    swift_getOpaqueTypeConformance2();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001143E0);
  }

  return result;
}

unint64_t sub_1000272BC()
{
  result = qword_1001143F8;
  if (!qword_1001143F8)
  {
    sub_10001C820(&qword_100114328, &qword_1000D15A8);
    sub_100027348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001143F8);
  }

  return result;
}

unint64_t sub_100027348()
{
  result = qword_100114400;
  if (!qword_100114400)
  {
    sub_10001C820(&qword_100114320, &qword_1000D15A0);
    sub_1000273D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114400);
  }

  return result;
}

unint64_t sub_1000273D4()
{
  result = qword_100114408;
  if (!qword_100114408)
  {
    sub_10001C820(&qword_100114318, &qword_1000D1598);
    swift_getOpaqueTypeConformance2();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114408);
  }

  return result;
}

uint64_t sub_1000274D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OpaqueAlarm(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000275AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OpaqueAlarm(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_100027684(uint64_t a1)
{
  type metadata accessor for OpaqueAlarm(319);
  if (v1 <= 0x3F)
  {
    sub_100027C70(319, &qword_100114480, &type metadata accessor for ActivityScene, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000289D8(319, &qword_100114488, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100027790(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100027934(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AlarmPresentationState();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
  }

  else
  {
    v15 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_100027AE4(uint64_t a1)
{
  type metadata accessor for AlarmPresentationState();
  if (v1 <= 0x3F)
  {
    sub_10001C78C(319);
    if (v2 <= 0x3F)
    {
      sub_100027F54(319, &qword_100113A58, &protocol descriptor for AlarmAndTimerActionDelegate);
      if (v3 <= 0x3F)
      {
        sub_100027C70(319, &qword_100113A60, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1000289D8(319, &qword_100113A70, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_100027C70(319, &unk_100114528, type metadata accessor for WeatherDataProvider, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100027C70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100027CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OpaqueAlarm(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100027DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OpaqueAlarm(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100027E98(uint64_t a1)
{
  result = type metadata accessor for OpaqueAlarm(319);
  if (v2 <= 0x3F)
  {
    result = sub_100027F54(319, &unk_1001145E8, &protocol descriptor for AlarmActionDelegate);
    if (v3 <= 0x3F)
    {
      result = sub_100027F54(319, &qword_100113DC0, &protocol descriptor for SessionUiConfig);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100027F54(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100027FB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100027FF8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100028070(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AlarmPresentationState();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000281B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AlarmPresentationState();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000282E4(uint64_t a1)
{
  type metadata accessor for TimerAnimationCountdown(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AlarmPresentationState();
    if (v2 <= 0x3F)
    {
      sub_10001C78C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SBUISystemApertureLayoutMode(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000283AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for AlarmPresentationState();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 7)
      {
        return v14 - 6;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000284D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AlarmPresentationState();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 6;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000285E8(uint64_t a1)
{
  sub_10001C78C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AlarmPresentationState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100028688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlarmPresentationState();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000287CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlarmPresentationState();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000288FC(uint64_t a1)
{
  sub_1000289D8(319, &unk_1001147C0, &type metadata for Font, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10001C78C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AlarmPresentationState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000289D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100028A28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100028A70(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100028ACC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100028B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmKitCustomViewWrapper.Position(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmKitCustomViewWrapper.Position(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100028CD4()
{
  result = qword_100114800;
  if (!qword_100114800)
  {
    sub_10001C820(&qword_100114808, &qword_1000D17E8);
    sub_100026648(&qword_100113E78, &qword_100113E28, &qword_1000D1110, sub_1000250B4);
    sub_100025290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114800);
  }

  return result;
}

unint64_t sub_100028D90()
{
  result = qword_100114810;
  if (!qword_100114810)
  {
    sub_10001C820(&qword_100114818, &qword_1000D17F0);
    sub_1000253D4();
    sub_100025490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114810);
  }

  return result;
}

unint64_t sub_100028E20()
{
  result = qword_100114820;
  if (!qword_100114820)
  {
    sub_10001C820(&qword_100114828, &qword_1000D17F8);
    sub_10002DAD8(&qword_100114830, &qword_100113F08, &qword_1000D11F8, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114820);
  }

  return result;
}

unint64_t sub_100028ED4()
{
  result = qword_100114838;
  if (!qword_100114838)
  {
    sub_10001C820(&qword_100114840, &qword_1000D1800);
    sub_100025634();
    sub_1000258A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114838);
  }

  return result;
}

uint64_t sub_10002902C()
{
  sub_10001C820(&qword_100114030, &qword_1000D12C8);
  sub_100025E44();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100029094()
{
  result = qword_100114870;
  if (!qword_100114870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114870);
  }

  return result;
}

unint64_t sub_1000291BC()
{
  result = qword_1001148A0;
  if (!qword_1001148A0)
  {
    sub_10001C820(&qword_1001148A8, qword_1000D1828);
    sub_100029248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001148A0);
  }

  return result;
}

unint64_t sub_100029248()
{
  result = qword_1001148B0;
  if (!qword_1001148B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001148B0);
  }

  return result;
}

unint64_t sub_1000292A0()
{
  result = qword_1001148B8;
  if (!qword_1001148B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001148B8);
  }

  return result;
}

uint64_t sub_100029410(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029450(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000294B0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000295C4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1000295D8()
{
  v1 = type metadata accessor for AlarmAlertPlatter(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for OpaqueAlarm(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for AlarmPresentationState();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v9 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  sub_1000295C4(*(v5 + *(v1 + 28)), *(v5 + *(v1 + 28) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000297DC()
{
  result = qword_100114980;
  if (!qword_100114980)
  {
    sub_10001C820(&qword_100114960, &qword_1000D1D28);
    sub_10002DAD8(&qword_100114988, &qword_100114990, &qword_1000D1D48, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114980);
  }

  return result;
}

uint64_t sub_100029894()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100029910()
{
  result = qword_1001149D8;
  if (!qword_1001149D8)
  {
    sub_10001C820(&qword_1001149B0, &qword_1000D1D60);
    sub_1000299C8();
    sub_10002DAD8(&qword_100114A08, &qword_100114A10, &qword_1000D6DB0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001149D8);
  }

  return result;
}

unint64_t sub_1000299C8()
{
  result = qword_1001149E0;
  if (!qword_1001149E0)
  {
    sub_10001C820(&qword_1001149D0, &qword_1000D1D80);
    sub_10002DAD8(&qword_1001149E8, &qword_1001149F0, &qword_1000D1D88, &protocol conformance descriptor for HStack<A>);
    sub_10002DAD8(&qword_1001149F8, &qword_100114A00, &unk_1000D1D90, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001149E0);
  }

  return result;
}

uint64_t sub_100029AAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001C820(a2, a3);
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls, &unk_1000D1B98);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100029B60()
{
  result = qword_100114A40;
  if (!qword_100114A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114A40);
  }

  return result;
}

unint64_t sub_100029BE4()
{
  result = qword_100114A60;
  if (!qword_100114A60)
  {
    sub_10001C820(&qword_100114A58, &qword_1000D1DD8);
    sub_100025228(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView, &unk_1000D1BE8);
    sub_10002DAD8(&qword_100114A68, &qword_100114A70, &qword_1000D1DE0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114A60);
  }

  return result;
}

unint64_t sub_100029D04()
{
  result = qword_100114BA8;
  if (!qword_100114BA8)
  {
    sub_10001C820(&qword_100114B48, &qword_1000D1EB0);
    sub_100029DBC();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BA8);
  }

  return result;
}

unint64_t sub_100029DBC()
{
  result = qword_100114BB0;
  if (!qword_100114BB0)
  {
    sub_10001C820(&qword_100114BA0, &qword_1000D1F08);
    sub_10002DAD8(&qword_100114BB8, &qword_100114BC0, &qword_1000D1F10, &protocol conformance descriptor for VStack<A>);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BB0);
  }

  return result;
}

unint64_t sub_100029EA0()
{
  result = qword_100114BC8;
  if (!qword_100114BC8)
  {
    sub_10001C820(&qword_100114B68, &qword_1000D1ED0);
    sub_100029F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BC8);
  }

  return result;
}

unint64_t sub_100029F2C()
{
  result = qword_100114BD0;
  if (!qword_100114BD0)
  {
    sub_10001C820(&qword_100114B60, &qword_1000D1EC8);
    sub_100029FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BD0);
  }

  return result;
}

unint64_t sub_100029FB8()
{
  result = qword_100114BD8;
  if (!qword_100114BD8)
  {
    sub_10001C820(&qword_100114B58, &qword_1000D1EC0);
    sub_10001C820(&qword_100114B48, &qword_1000D1EB0);
    sub_100029D04();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BD8);
  }

  return result;
}

uint64_t sub_10002A080()
{
  v1 = type metadata accessor for AlarmAlertFullScreenAmbient(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for AlarmPresentationState();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[5];
  v7 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  sub_100017D28((v0 + v3 + v1[6]));
  v8 = v1[7];
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for Font.Context();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10002A2DC()
{
  result = qword_100114BE0;
  if (!qword_100114BE0)
  {
    sub_10001C820(&qword_100114B88, &qword_1000D1EF0);
    sub_10002A368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BE0);
  }

  return result;
}

unint64_t sub_10002A368()
{
  result = qword_100114BE8;
  if (!qword_100114BE8)
  {
    sub_10001C820(&qword_100114B80, &qword_1000D1EE8);
    sub_10002A420();
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BE8);
  }

  return result;
}

unint64_t sub_10002A420()
{
  result = qword_100114BF0;
  if (!qword_100114BF0)
  {
    sub_10001C820(&qword_100114B78, &qword_1000D1EE0);
    sub_10001C820(&qword_100114B68, &qword_1000D1ED0);
    sub_100029EA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BF0);
  }

  return result;
}

unint64_t sub_10002A51C()
{
  result = qword_100114BF8;
  if (!qword_100114BF8)
  {
    sub_10001C820(&qword_100114B38, &qword_1000D1EA0);
    sub_10002A5A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BF8);
  }

  return result;
}

unint64_t sub_10002A5A8()
{
  result = qword_100114C00;
  if (!qword_100114C00)
  {
    sub_10001C820(&qword_100114B30, &qword_1000D1E98);
    sub_10002A660();
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C00);
  }

  return result;
}

unint64_t sub_10002A660()
{
  result = qword_100114C08;
  if (!qword_100114C08)
  {
    sub_10001C820(&qword_100114B28, &qword_1000D1E90);
    sub_10002A6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C08);
  }

  return result;
}

unint64_t sub_10002A6EC()
{
  result = qword_100114C10;
  if (!qword_100114C10)
  {
    sub_10001C820(&qword_100114B20, &qword_1000D1E88);
    sub_10002A778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C10);
  }

  return result;
}

unint64_t sub_10002A778()
{
  result = qword_100114C18;
  if (!qword_100114C18)
  {
    sub_10001C820(&qword_100114B18, &qword_1000D1E80);
    sub_10002A830();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C18);
  }

  return result;
}

unint64_t sub_10002A830()
{
  result = qword_100114C20;
  if (!qword_100114C20)
  {
    sub_10001C820(&qword_100114B10, &qword_1000D1E78);
    sub_10002A8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C20);
  }

  return result;
}

unint64_t sub_10002A8BC()
{
  result = qword_100114C28;
  if (!qword_100114C28)
  {
    sub_10001C820(&qword_100114B08, &qword_1000D1E70);
    sub_10002A974();
    sub_10002DAD8(&qword_100114C48, &qword_100114C50, &qword_1000D54B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C28);
  }

  return result;
}

unint64_t sub_10002A974()
{
  result = qword_100114C30;
  if (!qword_100114C30)
  {
    sub_10001C820(&qword_100114B00, &qword_1000D1E68);
    sub_10002AA2C();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C30);
  }

  return result;
}

unint64_t sub_10002AA2C()
{
  result = qword_100114C38;
  if (!qword_100114C38)
  {
    sub_10001C820(&qword_100114AF8, &qword_1000D1E60);
    sub_10002AAE4();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C38);
  }

  return result;
}

unint64_t sub_10002AAE4()
{
  result = qword_100114C40;
  if (!qword_100114C40)
  {
    sub_10001C820(&qword_100114AF0, &qword_1000D1E58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C40);
  }

  return result;
}

void sub_10002ABA0()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = *v0;
  v9 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
  v10 = type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable(0);
  v11 = v10[5];
  v12 = type metadata accessor for AlarmPresentationState();
  (*(*(v12 - 8) + 16))(v7, &v0[v11], v12);
  v13 = v10[6];
  v14 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v14 - 8) + 16))(&v7[v9], &v0[v13], v14);
  v15 = type metadata accessor for OpaqueAlarm(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  sub_10002B138(v7, v8 + v16);
  swift_endAccess();
  if (*&v0[v10[8]] == *&v0[v10[7]])
  {
    AlarmPresentationState.mode.getter();
    v17 = (*(v2 + 88))(v4, v1);
    if (v17 == enum case for AlarmPresentationState.Mode.countdown(_:))
    {
      sub_1000BE9EC();
    }

    else if (v17 == enum case for AlarmPresentationState.Mode.paused(_:))
    {
      sub_1000BF040();
    }

    else
    {
      v20 = *(v8 + 40);
      if (v20)
      {
        [v20 invalidate];
        v21 = *(v8 + 40);
        *(v8 + 40) = 0;
      }
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v18 = *(v8 + 40);
    if (v18)
    {
      [v18 invalidate];
      v19 = *(v8 + 40);
      *(v8 + 40) = 0;
    }
  }
}

uint64_t sub_10002AFD4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002B00C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10002B070()
{
  result = qword_100114D48;
  if (!qword_100114D48)
  {
    sub_10001C820(&qword_100114D40, &qword_1000D2098);
    sub_100025228(&qword_100114D50, type metadata accessor for AlarmAlertFullScreen, &unk_1000D2228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114D48);
  }

  return result;
}

uint64_t sub_10002B138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002B1A8()
{
  result = qword_100114D80;
  if (!qword_100114D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114D80);
  }

  return result;
}

uint64_t sub_10002B210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AlarmPresentationState();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002B320(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AlarmPresentationState();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10002B428(uint64_t a1)
{
  sub_10001C78C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AlarmPresentationState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10002B4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002B580(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002B624(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100027F54(319, &unk_1001145E8, &protocol descriptor for AlarmActionDelegate);
    if (v2 <= 0x3F)
    {
      sub_100027F54(319, &qword_100113DC0, &protocol descriptor for SessionUiConfig);
      if (v3 <= 0x3F)
      {
        sub_10002B710(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002B710(uint64_t a1)
{
  if (!qword_100114E80)
  {
    type metadata accessor for EnvironmentDelegate(255);
    sub_100025228(&qword_100113FE0, type metadata accessor for EnvironmentDelegate, &unk_1000D6294);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100114E80);
    }
  }
}

uint64_t sub_10002B7B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10002B888(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002B938(uint64_t a1)
{
  sub_10002BB3C(319, &qword_100115DB0, MTAlarm_ptr);
  if (v1 <= 0x3F)
  {
    sub_100027F54(319, &unk_1001145E8, &protocol descriptor for AlarmActionDelegate);
    if (v2 <= 0x3F)
    {
      sub_100027F54(319, &qword_100113DC0, &protocol descriptor for SessionUiConfig);
      if (v3 <= 0x3F)
      {
        sub_100027C70(319, &qword_100113A60, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1000289D8(319, &qword_100113A70, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10002BB84(319, &unk_100114F30, &qword_100114D60, &qword_1000D20D0, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_100027C70(319, &unk_100114528, type metadata accessor for WeatherDataProvider, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10002BB3C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_10002BB84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10001C820(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10002BC74()
{
  result = qword_100114FC0;
  if (!qword_100114FC0)
  {
    sub_10001C820(&qword_100114940, &qword_1000D1D00);
    sub_10002BD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FC0);
  }

  return result;
}

unint64_t sub_10002BD00()
{
  result = qword_100114FC8;
  if (!qword_100114FC8)
  {
    sub_10001C820(&qword_100114938, &qword_1000D1CF8);
    sub_10002BD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FC8);
  }

  return result;
}

unint64_t sub_10002BD8C()
{
  result = qword_100114FD0;
  if (!qword_100114FD0)
  {
    sub_10001C820(&qword_100114930, &qword_1000D1CF0);
    sub_10002DAD8(&qword_100114FD8, &qword_100114948, &qword_1000D1D08, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FD0);
  }

  return result;
}

unint64_t sub_10002BE48()
{
  result = qword_100114FE0;
  if (!qword_100114FE0)
  {
    sub_10001C820(&qword_100114958, &qword_1000D1D20);
    sub_10002BED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FE0);
  }

  return result;
}

unint64_t sub_10002BED4()
{
  result = qword_100114FE8;
  if (!qword_100114FE8)
  {
    sub_10001C820(&qword_100114950, &qword_1000D1D18);
    sub_10002BF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FE8);
  }

  return result;
}

unint64_t sub_10002BF60()
{
  result = qword_100114FF0;
  if (!qword_100114FF0)
  {
    sub_10001C820(&qword_100114FF8, &qword_1000D2158);
    sub_100025228(&qword_100114998, type metadata accessor for CountdownPlatter, &unk_1000D6860);
    sub_10001C820(&qword_100114960, &qword_1000D1D28);
    sub_1000297DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FF0);
  }

  return result;
}

unint64_t sub_10002C064()
{
  result = qword_100115000;
  if (!qword_100115000)
  {
    sub_10001C820(&qword_100115008, &qword_1000D2160);
    sub_10002DAD8(&qword_100115010, &qword_100115018, &qword_1000D2168, &protocol conformance descriptor for GeometryReader<A>);
    sub_10002C11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115000);
  }

  return result;
}

unint64_t sub_10002C11C()
{
  result = qword_100115020;
  if (!qword_100115020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115020);
  }

  return result;
}

unint64_t sub_10002C174()
{
  result = qword_100115028;
  if (!qword_100115028)
  {
    sub_10001C820(&qword_100114D18, &qword_1000D2070);
    sub_10002C200();
    sub_10002C11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115028);
  }

  return result;
}

unint64_t sub_10002C200()
{
  result = qword_100115030;
  if (!qword_100115030)
  {
    sub_10001C820(&qword_100114D08, &qword_1000D2060);
    sub_10002DAD8(&qword_100115038, &qword_100114D00, &qword_1000D2058, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115030);
  }

  return result;
}

unint64_t sub_10002C2BC()
{
  result = qword_100115040;
  if (!qword_100115040)
  {
    sub_10001C820(&qword_100115048, &qword_1000D2170);
    sub_10002C348();
    sub_10002C11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115040);
  }

  return result;
}

unint64_t sub_10002C348()
{
  result = qword_100115050;
  if (!qword_100115050)
  {
    sub_10001C820(&qword_100115058, &qword_1000D2178);
    sub_10002DAD8(&qword_100115060, &qword_100115068, qword_1000D2180, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115050);
  }

  return result;
}

uint64_t sub_10002C458(uint64_t *a1)
{
  v3 = *(type metadata accessor for AlarmAlertFullScreen(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100022390(a1, v4);
}

uint64_t sub_10002C4C8()
{
  v1 = type metadata accessor for AlarmAlertFullScreen(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;

  sub_100017D28((v0 + v4 + 8));
  sub_100017D28((v0 + v4 + 48));
  v5 = *(v1 + 28);
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Font.Context();
    (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10002C7C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000032D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10002C8C4()
{
  result = qword_100115158;
  if (!qword_100115158)
  {
    sub_10001C820(&qword_1001150F8, &qword_1000D2300);
    sub_10002C97C();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115158);
  }

  return result;
}

unint64_t sub_10002C97C()
{
  result = qword_100115160;
  if (!qword_100115160)
  {
    sub_10001C820(&qword_100115150, &qword_1000D2358);
    sub_10002DAD8(&qword_100115168, &qword_100115170, &qword_1000D2360, &protocol conformance descriptor for VStack<A>);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115160);
  }

  return result;
}

unint64_t sub_10002CA60()
{
  result = qword_100115178;
  if (!qword_100115178)
  {
    sub_10001C820(&qword_100115118, &qword_1000D2320);
    sub_10002CAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115178);
  }

  return result;
}

unint64_t sub_10002CAEC()
{
  result = qword_100115180;
  if (!qword_100115180)
  {
    sub_10001C820(&qword_100115110, &qword_1000D2318);
    sub_10002CB78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115180);
  }

  return result;
}

unint64_t sub_10002CB78()
{
  result = qword_100115188;
  if (!qword_100115188)
  {
    sub_10001C820(&qword_100115108, &qword_1000D2310);
    sub_10001C820(&qword_1001150F8, &qword_1000D2300);
    sub_10002C8C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115188);
  }

  return result;
}

unint64_t sub_10002CC6C()
{
  result = qword_100115190;
  if (!qword_100115190)
  {
    sub_10001C820(&qword_100115138, &qword_1000D2340);
    sub_10002CCF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115190);
  }

  return result;
}

unint64_t sub_10002CCF8()
{
  result = qword_100115198;
  if (!qword_100115198)
  {
    sub_10001C820(&qword_100115130, &qword_1000D2338);
    sub_10002CDB0();
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115198);
  }

  return result;
}

unint64_t sub_10002CDB0()
{
  result = qword_1001151A0;
  if (!qword_1001151A0)
  {
    sub_10001C820(&qword_100115128, &qword_1000D2330);
    sub_10001C820(&qword_100115118, &qword_1000D2320);
    sub_10002CA60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001151A0);
  }

  return result;
}

uint64_t sub_10002CF3C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100025AFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10002CF80(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100025B0C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10002CFC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000032D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002D02C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000032D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002D08C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10002D0C4()
{
  v1 = (type metadata accessor for FullAmbientSnoozeCountdown(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  sub_100017D28((v0 + v3 + v1[9]));

  sub_100017D28((v0 + v3 + v1[11]));
  sub_10002B130(*(v0 + v3 + v1[12]), *(v0 + v3 + v1[12] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002D220(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_10002D29C()
{
  result = qword_100115270;
  if (!qword_100115270)
  {
    sub_10001C820(&qword_100115268, &qword_1000D2408);
    sub_10002D354();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115270);
  }

  return result;
}

unint64_t sub_10002D354()
{
  result = qword_100115278;
  if (!qword_100115278)
  {
    sub_10001C820(&qword_100115280, &qword_1000D2410);
    sub_10002DAD8(&qword_100115288, &qword_100115290, &qword_1000D2418, &protocol conformance descriptor for HStack<A>);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115278);
  }

  return result;
}

unint64_t sub_10002D438()
{
  result = qword_1001152A0;
  if (!qword_1001152A0)
  {
    sub_10001C820(&qword_100115298, &qword_1000D2420);
    sub_10002D4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001152A0);
  }

  return result;
}

unint64_t sub_10002D4C4()
{
  result = qword_1001152A8;
  if (!qword_1001152A8)
  {
    sub_10001C820(&qword_1001152B0, &qword_1000D2428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001152A8);
  }

  return result;
}

uint64_t sub_10002D540(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_10002CF3C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10002D54C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_10002CF80(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_10002D55C()
{
  result = qword_1001152B8;
  if (!qword_1001152B8)
  {
    sub_10001C820(&qword_100115078, &qword_1000D2280);
    sub_10002DAD8(&qword_1001152C0, &qword_1001152C8, &qword_1000D2430, &protocol conformance descriptor for VStack<A>);
    sub_10002DAD8(&qword_1001152D0, &qword_1001152D8, &qword_1000D2438, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001152B8);
  }

  return result;
}

unint64_t sub_10002D688()
{
  result = qword_1001152F0;
  if (!qword_1001152F0)
  {
    sub_10001C820(&qword_1001152F8, &qword_1000D2448);
    sub_10002D740();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001152F0);
  }

  return result;
}

unint64_t sub_10002D740()
{
  result = qword_100115300;
  if (!qword_100115300)
  {
    sub_10001C820(&qword_100115308, &qword_1000D2450);
    sub_10002D7F8();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115300);
  }

  return result;
}

unint64_t sub_10002D7F8()
{
  result = qword_100115310;
  if (!qword_100115310)
  {
    sub_10001C820(&qword_100115318, &qword_1000D2458);
    sub_10002D8B0();
    sub_10002DAD8(&qword_100115360, &qword_100115368, &unk_1000D2480, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115310);
  }

  return result;
}

unint64_t sub_10002D8B0()
{
  result = qword_100115320;
  if (!qword_100115320)
  {
    sub_10001C820(&qword_100115328, &qword_1000D2460);
    sub_10002D968();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115320);
  }

  return result;
}

unint64_t sub_10002D968()
{
  result = qword_100115330;
  if (!qword_100115330)
  {
    sub_10001C820(&qword_100115338, &qword_1000D2468);
    sub_100026514(&qword_100115340, &qword_100115348, &qword_1000D2470, sub_10002DA4C);
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115330);
  }

  return result;
}

unint64_t sub_10002DA4C()
{
  result = qword_100115350;
  if (!qword_100115350)
  {
    sub_10001C820(&qword_100115358, &qword_1000D2478);
    sub_10002D438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115350);
  }

  return result;
}

uint64_t sub_10002DAD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001C820(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10002DC00(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Application();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_10002DC6C(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchManager;
  if (qword_100113650 != -1)
  {
    swift_once();
  }

  v7 = qword_10011F528;
  *&v2[v6] = qword_10011F528;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch] = 0;
  v8 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;
  v9 = v7;
  *&v2[v8] = sub_100064ED0();
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_leadingPadding] = 0x4031000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_verticalPadding] = 0x4031000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_expectedApertureHeight] = 0x4055000000000000;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for SecureStopwatchController();
  v10 = objc_msgSendSuper2(&v22, "init");
  v11 = &v10[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = v10;

  v13 = objc_opt_self();
  _StringGuts.grow(_:)(27);
  v14 = [v12 description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._object = 0x80000001000D80D0;
  v19._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v19);
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  _print_unlocked<A, B>(_:_:)();

  v20 = String._bridgeToObjectiveC()();

  [v13 logInfo:{v20, a1, a2, 0, 0xE000000000000000}];

  (*((swift_isaMask & *v12) + 0x188))();
  return v12;
}

uint64_t sub_10002DF40()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002DFD4, v2, v1);
}

uint64_t sub_10002DFD4()
{

  sub_10002ECA8();
  v1 = *(v0 + 8);

  return v1();
}

id sub_10002E174(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchManager;
  if (qword_100113650 != -1)
  {
    swift_once();
  }

  v5 = qword_10011F528;
  *&v1[v4] = qword_10011F528;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch] = 0;
  v6 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;
  v7 = v5;
  *&v1[v6] = sub_100064ED0();
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_leadingPadding] = 0x4031000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_verticalPadding] = 0x4031000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_expectedApertureHeight] = 0x4055000000000000;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SecureStopwatchController();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id sub_10002E2E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchManager;
  if (qword_100113650 != -1)
  {
    swift_once();
  }

  v8 = qword_10011F528;
  *&v3[v7] = qword_10011F528;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch] = 0;
  v9 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;
  v10 = v8;
  *&v3[v9] = sub_100064ED0();
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_leadingPadding] = 0x4031000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_verticalPadding] = 0x4031000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_expectedApertureHeight] = 0x4055000000000000;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for SecureStopwatchController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

uint64_t sub_10002E4B0()
{
  v1 = v0;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(27);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x80000001000D8250;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:{v8, v4, v6}];

  v9 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v10 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v10 && (v11 = v10, v12 = dispatch thunk of StopwatchViewModel.getStopwatch()(), v11, v13 = [v12 state], v12, v13 == 1))
  {
    _StringGuts.grow(_:)(21);
    v14 = [v1 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = 0xD000000000000013;
    v18._object = 0x80000001000D8290;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    [v2 logInfo:{v19, v15, v17}];

    v20 = *(v1 + v9);
    if (!v20)
    {
      goto LABEL_8;
    }

    v21 = v20;
    dispatch thunk of StopwatchViewModel.resumeLapTimer()();
  }

  else
  {
    _StringGuts.grow(_:)(20);
    v22 = [v1 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._object = 0x80000001000D8270;
    v26._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v26);
    v27 = String._bridgeToObjectiveC()();

    [v2 logInfo:{v27, v23, v25}];

    v28 = *(v1 + v9);
    if (!v28)
    {
      goto LABEL_8;
    }

    v21 = v28;
    dispatch thunk of StopwatchViewModel.pauseLapTimer()();
  }

LABEL_8:
  v29 = *((swift_isaMask & *v1) + 0x1A8);

  return v29();
}

void sub_10002E7E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v3 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel];
  if (v3 && (v4 = v3, v5 = dispatch thunk of StopwatchViewModel.getStopwatch()(), v4, v6 = [v5 state], v5, v6 == 2))
  {
    v7 = objc_opt_self();
    _StringGuts.grow(_:)(20);
    v8 = [v1 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9._object = 0x80000001000D8230;
    v9._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v9);
    v10 = String._bridgeToObjectiveC()();

    [v7 logInfo:v10];

    v11 = *&v1[v2];
    if (!v11)
    {
      return;
    }

    v17 = v11;
    dispatch thunk of StopwatchViewModel.lapLapTimer()();
  }

  else
  {
    v12 = objc_opt_self();
    _StringGuts.grow(_:)(23);
    v13 = [v1 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14._countAndFlagsBits = 0xD000000000000015;
    v14._object = 0x80000001000D8210;
    String.append(_:)(v14);
    v15 = String._bridgeToObjectiveC()();

    [v12 logInfo:v15];

    v16 = *&v1[v2];
    if (!v16)
    {
      return;
    }

    v17 = v16;
    dispatch thunk of StopwatchViewModel.resetLapTimer()();
  }
}

void sub_10002EA74()
{
  (*((swift_isaMask & *v0) + 0x1A8))();

  sub_10002EBE0();
}

void sub_10002EAD4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v2 && (v3 = v2, v4 = dispatch thunk of StopwatchViewModel.getStopwatch()(), v3, v5 = [v4 state], v4, v5 == 1))
  {
    v6 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage);
    if (!v6)
    {
      return;
    }
  }

  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  [v7 setState:?];
}

void sub_10002EBE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView);
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  v10 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView);
  if (!v2)
  {
    v8 = v1;
    goto LABEL_6;
  }

  v3 = v1;
  v4 = v2;
  v5 = dispatch thunk of StopwatchViewModel.getStopwatch()();

  v6 = [v5 state];
  if (v6 != 2)
  {
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  v9 = v10[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode];
  v10[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode] = v7;
  sub_10005F9D8(v9);
}

void sub_10002ECA8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId];
  v3 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId + 8];
  if (v3)
  {
    v4 = *v2;
    v5 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchManager];

    v6 = [v5 getStopwatches];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 reschedule:{objc_msgSend(objc_opt_self(), "mainThreadScheduler")}];

      swift_unknownObjectRelease();
      v9 = swift_allocObject();
      v9[2] = v1;
      v9[3] = v4;
      v9[4] = v3;
      v24 = sub_100031C4C;
      v25 = v9;
      aBlock = _NSConcreteStackBlock;
      v21 = 1107296256;
      v22 = sub_10002F390;
      v23 = &unk_1001008B8;
      v10 = _Block_copy(&aBlock);
      v11 = v1;

      v12 = [v8 addCompletionBlock:v10];
      _Block_release(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = objc_opt_self();
    _StringGuts.grow(_:)(27);
    v14 = [v1 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    aBlock = v15;
    v21 = v17;
    v18._object = 0x80000001000D8160;
    v18._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    [v13 logInfo:v19];
  }
}

void sub_10002EF18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v6 = objc_opt_self();
    swift_errorRetain();
    _StringGuts.grow(_:)(32);
    v7 = [a3 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    String.append(_:)(v11);

    v12._object = 0x80000001000D81F0;
    v12._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v12);
    sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
    _print_unlocked<A, B>(_:_:)();
    v13 = String._bridgeToObjectiveC()();

    [v6 logInfo:v13];
  }

  else
  {
    if (a1)
    {
      sub_10002BB3C(0, &qword_100115498, MTStopwatch_ptr);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    v14 = objc_opt_self();
    _StringGuts.grow(_:)(32);
    v15 = [a3 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16._countAndFlagsBits = 0xD00000000000001ELL;
    v16._object = 0x80000001000D81A0;
    String.append(_:)(v16);
    v18 = String._bridgeToObjectiveC()();

    [v14 logInfo:{v18, v17}];
  }
}

void sub_10002F390(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10002F41C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v53 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v54 = v50 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = v50 - v11;
  __chkstk_darwin(v10);
  v52 = v50 - v13;
  [a1 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002BB3C(0, &qword_100115490, MTMutableStopwatch_ptr);
  if (swift_dynamicCast())
  {
    v14 = v56;
  }

  else
  {
    v14 = 0;
  }

  v15 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch;
  v16 = *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch];
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch] = v14;
  v17 = v14;

  v18 = *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchManager];
  v19 = objc_allocWithZone(DefaultDateProvider);
  v20 = v18;
  [v19 init];
  objc_allocWithZone(type metadata accessor for StopwatchViewModel());
  v21 = v2;
  v22 = v15;
  v23 = StopwatchViewModel.init(stopwatch:manager:delegate:dateProvider:registerForNotifications:broadcastUpdates:)();
  v24 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v25 = *&v21[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel];
  *&v21[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel] = v23;

  v55 = v2;
  v26 = *&v2[v22];
  if (!v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;

  v28 = [v26 state];
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v28;
  static Published.subscript.setter();
  v29 = *&v55[v22];
  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v29 offset];
  v31 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v31;
  static Published.subscript.setter();
  v32 = *&v55[v22];
  if (!v32)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = [v32 startDate];
  if (v33)
  {
    v34 = v33;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = v52;
    (*(v5 + 32))(v52, v12, v4);
    v50[3] = v27;
    v51 = v22;
    v36 = *(v5 + 16);
    v37 = v54;
    v36(v54, v35, v4);
    v50[2] = swift_getKeyPath();
    v50[1] = swift_getKeyPath();
    v36(v53, v37, v4);
    v22 = v51;

    static Published.subscript.setter();
    v38 = *(v5 + 8);
    v38(v37, v4);
    v38(v35, v4);
  }

  v39 = *&v55[v22];
  if (v39 && [v39 state] == 2)
  {
    v40 = *&v21[v24];
    if (!v40)
    {
      goto LABEL_16;
    }

    v41 = v40;
    dispatch thunk of StopwatchViewModel.updateWithDisplayLink()();
  }

  else
  {
    v42 = *&v21[v24];
    if (!v42)
    {
      goto LABEL_16;
    }

    v41 = v42;
    dispatch thunk of StopwatchViewModel.updateTime()();
  }

LABEL_16:
  v43 = v55;
  (*((swift_isaMask & *v21) + 0x1A0))();
  v44 = *&v43[v22];
  if (!v44)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v45 = [v44 laps];
  if (v45)
  {
    v46 = v45;
    sub_10002BB3C(0, &qword_100115488, NSNumber_ptr);
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v47 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!__OFADD__(v48, 1))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v57 = (v48 + 1);
      v49 = static Published.subscript.setter();
      (*((swift_isaMask & *v21) + 0x1C8))(v49);
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
}

void sub_10002F9F8()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v2 - 8);
  v3 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  sub_10002BB3C(0, &qword_100114D78, UIColor_ptr);
  static Color.orange.getter();
  Color.opacity(_:)();

  v4 = UIColor.init(_:)();
  [v3 setBaseBackgroundColor:v4];

  sub_10002BB3C(0, &qword_1001197F0, SBUISystemApertureButton_ptr);
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = UIButton.init(configuration:primaryAction:)();
  v6 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton;
  v7 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton);
  *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton) = v5;
  v8 = v5;

  v9 = [v8 layer];
  [v9 setCornerRadius:(*((swift_isaMask & *v1) + 0x178))() * 0.5];

  v10 = *(v1 + v6);
  if (!v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = [v10 layer];
  [v11 setMasksToBounds:1];

  v12 = *(v1 + v6);
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = *(v1 + v6);
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v13 addTarget:v1 action:"playPausedAction" forControlEvents:64];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!*(v1 + v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  [v14 addSubview:?];

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v18 = objc_allocWithZone(BSUICAPackageView);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithPackageName:v19 inBundle:v17];

  v21 = objc_opt_self();
  if (!v20)
  {
    _StringGuts.grow(_:)(50);
    v43 = [v1 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v44._countAndFlagsBits = 0xD000000000000030;
    v44._object = 0x80000001000D80F0;
    String.append(_:)(v44);
    v42 = String._bridgeToObjectiveC()();

    [v21 logInfo:v42];

    goto LABEL_12;
  }

  v45 = v3;
  _StringGuts.grow(_:)(34);
  v22 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v23._object = 0x80000001000D8130;
  v23._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v23);
  v24 = String._bridgeToObjectiveC()();

  [v21 logInfo:v24];

  v25 = *(v1 + v6);
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = v20;
  [v25 addSubview:v26];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 setUserInteractionEnabled:0];
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000D24B0;
  v28 = [v26 widthAnchor];
  v29 = [v28 constraintEqualToConstant:23.0];

  *(v27 + 32) = v29;
  v30 = [v26 heightAnchor];

  v31 = [v30 constraintEqualToConstant:23.0];
  *(v27 + 40) = v31;
  v32 = [v26 centerXAnchor];

  v33 = *(v1 + v6);
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = [v33 centerXAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];

  *(v27 + 48) = v35;
  v36 = [v26 centerYAnchor];

  v37 = *(v1 + v6);
  if (v37)
  {
    v38 = objc_opt_self();
    v39 = [v37 centerYAnchor];
    v40 = [v36 constraintEqualToAnchor:v39];

    *(v27 + 56) = v40;
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v38 activateConstraints:isa];

    v42 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage);
    *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage) = v20;
LABEL_12:

    return;
  }

LABEL_20:
  __break(1u);
}

void sub_1000300E0()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v2 - 8);
  sub_10002BB3C(0, &qword_1001197F0, SBUISystemApertureButton_ptr);
  v3 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = UIButton.init(configuration:primaryAction:)();
  v5 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton;
  v6 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton);
  *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton) = v4;
  v7 = v4;

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *(v1 + v5);
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = [v8 layer];
  [v9 setCornerRadius:(*((swift_isaMask & *v1) + 0x178))() * 0.5];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!*(v1 + v5))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v10 addSubview:?];

  v12 = objc_allocWithZone(type metadata accessor for SpinnyResetView());
  v13 = sub_10005F050(0.0, 0.0, 50.0, 50.0, 23.0, 25.0);
  v14 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView;
  v15 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView);
  *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView) = v13;

  v16 = *(v1 + v5);
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10002BB3C(0, &unk_100119080, UIAction_ptr);
  *(swift_allocObject() + 16) = v1;
  v17 = v1;
  v18 = v16;
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v18 addAction:v19 forControlEvents:64];

  v20 = *(v1 + v5);
  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1 + v14))
  {
    [v20 addSubview:?];
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1000303D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView);
  if (v2)
  {
    if ((*(v2 + OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode) & 1) == 0)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      v4 = objc_allocWithZone(UIViewPropertyAnimator);
      v8[4] = sub_100031BEC;
      v8[5] = v3;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10004B270;
      v8[3] = &unk_100100868;
      v5 = _Block_copy(v8);
      v6 = v2;

      v7 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:1.0];
      _Block_release(v5);
      [v7 startAnimation];
    }

    sub_10002E7E0();
  }

  else
  {
    __break(1u);
  }
}

id sub_100030554(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SecureStopwatchController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100030770()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of StopwatchViewModel.invalidateDisplayLink()();

    v5 = *(v1 + v2);
    if (v5)
    {
      v6 = v5;
      dispatch thunk of StopwatchViewModel.updateWithDisplayLink()();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v7 = static Published.subscript.setter();
  return (*((swift_isaMask & *v1) + 0x1A0))(v7);
}

void sub_1000308BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of StopwatchViewModel.invalidateDisplayLink()();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v5 = static Published.subscript.setter();
  v6 = *(v1 + v2);
  if (v6)
  {
    v7 = v6;
    v8 = dispatch thunk of StopwatchViewModel.getStopwatch()();

    [v8 offset];
    v9 = *(v1 + v2);

    if (v9)
    {
      v10 = v9;
      v11 = dispatch thunk of StopwatchViewModel.getStopwatch()();

      [v11 previousLapsTotalInterval];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v5 = static Published.subscript.setter();
  }

  (*((swift_isaMask & *v1) + 0x1A0))(v5);
  v12 = *(v1 + v2);
  if (v12)
  {
    v13 = v12;
    dispatch thunk of StopwatchViewModel.updateTime()();
  }
}

void sub_100030AC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v0;
  v3 = v1;
  v4 = dispatch thunk of StopwatchViewModel.getStopwatch()();

  v5 = [v4 laps];
  if (v5)
  {
    sub_10002BB3C(0, &qword_100115488, NSNumber_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = v2;

    if (!__OFADD__(v7, 1))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
LABEL_7:
      (*((swift_isaMask & *v0) + 0x1E8))();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100030D0C()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v3 = __chkstk_darwin(v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v26 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v14 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v14)
  {
    v15 = v14;
    dispatch thunk of StopwatchViewModel.invalidateDisplayLink()();

    v16 = *(v1 + v13);
    if (v16)
    {
      v17 = v16;
      dispatch thunk of StopwatchViewModel.updateWithDisplayLink()();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v29 = 2;

  static Published.subscript.setter();
  v18 = *(v1 + v13);
  if (v18)
  {

    v19 = v18;
    v20 = dispatch thunk of StopwatchViewModel.getStopwatch()();

    v21 = [v20 startDate];
    if (v21)
    {
      v22 = v27;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = 0;
    }

    else
    {
      v23 = 1;
      v22 = v27;
    }

    (*(v8 + 56))(v22, v23, 1, v7);
    sub_10003174C(v22, v6);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v12, v6, v7);
      goto LABEL_13;
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  Date.init()();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_10002D02C(v6, &qword_100115E40, &unk_1000D1280);
  }

LABEL_13:
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v8 + 16))(v28, v12, v7);
  static Published.subscript.setter();
  v24 = (*(v8 + 8))(v12, v7);
  return (*((swift_isaMask & *v1) + 0x1A0))(v24);
}

void sub_1000311B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(*v3 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v4)
  {
    v6 = v4;
    a3();
  }
}

void sub_100031224()
{
  v1 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton;
  if (!*(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton))
  {
    v2 = (*((swift_isaMask & *v0) + 0x1D0))();
    (*((swift_isaMask & *v0) + 0x1D8))(v2);
  }

  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D24C0;
  v4 = *(v0 + v1);
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = [v4 leadingAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6;
  v8 = [v6 leadingAnchor];

  v9 = [v5 constraintEqualToAnchor:v8 constant:17.0];
  *(v3 + 32) = v9;
  v10 = *(v0 + v1);
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = [v10 trailingAnchor];
  v12 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton;
  v13 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton);
  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = [v13 leadingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14 constant:-(*((swift_isaMask & *v0) + 0x170))()];

  *(v3 + 40) = v15;
  v16 = *(v0 + v1);
  if (!v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = [v16 widthAnchor];
  v18 = (*((swift_isaMask & *v0) + 0x178))();
  v19 = [v17 constraintEqualToConstant:?];

  *(v3 + 48) = v19;
  v20 = *(v0 + v1);
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = [v20 heightAnchor];
  v22 = [v21 constraintEqualToConstant:v18];

  *(v3 + 56) = v22;
  v23 = *(v0 + v1);
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = [v23 centerYAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = v25;
  v27 = [v25 centerYAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v3 + 64) = v28;
  v29 = *(v0 + v12);
  if (!v29)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = [v29 widthAnchor];
  v31 = [v30 constraintEqualToConstant:v18];

  *(v3 + 72) = v31;
  v32 = *(v0 + v12);
  if (!v32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = [v32 heightAnchor];
  v34 = [v33 constraintEqualToConstant:v18];

  *(v3 + 80) = v34;
  v35 = *(v0 + v12);
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = [v35 centerYAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v38 = v37;
  v39 = objc_opt_self();
  v40 = [v38 centerYAnchor];

  v41 = [v36 constraintEqualToAnchor:v40];
  *(v3 + 88) = v41;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v39 activateConstraints:isa];
}

uint64_t sub_10003174C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000317D4(char a1, double a2, double a3, double a4, double a5)
{
  v6 = FormatTime();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = FormatTime();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = FormatTime();
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = FormatTime();
  if (!v18)
  {
    v21 = 0;
    if (a1)
    {
      goto LABEL_12;
    }

LABEL_16:
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();

    result = static Published.subscript.setter();
    if (v17)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      result = static Published.subscript.setter();
      if (v21)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        result = static Published.subscript.setter();
        if (v9)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          result = static Published.subscript.setter();
          if (v13)
          {

            swift_getKeyPath();
            swift_getKeyPath();
            return static Published.subscript.setter();
          }

          goto LABEL_24;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  v19 = v18;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if ((a1 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
}

uint64_t sub_100031BAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031C0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031C58()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100031D4C;

  return sub_10002DF20(a1, v4, v5, v6);
}

uint64_t sub_100031D4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t getEnumTagSinglePayload for GlassActionSlider.HapticPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassActionSlider.HapticPhase(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100031FB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedStringResource();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000032D4(&qword_1001154A0, qword_1000D2830);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000320FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedStringResource();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000032D4(&qword_1001154A0, qword_1000D2830);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10003224C(uint64_t a1)
{
  type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    sub_1000323F8(319);
    if (v2 <= 0x3F)
    {
      sub_100038140(319, &qword_100115520, &type metadata for Double, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10003245C(319, &qword_100115528, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10003245C(319, &qword_100115530, type metadata accessor for CGSize, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_100038140(319, &unk_100115538, &type metadata for GlassActionSlider.HapticPhase, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000323F8(uint64_t a1)
{
  if (!qword_100115510)
  {
    sub_10001C820(&qword_100115518, &qword_1000D2868);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100115510);
    }
  }
}

void sub_10003245C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1000324D0()
{
  result = [objc_opt_self() systemFontOfSize:26.0];
  qword_10011F340 = result;
  return result;
}

void *sub_100032510()
{
  v1 = type metadata accessor for GlassActionSlider(0);
  sub_1000032D4(&qword_100115628, &qword_1000D2B40);
  result = State.wrappedValue.getter();
  if (v7 < 0.0 || v7 > 1.0)
  {
    State.wrappedValue.getter();
    v4 = v7;
    if (v7 < 0.0)
    {
      v4 = 0.0;
    }

    if (v4 > 1.0)
    {
      v4 = 1.0;
    }

    v7 = v4;
    State.wrappedValue.setter();
    result = sub_100032510();
  }

  v5 = *(v0 + *(v1 + 36));
  if (v5)
  {
    v6 = State.wrappedValue.getter();
    return v5(v6, v7);
  }

  return result;
}

uint64_t sub_100032638@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v67 = type metadata accessor for SensoryFeedback();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityActionKind();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v61 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for AccessibilityChildBehavior();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GlassActionSlider(0);
  v11 = *(v10 - 8);
  v68 = v10 - 8;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v50 = v12;
  v13 = sub_1000032D4(&qword_1001155B0, &qword_1000D2AE0);
  __chkstk_darwin(v13);
  v15 = (&v46 - v14);
  v53 = sub_1000032D4(&qword_1001155B8, &qword_1000D2AE8);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v48 = &v46 - v16;
  v57 = sub_1000032D4(&qword_1001155C0, &qword_1000D2AF0);
  v17 = __chkstk_darwin(v57);
  v51 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v54 = &v46 - v19;
  *v15 = static Alignment.leading.getter();
  v15[1] = v20;
  v21 = sub_1000032D4(&qword_1001155C8, &unk_1000D2AF8);
  sub_100032DC8(v1, v15 + *(v21 + 44));
  v22 = v1;
  v47 = v1;
  v23 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v23;
  sub_100037684(v22, v23, type metadata accessor for GlassActionSlider);
  v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v25 = swift_allocObject();
  sub_100037CF8(v23, v25 + v24, type metadata accessor for GlassActionSlider);
  v26 = (v15 + *(v13 + 36));
  *v26 = sub_100034000;
  v26[1] = 0;
  v26[2] = sub_100036FE0;
  v26[3] = v25;
  static AccessibilityChildBehavior.ignore.getter();
  v27 = sub_100037050();
  View.accessibilityElement(children:)();
  (*(v52 + 8))(v9, v56);
  sub_10002D02C(v15, &qword_1001155B0, &qword_1000D2AE0);
  (*(v59 + 16))(v58, &v2[*(v68 + 32)], v60);
  v28 = Text.init(_:)();
  v30 = v29;
  v32 = v31;
  v69 = v13;
  v70 = v27;
  swift_getOpaqueTypeConformance2();
  v33 = v51;
  v34 = v53;
  v35 = v48;
  View.accessibilityLabel(_:)();
  sub_100025B0C(v28, v30, v32 & 1);

  (*(v55 + 8))(v35, v34);
  v36 = v47;
  v37 = v49;
  sub_100037684(v47, v49, type metadata accessor for GlassActionSlider);
  v38 = swift_allocObject();
  sub_100037CF8(v37, v38 + v24, type metadata accessor for GlassActionSlider);
  v39 = v61;
  static AccessibilityActionKind.default.getter();
  v40 = v54;
  ModifiedContent<>.accessibilityAction(_:_:)();

  (*(v62 + 8))(v39, v63);
  sub_10002D02C(v33, &qword_1001155C0, &qword_1000D2AF0);
  v41 = v64;
  static SensoryFeedback.success.getter();
  v42 = v36 + *(v68 + 60);
  v43 = *v42;
  v44 = *(v42 + 8);
  LOBYTE(v69) = v43;
  v70 = v44;
  sub_1000032D4(&qword_1001155F8, &qword_1000D2B18);
  State.wrappedValue.getter();
  sub_100037390();
  sub_1000352E8();
  View.sensoryFeedback<A>(_:trigger:condition:)();
  (*(v65 + 8))(v41, v67);
  return sub_10002D02C(v40, &qword_1001155C0, &qword_1000D2AF0);
}

uint64_t sub_100032DC8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for GlassActionSlider(0);
  v61 = *(v3 - 1);
  __chkstk_darwin(v3);
  v67 = v4;
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v6);
  v62 = type metadata accessor for DragGesture();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000032D4(&qword_100115610, &qword_1000D2B28);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v10 = v59 - v9;
  v71 = sub_1000032D4(&qword_100115618, &qword_1000D2B30);
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v66 = v59 - v11;
  v12 = sub_1000032D4(&qword_100115620, &qword_1000D2B38);
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = __chkstk_darwin(v12);
  v72 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = v59 - v15;
  v16 = type metadata accessor for GlassActionSlider.Track(0);
  v17 = __chkstk_darwin(v16);
  v69 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v59 - v19;
  v21 = v3[5];
  v22 = type metadata accessor for LocalizedStringResource();
  (*(*(v22 - 8) + 16))(v20, &a1[v21], v22);
  if (qword_1001135F0 != -1)
  {
    swift_once();
  }

  v23 = qword_10011F340;
  v24 = *&a1[v3[7]];
  *&v20[v16[5]] = qword_10011F340;
  *&v20[v16[6]] = v24;
  v25 = &v20[v16[7]];
  v60 = v20;
  v79 = 10.0;
  v26 = v23;
  State.init(wrappedValue:)();
  v27 = *&v76[8];
  *v25 = *v76;
  *(v25 + 1) = v27;
  v28 = *a1;
  v79 = 10.0;
  v29 = v28;
  v59[0] = v28;

  State.init(wrappedValue:)();
  v30 = *v76;
  v59[1] = *&v76[8];
  v31 = &a1[v3[12]];
  v32 = *(v31 + 2);
  *v76 = *v31;
  *&v76[16] = v32;
  sub_1000032D4(&qword_100115608, &qword_1000D2B20);
  State.wrappedValue.getter();
  v33 = v79;
  v34 = v80;
  v35 = &a1[v3[10]];
  v36 = *v35;
  v37 = *(v35 + 1);
  *v76 = v36;
  *&v76[8] = v37;
  sub_1000032D4(&qword_100115628, &qword_1000D2B40);
  State.wrappedValue.getter();
  *v76 = v29;
  *&v76[8] = v30;
  v77 = (v33 - v34) * v79;
  v78 = 0;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  sub_100037684(a1, v5, type metadata accessor for GlassActionSlider);
  v38 = v61[80];
  v61 = a1;
  v39 = v8;
  v40 = v5;
  v41 = (v38 + 16) & ~v38;
  v42 = swift_allocObject();
  sub_100037CF8(v40, v42 + v41, type metadata accessor for GlassActionSlider);
  sub_1000374C0(&qword_100115630, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_1000374C0(&qword_100115638, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v43 = v62;
  Gesture<>.onChanged(_:)();

  (*(v63 + 8))(v39, v43);
  sub_100037684(v61, v40, type metadata accessor for GlassActionSlider);
  v44 = swift_allocObject();
  sub_100037CF8(v40, v44 + v41, type metadata accessor for GlassActionSlider);
  sub_10002DAD8(&qword_100115640, &qword_100115610, &qword_1000D2B28, &protocol conformance descriptor for _ChangedGesture<A>);
  v45 = v66;
  v46 = v65;
  Gesture.onEnded(_:)();

  (*(v64 + 8))(v10, v46);
  static GestureMask.all.getter();
  sub_1000032D4(&qword_100115648, &qword_1000D2B48);
  sub_1000375A4();
  sub_10002DAD8(&qword_100115660, &qword_100115618, &qword_1000D2B30, &protocol conformance descriptor for _EndedGesture<A>);
  v48 = v70;
  v47 = v71;
  View.simultaneousGesture<A>(_:including:)();
  (*(v68 + 8))(v45, v47);

  v49 = v60;
  v50 = v69;
  sub_100037684(v60, v69, type metadata accessor for GlassActionSlider.Track);
  v52 = v72;
  v51 = v73;
  v53 = *(v73 + 16);
  v54 = v74;
  v53(v72, v48, v74);
  v55 = v75;
  sub_100037684(v50, v75, type metadata accessor for GlassActionSlider.Track);
  v56 = sub_1000032D4(&qword_100115668, &qword_1000D2B50);
  v53((v55 + *(v56 + 48)), v52, v54);
  v57 = *(v51 + 8);
  v57(v48, v54);
  sub_100037AFC(v49, type metadata accessor for GlassActionSlider.Track);
  v57(v52, v54);
  return sub_100037AFC(v50, type metadata accessor for GlassActionSlider.Track);
}

double sub_10003370C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GlassActionSlider(0);
  sub_1000032D4(&qword_1001155F8, &qword_1000D2B18);
  State.wrappedValue.setter();
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();

  return result;
}

void *sub_1000337E8(uint64_t a1)
{
  DragGesture.Value.translation.getter();
  v2 = v1;
  type metadata accessor for GlassActionSlider(0);
  sub_1000032D4(&qword_100115608, &qword_1000D2B20);
  State.wrappedValue.getter();
  sub_1000338D0(v2, v4, v5);
  sub_1000032D4(&qword_100115628, &qword_1000D2B40);
  State.wrappedValue.setter();
  return sub_100032510();
}

double sub_1000338D0(double a1, double a2, double a3)
{
  v23 = type metadata accessor for EnvironmentValues();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&qword_1001140A8, &qword_1000D13E0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for LayoutDirection();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GlassActionSlider(0);
  sub_10002CFC4(v3 + *(v17 + 44), v12, &qword_1001140A8, &qword_1000D13E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v23);
  }

  v19 = (*(v14 + 88))(v16, v13);
  v20 = 1.0;
  if (v19 != enum case for LayoutDirection.leftToRight(_:))
  {
    v20 = -1.0;
    if (v19 != enum case for LayoutDirection.rightToLeft(_:))
    {
      (*(v14 + 8))(v16, v13, -1.0);
      v20 = 1.0;
    }
  }

  return a1 / (a2 - a3) * v20;
}

uint64_t sub_100033BC4(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GlassActionSlider(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v6);
  DragGesture.Value.translation.getter();
  v9 = v8;
  v10 = (a2 + *(v6 + 48));
  v12 = v10[1];
  v13 = v10[2];
  v31 = *v10;
  v11 = v31;
  v32 = v12;
  v33 = v13;
  sub_1000032D4(&qword_100115608, &qword_1000D2B20);
  State.wrappedValue.getter();
  v14 = sub_1000338D0(v9, v29, v30);
  DragGesture.Value.predictedEndTranslation.getter();
  v16 = v15;
  v31 = v11;
  v32 = v12;
  v33 = v13;
  State.wrappedValue.getter();
  v17 = sub_1000338D0(v16, v29, v30);
  if (v14 < 0.5)
  {
    if (v14 >= 0.85)
    {
      v18 = 1;
      v19 = 2;
      goto LABEL_7;
    }

LABEL_6:
    v19 = 0;
    v18 = 0;
    goto LABEL_7;
  }

  v18 = 1;
  v19 = 2;
  if (v14 < 0.85 && v17 < 1.0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v20 = (a2 + *(v6 + 52));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v31) = v21;
  v32 = v22;
  LOBYTE(v29) = v19;
  sub_1000032D4(&qword_1001155F8, &qword_1000D2B18);
  State.wrappedValue.setter();
  v23 = static Animation.spring(response:dampingFraction:blendDuration:)();
  __chkstk_darwin(v23);
  *(&v27 - 2) = a2;
  *(&v27 - 8) = v18;
  sub_100037684(a2, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GlassActionSlider);
  v24 = (*(v27 + 80) + 17) & ~*(v27 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  sub_100037CF8(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for GlassActionSlider);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v3 + 8))(v5, v28);
}

void *sub_100033F64(uint64_t a1, char a2)
{
  type metadata accessor for GlassActionSlider(0);
  sub_1000032D4(&qword_100115628, &qword_1000D2B40);
  State.wrappedValue.setter();
  return sub_100032510();
}

void sub_100034000(void *a1@<X8>)
{
  GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v3;
}

void sub_10003402C(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for GlassActionSlider(0);
  sub_1000032D4(&qword_100115608, &qword_1000D2B20);
  State.wrappedValue.setter();
}

uint64_t sub_1000340D4@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v62 = a1;
  v63 = a2;
  v61 = a3;
  v5 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v5 - 8);
  v64 = &v56 - v6;
  v60 = type metadata accessor for Capsule();
  __chkstk_darwin(v60);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Material._GlassVariant();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  v15 = type metadata accessor for Material();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for _Glass();
  v58 = *(v19 - 8);
  v59 = v19;
  __chkstk_darwin(v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v56 = COERCE_DOUBLE(static Color.clear.getter());
  v72 = *&v56;
  LOWORD(v73) = 256;
  static Material._GlassVariant.clear.getter();
  Material._GlassVariant.subvariant(_:)();
  v22 = *(v9 + 8);
  v22(v12, v8);
  static Material._glass(_:)();
  v22(v14, v8);
  static _Glass.explicit(_:)();
  (*(v16 + 8))(v18, v15);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = type metadata accessor for RoundedCornerStyle();
  v25 = v57;
  (*(*(v24 - 8) + 104))(v57, v23, v24);
  sub_1000032D4(&qword_100115710, &qword_1000D6A90);
  sub_10002DAD8(&qword_100115718, &qword_100115710, &qword_1000D6A90, &protocol conformance descriptor for _ShapeView<A, B>);
  sub_1000374C0(&qword_100115720, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
  v26 = v61;
  View._glassEffect<A>(_:in:)();
  sub_100037AFC(v25, &type metadata accessor for Capsule);
  (*(v58 + 8))(v21, v59);

  v27 = static Alignment.center.getter();
  v29 = v28;
  v72 = a4;
  v30 = v62;
  v31 = v63;
  v73 = v63;

  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.getter();
  static Font.Weight.bold.getter();
  v32 = type metadata accessor for Font.Design();
  v33 = v64;
  (*(*(v32 - 8) + 56))(v64, 1, 1, v32);
  v34 = static Font.system(size:weight:design:)();
  sub_10002D02C(v33, &qword_100113E08, &qword_1000D10F0);
  KeyPath = swift_getKeyPath();
  v36 = static Color.white.getter();
  LOBYTE(v25) = static Edge.Set.all.getter();
  LOBYTE(v72) = 1;
  *&v68 = v30;
  *(&v68 + 1) = KeyPath;
  *&v69 = v34;
  *(&v69 + 1) = v36;
  LOBYTE(v70[0]) = v25;
  *(v70 + 1) = *v67;
  DWORD1(v70[0]) = *&v67[3];
  *(v70 + 8) = 0u;
  *(&v70[1] + 8) = 0u;
  BYTE8(v70[2]) = 1;
  *(&v70[2] + 9) = v65;
  HIDWORD(v70[2]) = *(&v65 + 3);
  *&v71 = v27;
  *(&v71 + 1) = v29;
  v37 = (v26 + *(sub_1000032D4(&qword_100115728, &qword_1000D2C68) + 36));
  v38 = v70[1];
  v37[2] = v70[0];
  v37[3] = v38;
  v39 = v71;
  v37[4] = v70[2];
  v37[5] = v39;
  v40 = v69;
  *v37 = v68;
  v37[1] = v40;
  v72 = v30;
  v73 = KeyPath;
  v74 = v34;
  v75 = v36;
  v76 = v25;
  *&v77[3] = *&v67[3];
  *v77 = *v67;
  v79 = 0u;
  v78 = 0u;
  v80 = 1;
  *&v81[3] = *(&v65 + 3);
  *v81 = v65;
  v82 = v27;
  v83 = v29;
  sub_10002CFC4(&v68, v66, &qword_100115730, &qword_1000D2C70);
  sub_10002D02C(&v72, &qword_100115730, &qword_1000D2C70);
  v41 = swift_allocObject();
  *(v41 + 16) = v30;
  *(v41 + 24) = a4;
  *(v41 + 32) = v31;
  v42 = (v26 + *(sub_1000032D4(&qword_100115738, &qword_1000D2C78) + 36));
  *v42 = sub_100038C04;
  v42[1] = 0;
  v42[2] = sub_100037BA4;
  v42[3] = v41;

  LOBYTE(v41) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v26 + *(sub_1000032D4(&qword_100115740, &qword_1000D2C80) + 36);
  *v51 = v41;
  *(v51 + 8) = v44;
  *(v51 + 16) = v46;
  *(v51 + 24) = v48;
  *(v51 + 32) = v50;
  *(v51 + 40) = 0;
  *(v26 + *(sub_1000032D4(&qword_100115748, &qword_1000D2C88) + 36)) = 0;
  v65 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v52 = v66[0];
  v53 = v66[1];
  result = sub_1000032D4(&qword_100115750, &qword_1000D2C90);
  v55 = v26 + *(result + 36);
  *v55 = 1;
  *(v55 + 8) = v52;
  *(v55 + 16) = v53;
  return result;
}

uint64_t sub_100034850@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10003488C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v57 = a1;
  v49 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v49);
  v9 = type metadata accessor for DragGesture();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000032D4(&qword_100115610, &qword_1000D2B28);
  v52 = *(v12 - 8);
  v53 = v12;
  __chkstk_darwin(v12);
  v14 = v48 - v13;
  v59 = sub_1000032D4(&qword_100115618, &qword_1000D2B30);
  v54 = *(v59 - 8);
  __chkstk_darwin(v59);
  v16 = v48 - v15;
  *&v60 = COERCE_DOUBLE(sub_1000032D4(&qword_1001158E8, &qword_1000D2E98));
  __chkstk_darwin(v60);
  v18 = v48 - v17;
  v19 = sub_1000032D4(&qword_1001158F0, &qword_1000D2EA0);
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v55 = v48 - v20;
  v58 = sub_1000032D4(&qword_1001158F8, &qword_1000D2EA8);
  __chkstk_darwin(v58);
  v22 = v48 - v21;
  if (a2)
  {
    v62 = a5;
    v63 = a3;
    sub_1000032D4(&qword_100114238, &qword_1000D2C30);
    v48[1] = a4;
    State.wrappedValue.getter();
    v23 = v61;
    static UnitPoint.center.getter();
    v25 = v24;
    v27 = v26;
    v48[0] = sub_1000032D4(&qword_100115900, &qword_1000D2EB0);
    (*(*(v48[0] - 8) + 16))(v18, v57, v48[0]);
    v28 = &v18[*(sub_1000032D4(&qword_100115920, &qword_1000D2EB8) + 36)];
    *v28 = v23;
    *(v28 + 1) = v23;
    *(v28 + 2) = v25;
    *(v28 + 3) = v27;
    v29 = static Animation.spring(response:dampingFraction:blendDuration:)();
    v57 = v19;
    v30 = v29;
    v62 = a5;
    v63 = a3;
    State.wrappedValue.getter();
    v31 = v61;
    v32 = &v18[*(v60 + 36)];
    *v32 = v30;
    *(v32 + 1) = v31;
    static CoordinateSpaceProtocol<>.local.getter();
    DragGesture.init<A>(minimumDistance:coordinateSpace:)();
    v33 = swift_allocObject();
    *(v33 + 16) = 1;
    *(v33 + 24) = a5;
    *(v33 + 32) = a3;
    sub_1000374C0(&qword_100115630, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
    sub_1000374C0(&qword_100115638, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);

    v34 = v51;
    Gesture<>.onChanged(_:)();

    (*(v50 + 8))(v11, v34);
    v35 = swift_allocObject();
    *(v35 + 16) = 1;
    *(v35 + 24) = a5;
    *(v35 + 32) = a3;
    sub_10002DAD8(&qword_100115640, &qword_100115610, &qword_1000D2B28, &protocol conformance descriptor for _ChangedGesture<A>);

    v36 = v53;
    Gesture.onEnded(_:)();

    (*(v52 + 8))(v14, v36);
    static GestureMask.all.getter();
    v37 = sub_100038878();
    v38 = sub_10002DAD8(&qword_100115660, &qword_100115618, &qword_1000D2B30, &protocol conformance descriptor for _EndedGesture<A>);
    v39 = v55;
    v40 = v59;
    v41 = *&v60;
    View.gesture<A>(_:including:)();
    (*(v54 + 8))(v16, v40);
    sub_10002D02C(v18, &qword_1001158E8, &qword_1000D2E98);
    v42 = v56;
    v43 = v57;
    (*(v56 + 16))(v22, v39, v57);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100115908, &qword_100115900, &qword_1000D2EB0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v62 = v41;
    v63 = v40;
    v64 = v37;
    v65 = v38;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v42 + 8))(v39, v43);
  }

  else
  {
    v45 = sub_1000032D4(&qword_100115900, &qword_1000D2EB0);
    (*(*(v45 - 8) + 16))(v22, v57, v45);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100115908, &qword_100115900, &qword_1000D2EB0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v46 = sub_100038878();
    v47 = sub_10002DAD8(&qword_100115660, &qword_100115618, &qword_1000D2B30, &protocol conformance descriptor for _EndedGesture<A>);
    v62 = *&v60;
    v63 = v59;
    v64 = v46;
    v65 = v47;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100035144@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100003F94();

  *a2 = v3;
  return result;
}

unint64_t sub_100035188()
{
  result = qword_100115588;
  if (!qword_100115588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115588);
  }

  return result;
}

unint64_t sub_1000351E0()
{
  result = qword_100115590;
  if (!qword_100115590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115590);
  }

  return result;
}

unint64_t sub_100035238()
{
  result = qword_100115598;
  if (!qword_100115598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115598);
  }

  return result;
}

unint64_t sub_100035290()
{
  result = qword_1001155A0;
  if (!qword_1001155A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001155A0);
  }

  return result;
}

unint64_t sub_1000352E8()
{
  result = qword_1001155A8;
  if (!qword_1001155A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001155A8);
  }

  return result;
}

uint64_t sub_100035358@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = type metadata accessor for GlassActionSlider.Track(0);
  v40[0] = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v40[1] = v2;
  v41 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000032D4(&qword_100115758, &qword_1000D2C98);
  __chkstk_darwin(v3 - 8);
  v5 = v40 - v4;
  v6 = sub_1000032D4(&qword_100115760, &qword_1000D2CA0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v40 - v8;
  v10 = sub_1000032D4(&qword_100115768, &qword_1000D2CA8);
  __chkstk_darwin(v10);
  v12 = v40 - v11;
  v13 = sub_1000032D4(&qword_100115770, &qword_1000D2CB0);
  __chkstk_darwin(v13);
  v15 = v40 - v14;
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(v9, v16, v17);
  static Color.white.getter();
  v18 = Color.opacity(_:)();

  *&v9[*(v7 + 60)] = v18;
  *&v9[*(v7 + 64)] = 256;
  sub_1000032D4(&qword_100115778, &qword_1000D2CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D2810;
  v20 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v20;
  v21 = static Axis.Set.vertical.getter();
  *(inited + 33) = v21;
  v22 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v20)
  {
    v22 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v21)
  {
    v22 = Axis.Set.init(rawValue:)();
  }

  *v5 = v22;
  v23 = sub_1000032D4(&qword_100115780, &qword_1000D2CC0);
  v24 = v42;
  sub_100035840(v42, &v5[*(v23 + 44)]);
  v25 = static Alignment.center.getter();
  v27 = v26;
  v28 = &v12[*(v10 + 36)];
  sub_10002C7C4(v5, v28, &qword_100115758, &qword_1000D2C98);
  v29 = (v28 + *(sub_1000032D4(&qword_100115788, &qword_1000D2CC8) + 36));
  *v29 = v25;
  v29[1] = v27;
  sub_10002C7C4(v9, v12, &qword_100115760, &qword_1000D2CA0);
  v30 = *(v13 + 36);
  v31 = enum case for BlendMode.plusLighter(_:);
  v32 = type metadata accessor for BlendMode();
  (*(*(v32 - 8) + 104))(&v15[v30], v31, v32);
  sub_10002C7C4(v12, v15, &qword_100115768, &qword_1000D2CA8);
  v33 = v24;
  v34 = v41;
  sub_100037684(v33, v41, type metadata accessor for GlassActionSlider.Track);
  v35 = (*(v40[0] + 80) + 16) & ~*(v40[0] + 80);
  v36 = swift_allocObject();
  sub_100037CF8(v34, v36 + v35, type metadata accessor for GlassActionSlider.Track);
  v37 = v43;
  sub_10002C7C4(v15, v43, &qword_100115770, &qword_1000D2CB0);
  result = sub_1000032D4(&qword_100115790, &qword_1000D2CD0);
  v39 = (v37 + *(result + 36));
  *v39 = sub_100038C04;
  v39[1] = 0;
  v39[2] = sub_100037D60;
  v39[3] = v36;
  return result;
}

uint64_t sub_100035840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v151 = sub_1000032D4(&qword_100115798, &qword_1000D2CD8);
  v3 = *(v151 - 1);
  __chkstk_darwin(v151);
  v144 = (&v144 - v4);
  v5 = sub_1000032D4(&qword_1001157A0, &qword_1000D2CE0);
  v6 = __chkstk_darwin(v5 - 8);
  v155 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v154 = &v144 - v9;
  v10 = __chkstk_darwin(v8);
  v158 = &v144 - v11;
  __chkstk_darwin(v10);
  v160 = &v144 - v12;
  v13 = sub_1000032D4(&qword_1001157A8, &qword_1000D2CE8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v144 - v15;
  v17 = sub_1000032D4(&qword_1001157B0, &qword_1000D2CF0);
  v18 = __chkstk_darwin(v17 - 8);
  v147 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v146 = &v144 - v21;
  v22 = __chkstk_darwin(v20);
  v153 = &v144 - v23;
  v24 = __chkstk_darwin(v22);
  v152 = &v144 - v25;
  v26 = __chkstk_darwin(v24);
  v150 = &v144 - v27;
  v28 = __chkstk_darwin(v26);
  v159 = &v144 - v29;
  v30 = __chkstk_darwin(v28);
  v157 = &v144 - v31;
  __chkstk_darwin(v30);
  v33 = &v144 - v32;
  v34 = type metadata accessor for GlassActionSlider.Track(0);
  v35 = *(a1 + v34[6]);
  v156 = v33;
  v145 = v3;
  if (v35)
  {
    v37 = type metadata accessor for LocalizedStringResource();
    (*(*(v37 - 8) + 16))(v16, a1, v37);
    v38 = *(a1 + v34[5]);
    LOBYTE(v161) = 1;
    v39 = v38;
    static Binding.constant(_:)();
    v149 = v35;
    v40 = v162;
    v35 = v163;
    v41 = a1;
    v42 = v13;
    v43 = v34;
    v44 = v164;
    v45 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
    *&v16[v45[5]] = v39;
    v16[v45[6]] = 1;
    v46 = &v16[v45[7]];
    *v46 = v40;
    *(v46 + 1) = v35;
    v46[16] = v44;
    v34 = v43;
    v13 = v42;
    a1 = v41;
    LOBYTE(v40) = static Edge.Set.horizontal.getter();
    v47 = (v41 + v34[7]);
    v48 = *v47;
    v49 = v47[1];
    v162 = v48;
    v163 = v49;
    sub_1000032D4(&qword_100114238, &qword_1000D2C30);
    State.wrappedValue.getter();
    v50 = v156;
    EdgeInsets.init(_all:)();
    v51 = &v16[*(v13 + 36)];
    *v51 = v40;
    v3 = v145;
    LOBYTE(v35) = v149;
    *(v51 + 1) = v52;
    *(v51 + 2) = v53;
    *(v51 + 3) = v54;
    *(v51 + 4) = v55;
    v51[40] = 0;
    sub_10002C7C4(v16, v50, &qword_1001157A8, &qword_1000D2CE8);
    v36 = *(v14 + 56);
    v36(v50, 0, 1, v13);
  }

  else
  {
    v36 = *(v14 + 56);
    v36(v33, 1, 1, v13);
  }

  if ((v35 & 2) != 0)
  {
    v57 = [*(a1 + v34[5]) fontDescriptor];
    v58 = [v57 fontDescriptorWithSymbolicTraits:64];

    if (v58)
    {
      v59 = [objc_opt_self() fontWithDescriptor:v58 size:0.0];

      v56 = 1;
      if (v59)
      {
        v60 = type metadata accessor for LocalizedStringResource();
        (*(*(v60 - 8) + 16))(v16, a1, v60);
        LOBYTE(v161) = 1;
        static Binding.constant(_:)();
        v61 = v14;
        v149 = v36;
        v62 = a1;
        v63 = v13;
        v64 = v34;
        v65 = v162;
        v66 = v163;
        v67 = v164;
        v68 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
        *&v16[v68[5]] = v59;
        v16[v68[6]] = 1;
        v69 = &v16[v68[7]];
        *v69 = v65;
        *(v69 + 1) = v66;
        v14 = v61;
        v34 = v64;
        v13 = v63;
        a1 = v62;
        v36 = v149;
        v69[16] = v67;
        v70 = static Edge.Set.horizontal.getter();
        v71 = (a1 + v34[7]);
        v72 = *v71;
        v73 = v71[1];
        v162 = v72;
        v163 = v73;
        sub_1000032D4(&qword_100114238, &qword_1000D2C30);
        State.wrappedValue.getter();
        EdgeInsets.init(_all:)();
        v74 = &v16[*(v13 + 36)];
        *v74 = v70;
        *(v74 + 1) = v75;
        *(v74 + 2) = v76;
        *(v74 + 3) = v77;
        *(v74 + 4) = v78;
        v74[40] = 0;
        sub_10002C7C4(v16, v157, &qword_1001157A8, &qword_1000D2CE8);
        v56 = 0;
      }
    }

    else
    {
      v56 = 1;
    }

    v3 = v145;
  }

  else
  {
    v56 = 1;
  }

  v79 = 1;
  v149 = (v14 + 56);
  v36(v157, v56, 1, v13);
  if ((v35 & 4) != 0)
  {
    v80 = static VerticalAlignment.center.getter();
    v81 = v144;
    *v144 = v80;
    *(v81 + 8) = 0;
    *(v81 + 16) = 0;
    v82 = sub_1000032D4(&qword_1001157C0, &qword_1000D2D00);
    sub_1000365F0(a1, v81 + *(v82 + 44));
    sub_10002C7C4(v81, v160, &qword_100115798, &qword_1000D2CD8);
    v79 = 0;
  }

  v83 = *(v3 + 56);
  v84 = 1;
  v83(v160, v79, 1, v151);
  if ((v35 & 8) != 0)
  {
    v85 = [*(a1 + v34[5]) fontDescriptor];
    v86 = [v85 fontDescriptorWithSymbolicTraits:64];

    if (v86 && (v87 = [objc_opt_self() fontWithDescriptor:v86 size:0.0], v86, v87))
    {
      v88 = static VerticalAlignment.center.getter();
      v89 = v144;
      *v144 = v88;
      *(v89 + 8) = 0;
      *(v89 + 16) = 0;
      v90 = sub_1000032D4(&qword_1001157C0, &qword_1000D2D00);
      sub_100036860(a1, v87, v89 + *(v90 + 44));

      sub_10002C7C4(v89, v158, &qword_100115798, &qword_1000D2CD8);
      v84 = 0;
    }

    else
    {
      v84 = 1;
    }
  }

  v91 = 1;
  v83(v158, v84, 1, v151);
  if ((v35 & 0x10) != 0)
  {
    v92 = type metadata accessor for LocalizedStringResource();
    (*(*(v92 - 8) + 16))(v16, a1, v92);
    v93 = *(a1 + v34[5]);
    LOBYTE(v161) = 1;
    v151 = v93;
    static Binding.constant(_:)();
    v94 = a1;
    v95 = v13;
    v96 = v34;
    v97 = v162;
    v98 = v163;
    v99 = v35;
    v35 = v36;
    v100 = v164;
    v101 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
    *&v16[v101[5]] = v151;
    v16[v101[6]] = 1;
    v102 = &v16[v101[7]];
    *v102 = v97;
    *(v102 + 1) = v98;
    v34 = v96;
    v13 = v95;
    a1 = v94;
    v102[16] = v100;
    v36 = v35;
    LOBYTE(v35) = v99;
    v103 = static Edge.Set.horizontal.getter();
    v104 = (v94 + v34[7]);
    v105 = *v104;
    v106 = v104[1];
    v162 = v105;
    v163 = v106;
    sub_1000032D4(&qword_100114238, &qword_1000D2C30);
    State.wrappedValue.getter();
    EdgeInsets.init(_all:)();
    v107 = &v16[*(v13 + 36)];
    *v107 = v103;
    *(v107 + 1) = v108;
    *(v107 + 2) = v109;
    *(v107 + 3) = v110;
    *(v107 + 4) = v111;
    v107[40] = 0;
    sub_10002C7C4(v16, v159, &qword_1001157A8, &qword_1000D2CE8);
    v91 = 0;
  }

  v112 = 1;
  v36(v159, v91, 1, v13);
  if ((v35 & 0x20) != 0)
  {
    v113 = [*(a1 + v34[5]) fontDescriptor];
    v114 = [v113 fontDescriptorWithSymbolicTraits:64];

    if (v114)
    {
      v115 = [objc_opt_self() fontWithDescriptor:v114 size:0.0];

      v112 = 1;
      if (v115)
      {
        v116 = type metadata accessor for LocalizedStringResource();
        (*(*(v116 - 8) + 16))(v16, a1, v116);
        LOBYTE(v161) = 1;
        static Binding.constant(_:)();
        v117 = v162;
        v118 = v163;
        v119 = v36;
        v120 = v34;
        v121 = v164;
        v122 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
        *&v16[v122[5]] = v115;
        v16[v122[6]] = 1;
        v123 = &v16[v122[7]];
        *v123 = v117;
        *(v123 + 1) = v118;
        v123[16] = v121;
        v124 = static Edge.Set.horizontal.getter();
        v125 = v120[7];
        v36 = v119;
        v126 = (a1 + v125);
        v127 = *v126;
        v128 = v126[1];
        v162 = v127;
        v163 = v128;
        sub_1000032D4(&qword_100114238, &qword_1000D2C30);
        State.wrappedValue.getter();
        EdgeInsets.init(_all:)();
        v129 = &v16[*(v13 + 36)];
        *v129 = v124;
        *(v129 + 1) = v130;
        *(v129 + 2) = v131;
        *(v129 + 3) = v132;
        *(v129 + 4) = v133;
        v129[40] = 0;
        sub_10002C7C4(v16, v150, &qword_1001157A8, &qword_1000D2CE8);
        v112 = 0;
      }
    }

    else
    {
      v112 = 1;
    }
  }

  v134 = v150;
  v36(v150, v112, 1, v13);
  v135 = v152;
  sub_10002CFC4(v156, v152, &qword_1001157B0, &qword_1000D2CF0);
  v136 = v153;
  sub_10002CFC4(v157, v153, &qword_1001157B0, &qword_1000D2CF0);
  v137 = v154;
  sub_10002CFC4(v160, v154, &qword_1001157A0, &qword_1000D2CE0);
  sub_10002CFC4(v158, v155, &qword_1001157A0, &qword_1000D2CE0);
  v138 = v146;
  sub_10002CFC4(v159, v146, &qword_1001157B0, &qword_1000D2CF0);
  v139 = v147;
  sub_10002CFC4(v134, v147, &qword_1001157B0, &qword_1000D2CF0);
  v140 = v148;
  sub_10002CFC4(v135, v148, &qword_1001157B0, &qword_1000D2CF0);
  v141 = sub_1000032D4(&qword_1001157B8, &qword_1000D2CF8);
  sub_10002CFC4(v136, v140 + v141[12], &qword_1001157B0, &qword_1000D2CF0);
  sub_10002CFC4(v137, v140 + v141[16], &qword_1001157A0, &qword_1000D2CE0);
  v142 = v155;
  sub_10002CFC4(v155, v140 + v141[20], &qword_1001157A0, &qword_1000D2CE0);
  sub_10002CFC4(v138, v140 + v141[24], &qword_1001157B0, &qword_1000D2CF0);
  sub_10002CFC4(v139, v140 + v141[28], &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v134, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v159, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v158, &qword_1001157A0, &qword_1000D2CE0);
  sub_10002D02C(v160, &qword_1001157A0, &qword_1000D2CE0);
  sub_10002D02C(v157, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v156, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v139, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v138, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v142, &qword_1001157A0, &qword_1000D2CE0);
  sub_10002D02C(v154, &qword_1001157A0, &qword_1000D2CE0);
  sub_10002D02C(v153, &qword_1001157B0, &qword_1000D2CF0);
  return sub_10002D02C(v152, &qword_1001157B0, &qword_1000D2CF0);
}

uint64_t sub_1000365F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1000032D4(&qword_1001157A8, &qword_1000D2CE8);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for LocalizedStringResource();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = type metadata accessor for GlassActionSlider.Track(0);
  v12 = *(a1 + *(v11 + 20));
  LOBYTE(v33) = 1;
  v13 = v12;
  static Binding.constant(_:)();
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
  *&v9[v17[5]] = v13;
  v9[v17[6]] = 1;
  v18 = &v9[v17[7]];
  *v18 = v14;
  *(v18 + 1) = v15;
  v18[16] = v16;
  LOBYTE(v13) = static Edge.Set.leading.getter();
  v19 = (a1 + *(v11 + 28));
  v21 = v19[1];
  v34 = *v19;
  v20 = v34;
  v35 = v21;
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v22 = &v9[*(v4 + 44)];
  *v22 = v13;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v34 = v20;
  v35 = v21;
  State.wrappedValue.getter();
  v27 = v33 * 0.25;
  sub_10002CFC4(v9, v7, &qword_1001157A8, &qword_1000D2CE8);
  v28 = v32;
  sub_10002CFC4(v7, v32, &qword_1001157A8, &qword_1000D2CE8);
  v29 = v28 + *(sub_1000032D4(&qword_1001157C8, &qword_1000D2D08) + 48);
  *v29 = v27;
  *(v29 + 8) = 0;
  sub_10002D02C(v9, &qword_1001157A8, &qword_1000D2CE8);
  return sub_10002D02C(v7, &qword_1001157A8, &qword_1000D2CE8);
}

uint64_t sub_100036860@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000032D4(&qword_1001157A8, &qword_1000D2CE8);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  LOBYTE(v31) = 1;
  static Binding.constant(_:)();
  v15 = v32;
  v14 = v33;
  v16 = v34;
  v17 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
  *&v12[v17[5]] = a2;
  v12[v17[6]] = 1;
  v18 = &v12[v17[7]];
  *v18 = v15;
  *(v18 + 1) = v14;
  v18[16] = v16;
  v19 = a2;
  LOBYTE(a2) = static Edge.Set.leading.getter();
  v20 = (a1 + *(type metadata accessor for GlassActionSlider.Track(0) + 28));
  v22 = v20[1];
  v32 = *v20;
  v21 = v32;
  v33 = v22;
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v23 = &v12[*(v7 + 44)];
  *v23 = a2;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v32 = v21;
  v33 = v22;
  State.wrappedValue.getter();
  v28 = v31 * 0.25;
  sub_10002CFC4(v12, v10, &qword_1001157A8, &qword_1000D2CE8);
  sub_10002CFC4(v10, a3, &qword_1001157A8, &qword_1000D2CE8);
  v29 = a3 + *(sub_1000032D4(&qword_1001157C8, &qword_1000D2D08) + 48);
  *v29 = v28;
  *(v29 + 8) = 0;
  sub_10002D02C(v12, &qword_1001157A8, &qword_1000D2CE8);
  return sub_10002D02C(v10, &qword_1001157A8, &qword_1000D2CE8);
}

void sub_100036AC0(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for GlassActionSlider.Track(0);
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.setter();
}

double sub_100036B3C(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v7 = 2000.0;
  if (a2)
  {
    v8 = 2000.0;
  }

  else
  {
    v8 = *&a1;
  }

  if ((a4 & 1) == 0)
  {
    v7 = *&a3;
  }

  [a5 sizeThatFits:{v8, v7}];
  if (a2)
  {
    v10 = result;
  }

  else
  {
    v10 = *&a1;
  }

  if (v10 < result)
  {
    return v10;
  }

  return result;
}

void sub_100036BC8()
{
  v1 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v1);
  (*(v3 + 16))(&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  String.init(localized:)();
  v4 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
  v5 = *(v0 + *(v4 + 20));
  v6 = objc_allocWithZone(_UIGlintyStringView);
  v7 = v5;
  v8 = String._bridgeToObjectiveC()();

  v9 = [v6 initWithText:v8 andFont:v7];

  if (v9)
  {
    [v9 setAdjustsFontSizeToFitWidth:*(v0 + *(v4 + 24))];
  }

  else
  {
    __break(1u);
  }
}

void *sub_100036D2C(void *a1)
{
  type metadata accessor for GlassActionSlider.GlintyStringView(0);
  sub_1000032D4(&qword_100115938, &qword_1000D2EC8);
  Binding.wrappedValue.getter();
  if (v4 == 1 && ![a1 isAnimating])
  {
    v3 = &selRef_startAnimating;
    return [a1 *v3];
  }

  result = Binding.wrappedValue.getter();
  if ((v4 & 1) == 0)
  {
    result = [a1 isAnimating];
    if (result)
    {
      v3 = &selRef_stopAnimating;
      return [a1 *v3];
    }
  }

  return result;
}

uint64_t sub_100036E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000374C0(&qword_100115940, type metadata accessor for GlassActionSlider.GlintyStringView, &unk_1000D2DB8);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100036EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000374C0(&qword_100115940, type metadata accessor for GlassActionSlider.GlintyStringView, &unk_1000D2DB8);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100036F80(uint64_t a1)
{
  sub_1000374C0(&qword_100115940, type metadata accessor for GlassActionSlider.GlintyStringView, &unk_1000D2DB8);
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100036FE0(uint64_t *a1)
{
  v3 = *(type metadata accessor for GlassActionSlider(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10003402C(a1, v4);
}

unint64_t sub_100037050()
{
  result = qword_1001155D0;
  if (!qword_1001155D0)
  {
    sub_10001C820(&qword_1001155B0, &qword_1000D2AE0);
    sub_10002DAD8(&qword_1001155D8, &qword_1001155E0, &qword_1000D2B08, &protocol conformance descriptor for ZStack<A>);
    sub_10002DAD8(&qword_1001155E8, &qword_1001155F0, &qword_1000D2B10, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001155D0);
  }

  return result;
}

uint64_t sub_100037134()
{
  v1 = type metadata accessor for GlassActionSlider(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[6], v7);
  if (*(v0 + v3 + v1[8]))
  {
  }

  if (*(v5 + v1[9]))
  {
  }

  v9 = v1[11];
  sub_1000032D4(&qword_1001140A8, &qword_1000D13E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for LayoutDirection();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003731C()
{
  v1 = type metadata accessor for GlassActionSlider(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 40) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

unint64_t sub_100037390()
{
  result = qword_100115600;
  if (!qword_100115600)
  {
    sub_10001C820(&qword_1001155C0, &qword_1000D2AF0);
    sub_10001C820(&qword_1001155B0, &qword_1000D2AE0);
    sub_100037050();
    swift_getOpaqueTypeConformance2();
    sub_1000374C0(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115600);
  }

  return result;
}

uint64_t sub_1000374C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100037520(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GlassActionSlider(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1000375A4()
{
  result = qword_100115650;
  if (!qword_100115650)
  {
    sub_10001C820(&qword_100115648, &qword_1000D2B48);
    sub_100037630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115650);
  }

  return result;
}

unint64_t sub_100037630()
{
  result = qword_100115658;
  if (!qword_100115658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115658);
  }

  return result;
}

uint64_t sub_100037684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003770C()
{
  v1 = type metadata accessor for GlassActionSlider(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[6], v7);
  if (*(v0 + v3 + v1[8]))
  {
  }

  if (*(v5 + v1[9]))
  {
  }

  v9 = v1[11];
  sub_1000032D4(&qword_1001140A8, &qword_1000D13E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for LayoutDirection();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000378F4()
{
  result = type metadata accessor for GlassActionSlider(0);
  if (*(v0 + 16) == 1)
  {
    v2 = (v0 + *(result + 32) + ((*(*(result - 8) + 80) + 17) & ~*(*(result - 8) + 80)));
    if (*v2)
    {
      return (*v2)();
    }
  }

  return result;
}

unint64_t sub_100037A00()
{
  result = qword_1001156D8;
  if (!qword_1001156D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001156D8);
  }

  return result;
}

uint64_t sub_100037A4C()
{
  sub_10001C820(&qword_1001155C0, &qword_1000D2AF0);
  sub_100037390();
  sub_1000352E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100037AFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100037B64()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100037BA4(void *a1)
{
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.setter();
  return result;
}

uint64_t sub_100037C00()
{
  v1 = (type metadata accessor for GlassActionSlider.Track(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for LocalizedStringResource();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100037CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100037D60(uint64_t *a1)
{
  v3 = *(type metadata accessor for GlassActionSlider.Track(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100036AC0(a1, v4);
}

uint64_t sub_100037DF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100037E4C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100037EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100037F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalizedStringResource();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100038078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t))
{
  type metadata accessor for LocalizedStringResource();
  if (v10 <= 0x3F)
  {
    sub_100037A00();
    if (v11 <= 0x3F)
    {
      sub_100038140(319, a5, a6, a7);
      if (v12 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100038140(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100038194()
{
  result = qword_100115870;
  if (!qword_100115870)
  {
    sub_10001C820(&qword_100115750, &qword_1000D2C90);
    sub_100038220();
    sub_100038594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115870);
  }

  return result;
}

unint64_t sub_100038220()
{
  result = qword_100115878;
  if (!qword_100115878)
  {
    sub_10001C820(&qword_100115748, &qword_1000D2C88);
    sub_1000382D8();
    sub_10002DAD8(&qword_1001158A0, &qword_1001158A8, &qword_1000D2D60, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115878);
  }

  return result;
}

unint64_t sub_1000382D8()
{
  result = qword_100115880;
  if (!qword_100115880)
  {
    sub_10001C820(&qword_100115740, &qword_1000D2C80);
    sub_100038364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115880);
  }

  return result;
}

unint64_t sub_100038364()
{
  result = qword_100115888;
  if (!qword_100115888)
  {
    sub_10001C820(&qword_100115738, &qword_1000D2C78);
    sub_10003841C();
    sub_10002DAD8(&qword_1001152D0, &qword_1001152D8, &qword_1000D2438, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115888);
  }

  return result;
}

unint64_t sub_10003841C()
{
  result = qword_100115890;
  if (!qword_100115890)
  {
    sub_10001C820(&qword_100115728, &qword_1000D2C68);
    sub_10001C820(&qword_100115710, &qword_1000D6A90);
    type metadata accessor for Capsule();
    sub_10002DAD8(&qword_100115718, &qword_100115710, &qword_1000D6A90, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_1000374C0(&qword_100115720, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
    swift_getOpaqueTypeConformance2();
    sub_10002DAD8(&qword_100115898, &qword_100115730, &qword_1000D2C70, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115890);
  }

  return result;
}

unint64_t sub_100038594()
{
  result = qword_1001158B0;
  if (!qword_1001158B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001158B0);
  }

  return result;
}

unint64_t sub_1000385EC()
{
  result = qword_1001158B8;
  if (!qword_1001158B8)
  {
    sub_10001C820(&qword_100115790, &qword_1000D2CD0);
    sub_1000386A4();
    sub_10002DAD8(&qword_1001152D0, &qword_1001152D8, &qword_1000D2438, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001158B8);
  }

  return result;
}

unint64_t sub_1000386A4()
{
  result = qword_1001158C0;
  if (!qword_1001158C0)
  {
    sub_10001C820(&qword_100115770, &qword_1000D2CB0);
    sub_100038730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001158C0);
  }

  return result;
}

unint64_t sub_100038730()
{
  result = qword_1001158C8;
  if (!qword_1001158C8)
  {
    sub_10001C820(&qword_100115768, &qword_1000D2CA8);
    sub_10002DAD8(&qword_1001158D0, &qword_100115760, &qword_1000D2CA0, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_10002DAD8(&qword_1001158D8, &qword_100115788, &qword_1000D2CC8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001158C8);
  }

  return result;
}

unint64_t sub_100038878()
{
  result = qword_100115910;
  if (!qword_100115910)
  {
    sub_10001C820(&qword_1001158E8, &qword_1000D2E98);
    sub_100038930();
    sub_10002DAD8(&qword_100115928, &qword_100115930, &qword_1000D2EC0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115910);
  }

  return result;
}

unint64_t sub_100038930()
{
  result = qword_100115918;
  if (!qword_100115918)
  {
    sub_10001C820(&qword_100115920, &qword_1000D2EB8);
    sub_10002DAD8(&qword_100115908, &qword_100115900, &qword_1000D2EB0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115918);
  }

  return result;
}

uint64_t sub_1000389E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100038A38(double a1)
{
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.setter();
  return result;
}

unint64_t sub_100038A94()
{
  result = qword_100115948;
  if (!qword_100115948)
  {
    sub_10001C820(qword_100115950, &unk_1000D2ED0);
    sub_10002DAD8(&qword_100115908, &qword_100115900, &qword_1000D2EB0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10001C820(&qword_1001158E8, &qword_1000D2E98);
    sub_10001C820(&qword_100115618, &qword_1000D2B30);
    sub_100038878();
    sub_10002DAD8(&qword_100115660, &qword_100115618, &qword_1000D2B30, &protocol conformance descriptor for _EndedGesture<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115948);
  }

  return result;
}

uint64_t sub_100038C0C()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100038CE0()
{

  return v0;
}

uint64_t sub_100038D08()
{

  return swift_deallocClassInstance();
}

uint64_t Atomic.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Atomic.init(wrappedValue:)(a1);
  return v2;
}

char *Atomic.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for CPUnfairLock();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v3 + 96)], a1);
  return v1;
}

uint64_t Atomic.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  swift_beginAccess();
  os_unfair_lock_lock(v4 + 4);
  v5 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  os_unfair_lock_unlock(v4 + 4);
  return swift_endAccess();
}

uint64_t Atomic.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_100039294(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*Atomic.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*v1 + 80);
  v3[1] = v5;
  v6 = *(v5 - 8);
  v3[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v3[3] = malloc(v7);
    v8 = malloc(v7);
  }

  v4[4] = v8;
  Atomic.wrappedValue.getter(v8);
  return sub_1000390B4;
}

void sub_1000390B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_100039294(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_100039294(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Atomic.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_100039228(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_100039294(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  swift_beginAccess();
  os_unfair_lock_lock(v4 + 4);
  swift_endAccess();
  v5 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(&v1[v5], a1);
  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock(v4 + 4);
  return swift_endAccess();
}

uint64_t sub_100039394(uint64_t a1)
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

uint64_t sub_1000394D0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1000395C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006E776F64746ELL;
  v3 = 0x756F4372656D6954;
  v4 = a1;
  v5 = 0x776F64746E756F43;
  v6 = 0xE90000000000006ELL;
  if (a1 != 6)
  {
    v5 = 0x6E776F6E6B6E55;
    v6 = 0xE700000000000000;
  }

  v7 = 0x63746177706F7453;
  v8 = 0xE900000000000068;
  if (a1 != 4)
  {
    v7 = 0x7472656C41;
    v8 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x656C416D72616C41;
  v10 = 0xEA00000000007472;
  if (a1 != 2)
  {
    v9 = 0x6F6E536D72616C41;
    v10 = 0xEB00000000657A6FLL;
  }

  v11 = 0x656C4172656D6954;
  v12 = 0xEA00000000007472;
  if (!a1)
  {
    v11 = 0x756F4372656D6954;
    v12 = 0xEE006E776F64746ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE90000000000006ELL;
        if (v13 != 0x776F64746E756F43)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x6E776F6E6B6E55)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE900000000000068;
      if (v13 != 0x63746177706F7453)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x7472656C41)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x416D72616C41;
LABEL_29:
        v2 = 0xEA00000000007472;
        if (v13 != (v15 & 0xFFFFFFFFFFFFLL | 0x656C000000000000))
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x6F6E536D72616C41;
      v2 = 0xEB00000000657A6FLL;
    }

    else if (a2)
    {
      v15 = 0x4172656D6954;
      goto LABEL_29;
    }

    if (v13 != v3)
    {
LABEL_41:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

uint64_t sub_10003984C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00746361706D6FLL;
  v3 = 0x43746E6569626D41;
  v4 = a1;
  v5 = 0x657263536B636F4CLL;
  v6 = 0xEA00000000006E65;
  if (a1 != 5)
  {
    v5 = 0x726F707075736E55;
    v6 = 0xEB00000000646574;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656E6E6142;
  if (a1 != 3)
  {
    v8 = 0x657263536C6C7546;
    v7 = 0xEA00000000006E65;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x46746E6569626D41;
  v10 = 0xEB000000006C6C75;
  if (a1 != 1)
  {
    v9 = 0x6572757472657041;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x43746E6569626D41;
    v10 = 0xEE00746361706D6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_31;
    }

    if (a2 != 1)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6572757472657041)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v13 = 0x46746E6569626D41;
    v14 = 7105653;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x72656E6E6142)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v3 = 0x657263536C6C7546;
      v2 = 0xEA00000000006E65;
LABEL_31:
      if (v11 != v3)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (a2 == 5)
    {
      v2 = 0xEA00000000006E65;
      if (v11 != 0x657263536B636F4CLL)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v13 = 0x726F707075736E55;
    v14 = 6579572;
  }

  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v11 != v13)
  {
LABEL_37:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v15 = 1;
LABEL_38:

  return v15 & 1;
}

uint64_t sub_100039A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002CFC4(a3, v25 - v10, &unk_100115E10, &qword_1000D27F0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002D02C(v11, &unk_100115E10, &qword_1000D27F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100039DE8(void *a1, void *a2)
{
  v364 = a1;
  v339 = type metadata accessor for StopwatchContext();
  v338 = *(v339 - 8);
  __chkstk_darwin(v339);
  v337 = &v333 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000032D4(&qword_100115F18, &qword_1000D33D0);
  __chkstk_darwin(v5 - 8);
  v342 = &v333 - v6;
  v344 = sub_1000032D4(&qword_100115E88, &unk_1000D3380);
  v343 = *(v344 - 8);
  __chkstk_darwin(v344);
  v334 = &v333 - v7;
  v8 = sub_1000032D4(&qword_100115E20, &qword_1000D3270);
  v9 = __chkstk_darwin(v8 - 8);
  v340 = &v333 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v346 = &v333 - v12;
  v13 = __chkstk_darwin(v11);
  v335 = &v333 - v14;
  __chkstk_darwin(v13);
  v341 = &v333 - v15;
  v351 = type metadata accessor for AlarmActivityAttributes();
  v352 = *(v351 - 8);
  __chkstk_darwin(v351);
  v336 = &v333 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v17 - 8);
  v349 = &v333 - v18;
  v19 = sub_1000032D4(&qword_100115E28, &qword_1000D3278);
  v20 = __chkstk_darwin(v19 - 8);
  v345 = &v333 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v347 = &v333 - v23;
  __chkstk_darwin(v22);
  v350 = &v333 - v24;
  v359 = type metadata accessor for TimerActivityAttributes();
  v353 = *(v359 - 8);
  __chkstk_darwin(v359);
  v348 = &v333 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ActivityAttributesType();
  v356 = *(v26 - 8);
  v357 = v26;
  v27 = __chkstk_darwin(v26);
  v355 = &v333 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v360 = &v333 - v29;
  v30 = sub_1000032D4(&qword_100115F20, &qword_1000D33D8);
  v31 = __chkstk_darwin(v30 - 8);
  v33 = &v333 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v333 - v34;
  v363 = type metadata accessor for ActivityDescriptor();
  v365 = *(v363 - 8);
  __chkstk_darwin(v363);
  v361 = &v333 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = objc_opt_self();
  v368 = 0;
  v369 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v38 = v2;
  v39 = [v2 description];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v368 = v40;
  v369 = v42;
  v43._countAndFlagsBits = 0xD000000000000026;
  v43._object = 0x80000001000D8F20;
  String.append(_:)(v43);
  v44 = a2;
  v45 = [a2 role];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v49._countAndFlagsBits = v46;
  v49._object = v48;
  String.append(_:)(v49);

  v50 = String._bridgeToObjectiveC()();

  [v37 logInfo:v50];

  v51 = v364;
  type metadata accessor for ActivityScene();
  v52 = swift_dynamicCastClass();
  if (v52)
  {
    v362 = v37;
    v53 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene;
    v54 = *&v38[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene];
    *&v38[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene] = v52;
    v55 = v52;
    v358 = v51;

    v56 = sub_10008BB48([v44 role]);
    v333 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination;
    v38[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] = v56;
    swift_getKeyPath();
    v364 = v55;
    dispatch thunk of ActivityScene.subscript.getter();

    v57 = v368;
    v58 = v365;
    v59 = v38;
    if (v368)
    {
      v354 = v38;
      v60 = v365[7];
      v61 = 1;
      v62 = v363;
      v60(v33, 1, 1, v363);
      sub_10004CB7C(&qword_100115F28, &type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
      dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

      v63 = v58[6];
      if (v63(v33, 1, v62) != 1)
      {
        (v365[4])(v35, v33, v62);
        v61 = 0;
      }

      v60(v35, v61, 1, v62);
      v64 = v63(v35, 1, v62);
      v59 = v354;
      v65 = v361;
      if (v64 != 1)
      {
        (v365[4])(v361, v35, v62);
        v368 = 0;
        v369 = 0xE000000000000000;
        _StringGuts.grow(_:)(33);
        v66 = [v59 description];
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        v368 = v67;
        v369 = v69;
        v70._countAndFlagsBits = 0xD00000000000001CLL;
        v70._object = 0x80000001000D8F80;
        String.append(_:)(v70);
        v71 = v360;
        ActivityDescriptor.attributesType.getter();
        sub_10004CB7C(&qword_100115F30, &type metadata accessor for ActivityAttributesType, &protocol conformance descriptor for ActivityAttributesType);
        v72 = v357;
        v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v73);

        v74 = *(v356 + 8);
        v74(v71, v72);
        v75._countAndFlagsBits = 93;
        v75._object = 0xE100000000000000;
        String.append(_:)(v75);
        v76 = String._bridgeToObjectiveC()();

        [v362 logInfo:v76];

        if (v59[v333] <= 2u || v59[v333] > 4u || v59[v333] == 3)
        {
          v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v101 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        v102 = *&v59[v53];
        if (v102)
        {
          v103 = [v102 _FBSScene];
          [v103 addObserver:v59];
        }

LABEL_21:
        v104 = v360;
        ActivityDescriptor.attributesType.getter();
        sub_10004CB7C(&qword_100115F38, &type metadata accessor for TimerActivityAttributes, &protocol conformance descriptor for TimerActivityAttributes);
        v105 = v355;
        v106 = v359;
        ActivityAttributesType.init<A>(from:)();
        v107 = static ActivityAttributesType.== infix(_:_:)();
        v74(v105, v72);
        v74(v104, v72);
        if (v107)
        {
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          v108 = ActivityDescriptor.attributesData.getter();
          v110 = v109;
          sub_10004CB7C(&qword_100115F70, &type metadata accessor for TimerActivityAttributes, &protocol conformance descriptor for TimerActivityAttributes);
          v111 = v350;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          v112 = v106;
          sub_10004EACC(v108, v110);

          v124 = v353;
          v360 = *(v353 + 56);
          (v360)(v111, 0, 1, v112);
          v125 = v348;
          (*(v124 + 32))(v348, v111, v112);
          v368 = 0;
          v369 = 0xE000000000000000;
          _StringGuts.grow(_:)(57);
          v126 = v354;
          v127 = [v354 description];
          v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = v129;

          v131._countAndFlagsBits = v128;
          v131._object = v130;
          String.append(_:)(v131);

          v132._countAndFlagsBits = 0xD000000000000018;
          v132._object = 0x80000001000D9110;
          String.append(_:)(v132);
          _print_unlocked<A, B>(_:_:)();
          v133._countAndFlagsBits = 0x632068746977205DLL;
          v133._object = 0xEF20747865746E6FLL;
          String.append(_:)(v133);
          v134 = TimerActivityAttributes.context.getter();
          v135 = [v134 description];
          v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v138 = v137;

          v139._countAndFlagsBits = v136;
          v139._object = v138;
          String.append(_:)(v139);

          v140._countAndFlagsBits = 0x676E69726966202CLL;
          v140._object = 0xEA0000000000203ALL;
          String.append(_:)(v140);
          v141 = TimerActivityAttributes.context.getter();
          v142 = dispatch thunk of TimerContext.firing.getter();

          if (v142)
          {
            v143 = 1702195828;
          }

          else
          {
            v143 = 0x65736C6166;
          }

          if (v142)
          {
            v144 = 0xE400000000000000;
          }

          else
          {
            v144 = 0xE500000000000000;
          }

          v145 = v144;
          String.append(_:)(*&v143);

          v146 = String._bridgeToObjectiveC()();

          v147 = v362;
          [v362 logInfo:v146];

          v148 = v347;
          (*(v124 + 16))(v347, v125, v112);
          (v360)(v148, 0, 1, v112);
          v149 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerAttributes;
          swift_beginAccess();
          sub_10004EC60(v148, &v126[v149], &qword_100115E28, &qword_1000D3278);
          swift_endAccess();
          v150 = TimerActivityAttributes.context.getter();
          LOBYTE(v149) = dispatch thunk of TimerContext.firing.getter();

          v151 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType;
          v126[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType] = v149 & 1;
          v152 = *&v126[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator];

          v153 = TimerActivityAttributes.context.getter();
          v154 = dispatch thunk of TimerContext.timerId.getter();
          v156 = v155;

          v157 = type metadata accessor for TaskPriority();
          v158 = v349;
          (*(*(v157 - 8) + 56))(v349, 1, 1, v157);
          v159 = swift_allocObject();
          v159[2] = 0;
          v159[3] = 0;
          v159[4] = v152;
          v159[5] = v154;
          v159[6] = v156;
          sub_100075B64(0, 0, v158, &unk_1000D3418, v159);

          if (sub_10003F1D4(v126[v151]))
          {
            v368 = 0;
            v369 = 0xE000000000000000;
            _StringGuts.grow(_:)(56);
            v189 = &off_10010F000;
            v160 = [v126 description];
            v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v163 = v162;

            v164._countAndFlagsBits = v161;
            v164._object = v163;
            String.append(_:)(v164);

            v165._object = 0x80000001000D9130;
            v165._countAndFlagsBits = 0xD000000000000028;
            String.append(_:)(v165);
            v166 = [v126 description];
            v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v169 = v168;

            v170._countAndFlagsBits = v167;
            v170._object = v169;
            String.append(_:)(v170);

            v171._object = 0xE90000000000005BLL;
            v171._countAndFlagsBits = 0x20646920726F6620;
            String.append(_:)(v171);
            v172 = TimerActivityAttributes.context.getter();
            v173 = dispatch thunk of TimerContext.timerId.getter();
            v175 = v174;

            v176._countAndFlagsBits = v173;
            v176._object = v175;
            String.append(_:)(v176);

            v177._countAndFlagsBits = 93;
            v177._object = 0xE100000000000000;
            String.append(_:)(v177);
            v178 = String._bridgeToObjectiveC()();

            [v147 logInfo:v178];

            if (qword_1001135F8 != -1)
            {
              swift_once();
            }

            sub_10004CB7C(&qword_100115E30, type metadata accessor for SessionSceneDelegate, &unk_1000D31D8);
            v179 = TimerActivityAttributes.context.getter();
            v180 = dispatch thunk of TimerContext.timerId.getter();
            v182 = v181;

            v366 = v180;
            v367 = v182;
            AnyHashable.init<A>(_:)();
            dispatch thunk of DataStore.registerObserver(_:for:)();
            sub_10004E3D4(&v368);
            v112 = v359;
            (*(v353 + 8))(v125, v359);
            v59 = v126;
            v117 = v361;
            goto LABEL_40;
          }

          (*(v124 + 8))(v125, v112);
          v59 = v126;
          v117 = v361;
        }

        else
        {
          ActivityDescriptor.attributesType.getter();
          type metadata accessor for StopwatchActivityAttributes();
          sub_10004CB7C(&qword_100115F40, &type metadata accessor for StopwatchActivityAttributes, &protocol conformance descriptor for StopwatchActivityAttributes);
          ActivityAttributesType.init<A>(from:)();
          v113 = static ActivityAttributesType.== infix(_:_:)();
          v74(v105, v72);
          v74(v104, v72);
          if (v113)
          {
            type metadata accessor for JSONDecoder();
            swift_allocObject();
            JSONDecoder.init()();
            v114 = ActivityDescriptor.attributesData.getter();
            v116 = v115;
            sub_10004CB7C(&qword_100115F68, &type metadata accessor for StopwatchActivityAttributes, &protocol conformance descriptor for StopwatchActivityAttributes);
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            v117 = v65;
            sub_10004EACC(v114, v116);

            v59 = v354;
            *&v354[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes] = v368;

            v59[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType] = 4;
            v188 = &off_10010F000;
            v112 = v359;
            v189 = &off_10010F000;
            goto LABEL_41;
          }

          ActivityDescriptor.attributesType.getter();
          sub_10004CB7C(&qword_100115F48, &type metadata accessor for AlarmActivityAttributes, &protocol conformance descriptor for AlarmActivityAttributes);
          v118 = v351;
          ActivityAttributesType.init<A>(from:)();
          v119 = static ActivityAttributesType.== infix(_:_:)();
          v74(v105, v72);
          v74(v104, v72);
          if ((v119 & 1) == 0)
          {
            v183 = ActivityDescriptor.attributesData.getter();
            v185 = v184;
            type metadata accessor for JSONDecoder();
            swift_allocObject();
            JSONDecoder.init()();
            sub_10002DAD8(&unk_100115F50, &qword_100115E88, &unk_1000D3380, &protocol conformance descriptor for AlarmAttributes<A>);
            v186 = v342;
            v187 = v344;
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            v117 = v65;
            v112 = v359;
            sub_10004EACC(v183, v185);

            v305 = v343;
            (*(v343 + 56))(v186, 0, 1, v187);
            v306 = v334;
            (*(v305 + 32))(v334, v186, v187);
            v188 = &off_10010F000;
            v307 = [v364 SBUI_isHostedBySystemAperture];
            v189 = &off_10010F000;
            if (v307)
            {
              v308 = [objc_allocWithZone(type metadata accessor for AlarmKitApertureElementController(0)) init];
              v309 = *&v59[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider];
              *&v59[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider] = v308;
            }

            v310 = sub_10003E0EC(v65, v306);
            (*(v305 + 8))(v306, v187, v310);
LABEL_41:
            v190 = v358;
            v191 = v364;
            if ([v364 v188[367]])
            {
              v368 = 0;
              v369 = 0xE000000000000000;
              _StringGuts.grow(_:)(39);
              v192 = [v59 v189[306]];
              v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v195 = v194;

              v196._countAndFlagsBits = v193;
              v196._object = v195;
              String.append(_:)(v196);
              v197 = v354;

              v198._countAndFlagsBits = 0xD000000000000023;
              v198._object = 0x80000001000D9000;
              String.append(_:)(v198);
              v366 = [v191 activationState];
              type metadata accessor for ActivationState(0);
              _print_unlocked<A, B>(_:_:)();
              v199 = String._bridgeToObjectiveC()();

              [v362 logInfo:v199];

              v200 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType;
              v201 = v197[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType];
              if (v201 < 2)
              {
                v218 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerAttributes;
                swift_beginAccess();
                v219 = v345;
                sub_10002CFC4(&v197[v218], v345, &qword_100115E28, &qword_1000D3278);
                if ((*(v353 + 48))(v219, 1, v112))
                {
                  sub_10002D02C(v219, &qword_100115E28, &qword_1000D3278);
                  v220 = 0;
                  v221 = 0;
                }

                else
                {
                  v245 = TimerActivityAttributes.context.getter();
                  sub_10002D02C(v219, &qword_100115E28, &qword_1000D3278);
                  v220 = dispatch thunk of TimerContext.timerId.getter();
                  v221 = v246;
                }

                if (v197[v200] <= 1u && v197[v200])
                {
                  v314 = 1;
                }

                else
                {
                  v314 = _stringCompareWithSmolCheck(_:_:expecting:)();
                }

                v315 = objc_allocWithZone(type metadata accessor for TimerApertureElementController(0));
                v312 = sub_1000B5050(v220, v221, v314 & 1);
                v313 = *&v354[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerApertureElementProvider];
                *&v354[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerApertureElementProvider] = v312;
              }

              else
              {
                if (v201 - 2 < 2)
                {
                  v202 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmAttributes;
                  swift_beginAccess();
                  v203 = v346;
                  sub_10002CFC4(&v197[v202], v346, &qword_100115E20, &qword_1000D3270);
                  v204 = v352 + 48;
                  v362 = *(v352 + 48);
                  v205 = (v362)(v203, 1, v351);
                  v352 = v204;
                  if (v205)
                  {
                    sub_10002D02C(v203, &qword_100115E20, &qword_1000D3270);
                    v206 = 0;
                    v207 = 0;
                  }

                  else
                  {
                    v247 = AlarmActivityAttributes.context.getter();
                    sub_10002D02C(v203, &qword_100115E20, &qword_1000D3270);
                    v206 = AlarmContext.alarmId.getter();
                    v207 = v248;
                  }

                  if (v354[v200] == 2)
                  {
                    v318 = 1;
                  }

                  else
                  {
                    v318 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  }

                  v319 = objc_allocWithZone(type metadata accessor for AlarmApertureElementController(0));
                  v320 = sub_100050170(v206, v207, v318 & 1);
                  v321 = v354;
                  v322 = *&v354[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmApertureElementProvider];
                  *&v354[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmApertureElementProvider] = v320;
                  v317 = v320;

                  v323 = v321[v200];
                  if (v323 <= 3 && v321[v200] > 1u && v323 == 2)
                  {
                    v324 = v317;

LABEL_106:
                    v327 = v354;

                    v328 = AlarmsViewModel.manager.getter();

                    v329 = v340;
                    sub_10002CFC4(&v327[v202], v340, &qword_100115E20, &qword_1000D3270);
                    if ((v362)(v329, 1, v351))
                    {
                      sub_10002D02C(v329, &qword_100115E20, &qword_1000D3270);
                      v330 = 0;
                    }

                    else
                    {
                      v331 = AlarmActivityAttributes.context.getter();
                      sub_10002D02C(v329, &qword_100115E20, &qword_1000D3270);
                      AlarmContext.alarmId.getter();

                      v330 = String._bridgeToObjectiveC()();
                    }

                    v332 = String._bridgeToObjectiveC()();

                    [v328 didRenderSceneForAlarm:v330 withType:v332];

                    goto LABEL_111;
                  }

                  v325 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v326 = v317;

                  if (v325)
                  {
                    goto LABEL_106;
                  }

                  v317 = v326;
LABEL_111:
                  [v317 loadViewIfNeeded];
                  [v364 setSystemApertureElementViewControllerProvider:v317];

                  (v365[1])(v117, v363);
                  return;
                }

                v222 = v363;
                if (v201 != 4)
                {
                  v227 = *&v197[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider];
                  if (!v227)
                  {

                    (v365[1])(v117, v222);
                    return;
                  }

                  v228 = v227;
                  goto LABEL_98;
                }

                v223 = *&v197[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes];
                if (v223)
                {

                  v224 = v337;
                  dispatch thunk of StopwatchActivityAttributes.context.getter();

                  v225 = StopwatchContext.id.getter();
                  v223 = v226;
                  (*(v338 + 8))(v224, v339);
                }

                else
                {
                  v225 = 0;
                }

                v311 = objc_allocWithZone(type metadata accessor for StopwatchApertureController(0));
                v312 = sub_1000C50E0(v225, v223);
                v313 = *&v197[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchApertureElementProvider];
                *&v197[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchApertureElementProvider] = v312;
              }

              v316 = v312;

              v228 = v316;
LABEL_98:
              v317 = v228;
              goto LABEL_111;
            }

            v208 = [v59 v189[306]];
            v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v211 = v210;

            v368 = v209;
            v369 = v211;
            v212._countAndFlagsBits = 0xD00000000000002CLL;
            v212._object = 0x80000001000D8FD0;
            String.append(_:)(v212);
            v213 = v333;
            v214 = v59[v333];
            if (v214 <= 2)
            {
              if (!v59[v333])
              {
                v216 = 0x43746E6569626D41;
                v215 = 0xEE00746361706D6FLL;
                goto LABEL_66;
              }

              if (v214 != 1)
              {
                v215 = 0xE800000000000000;
                v216 = 0x6572757472657041;
                goto LABEL_66;
              }

              v216 = 0x46746E6569626D41;
              v217 = 7105653;
            }

            else
            {
              v215 = 0xEA00000000006E65;
              if (v59[v333] <= 4u)
              {
                v216 = 0x657263536C6C7546;
                if (v214 == 3)
                {
                  v215 = 0xE600000000000000;
                  v216 = 0x72656E6E6142;
                }

                goto LABEL_66;
              }

              if (v214 == 5)
              {
                v216 = 0x657263536B636F4CLL;
LABEL_66:
                v229 = v215;
                String.append(_:)(*&v216);

                v230 = String._bridgeToObjectiveC()();

                [v362 logInfo:v230];

                v231 = objc_allocWithZone(SecureWindow);
                v232 = [v231 initWithWindowScene:v364];
                v233 = *&v59[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window];
                *&v59[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window] = v232;

                v234 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType;
                sub_100047388(v59[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType]);
                sub_10002BB3C(0, &qword_100114D78, UIColor_ptr);
                sub_1000C0854();
                dispatch thunk of ActivityScene.textColor.setter();
                v235 = [objc_opt_self() blackColor];
                v236 = [v235 colorWithAlphaComponent:0.9];

                dispatch thunk of ActivityScene.backgroundTintColor.setter();
                if (sub_1000899F0(v59[v213]))
                {
                  v237 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
                  ActivitySceneMetrics.init(size:cornerRadius:)();
                  dispatch thunk of ActivityScene.resolvedMetrics.setter();
                }

                v238 = v59[v234];
                if (qword_100113638 != -1)
                {
                  swift_once();
                }

                v239 = qword_10011F510;

                (v365[1])(v117, v363);
                v240 = swift_allocObject();
                *(v240 + 16) = v59;
                *(v240 + 24) = v238;
                v241 = (v239 + OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_reloadLayout);
                v242 = *(v239 + OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_reloadLayout);
                v243 = *(v239 + OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_reloadLayout + 8);
                *v241 = sub_10004EB7C;
                v241[1] = v240;
                v244 = v59;
                sub_10004EB88(v242, v243);
                return;
              }

              v216 = 0x726F707075736E55;
              v217 = 6579572;
            }

            v215 = v217 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            goto LABEL_66;
          }

          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          v120 = ActivityDescriptor.attributesData.getter();
          v122 = v121;
          sub_10004CB7C(&qword_100115F60, &type metadata accessor for AlarmActivityAttributes, &protocol conformance descriptor for AlarmActivityAttributes);
          v123 = v341;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          v117 = v65;
          sub_10004EACC(v120, v122);

          v249 = v352;
          v360 = *(v352 + 56);
          (v360)(v123, 0, 1, v118);
          v250 = v336;
          (*(v249 + 32))(v336, v123, v118);
          v368 = 0;
          v369 = 0xE000000000000000;
          _StringGuts.grow(_:)(45);
          v251 = v354;
          v252 = [v354 description];
          v253 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v255 = v254;

          v256._countAndFlagsBits = v253;
          v256._object = v255;
          String.append(_:)(v256);

          v257._countAndFlagsBits = 0xD000000000000018;
          v257._object = 0x80000001000D9060;
          String.append(_:)(v257);
          _print_unlocked<A, B>(_:_:)();
          v258._countAndFlagsBits = 0x632068746977205DLL;
          v258._object = 0xEF20747865746E6FLL;
          String.append(_:)(v258);
          v259 = AlarmActivityAttributes.context.getter();
          v260 = [v259 description];
          v261 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v263 = v262;

          v264._countAndFlagsBits = v261;
          v264._object = v263;
          String.append(_:)(v264);

          v265 = String._bridgeToObjectiveC()();

          [v362 logInfo:v265];

          v266 = AlarmActivityAttributes.context.getter();
          v267 = AlarmContext.isSnoozed.getter();

          if (v267)
          {
            v268 = 3;
          }

          else
          {
            v268 = 2;
          }

          v269 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType;
          v251[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType] = v268;
          v270 = *&v251[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator];

          v271 = AlarmActivityAttributes.context.getter();
          v272 = AlarmContext.alarmId.getter();
          v274 = v273;

          v275 = type metadata accessor for TaskPriority();
          v276 = v349;
          (*(*(v275 - 8) + 56))(v349, 1, 1, v275);
          v277 = swift_allocObject();
          v277[2] = 0;
          v277[3] = 0;
          v277[4] = v270;
          v277[5] = v272;
          v278 = v352;
          v277[6] = v274;
          sub_100075B64(0, 0, v276, &unk_1000D3410, v277);

          v279 = v335;
          (*(v278 + 16))(v335, v250, v118);
          (v360)(v279, 0, 1, v118);
          v280 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmAttributes;
          swift_beginAccess();
          sub_10004EC60(v279, &v251[v280], &qword_100115E20, &qword_1000D3270);
          swift_endAccess();
          if (sub_10003F1D4(v251[v269]))
          {
            v368 = 0;
            v369 = 0xE000000000000000;
            _StringGuts.grow(_:)(56);
            v189 = &off_10010F000;
            v281 = [v251 description];
            v282 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v284 = v283;

            v285._countAndFlagsBits = v282;
            v285._object = v284;
            String.append(_:)(v285);

            v286._object = 0x80000001000D9080;
            v286._countAndFlagsBits = 0xD000000000000028;
            String.append(_:)(v286);
            v287 = [v251 description];
            v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v290 = v289;

            v291._countAndFlagsBits = v288;
            v291._object = v290;
            String.append(_:)(v291);

            v292._object = 0xE90000000000005BLL;
            v292._countAndFlagsBits = 0x20646920726F6620;
            String.append(_:)(v292);
            v293 = AlarmActivityAttributes.context.getter();
            v294 = AlarmContext.alarmId.getter();
            v296 = v295;

            v297._countAndFlagsBits = v294;
            v297._object = v296;
            String.append(_:)(v297);

            v298._countAndFlagsBits = 93;
            v298._object = 0xE100000000000000;
            String.append(_:)(v298);
            v299 = String._bridgeToObjectiveC()();

            [v362 logInfo:v299];

            v300 = v250;
            if (qword_100113600 != -1)
            {
              swift_once();
            }

            sub_10004CB7C(&qword_100115E30, type metadata accessor for SessionSceneDelegate, &unk_1000D31D8);
            v301 = AlarmActivityAttributes.context.getter();
            v302 = AlarmContext.alarmId.getter();
            v304 = v303;

            v366 = v302;
            v367 = v304;
            AnyHashable.init<A>(_:)();
            dispatch thunk of DataStore.registerObserver(_:for:)();
            sub_10004E3D4(&v368);
            (*(v352 + 8))(v300, v351);
            v59 = v251;
            v112 = v359;
            goto LABEL_40;
          }

          (*(v278 + 8))(v250, v118);
          v59 = v251;
          v112 = v359;
        }

        v189 = &off_10010F000;
LABEL_40:
        v188 = &off_10010F000;
        goto LABEL_41;
      }
    }

    else
    {
      (v365[7])(v35, 1, 1, v363);
    }

    sub_10002D02C(v35, &qword_100115F20, &qword_1000D33D8);
    v368 = 0;
    v369 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v89 = [v59 description];
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    v368 = v90;
    v369 = v92;
    v93._countAndFlagsBits = 0xD000000000000023;
    v93._object = 0x80000001000D8F50;
    String.append(_:)(v93);
    v94 = [v364 description];
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98._countAndFlagsBits = v95;
    v98._object = v97;
    String.append(_:)(v98);

    v99._countAndFlagsBits = 93;
    v99._object = 0xE100000000000000;
    String.append(_:)(v99);
    v100 = String._bridgeToObjectiveC()();

    [v362 logError:v100];

    return;
  }

  v368 = 0;
  v369 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v77 = [v38 description];
  v78 = v51;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  v368 = v79;
  v369 = v81;
  v82._countAndFlagsBits = 0xD000000000000017;
  v82._object = 0x80000001000D87F0;
  String.append(_:)(v82);
  v83 = [v78 description];
  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  v87._countAndFlagsBits = v84;
  v87._object = v86;
  String.append(_:)(v87);

  v365 = String._bridgeToObjectiveC()();

  [v37 logError:v365];
  v88 = v365;
}

id sub_10003CDF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v128 = a4;
  v134 = a3;
  v141 = a2;
  v4 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v4 - 8);
  v127 = &v114 - v5;
  v126 = type metadata accessor for UUID();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for AlarmPresentationState.Mode();
  v131 = *(v132 - 1);
  __chkstk_darwin(v132);
  v130 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v140 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v114 - v8;
  v9 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v10 = __chkstk_darwin(v9 - 8);
  v133 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v129 = &v114 - v13;
  v14 = __chkstk_darwin(v12);
  v135 = (&v114 - v15);
  __chkstk_darwin(v14);
  v137 = &v114 - v16;
  v17 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v114 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v114 - v25;
  __chkstk_darwin(v24);
  v28 = &v114 - v27;
  v29 = type metadata accessor for AlarmPresentationState();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10004CB7C(&qword_100115EF8, &type metadata accessor for AlarmPresentationState, &protocol conformance descriptor for AlarmPresentationState);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v120 = v26;
  v119 = v23;
  v117 = v20;

  v33 = *(v30 + 56);
  v33(v28, 0, 1, v29);
  v123 = v30;
  (*(v30 + 32))(v32, v28, v29);
  v141 = v29;
  if (qword_100113608 != -1)
  {
    swift_once();
  }

  v118 = qword_10011F3B8;
  dispatch thunk of DataStore.updateEntry(_:)();
  v34 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  v35 = v139;
  swift_beginAccess();
  v122 = v34;
  v36 = v137;
  sub_10002CFC4(v35 + v34, v137, &qword_100115E38, &qword_1000D3280);
  v37 = v140;
  v38 = v140 + 48;
  v39 = v138;
  v121 = *(v140 + 48);
  if (v121(v36, 1, v138) != 1)
  {
    (*(v123 + 8))(v32, v141);
    return sub_10002D02C(v36, &qword_100115E38, &qword_1000D3280);
  }

  v115 = v33;
  v116 = v38;
  sub_10002D02C(v36, &qword_100115E38, &qword_1000D3280);
  v40 = ActivityDescriptor.attributesData.getter();
  v137 = v41;
  v42 = AlarmPresentationState.bundleID.getter();
  if (v43 && ((v44 = v42, v42 == 0xD000000000000015) && v43 == 0x80000001000D7F20 || (v45 = v43, v46 = _stringCompareWithSmolCheck(_:_:expecting:)(), v43 = v45, (v46 & 1) != 0)))
  {
    v114 = v44;
    v134 = v43;
    swift_allocObject();
    JSONDecoder.init()();
    sub_10002DAD8(&unk_100115F00, &qword_1001139D0, &unk_1000D08C0, &protocol conformance descriptor for AlarmAttributes<A>);
    v47 = v137;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_10004EACC(v40, v47);

    v50 = v135;
  }

  else
  {
    v50 = v135;
    sub_10004CC20(v135);

    v49.n128_f64[0] = sub_10004EACC(v40, v137);
  }

  v135 = *(v37 + 56);
  (v135)(v50, 0, 1, v39, v49);
  v51 = v136;
  (*(v37 + 32))(v136, v50, v39);
  v137 = objc_opt_self();
  v144 = 0;
  v145 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v52 = v139;
  v53 = [v139 description];
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v39;
  v57 = v56;

  v58._countAndFlagsBits = v54;
  v58._object = v57;
  String.append(_:)(v58);

  v59._countAndFlagsBits = 0xD000000000000017;
  v59._object = 0x80000001000D8E70;
  String.append(_:)(v59);
  _print_unlocked<A, B>(_:_:)();
  v60._countAndFlagsBits = 0xD000000000000011;
  v60._object = 0x80000001000D8E90;
  String.append(_:)(v60);
  v61 = v141;
  _print_unlocked<A, B>(_:_:)();
  v62 = String._bridgeToObjectiveC()();

  [v137 logInfo:v62];

  v63 = v129;
  (*(v140 + 16))(v129, v51, v55);
  (v135)(v63, 0, 1, v55);
  v64 = v122;
  swift_beginAccess();
  sub_10004EC60(v63, &v52[v64], &qword_100115E38, &qword_1000D3280);
  swift_endAccess();
  v65 = v123;
  v66 = v120;
  (*(v123 + 16))(v120, v32, v61);
  v67 = v61;
  v115(v66, 0, 1, v61);
  v68 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmPresentationState;
  swift_beginAccess();
  sub_10004EC60(v66, &v52[v68], &unk_100115DA0, &unk_1000D3220);
  swift_endAccess();
  v69 = v130;
  AlarmPresentationState.mode.getter();
  v70 = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v131 + 8))(v69, v132);
  if (v70)
  {
    v71 = 5;
  }

  else
  {
    v71 = 6;
  }

  v72 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType;
  v52[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType] = v71;
  v73 = *&v52[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene];
  v74 = v133;
  if (!v73)
  {
LABEL_22:
    sub_10002CFC4(&v52[v64], v74, &qword_100115E38, &qword_1000D3280);
    v103 = v138;
    v104 = v121(v74, 1, v138);
    v105 = v140;
    if (!v104)
    {
      v106 = v127;
      AlarmAttributes.metadata.getter();
      v107 = type metadata accessor for MTAlarmCustomContent();
      if (!(*(*(v107 - 8) + 48))(v106, 1, v107))
      {
        MTAlarmCustomContent.type.getter();
        sub_10002D02C(v106, &unk_100118100, &qword_1000D1250);
        sub_10002D02C(v74, &qword_100115E38, &qword_1000D3280);
        v108 = AlarmType.rawValue.getter();
        if (v108 == AlarmType.rawValue.getter())
        {

          v109 = AlarmsViewModel.manager.getter();

          v110 = v117;
          sub_10002CFC4(&v52[v68], v117, &unk_100115DA0, &unk_1000D3220);
          if ((*(v65 + 48))(v110, 1, v67))
          {
            sub_10002D02C(v110, &unk_100115DA0, &unk_1000D3220);
            v111 = 0;
          }

          else
          {
            v112 = v124;
            AlarmPresentationState.alarmID.getter();
            sub_10002D02C(v110, &unk_100115DA0, &unk_1000D3220);
            UUID.uuidString.getter();
            (*(v125 + 8))(v112, v126);
            v111 = String._bridgeToObjectiveC()();
          }

          v113 = String._bridgeToObjectiveC()();

          [v109 didRenderSceneForAlarm:v111 withType:v113];

          v65 = v123;
        }

        goto LABEL_26;
      }

      sub_10002D02C(v106, &unk_100118100, &qword_1000D1250);
    }

    sub_10002D02C(v74, &qword_100115E38, &qword_1000D3280);
LABEL_26:
    (*(v105 + 8))(v136, v103);
    return (*(v65 + 8))(v32, v67);
  }

  v75 = v119;
  sub_10002CFC4(&v52[v68], v119, &unk_100115DA0, &unk_1000D3220);
  if ((*(v65 + 48))(v75, 1, v67))
  {
    sub_10002D02C(v75, &unk_100115DA0, &unk_1000D3220);
    goto LABEL_22;
  }

  v76 = v73;
  v77 = v124;
  AlarmPresentationState.alarmID.getter();
  sub_10002D02C(v75, &unk_100115DA0, &unk_1000D3220);
  v135 = UUID.uuidString.getter();
  v79 = v78;
  v80 = v77;
  v81 = v76;
  (*(v125 + 8))(v80, v126);
  result = [v76 SBUI_isHostedBySystemAperture];
  if (!result)
  {
    v144 = 0;
    v145 = 0xE000000000000000;
    v134 = v79;
    _StringGuts.grow(_:)(50);
    v86 = [v52 description];
    v132 = v76;
    v87 = v86;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v32;
    v91 = v90;

    v144 = v88;
    v145 = v91;
    v32 = v89;
    v74 = v133;
    v92._countAndFlagsBits = 0xD000000000000022;
    v92._object = 0x80000001000D8EB0;
    String.append(_:)(v92);
    v93 = [v139 description];
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    v97._countAndFlagsBits = v94;
    v97._object = v96;
    String.append(_:)(v97);
    v52 = v139;
    v67 = v141;

    v98._countAndFlagsBits = 0x20646920726F6620;
    v98._object = 0xE90000000000005BLL;
    String.append(_:)(v98);
    v99._object = v134;
    v100 = v135;
    v99._countAndFlagsBits = v135;
    String.append(_:)(v99);
    v101._countAndFlagsBits = 93;
    v101._object = 0xE100000000000000;
    String.append(_:)(v101);
    v102 = String._bridgeToObjectiveC()();

    [v137 logInfo:v102];

    sub_10004CB7C(&qword_100115E30, type metadata accessor for SessionSceneDelegate, &unk_1000D31D8);
    v142 = v100;
    v143 = v134;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.registerObserver(_:for:)();
    sub_10004E3D4(&v144);
    sub_100047388(v52[v72]);

    goto LABEL_21;
  }

  v82 = v135;
  v83 = *&v52[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider];
  if (v83)
  {
    v84 = v79;
    v85 = v83;
    sub_10008DA7C(v82, v84, v136);

LABEL_21:
    v64 = v122;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

double sub_10003E0EC(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v4 = sub_1000032D4(&qword_100115E88, &unk_1000D3380);
  v61 = *(v4 - 8);
  v62 = v4;
  v58 = *(v61 + 64);
  __chkstk_darwin(v4);
  v60 = &v47 - v5;
  v57 = type metadata accessor for ActivityDescriptor();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = v6;
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100115E90, &qword_1000D1430);
  __chkstk_darwin(v7 - 8);
  v50 = &v47 - v8;
  updated = type metadata accessor for ActivityUpdateFeed();
  v10 = *(updated - 8);
  __chkstk_darwin(updated);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000032D4(&qword_100115E98, &qword_1000D3390);
  v48 = *(v13 - 8);
  v49 = v13;
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = sub_1000032D4(&qword_100115EA0, &qword_1000D3398);
  v51 = *(v16 - 8);
  v52 = v16;
  __chkstk_darwin(v16);
  v63 = &v47 - v17;
  v18 = objc_opt_self();
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(75);
  v47 = v2;
  v19 = [v2 description];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._object = 0x80000001000D8DA0;
  v24._countAndFlagsBits = 0xD000000000000047;
  String.append(_:)(v24);
  v25._countAndFlagsBits = ActivityDescriptor.id.getter();
  String.append(_:)(v25);

  v26 = String._bridgeToObjectiveC()();

  [v18 logInfo:v26];

  type metadata accessor for ActivityCenter();
  static ActivityCenter.shared.getter();
  v56 = a1;
  ActivityDescriptor.id.getter();
  (*(v10 + 104))(v12, enum case for ActivityUpdateFeed.all(_:), updated);
  v27 = dispatch thunk of ActivityCenter.observePayloads(id:feed:)();
  (*(v10 + 8))(v12, updated);

  v64 = v27;
  v28 = swift_allocObject();
  v29 = v47;
  *(v28 + 16) = v47;
  v47 = v29;
  sub_1000032D4(&qword_100115EA8, &qword_1000D33A0);
  sub_1000032D4(&qword_100115EB0, &qword_1000D33A8);
  sub_10002DAD8(&qword_100115EB8, &qword_100115EA8, &qword_1000D33A0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10002DAD8(&qword_100115EC0, &qword_100115EB0, &qword_1000D33A8, &protocol conformance descriptor for Empty<A, B>);
  Publisher.catch<A>(_:)();

  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v64 = v30;
  v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v32 = v50;
  (*(*(v31 - 8) + 56))(v50, 1, 1, v31);
  sub_10002DAD8(&qword_100115EC8, &qword_100115E98, &qword_1000D3390, &protocol conformance descriptor for Publishers.Catch<A, B>);
  sub_10004DE88(&qword_100115ED0, &qword_100115D80, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v33 = v49;
  Publisher.receive<A>(on:options:)();
  sub_10002D02C(v32, &qword_100115E90, &qword_1000D1430);

  (*(v48 + 8))(v15, v33);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = v54;
  v35 = v55;
  v37 = v57;
  (*(v55 + 16))(v54, v56, v57);
  v39 = v60;
  v38 = v61;
  v40 = v62;
  (*(v61 + 16))(v60, v59, v62);
  v41 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v42 = (v53 + *(v38 + 80) + v41) & ~*(v38 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v34;
  (*(v35 + 32))(v43 + v41, v36, v37);
  (*(v38 + 32))(v43 + v42, v39, v40);
  sub_10002DAD8(&qword_100115ED8, &qword_100115EA0, &qword_1000D3398, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v44 = v52;
  v45 = v63;
  Publisher<>.sink(receiveValue:)();

  (*(v51 + 8))(v45, v44);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

uint64_t sub_10003E984(uint64_t *a1, void *a2)
{
  v3 = objc_opt_self();
  _StringGuts.grow(_:)(57);
  v4 = [a2 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._object = 0x80000001000D8E30;
  v9._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v9);
  sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
  _print_unlocked<A, B>(_:_:)();
  v10 = String._bridgeToObjectiveC()();

  [v3 logError:v10];

  sub_1000032D4(&qword_100115EE8, &qword_1000D33B8);
  return Empty.init(completeImmediately:)();
}

void sub_10003EAF0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v66 = a3;
  v67 = a1;
  v5 = type metadata accessor for OpaqueActivityContent();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v60 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000032D4(&qword_100115EE0, &qword_1000D33B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v16 = type metadata accessor for OpaqueActivityPayload();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v59 = a4;
    sub_10002B00C(v67, &v68);
    sub_1000032D4(&qword_100115EE8, &qword_1000D33B8);
    v22 = swift_dynamicCast();
    v23 = *(v17 + 56);
    if (v22)
    {
      v23(v15, 0, 1, v16);
      v58 = v17;
      (*(v17 + 32))(v19, v15, v16);
      v67 = objc_opt_self();
      v68 = 0;
      v69 = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v24 = [v21 description];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      v29._object = 0x80000001000D8E10;
      v29._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v29);
      OpaqueActivityPayload.id.getter();
      sub_10004CB7C(&qword_100118110, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v30);

      (*(v60 + 8))(v12, v10);
      v31._countAndFlagsBits = 0x203A656D6954200ALL;
      v31._object = 0xE800000000000000;
      String.append(_:)(v31);
      OpaqueActivityPayload.timestamp.getter();
      v32 = Date.description.getter();
      v34 = v33;
      (*(v61 + 8))(v9, v62);
      v35._countAndFlagsBits = v32;
      v35._object = v34;
      String.append(_:)(v35);

      v36._countAndFlagsBits = 0x2061746144202D20;
      v36._object = 0xEE00203A657A6953;
      String.append(_:)(v36);
      v37 = v63;
      OpaqueActivityPayload.content.getter();
      v38 = OpaqueActivityContent.contentState.getter();
      v40 = v39;
      v62 = v21;
      v41 = v65;
      v42 = *(v64 + 8);
      v42(v37, v65);
      v43._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v43);

      sub_10004EACC(v38, v40);
      v44 = String._bridgeToObjectiveC()();

      [v67 logInfo:v44];

      OpaqueActivityPayload.content.getter();
      v45 = OpaqueActivityContent.contentState.getter();
      v47 = v46;
      v42(v37, v41);
      v48 = v62;
      sub_10003CDF4(v45, v47, v66, v59);

      v49 = sub_10004EACC(v45, v47);
      (*(v58 + 8))(v19, v16, v49);
    }

    else
    {
      v23(v15, 1, 1, v16);
      sub_10002D02C(v15, &qword_100115EE0, &qword_1000D33B0);
      v50 = objc_opt_self();
      v68 = 0;
      v69 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      v51 = [v21 description];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55._countAndFlagsBits = v52;
      v55._object = v54;
      String.append(_:)(v55);

      v56._countAndFlagsBits = 0xD00000000000001ELL;
      v56._object = 0x80000001000D8DF0;
      String.append(_:)(v56);
      _print_unlocked<A, B>(_:_:)();
      v57 = String._bridgeToObjectiveC()();

      [v50 logError:v57];
    }
  }
}

uint64_t sub_10003F1D4(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene);
  if (v3 && ([v3 SBUI_isHostedBySystemAperture] & 1) == 0)
  {
    v6 = a1;
    v4 = 1;
    if (((1 << v6) & 0x59) == 0)
    {
      if (((1 << v6) & 0x26) == 0 || ([objc_opt_self() mtSBUIIsSystemApertureEnabled] & 1) == 0 && (v9[3] = &type metadata for ClockFeatureFlags, v9[4] = sub_10004DECC(), LOBYTE(v9[0]) = 1, v7 = isFeatureEnabled(_:)(), sub_100017D28(v9), (v7 & 1) == 0))
      {
        v8 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination;
        if (sub_100089C28(*(v1 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination)))
        {
          v4 = 1;
        }

        else
        {
          if (*(v1 + v8) <= 2u || *(v1 + v8) > 4u || *(v1 + v8) == 3)
          {
            v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          else
          {
            v4 = 1;
          }
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}