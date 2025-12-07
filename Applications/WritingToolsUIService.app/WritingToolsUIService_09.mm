void sub_100105828(const char *a1, ...)
{
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F08);
  v4 = static os_log_type_t.debug.getter();
  v5 = v1;
  oslog = Logger.logObject.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v4, a1, v6, 0xCu);
    sub_10000F500(v7, &unk_10025D580, &qword_1001CFA60);
  }
}

id sub_10010597C(void *a1)
{
  v2 = [a1 sourceBundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v6)
    {
      if (v12)
      {
        if (v4 == v10 && v6 == v12)
        {
          goto LABEL_25;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {
          goto LABEL_33;
        }

LABEL_17:
        v15 = [a1 hostBundleIdentifier];
        if (v15)
        {
          v16 = v15;
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v20 = [v7 mainBundle];
        v21 = [v20 bundleIdentifier];

        if (v21)
        {
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          if (v19)
          {
            if (v24)
            {
              if (v17 == v22 && v19 == v24)
              {
LABEL_25:

                goto LABEL_33;
              }

              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v27)
              {
                goto LABEL_33;
              }

LABEL_30:
              v25 = [a1 isLocal];
              result = [a1 isFloating];
              if (!v25)
              {
                return result;
              }

              goto LABEL_34;
            }
          }

          else if (!v24)
          {
            goto LABEL_33;
          }
        }

        else if (!v19)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else if (v6)
  {
    goto LABEL_16;
  }

LABEL_33:
  result = [a1 isFloating];
LABEL_34:
  if ((result & 1) == 0)
  {
    return [a1 keyboardPositionWithIAV];
  }

  return result;
}

uint64_t sub_100105C3C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100105C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10025A890 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!*(qword_100277358 + 16))
  {
    return swift_endAccess();
  }

  sub_100005044(a1);
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();

  sub_1001A7170(a2, a3);
}

void sub_100105D60(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_1002770A8;
  if (*(qword_1002770A8 + 16))
  {
    v7 = sub_100005044(a1);
    if (v8)
    {
      goto LABEL_9;
    }
  }

  swift_endAccess();
  if (qword_10025A740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_100277018;
  if (*(qword_100277018 + 16) && (v7 = sub_100005044(a1), (v9 & 1) != 0))
  {
LABEL_9:
    v10 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();

    if (*(v10 + 144) == 1)
    {
      *(v10 + 144) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v21 - 2) = v10;
      *(&v21 - 8) = 1;
      v22[0] = v10;
      sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    swift_endAccess();
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000F34C(v11, qword_100276F08);
    (*(v3 + 16))(v5, a1, v2);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 136315138;
      sub_1001068A4(&qword_100262478, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v3 + 8))(v5, v2);
      v19 = sub_10002510C(v16, v18, v22);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "didDismissInputWarningForSessionWithUUID: no model found for UUID [%s]", v14, 0xCu);
      sub_10000F4B4(v15);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_1001062D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002624B0, &qword_1001D8C08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100106344()
{
  result = qword_1002624F8;
  if (!qword_1002624F8)
  {
    sub_100003E34(&qword_1002624B0, &qword_1001D8C08);
    sub_1001068A4(&qword_100262500, type metadata accessor for WritingToolsView, &protocol conformance descriptor for WritingToolsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002624F8);
  }

  return result;
}

unint64_t sub_1001063F8()
{
  result = qword_100262520;
  if (!qword_100262520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262520);
  }

  return result;
}

uint64_t sub_10010644C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001064A8()
{
  result = qword_100262558;
  if (!qword_100262558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262558);
  }

  return result;
}

unint64_t sub_1001064FC()
{
  result = qword_100262568;
  if (!qword_100262568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262568);
  }

  return result;
}

uint64_t sub_1001065A4()
{
  v1 = *(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1001066E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100106754(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100028688;

  return sub_1000F54E4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001068A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100106A3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100106D00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    return qword_1001D90F0[a1];
  }

  if (a4 == 1)
  {
    return 201;
  }

  if (a3 | a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 == 1;
  }

  v6 = 101;
  if (v5)
  {
    v6 = 1;
  }

  if (a3 | a2 | a1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100106D54(uint64_t a1)
{
  if (a1 > 4u)
  {
    if (a1 > 7u)
    {
      if (a1 == 8)
      {

        return static RewriteType.bullets()();
      }

      else
      {

        return static RewriteType.tables()();
      }
    }

    else if (a1 == 5)
    {

      return static RewriteType.openEnded()();
    }

    else
    {
      if (a1 != 7)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return static RewriteType.professional()();
      }

      return static RewriteType.takeaways()();
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {

      return static RewriteType.proofreading()();
    }

    else
    {

      return static RewriteType.magic()();
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {

        return static RewriteType.friendly()();
      }

      return static RewriteType.professional()();
    }

    return static RewriteType.concise()();
  }
}

uint64_t sub_100106E88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    return qword_1001D9140[a1];
  }

  if (a4 == 1)
  {
    return 10;
  }

  if (a4 == 2 && a1 == 2 && !(a3 | a2))
  {
    return 11;
  }

  return 0;
}

void CompositionMode.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a3)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(a4 & 1);
  }
}

Swift::Int CompositionMode.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a2 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(a3 & 1);
  }

  return Hasher._finalize()();
}

void sub_100107010(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    v3 = *(v1 + 16);
    Hasher._combine(_:)(0);
    if (v2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v3 & 1);
  }
}

Swift::Int sub_100107094(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v3 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int WTIcon.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

void Mode.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  if (a5)
  {
    if (a5 == 1)
    {
      Hasher._combine(_:)(3uLL);
      if (a3 != 1)
      {
        Hasher._combine(_:)(0);
        if (a3)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v9 = a4 & 1;
        goto LABEL_20;
      }
    }

    else
    {
      if (!(a4 | a3 | a2))
      {
        v8 = 0;
        goto LABEL_17;
      }

      if (a2 != 1 || a4 | a3)
      {
        v8 = 4;
        goto LABEL_17;
      }
    }

    v8 = 1;
LABEL_17:
    Hasher._combine(_:)(v8);
    return;
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(v7);
  if (!a4)
  {
    v9 = 0;
LABEL_20:
    Hasher._combine(_:)(v9);
    return;
  }

  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int Mode.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  Mode.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_100107334()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  Mode.hash(into:)(v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int sub_1001073A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  Hasher.init(_seed:)();
  Mode.hash(into:)(v7, v2, v3, v4, v5);
  return Hasher._finalize()();
}

BOOL _s21WritingToolsUIService15CompositionModeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

BOOL _s21WritingToolsUIService4ModeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 == 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return !a6 && ((a3 ^ a7) & 1) == 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 0;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v9 ^ v10))
              {
                return 0;
              }
            }

            return 1;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 == 2 && !(a7 | a6 | a5);
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 0;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 0;
      }

      if (!(a7 | a6))
      {
        return 1;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 0;
    }

    if (a3)
    {
      return a7 && (a2 == a6 && a3 == a7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    if (!a7)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_100107650()
{
  result = qword_1002626B0;
  if (!qword_1002626B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002626B0);
  }

  return result;
}

unint64_t sub_1001076A8()
{
  result = qword_1002626B8;
  if (!qword_1002626B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002626B8);
  }

  return result;
}

unint64_t sub_100107700()
{
  result = qword_1002626C0;
  if (!qword_1002626C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002626C0);
  }

  return result;
}

uint64_t sub_100107754(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for TitleImageLabelStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10010778C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001077E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100107848(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RewriteType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RewriteType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001079D8(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1001079F4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_100107A20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 18)
  {
    if (result > 10)
    {
      switch(result)
      {
        case 11:
          return 3;
        case 12:
          return 4;
        case 13:
          return 2;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          return result;
        case 2:
          return 0;
        case 3:
          return 1;
      }
    }
  }

  else if (result <= 22)
  {
    switch(result)
    {
      case 19:

        return 5;
      case 21:
        return 6;
      case 22:
        return 7;
    }
  }

  else if (result > 100)
  {
    if (result == 101)
    {
      return 2;
    }

    if (result == 201)
    {

      return a2;
    }
  }

  else
  {
    if (result == 23)
    {
      return 8;
    }

    if (result == 24)
    {
      return 9;
    }
  }

  return 0;
}

uint64_t sub_100107BEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);
  return result;
}

uint64_t sub_100107CC4@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_100107D78(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100107E44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);
  return result;
}

uint64_t sub_100107F1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  v5 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);
  v6 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8);
  v7 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  v8 = *(v4 + 24);
  *(a2 + 24) = v8;
  return sub_10002879C(v5, v6, v7, v8);
}

uint64_t sub_100107FE4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_10002879C(*a1, v2, v3, v4);
  return sub_1000752D8(v1, v2, v3, v4);
}

uint64_t sub_100108048()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100108188()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1001082C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for CompositionView(0);
  v4 = v3 - 8;
  v45 = *(v3 - 8);
  v54 = *(v45 + 64);
  __chkstk_darwin(v3);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ContainerBackgroundPlacement();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000341C(&qword_1002627D0, &qword_1001D93F8);
  __chkstk_darwin(v42);
  v10 = (&v42 - v9);
  v11 = sub_10000341C(&qword_1002627D8, &qword_1001D9400);
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  __chkstk_darwin(v11);
  v43 = &v42 - v13;
  v14 = sub_10000341C(&qword_1002627E0, &qword_1001D9408);
  v15 = *(v14 - 8);
  v48 = v14;
  v49 = v15;
  __chkstk_darwin(v14);
  v53 = &v42 - v16;
  *v10 = static Alignment.center.getter();
  v10[1] = v17;
  v18 = sub_10000341C(&qword_1002627E8, &unk_1001D9410);
  sub_1001089A4(v2, (v10 + *(v18 + 44)));
  v55 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  v19 = sub_100007120(&qword_1002627F0, &qword_1002627D0, &qword_1001D93F8, &protocol conformance descriptor for ZStack<A>);
  v20 = v42;
  View.containerBackground<A>(_:for:)();
  (*(v6 + 8))(v8, v44);

  sub_10000F500(v10, &qword_1002627D0, &qword_1001D93F8);
  v21 = *(v4 + 44);
  v51 = v2;
  v22 = (v2 + v21);
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v22) = v22[16];
  LOBYTE(v55) = v23;
  v56 = v24;
  LOBYTE(v57) = v22;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  v25 = v52;
  sub_100120918(v2, v52, type metadata accessor for CompositionView);
  v26 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v45 = *(v45 + 80);
  v27 = swift_allocObject();
  sub_100122020(v25, v27 + v26, type metadata accessor for CompositionView);
  v55 = v20;
  v56 = &type metadata for Color;
  v57 = v19;
  v58 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v46;
  v30 = v43;
  View.onChange<A>(of:initial:_:)();

  (*(v47 + 8))(v30, v29);
  v31 = v51;
  v32 = sub_100108048();
  swift_getKeyPath();
  v55 = v32;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v30) = *(v32 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  v59 = v30 == 1;
  v33 = v31;
  v34 = v52;
  sub_100120918(v33, v52, type metadata accessor for CompositionView);
  v35 = swift_allocObject();
  sub_100122020(v34, v35 + v26, type metadata accessor for CompositionView);
  v55 = v29;
  v56 = &type metadata for Bool;
  v57 = OpaqueTypeConformance2;
  v58 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v36 = v50;
  v37 = v48;
  v38 = v53;
  View.onChange<A>(of:initial:_:)();

  (*(v49 + 8))(v38, v37);
  sub_100120918(v51, v34, type metadata accessor for CompositionView);
  v39 = swift_allocObject();
  sub_100122020(v34, v39 + v26, type metadata accessor for CompositionView);
  v40 = (v36 + *(sub_10000341C(&qword_1002627F8, &unk_1001D9458) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v40 = &unk_1001D9450;
  v40[1] = v39;
  return result;
}

uint64_t sub_1001089A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v39 = sub_10000341C(&qword_100262808, &qword_1001D9498);
  v33 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v30 - v3;
  v5 = sub_10000341C(&qword_100262810, &qword_1001D94A0);
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v35 = &v30 - v6;
  v7 = sub_10000341C(&qword_100262818, &qword_1001D94A8);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = &v30 - v11;
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6)
  {
    v32 = 0;
    v31 = 0;
  }

  else
  {
    v32 = static SafeAreaRegions.all.getter();
    v31 = static Edge.Set.all.getter();
  }

  v30 = v13 == 6;
  v14 = static UnitPoint.top.getter();
  __chkstk_darwin(v14);
  *(&v30 - 2) = a1;
  static Axis.Set.vertical.getter();
  sub_10000341C(&qword_100262820, &qword_1001D94B0);
  sub_100007120(&qword_100262828, &qword_100262820, &qword_1001D94B0, &protocol conformance descriptor for TupleView<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v15 = sub_100007120(&qword_100262830, &qword_100262808, &qword_1001D9498, &protocol conformance descriptor for ScrollView<A>);
  v16 = v35;
  v17 = v39;
  View.defaultScrollAnchor(_:)();
  (*(v33 + 8))(v4, v17);
  v18 = (a1 + *(type metadata accessor for CompositionView(0) + 36));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  LOBYTE(v41) = v19;
  v42 = v20;
  v43 = v18;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  v41 = v17;
  v42 = v15;
  swift_getOpaqueTypeConformance2();
  v21 = v34;
  v22 = v38;
  View.scrollDisabled(_:)();
  (*(v37 + 8))(v16, v22);
  v23 = *(v8 + 16);
  v24 = v36;
  v23(v36, v21, v7);
  v25 = v40;
  *v40 = v32;
  v26 = v30;
  *(v25 + 8) = v31;
  *(v25 + 9) = v26;
  v27 = sub_10000341C(&qword_100262838, &qword_1001D94B8);
  v23(v25 + *(v27 + 48), v24, v7);
  v28 = *(v8 + 8);
  v28(v21, v7);
  return (v28)(v24, v7);
}

uint64_t sub_100108E84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v154 = a2;
  v152 = sub_10000341C(&qword_100262840, &qword_1001D94C0);
  __chkstk_darwin(v152);
  v153 = &v126 - v3;
  v129 = sub_10000341C(&qword_100262848, &qword_1001D94C8);
  __chkstk_darwin(v129);
  v5 = &v126 - v4;
  v136 = sub_10000341C(&qword_100262850, &qword_1001D94D0);
  v6 = __chkstk_darwin(v136);
  v128 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v130 = &v126 - v8;
  v134 = sub_10000341C(&unk_100262858, &unk_1001D94D8);
  __chkstk_darwin(v134);
  v135 = &v126 - v9;
  v10 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  __chkstk_darwin(v10 - 8);
  v127 = &v126 - v11;
  v140 = type metadata accessor for CompositionConfirmView(0);
  __chkstk_darwin(v140);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10000341C(&qword_100262868, &qword_1001D94E8);
  __chkstk_darwin(v137);
  v139 = &v126 - v14;
  v15 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  __chkstk_darwin(v15);
  v17 = &v126 - v16;
  v138 = type metadata accessor for CompositionResponseView(0);
  __chkstk_darwin(v138);
  v19 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10000341C(&qword_100262870, &qword_1001D94F0);
  v20 = __chkstk_darwin(v148);
  v131 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v132 = &v126 - v22;
  v141 = sub_10000341C(&qword_100262878, &qword_1001D94F8);
  __chkstk_darwin(v141);
  v24 = &v126 - v23;
  v25 = sub_10000341C(&unk_100262880, &qword_1001D9500);
  v26 = __chkstk_darwin(v25 - 8);
  v151 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v149 = &v126 - v28;
  v29 = sub_10013A33C();
  v150 = v32;
  v145 = v30;
  v146 = v29;
  v144 = v31;
  v133 = v24;
  if (v32)
  {
    v147 = v31 & 1;
    v33 = v29;
    v34 = v30;
    sub_100007D98(v29, v30, v31 & 1);

    v142 = v34;
    v143 = v33;
    v35 = a1[1];
    if (!v35)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v142 = 0;
    v143 = 0;
    v147 = 0;
    v35 = a1[1];
    if (!v35)
    {
      goto LABEL_13;
    }
  }

  if (v35 != 1)
  {
    if ((v35 & 0x2000000000000000) != 0)
    {
      v59 = HIBYTE(v35) & 0xF;
    }

    else
    {
      v59 = *a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      goto LABEL_26;
    }

LABEL_13:
    v60 = sub_100108048();
    swift_getKeyPath();
    *&v155 = v60;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v60 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24) == 255)
    {
    }

    else
    {
      if (*(v60 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24))
      {

        goto LABEL_26;
      }

      v61 = *(v60 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);

      if (v61 != 5)
      {
LABEL_26:
        v96 = sub_100108048();
        swift_getKeyPath();
        *&v155 = v96;
        sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v96 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) == 1)
        {
          swift_getKeyPath();
          *&v155 = v96;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v97 = *(v96 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing);

          if (v97)
          {
            v98 = a1 + *(type metadata accessor for CompositionView(0) + 36);
            v99 = *v98;
            v100 = *(v98 + 1);
            LOBYTE(v98) = v98[16];
            LOBYTE(v155) = v99;
            *(&v155 + 1) = v100;
            LOBYTE(v156) = v98;
            sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
            FocusState.projectedValue.getter();
            v101 = v157;
            v102 = v158;
            v103 = v159;
            v104 = v140;
            Binding.projectedValue.getter();
            type metadata accessor for CommonUIManager(0);
            sub_1001208D0(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
            v105 = Environment.init<A>(_:)();
            v107 = v106;
            type metadata accessor for CompositionModel(0);
            *v13 = Environment.init<A>(_:)();
            v13[8] = v108 & 1;
            type metadata accessor for PresentationModel(0);
            sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
            *(v13 + 2) = Environment.init<A>(_:)();
            v13[24] = v109 & 1;
            *(v13 + 4) = v105;
            v13[40] = v107 & 1;
            LOBYTE(v157) = 0;
            State.init(wrappedValue:)();
            v110 = *(&v155 + 1);
            v13[48] = v155;
            *(v13 + 7) = v110;
            *(v13 + 8) = v101;
            *(v13 + 9) = v102;
            v13[80] = v103;
            v111 = type metadata accessor for FBKSEvaluation.Subject();
            (*(*(v111 - 8) + 56))(v127, 1, 1, v111);
            v112 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
            v157 = FBKEvaluationController.init(subject:)();
            State.init(wrappedValue:)();
            v113 = *(&v155 + 1);
            *(v13 + 11) = v155;
            *(v13 + 12) = v113;
            v114 = &v13[*(v104 + 44)];
            v157 = 0;
            v158 = 0xE000000000000000;
            State.init(wrappedValue:)();
            v115 = v156;
            *v114 = v155;
            *(v114 + 2) = v115;
            sub_100120918(v13, v139, type metadata accessor for CompositionConfirmView);
            swift_storeEnumTagMultiPayload();
            sub_1001208D0(&qword_100262890, type metadata accessor for CompositionResponseView, &unk_1001D3200);
            sub_1001208D0(&qword_100262898, type metadata accessor for CompositionConfirmView, &unk_1001D99E4);
            v116 = v132;
            _ConditionalContent<>.init(storage:)();
            v117 = type metadata accessor for CompositionConfirmView;
            v118 = v13;
LABEL_31:
            sub_100120C94(v118, v117);
            v95 = v153;
            v66 = v154;
            v64 = v151;
            v65 = v149;
            v67 = v147;
            sub_1000081F8(v116, v135, &qword_100262870, &qword_1001D94F0);
            swift_storeEnumTagMultiPayload();
            sub_100120A0C();
            sub_100120AF8();
            v94 = v133;
            _ConditionalContent<>.init(storage:)();
            sub_10000F500(v116, &qword_100262870, &qword_1001D94F0);
LABEL_32:
            sub_1000081F8(v94, v95, &qword_100262878, &qword_1001D94F8);
            swift_storeEnumTagMultiPayload();
            sub_100120980();
            sub_100120A0C();
            _ConditionalContent<>.init(storage:)();
            sub_10000F500(v94, &qword_100262878, &qword_1001D94F8);
            goto LABEL_33;
          }
        }

        else
        {
        }

        type metadata accessor for CompositionView(0);
        Binding.projectedValue.getter();
        type metadata accessor for CommonUIManager(0);
        sub_1001208D0(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
        v119 = Environment.init<A>(_:)();
        sub_100069FCC(v119, v120 & 1, v17, v19);
        sub_100120918(v19, v139, type metadata accessor for CompositionResponseView);
        swift_storeEnumTagMultiPayload();
        sub_1001208D0(&qword_100262890, type metadata accessor for CompositionResponseView, &unk_1001D3200);
        sub_1001208D0(&qword_100262898, type metadata accessor for CompositionConfirmView, &unk_1001D99E4);
        v116 = v132;
        _ConditionalContent<>.init(storage:)();
        v117 = type metadata accessor for CompositionResponseView;
        v118 = v19;
        goto LABEL_31;
      }
    }

    v68 = a1 + *(type metadata accessor for CompositionView(0) + 36);
    v69 = *v68;
    v70 = *(v68 + 1);
    LOBYTE(v68) = v68[16];
    LOBYTE(v155) = v69;
    *(&v155 + 1) = v70;
    LOBYTE(v156) = v68;
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.projectedValue.getter();
    v71 = v157;
    v140 = v158;
    LODWORD(v139) = v159;
    v72 = type metadata accessor for CompositionIndexView(0);
    Binding.projectedValue.getter();
    type metadata accessor for WritingToolsModel(0);
    sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    v73 = Environment.init<A>(_:)();
    v75 = v74;
    type metadata accessor for CompositionModel(0);
    v76 = Environment.init<A>(_:)();
    v78 = v77;
    type metadata accessor for PresentationModel(0);
    sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
    v79 = Environment.init<A>(_:)();
    v81 = v80;
    KeyPath = swift_getKeyPath();
    *v5 = v73;
    v5[8] = v75 & 1;
    *(v5 + 2) = v76;
    v5[24] = v78 & 1;
    *(v5 + 4) = v79;
    v5[40] = v81 & 1;
    *(v5 + 6) = KeyPath;
    *(v5 + 7) = 0;
    v5[64] = 0;
    v83 = v72[8];
    *&v5[v83] = swift_getKeyPath();
    sub_10000341C(&qword_1002628E0, &qword_1001D95E8);
    swift_storeEnumTagMultiPayload();
    v84 = &v5[v72[9]];
    v157 = 0;
    v158 = 0xE000000000000000;
    State.init(wrappedValue:)();
    v85 = v156;
    *v84 = v155;
    *(v84 + 2) = v85;
    v86 = &v5[v72[10]];
    v87 = v140;
    *v86 = v71;
    *(v86 + 1) = v87;
    v86[16] = v139;
    LOBYTE(v72) = sub_1001395F8();
    v88 = swift_getKeyPath();
    v89 = swift_allocObject();
    *(v89 + 16) = v72 & 1;
    v90 = &v5[*(v129 + 36)];
    *v90 = v88;
    v90[1] = sub_100120D84;
    v90[2] = v89;
    if (sub_1001395F8())
    {
      v91 = 0.3;
    }

    else
    {
      v91 = 1.0;
    }

    v92 = v128;
    sub_10002A894(v5, v128, &qword_100262848, &qword_1001D94C8);
    *(v92 + *(v136 + 36)) = v91;
    v93 = v130;
    sub_10002A894(v92, v130, &qword_100262850, &qword_1001D94D0);
    sub_1000081F8(v93, v135, &qword_100262850, &qword_1001D94D0);
    swift_storeEnumTagMultiPayload();
    sub_100120A0C();
    sub_100120AF8();
    v94 = v133;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v93, &qword_100262850, &qword_1001D94D0);
    v95 = v153;
    v66 = v154;
    v64 = v151;
    v65 = v149;
    v67 = v147;
    goto LABEL_32;
  }

  v36 = sub_100108048();
  swift_getKeyPath();
  *&v155 = v36;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v36 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) != 1)
  {

    goto LABEL_18;
  }

  swift_getKeyPath();
  *&v155 = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(v36 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing);

  if ((v37 & 1) == 0)
  {
LABEL_18:
    type metadata accessor for CompositionView(0);
    Binding.projectedValue.getter();
    type metadata accessor for CommonUIManager(0);
    sub_1001208D0(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
    v62 = Environment.init<A>(_:)();
    sub_100069FCC(v62, v63 & 1, v17, v19);
    sub_100120918(v19, v139, type metadata accessor for CompositionResponseView);
    swift_storeEnumTagMultiPayload();
    sub_1001208D0(&qword_100262890, type metadata accessor for CompositionResponseView, &unk_1001D3200);
    sub_1001208D0(&qword_100262898, type metadata accessor for CompositionConfirmView, &unk_1001D99E4);
    v56 = v131;
    _ConditionalContent<>.init(storage:)();
    v57 = type metadata accessor for CompositionResponseView;
    v58 = v19;
    goto LABEL_19;
  }

  v38 = a1 + *(type metadata accessor for CompositionView(0) + 36);
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v38) = v38[16];
  LOBYTE(v155) = v39;
  *(&v155 + 1) = v40;
  LOBYTE(v156) = v38;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  v41 = v157;
  v42 = v158;
  v43 = v159;
  v44 = v140;
  Binding.projectedValue.getter();
  type metadata accessor for CommonUIManager(0);
  sub_1001208D0(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  v45 = Environment.init<A>(_:)();
  v47 = v46;
  type metadata accessor for CompositionModel(0);
  *v13 = Environment.init<A>(_:)();
  v13[8] = v48 & 1;
  type metadata accessor for PresentationModel(0);
  sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *(v13 + 2) = Environment.init<A>(_:)();
  v13[24] = v49 & 1;
  *(v13 + 4) = v45;
  v13[40] = v47 & 1;
  LOBYTE(v157) = 0;
  State.init(wrappedValue:)();
  v50 = *(&v155 + 1);
  v13[48] = v155;
  *(v13 + 7) = v50;
  *(v13 + 8) = v41;
  *(v13 + 9) = v42;
  v13[80] = v43;
  v51 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v51 - 8) + 56))(v127, 1, 1, v51);
  v52 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  v157 = FBKEvaluationController.init(subject:)();
  State.init(wrappedValue:)();
  v53 = *(&v155 + 1);
  *(v13 + 11) = v155;
  *(v13 + 12) = v53;
  v54 = &v13[*(v44 + 44)];
  v157 = 0;
  v158 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v55 = v156;
  *v54 = v155;
  *(v54 + 2) = v55;
  sub_100120918(v13, v139, type metadata accessor for CompositionConfirmView);
  swift_storeEnumTagMultiPayload();
  sub_1001208D0(&qword_100262890, type metadata accessor for CompositionResponseView, &unk_1001D3200);
  sub_1001208D0(&qword_100262898, type metadata accessor for CompositionConfirmView, &unk_1001D99E4);
  v56 = v131;
  _ConditionalContent<>.init(storage:)();
  v57 = type metadata accessor for CompositionConfirmView;
  v58 = v13;
LABEL_19:
  sub_100120C94(v58, v57);
  v64 = v151;
  v65 = v149;
  sub_1000081F8(v56, v153, &qword_100262870, &qword_1001D94F0);
  swift_storeEnumTagMultiPayload();
  sub_100120980();
  sub_100120A0C();
  _ConditionalContent<>.init(storage:)();
  sub_10000F500(v56, &qword_100262870, &qword_1001D94F0);
  v66 = v154;
  v67 = v147;
LABEL_33:
  v122 = v142;
  v121 = v143;
  sub_1000081F8(v65, v64, &unk_100262880, &qword_1001D9500);
  *v66 = v121;
  v66[1] = v122;
  v123 = v150;
  v66[2] = v67;
  v66[3] = v123;
  v124 = sub_10000341C(&qword_1002628D8, &qword_1001D9538);
  sub_1000081F8(v64, v66 + *(v124 + 48), &unk_100262880, &qword_1001D9500);
  sub_10002A8FC(v121, v122, v67, v123);
  sub_10002A940(v146, v145, v144, v123);
  sub_10000F500(v65, &unk_100262880, &qword_1001D9500);
  sub_10000F500(v64, &unk_100262880, &qword_1001D9500);
  return sub_10002A940(v121, v122, v67, v123);
}

uint64_t sub_10010A550(uint64_t a1)
{
  sub_100108048();
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    type metadata accessor for CompositionView(0);
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    [Strong enableIntelligentEntryFieldView:v4];
    swift_unknownObjectRelease();
  }

  sub_100108048();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = swift_unknownObjectWeakLoadStrong();

  if (v2)
  {
    [v2 resetPresentationSelectedDetent];
    swift_unknownObjectRelease();
  }

  type metadata accessor for CompositionView(0);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10010A794()
{
  sub_100108188();
  v0 = sub_100108048();
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  sub_1001537FC(v1 == 1);
}

uint64_t sub_10010A86C(uint64_t a1)
{
  *(v1 + 24) = a1;
  type metadata accessor for MainActor();
  *(v1 + 32) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010A904, v3, v2);
}

uint64_t sub_10010A904(uint64_t a1, uint64_t a2)
{

  v3 = sub_100108048();
  swift_getKeyPath();
  *(v2 + 16) = v3;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"supressAssistantBarInUIService"])
    {
      [Strong supressAssistantBarInUIService];
    }

    swift_unknownObjectRelease();
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_10010AA34()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_10010AB74()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_10010ACB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for EnvironmentValues();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UUID();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  __chkstk_darwin(v9 - 8);
  v69 = (&v68 - v10);
  v11 = type metadata accessor for CompositionIndexView(0);
  v77 = *(v11 - 8);
  __chkstk_darwin(v11);
  v78 = v12;
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v68 - v15;
  v17 = sub_10010AB74();
  swift_getKeyPath();
  *&v86 = v17;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v17 + v18, &v86, &unk_10025B1C0, &unk_1001CFA90);

  v79 = a1;
  if (v88)
  {
    sub_100028458(&v86, &v81);
    sub_10000F500(&v86, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(&v81, v84);
    v19 = sub_10010AB74();
    swift_getKeyPath();
    v73 = v11;
    v20 = v3;
    v21 = v13;
    v22 = v16;
    v23 = a2;
    v24 = a1;
    v80 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v19 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy);

    v26 = v24;
    a2 = v23;
    v16 = v22;
    v13 = v21;
    v3 = v20;
    v11 = v73;
    sub_10000C1CC(0, 1, 0, 1, v26, a2, 0, 0, v25);
    sub_10000F4B4(&v81);
  }

  else
  {
    sub_10000F500(&v86, &unk_10025B1C0, &unk_1001CFA90);
  }

  v27 = [objc_opt_self() currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if (v28 == 1 && (v29 = sub_10010EC14(), swift_getKeyPath(), *&v86 = v29, sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v30 = *(v29 + 32), v31 = *(v29 + 40), , (v31 & 1) == 0) && v30 == 2)
  {
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
    sub_100120918(v3, v13, type metadata accessor for CompositionIndexView);
    type metadata accessor for MainActor();

    v33 = static MainActor.shared.getter();
    v34 = v16;
    v35 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v36 = (v78 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v33;
    *(v37 + 24) = &protocol witness table for MainActor;
    sub_100122020(v13, v37 + v35, type metadata accessor for CompositionIndexView);
    v38 = (v37 + v36);
    *v38 = v79;
    v38[1] = a2;
    sub_10015C9C8(0, 0, v34, &unk_1001D9FE8, v37);

    v88 = &type metadata for WritingTools;
    v89 = sub_10002AC88();
    LOBYTE(v86) = 10;
    LOBYTE(v33) = isFeatureEnabled(_:)();
    result = sub_10000F4B4(&v86);
    if (v33)
    {
      v40 = sub_10010AB74();
      swift_getKeyPath();
      *&v86 = v40;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        if ([Strong respondsToSelector:"didStartMontaraRefinementForSessionWithUUID:"])
        {
          v42 = sub_10010AB74();
          swift_getKeyPath();
          *&v86 = v42;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v43 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
          swift_beginAccess();
          v44 = v42 + v43;
          v45 = v69;
          sub_1000081F8(v44, v69, &unk_100262580, &qword_1001CFF70);

          v46 = type metadata accessor for CompositionModel.Session(0);
          if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
          {
            result = swift_unknownObjectRelease();
            __break(1u);
          }

          else
          {
            v47 = *v45;
            sub_100120C94(v45, type metadata accessor for CompositionModel.Session);
            v48 = [v47 uuid];

            v49 = v70;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            isa = UUID._bridgeToObjectiveC()().super.isa;
            [Strong didStartMontaraRefinementForSessionWithUUID:isa];
            swift_unknownObjectRelease();

            return (*(v71 + 8))(v49, v72);
          }
        }

        else
        {
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v16, 1, 1, v51);
    sub_100120918(v3, v13, type metadata accessor for CompositionIndexView);
    type metadata accessor for MainActor();

    v52 = static MainActor.shared.getter();
    v53 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v54 = (v78 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v52;
    *(v55 + 24) = &protocol witness table for MainActor;
    sub_100122020(v13, v55 + v53, type metadata accessor for CompositionIndexView);
    v56 = (v55 + v54);
    *v56 = v79;
    v56[1] = a2;
    sub_10015C9C8(0, 0, v16, &unk_1001D9FD8, v55);

    v57 = v3 + *(v11 + 36);
    v58 = *v57;
    v59 = *(v57 + 16);
    v86 = v58;
    v87 = v59;
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_10000341C(&qword_100260098, &unk_1001D56B0);
    State.wrappedValue.setter();
    v60 = v3 + *(v11 + 40);
    v61 = *v60;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    *&v86 = *v60;
    *(&v86 + 1) = v62;
    LOBYTE(v87) = v63;
    sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
    FocusState.Binding.wrappedValue.getter();
    if (v81 == 1)
    {
      *&v86 = v61;
      *(&v86 + 1) = v62;
      LOBYTE(v87) = v63;

      FocusState.Binding.wrappedValue.getter();
      v81 = v61;
      v82 = v62;
      v83 = v63;
      v85 = (v80 & 1) == 0;
      FocusState.Binding.wrappedValue.setter();
    }

    v65 = *(v3 + 48);
    v64 = *(v3 + 56);
    if (*(v3 + 64) == 1)
    {
    }

    else
    {

      static os_log_type_t.fault.getter();
      v66 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v67 = v74;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100122EC8(v65, v64, 0);
      (*(v75 + 8))(v67, v76);
      v65 = v86;
    }

    v86 = xmmword_1001D31C0;
    v87 = 0;
    LOBYTE(v88) = 1;
    v65(&v86);
  }

  return result;
}

uint64_t sub_10010B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_10010B8A8, v8, v7);
}

uint64_t sub_10010B8A8()
{
  v0[9] = sub_10010AB74();
  v0[10] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[11] = v2;
  v0[12] = v1;

  return _swift_task_switch(sub_10010B940, v2, v1);
}

uint64_t sub_10010B940()
{
  sub_10006CF60("Composition", 11, 2);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_10010B9EC;
  v3 = v0[3];
  v2 = v0[4];

  return sub_10007DE34(v3, v2);
}

uint64_t sub_10010B9EC()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10010BB0C, v3, v2);
}

uint64_t sub_10010BB0C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 56);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_100012090, v3, v4);
}

uint64_t sub_10010BB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = type metadata accessor for UUID();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for MainActor();
  v6[20] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[21] = v9;
  v6[22] = v8;

  return _swift_task_switch(sub_10010BCAC, v9, v8);
}

uint64_t sub_10010BCAC()
{
  v0[23] = sub_10010AB74();
  v0[24] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[25] = v2;
  v0[26] = v1;

  return _swift_task_switch(sub_10010BD44, v2, v1);
}

uint64_t sub_10010BD44()
{
  sub_10006CF60("Composition", 11, 2);
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_10010BDF0;
  v3 = v0[13];
  v2 = v0[14];

  return sub_10007DE34(v3, v2);
}

uint64_t sub_10010BDF0()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return _swift_task_switch(sub_10010BF10, v3, v2);
}

uint64_t sub_10010BF10(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 168);
  v4 = *(v2 + 176);

  return _swift_task_switch(sub_10010BF7C, v3, v4);
}

uint64_t sub_10010BF7C()
{
  v0[5] = &type metadata for WritingTools;
  v1 = sub_10002AC88();
  *(v0 + 16) = 10;
  v0[6] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_10000F4B4(v0 + 2);
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10010AB74();
  swift_getKeyPath();
  v0[10] = v3;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_6;
  }

  if (([Strong respondsToSelector:"didStartMontaraRefinementForSessionWithUUID:"] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_6:

    goto LABEL_7;
  }

  v5 = v0[18];
  v6 = sub_10010AB74();
  swift_getKeyPath();
  v0[11] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v6 + v7, v5, &unk_100262580, &qword_1001CFF70);

  v8 = type metadata accessor for CompositionModel.Session(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    result = swift_unknownObjectRelease();
    __break(1u);
    return result;
  }

  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];

  v13 = *v10;
  sub_100120C94(v10, type metadata accessor for CompositionModel.Session);
  v14 = [v13 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [Strong didStartMontaraRefinementForSessionWithUUID:isa];

  swift_unknownObjectRelease();
  (*(v12 + 8))(v9, v11);
LABEL_7:

  v16 = v0[1];

  return v16();
}

uint64_t sub_10010C290@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v104 = a1;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v102 = *(v3 - 8);
  v103 = v3;
  __chkstk_darwin(v3);
  v101 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for PreferredContentSizeModifier(0);
  __chkstk_darwin(v91);
  v85 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ScenePhase();
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = (v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = type metadata accessor for CompositionIndexView(0);
  v7 = *(v107 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v107);
  v9 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_100262D10, &qword_1001D9E10);
  v79[1] = v10;
  __chkstk_darwin(v10);
  v12 = v79 - v11;
  v84 = sub_10000341C(&qword_100262D18, &qword_1001D9E18) - 8;
  __chkstk_darwin(v84);
  v82 = v79 - v13;
  v88 = sub_10000341C(&qword_100262D20, &qword_1001D9E20);
  __chkstk_darwin(v88);
  v108 = v79 - v14;
  v93 = sub_10000341C(&qword_100262D28, &qword_1001D9E28);
  __chkstk_darwin(v93);
  v89 = v79 - v15;
  v98 = sub_10000341C(&qword_100262D30, &qword_1001D9E30);
  v94 = *(v98 - 8);
  __chkstk_darwin(v98);
  v90 = v79 - v16;
  v17 = sub_10000341C(&qword_100262D38, &qword_1001D9E38);
  v99 = *(v17 - 8);
  v100 = v17;
  __chkstk_darwin(v17);
  v97 = v79 - v18;
  v96 = sub_10000341C(&qword_100262D40, &qword_1001D9E40);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v92 = v79 - v19;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v20 = sub_10000341C(&qword_100262D48, &qword_1001D9E48);
  sub_10010D0C4(v1, &v12[*(v20 + 44)]);
  v106 = type metadata accessor for CompositionIndexView;
  sub_100120918(v1, v9, type metadata accessor for CompositionIndexView);
  v21 = *(v7 + 80);
  v22 = (v21 + 16) & ~v21;
  v81 = v8;
  v79[2] = v21;
  v23 = swift_allocObject();
  v80 = type metadata accessor for CompositionIndexView;
  sub_100122020(v9, v23 + v22, type metadata accessor for CompositionIndexView);
  v24 = &v12[*(v10 + 36)];
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v24 = &unk_1001D9E58;
  *(v24 + 1) = v23;
  v105 = v2;
  v25 = v83;
  sub_10011F074(&qword_1002628E0, &qword_1001D95E8, &type metadata accessor for ScenePhase, v83);
  sub_100120918(v2, v9, v106);
  v26 = swift_allocObject();
  sub_100122020(v9, v26 + v22, type metadata accessor for CompositionIndexView);
  sub_1001231A8();
  sub_1001208D0(&qword_100262D68, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v27 = v82;
  v28 = v86;
  View.onChange<A>(of:initial:_:)();

  (*(v87 + 8))(v25, v28);
  v29 = v12;
  v30 = v105;
  sub_10000F500(v29, &qword_100262D10, &qword_1001D9E10);
  v31 = [objc_opt_self() defaultCenter];
  v32 = v84;
  NSNotificationCenter.publisher(for:object:)();

  v33 = v27;
  sub_100120918(v30, v9, v106);
  v34 = swift_allocObject();
  v35 = v9;
  v36 = v107;
  sub_100122020(v35, v34 + v22, v80);
  v37 = &v27[*(v32 + 64)];
  *v37 = sub_100123290;
  v37[1] = v34;
  v38 = v30 + *(v36 + 40);
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);
  *&v111 = *v38;
  *(&v111 + 1) = v40;
  LOBYTE(v112) = v41;
  v42 = sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v43 = 0;
  if (v113 == 1)
  {
    sub_10010EC14();
    v43 = sub_10016FEDC();
  }

  v44 = v108;
  sub_10002A894(v33, v108, &qword_100262D18, &qword_1001D9E18);
  *(v44 + *(v88 + 36)) = v43;
  v45 = sub_10010AB74();
  swift_getKeyPath();
  *&v111 = v45;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();

  v106 = v39;
  *&v111 = v39;
  *(&v111 + 1) = v40;
  v88 = v40;
  LODWORD(v87) = v41;
  LOBYTE(v112) = v41;
  v86 = v42;
  FocusState.Binding.wrappedValue.getter();
  v46 = 1;
  if (v113 == 1)
  {
    sub_10010EC14();
    v47 = sub_10016FEDC();

    v46 = !v47;
  }

  v48 = v91;
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v49 = v85;
  Binding.projectedValue.getter();
  LOBYTE(v111) = 0;
  static Binding.constant(_:)();
  v50 = v113;
  v51 = v114;
  v52 = v115;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v49 + 8) = v46 & 1;
  *(v49 + 9) = 1;
  v53 = v49 + v48[8];
  *v53 = v50;
  *(v53 + 8) = v51;
  *(v53 + 16) = v52;
  v54 = (v49 + v48[9]);
  *v54 = 0xD000000000000014;
  v54[1] = 0x80000001001D96B0;
  v55 = v49 + v48[10];
  type metadata accessor for CGSize(0);
  v109 = 0;
  v110 = 0;
  State.init(wrappedValue:)();
  v56 = v112;
  *v55 = v111;
  *(v55 + 16) = v56;
  v57 = v49 + v48[11];
  LOBYTE(v109) = 0;
  State.init(wrappedValue:)();
  v58 = *(&v111 + 1);
  *v57 = v111;
  *(v57 + 8) = v58;
  v59 = v49 + v48[12];
  v109 = 0;
  LOBYTE(v110) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v60 = BYTE8(v111);
  v61 = v112;
  *v59 = v111;
  *(v59 + 8) = v60;
  *(v59 + 16) = v61;
  v62 = v49 + v48[13];
  LOBYTE(v109) = 0;
  State.init(wrappedValue:)();
  v63 = *(&v111 + 1);
  *v62 = v111;
  *(v62 + 8) = v63;
  v64 = v49 + v48[14];
  type metadata accessor for PresentationModel(0);
  sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *v64 = Environment.init<A>(_:)();
  *(v64 + 8) = v65 & 1;
  v66 = v89;
  sub_10002A894(v108, v89, &qword_100262D20, &qword_1001D9E20);
  v67 = v93;
  sub_100122020(v49, v66 + *(v93 + 36), type metadata accessor for PreferredContentSizeModifier);
  v69 = v101;
  v68 = v102;
  v70 = v103;
  (*(v102 + 104))(v101, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v103);
  v71 = sub_100123308(&qword_100262D70, &qword_100262D28, &qword_1001D9E28, sub_1001233BC);
  v72 = v90;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v68 + 8))(v69, v70);
  sub_10000F500(v66, &qword_100262D28, &qword_1001D9E28);
  *&v111 = v106;
  *(&v111 + 1) = v88;
  LOBYTE(v112) = v87;
  FocusState.Binding.wrappedValue.getter();
  if (v113 == 1)
  {
    sub_10010EC14();
    sub_10016FEDC();
  }

  *&v111 = v67;
  *(&v111 + 1) = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v97;
  v74 = v98;
  View.navigationBarHidden(_:)();
  (*(v94 + 8))(v72, v74);
  LocalizedStringKey.init(stringLiteral:)();
  *&v111 = v74;
  *(&v111 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v76 = v92;
  v77 = v100;
  View.navigationTitle(_:)();

  (*(v99 + 8))(v75, v77);
  return (*(v95 + 32))(v104, v76, v96);
}

uint64_t sub_10010D0C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v105 = a2;
  v3 = sub_10000341C(&qword_100262D88, &qword_1001D9E68);
  v103 = *(v3 - 8);
  v104 = v3;
  __chkstk_darwin(v3);
  v95 = &v87 - v4;
  v91 = sub_10000341C(&qword_100262D90, &qword_1001D9E70);
  __chkstk_darwin(v91);
  v87 = (&v87 - v5);
  v89 = sub_10000341C(&qword_100262D98, &qword_1001D9E78);
  __chkstk_darwin(v89);
  v90 = (&v87 - v6);
  v7 = sub_10000341C(&qword_100262DA0, &qword_1001D9E80);
  v8 = __chkstk_darwin(v7 - 8);
  v94 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = &v87 - v10;
  v88 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  v11 = __chkstk_darwin(v88);
  v92 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v87 - v13;
  v14 = sub_10000341C(&qword_100262DA8, &qword_1001D9E88);
  v15 = __chkstk_darwin(v14 - 8);
  v102 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v121 = &v87 - v17;
  v18 = type metadata accessor for CompositionIndexView(0);
  v19 = v18 - 8;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  v22 = (a1 + *(v19 + 44));
  v23 = *v22;
  v24 = *(v22 + 2);
  v122 = v23;
  *&v123 = v24;
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.projectedValue.getter();
  v119 = v134;
  v120 = v133;
  v117 = v136;
  v118 = v135;
  v25 = a1 + *(v19 + 48);
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v133 = *v25;
  v26 = v133;
  v134 = v27;
  LOBYTE(v135) = v28;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.projectedValue.getter();
  v115 = *(&v122 + 1);
  v116 = v122;
  v114 = v123;
  v96 = v26;
  v133 = v26;
  v134 = v27;
  LOBYTE(v135) = v28;
  FocusState.Binding.wrappedValue.getter();
  if (v122 == 1)
  {
    sub_10010EC14();
    LODWORD(v97) = sub_10016FEDC();
  }

  else
  {
    LODWORD(v97) = 0;
  }

  sub_100120918(a1, &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompositionIndexView);
  v29 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v113 = swift_allocObject();
  sub_100122020(&v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v113 + v29, type metadata accessor for CompositionIndexView);
  type metadata accessor for WritingToolsModel(0);
  sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  v112 = Environment.init<A>(_:)();
  LOBYTE(v29) = v30;
  type metadata accessor for CompositionModel(0);
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  v109 = Environment.init<A>(_:)();
  v32 = v31;
  LOBYTE(v122) = 0;
  State.init(wrappedValue:)();
  v100 = v133;
  v101 = v134;
  LOBYTE(v122) = 0;
  State.init(wrappedValue:)();
  v98 = v133;
  v99 = v134;
  LOBYTE(v122) = 0;
  State.init(wrappedValue:)();
  v110 = v133;
  v111 = v134;
  *&v122 = _swiftEmptyArrayStorage;
  sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  State.init(wrappedValue:)();
  v107 = v134;
  v108 = v133;
  v171 = v29 & 1;
  v169 = v32 & 1;
  v133 = v96;
  v134 = v27;
  LOBYTE(v135) = v28;
  FocusState.Binding.wrappedValue.getter();
  if (v122 == 1 && (sub_10010EC14(), v33 = sub_10016FEDC(), , v33))
  {
    v34 = 1;
    v35 = v121;
  }

  else
  {
    v36 = v106;
    Divider.init()();
    v37 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v38 = v36 + *(v88 + 36);
    *v38 = v37;
    *(v38 + 8) = v39;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    *(v38 + 32) = v42;
    *(v38 + 40) = 0;
    v43 = sub_10010AB74();
    swift_getKeyPath();
    v133 = v43;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v44 = *(v43 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);

    if (v44)
    {
      v45 = sub_10010AB74();
      swift_getKeyPath();
      v133 = v45;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v46 = *(v45 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

      swift_getKeyPath();
      v133 = v46;
      sub_1001208D0(&qword_100261B90, type metadata accessor for CompositionRateLimitModel, &unk_1001D8018);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v47 = *(v46 + 16);

      if (v47 == 1)
      {
        *&v122 = Environment.init<A>(_:)();
        BYTE8(v122) = v48 & 1;
        BYTE9(v122) = 1;

        sub_10000341C(&qword_100262DB0, &qword_1001D9E90);
        sub_1001234B4();
        sub_10012358C();
        _ConditionalContent<>.init(storage:)();
        v49 = v134;
        v50 = BYTE1(v134);
        v51 = v90;
        *v90 = v133;
        *(v51 + 8) = v49;
        *(v51 + 9) = v50;
        swift_storeEnumTagMultiPayload();
        sub_10000341C(&qword_100262DD0, &qword_1001D9E98);
        sub_1001235EC();
        sub_100007120(&qword_100262DE0, &qword_100262D90, &qword_1001D9E70, &protocol conformance descriptor for VStack<A>);
        v52 = v93;
        _ConditionalContent<>.init(storage:)();
      }

      else
      {
        v55 = static HorizontalAlignment.center.getter();
        v56 = v87;
        *v87 = v55;
        *(v56 + 8) = 0;
        *(v56 + 16) = 1;
        v57 = sub_10000341C(&qword_100262DF8, &qword_1001D9EB0);
        sub_10010E2F4(v56 + *(v57 + 44));
        sub_1000081F8(v56, v90, &qword_100262D90, &qword_1001D9E70);
        swift_storeEnumTagMultiPayload();
        sub_10000341C(&qword_100262DD0, &qword_1001D9E98);
        sub_1001235EC();
        sub_100007120(&qword_100262DE0, &qword_100262D90, &qword_1001D9E70, &protocol conformance descriptor for VStack<A>);
        v52 = v93;
        _ConditionalContent<>.init(storage:)();
        sub_10000F500(v56, &qword_100262D90, &qword_1001D9E70);
      }
    }

    else
    {
      if (sub_1001395F8())
      {
        v53 = 0;
        v54 = 255;
      }

      else
      {
        v53 = Environment.init<A>(_:)();
        v54 = v58 & 1;
      }

      *&v122 = v53;
      WORD4(v122) = v54;
      sub_1001234A0(v53, v54);
      sub_10000341C(&qword_100262DB0, &qword_1001D9E90);
      sub_1001234B4();
      sub_10012358C();
      _ConditionalContent<>.init(storage:)();
      v59 = v133;
      v60 = BYTE1(v134);
      v61 = v134;
      v62 = v90;
      *v90 = v133;
      *(v62 + 8) = v61;
      *(v62 + 9) = v60;
      swift_storeEnumTagMultiPayload();
      sub_1001235E0(v59, v61, v60);
      sub_10000341C(&qword_100262DD0, &qword_1001D9E98);
      sub_1001235EC();
      sub_100007120(&qword_100262DE0, &qword_100262D90, &qword_1001D9E70, &protocol conformance descriptor for VStack<A>);
      v52 = v93;
      _ConditionalContent<>.init(storage:)();
      sub_100123678(v53, v54);
      sub_10012368C(v59, v61, v60);
      sub_100123678(v53, v54);
    }

    v63 = v106;
    v64 = v92;
    sub_1000081F8(v106, v92, &qword_10025B888, &qword_1001D0300);
    v65 = v94;
    sub_1000081F8(v52, v94, &qword_100262DA0, &qword_1001D9E80);
    v66 = v95;
    sub_1000081F8(v64, v95, &qword_10025B888, &qword_1001D0300);
    v67 = sub_10000341C(&qword_100262DE8, &qword_1001D9EA0);
    sub_1000081F8(v65, v66 + *(v67 + 48), &qword_100262DA0, &qword_1001D9E80);
    sub_10000F500(v52, &qword_100262DA0, &qword_1001D9E80);
    sub_10000F500(v63, &qword_10025B888, &qword_1001D0300);
    sub_10000F500(v65, &qword_100262DA0, &qword_1001D9E80);
    sub_10000F500(v64, &qword_10025B888, &qword_1001D0300);
    v35 = v121;
    sub_10002A894(v66, v121, &qword_100262D88, &qword_1001D9E68);
    v34 = 0;
  }

  (*(v103 + 56))(v35, v34, 1, v104);
  v68 = v97 & 1;
  LODWORD(v106) = v97 & 1;
  v69 = v171;
  LODWORD(v103) = v171;
  v70 = v169;
  LODWORD(v104) = v169;
  v71 = v102;
  sub_1000081F8(v35, v102, &qword_100262DA8, &qword_1001D9E88);
  *&v122 = v112;
  BYTE8(v122) = v69;
  *(&v122 + 9) = *v170;
  HIDWORD(v122) = *&v170[3];
  *&v123 = v109;
  BYTE8(v123) = v70;
  *(&v123 + 9) = *v168;
  HIDWORD(v123) = *&v168[3];
  *&v124 = v120;
  *(&v124 + 1) = v119;
  *&v125 = v118;
  *(&v125 + 1) = v117;
  *&v126 = v116;
  *(&v126 + 1) = v115;
  LOBYTE(v127) = v114;
  BYTE1(v127) = v68;
  *(&v127 + 2) = v166;
  WORD3(v127) = v167;
  v97 = sub_100123474;
  *(&v127 + 1) = sub_100123474;
  *&v128 = v113;
  BYTE8(v128) = 0;
  *(&v128 + 9) = *v165;
  HIDWORD(v128) = *&v165[3];
  v72 = v100;
  LOBYTE(v129) = v100;
  *(&v129 + 1) = *v164;
  DWORD1(v129) = *&v164[3];
  v73 = v101;
  *(&v129 + 1) = v101;
  v74 = v98;
  LOBYTE(v130) = v98;
  DWORD1(v130) = *&v163[3];
  *(&v130 + 1) = *v163;
  v75 = v99;
  *(&v130 + 1) = v99;
  LOBYTE(v131) = v110;
  DWORD1(v131) = *&v162[3];
  *(&v131 + 1) = *v162;
  *(&v131 + 1) = v111;
  *&v132 = v108;
  *(&v132 + 1) = v107;
  v76 = v123;
  v77 = v105;
  *v105 = v122;
  v77[1] = v76;
  v78 = v124;
  v79 = v125;
  v80 = v127;
  v77[4] = v126;
  v77[5] = v80;
  v77[2] = v78;
  v77[3] = v79;
  v81 = v128;
  v82 = v129;
  v83 = v132;
  v84 = v130;
  v77[9] = v131;
  v77[10] = v83;
  v77[7] = v82;
  v77[8] = v84;
  v77[6] = v81;
  v85 = sub_10000341C(&qword_100262DF0, &qword_1001D9EA8);
  sub_1000081F8(v71, v77 + *(v85 + 48), &qword_100262DA8, &qword_1001D9E88);
  sub_100123698(&v122, &v133);
  sub_10000F500(v121, &qword_100262DA8, &qword_1001D9E88);
  sub_10000F500(v71, &qword_100262DA8, &qword_1001D9E88);
  v133 = v112;
  LOBYTE(v134) = v103;
  *(&v134 + 1) = *v170;
  HIDWORD(v134) = *&v170[3];
  v135 = v109;
  LOBYTE(v136) = v104;
  *(&v136 + 1) = *v168;
  HIDWORD(v136) = *&v168[3];
  v137 = v120;
  v138 = v119;
  v139 = v118;
  v140 = v117;
  v141 = v116;
  v142 = v115;
  v143 = v114;
  v144 = v106;
  v145 = v166;
  v146 = v167;
  v147 = v97;
  v148 = v113;
  v149 = 0;
  *v150 = *v165;
  *&v150[3] = *&v165[3];
  v151 = v72;
  *v152 = *v164;
  *&v152[3] = *&v164[3];
  v153 = v73;
  v154 = v74;
  *&v155[3] = *&v163[3];
  *v155 = *v163;
  v156 = v75;
  v157 = v110;
  *&v158[3] = *&v162[3];
  *v158 = *v162;
  v159 = v111;
  v160 = v108;
  v161 = v107;
  return sub_1000AF844(&v133);
}

uint64_t sub_10010E058(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010E0F0, v3, v2);
}

uint64_t sub_10010E0F0(uint64_t a1, uint64_t a2)
{

  sub_10010AB74();
  sub_100094238();

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10010E164()
{
  v0 = type metadata accessor for ScenePhase();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (&v10 - v5);
  type metadata accessor for CompositionIndexView(0);
  sub_10011F074(&qword_1002628E0, &qword_1001D95E8, &type metadata accessor for ScenePhase, v6);
  (*(v1 + 104))(v4, enum case for ScenePhase.active(_:), v0);
  v7 = static ScenePhase.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  result = (v8)(v6, v0);
  if (v7)
  {
    sub_10010AB74();
    sub_100094238();
  }

  return result;
}

uint64_t sub_10010E2F4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10000341C(&qword_100262E00, &qword_1001D9EB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v29 - v5;
  v7 = sub_10010AA34();
  swift_getKeyPath();
  v29[1] = v7;
  sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable);

  if (v8 == 1)
  {
    sub_10010AB74();
  }

  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4044000000000000;
  v6[16] = 0;
  v9 = sub_10000341C(&qword_100262E08, &qword_1001D9EE8);
  sub_10010E58C(&v6[*(v9 + 44)]);
  v10 = static Edge.Set.horizontal.getter();
  v11 = &v6[*(sub_10000341C(&qword_100262E10, &qword_1001D9EF0) + 36)];
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  v12 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v6[*(sub_10000341C(&qword_100262E18, &qword_1001D9EF8) + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v23 = &v6[*(v3 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_10002A894(v6, a2, &qword_100262E00, &qword_1001D9EB8);
  return (*(v4 + 56))(a2, 0, 1, v3);
}

uint64_t sub_10010E58C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_10000341C(&qword_100262E20, &qword_1001D9F00);
  __chkstk_darwin(v40);
  v2 = v39 - v1;
  v3 = sub_10000341C(&qword_100262E28, &qword_1001D9F08);
  __chkstk_darwin(v3);
  v5 = v39 - v4;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10010AA34();
  swift_getKeyPath();
  v42 = v7;
  sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable);

  if (v8)
  {
    v39[1] = v3;
    sub_10010AB74();

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._object = 0x80000001001E72A0;
    v9._countAndFlagsBits = 0x1000000000000029;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
    v10._countAndFlagsBits = sub_1000971C0();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v10);

    v11._countAndFlagsBits = 0xD000000000000018;
    v11._object = 0x80000001001E72D0;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
    LocalizedStringKey.init(stringInterpolation:)();
    v12 = Text.init(_:tableName:bundle:comment:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    KeyPath = swift_getKeyPath();
    v42 = v12;
    v43 = v14;
    v44 = v16 & 1;
    v45 = v18;
    v46 = KeyPath;
    v47 = 1;
    static Font.Weight.semibold.getter();
    sub_10000341C(&qword_10025C768, &unk_1001D9F80);
    sub_10004882C();
    View.fontWeight(_:)();
    sub_10002A984(v12, v14, v16 & 1);

    if (qword_10025A7C8 != -1)
    {
      swift_once();
    }

    *&v2[*(v40 + 36)] = qword_100277178;
    sub_1000081F8(v2, v5, &qword_100262E20, &qword_1001D9F00);
    swift_storeEnumTagMultiPayload();

    sub_10000341C(&qword_100262E30, &qword_1001D9F70);
    sub_1001236E8();
    sub_100123858();
    v20 = v41;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v2, &qword_100262E20, &qword_1001D9F00);
  }

  else
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._object = 0x80000001001E7210;
    v21._countAndFlagsBits = 0xD000000000000010;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
    v22._countAndFlagsBits = sub_1000971C0();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v22);

    v23._countAndFlagsBits = 0xD00000000000001ALL;
    v23._object = 0x80000001001E7230;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
    LocalizedStringKey.init(stringInterpolation:)();
    v24 = Text.init(_:tableName:bundle:comment:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = swift_getKeyPath();
    v32 = static Font.subheadline.getter();
    v33 = swift_getKeyPath();
    v34 = v28 & 1;
    LOBYTE(v42) = v28 & 1;
    if (qword_10025A7D0 != -1)
    {
      v38 = v33;
      swift_once();
      v33 = v38;
    }

    v35 = qword_100277180;
    *v5 = v24;
    *(v5 + 1) = v26;
    v5[16] = v34;
    *(v5 + 3) = v30;
    *(v5 + 4) = v31;
    v5[40] = 1;
    *(v5 + 6) = v33;
    *(v5 + 7) = v32;
    *(v5 + 8) = v35;
    swift_storeEnumTagMultiPayload();

    sub_10000341C(&qword_100262E30, &qword_1001D9F70);
    sub_1001236E8();
    sub_100123858();
    v20 = v41;
    _ConditionalContent<>.init(storage:)();
  }

  v36 = sub_10000341C(&qword_100262E68, &unk_1001D9F90);
  return (*(*(v36 - 8) + 56))(v20, 0, 1, v36);
}

uint64_t sub_10010EB4C(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_10010EC14()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

BOOL sub_10010ED58()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1)
  {
    return 1;
  }

  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v7 = v14;
  }

  swift_getKeyPath();
  v14 = v7;
  sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v7 + 32);
  v11 = *(v7 + 40);

  return (v11 & 1) != 0 || v10 != 2;
}

void *sub_10010EF64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CompositionConfirmView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27[-v12];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_100120918(v2, v10, type metadata accessor for CompositionConfirmView);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_100122020(v10, v18 + v16, type metadata accessor for CompositionConfirmView);
  v19 = (v18 + v17);
  *v19 = a1;
  v19[1] = a2;
  sub_10015C9C8(0, 0, v13, &unk_1001D9DE0, v18);

  v20 = v3 + *(v7 + 52);
  v21 = *v20;
  v22 = *(v20 + 16);
  v32 = v21;
  v33 = v22;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.setter();
  v23 = *(v3 + 64);
  v24 = *(v3 + 72);
  v25 = *(v3 + 80);
  *&v32 = v23;
  *(&v32 + 1) = v24;
  LOBYTE(v33) = v25;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  result = FocusState.Binding.wrappedValue.getter();
  if (v28 == 1)
  {
    *&v32 = v23;
    *(&v32 + 1) = v24;
    LOBYTE(v33) = v25;

    FocusState.Binding.wrappedValue.getter();
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v27[15] = (v31 & 1) == 0;
    FocusState.Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10010F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for EnvironmentValues();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v9;
  v6[11] = v8;

  return _swift_task_switch(sub_10010F354, v9, v8);
}

uint64_t sub_10010F354()
{
  v1 = v0[3];
  v2 = *v1;
  v3 = *(v1 + 8);

  if ((v3 & 1) == 0)
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v2 = v0[2];
  }

  v0[12] = v2;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_10010F498;
  v10 = v0[4];
  v9 = v0[5];

  return sub_10007C390(v10, v9);
}

uint64_t sub_10010F498()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_10010F5DC, v3, v2);
}

uint64_t sub_10010F5DC(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10010F644@<X0>(uint64_t a1@<X8>)
{
  v177 = a1;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v175 = *(v2 - 8);
  v176 = v2;
  __chkstk_darwin(v2);
  v174 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for PreferredContentSizeModifier(0);
  __chkstk_darwin(v163);
  v173 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for CompositionConfirmView(0);
  v137 = *(v153 - 8);
  __chkstk_darwin(v153);
  v138 = v5;
  v139 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v179 = &v128 - v8;
  v140 = sub_10000341C(&qword_100262B08, &qword_1001D9A40);
  __chkstk_darwin(v140);
  v10 = &v128 - v9;
  v144 = sub_10000341C(&qword_100262B10, &qword_1001D9A48);
  v142 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v128 - v11;
  v146 = sub_10000341C(&qword_100262B18, &qword_1001D9A50);
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v143 = &v128 - v12;
  v150 = sub_10000341C(&qword_100262B20, &qword_1001D9A58);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v128 - v13;
  v147 = sub_10000341C(&qword_100262B28, &qword_1001D9A60);
  __chkstk_darwin(v147);
  v180 = &v128 - v14;
  v160 = sub_10000341C(&qword_100262B30, &qword_1001D9A68);
  __chkstk_darwin(v160);
  v154 = &v128 - v15;
  v168 = sub_10000341C(&qword_100262B38, &qword_1001D9A70);
  v161 = *(v168 - 8);
  __chkstk_darwin(v168);
  v17 = &v128 - v16;
  v172 = sub_10000341C(&qword_100262B40, &qword_1001D9A78);
  v169 = *(v172 - 8);
  __chkstk_darwin(v172);
  v165 = &v128 - v18;
  v171 = sub_10000341C(&qword_100262B48, &qword_1001D9A80);
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v167 = &v128 - v19;
  v166 = sub_10000341C(&qword_100262B50, &qword_1001D9A88);
  v164 = *(v166 - 8);
  __chkstk_darwin(v166);
  v162 = &v128 - v20;
  v158 = sub_10000341C(&qword_100262B58, &qword_1001D9A90);
  __chkstk_darwin(v158);
  v159 = &v128 - v21;
  v156 = sub_10000341C(&qword_100262B60, &qword_1001D9A98);
  __chkstk_darwin(v156);
  v157 = &v128 - v22;
  v23 = type metadata accessor for EnvironmentValues();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  v136 = v1;
  v28 = *(v1 + 8) == 1;
  v129 = v26;
  v155 = v17;
  v131 = v23;
  v130 = v24;
  if (v28)
  {
    *&v188 = v27;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = v7;
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v7 = v29;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v24 + 8))(v26, v23);
  }

  v182 = swift_allocBox();
  v32 = v31;
  type metadata accessor for CompositionModel(0);
  v181 = sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  v178 = v32;
  Bindable<A>.init(wrappedValue:)();
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v33 = &v10[*(sub_10000341C(&qword_100262B68, &qword_1001D9AA0) + 44)];
  v34 = *(v7 + 16);
  v132 = v10;
  v35 = v179;
  v34(v179, v32, v6);
  Bindable.wrappedValue.getter();
  v36 = *(v7 + 8);
  v36(v35, v6);
  v37 = v188;
  swift_getKeyPath();
  *&v188 = v37;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v33 = static HorizontalAlignment.center.getter();
  *(v33 + 1) = 0x4024000000000000;
  v33[16] = 0;
  v38 = &v33[*(sub_10000341C(&qword_100262B70, &qword_1001D9AA8) + 44)];
  v39 = v136;
  sub_100110DF8(v182, v136, v38);
  v135 = v7 + 16;
  v134 = v34;
  v34(v35, v178, v6);
  Bindable.wrappedValue.getter();
  v152 = v6;
  v151 = v7 + 8;
  v133 = v36;
  v36(v35, v6);
  v40 = v188;
  swift_getKeyPath();
  *&v188 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v40 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  LOBYTE(v188) = v41 == 1;
  v42 = v39;
  v43 = v39;
  v44 = v139;
  sub_100120918(v43, v139, type metadata accessor for CompositionConfirmView);
  v45 = (*(v137 + 80) + 24) & ~*(v137 + 80);
  v46 = swift_allocObject();
  v47 = v182;
  *(v46 + 16) = v182;
  sub_100122020(v44, v46 + v45, type metadata accessor for CompositionConfirmView);
  v48 = sub_100007120(&qword_100262B78, &qword_100262B08, &qword_1001D9A40, &protocol conformance descriptor for VStack<A>);
  v49 = v47;

  v50 = v42;
  v51 = v141;
  v52 = v140;
  v53 = v132;
  View.onChange<A>(of:initial:_:)();

  v54 = sub_10000F500(v53, &qword_100262B08, &qword_1001D9A40);
  __chkstk_darwin(v54);
  *(&v128 - 2) = v50;
  *(&v128 - 1) = v49;
  v55 = sub_10000341C(&qword_100262B80, &qword_1001D9AB0);
  *&v188 = v52;
  *(&v188 + 1) = &type metadata for Bool;
  v189 = v48;
  v190 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = sub_100003E34(&qword_100262B88, &qword_1001D9AB8);
  v58 = sub_100122114();
  *&v188 = v57;
  *(&v188 + 1) = v58;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v143;
  v61 = v144;
  View.toolbar<A>(content:)();
  (*(v142 + 8))(v51, v61);
  v62 = *(v50 + 96);
  v185 = *(v50 + 88);
  v186 = v62;
  sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
  State.projectedValue.getter();
  v63 = v189;
  *&v188 = v61;
  *(&v188 + 1) = v55;
  v189 = OpaqueTypeConformance2;
  v190 = v59;
  swift_getOpaqueTypeConformance2();
  v64 = v148;
  v65 = v146;
  View.inlineFeedback(controller:completion:)();

  (*(v145 + 8))(v60, v65);
  v66 = *(v50 + 64);
  v67 = *(v50 + 72);
  v68 = v50;
  v69 = *(v50 + 80);
  *&v188 = v66;
  *(&v188 + 1) = v67;
  LOBYTE(v189) = v69;
  v70 = sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v71 = 0;
  if (v185 == 1)
  {
    v72 = *(v68 + 24);

    if ((v72 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v73 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v74 = v129;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v130 + 8))(v74, v131);
    }

    v71 = sub_10016FEDC();
  }

  v75 = v180;
  (*(v149 + 32))(v180, v64, v150);
  *(v75 + *(v147 + 36)) = v71;
  v76 = v179;
  v77 = v152;
  v134(v179, v178, v152);
  Bindable.wrappedValue.getter();
  v133(v76, v77);
  v78 = v188;
  swift_getKeyPath();
  *&v188 = v78;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();

  v181 = v66;
  *&v188 = v66;
  *(&v188 + 1) = v67;
  v179 = v67;
  LODWORD(v178) = v69;
  LOBYTE(v189) = v69;
  v152 = v70;
  FocusState.Binding.wrappedValue.getter();
  v79 = 1;
  if (v185 == 1)
  {
    v80 = *(v68 + 24);

    if ((v80 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v81 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v82 = v129;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v130 + 8))(v82, v131);
    }

    v83 = sub_10016FEDC();

    v79 = !v83;
  }

  v84 = v163;
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v85 = v173;
  v86 = v68;
  Binding.projectedValue.getter();
  LOBYTE(v188) = 0;
  static Binding.constant(_:)();
  v87 = v185;
  v88 = v186;
  v89 = v187;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v85 + 8) = v79 & 1;
  *(v85 + 9) = 1;
  v90 = v85 + v84[8];
  *v90 = v87;
  *(v90 + 8) = v88;
  *(v90 + 16) = v89;
  v91 = (v85 + v84[9]);
  *v91 = 0xD000000000000016;
  v91[1] = 0x80000001001D96D0;
  v92 = v85 + v84[10];
  type metadata accessor for CGSize(0);
  v183 = 0;
  v184 = 0;
  State.init(wrappedValue:)();
  v93 = v189;
  *v92 = v188;
  *(v92 + 16) = v93;
  v94 = v85 + v84[11];
  LOBYTE(v183) = 0;
  State.init(wrappedValue:)();
  v95 = *(&v188 + 1);
  *v94 = v188;
  *(v94 + 8) = v95;
  v96 = v85 + v84[12];
  v183 = 0;
  LOBYTE(v184) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v97 = BYTE8(v188);
  v98 = v189;
  *v96 = v188;
  *(v96 + 8) = v97;
  *(v96 + 16) = v98;
  v99 = v85 + v84[13];
  LOBYTE(v183) = 0;
  State.init(wrappedValue:)();
  v100 = *(&v188 + 1);
  *v99 = v188;
  *(v99 + 8) = v100;
  v101 = v85 + v84[14];
  type metadata accessor for PresentationModel(0);
  sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  *v101 = Environment.init<A>(_:)();
  *(v101 + 8) = v102 & 1;
  v103 = v154;
  sub_10002A894(v180, v154, &qword_100262B28, &qword_1001D9A60);
  v104 = v160;
  sub_100122020(v85, v103 + *(v160 + 36), type metadata accessor for PreferredContentSizeModifier);
  v106 = v174;
  v105 = v175;
  v107 = v176;
  (*(v175 + 104))(v174, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v176);
  v108 = sub_100123308(&qword_100262BB8, &qword_100262B30, &qword_1001D9A68, sub_1001221C4);
  v109 = v155;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v105 + 8))(v106, v107);
  sub_10000F500(v103, &qword_100262B30, &qword_1001D9A68);
  *&v188 = v181;
  *(&v188 + 1) = v179;
  LOBYTE(v189) = v178;
  FocusState.Binding.wrappedValue.getter();
  if (v185 == 1)
  {
    v110 = *(v86 + 24);

    if ((v110 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v111 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v112 = v129;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v130 + 8))(v112, v131);
    }

    sub_10016FEDC();
  }

  *&v188 = v104;
  *(&v188 + 1) = v108;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v165;
  v115 = v168;
  View.navigationBarHidden(_:)();
  (*(v161 + 8))(v109, v115);
  LocalizedStringKey.init(stringLiteral:)();
  *&v188 = v115;
  *(&v188 + 1) = v113;
  v116 = swift_getOpaqueTypeConformance2();
  v117 = v167;
  v118 = v172;
  View.navigationTitle(_:)();

  (*(v169 + 8))(v114, v118);
  *&v188 = v118;
  *(&v188 + 1) = v116;
  swift_getOpaqueTypeConformance2();
  v119 = v162;
  v120 = v171;
  View.navigationBarBackButtonHidden(_:)();
  (*(v170 + 8))(v117, v120);
  v121 = v159;
  (*(v164 + 32))(v159, v119, v166);
  v122 = &v121[*(v158 + 36)];
  v123 = v182;
  *v122 = sub_1001223BC;
  v122[1] = v123;
  v122[2] = 0;
  v122[3] = 0;
  v124 = v121;
  v125 = v157;
  sub_10002A894(v124, v157, &qword_100262B58, &qword_1001D9A90);
  v126 = (v125 + *(v156 + 36));
  *v126 = 0;
  v126[1] = 0;
  v126[2] = sub_1001223DC;
  v126[3] = v123;
  sub_10002A894(v125, v177, &qword_100262B60, &qword_1001D9A98);
}

uint64_t sub_100110DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v330 = a2;
  v336 = a1;
  v320 = a3;
  v3 = sub_10000341C(&unk_100262BF8, &unk_1001D9B10);
  v318 = *(v3 - 8);
  v319 = v3;
  __chkstk_darwin(v3);
  v312 = &v277 - v4;
  v5 = type metadata accessor for FeedbackView(0);
  v309 = *(v5 - 8);
  v310 = v5;
  v6 = __chkstk_darwin(v5);
  v294 = &v277 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v293 = &v277 - v8;
  v9 = sub_10000341C(&qword_10025DFB0, &qword_1001D33E0);
  v10 = __chkstk_darwin(v9 - 8);
  v311 = &v277 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v325 = &v277 - v12;
  v307 = sub_10000341C(&qword_100262C08, &qword_1001D9B20);
  __chkstk_darwin(v307);
  v302 = &v277 - v13;
  v297 = sub_10000341C(&qword_100262C10, &qword_1001D9B28);
  __chkstk_darwin(v297);
  v289 = &v277 - v14;
  v295 = sub_10000341C(&qword_100262C18, &qword_1001D9B30);
  __chkstk_darwin(v295);
  v296 = (&v277 - v15);
  v16 = sub_10000341C(&qword_100262C20, &qword_1001D9B38);
  v17 = __chkstk_darwin(v16 - 8);
  v301 = &v277 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  *&v321 = &v277 - v19;
  v305 = sub_10000341C(&qword_100262C28, &qword_1001D9B40);
  __chkstk_darwin(v305);
  v306 = (&v277 - v20);
  v21 = sub_10000341C(&unk_100262C30, &unk_1001D9B48);
  v22 = __chkstk_darwin(v21 - 8);
  v308 = &v277 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v324 = &v277 - v24;
  v25 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v303 = *(v25 - 8);
  *&v304 = v25;
  __chkstk_darwin(v25);
  v292 = &v277 - v26;
  v27 = sub_10000341C(&qword_10025DFF0, &qword_1001D3420);
  v28 = __chkstk_darwin(v27 - 8);
  v323 = &v277 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v328 = &v277 - v30;
  v329 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v337 = *(v329 - 8);
  v31 = __chkstk_darwin(v329);
  v291 = &v277 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v334 = &v277 - v33;
  v335 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  v34 = __chkstk_darwin(v335);
  v322 = &v277 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v327 = &v277 - v36;
  v37 = sub_10000341C(&qword_100262C40, &qword_1001D9B58);
  v38 = __chkstk_darwin(v37 - 8);
  v317 = &v277 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v316 = &v277 - v40;
  v41 = type metadata accessor for CompositionConfirmView(0);
  *&v313 = *(v41 - 8);
  __chkstk_darwin(v41);
  *(&v313 + 1) = v42;
  v43 = &v277 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for EnvironmentValues();
  v331 = *(v44 - 8);
  v332 = v44;
  __chkstk_darwin(v44);
  v300 = &v277 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10000341C(&unk_100262C48, &unk_1001D9B60);
  __chkstk_darwin(v46);
  v48 = &v277 - v47;
  v49 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v333 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = &v277 - v50;
  v52 = sub_10000341C(&qword_100262C58, &qword_1001D9B70);
  v53 = __chkstk_darwin(v52 - 8);
  v315 = &v277 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v56 = &v277 - v55;
  *(&v349 + 1) = &type metadata for WritingTools;
  *&v350 = sub_10002AC88();
  LOBYTE(v348) = 6;
  v57 = isFeatureEnabled(_:)();
  sub_10000F4B4(&v348);
  v326 = v56;
  v298 = v41;
  *&v314 = v43;
  if (v57)
  {
    LocalizedStringKey.init(stringLiteral:)();

    Button<>.init(_:action:)();
    v58 = v333;
    v333[2](v48, v51, v49);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    sub_1000AF7F0();
    _ConditionalContent<>.init(storage:)();
    (v58[1])(v51, v49);
    v59 = v329;
    v60 = v330;
  }

  else
  {
    v299 = v46;
    v333 = v49;
    v61 = v330;
    v62 = v330 + *(v41 + 44);
    v63 = *v62;
    v64 = *(v62 + 16);
    v346[0] = v63;
    *&v346[1] = v64;
    sub_10000341C(&qword_100260098, &unk_1001D56B0);
    State.projectedValue.getter();
    v290 = v348;
    v287 = v349;
    v288 = *(&v348 + 1);
    v286 = *(&v349 + 1);
    v66 = *(v61 + 72);
    v67 = *(v61 + 80);
    *&v348 = *(v61 + 64);
    v65 = v348;
    *(&v348 + 1) = v66;
    LOBYTE(v349) = v67;
    sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
    FocusState.Binding.projectedValue.getter();
    v284 = *(&v346[0] + 1);
    v285 = *&v346[0];
    v283 = LOBYTE(v346[1]);
    *&v348 = v65;
    *(&v348 + 1) = v66;
    LOBYTE(v349) = v67;
    FocusState.Binding.wrappedValue.getter();
    if (LOBYTE(v346[0]) == 1)
    {
      v60 = v330;
      v68 = *(v330 + 24);

      v59 = v329;
      if ((v68 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v69 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v70 = v300;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v331 + 8))(v70, v332);
      }

      v282 = sub_10016FEDC();
    }

    else
    {
      v59 = v329;
      v60 = v330;
      v282 = 0;
    }

    v71 = v314;
    sub_100120918(v60, v314, type metadata accessor for CompositionConfirmView);
    v72 = (*(v313 + 80) + 16) & ~*(v313 + 80);
    v281 = swift_allocObject();
    sub_100122020(v71, v281 + v72, type metadata accessor for CompositionConfirmView);
    type metadata accessor for WritingToolsModel(0);
    sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    v280 = Environment.init<A>(_:)();
    v74 = v73;
    type metadata accessor for CompositionModel(0);
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    v75 = Environment.init<A>(_:)();
    v77 = v76;
    LOBYTE(v346[0]) = 0;
    State.init(wrappedValue:)();
    v278 = v348;
    v279 = *(&v348 + 1);
    LOBYTE(v346[0]) = 0;
    State.init(wrappedValue:)();
    LOBYTE(v71) = v348;
    v277 = *(&v348 + 1);
    LOBYTE(v346[0]) = 0;
    State.init(wrappedValue:)();
    v78 = v348;
    v79 = *(&v348 + 1);
    *&v346[0] = _swiftEmptyArrayStorage;
    sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
    State.init(wrappedValue:)();
    v80 = v348;
    v356 = v74 & 1;
    v355 = v77 & 1;
    v81 = v282;
    *v48 = v280;
    v48[8] = v74 & 1;
    *(v48 + 9) = v348;
    *(v48 + 3) = *(&v348 + 3);
    *(v48 + 2) = v75;
    v48[24] = v77 & 1;
    *(v48 + 25) = v346[0];
    *(v48 + 7) = *(v346 + 3);
    v82 = v288;
    *(v48 + 4) = v290;
    *(v48 + 5) = v82;
    v83 = v286;
    *(v48 + 6) = v287;
    *(v48 + 7) = v83;
    v84 = v284;
    *(v48 + 8) = v285;
    *(v48 + 9) = v84;
    v48[80] = v283;
    v48[81] = v81;
    *(v48 + 43) = v354;
    *(v48 + 82) = *&v353[7];
    v85 = v281;
    *(v48 + 11) = sub_100125450;
    *(v48 + 12) = v85;
    v48[104] = 1;
    *(v48 + 27) = *(v344 + 3);
    *(v48 + 105) = v344[0];
    v48[112] = v278;
    *(v48 + 113) = v339;
    *(v48 + 29) = *(&v339 + 3);
    *(v48 + 15) = v279;
    v48[128] = v71;
    *(v48 + 33) = *&v338[3];
    *(v48 + 129) = *v338;
    *(v48 + 17) = v277;
    v48[144] = v78;
    *(v48 + 37) = *&v353[3];
    *(v48 + 145) = *v353;
    *(v48 + 19) = v79;
    *(v48 + 10) = v80;
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
    sub_1000AF7F0();
    _ConditionalContent<>.init(storage:)();
  }

  v86 = *(v60 + 64);
  v87 = *(v60 + 72);
  v88 = *(v60 + 80);
  *&v348 = v86;
  *(&v348 + 1) = v87;
  LOBYTE(v349) = v88;
  v290 = sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v89 = v337;
  if (LOBYTE(v346[0]) == 1)
  {
    v90 = *(v60 + 24);

    if ((v90 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v91 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v89 = v337;
      v92 = v300;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v331 + 8))(v92, v332);
    }

    v93 = sub_10016FEDC();

    if (v93)
    {
      v94 = 1;
      v95 = v316;
      goto LABEL_47;
    }
  }

  LODWORD(v286) = v88;
  v287 = v87;
  v288 = v86;
  v96 = v327;
  Divider.init()();
  v97 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v98 = v96 + *(v335 + 36);
  *v98 = v97;
  *(v98 + 8) = v99;
  *(v98 + 16) = v100;
  *(v98 + 24) = v101;
  *(v98 + 32) = v102;
  *(v98 + 40) = 0;
  v103 = swift_projectBox();
  v105 = v89 + 16;
  v104 = *(v89 + 16);
  v106 = v334;
  v336 = v103;
  v104(v334);
  Bindable.wrappedValue.getter();
  v109 = *(v89 + 8);
  v107 = v89 + 8;
  v108 = v109;
  v109(v106, v59);
  v110 = v348;
  swift_getKeyPath();
  *&v348 = v110;
  v111 = sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v112 = *(v110 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  swift_getKeyPath();
  *&v348 = v112;
  sub_1001208D0(&qword_100261B90, type metadata accessor for CompositionRateLimitModel, &unk_1001D8018);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v106) = *(v112 + 16);

  if (v106 == 1)
  {
    type metadata accessor for CompositionModel(0);
    v113 = Environment.init<A>(_:)();
    LODWORD(v299) = v114 & 1;
    v300 = v113;
  }

  else
  {
    v300 = 0;
    LODWORD(v299) = 255;
  }

  v115 = v334;
  (v104)(v334, v336, v59);
  Bindable.wrappedValue.getter();
  v337 = v107;
  v108(v115, v59);
  v116 = v348;
  swift_getKeyPath();
  *&v348 = v116;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v118 = *(v116 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  v117 = *(v116 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);

  v331 = v105;
  v332 = v108;
  v333 = v104;
  v335 = v111;
  if (v117)
  {
    v119 = HIBYTE(v117) & 0xF;
    if ((v117 & 0x2000000000000000) == 0)
    {
      v119 = v118 & 0xFFFFFFFFFFFFLL;
    }

    v120 = v304;
    if (v119)
    {
      *&v348 = v118;
      *(&v348 + 1) = v117;
      sub_10002AC34();
      v121 = v292;
      Label<>.init<A>(_:systemImage:)();
      v122 = v303;
      v123 = v328;
      (*(v303 + 32))(v328, v121, v120);
      v124 = 0;
      goto LABEL_25;
    }

    v124 = 1;
    v123 = v328;
  }

  else
  {
    v124 = 1;
    v123 = v328;
    v120 = v304;
  }

  v122 = v303;
LABEL_25:
  (*(v122 + 56))(v123, v124, 1, v120);
  v125 = v333;
  v126 = v334;
  v127 = v336;
  (v333)(v334, v336, v59);
  Bindable.wrappedValue.getter();
  v128 = v332;
  v332(v126, v59);
  v129 = sub_100074B58();

  if (v129 && ((v125)(v126, v127, v59), Bindable.wrappedValue.getter(), v128(v126, v59), v130 = v348, swift_getKeyPath(), *&v348 = v130, ObservationRegistrar.access<A, B>(_:keyPath:)(), v128 = v332, , v131 = *(v130 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state), , v131 == 1))
  {
    v132 = v291;
    (v125)(v291, v127, v59);
    Bindable.projectedValue.getter();
    v128(v132, v59);
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v128(v126, v59);
    v133 = *&v346[0];
    type metadata accessor for CompositionModel(0);
    v321 = *(v346 + 8);
    v134 = Environment.init<A>(_:)();
    v136 = v135;
    FocusState.init<A>()();
    v137 = v348;
    v138 = BYTE8(v348);
    v139 = v349;
    v140 = v136 & 1;
    LOBYTE(v344[0]) = v136 & 1;
    LOBYTE(v339) = BYTE8(v348);
    v338[0] = v350;
    v141 = v306;
    *v306 = v134;
    *(v141 + 8) = v140;
    *(v141 + 9) = v348;
    *(v141 + 3) = *(&v348 + 3);
    v141[2] = v133;
    *(v141 + 3) = v321;
    v141[5] = v137;
    *(v141 + 48) = v138;
    *(v141 + 49) = v346[0];
    *(v141 + 13) = *(v346 + 3);
    *(v141 + 7) = v139;
    *(v141 + 72) = v338[0];
    swift_storeEnumTagMultiPayload();
    sub_1001226A4();
    sub_100007120(&unk_100262C90, &qword_100262C08, &qword_1001D9B20, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    v142 = v127;
  }

  else
  {
    (v125)(v126, v127, v59);
    Bindable.wrappedValue.getter();
    v128(v126, v59);
    v143 = v348;
    swift_getKeyPath();
    *&v348 = v143;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v144 = *(v143 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__hasGeneratedResponseDrafts);

    if (v144 == 1)
    {
      v145 = v330;
      v146 = v330 + *(v298 + 44);
      v147 = *v146;
      v148 = *(v146 + 16);
      v346[0] = v147;
      *&v346[1] = v148;
      sub_10000341C(&qword_100260098, &unk_1001D56B0);
      State.projectedValue.getter();
      v304 = v348;
      v149 = v349;
      v150 = v145;
      v151 = v314;
      sub_100120918(v150, v314, type metadata accessor for CompositionConfirmView);
      v152 = (*(v313 + 80) + 16) & ~*(v313 + 80);
      v153 = swift_allocObject();
      sub_100122020(v151, v153 + v152, type metadata accessor for CompositionConfirmView);
      type metadata accessor for CompositionModel(0);
      v154 = Environment.init<A>(_:)();
      LOBYTE(v346[0]) = v155 & 1;
      v156 = v296;
      *v296 = v154;
      *(v156 + 8) = v155 & 1;
      *(v156 + 9) = v348;
      *(v156 + 3) = *(&v348 + 3);
      *(v156 + 1) = v304;
      *(v156 + 2) = v149;
      v156[6] = sub_100122B44;
      v156[7] = v153;
      swift_storeEnumTagMultiPayload();
      sub_100122980();
      sub_1001229D4();
      v157 = v321;
      _ConditionalContent<>.init(storage:)();
      v158 = sub_10000341C(&qword_100262C70, &qword_1001D9C18);
      (*(*(v158 - 8) + 56))(v157, 0, 1, v158);
    }

    else
    {
      v159 = v128;
      v160 = v330;
      if (sub_10010ED58())
      {
        v161 = v314;
        sub_100120918(v160, v314, type metadata accessor for CompositionConfirmView);
        v162 = (*(v313 + 80) + 16) & ~*(v313 + 80);
        v163 = swift_allocObject();
        sub_100122020(v161, v163 + v162, type metadata accessor for CompositionConfirmView);
        sub_10000341C(&qword_100262CB0, &qword_1001D9D90);
        sub_1001228C8();
        v164 = v289;
        Button.init(action:label:)();
        v165 = v164 + *(sub_10000341C(&qword_100262CD0, &qword_1001D9DA0) + 36);
        *v165 = 0;
        *(v165 + 8) = 0;
        v166 = v334;
        v167 = v329;
        (v333)(v334, v336, v329);
        Bindable.wrappedValue.getter();
        v159(v166, v167);
        v168 = v348;
        swift_getKeyPath();
        *&v348 = v168;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        LODWORD(v166) = *(v168 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

        LOBYTE(v168) = v166 == 1;
        KeyPath = swift_getKeyPath();
        v170 = swift_allocObject();
        *(v170 + 16) = v168;
        v171 = v296;
        v172 = (v164 + *(v297 + 36));
        *v172 = KeyPath;
        v172[1] = sub_10012544C;
        v172[2] = v170;
        sub_1000081F8(v164, v171, &qword_100262C10, &qword_1001D9B28);
        swift_storeEnumTagMultiPayload();
        sub_100122980();
        sub_1001229D4();
        v173 = v321;
        _ConditionalContent<>.init(storage:)();
        sub_10000F500(v164, &qword_100262C10, &qword_1001D9B28);
        v174 = sub_10000341C(&qword_100262C70, &qword_1001D9C18);
        (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
      }

      else
      {
        v175 = sub_10000341C(&qword_100262C70, &qword_1001D9C18);
        (*(*(v175 - 8) + 56))(v321, 1, 1, v175);
      }
    }

    v176 = v333;
    v177 = v334;
    v178 = v336;
    v179 = v329;
    (v333)(v334, v336, v329);
    Bindable.wrappedValue.getter();
    v180 = v332;
    v332(v177, v179);
    v181 = v348;
    swift_getKeyPath();
    *&v348 = v181;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v182 = *(v181 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

    v183 = *(v182 + 16);

    if (v183 && ((v176)(v177, v178, v179), Bindable.wrappedValue.getter(), v180(v177, v179), v184 = v348, swift_getKeyPath(), *&v348 = v184, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v185 = *(v184 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state), , v185 != 1))
    {
      v186 = v330 + *(v298 + 44);
      v187 = *v186;
      v188 = *(v186 + 16);
      v346[0] = v187;
      *&v346[1] = v188;
      sub_10000341C(&qword_100260098, &unk_1001D56B0);
      State.projectedValue.getter();
      v314 = v348;
      v189 = v349;
      *&v348 = v288;
      *(&v348 + 1) = v287;
      LOBYTE(v349) = v286;
      FocusState.Binding.projectedValue.getter();
      v190 = v346[0];
      v191 = v346[1];
      type metadata accessor for CompositionModel(0);
      *&v348 = Environment.init<A>(_:)();
      BYTE8(v348) = v192 & 1;
      v349 = v314;
      v350 = v189;
      v351 = v190;
      v352 = v191;
    }

    else
    {
      v352 = 0;
      v350 = 0u;
      v351 = 0u;
      v348 = 0u;
      v349 = 0u;
    }

    v193 = v321;
    v194 = v301;
    sub_1000081F8(v321, v301, &qword_100262C20, &qword_1001D9B38);
    v341 = v350;
    v342 = v351;
    v343 = v352;
    v339 = v348;
    v340 = v349;
    v195 = v302;
    sub_1000081F8(v194, v302, &qword_100262C20, &qword_1001D9B38);
    v196 = v195 + *(sub_10000341C(&qword_100262C78, &qword_1001D9C48) + 48);
    v197 = v343;
    v345 = v343;
    v199 = v341;
    v198 = v342;
    v344[2] = v341;
    v344[3] = v342;
    v201 = v339;
    v200 = v340;
    v344[0] = v339;
    v344[1] = v340;
    *(v196 + 32) = v341;
    *(v196 + 48) = v198;
    *(v196 + 64) = v197;
    *v196 = v201;
    *(v196 + 16) = v200;
    v347 = v197;
    v346[2] = v199;
    v346[3] = v198;
    v346[0] = v201;
    v346[1] = v200;
    sub_1000081F8(&v348, v338, &qword_100262C80, &qword_1001D9C50);
    sub_1000081F8(v344, v338, &qword_100262C80, &qword_1001D9C50);
    sub_10000F500(v346, &qword_100262C80, &qword_1001D9C50);
    sub_10000F500(v194, &qword_100262C20, &qword_1001D9B38);
    sub_1000081F8(v195, v306, &qword_100262C08, &qword_1001D9B20);
    swift_storeEnumTagMultiPayload();
    sub_1001226A4();
    sub_100007120(&unk_100262C90, &qword_100262C08, &qword_1001D9B20, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(&v348, &qword_100262C80, &qword_1001D9C50);
    sub_10000F500(v195, &qword_100262C08, &qword_1001D9B20);
    sub_10000F500(v193, &qword_100262C20, &qword_1001D9B38);
    v126 = v334;
    v142 = v336;
  }

  v202 = type metadata accessor for FeedbackFeatureFlags();
  *(&v349 + 1) = v202;
  *&v350 = sub_1001208D0(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v203 = sub_10002DB6C(&v348);
  (*(*(v202 - 8) + 104))(v203, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v202);
  LOBYTE(v202) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v348);
  if (v202)
  {
    v204 = v329;
    v205 = v333;
    (v333)(v126, v142, v329);
    Bindable.wrappedValue.getter();
    v332(v126, v204);
    v206 = v348;
    swift_getKeyPath();
    *&v348 = v206;
    sub_1001208D0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v207 = *(v206 + 40);
    *&v314 = *(v206 + 32);
    *&v321 = v207;

    (v205)(v126, v336, v204);
    Bindable.wrappedValue.getter();
    v208 = v332;
    v332(v126, v204);
    v209 = v348;
    swift_getKeyPath();
    *&v348 = v209;
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    v210 = v336;

    v211 = *(v209 + 56);
    *&v313 = *(v209 + 48);
    *(&v313 + 1) = v211;

    v212 = v333;
    (v333)(v126, v210, v204);
    Bindable.wrappedValue.getter();
    v208(v126, v204);
    v213 = sub_1000731AC();
    v306 = v214;
    v307 = v213;

    (v212)(v126, v210, v204);
    Bindable.wrappedValue.getter();
    v208(v126, v204);
    v305 = sub_1000731C0();
    *&v304 = v215;

    (v212)(v126, v210, v204);
    Bindable.wrappedValue.getter();
    v208(v126, v204);
    v216 = v348;
    swift_getKeyPath();
    *&v348 = v216;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v217 = *(v216 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString);
    if (v217)
    {
      v218 = v217;
      v219 = [v218 string];
      v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v302 = v221;
      v303 = v220;
    }

    else
    {

      v302 = 0xE000000000000000;
      v303 = 0;
    }

    v225 = v329;
    v226 = v333;
    (v333)(v126, v210, v329);
    Bindable.wrappedValue.getter();
    v227 = v332;
    v332(v126, v225);
    v228 = v348;
    swift_getKeyPath();
    *&v348 = v228;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v229 = *(v228 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);
    v298 = *(v228 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
    v301 = v229;

    v230 = *(v330 + 96);
    *&v348 = *(v330 + 88);
    *(&v348 + 1) = v230;
    sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
    State.wrappedValue.getter();
    v330 = *&v346[0];
    (v226)(v126, v336, v225);
    Bindable.wrappedValue.getter();
    v227(v126, v225);
    v231 = v348;
    swift_getKeyPath();
    *&v348 = v231;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v232 = *(v231 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

    v233 = 1;
    if (v232 != 1)
    {
      (v333)(v126, v336, v225);
      Bindable.wrappedValue.getter();
      v332(v126, v225);
      v234 = v348;
      swift_getKeyPath();
      *&v348 = v234;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v235 = *(v234 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

      v233 = v235 == 2;
    }

    LODWORD(v297) = v233;
    v236 = v336;
    v237 = v333;
    (v333)(v126, v336, v225);
    Bindable.wrappedValue.getter();
    v238 = v332;
    v332(v126, v225);
    v239 = v348;
    swift_getKeyPath();
    *&v348 = v239;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v240 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachments;
    swift_beginAccess();
    v296 = *(v239 + v240);

    (v237)(v126, v236, v225);
    Bindable.wrappedValue.getter();
    v238(v126, v225);
    v241 = *&v346[0];
    swift_getKeyPath();
    *&v346[0] = v241;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v242 = v126;
    v243 = *(v241 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

    (v333)(v242, v336, v225);
    Bindable.wrappedValue.getter();
    v238(v242, v225);
    v244 = *&v346[0];
    swift_getKeyPath();
    *&v346[0] = v244;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v245 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__generatedImages;
    swift_beginAccess();
    v246 = *(v244 + v245);

    v247 = v294;
    *(v294 + 25) = 0;
    v224 = v310;
    v248 = *(v310 + 92);
    *(v247 + v248) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    *(v247 + 128) = xmmword_1001D31C0;
    *(v247 + 144) = 0;
    *&v249 = v314;
    *(&v249 + 1) = v321;
    v250 = v313;
    *(v247 + 152) = 1;
    *(v247 + 24) = v250;
    *(v247 + 8) = v249;
    v251 = v306;
    *(v247 + 40) = v307;
    *(v247 + 48) = v251;
    v253 = v303;
    v252 = v304;
    *(v247 + 56) = v305;
    *(v247 + 64) = v252;
    v254 = v302;
    *(v247 + 72) = v253;
    *(v247 + 80) = v254;
    v255 = v301;
    *(v247 + 88) = v298;
    *(v247 + 96) = v255;
    *v247 = v330;
    *(v247 + 153) = v297;
    *(v247 + 154) = 2;
    *(v247 + 156) = 0;
    *&v339 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v256 = *(&v344[0] + 1);
    *(v247 + 208) = *&v344[0];
    *(v247 + 160) = 0u;
    *(v247 + 176) = 0u;
    *(v247 + 192) = 0;
    *(v247 + 104) = v296;
    *(v247 + 112) = v243;
    *(v247 + 120) = v246;
    *(v247 + 224) = 0;
    *(v247 + 232) = 0;
    *(v247 + 216) = v256;
    v257 = v293;
    sub_100122020(v247, v293, type metadata accessor for FeedbackView);
    v258 = v257;
    v223 = v325;
    sub_100122020(v258, v325, type metadata accessor for FeedbackView);
    v222 = 0;
  }

  else
  {
    v222 = 1;
    v223 = v325;
    v224 = v310;
  }

  (*(v309 + 56))(v223, v222, 1, v224);
  v259 = v322;
  sub_1000081F8(v327, v322, &qword_10025B888, &qword_1001D0300);
  v260 = v323;
  sub_1000081F8(v328, v323, &qword_10025DFF0, &qword_1001D3420);
  v261 = v324;
  v262 = v308;
  sub_1000081F8(v324, v308, &unk_100262C30, &unk_1001D9B48);
  v263 = v223;
  v264 = v311;
  sub_1000081F8(v263, v311, &qword_10025DFB0, &qword_1001D33E0);
  v265 = v259;
  v266 = v312;
  sub_1000081F8(v265, v312, &qword_10025B888, &qword_1001D0300);
  v267 = sub_10000341C(&qword_100262CA0, &qword_1001D9C58);
  v268 = v266 + v267[12];
  v269 = v300;
  *v268 = v300;
  v270 = v299;
  *(v268 + 8) = v299;
  sub_1000081F8(v260, v266 + v267[16], &qword_10025DFF0, &qword_1001D3420);
  sub_1000081F8(v262, v266 + v267[20], &unk_100262C30, &unk_1001D9B48);
  sub_1000081F8(v264, v266 + v267[24], &qword_10025DFB0, &qword_1001D33E0);
  sub_1001234A0(v269, v270);
  sub_100123678(v269, v270);
  sub_10000F500(v325, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v261, &unk_100262C30, &unk_1001D9B48);
  sub_10000F500(v328, &qword_10025DFF0, &qword_1001D3420);
  sub_10000F500(v327, &qword_10025B888, &qword_1001D0300);
  sub_10000F500(v264, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v262, &unk_100262C30, &unk_1001D9B48);
  sub_10000F500(v323, &qword_10025DFF0, &qword_1001D3420);
  sub_100123678(v269, v270);
  sub_10000F500(v322, &qword_10025B888, &qword_1001D0300);
  v95 = v316;
  sub_10002A894(v266, v316, &unk_100262BF8, &unk_1001D9B10);
  v94 = 0;
LABEL_47:
  (*(v318 + 56))(v95, v94, 1, v319);
  v271 = v326;
  v272 = v315;
  sub_1000081F8(v326, v315, &qword_100262C58, &qword_1001D9B70);
  v273 = v317;
  sub_1000081F8(v95, v317, &qword_100262C40, &qword_1001D9B58);
  v274 = v320;
  sub_1000081F8(v272, v320, &qword_100262C58, &qword_1001D9B70);
  v275 = sub_10000341C(&qword_100262CA8, &qword_1001D9C60);
  sub_1000081F8(v273, v274 + *(v275 + 48), &qword_100262C40, &qword_1001D9B58);
  sub_10000F500(v95, &qword_100262C40, &qword_1001D9B58);
  sub_10000F500(v271, &qword_100262C58, &qword_1001D9B70);
  sub_10000F500(v273, &qword_100262C40, &qword_1001D9B58);
  return sub_10000F500(v272, &qword_100262C58, &qword_1001D9B70);
}

uint64_t sub_10011397C(uint64_t a1)
{
  v1 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  (*(v2 + 16))(v4, v5, v1);
  Bindable.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  v6 = v10;
  swift_getKeyPath();
  v10 = v6;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"updatePromptEntryState:"])
    {
      [Strong updatePromptEntryState:1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100113B3C(uint64_t a1)
{
  type metadata accessor for CompositionConfirmView(0);
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  sub_10010EF64(v2, v3);
}

double sub_100113BC4@<D0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v22 = 1;
  sub_100113C80(v14);
  v4 = v14[0];
  v5 = v14[1];
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v21 = v15;
  v20 = v18;
  v11 = v22;
  v12 = static Edge.Set.all.getter();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  *(a2 + 80) = v12;
  result = 0.0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 1;
  return result;
}

uint64_t sub_100113C80@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_100125454(8);
  v9 = Image.init(_internalSystemName:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_100007D98(v2, v4, v6);

  sub_10002A984(v2, v4, v6);
}

uint64_t sub_100113D68(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = *a2;
  v9 = swift_projectBox();
  (*(v5 + 16))(v7, v9, v4);
  Bindable.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v10 = v16;
  swift_getKeyPath();
  v16 = v10;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing);

  if ((v11 & 1) == 0)
  {
    if (v8)
    {
      sub_10010EC14();
      sub_100153D78();
    }

    v13 = sub_10010EC14();
    swift_getKeyPath();
    v16 = v13;
    sub_1001208D0(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v13 + 81);

    if (v8 != v14)
    {
      sub_10010EC14();
      sub_1001537FC(v8);
    }
  }

  return result;
}

uint64_t sub_100113FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v46 = sub_10000341C(&qword_100262BC8, &qword_1001D9AC8);
  __chkstk_darwin(v46);
  v44 = &v42 - v5;
  v6 = sub_10000341C(&unk_100262BA0, &qword_1001D9AC0);
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v49 = &v42 - v7;
  v8 = sub_10000341C(&qword_100262BD0, &qword_1001D9AD0);
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v45 = &v42 - v9;
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000341C(&qword_100262BD8, &qword_1001D9AD8);
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10000341C(&qword_100262B88, &qword_1001D9AB8);
  v18 = __chkstk_darwin(v52);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v51 = &v42 - v21;
  v22 = *(a1 + 72);
  v23 = *(a1 + 80);
  v57 = *(a1 + 64);
  v58 = v22;
  v59 = v23;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v50 = v13;
  if (v56 != 1)
  {
    goto LABEL_6;
  }

  v24 = *(a1 + 24);

  if ((v24 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    v13 = v50;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v15 + 8))(v17, v14);
  }

  v26 = sub_10016FEDC();

  if (v26)
  {
    (*(v54 + 56))(v20, 1, 1, v55);
    sub_100007120(&qword_100262B98, &unk_100262BA0, &qword_1001D9AC0, &protocol conformance descriptor for TupleToolbarContent<A>);
    v27 = v51;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000F500(v20, &qword_100262B88, &qword_1001D9AB8);
  }

  else
  {
LABEL_6:
    v28 = static ToolbarItemPlacement.cancellationAction.getter();
    __chkstk_darwin(v28);
    *(&v42 - 2) = a1;
    *(&v42 - 1) = a2;
    sub_10000341C(&unk_100262BE0, &unk_1001D7D60);
    sub_10006B6C0();
    ToolbarItem<>.init(placement:content:)();
    v29 = static ToolbarItemPlacement.confirmationAction.getter();
    __chkstk_darwin(v29);
    *(&v42 - 2) = a1;
    *(&v42 - 1) = a2;
    sub_10000341C(&qword_10025C820, &qword_1001D9AE0);
    sub_100048B00();
    v30 = v45;
    ToolbarItem<>.init(placement:content:)();
    v31 = *(v46 + 48);
    v32 = v42;
    v33 = v44;
    v34 = v13;
    v35 = v43;
    (*(v42 + 16))(v44, v34, v43);
    v37 = v47;
    v36 = v48;
    (*(v47 + 16))(&v33[v31], v30, v48);
    v38 = v49;
    TupleToolbarContent.init(_:)();
    v39 = v54;
    v40 = v55;
    (*(v54 + 16))(v20, v38, v55);
    (*(v39 + 56))(v20, 0, 1, v40);
    sub_100007120(&qword_100262B98, &unk_100262BA0, &qword_1001D9AC0, &protocol conformance descriptor for TupleToolbarContent<A>);
    v27 = v51;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000F500(v20, &qword_100262B88, &qword_1001D9AB8);
    (*(v39 + 8))(v38, v40);
    (*(v37 + 8))(v30, v36);
    (*(v32 + 8))(v50, v35);
  }

  sub_100122114();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_10000F500(v27, &qword_100262B88, &qword_1001D9AB8);
}

uint64_t sub_100114720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v5 = type metadata accessor for CompositionConfirmView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000341C(&qword_10025C808, &unk_1001D3340);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  static ButtonRole.cancel.getter();
  sub_100120918(a1, v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompositionConfirmView);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_100122020(v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CompositionConfirmView);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  Button<>.init(role:action:)();
  LocalizedStringKey.init(stringLiteral:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340, &protocol conformance descriptor for Button<A>);
  View.accessibility(label:)();
  sub_10002A984(v15, v17, v19 & 1);

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100114A1C(uint64_t a1, uint64_t a2)
{
  v18 = type metadata accessor for NavigationPath();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10010EC14();
  sub_100153D18();

  v9 = swift_projectBox();
  v16 = *(v6 + 16);
  v17 = v9;
  v16(v8);
  Bindable.wrappedValue.getter();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_10007CE14(0, 0, 0, 0);

  type metadata accessor for CompositionConfirmView(0);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v10 = NavigationPath.count.getter();
  (*(v2 + 8))(v4, v18);
  if (v10 < 1)
  {
    (v16)(v8, v17, v5);
    Bindable.wrappedValue.getter();
    v15(v8, v5);
    v12 = v19;
    swift_getKeyPath();
    v19 = v12;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong endWritingTools];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    Binding.wrappedValue.getter();
    NavigationPath.removeLast(_:)(1);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100114D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CompositionConfirmView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v13 - 8);
  static ButtonRole.confirm.getter();
  sub_100120918(a1, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompositionConfirmView);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_100122020(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for CompositionConfirmView);
  *(v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  Button<>.init(role:action:)();
  v16 = swift_projectBox();
  (*(v7 + 16))(v9, v16, v6);
  Bindable.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  v17 = v23;
  swift_getKeyPath();
  v23 = v17;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(a2) = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  LOBYTE(v9) = a2 == 1;
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  result = sub_10000341C(&qword_10025C820, &qword_1001D9AE0);
  v21 = (a3 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_10012544C;
  v21[2] = v19;
  return result;
}

uint64_t sub_1001150CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  sub_10010EC14();
  sub_100153D18();

  v6 = swift_projectBox();
  v7 = *(v3 + 16);
  v7(v5, v6, v2);
  Bindable.wrappedValue.getter();
  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_10007CE14(1, 0, 0, 0);

  v7(v5, v6, v2);
  Bindable.wrappedValue.getter();
  v8(v5, v2);
  v9 = v13;
  swift_getKeyPath();
  v13 = v9;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001152FC(uint64_t a1, char a2)
{
  v3 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v8 = v12;
  swift_getKeyPath();
  v12 = v8;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"setIsHostingControllerHeightConstraintActive:"])
    {
      [Strong setIsHostingControllerHeightConstraintActive:a2 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001154D0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v10, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_10011562C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v5 = 0x4028000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (*v2)
  {
    v6 = 0x4020000000000000;
  }

  else
  {
    v6 = 0x4034000000000000;
  }

  v7 = static Edge.Set.all.getter();
  v8 = sub_10000341C(&qword_100263070, &qword_1001DA390);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_10000341C(&qword_100263078, &qword_1001DA398);
  v10 = a2 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v5;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = 0;
  return result;
}

id sub_1001156F8()
{
  v1 = v0;
  v2 = sub_1001154D0();
  swift_getKeyPath();
  v15[0] = v2;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  v4 = type metadata accessor for PromptEntryViewCoordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView] = 0;
  *&v5[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource] = 0;
  v6 = &v5[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner];
  *v6 = *v1;
  v7 = v1[4];
  v9 = v1[1];
  v8 = v1[2];
  *(v6 + 3) = v1[3];
  *(v6 + 4) = v7;
  *(v6 + 1) = v9;
  *(v6 + 2) = v8;
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  *(v6 + 121) = *(v1 + 121);
  *(v6 + 6) = v11;
  *(v6 + 7) = v12;
  *(v6 + 5) = v10;
  *&v5[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_attachmentManager] = v3;
  sub_100120DA4(v1, v15);
  v14.receiver = v5;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, "init");
}

void sub_10011585C(void *a1, uint64_t a2)
{
  v3 = v2;
  v142 = a2;
  v5 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v5 - 8);
  v129 = v128 - v6;
  v140 = type metadata accessor for IntelligenceUI.PromptEntryView.PlaceholderConfiguration();
  v138 = *(v140 - 8);
  v7 = __chkstk_darwin(v140);
  v136 = v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v137 = v128 - v9;
  v10 = type metadata accessor for UIPromptBackgroundView.FillStyle();
  v134 = *(v10 - 8);
  v135 = v10;
  __chkstk_darwin(v10);
  v133 = v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v128[1] = v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v128[0] = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000341C(&unk_1002628E8, &unk_1001E07C0);
  __chkstk_darwin(v16 - 8);
  v139 = v128 - v17;
  v18 = type metadata accessor for UIPromptBackgroundView.Configuration();
  v131 = *(v18 - 8);
  v132 = v18;
  v19 = __chkstk_darwin(v18);
  v130 = v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v128 - v21;
  v23 = IntelligenceUI.PromptEntryView.textView.getter();
  v24 = *(v2 + 32);
  v146 = *(v2 + 16);
  v147 = v24;
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.getter();
  v25 = String._bridgeToObjectiveC()();

  [v23 setText:v25];

  v26 = IntelligenceUI.PromptEntryView.trailingButton.getter();
  [v26 setNeedsUpdateConfiguration];

  v143 = a1;
  v27 = IntelligenceUI.PromptEntryView.textView.getter();
  v28 = sub_1001154D0();
  swift_getKeyPath();
  *&v146 = v28;
  v29 = sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v26) = *(v28 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v26 == 1)
  {
    v30 = 0;
  }

  else
  {
    v31 = sub_1001154D0();
    swift_getKeyPath();
    *&v146 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(v31 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);
  }

  [v27 setSelectable:v30];

  v32 = IntelligenceUI.PromptEntryView.textView.getter();
  v33 = sub_1001154D0();
  swift_getKeyPath();
  *&v146 = v33;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = *(v33 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  v35 = v3;
  if (v34 == 1)
  {
    v36 = 0;
  }

  else
  {
    v37 = sub_1001154D0();
    swift_getKeyPath();
    *&v146 = v37;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v36 = *(v37 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);
  }

  [v32 setEditable:v36];

  v151 = *(v3 + 96);
  v152 = *(v3 + 112);
  v146 = *(v3 + 96);
  LOBYTE(v147) = *(v3 + 112);
  v141 = sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v38 = v145;
  v39 = v143;
  v40 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
  if (v38 == 1)
  {
    dispatch thunk of UIPromptBackgroundView.configuration.getter();

    v41 = v130;
    static UIPromptBackgroundView.Configuration.intelligent.getter();
    sub_1001208D0(&unk_100262900, &type metadata accessor for UIPromptBackgroundView.Configuration, &protocol conformance descriptor for UIPromptBackgroundView.Configuration);
    v42 = v132;
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    v44 = *(v131 + 8);
    v44(v41, v42);
    v44(v22, v42);
    if ((v43 & 1) == 0)
    {
      v45 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
      static UIPromptBackgroundView.Configuration.intelligent.getter();
      dispatch thunk of UIPromptBackgroundView.configuration.setter();

      v46 = [objc_opt_self() currentDevice];
      v47 = [v46 userInterfaceIdiom];

      if (v47 != 6)
      {
        v48 = String._bridgeToObjectiveC()();
        v49 = objc_opt_self();
        v50 = [v49 systemImageNamed:v48];

        v51 = IntelligenceUI.PromptEntryView.leadingButton.getter();
        v52 = [objc_opt_self() tintColor];
        v53 = v139;
        static UIButton.Configuration.borderless()();
        v54 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
        UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
        v138 = v50;
        UIButton.Configuration.image.setter();
        UIButton.Configuration.baseForegroundColor.setter();
        v55 = type metadata accessor for UIButton.Configuration();
        (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
        UIButton.configuration.setter();

        v56 = IntelligenceUI.PromptEntryView.leadingButton.getter();
        [v56 setNeedsUpdateConfiguration];

        v57 = IntelligenceUI.PromptEntryView.leadingButton.getter();
        [v57 setUserInteractionEnabled:1];

        v58 = IntelligenceUI.PromptEntryView.leadingButton.getter();
        [v58 setShowsMenuAsPrimaryAction:1];

        v139 = IntelligenceUI.PromptEntryView.leadingButton.getter();
        sub_1000081B0(0, &qword_10025F890, UIAction_ptr);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v59 = String._bridgeToObjectiveC()();
        v60 = [v49 systemImageNamed:v59];
        v140 = v29;

        v61 = swift_allocObject();
        v62 = v35[7];
        v61[7] = v35[6];
        v61[8] = v62;
        *(v61 + 137) = *(v35 + 121);
        v63 = v35[3];
        v61[3] = v35[2];
        v61[4] = v63;
        v64 = v35[5];
        v61[5] = v35[4];
        v61[6] = v64;
        v65 = v35[1];
        v61[1] = *v35;
        v61[2] = v65;
        sub_100120DA4(v35, &v146);
        v66 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v67 = String._bridgeToObjectiveC()();
        v68 = [v49 systemImageNamed:v67];

        v69 = swift_allocObject();
        v70 = v35[7];
        v69[7] = v35[6];
        v69[8] = v70;
        *(v69 + 137) = *(v35 + 121);
        v71 = v35[3];
        v69[3] = v35[2];
        v69[4] = v71;
        v72 = v35[5];
        v69[5] = v35[4];
        v69[6] = v72;
        v73 = v35[1];
        v69[1] = *v35;
        v69[2] = v73;
        sub_100120DA4(v35, &v146);
        v74 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        sub_1000081B0(0, &qword_100262910, UIMenu_ptr);
        sub_10000341C(&qword_10025F470, &qword_1001D1020);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1001D4820;
        *(v75 + 32) = v66;
        *(v75 + 40) = v74;
        v126 = v75;
        v76._countAndFlagsBits = 0;
        v76._object = 0xE000000000000000;
        v153.value.super.isa = 0;
        v153.is_nil = 0;
        isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v76, 0, v153, 0, 0xFFFFFFFFFFFFFFFFLL, v126, v127).super.super.isa;
        v78 = v139;
        [v139 setMenu:isa];
      }
    }

    v79 = sub_1001154D0();
    swift_getKeyPath();
    *&v146 = v79;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v80 = *(v79 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

    swift_getKeyPath();
    *&v146 = v80;
    sub_1001208D0(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v81 = *(v80 + 16);

    v82 = *(v81 + 16);

    if (v82)
    {
      v83 = dispatch thunk of IntelligenceUI.PromptEntryView.accessoryView.getter();
      if (!v83)
      {
        v108 = [objc_allocWithZone(type metadata accessor for AttachmentsAccessoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        sub_10000341C(&qword_1002628F8, &qword_1001D9678);
        UIViewRepresentableContext.coordinator.getter();
        v109 = v144;
        v110 = *&v108[OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_collectionView];
        v111 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
        swift_beginAccess();
        v112 = *&v109[v111];
        *&v109[v111] = v110;
        v113 = v110;

        sub_1000A44AC();
        v114 = v108;
        dispatch thunk of IntelligenceUI.PromptEntryView.accessoryView.setter();
        v83 = v114;
      }

      sub_10000341C(&qword_1002628F8, &qword_1001D9678);
      UIViewRepresentableContext.coordinator.getter();
      v115 = v149;
      v116 = sub_1001154D0();
      swift_getKeyPath();
      v144 = v116;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v117 = *(v116 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

      swift_getKeyPath();
      v144 = v117;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v118 = *(v117 + 2);

      sub_1000A48EC(v118);

      v39 = v143;
    }

    else
    {
      v39 = v143;
      dispatch thunk of IntelligenceUI.PromptEntryView.accessoryView.setter();
      sub_10000341C(&qword_1002628F8, &qword_1001D9678);
      UIViewRepresentableContext.coordinator.getter();
      v105 = v144;
      v106 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
      swift_beginAccess();
      v107 = *&v105[v106];
      *&v105[v106] = 0;

      sub_1000A44AC();
    }
  }

  else
  {
    static UIPromptBackgroundView.Configuration.default.getter();
    if (qword_10025A808 != -1)
    {
      swift_once();
    }

    v84 = v135;
    v85 = sub_10000F34C(v135, qword_1002771B8);
    (*(v134 + 16))(v133, v85, v84);
    UIPromptBackgroundView.Configuration.fillStyle.setter();
    UIPromptBackgroundView.Configuration.shadowRadius.setter();
    v86 = objc_opt_self();
    v87 = [v86 clearColor];
    UIPromptBackgroundView.Configuration.shadowColor.setter();
    dispatch thunk of UIPromptBackgroundView.configuration.setter();

    sub_1000081B0(0, &qword_100262510, UIColor_ptr);
    if (qword_10025A7D0 != -1)
    {
      swift_once();
    }

    UIColor.init(_:)();
    v88 = v137;
    IntelligenceUI.PromptEntryView.PlaceholderConfiguration.init(textColor:)();
    v89 = v138;
    (*(v138 + 2))(v136, v88, v140);
    dispatch thunk of IntelligenceUI.PromptEntryView.placeholderConfiguration.setter();
    v90 = sub_100098EC4();
    v91 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    v92 = [v86 labelColor];
    v93 = v139;
    static UIButton.Configuration.borderless()();
    v94 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle2];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v95 = v90;
    UIButton.Configuration.image.setter();
    UIButton.Configuration.baseForegroundColor.setter();
    v96 = type metadata accessor for UIButton.Configuration();
    (*(*(v96 - 8) + 56))(v93, 0, 1, v96);
    UIButton.configuration.setter();

    v97 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    [v97 setNeedsUpdateConfiguration];

    v98 = IntelligenceUI.PromptEntryView.textView.getter();
    [v98 setKeyboardAppearance:13];

    v99 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    [v99 setUserInteractionEnabled:0];

    v100 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    [v100 setShowsMenuAsPrimaryAction:0];

    v101 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    [v101 setMenu:0];

    dispatch thunk of IntelligenceUI.PromptEntryView.accessoryView.setter();
    sub_10000341C(&qword_1002628F8, &qword_1001D9678);
    UIViewRepresentableContext.coordinator.getter();
    v102 = v145;
    v103 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
    swift_beginAccess();
    v104 = *&v102[v103];
    *&v102[v103] = 0;

    sub_1000A44AC();
    (v89)[1](v88, v140);
  }

  v149 = v151;
  v150 = v152;
  FocusState.Binding.wrappedValue.getter();
  if (v148 == 1)
  {
    v119 = IntelligenceUI.PromptEntryView.textView.getter();
    v120 = [v119 isFirstResponder];

    if ((v120 & 1) == 0)
    {
      v121 = type metadata accessor for TaskPriority();
      v122 = v129;
      (*(*(v121 - 8) + 56))(v129, 1, 1, v121);
      type metadata accessor for MainActor();
      v123 = v39;
      v124 = static MainActor.shared.getter();
      v125 = swift_allocObject();
      v125[2] = v124;
      v125[3] = &protocol witness table for MainActor;
      v125[4] = v123;
      sub_10015CFDC(0, 0, v122, &unk_1001D9688, v125);
    }
  }
}

uint64_t sub_100116BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100116C44, v6, v5);
}

uint64_t sub_100116C44(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);

  v4 = IntelligenceUI.PromptEntryView.textView.getter();
  v5 = [v4 becomeFirstResponder];

  *v3 = v5;
  v6 = *(v2 + 8);

  return v6();
}

id sub_100116CD0()
{
  type metadata accessor for IntelligenceUI.PromptEntryView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = *(v0 + 136);
  v3 = [objc_opt_self() mainBundle];
  if (v2)
  {
    v17 = 0x80000001001E71A0;
    v4 = 0x7720656E69666552;
    v5 = 0xEE00402520687469;
    v6.super.isa = v3;
    v7 = 0;
    v8 = 0xE000000000000000;
    v9 = 0xD000000000000030;
  }

  else
  {
    v17 = 0x80000001001E7160;
    v4 = 0x2065736F706D6F43;
    v5 = 0xEF40252068746977;
    v9 = 0xD000000000000031;
    v6.super.isa = v3;
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v6, *&v7, *&v9);

  sub_10000341C(&qword_10025BA50, &qword_1001D0860);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001CF9D0;
  sub_1001154D0();

  v11 = sub_1000971C0();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10002D7B0();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  static String.localizedStringWithFormat(_:_:)();

  dispatch thunk of IntelligenceUI.PromptEntryView.placeholder.setter();
  v14 = IntelligenceUI.PromptEntryView.textView.getter();
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.getter();
  v15 = String._bridgeToObjectiveC()();

  [v14 setText:v15];

  dispatch thunk of IntelligenceUI.PromptEntryView.isLeadingButtonVisible.setter();
  dispatch thunk of IntelligenceUI.PromptEntryView.isLeadingButtonConfiguredAsToggle.setter();
  dispatch thunk of IntelligenceUI.PromptEntryView.trailingButtonActivatesDictationWhenEmpty.setter();
  sub_10000341C(&qword_100262918, &qword_1001E07D0);
  sub_100007120(&qword_100262920, &qword_100262918, &qword_1001E07D0, &protocol conformance descriptor for ClosedRange<A>);
  dispatch thunk of IntelligenceUI.PromptEntryView.visibleLineLimit.setter();
  sub_10000341C(&qword_1002628F8, &qword_1001D9678);
  UIViewRepresentableContext.coordinator.getter();
  sub_1001208D0(&qword_100262928, type metadata accessor for PromptEntryViewCoordinator, &unk_1001D5020);
  dispatch thunk of IntelligenceUI.PromptEntryView.delegate.setter();
  return v1;
}

id sub_100117058@<X0>(void *a1@<X8>)
{
  result = sub_1001156F8();
  *a1 = result;
  return result;
}

double sub_1001170B4(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits:{*&a1, v6}];
  return result;
}

uint64_t sub_100117100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100121050();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100117164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100121050();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001171C8(uint64_t a1)
{
  sub_100121050();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id sub_1001171F0()
{
  v0 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 addSubview:v1];
  v2 = [v0 keyboardLayoutGuide];
  [v2 useLightEffectsBackgroundBelowView:v1];

  return v0;
}

uint64_t sub_1001172B0(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x4024000000000000;
  }

  return result;
}

uint64_t sub_1001172CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001247F4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100117330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001247F4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100117394(uint64_t a1)
{
  sub_1001247F4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1001173BC@<X0>(uint64_t a1@<X2>, char a2@<W3>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v14;
  }

  swift_getKeyPath();
  v14 = a1;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy);

  *a3 = v11;
  return result;
}

uint64_t sub_100117588(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;

  v13 = a4;
  if ((a5 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v13 = v22[0];
  }

  v20 = v9;
  if (v12 == *(v13 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy))
  {
    *(v13 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) = v12;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v19 = &v19;
    __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v13;
    *(&v19 - 8) = v12;
    v22[0] = v13;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if ((a5 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v20 + 8))(v11, v8);
    a4 = v22[0];
  }

  swift_getKeyPath();
  v22[0] = a4;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(a4 + v17, v22, &unk_10025B1C0, &unk_1001CFA90);

  if (!v22[3])
  {
    return sub_10000F500(v22, &unk_10025B1C0, &unk_1001CFA90);
  }

  sub_100028458(v22, v21);
  sub_10000F500(v22, &unk_10025B1C0, &unk_1001CFA90);
  sub_100027874(v21, v21[3]);
  sub_100009FE8(v12);
  return sub_10000F4B4(v21);
}

uint64_t sub_100117994(uint64_t a1, char a2)
{
  type metadata accessor for MainActor();

  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  *(v5 + 32) = a1;
  a2 &= 1u;
  *(v5 + 40) = a2;

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  Binding.init(get:set:)();
  sub_10000341C(&unk_100263100, &unk_1001DA408);
  sub_100095BB8();
  sub_100125080();
  return Picker.init(selection:label:content:)();
}

uint64_t sub_100117B18(uint64_t a1, char a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;

  sub_10000341C(&qword_10025F328, qword_1001D3E10);
  sub_100007120(&qword_100263120, &qword_10025F328, qword_1001D3E10, &protocol conformance descriptor for [A]);
  sub_100095BB8();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100117C38(int a1, char a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v67) = a5;
  v9 = type metadata accessor for EnvironmentValues();
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v62 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v12 = __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v12);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  LODWORD(v68) = a1;
  LODWORD(v65) = a3;
  v14 = a1 & 1;
  if (a2)
  {
    v15._countAndFlagsBits = sub_100070A94(v14);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v15);

    v16._countAndFlagsBits = 0x209480E220;
    v16._object = 0xA500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
    LocalizedStringKey.init(stringInterpolation:)();
    v17 = Text.init(_:tableName:bundle:comment:)();
    v19 = v18;
    v21 = v20;
    if (a3)
    {
      static Font.Weight.semibold.getter();
    }

    v22 = Text.fontWeight(_:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = v21 & 1;
    v30 = v17;
    v31 = v19;
  }

  else
  {
    v32._countAndFlagsBits = sub_100070964(v14);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v32);

    v33._countAndFlagsBits = 0x209480E220;
    v33._object = 0xA500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
    LocalizedStringKey.init(stringInterpolation:)();
    v34 = Text.init(_:tableName:bundle:comment:)();
    v36 = v35;
    v38 = v37;
    if (a3)
    {
      static Font.Weight.semibold.getter();
    }

    v22 = Text.fontWeight(_:)();
    v24 = v39;
    v26 = v40;
    v28 = v41;
    v29 = v38 & 1;
    v30 = v34;
    v31 = v36;
  }

  sub_10002A984(v30, v31, v29);

  sub_100007D98(v22, v24, v26 & 1);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);

  if ((v67 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v44 = v62;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v63 + 8))(v44, v64);
    a4 = v69;
  }

  v66 = v24;
  v67 = v28;
  if (v68)
  {
    swift_getKeyPath();
    v69 = a4;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v45 = &OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount;
  }

  else
  {
    swift_getKeyPath();
    v69 = a4;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v45 = &OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount;
  }

  v46 = v22;
  v47 = *(a4 + *v45);

  v69 = v47;
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v48._countAndFlagsBits = 0x7364726F5720;
  v48._object = 0xE600000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
  LocalizedStringKey.init(stringInterpolation:)();
  v49 = Text.init(_:tableName:bundle:comment:)();
  v51 = v50;
  v53 = v52;
  if (v65)
  {
    static Font.Weight.light.getter();
  }

  v54 = Text.fontWeight(_:)();
  v56 = v55;
  v58 = v57;
  sub_10002A984(v49, v51, v53 & 1);

  v59 = v66;
  v68 = static Text.+ infix(_:_:)();
  v65 = v60;
  sub_10002A984(v46, v59, v26 & 1);

  sub_10002A984(v54, v56, v58 & 1);

  sub_10002A984(v46, v59, v26 & 1);

  return v68;
}

double sub_100118254@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v36[-v7 - 8];
  v9 = static VerticalAlignment.center.getter();
  v38 = 1;
  sub_1001184A0(a1, a2 & 1, v39);
  *&v36[7] = v39[0];
  *&v36[23] = v39[1];
  *&v36[39] = v39[2];
  *&v36[55] = v39[3];
  v10 = v38;
  v11 = type metadata accessor for Font.Design();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = static Font.system(size:weight:design:)();
  sub_10000F500(v8, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v14 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v37 = 0;
  LOBYTE(a1) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v38 = 0;
  sub_10000341C(&qword_100263088, &qword_1001DA3A8);
  TintShapeStyle.init()();
  v31 = *v36;
  *(a3 + 33) = *&v36[16];
  result = *&v36[32];
  v33 = *&v36[48];
  *(a3 + 49) = *&v36[32];
  *(a3 + 65) = v33;
  *a3 = v9;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  v34 = *&v36[63];
  *(a3 + 17) = v31;
  *(a3 + 80) = v34;
  *(a3 + 88) = KeyPath;
  *(a3 + 96) = v12;
  *(a3 + 104) = v14;
  *(a3 + 112) = v16;
  *(a3 + 120) = v18;
  *(a3 + 128) = v20;
  *(a3 + 136) = v22;
  *(a3 + 144) = 0;
  *(a3 + 152) = a1;
  *(a3 + 160) = v24;
  *(a3 + 168) = v26;
  *(a3 + 176) = v28;
  *(a3 + 184) = v30;
  *(a3 + 192) = 0;
  return result;
}

uint64_t sub_1001184A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39 = a1;

    v10 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v39;
  }

  swift_getKeyPath();
  v37 = v10;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy);

  v34 = sub_100117C38(v12, 1, 1, a1, a2 & 1);
  v35 = v13;
  v15 = v14;
  HIDWORD(v33) = v16;
  Image.init(systemName:)();
  v17 = Text.init(_:)();
  v19 = v18;
  v21 = v20;
  static Font.Weight.semibold.getter();
  v22 = Text.fontWeight(_:)();
  v24 = v23;
  LOBYTE(v12) = v25;
  v27 = v26;
  sub_10002A984(v17, v19, v21 & 1);

  v28 = BYTE4(v33) & 1;
  v36 = BYTE4(v33) & 1;
  LOBYTE(v37) = BYTE4(v33) & 1;
  LOBYTE(v12) = v12 & 1;
  v38 = v12;
  v29 = v34;
  v30 = v35;
  *a3 = v34;
  *(a3 + 8) = v15;
  *(a3 + 16) = v28;
  *(a3 + 24) = v30;
  *(a3 + 32) = v22;
  *(a3 + 40) = v24;
  *(a3 + 48) = v12;
  *(a3 + 56) = v27;
  v31 = v29;
  sub_100007D98(v29, v15, v28);

  sub_100007D98(v22, v24, v12);

  sub_10002A984(v22, v24, v12);

  sub_10002A984(v31, v15, v36);
}

uint64_t sub_1001187B0()
{
  v1 = sub_10000341C(&qword_100263080, &qword_1001DA3A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = *(v0 + 8);
  v10 = *v0;
  v11 = v5;
  v8 = v10;
  v9 = v5;
  sub_10000341C(&qword_100263088, &qword_1001DA3A8);
  sub_10000341C(&qword_100263090, &qword_1001DA3B0);
  sub_100124D00();
  sub_100007120(&qword_1002630E0, &qword_100263090, &qword_1001DA3B0, &protocol conformance descriptor for Picker<A, B, C>);
  Menu.init(content:label:)();
  sub_100007120(&qword_1002630E8, &qword_100263080, &qword_1001DA3A0, &protocol conformance descriptor for Menu<A, B>);
  sub_100124FB4();
  View.buttonStyle<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1001189B0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v10, &qword_100263038, &qword_1001DA228);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100118B0C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 24);
  v5 = *(v0 + 16);
  v10 = v5;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v10, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100118C68@<X0>(uint64_t a2@<X8>)
{
  ButtonStyleConfiguration.label.getter();
  v3 = a2 + *(sub_10000341C(&qword_100263138, &qword_1001DA488) + 36);
  v4 = enum case for RoundedCornerStyle.continuous(_:);
  v5 = type metadata accessor for RoundedCornerStyle();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  if (qword_10025A7B8 != -1)
  {
    swift_once();
  }

  v6 = qword_100277168;
  v7 = sub_10000341C(&qword_100263140, &qword_1001DA490);
  *(v3 + *(v7 + 52)) = v6;
  *(v3 + *(v7 + 56)) = 256;

  v8 = static Alignment.center.getter();
  v10 = v9;
  result = sub_10000341C(&qword_100263148, &qword_1001DA498);
  v12 = (v3 + *(result + 36));
  *v12 = v8;
  v12[1] = v10;
  return result;
}

uint64_t sub_100118D90()
{
  v1 = v0;
  v2 = sub_10000341C(&qword_100262E70, &qword_1001DA040);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_10000341C(&qword_100262E78, &qword_1001DA048);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  v8 = sub_10000341C(&qword_100262E80, &qword_1001DA050);
  sub_1001190DC(v0, &v4[*(v8 + 44)]);
  v9 = sub_100118B0C();
  swift_getKeyPath();
  *&v21 = v9;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v10 == 1 || (v11 = sub_100118B0C(), swift_getKeyPath(), *&v21 = v11, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v12 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled), , v13 = 1.0, (v12 & 1) == 0))
  {
    v13 = 0.3;
  }

  sub_10002A894(v4, v7, &qword_100262E70, &qword_1001DA040);
  *&v7[*(v5 + 36)] = v13;
  v21 = *(v1 + 64);
  v22 = *(v1 + 80);
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v14 = swift_allocObject();
  v15 = *(v1 + 144);
  v14[9] = *(v1 + 128);
  v14[10] = v15;
  v14[11] = *(v1 + 160);
  v16 = *(v1 + 80);
  v14[5] = *(v1 + 64);
  v14[6] = v16;
  v17 = *(v1 + 112);
  v14[7] = *(v1 + 96);
  v14[8] = v17;
  v18 = *(v1 + 16);
  v14[1] = *v1;
  v14[2] = v18;
  v19 = *(v1 + 48);
  v14[3] = *(v1 + 32);
  v14[4] = v19;
  sub_100123698(v1, &v21);
  sub_100123DD0();
  View.onChange<A>(of:initial:_:)();

  return sub_10000F500(v7, &qword_100262E78, &qword_1001DA048);
}

uint64_t sub_1001190DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100262E98, &qword_1001DA058);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  if (v18[15] == 1 && (v10 = sub_100118B0C(), swift_getKeyPath(), *&v19 = v10, sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v11 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount), , v11 >= 1) && (*(a1 + 104) & 1) == 0)
  {
    type metadata accessor for CompositionModel(0);
    v12 = Environment.init<A>(_:)();
    v13 = v17 & 1;
  }

  else
  {
    v12 = 0;
    v13 = 255;
  }

  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = sub_10000341C(&qword_100262EA0, &qword_1001DA060);
  sub_100119368(a1, &v9[*(v14 + 44)]);
  sub_1000081F8(v9, v7, &qword_100262E98, &qword_1001DA058);
  *a2 = v12;
  *(a2 + 8) = v13;
  v15 = sub_10000341C(&qword_100262EA8, &qword_1001DA068);
  sub_1000081F8(v7, a2 + *(v15 + 48), &qword_100262E98, &qword_1001DA058);
  sub_1001234A0(v12, v13);
  sub_100123678(v12, v13);
  sub_10000F500(v9, &qword_100262E98, &qword_1001DA058);
  sub_10000F500(v7, &qword_100262E98, &qword_1001DA058);
  return sub_100123678(v12, v13);
}

uint64_t sub_100119368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_10000341C(&unk_100262EB0, &qword_1001DA098);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v9 = sub_10000341C(&qword_1002600B0, &qword_1001DA0A0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = sub_10000341C(&qword_100262EC0, &qword_1001DA0A8);
  v44 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = sub_10000341C(&qword_100262EC8, &qword_1001DA0B0);
  v20 = __chkstk_darwin(v19 - 8);
  v43 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v39 - v22;
  if (*(a1 + 81))
  {
    *v18 = static HorizontalAlignment.center.getter();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v41 = &v18[*(sub_10000341C(&unk_100262EE0, &qword_1001DA0C8) + 44)];
    v24 = swift_allocObject();
    v42 = v6;
    v25 = *(a1 + 144);
    v24[9] = *(a1 + 128);
    v24[10] = v25;
    v24[11] = *(a1 + 160);
    v26 = *(a1 + 80);
    v24[5] = *(a1 + 64);
    v24[6] = v26;
    v27 = *(a1 + 112);
    v24[7] = *(a1 + 96);
    v24[8] = v27;
    v28 = *(a1 + 16);
    v24[1] = *a1;
    v24[2] = v28;
    v29 = *(a1 + 48);
    v24[3] = *(a1 + 32);
    v24[4] = v29;
    sub_100123698(a1, v46);
    sub_10000341C(&qword_1002600B8, &qword_1001D56E0);
    v40 = v16;
    sub_1000AF918();
    Button.init(action:label:)();
    v30 = *(v10 + 16);
    v30(v13, v15, v9);
    v31 = v41;
    *v41 = 0;
    v31[8] = 1;
    v39 = v18;
    v32 = &v31[*(sub_10000341C(&qword_100262F48, &qword_1001DA0D0) + 48)];
    v30(v32, v13, v9);
    v6 = v42;
    v33 = *(v10 + 8);
    v33(v15, v9);
    v33(v13, v9);
    sub_10002A894(v39, v23, &qword_100262EC0, &qword_1001DA0A8);
    (*(v44 + 56))(v23, 0, 1, v40);
  }

  else
  {
    (*(v44 + 56))(&v39 - v22, 1, 1, v16);
  }

  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v34 = sub_10000341C(&qword_100262ED0, &qword_1001DA0B8);
  sub_100119D78(a1, &v8[*(v34 + 44)]);
  v35 = v43;
  sub_1000081F8(v23, v43, &qword_100262EC8, &qword_1001DA0B0);
  sub_1000081F8(v8, v6, &unk_100262EB0, &qword_1001DA098);
  v36 = v45;
  sub_1000081F8(v35, v45, &qword_100262EC8, &qword_1001DA0B0);
  v37 = sub_10000341C(&qword_100262ED8, &qword_1001DA0C0);
  sub_1000081F8(v6, v36 + *(v37 + 48), &unk_100262EB0, &qword_1001DA098);
  sub_10000F500(v8, &unk_100262EB0, &qword_1001DA098);
  sub_10000F500(v23, &qword_100262EC8, &qword_1001DA0B0);
  sub_10000F500(v6, &unk_100262EB0, &qword_1001DA098);
  return sub_10000F500(v35, &qword_100262EC8, &qword_1001DA0B0);
}

uint64_t sub_1001198F4(uint64_t a1)
{
  v2 = sub_100118B0C();
  swift_getKeyPath();
  *&v15 = v2;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1001734FC();

  v3 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v3;
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.setter();
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a1 + 80);
  v18 = v5;
  *&v15 = v5;
  *(&v15 + 1) = v4;
  LOBYTE(v16) = v6;
  sub_100063D8C(&v18, &v10);

  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  if (v10 == 1)
  {
    *&v15 = v5;
    *(&v15 + 1) = v4;
    LOBYTE(v16) = v6;
    FocusState.Binding.wrappedValue.getter();
    v10 = v5;
    v11 = v4;
    v12 = v6;
    v17 = (v14[0] & 1) == 0;
    FocusState.Binding.wrappedValue.setter();
    sub_100063DE8(&v18);

    v7 = sub_100118B0C();
    swift_getKeyPath();
    v10 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v7 + v8, &v15, &unk_10025B1C0, &unk_1001CFA90);

    if (*(&v16 + 1))
    {
      sub_100028458(&v15, &v10);
      sub_10000F500(&v15, &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874(&v10, v13);
      if (qword_10025A608 != -1)
      {
        swift_once();
      }

      sub_100009C54(qword_100276E18);
      return sub_10000F4B4(&v10);
    }

    else
    {
      return sub_10000F500(&v15, &unk_10025B1C0, &unk_1001CFA90);
    }
  }

  else
  {
    sub_100063DE8(&v18);
  }
}

uint64_t sub_100119BF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  sub_10000341C(&unk_100262F20, &qword_1001D56F8);
  TintShapeStyle.init()();
  *a1 = v2;
  v3 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(sub_10000341C(&unk_100262F10, &qword_1001D56F0) + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  LOBYTE(v3) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(sub_10000341C(&unk_100262F00, &qword_1001D56E8) + 36);
  *v14 = v3;
  *(v14 + 1) = v7;
  *(v14 + 2) = v9;
  *(v14 + 3) = v11;
  *(v14 + 4) = v13;
  v14[40] = 0;
  if (qword_10025A7B8 != -1)
  {
    swift_once();
  }

  v15 = qword_100277168;
  v16 = static Alignment.center.getter();
  v18 = v17;
  v19 = a1 + *(sub_10000341C(&qword_1002600B8, &qword_1001D56E0) + 36);
  *v19 = v15;
  *(v19 + 4) = 256;
  *(v19 + 2) = v16;
  *(v19 + 3) = v18;
}

uint64_t sub_100119D78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v108 = a2;
  v3 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy();
  v99 = *(v3 - 8);
  v100 = v3;
  __chkstk_darwin(v3);
  v98 = &v75[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PhotosPickerSelectionBehavior();
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v94 = &v75[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10000341C(&qword_100262F50, &qword_1001DA0D8);
  __chkstk_darwin(v7 - 8);
  v111 = &v75[-v8];
  v9 = sub_10000341C(&qword_100262F58, &qword_1001DA0E0);
  v10 = *(v9 - 8);
  v89 = v9;
  v90 = v10;
  __chkstk_darwin(v9);
  v88 = &v75[-v11];
  v12 = sub_10000341C(&qword_100262F60, &qword_1001DA0E8);
  v91 = *(v12 - 8);
  v92 = v12;
  __chkstk_darwin(v12);
  v109 = &v75[-v13];
  v112 = sub_10000341C(&qword_100262F68, &qword_1001DA0F0);
  v93 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v75[-v14];
  v101 = sub_10000341C(&qword_100262F70, &qword_1001DA0F8);
  v95 = *(v101 - 8);
  __chkstk_darwin(v101);
  v113 = &v75[-v15];
  v16 = sub_10000341C(&qword_100262F78, &qword_1001DA100);
  v104 = *(v16 - 8);
  v105 = v16;
  __chkstk_darwin(v16);
  v114 = &v75[-v17];
  v18 = sub_10000341C(&unk_100262F80, &unk_1001DA108);
  v106 = *(v18 - 8);
  v107 = v18;
  v19 = __chkstk_darwin(v18);
  v103 = &v75[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v102 = &v75[-v21];
  v22 = *(a1 + 48);
  v117 = *(a1 + 32);
  v118 = v22;
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.projectedValue.getter();
  v87 = v134;
  v85 = *(&v135 + 1);
  v86 = v135;
  v132 = *(a1 + 112);
  v134 = *(a1 + 112);
  v115 = sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v83 = *(&v117 + 1);
  v84 = v117;
  v82 = v118;
  v131 = *(a1 + 128);
  v134 = *(a1 + 128);
  State.projectedValue.getter();
  v80 = *(&v117 + 1);
  v81 = v117;
  v79 = v118;
  v129 = *(a1 + 64);
  v130 = *(a1 + 80);
  v117 = *(a1 + 64);
  LOBYTE(v118) = *(a1 + 80);
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.projectedValue.getter();
  v23 = v134;
  v78 = v135;
  v24 = *(a1 + 96);
  v77 = *(a1 + 88);
  v76 = *(a1 + 104);
  type metadata accessor for CompositionModel(0);
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);

  v25 = Environment.init<A>(_:)();
  v133 = v26 & 1;
  v27 = sub_1001189B0();
  swift_getKeyPath();
  *&v117 = v27;
  sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v27 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable);

  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = (v28 & 1) == 0;
  *&v117 = v25;
  BYTE8(v117) = v133;
  v118 = v87;
  *&v119 = v86;
  *(&v119 + 1) = v85;
  *&v120 = v84;
  *(&v120 + 1) = v83;
  LOBYTE(v121) = v82;
  *(&v121 + 1) = v81;
  *&v122 = v80;
  BYTE8(v122) = v79;
  v123 = v23;
  LOBYTE(v124) = v78;
  *(&v124 + 1) = v77;
  *&v125 = v24;
  BYTE8(v125) = v76;
  *&v126 = KeyPath;
  *(&v126 + 1) = sub_10012544C;
  v127 = v30;
  v134 = v129;
  LOBYTE(v135) = v130;
  FocusState.Binding.projectedValue.getter();
  v31 = sub_10000341C(&qword_100262F90, &qword_1001DA118);
  v32 = sub_100123E98();
  v33 = v88;
  View.focused(_:)();

  v142 = v125;
  v143 = v126;
  v144 = v127;
  v138 = v121;
  v139 = v122;
  v140 = v123;
  v141 = v124;
  v134 = v117;
  v135 = v118;
  v136 = v119;
  v137 = v120;
  sub_10000F500(&v134, &qword_100262F90, &qword_1001DA118);
  v34 = type metadata accessor for IntelligenceUI.PromptEntryView();
  *&v117 = v31;
  *(&v117 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v89;
  View.representablePreferredFocusableView<A>(_:resolver:)();
  (*(v90 + 8))(v33, v36);
  v128 = v132;
  State.projectedValue.getter();
  if (qword_10025A758 != -1)
  {
    swift_once();
  }

  v37 = swift_allocObject();
  v38 = *(a1 + 144);
  v37[9] = *(a1 + 128);
  v37[10] = v38;
  v37[11] = *(a1 + 160);
  v39 = *(a1 + 80);
  v37[5] = *(a1 + 64);
  v37[6] = v39;
  v40 = *(a1 + 112);
  v37[7] = *(a1 + 96);
  v37[8] = v40;
  v41 = *(a1 + 16);
  v37[1] = *a1;
  v37[2] = v41;
  v42 = *(a1 + 48);
  v37[3] = *(a1 + 32);
  v37[4] = v42;
  sub_100123698(a1, &v117);
  *&v117 = v36;
  *(&v117 + 1) = v34;
  *&v118 = OpaqueTypeConformance2;
  v90 = swift_getOpaqueTypeConformance2();
  v43 = v92;
  v44 = v109;
  View.fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)();

  (*(v91 + 8))(v44, v43);
  v128 = v131;
  State.projectedValue.getter();
  v91 = *(&v117 + 1);
  LODWORD(v89) = v118;
  v128 = *(a1 + 160);
  v116 = *(a1 + 160);
  v109 = sub_10000341C(&qword_100262FA0, &qword_1001DA120);
  State.projectedValue.getter();
  v88 = *(&v117 + 1);
  v45 = v111;
  static PHPickerFilter.images.getter();
  v46 = type metadata accessor for PHPickerFilter();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  *&v87 = [objc_opt_self() sharedPhotoLibrary];
  v47 = v94;
  static PhotosPickerSelectionBehavior.default.getter();
  v48 = v98;
  static PhotosPickerItem.EncodingDisambiguationPolicy.automatic.getter();
  *&v117 = v43;
  *(&v117 + 1) = v90;
  v92 = swift_getOpaqueTypeConformance2();
  v49 = v110;
  View.photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)();

  (*(v99 + 8))(v48, v100);
  (*(v96 + 8))(v47, v97);
  sub_10000F500(v111, &qword_100262F50, &qword_1001DA0D8);
  v50 = v112;
  (*(v93 + 8))(v49, v112);
  v117 = v128;
  State.wrappedValue.getter();
  v51 = swift_allocObject();
  v52 = *(a1 + 144);
  v51[9] = *(a1 + 128);
  v51[10] = v52;
  v51[11] = *(a1 + 160);
  v53 = *(a1 + 80);
  v51[5] = *(a1 + 64);
  v51[6] = v53;
  v54 = *(a1 + 112);
  v51[7] = *(a1 + 96);
  v51[8] = v54;
  v55 = *(a1 + 16);
  v51[1] = *a1;
  v51[2] = v55;
  v56 = *(a1 + 48);
  v51[3] = *(a1 + 32);
  v51[4] = v56;
  sub_100123698(a1, &v117);
  v110 = sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  *&v117 = v50;
  *(&v117 + 1) = v92;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = sub_100123FFC();
  v59 = v101;
  v60 = v113;
  View.onChange<A>(of:initial:_:)();

  (*(v95 + 8))(v60, v59);
  v61 = LocalizedStringKey.init(stringLiteral:)();
  v112 = v62;
  v113 = v61;
  LODWORD(v111) = v63;
  v116 = *(a1 + 144);
  State.projectedValue.getter();
  LODWORD(v115) = v118;
  sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  *&v117 = v59;
  *(&v117 + 1) = v110;
  *&v118 = v57;
  *(&v118 + 1) = v58;
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  v64 = v105;
  v65 = v102;
  v66 = v114;
  View.alert<A>(_:isPresented:actions:)();

  (*(v104 + 8))(v66, v64);
  v68 = v106;
  v67 = v107;
  v69 = *(v106 + 16);
  v70 = v103;
  v69(v103, v65, v107);
  v71 = v108;
  *v108 = 0;
  *(v71 + 8) = 1;
  v72 = sub_10000341C(&qword_100262FB8, &qword_1001DA128);
  v69(v71 + *(v72 + 48), v70, v67);
  v73 = *(v68 + 8);
  v73(v65, v67);
  return (v73)(v70, v67);
}

uint64_t sub_10011ACC4(uint64_t a1, char a2, _OWORD *a3)
{
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  if (a2)
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F34C(v9, qword_100276EF0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    sub_100124674(a1, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to add file attachment: %@", v12, 0xCu);
      sub_10000F500(v13, &unk_10025D580, &qword_1001CFA60);
    }

    v24[0] = a3[9];
    v25 = 1;
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    return State.wrappedValue.setter();
  }

  else
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    type metadata accessor for MainActor();
    sub_100124680(a1, 0);
    sub_100123698(a3, v24);
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    v19 = a3[9];
    *(v18 + 160) = a3[8];
    *(v18 + 176) = v19;
    *(v18 + 192) = a3[10];
    v20 = a3[5];
    *(v18 + 96) = a3[4];
    *(v18 + 112) = v20;
    v21 = a3[7];
    *(v18 + 128) = a3[6];
    *(v18 + 144) = v21;
    v22 = a3[1];
    *(v18 + 32) = *a3;
    *(v18 + 48) = v22;
    v23 = a3[3];
    *(v18 + 64) = a3[2];
    *(v18 + 80) = v23;
    *(v18 + 208) = a1;
    sub_10015D2D4(0, 0, v8, &unk_1001DA220, v18);
  }
}

uint64_t sub_10011AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10011B03C, v7, v6);
}

uint64_t sub_10011B03C()
{
  v1 = sub_100118B0C();
  swift_getKeyPath();
  v0[2] = v1;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[9] = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10011B17C;
  v3 = v0[5];

  return sub_100174A44(v3, 0, 0);
}

uint64_t sub_10011B17C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_10011B2C8, v4, v3);
}

uint64_t sub_10011B2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2[11];
  v4 = v2[3];

  *v4 = v3;
  v5 = v2[1];

  return v5();
}

uint64_t sub_10011B334(uint64_t a1)
{
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = *(a1 + 160);
  v6 = *(a1 + 168);
  v22 = v6;
  v23 = v5;
  v19 = v5;
  v20 = v6;
  sub_1000081F8(&v23, &v21, &qword_10025E2D0, &qword_1001D56C0);
  sub_1000081F8(&v22, &v21, &qword_100262FC8, &qword_1001DA138);
  sub_10000341C(&qword_100262FA0, &qword_1001DA120);
  State.wrappedValue.getter();
  v7 = v21[2];

  if (v7)
  {
    v19 = v5;
    v20 = v6;
    State.wrappedValue.getter();
    v8 = v21;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    type metadata accessor for MainActor();
    sub_100123698(a1, &v19);
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    v12 = *(a1 + 144);
    *(v11 + 160) = *(a1 + 128);
    *(v11 + 176) = v12;
    *(v11 + 192) = *(a1 + 160);
    v13 = *(a1 + 80);
    *(v11 + 96) = *(a1 + 64);
    *(v11 + 112) = v13;
    v14 = *(a1 + 112);
    *(v11 + 128) = *(a1 + 96);
    *(v11 + 144) = v14;
    v15 = *(a1 + 16);
    *(v11 + 32) = *a1;
    *(v11 + 48) = v15;
    v16 = *(a1 + 48);
    *(v11 + 64) = *(a1 + 32);
    *(v11 + 80) = v16;
    *(v11 + 208) = v8;
    sub_10015C9C8(0, 0, v4, &unk_1001DA148, v11);

    v19 = v5;
    v20 = v6;
    v21 = _swiftEmptyArrayStorage;
    State.wrappedValue.setter();
  }

  sub_10000F500(&v23, &qword_10025E2D0, &qword_1001D56C0);
  return sub_10000F500(&v22, &qword_100262FC8, &qword_1001DA138);
}

uint64_t sub_10011B598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_10011B630, v7, v6);
}

uint64_t sub_10011B630()
{
  v1 = sub_100118B0C();
  swift_getKeyPath();
  v0[2] = v1;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[8] = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1000144C8;
  v3 = v0[4];

  return sub_10011B788(v3, 0, 0);
}

uint64_t sub_10011B788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v5 = sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v6 = type metadata accessor for Attachment(0);
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v7 = type metadata accessor for PhotosPickerItem();
  v4[39] = v7;
  v4[40] = *(v7 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = type metadata accessor for MainActor();
  v4[44] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[45] = v9;
  v4[46] = v8;

  return _swift_task_switch(sub_10011B96C, v9, v8);
}

uint64_t sub_10011B96C()
{
  if (qword_10025A6D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 376) = sub_10000F34C(v1, qword_100276EF0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 216);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "adding photos: %ld", v6, 0xCu);
  }

  else
  {
  }

  v7 = *(v0 + 216);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 320);
    v12 = *(v9 + 16);
    v10 = v9 + 16;
    v11 = v12;
    v13 = *(v10 + 56);
    v14 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v34 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v35 = (v10 + 16);
    v33 = v13;
    do
    {
      v15 = *(v0 + 336);
      v16 = *(v0 + 240);
      v11(v15, v14, *(v0 + 312));
      if (sub_10011D744(v15, v16))
      {
        v17 = *v35;
        (*v35)(*(v0 + 328), *(v0 + 336), *(v0 + 312));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100163D68(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_100163D68((v18 > 1), v19 + 1, 1);
        }

        v20 = *(v0 + 328);
        v21 = *(v0 + 312);
        _swiftEmptyArrayStorage[2] = v19 + 1;
        v22 = _swiftEmptyArrayStorage + v34 + v19 * v33;
        v13 = v33;
        v17(v22, v20, v21);
      }

      else
      {
        (*(v10 - 8))(*(v0 + 336), *(v0 + 312));
      }

      v14 += v13;
      --v8;
    }

    while (v8);
  }

  *(v0 + 384) = 0;
  *(v0 + 392) = _swiftEmptyArrayStorage;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = _swiftEmptyArrayStorage[2];

    _os_log_impl(&_mh_execute_header, v23, v24, "deduped photos: %ld", v25, 0xCu);
  }

  else
  {
  }

  v36 = *(v0 + 224);
  v26 = *(v0 + 216);
  v27 = sub_10000341C(&qword_100262FD8, &qword_1001DA160);
  v28 = static MainActor.shared.getter();
  *(v0 + 400) = v28;
  v29 = swift_task_alloc();
  *(v0 + 408) = v29;
  *(v29 + 16) = _swiftEmptyArrayStorage;
  *(v29 + 24) = v36;
  *(v29 + 40) = v26;
  v30 = sub_10000341C(&qword_100262FE0, &qword_1001DA178);
  v31 = swift_task_alloc();
  *(v0 + 416) = v31;
  *v31 = v0;
  v31[1] = sub_10011BE18;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 168, v27, v30, v28, &protocol witness table for MainActor, &unk_1001DA170, v29, v27);
}

uint64_t sub_10011BE18()
{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return _swift_task_switch(sub_10011BF9C, v3, v2);
}

uint64_t sub_10011BF9C()
{
  v30 = v0;
  v1 = v0[48];
  v29[0] = v0[21];

  sub_10011EF70(v29);
  if (v1)
  {
  }

  else
  {

    v3 = v29[0];
    v4 = *(v29[0] + 16);
    if (v4)
    {
      v5 = v0[32];
      v27 = v0[31];
      v28 = v0[37];
      v29[0] = _swiftEmptyArrayStorage;
      sub_100163CE0(0, v4, 0);
      v6 = v29[0];
      v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v26 = *(v5 + 72);
      do
      {
        v8 = v0[38];
        v10 = v0[34];
        v9 = v0[35];
        v11 = v0[33];
        sub_1000081F8(v7, v9, &qword_100262FD0, &unk_1001D4CC0);
        sub_1000081F8(v9, v10, &qword_100262FD0, &unk_1001D4CC0);
        v12 = *(v27 + 48);
        *v11 = *v10;
        sub_100122020(v10 + v12, v11 + v12, type metadata accessor for Attachment);
        sub_100120918(v11 + v12, v8, type metadata accessor for Attachment);
        sub_10000F500(v11, &qword_100262FD0, &unk_1001D4CC0);
        sub_10000F500(v9, &qword_100262FD0, &unk_1001D4CC0);
        v29[0] = v6;
        v14 = v6[2];
        v13 = v6[3];
        if (v14 >= v13 >> 1)
        {
          sub_100163CE0((v13 > 1), v14 + 1, 1);
          v6 = v29[0];
        }

        v15 = v0[38];
        v6[2] = v14 + 1;
        sub_100122020(v15, v6 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v14, type metadata accessor for Attachment);
        v7 += v26;
        --v4;
      }

      while (v4);
    }

    else
    {

      v6 = _swiftEmptyArrayStorage;
    }

    v0[22] = v6;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v18 = 136642819;

      v20 = Array.description.getter();
      v22 = v21;

      v23 = sub_10002510C(v20, v22, v29);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "deduped photos: %{sensitive}s", v18, 0xCu);
      sub_10000F4B4(v19);
    }

    swift_beginAccess();
    v0[53] = static MainActor.shared.getter();
    v25 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[54] = v25;
    v0[55] = v24;

    return _swift_task_switch(sub_10011C360, v25, v24);
  }
}

uint64_t sub_10011C360()
{
  v1 = sub_10000341C(&qword_100262FE8, &qword_1001DA180);
  v2 = static MainActor.shared.getter();
  v0[56] = v2;
  v3 = swift_task_alloc();
  v0[57] = v3;
  *(v3 + 16) = v0 + 22;
  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_10011C478;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, v1, &type metadata for () + 8, v2, &protocol witness table for MainActor, &unk_1001DA188, v3, v1);
}

uint64_t sub_10011C478()
{
  v1 = *v0;

  v2 = *(v1 + 440);
  v3 = *(v1 + 432);

  return _swift_task_switch(sub_10011C5D8, v3, v2);
}

uint64_t sub_10011C5D8(uint64_t a1, uint64_t a2)
{

  swift_endAccess();
  v3 = *(v2 + 360);
  v4 = *(v2 + 368);

  return _swift_task_switch(sub_10011C644, v3, v4);
}

uint64_t sub_10011C644(uint64_t a1, uint64_t a2)
{
  v3 = v2[30];

  v4 = v2[22];
  swift_getKeyPath();
  v2[23] = v3;
  sub_1001208D0(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2[24] = v3;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10019E53C(v4);
  swift_endAccess();
  v2[25] = v3;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v2[26] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000081F8(v3 + 24, (v2 + 2), &unk_10025B1C0, &unk_1001CFA90);
  if (v2[5])
  {
    v6 = v2[28];
    v5 = v2[29];
    sub_100028458((v2 + 2), (v2 + 7));
    sub_10000F500((v2 + 2), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v2 + 7, v2[10]);
    sub_10000A9C0(*(v4 + 16), 0, 0, 1, 0, 1, 0, 1, v6, v5);
    sub_10000F4B4(v2 + 7);
  }

  else
  {
    sub_10000F500((v2 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v7 = v2[1];

  return v7();
}

uint64_t sub_10011C918()
{
  v0 = sub_10000341C(&qword_100262FC0, &qword_1001DA130);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  LocalizedStringKey.init(stringLiteral:)();
  static ButtonRole.cancel.getter();
  v3 = type metadata accessor for ButtonRole();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return Button<>.init(_:role:action:)();
}

void *sub_10011CA30(uint64_t a1)
{
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  result = FocusState.Binding.wrappedValue.getter();
  if (LOBYTE(v4[0]) == 1)
  {
    v2 = sub_100118B0C();
    swift_getKeyPath();
    v4[0] = v2;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v2 + v3, &v5, &unk_10025B1C0, &unk_1001CFA90);

    if (v7)
    {
      sub_100028458(&v5, v4);
      sub_10000F500(&v5, &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874(v4, v4[3]);
      if (qword_10025A610 != -1)
      {
        swift_once();
      }

      sub_100009C54(qword_100276E20);
      return sub_10000F4B4(v4);
    }

    else
    {
      return sub_10000F500(&v5, &unk_10025B1C0, &unk_1001CFA90);
    }
  }

  return result;
}

id sub_10011CEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttachmentsAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10011CF18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10011CF4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10011CF94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10011D01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10011D100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10011D1EC(uint64_t a1)
{
  sub_100121AC4(319, &qword_10025DE18, type metadata accessor for CompositionModel, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100121AC4(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100121AC4(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_100121A74(319, qword_100262780, &type metadata for Bool, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          sub_100121618(319, &qword_10025B4F0, &type metadata accessor for FocusState);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10011D39C()
{
  result = qword_1002627C8;
  if (!qword_1002627C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002627C8);
  }

  return result;
}

uint64_t sub_10011D468()
{
  v1 = type metadata accessor for CompositionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  if (*(v0 + v4 + 8) != 1)
  {
  }

  v5 = v0 + v4 + *(v1 + 28);

  v6 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10011D5F4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_10011D670()
{
  v2 = *(type metadata accessor for CompositionView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002B2A0;

  return sub_10010A86C(v0 + v3);
}

uint64_t sub_10011D744(uint64_t a1, uint64_t a2)
{
  v19[5] = a1;
  v4 = type metadata accessor for Attachment(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19[1] = a2;
  sub_1001208D0(&qword_10025F460, type metadata accessor for AttachmentManager, &unk_1001DF07C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = *(v8 + 16);

  if (v9)
  {
    v19[0] = v2;
    v11 = 0;
    while (v11 < *(v8 + 16))
    {
      sub_100120918(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, type metadata accessor for Attachment);
      v12 = &v7[*(v4 + 20)];
      v13 = *(v12 + 1);
      if (v13)
      {
        v14 = *v12;
        result = PhotosPickerItem.itemIdentifier.getter();
        if (!v15)
        {
          goto LABEL_20;
        }

        if (v14 == result && v13 == v15)
        {

          sub_100120C94(v7, type metadata accessor for Attachment);
LABEL_17:
          v18 = 0;
          goto LABEL_18;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = sub_100120C94(v7, type metadata accessor for Attachment);
        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_100120C94(v7, type metadata accessor for Attachment);
      }

      if (v9 == ++v11)
      {
        v18 = 1;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v18 = 1;
LABEL_18:

    return v18;
  }

  return result;
}

uint64_t sub_10011D9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  type metadata accessor for Attachment(0);
  v5[18] = swift_task_alloc();
  v5[19] = sub_10000341C(&qword_100262FF0, &qword_1001DA1C0);
  v5[20] = swift_task_alloc();
  sub_10000341C(&qword_100262FF8, &qword_1001DA1C8);
  v5[21] = swift_task_alloc();
  v7 = sub_10000341C(&qword_100263000, &qword_1001DA1D0);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = type metadata accessor for PhotosPickerItem();
  v5[25] = v8;
  v9 = *(v8 - 8);
  v5[26] = v9;
  v5[27] = *(v9 + 64);
  v5[28] = swift_task_alloc();
  sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v10 = sub_10000341C(&qword_100263008, &qword_1001DA1D8);
  v5[31] = v10;
  v5[32] = *(v10 - 8);
  v5[33] = swift_task_alloc();
  sub_10000341C(&unk_100263010, &unk_1001DA1E0);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = type metadata accessor for MainActor();
  v5[37] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[38] = v12;
  v5[39] = v11;

  return _swift_task_switch(sub_10011DD48, v12, v11);
}

uint64_t sub_10011DD48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(v4 + 256);
  v49 = *(v4 + 248);
  v46 = (v6 + 48);
  v47 = (v6 + 56);
  v48 = *(v4 + 208);
  v45 = *(v4 + 216) + 7;
  v7 = *(*(v4 + 88) + 16);
  v8 = &qword_1001D05A0;
  for (i = v7; ; v7 = i)
  {
    if (v5 == v7)
    {
      v10 = 1;
      v11 = v7;
    }

    else
    {
      if (v5 >= v7)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a4);
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_20;
      }

      v12 = *(v4 + 264);
      v13 = *(v4 + 272);
      v14 = *(v4 + 200);
      v15 = *(v4 + 88) + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v5;
      v16 = *(v49 + 48);
      *v12 = v5;
      (*(v48 + 16))(&v12[v16], v15, v14, a4);
      sub_10002A894(v12, v13, &qword_100263008, &qword_1001DA1D8);
      v10 = 0;
      v11 = v5 + 1;
    }

    v17 = *(v4 + 272);
    v18 = *(v4 + 280);
    v19 = *(v4 + 248);
    (*v47)(v17, v10, 1, v19);
    sub_10002A894(v17, v18, &unk_100263010, &unk_1001DA1E0);
    if ((*v46)(v18, 1, v19) == 1)
    {
      break;
    }

    v57 = v11;
    v20 = *(v4 + 280);
    v21 = *(v4 + 240);
    v52 = v21;
    v56 = *(v4 + 232);
    v22 = *(v4 + 224);
    v23 = *(v4 + 200);
    v50 = v23;
    v54 = *(v4 + 96);
    v55 = *(v4 + 104);
    v53 = *v20;
    v24 = *(v49 + 48);
    v25 = type metadata accessor for TaskPriority();
    v51 = *(v25 - 8);
    (*(v51 + 56))(v21, 1, 1, v25);
    v26 = *(v48 + 32);
    v26(v22, v20 + v24, v23);

    v27 = static MainActor.shared.getter();
    v28 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v29 = v8;
    v30 = (v45 + v28) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = v27;
    *(v32 + 24) = &protocol witness table for MainActor;
    v26(v32 + v28, v22, v50);
    *(v32 + v30) = v53;
    v8 = v29;
    v33 = (v32 + v31);
    *v33 = v54;
    v33[1] = v55;
    sub_1000081F8(v52, v56, &unk_10025B5D0, v29);
    LODWORD(v31) = (*(v51 + 48))(v56, 1, v25);

    v34 = *(v4 + 232);
    if (v31 == 1)
    {
      sub_10000F500(*(v4 + 232), &unk_10025B5D0, v29);
      if (*(v32 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v51 + 8))(v34, v25);
      if (*(v32 + 16))
      {
LABEL_11:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v35 = dispatch thunk of Actor.unownedExecutor.getter();
        v37 = v36;
        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

    v35 = 0;
    v37 = 0;
LABEL_14:
    v38 = **(v4 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = &unk_1001DA1F8;
    *(v39 + 24) = v32;
    sub_10000341C(&qword_100262FD8, &qword_1001DA160);
    v40 = v37 | v35;
    if (v37 | v35)
    {
      v40 = v4 + 16;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = v35;
      *(v4 + 40) = v37;
    }

    v5 = v57;
    v9 = *(v4 + 240);
    *(v4 + 48) = 1;
    *(v4 + 56) = v40;
    *(v4 + 64) = v38;
    swift_task_create();

    a1 = sub_10000F500(v9, &unk_10025B5D0, v29);
  }

  *(v4 + 320) = sub_10000341C(&qword_100262FD8, &qword_1001DA160);
  TaskGroup.makeAsyncIterator()();
  *(v4 + 328) = _swiftEmptyArrayStorage;
  v41 = static MainActor.shared.getter();
  *(v4 + 336) = v41;
  v42 = swift_task_alloc();
  *(v4 + 344) = v42;
  *v42 = v4;
  v42[1] = sub_10011E2A4;
  a1 = *(v4 + 168);
  a4 = *(v4 + 176);
  a3 = &protocol witness table for MainActor;
  a2 = v41;

  return TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a4);
}

uint64_t sub_10011E2A4()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return _swift_task_switch(sub_10011E3E8, v3, v2);
}

uint64_t sub_10011E3E8()
{
  v1 = v0[40];
  v2 = v0[21];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v6 = *v2;
    sub_10002A894(v2 + *(v1 + 48), v0[20], &qword_100262FF0, &qword_1001DA1C0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = v0[17];
      v22 = v0[18];
      v24 = v0[15];
      sub_100122020(v0[20], v22, type metadata accessor for Attachment);
      v25 = *(v24 + 48);
      *v23 = v6;
      sub_100120918(v22, v23 + v25, type metadata accessor for Attachment);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v0[41];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_10017E240(0, v27[2] + 1, 1, v0[41]);
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        v27 = sub_10017E240((v28 > 1), v29 + 1, 1, v27);
      }

      v30 = v0[17];
      v31 = v0[16];
      sub_100120C94(v0[18], type metadata accessor for Attachment);
      v27[2] = v29 + 1;
      sub_10002A894(v30, v27 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, &qword_100262FD0, &unk_1001D4CC0);
      v0[41] = v27;
      goto LABEL_21;
    }

    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F34C(v7, qword_100276EF0);

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v0[9] = v12;
      *v10 = 136643075;
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v6 < *(v0[14] + 16))
      {
        v16 = v12;
        v17 = PhotosPickerItem.itemIdentifier.getter();
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v17 = 7104878;
          v19 = 0xE300000000000000;
        }

        v20 = sub_10002510C(v17, v19, v0 + 9);

        *(v10 + 4) = v20;
        *(v10 + 12) = 2112;
        swift_errorRetain();
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 14) = v21;
        *v11 = v21;
        _os_log_impl(&_mh_execute_header, v8, v9, "failed to load photo %{sensitive}s: %@", v10, 0x16u);
        sub_10000F500(v11, &unk_10025D580, &qword_1001CFA60);

        sub_10000F4B4(v16);

LABEL_21:
        v32 = static MainActor.shared.getter();
        v0[42] = v32;
        v33 = swift_task_alloc();
        v0[43] = v33;
        *v33 = v0;
        v33[1] = sub_10011E2A4;
        v12 = v0[21];
        v15 = v0[22];
        v14 = &protocol witness table for MainActor;
        v13 = v32;

        return TaskGroup.Iterator.next(isolation:)(v12, v13, v14, v15);
      }

      __break(1u);
      return TaskGroup.Iterator.next(isolation:)(v12, v13, v14, v15);
    }

    goto LABEL_21;
  }

  (*(v0[23] + 8))(v0[24], v0[22]);

  v3 = v0[1];
  v4 = v0[41];

  return v3(v4);
}

uint64_t sub_10011E928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  sub_10000341C(&qword_100263020, &qword_1001DA210);
  v8 = swift_task_alloc();
  v7[7] = v8;
  v9 = type metadata accessor for Attachment(0);
  v7[8] = v9;
  v7[9] = *(v9 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v7[13] = v10;
  v11 = sub_1001208D0(&qword_100263028, type metadata accessor for Attachment, &unk_1001DF0C0);
  *v10 = v7;
  v10[1] = sub_10011EAD4;

  return PhotosPickerItem.loadTransferable<A>(type:)(v8, v9, v9, v11);
}

uint64_t sub_10011EAD4()
{
  *(*v1 + 112) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10011EEA4;
  }

  else
  {
    v4 = sub_10011EC30;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10011EC30()
{
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    v2 = v0[4];
    v3 = v0[2];

    sub_10000F500(v1, &qword_100263020, &qword_1001DA210);
    v4 = *(sub_10000341C(&qword_100262FD8, &qword_1001DA160) + 48);
    *v3 = v2;
    sub_100124620();
    v5 = swift_allocError();
    *v6 = 0xD000000000000015;
    v6[1] = 0x80000001001E7310;
    *(v3 + v4) = v5;
    sub_10000341C(&qword_100262FF0, &qword_1001DA1C0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_100122020(v1, v0[10], type metadata accessor for Attachment);
    sub_100177108();
    result = PhotosPickerItem.itemIdentifier.getter();
    if (!v8)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = v8;
    v11 = v0[10];
    v12 = v0[8];
    v13 = v0[6];

    v14 = (v11 + *(v12 + 20));

    *v14 = v9;
    v14[1] = v10;
    if (v13)
    {
      v16 = v0[5];
      v15 = v0[6];
      v17 = (v0[10] + *(v0[8] + 44));

      *v17 = v16;
      v17[1] = v15;
    }

    v18 = v0[10];
    v19 = v0[4];
    v20 = v0[2];
    v21 = *(sub_10000341C(&qword_100262FD8, &qword_1001DA160) + 48);
    *v20 = v19;
    sub_100120918(v18, v20 + v21, type metadata accessor for Attachment);
    sub_10000341C(&qword_100262FF0, &qword_1001DA1C0);
    swift_storeEnumTagMultiPayload();
    sub_100120C94(v18, type metadata accessor for Attachment);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10011EEA4(uint64_t a1, uint64_t a2)
{
  v3 = v2[14];
  v4 = v2[4];
  v5 = v2[2];

  v6 = *(sub_10000341C(&qword_100262FD8, &qword_1001DA160) + 48);
  *v5 = v4;
  *(v5 + v6) = v3;
  sub_10000341C(&qword_100262FF0, &qword_1001DA1C0);
  swift_storeEnumTagMultiPayload();

  v7 = v2[1];

  return v7();
}

Swift::Int sub_10011EF70(uint64_t *a1)
{
  v2 = *(sub_10000341C(&qword_100262FD0, &unk_1001D4CC0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10009FF4C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10011F4F8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_10011F074@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000341C(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_1000081F8(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10011F29C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10011F394;

  return v6(a1);
}

uint64_t sub_10011F394()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10011F48C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

Swift::Int sub_10011F4F8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10000341C(&qword_100262FD0, &unk_1001D4CC0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10011F890(v8, v9, a1, v4);
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
    return sub_10011F63C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10011F63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
  v8 = __chkstk_darwin(v37);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = (&v27 - v11);
  result = __chkstk_darwin(v10);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v34 = -v18;
    v35 = v17;
    v20 = a1 - a3;
    v28 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v21;
    v31 = v20;
    v22 = v20;
    while (1)
    {
      sub_1000081F8(v21, v16, &qword_100262FD0, &unk_1001D4CC0);
      sub_1000081F8(v19, v12, &qword_100262FD0, &unk_1001D4CC0);
      v23 = *v16;
      v24 = *v12;
      sub_10000F500(v12, &qword_100262FD0, &unk_1001D4CC0);
      result = sub_10000F500(v16, &qword_100262FD0, &unk_1001D4CC0);
      if (v23 >= v24)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v20 = v31 - 1;
        v21 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      sub_10002A894(v21, v36, &qword_100262FD0, &unk_1001D4CC0);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002A894(v25, v19, &qword_100262FD0, &unk_1001D4CC0);
      v19 += v34;
      v21 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10011F890(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v105 = a1;
  v120 = sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
  v8 = *(v120 - 8);
  v9 = __chkstk_darwin(v120);
  v109 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v119 = &v103 - v12;
  v13 = __chkstk_darwin(v11);
  v122 = (&v103 - v14);
  result = __chkstk_darwin(v13);
  v121 = (&v103 - v16);
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v20 = a3;
    v19 = _swiftEmptyArrayStorage;
LABEL_99:
    a4 = *v105;
    if (!*v105)
    {
      goto LABEL_139;
    }

    a3 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_133:
      result = sub_10009FA94(a3);
    }

    v123 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      v99 = v8;
      while (*v20)
      {
        v8 = *(result + 16 * a3);
        v100 = result;
        v101 = *(result + 16 * (a3 - 1) + 40);
        sub_1001201F0(*v20 + *(v99 + 72) * v8, *v20 + *(v99 + 72) * *(result + 16 * (a3 - 1) + 32), *v20 + *(v99 + 72) * v101, a4);
        if (v5)
        {
        }

        if (v101 < v8)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_10009FA94(v100);
        }

        if (a3 - 2 >= *(v100 + 2))
        {
          goto LABEL_127;
        }

        v102 = &v100[16 * a3];
        *v102 = v8;
        v102[1] = v101;
        v123 = v100;
        sub_10009FA08(a3 - 1);
        result = v123;
        a3 = *(v123 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v20 = a3;
  v106 = a3;
  v116 = v8;
  v104 = a4;
  while (1)
  {
    v21 = v18;
    v22 = v18 + 1;
    v110 = v19;
    v107 = v21;
    if (v22 >= v17)
    {
      v17 = v22;
    }

    else
    {
      v111 = v5;
      v23 = *v20;
      v24 = *(v8 + 72);
      v25 = *v20 + v24 * v22;
      v26 = v121;
      a3 = &qword_100262FD0;
      sub_1000081F8(v25, v121, &qword_100262FD0, &unk_1001D4CC0);
      v27 = v122;
      sub_1000081F8(v23 + v24 * v21, v122, &qword_100262FD0, &unk_1001D4CC0);
      v28 = *v26;
      v114 = *v27;
      v115 = v28;
      sub_10000F500(v27, &qword_100262FD0, &unk_1001D4CC0);
      result = sub_10000F500(v26, &qword_100262FD0, &unk_1001D4CC0);
      v29 = v21 + 2;
      v117 = v24;
      v30 = v23 + v24 * v29;
      while (v17 != v29)
      {
        LODWORD(v118) = v115 < v114;
        v31 = v121;
        sub_1000081F8(v30, v121, &qword_100262FD0, &unk_1001D4CC0);
        v32 = v122;
        sub_1000081F8(v25, v122, &qword_100262FD0, &unk_1001D4CC0);
        a3 = v17;
        v33 = *v31;
        v34 = *v32;
        sub_10000F500(v32, &qword_100262FD0, &unk_1001D4CC0);
        result = sub_10000F500(v31, &qword_100262FD0, &unk_1001D4CC0);
        v35 = v33 < v34;
        v17 = a3;
        v36 = !v35;
        ++v29;
        v30 += v117;
        v25 += v117;
        if (((v118 ^ v36) & 1) == 0)
        {
          v17 = v29 - 1;
          break;
        }
      }

      v20 = v106;
      v21 = v107;
      v8 = v116;
      v5 = v111;
      a4 = v104;
      if (v115 < v114)
      {
        if (v17 < v107)
        {
          goto LABEL_130;
        }

        if (v107 < v17)
        {
          v37 = v116;
          a3 = v117 * (v17 - 1);
          v38 = v17 * v117;
          v115 = v17;
          v39 = v17;
          v40 = v107;
          v41 = v107 * v117;
          do
          {
            if (v40 != --v39)
            {
              v111 = v5;
              v42 = *v20;
              if (!*v20)
              {
                goto LABEL_136;
              }

              sub_10002A894(v42 + v41, v109, &qword_100262FD0, &unk_1001D4CC0);
              if (v41 < a3 || v42 + v41 >= (v42 + v38))
              {
                swift_arrayInitWithTakeFrontToBack();
                v5 = v111;
              }

              else
              {
                v5 = v111;
                if (v41 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_10002A894(v109, v42 + a3, &qword_100262FD0, &unk_1001D4CC0);
              v20 = v106;
              v21 = v107;
              v37 = v116;
            }

            ++v40;
            a3 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v40 < v39);
          a4 = v104;
          v17 = v115;
          v8 = v37;
        }
      }
    }

    v43 = v20[1];
    if (v17 < v43)
    {
      if (__OFSUB__(v17, v21))
      {
        goto LABEL_129;
      }

      if (v17 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_131;
        }

        if (v21 + a4 >= v43)
        {
          v44 = v20[1];
        }

        else
        {
          v44 = v21 + a4;
        }

        if (v44 < v21)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v17 != v44)
        {
          break;
        }
      }
    }

    v45 = v17;
    if (v17 < v21)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v110;
    }

    else
    {
      result = sub_10009FBA4(0, *(v110 + 2) + 1, 1, v110);
      v19 = result;
    }

    a3 = *(v19 + 2);
    v46 = *(v19 + 3);
    a4 = a3 + 1;
    if (a3 >= v46 >> 1)
    {
      result = sub_10009FBA4((v46 > 1), a3 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v47 = &v19[16 * a3];
    *(v47 + 4) = v21;
    *(v47 + 5) = v45;
    v48 = *v105;
    if (!*v105)
    {
      goto LABEL_138;
    }

    v112 = v45;
    if (a3)
    {
      v8 = v48;
      while (1)
      {
        v49 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v50 = *(v19 + 4);
          v51 = *(v19 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_56:
          if (v53)
          {
            goto LABEL_117;
          }

          v66 = &v19[16 * a4];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_120;
          }

          v72 = &v19[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_124;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v76 = &v19[16 * a4];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_70:
        if (v71)
        {
          goto LABEL_119;
        }

        v79 = &v19[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_122;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_77:
        a3 = v49 - 1;
        if (v49 - 1 >= a4)
        {
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
          goto LABEL_132;
        }

        if (!*v20)
        {
          goto LABEL_135;
        }

        v87 = v19;
        a4 = *&v19[16 * a3 + 32];
        v88 = *&v19[16 * v49 + 40];
        sub_1001201F0(*v20 + *(v116 + 72) * a4, *v20 + *(v116 + 72) * *&v19[16 * v49 + 32], *v20 + *(v116 + 72) * v88, v8);
        if (v5)
        {
        }

        if (v88 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_10009FA94(v87);
        }

        if (a3 >= *(v87 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v87[16 * a3];
        *(v89 + 4) = a4;
        *(v89 + 5) = v88;
        v123 = v87;
        a3 = &v123;
        result = sub_10009FA08(v49);
        v19 = v123;
        a4 = *(v123 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v19[16 * a4 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_115;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_116;
      }

      v61 = &v19[16 * a4];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_118;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_121;
      }

      if (v65 >= v57)
      {
        v83 = &v19[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v52 < v86)
        {
          v49 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v17 = v20[1];
    v18 = v112;
    a4 = v104;
    v8 = v116;
    if (v112 >= v17)
    {
      goto LABEL_99;
    }
  }

  v111 = v5;
  v112 = v44;
  v90 = *(v8 + 72);
  v91 = *v20 + v90 * (v17 - 1);
  v92 = v21;
  v93 = -v90;
  a3 = v92 - v17;
  v118 = *v20;
  v108 = v90;
  a4 = v118 + v17 * v90;
LABEL_89:
  v114 = a3;
  v115 = v17;
  v113 = a4;
  v117 = v91;
  v94 = v91;
  while (1)
  {
    v95 = v121;
    sub_1000081F8(a4, v121, &qword_100262FD0, &unk_1001D4CC0);
    v96 = v122;
    sub_1000081F8(v94, v122, &qword_100262FD0, &unk_1001D4CC0);
    v97 = *v95;
    v8 = *v96;
    sub_10000F500(v96, &qword_100262FD0, &unk_1001D4CC0);
    result = sub_10000F500(v95, &qword_100262FD0, &unk_1001D4CC0);
    if (v97 >= v8)
    {
LABEL_88:
      v17 = v115 + 1;
      v91 = v117 + v108;
      a3 = v114 - 1;
      v45 = v112;
      a4 = v113 + v108;
      if (v115 + 1 != v112)
      {
        goto LABEL_89;
      }

      v5 = v111;
      v20 = v106;
      v21 = v107;
      if (v112 < v107)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (!v118)
    {
      break;
    }

    v8 = v119;
    sub_10002A894(a4, v119, &qword_100262FD0, &unk_1001D4CC0);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002A894(v8, v94, &qword_100262FD0, &unk_1001D4CC0);
    v94 += v93;
    a4 += v93;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1001201F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
  v8 = __chkstk_darwin(v43);
  v45 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v8);
  v44 = (&v35 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_58;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_59;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = a4 + v17;
      v38 = a1;
      v39 = a4;
      v37 = -v13;
      do
      {
        v35 = v26;
        v29 = a2 + v27;
        v40 = a2;
        v41 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v46 = v35;
            goto LABEL_56;
          }

          v30 = a3;
          v36 = v26;
          a3 += v27;
          v31 = v28 + v27;
          v32 = v44;
          sub_1000081F8(v28 + v27, v44, &qword_100262FD0, &unk_1001D4CC0);
          v33 = v45;
          sub_1000081F8(v29, v45, &qword_100262FD0, &unk_1001D4CC0);
          v42 = *v32;
          v34 = *v33;
          sub_10000F500(v33, &qword_100262FD0, &unk_1001D4CC0);
          sub_10000F500(v32, &qword_100262FD0, &unk_1001D4CC0);
          if (v42 < v34)
          {
            break;
          }

          v26 = v28 + v27;
          if (v30 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v41;
            v27 = v37;
            a1 = v38;
          }

          else
          {
            v29 = v41;
            v27 = v37;
            a1 = v38;
            if (v30 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v31;
          a2 = v40;
          if (v31 <= v39)
          {
            goto LABEL_54;
          }
        }

        if (v30 < v40 || a3 >= v40)
        {
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v37;
          a1 = v38;
          v26 = v36;
        }

        else
        {
          a2 = v41;
          v27 = v37;
          a1 = v38;
          v26 = v36;
          if (v30 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v39);
    }

LABEL_54:
    v48 = a2;
    v46 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a3;
    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v40 = v13;
      do
      {
        v19 = v44;
        v20 = a2;
        sub_1000081F8(a2, v44, &qword_100262FD0, &unk_1001D4CC0);
        v21 = v45;
        sub_1000081F8(a4, v45, &qword_100262FD0, &unk_1001D4CC0);
        v22 = *v19;
        v23 = *v21;
        sub_10000F500(v21, &qword_100262FD0, &unk_1001D4CC0);
        sub_10000F500(v19, &qword_100262FD0, &unk_1001D4CC0);
        if (v22 >= v23)
        {
          v24 = v40;
          v25 = a4 + v40;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v25;
          a4 += v24;
        }

        else
        {
          v24 = v40;
          a2 += v40;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v24;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_56:
  sub_10009FAA8(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1001206F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1001207B8;

  return sub_10011D9E0(a2, a3, a4, a5, a6);
}

uint64_t sub_1001207B8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1001208D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100120918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100120980()
{
  result = qword_1002628A0;
  if (!qword_1002628A0)
  {
    sub_100003E34(&qword_100262878, &qword_1001D94F8);
    sub_100120A0C();
    sub_100120AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002628A0);
  }

  return result;
}

unint64_t sub_100120A0C()
{
  result = qword_1002628A8;
  if (!qword_1002628A8)
  {
    sub_100003E34(&qword_100262870, &qword_1001D94F0);
    sub_1001208D0(&qword_100262890, type metadata accessor for CompositionResponseView, &unk_1001D3200);
    sub_1001208D0(&qword_100262898, type metadata accessor for CompositionConfirmView, &unk_1001D99E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002628A8);
  }

  return result;
}

unint64_t sub_100120AF8()
{
  result = qword_1002628B0;
  if (!qword_1002628B0)
  {
    sub_100003E34(&qword_100262850, &qword_1001D94D0);
    sub_100120B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002628B0);
  }

  return result;
}

unint64_t sub_100120B84()
{
  result = qword_1002628B8;
  if (!qword_1002628B8)
  {
    sub_100003E34(&qword_100262848, &qword_1001D94C8);
    sub_1001208D0(&unk_1002628C0, type metadata accessor for CompositionIndexView, &unk_1001D9994);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002628B8);
  }

  return result;
}

uint64_t sub_100120C94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100120D2C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100120E08()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100120E48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_100116BAC(a1, v4, v5, v6);
}

uint64_t sub_100120F60(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 153, 7);
}

unint64_t sub_100121050()
{
  result = qword_100262930;
  if (!qword_100262930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262930);
  }

  return result;
}

uint64_t sub_1001210D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000341C(&qword_100262948, &unk_1001D96C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[8];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10012122C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000341C(&qword_100262948, &unk_1001D96C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[8];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_100121370(uint64_t a1)
{
  sub_100121AC4(319, &qword_10025D688, type metadata accessor for WritingToolsModel, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100121AC4(319, &qword_10025DE18, type metadata accessor for CompositionModel, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100121AC4(319, &qword_1002629C0, type metadata accessor for PresentationModel, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1001215B4(319);
        if (v4 <= 0x3F)
        {
          sub_100121AC4(319, &unk_1002629D8, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_100121A74(319, &qword_10025B4B0, &type metadata for String, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_100121618(319, &unk_1002629E8, &type metadata accessor for FocusState.Binding);
              if (v7 <= 0x3F)
              {
                sub_100121AC4(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
                if (v8 <= 0x3F)
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
}