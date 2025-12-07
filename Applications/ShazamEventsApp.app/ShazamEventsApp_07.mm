uint64_t sub_1000DB718()
{
  sub_100009F70(&qword_10021E378, &qword_1001B5D60);
  sub_1000DB790();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_1000DB790()
{
  result = qword_10021E380;
  if (!qword_10021E380)
  {
    sub_10000B3DC(&qword_10021E378, &qword_1001B5D60);
    sub_10000D1EC(&qword_10021E388, &qword_10021E390, &qword_1001B5D68, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E380);
  }

  return result;
}

unint64_t sub_1000DB850()
{
  result = qword_10021E3C8;
  if (!qword_10021E3C8)
  {
    sub_10000B3DC(&qword_10021E3A8, &qword_1001B5D80);
    sub_10000D1EC(&qword_10021E3B8, &qword_10021E3A0, &qword_1001B5D78, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3C8);
  }

  return result;
}

unint64_t sub_1000DB938()
{
  result = qword_10021E3D0;
  if (!qword_10021E3D0)
  {
    sub_10000B3DC(&qword_10021A8B8, &qword_1001B01D0);
    sub_10000B3DC(&qword_10021A8B0, &qword_1001B51F0);
    sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3D0);
  }

  return result;
}

uint64_t sub_1000DBA2C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021E3A8, &qword_1001B5D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DBA94(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021A8B8, &qword_1001B01D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DBB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219710, &qword_1001B29A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DBB74()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_1000DBC54()
{
  result = qword_10021E3F0;
  if (!qword_10021E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3F0);
  }

  return result;
}

uint64_t sub_1000DBCBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(qword_100218748, &unk_1001AD110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DBD8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(qword_100218748, &unk_1001AD110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AttributionViewModel(uint64_t a1)
{
  result = qword_10021E450;
  if (!qword_10021E450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DBE88(uint64_t a1)
{
  sub_100010780(319);
  if (v1 <= 0x3F)
  {
    sub_1000DBF28();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000DBF28()
{
  if (!qword_10021E460)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10021E460);
    }
  }
}

uint64_t sub_1000DBF78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin(v12 - 8);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009F70(&qword_10021A248, &unk_1001AF750);
  __chkstk_darwin(v14 - 8);
  v48 = &v39 - v15;
  v16 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AttributionViewModel(0);
  sub_10000F680(v2 + *(v26 + 32), v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000D52C(v21, qword_100218748, &unk_1001AD110);
    object = v2[1]._object;
    countAndFlagsBits = v2[1]._countAndFlagsBits;
    v51 = object;

    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    String.append(_:)(v2[3]);
    AttributeContainer.init()();
    return AttributedString.init(_:attributes:)();
  }

  else
  {
    v42 = v5;
    (*(v23 + 32))(v25, v21, v22);
    v30 = v2->_object;
    countAndFlagsBits = v2->_countAndFlagsBits;
    v51 = v30;

    v31._countAndFlagsBits = 23328;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v32._countAndFlagsBits = v2[3]._countAndFlagsBits;
    v40 = v2[3]._object;
    v32._object = v40;
    v41 = v32._countAndFlagsBits;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 10333;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    sub_100035F10();
    v43 = v25;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    (*(v23 + 56))(v19, 1, 1, v22);
    (*(v45 + 104))(v47, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v46);
    (*(v7 + 104))(v9, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v6);
    AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
    v36 = v48;
    AttributedString.init(markdown:options:baseURL:)();
    (*(v23 + 8))(v43, v22);
    v37 = type metadata accessor for AttributedString();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v36, 0, 1, v37);
    return (*(v38 + 32))(v49, v36, v37);
  }
}

void sub_1000DC608(uint64_t a1)
{
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v4 = v1[4];
  v5 = v1[5];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v6 = *(v1 + *(type metadata accessor for AttributionViewModel(0) + 36));
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 5;
  v7 = v1[6];
  v8 = v1[7];
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = v7;
  *(inited + 160) = v8;
  *(inited + 168) = 0;
  if (*(a1 + 72))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v17 = v9;
  v18 = v10;

  v11 = sub_1001666DC(1, 5, 1, inited);
  v15 = v11;
  sub_1000109BC(&aBlock, v22);
  sub_1000EB0D0(4, v22, &v15, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  v13[2] = 0xD00000000000001ELL;
  v13[3] = 0x80000001001BDDE0;
  v13[4] = v11;
  v20 = sub_100010AAC;
  v21 = v13;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000DCA40;
  v19 = &unk_10020E648;
  v14 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_1000DC888()
{

  return swift_deallocObject();
}

uint64_t sub_1000DC8C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1000DC90C@<D0>(uint64_t a1@<X8>)
{
  sub_100009F70(&qword_1002199C0, &qword_1001B2480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001ACB00;
  v3 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *(v2 + 32) = Color.init(uiColor:)();
  *(v2 + 40) = static Color.clear.getter();
  Gradient.init(colors:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

unint64_t sub_1000DC9EC()
{
  result = qword_10021E4A0;
  if (!qword_10021E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E4A0);
  }

  return result;
}

Class sub_1000DCA40(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10002EB9C();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_1000DCACC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009F70(&qword_10021E4A8, qword_1001B5EE0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1000DCD70()
{
  v1 = v0;
  sub_100009F70(&qword_10021E4A8, qword_1001B5EE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000DCEDC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = a3;
  if (*(a4 + 72))
  {
    v9 = *(a4 + 64);
    v10 = *(a4 + 72);
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = sub_1001666DC(1, 3, 1, inited);
  v17 = &type metadata for AnalyticsString;
  v18 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v9;
  v16 = v10;
  v11[2] = 3;
  sub_100071318(&aBlock, (v11 + 14));
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  v13[2] = 0xD00000000000001CLL;
  v13[3] = 0x80000001001C08E0;
  v13[4] = v11;
  v18 = sub_1000DD130;
  v19 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v16 = sub_1000DCA40;
  v17 = &unk_10020E6B8;
  v14 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_1000DD0F0()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD14C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1000DD168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v2 = a1 + 32;
  v3 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    sub_10005DA94(v2, v37);
    v7 = v38;
    v8 = v39;
    sub_100028124(v37, v38);
    v9 = (*(v8 + 16))(v7, v8);
    if (v9 <= 1)
    {
      if (v9)
      {
        v11 = 0xE800000000000000;
        v10 = 0x4449656C646E7562;
        if (!v3[2])
        {
LABEL_19:

          goto LABEL_20;
        }
      }

      else
      {
        v11 = 0xE200000000000000;
        v10 = 25705;
        if (!v3[2])
        {
          goto LABEL_19;
        }
      }
    }

    else if (v9 == 2)
    {
      v11 = 0xE800000000000000;
      v10 = 0x656D614E65676170;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    else if (v9 == 3)
    {
      v10 = 0x614E656C75646F6DLL;
      v11 = 0xEA0000000000656DLL;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0x6341656C75646F6DLL;
      v11 = 0xEC0000006E6F6974;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    sub_100022004(v10, v11);
    v13 = v12;

    if (v13)
    {
      goto LABEL_4;
    }

LABEL_20:
    v14 = v38;
    v15 = v39;
    sub_100028124(v37, v38);
    v16 = (*(v15 + 16))(v14, v15);
    if (v16 <= 1)
    {
      v17 = v16 ? 0x4449656C646E7562 : 25705;
      v18 = v16 ? 0xE800000000000000 : 0xE200000000000000;
    }

    else if (v16 == 2)
    {
      v18 = 0xE800000000000000;
      v17 = 0x656D614E65676170;
    }

    else if (v16 == 3)
    {
      v17 = 0x614E656C75646F6DLL;
      v18 = 0xEA0000000000656DLL;
    }

    else
    {
      v17 = 0x6341656C75646F6DLL;
      v18 = 0xEC0000006E6F6974;
    }

    v19 = v38;
    v20 = v39;
    sub_100028124(v37, v38);
    v21 = (*(v20 + 32))(v19, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v3;
    v23 = sub_100022004(v17, v18);
    v25 = v3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v3[3] < v28)
    {
      sub_1000DCACC(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_100022004(v17, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_46;
      }

LABEL_37:
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_38;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_37;
    }

    v34 = v23;
    sub_1000DCD70();
    v23 = v34;
    if (v29)
    {
LABEL_3:
      v4 = v23;

      v3 = v36;
      v5 = v36[7];
      v6 = *(v5 + 8 * v4);
      *(v5 + 8 * v4) = v21;

      goto LABEL_4;
    }

LABEL_38:
    v3 = v36;
    v36[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v36[6] + 16 * v23);
    *v31 = v17;
    v31[1] = v18;
    *(v36[7] + 8 * v23) = v21;
    v32 = v36[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_45;
    }

    v36[2] = v33;
LABEL_4:
    sub_100021498(v37);
    v2 += 40;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000DD558(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1000DD644(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v59 = a1;
  v3 = sub_100009F70(&qword_10021E4E0, &qword_1001B8DB0);
  __chkstk_darwin(v3 - 8);
  v63 = &v58 - v4;
  v5 = *(*v2 + 128);
  v6 = type metadata accessor for Music();
  v58 = *(v6 - 8);
  v7 = v58 + 56;
  v8 = *(v58 + 56);
  v8(v2 + v5, 1, 1, v6);
  v9 = v2 + *(*v2 + 136);
  v62 = v7;
  v61 = v8;
  v8(v9, 1, 1, v6);
  v10 = (v2 + *(*v2 + 144));
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v2 + *(*v2 + 152)) = 1;
  *(v2 + *(*v2 + 160)) = _swiftEmptyArrayStorage;
  v11 = *(*v2 + 168);
  v12 = type metadata accessor for Artist();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  v13 = *(*v2 + 176);
  v14 = type metadata accessor for Playlist();
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  v15 = *(*v2 + 184);
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  *(v2 + *(*v2 + 192)) = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  memset(v69, 0, 64);
  sub_10008319C(&v65, v64);
  sub_1000831F8(v69);
  v17 = (v2 + *(*v2 + 232));
  v18 = v68;
  v17[2] = v67;
  v17[3] = v18;
  v19 = v66;
  *v17 = v65;
  v17[1] = v19;
  v20 = (v2 + *(*v2 + 240));
  *v20 = 0;
  v20[1] = 0;
  v21 = v2 + *(*v2 + 248);
  *v21 = LocalizedStringKey.init(stringLiteral:)();
  *(v21 + 8) = v22;
  *(v21 + 16) = v23 & 1;
  *(v21 + 24) = v24;
  v25 = (v2 + *(*v2 + 256));
  v26 = objc_opt_self();
  v27 = [v26 mainBundle];
  v70._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD00000000000002ALL;
  v28._object = 0x80000001001BF370;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v70._countAndFlagsBits = 0;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v70);

  *v25 = v30;
  v31 = (v2 + *(*v2 + 264));
  v32 = [v26 mainBundle];
  v71._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD00000000000002DLL;
  v33._object = 0x80000001001C0290;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v71);

  *v31 = v35;
  v36 = (v2 + *(*v2 + 272));
  v37 = [v26 mainBundle];
  v72._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0xD00000000000003ALL;
  v38._object = 0x80000001001C02C0;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v72._countAndFlagsBits = 0;
  v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v72);

  *v36 = v40;
  v41 = (v2 + *(*v2 + 280));
  *v41 = 0xD000000000000010;
  v41[1] = 0x80000001001C0300;
  v42 = (v2 + *(*v2 + 288));
  v43 = [v26 mainBundle];
  v73._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0xD000000000000029;
  v44._object = 0x80000001001C0320;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v73);

  *v42 = v46;
  v47 = (v2 + *(*v2 + 296));
  v48 = [v26 mainBundle];
  v74._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0xD000000000000037;
  v49._object = 0x80000001001C0350;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v74._countAndFlagsBits = 0;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v74);

  *v47 = v51;
  v52 = v59;
  v53 = v58;
  v54 = v60;
  ObservationRegistrar.init()();
  (*(v53 + 16))(v2 + *(*v2 + 200), v52, v6);
  v55 = *(v53 + 48);
  if (v55(v54, 1, v6) == 1)
  {
    v56 = v63;
    (*(v53 + 32))(v63, v52, v6);
    if (v55(v54, 1, v6) != 1)
    {
      sub_10000D52C(v54, &qword_10021E4E0, &qword_1001B8DB0);
    }
  }

  else
  {
    (*(v53 + 8))(v52, v6);
    v56 = v63;
    (*(v53 + 32))(v63, v54, v6);
  }

  v61(v56, 0, 1, v6);
  sub_10000F618(v56, v2 + *(*v2 + 208), &qword_10021E4E0, &qword_1001B8DB0);
  return v2;
}

uint64_t sub_1000DDDF0@<X0>(uint64_t a1@<X8>)
{
  v235 = a1;
  v224 = type metadata accessor for ErrorView(0);
  __chkstk_darwin(v224);
  v176 = (&v174 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v178 = sub_100009F70(&qword_10021E4B0, &qword_1001B5FA8);
  __chkstk_darwin(v178);
  v180 = &v174 - v3;
  v222 = sub_100009F70(&qword_10021E4B8, &qword_1001B5FB0);
  __chkstk_darwin(v222);
  v181 = &v174 - v4;
  v179 = sub_100009F70(&qword_10021E4C0, &qword_1001B5FB8);
  __chkstk_darwin(v179);
  v175 = (&v174 - v5);
  v185 = type metadata accessor for Theater();
  v184 = *(v185 - 8);
  v6 = __chkstk_darwin(v185);
  v174 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v177 = &v174 - v8;
  v196 = sub_100009F70(&qword_10021E4C8, &qword_1001B5FC0);
  __chkstk_darwin(v196);
  v183 = (&v174 - v9);
  v191 = type metadata accessor for Sport();
  v190 = *(v191 - 8);
  v10 = __chkstk_darwin(v191);
  v182 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v189 = &v174 - v12;
  v192 = sub_100009F70(&qword_10021E4D0, &qword_1001B5FC8);
  __chkstk_darwin(v192);
  v194 = &v174 - v13;
  v216 = sub_100009F70(&qword_10021E4D8, &unk_1001B5FD0);
  __chkstk_darwin(v216);
  v195 = &v174 - v14;
  v15 = sub_100009F70(&qword_10021E4E0, &qword_1001B8DB0);
  __chkstk_darwin(v15 - 8);
  v187 = &v174 - v16;
  v193 = sub_100009F70(&qword_10021E4E8, &qword_1001B5FE0);
  __chkstk_darwin(v193);
  v188 = (&v174 - v17);
  v201 = type metadata accessor for Music();
  v200 = *(v201 - 8);
  v18 = __chkstk_darwin(v201);
  v186 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v197 = &v174 - v20;
  v211 = sub_100009F70(&qword_10021E4F0, &qword_1001B5FE8);
  __chkstk_darwin(v211);
  v199 = (&v174 - v21);
  v209 = type metadata accessor for Dance();
  v208 = *(v209 - 8);
  v22 = __chkstk_darwin(v209);
  v198 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v204 = &v174 - v24;
  v218 = sub_100009F70(&qword_10021E4F8, &qword_1001B5FF0);
  __chkstk_darwin(v218);
  v220 = &v174 - v25;
  v212 = sub_100009F70(&qword_10021E500, &qword_1001B5FF8);
  __chkstk_darwin(v212);
  v214 = &v174 - v26;
  v206 = sub_100009F70(&qword_10021E508, &qword_1001B6000);
  __chkstk_darwin(v206);
  v207 = &v174 - v27;
  v213 = sub_100009F70(&qword_10021E510, &qword_1001B6008);
  __chkstk_darwin(v213);
  v210 = &v174 - v28;
  v219 = sub_100009F70(&qword_10021E518, &qword_1001B6010);
  __chkstk_darwin(v219);
  v215 = &v174 - v29;
  v205 = sub_100009F70(&qword_10021E520, &qword_1001B6018);
  __chkstk_darwin(v205);
  v203 = (&v174 - v30);
  v226 = type metadata accessor for Art();
  v225 = *(v226 - 8);
  v31 = __chkstk_darwin(v226);
  v202 = &v174 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v217 = &v174 - v33;
  v234 = sub_100009F70(&qword_10021E528, &qword_1001B6020);
  __chkstk_darwin(v234);
  v221 = &v174 - v34;
  v35 = sub_100009F70(&qword_10021E530, &unk_1001B6028);
  v36 = __chkstk_darwin(v35);
  v223 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v231 = &v174 - v38;
  v229 = sub_100009F70(&qword_10021B968, &qword_1001B1780);
  __chkstk_darwin(v229);
  v40 = (&v174 - v39);
  v233 = sub_100009F70(&qword_10021E538, &unk_1001B6038);
  __chkstk_darwin(v233);
  v236 = &v174 - v41;
  v227 = sub_100009F70(&qword_10021B978, &unk_1001B1790);
  __chkstk_darwin(v227);
  v43 = &v174 - v42;
  v232 = sub_100009F70(&qword_10021B980, &qword_1001BBD50);
  __chkstk_darwin(v232);
  v45 = &v174 - v44;
  v228 = sub_100009F70(&qword_10021B988, &qword_1001B17A0);
  __chkstk_darwin(v228);
  v47 = (&v174 - v46);
  v48 = type metadata accessor for EventController.State(0);
  __chkstk_darwin(v48);
  v50 = &v174 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = v1;
  v51 = *(v1 + 16);
  swift_getKeyPath();
  v238 = v51;
  sub_1000E122C(&qword_10021E540, type metadata accessor for EventController, &unk_1001BA190);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = OBJC_IVAR____TtC15ShazamEventsApp15EventController__state;
  swift_beginAccess();
  sub_1000E0E8C(v51 + v52, v50, type metadata accessor for EventController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v54 = v231;
      sub_10000F618(v50, v231, &qword_10021E530, &unk_1001B6028);
      v55 = v35[12];
      v56 = v35[16];
      v57 = v35[20];
      v58 = v35[24];
      v59 = v223;
      sub_10000D58C(v54, v223, &qword_10021E548, &qword_1001B6070);
      sub_10000D58C(v54 + v55, v59 + v55, &qword_10021E550, &qword_1001B6078);
      sub_10000D58C(v54 + v56, v59 + v56, &qword_10021E4E0, &qword_1001B8DB0);
      sub_10000D58C(v54 + v57, v59 + v57, &qword_10021E558, &qword_1001B6080);
      sub_10000D58C(v58 + v54, v58 + v59, &qword_10021E560, &qword_1001B6088);
      v60 = v225;
      v61 = v226;
      v62 = (*(v225 + 48))(v59, 1, v226);
      v229 = v57;
      v230 = v58;
      if (v62 != 1)
      {
        v102 = v217;
        (*(v60 + 32))(v217, v59, v61);
        v103 = v202;
        (*(v60 + 16))(v202, v102, v61);
        sub_100009F70(&qword_10021E5D8, &unk_1001B6150);
        swift_allocObject();
        v228 = v55;
        v104 = sub_1000E08E0(v103, &type metadata accessor for Art);
        KeyPath = swift_getKeyPath();
        *&v239 = v104;
        State.init(wrappedValue:)();
        v106 = *(&v240 + 1);
        v107 = v203;
        *v203 = v240;
        v107[1] = v106;
        type metadata accessor for RemoteViewConfiguration();
        sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
        v107[2] = EnvironmentObject.init()();
        v107[3] = v108;
        v109 = v205;
        v110 = *(v205 + 40);
        *(v107 + v110) = swift_getKeyPath();
        sub_100009F70(&qword_100219710, &qword_1001B29A0);
        swift_storeEnumTagMultiPayload();
        v111 = v107 + *(v109 + 44);
        *v111 = KeyPath;
        v111[8] = 0;
        sub_10000D58C(v107, v207, &qword_10021E520, &qword_1001B6018);
        swift_storeEnumTagMultiPayload();
        sub_10000D1EC(&qword_10021E580, &qword_10021E520, &qword_1001B6018, &unk_1001BA2F8);
        v112 = v59;
        sub_10000D1EC(&qword_10021E588, &qword_10021E4F0, &qword_1001B5FE8, &unk_1001BA2F8);
        v113 = v210;
        _ConditionalContent<>.init(storage:)();
        sub_10000D58C(v113, v214, &qword_10021E510, &qword_1001B6008);
        swift_storeEnumTagMultiPayload();
        sub_1000E0F80();
        sub_1000E1060();
        v114 = v215;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v113, &qword_10021E510, &qword_1001B6008);
        sub_10000D58C(v114, v220, &qword_10021E518, &qword_1001B6010);
        swift_storeEnumTagMultiPayload();
        sub_1000E0EF4();
        sub_1000E1144();
        v115 = v221;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v114, &qword_10021E518, &qword_1001B6010);
        sub_10000D52C(v107, &qword_10021E520, &qword_1001B6018);
        (*(v225 + 8))(v217, v226);
        sub_10000D52C(v230 + v112, &qword_10021E560, &qword_1001B6088);
        sub_10000D52C(v112 + v229, &qword_10021E558, &qword_1001B6080);
        sub_10000D52C(v112 + v56, &qword_10021E4E0, &qword_1001B8DB0);
        v81 = &qword_10021E550;
        v82 = &qword_1001B6078;
        v116 = v112 + v228;
        v80 = v115;
LABEL_18:
        sub_10000D52C(v116, v81, v82);
        v66 = v236;
        goto LABEL_19;
      }

      v63 = v208;
      v64 = v209;
      v65 = (*(v208 + 48))(v59 + v55, 1, v209);
      v66 = v236;
      if (v65 != 1)
      {
        v117 = v204;
        (*(v63 + 32))(v204, v59 + v55, v64);
        v118 = v198;
        (*(v63 + 16))(v198, v117, v64);
        sub_100009F70(&qword_10021E5D0, &qword_1001B6148);
        swift_allocObject();
        v119 = sub_1000E08E0(v118, &type metadata accessor for Dance);
        v120 = swift_getKeyPath();
        *&v239 = v119;
        State.init(wrappedValue:)();
        v121 = *(&v240 + 1);
        v122 = v199;
        *v199 = v240;
        v122[1] = v121;
        type metadata accessor for RemoteViewConfiguration();
        sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
        v122[2] = EnvironmentObject.init()();
        v122[3] = v123;
        v124 = v211;
        v125 = *(v211 + 40);
        *(v122 + v125) = swift_getKeyPath();
        sub_100009F70(&qword_100219710, &qword_1001B29A0);
        swift_storeEnumTagMultiPayload();
        v126 = v122 + *(v124 + 44);
        *v126 = v120;
        v126[8] = 0;
        sub_10000D58C(v122, v207, &qword_10021E4F0, &qword_1001B5FE8);
        swift_storeEnumTagMultiPayload();
        sub_10000D1EC(&qword_10021E580, &qword_10021E520, &qword_1001B6018, &unk_1001BA2F8);
        sub_10000D1EC(&qword_10021E588, &qword_10021E4F0, &qword_1001B5FE8, &unk_1001BA2F8);
        v127 = v210;
        _ConditionalContent<>.init(storage:)();
        sub_10000D58C(v127, v214, &qword_10021E510, &qword_1001B6008);
        swift_storeEnumTagMultiPayload();
        sub_1000E0F80();
        sub_1000E1060();
        v128 = v215;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v127, &qword_10021E510, &qword_1001B6008);
        sub_10000D58C(v128, v220, &qword_10021E518, &qword_1001B6010);
        swift_storeEnumTagMultiPayload();
        sub_1000E0EF4();
        sub_1000E1144();
        v80 = v221;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v128, &qword_10021E518, &qword_1001B6010);
        sub_10000D52C(v122, &qword_10021E4F0, &qword_1001B5FE8);
        (*(v208 + 8))(v204, v209);
        sub_10000D52C(v230 + v59, &qword_10021E560, &qword_1001B6088);
        sub_10000D52C(v59 + v229, &qword_10021E558, &qword_1001B6080);
        sub_10000D52C(v59 + v56, &qword_10021E4E0, &qword_1001B8DB0);
        sub_10000D52C(v59, &qword_10021E548, &qword_1001B6070);
LABEL_19:
        sub_10000D58C(v80, v66, &qword_10021E528, &qword_1001B6020);
        swift_storeEnumTagMultiPayload();
        sub_100080A3C();
        sub_1000E1274();
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v80, &qword_10021E528, &qword_1001B6020);
        v93 = &qword_10021E530;
        v94 = &unk_1001B6028;
        v92 = v231;
        return sub_10000D52C(v92, v93, v94);
      }

      v67 = v200;
      v68 = v201;
      if ((*(v200 + 48))(v59 + v56, 1, v201) == 1)
      {
        v228 = v55;
        v69 = v190;
        v70 = v191;
        if ((*(v190 + 48))(v59 + v57, 1, v191) == 1)
        {
          v71 = v184;
          v72 = v185;
          if ((*(v184 + 48))(v58 + v59, 1, v185) == 1)
          {
            v73 = swift_getKeyPath();
            v74 = v176;
            *v176 = v73;
            sub_100009F70(&qword_100219710, &qword_1001B29A0);
            swift_storeEnumTagMultiPayload();
            v75 = v224;
            v76 = *(v224 + 20);
            *(v74 + v76) = swift_getKeyPath();
            sub_100009F70(&qword_100219718, &qword_1001B1810);
            swift_storeEnumTagMultiPayload();
            v77 = (v74 + *(v75 + 24));
            type metadata accessor for RemoteViewConfiguration();
            sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
            *v77 = EnvironmentObject.init()();
            v77[1] = v78;
            sub_1000E0E8C(v74, v180, type metadata accessor for ErrorView);
            swift_storeEnumTagMultiPayload();
            sub_10000D1EC(&qword_10021E568, &qword_10021E4C0, &qword_1001B5FB8, &unk_1001BA2F8);
            sub_1000E122C(&qword_10021B9D8, type metadata accessor for ErrorView, &unk_1001BCC3C);
            v79 = v181;
            _ConditionalContent<>.init(storage:)();
            sub_10000D58C(v79, v220, &qword_10021E4B8, &qword_1001B5FB0);
            swift_storeEnumTagMultiPayload();
            sub_1000E0EF4();
            sub_1000E1144();
            v80 = v221;
            _ConditionalContent<>.init(storage:)();
            sub_10000D52C(v79, &qword_10021E4B8, &qword_1001B5FB0);
            sub_1000E171C(v74, type metadata accessor for ErrorView);
            v81 = &qword_10021E530;
            v82 = &unk_1001B6028;
LABEL_17:
            v116 = v59;
            goto LABEL_18;
          }

          v160 = v58 + v59;
          v161 = v177;
          (*(v71 + 32))(v177, v160, v72);
          v162 = v174;
          (*(v71 + 16))(v174, v161, v72);
          sub_100009F70(&qword_10021E5B8, &qword_1001B6100);
          swift_allocObject();
          v163 = sub_1000E08E0(v162, &type metadata accessor for Theater);
          v164 = swift_getKeyPath();
          *&v239 = v163;
          State.init(wrappedValue:)();
          v165 = *(&v240 + 1);
          v166 = v175;
          *v175 = v240;
          v166[1] = v165;
          type metadata accessor for RemoteViewConfiguration();
          sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
          v166[2] = EnvironmentObject.init()();
          v166[3] = v167;
          v168 = v179;
          v169 = *(v179 + 40);
          *(v166 + v169) = swift_getKeyPath();
          sub_100009F70(&qword_100219710, &qword_1001B29A0);
          swift_storeEnumTagMultiPayload();
          v170 = v166 + *(v168 + 44);
          *v170 = v164;
          v170[8] = 0;
          sub_10000D58C(v166, v180, &qword_10021E4C0, &qword_1001B5FB8);
          swift_storeEnumTagMultiPayload();
          sub_10000D1EC(&qword_10021E568, &qword_10021E4C0, &qword_1001B5FB8, &unk_1001BA2F8);
          sub_1000E122C(&qword_10021B9D8, type metadata accessor for ErrorView, &unk_1001BCC3C);
          v171 = v181;
          _ConditionalContent<>.init(storage:)();
          sub_10000D58C(v171, v220, &qword_10021E4B8, &qword_1001B5FB0);
          swift_storeEnumTagMultiPayload();
          sub_1000E0EF4();
          sub_1000E1144();
          v172 = v221;
          _ConditionalContent<>.init(storage:)();
          sub_10000D52C(v171, &qword_10021E4B8, &qword_1001B5FB0);
          sub_10000D52C(v166, &qword_10021E4C0, &qword_1001B5FB8);
          (*(v184 + 8))(v177, v185);
          sub_10000D52C(v59 + v229, &qword_10021E558, &qword_1001B6080);
          sub_10000D52C(v59 + v56, &qword_10021E4E0, &qword_1001B8DB0);
          v145 = v59 + v228;
          v80 = v172;
        }

        else
        {
          v146 = v59 + v57;
          v147 = v189;
          (*(v69 + 32))(v189, v146, v70);
          v148 = v182;
          (*(v69 + 16))(v182, v147, v70);
          sub_100009F70(&qword_10021E5C0, &qword_1001B6138);
          swift_allocObject();
          v149 = sub_1000E1300(v148);
          v150 = swift_getKeyPath();
          *&v239 = v149;
          State.init(wrappedValue:)();
          v151 = *(&v240 + 1);
          v152 = v183;
          *v183 = v240;
          v152[1] = v151;
          type metadata accessor for RemoteViewConfiguration();
          sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
          v152[2] = EnvironmentObject.init()();
          v152[3] = v153;
          v154 = v196;
          v155 = *(v196 + 40);
          *(v152 + v155) = swift_getKeyPath();
          sub_100009F70(&qword_100219710, &qword_1001B29A0);
          swift_storeEnumTagMultiPayload();
          v156 = v152 + *(v154 + 44);
          *v156 = v150;
          v156[8] = 0;
          sub_10000D58C(v152, v194, &qword_10021E4C8, &qword_1001B5FC0);
          swift_storeEnumTagMultiPayload();
          sub_10000D1EC(&qword_10021E598, &qword_10021E4E8, &qword_1001B5FE0, &unk_1001B07F8);
          sub_10000D1EC(&qword_10021E5A0, &qword_10021E4C8, &qword_1001B5FC0, &unk_1001B0078);
          v157 = v195;
          _ConditionalContent<>.init(storage:)();
          sub_10000D58C(v157, v214, &qword_10021E4D8, &unk_1001B5FD0);
          swift_storeEnumTagMultiPayload();
          sub_1000E0F80();
          sub_1000E1060();
          v158 = v215;
          _ConditionalContent<>.init(storage:)();
          sub_10000D52C(v157, &qword_10021E4D8, &unk_1001B5FD0);
          sub_10000D58C(v158, v220, &qword_10021E518, &qword_1001B6010);
          swift_storeEnumTagMultiPayload();
          sub_1000E0EF4();
          sub_1000E1144();
          v159 = v221;
          _ConditionalContent<>.init(storage:)();
          sub_10000D52C(v158, &qword_10021E518, &qword_1001B6010);
          sub_10000D52C(v152, &qword_10021E4C8, &qword_1001B5FC0);
          (*(v190 + 8))(v189, v191);
          sub_10000D52C(v230 + v59, &qword_10021E560, &qword_1001B6088);
          sub_10000D52C(v59 + v56, &qword_10021E4E0, &qword_1001B8DB0);
          v145 = v59 + v228;
          v80 = v159;
        }
      }

      else
      {
        v129 = v59 + v56;
        v130 = v197;
        (*(v67 + 32))(v197, v129, v68);
        v131 = v186;
        (*(v67 + 16))(v186, v130, v68);
        v132 = v187;
        (*(v67 + 56))(v187, 1, 1, v68);
        sub_100009F70(&qword_10021E5C8, &qword_1001B6140);
        swift_allocObject();
        v133 = sub_1000DD644(v131, v132);
        v134 = swift_getKeyPath();
        *&v239 = v133;
        State.init(wrappedValue:)();
        v135 = *(&v240 + 1);
        v136 = v188;
        *v188 = v240;
        v136[1] = v135;
        type metadata accessor for RemoteViewConfiguration();
        sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
        v136[2] = EnvironmentObject.init()();
        v136[3] = v137;
        v138 = v193;
        v139 = *(v193 + 72);
        *(v136 + v139) = swift_getKeyPath();
        sub_100009F70(&qword_100219710, &qword_1001B29A0);
        swift_storeEnumTagMultiPayload();
        v140 = *(v138 + 76);
        *(v136 + v140) = swift_getKeyPath();
        sub_100009F70(&qword_100219718, &qword_1001B1810);
        swift_storeEnumTagMultiPayload();
        v141 = v136 + *(v138 + 80);
        *v141 = v134;
        v141[8] = 0;
        sub_10000D58C(v136, v194, &qword_10021E4E8, &qword_1001B5FE0);
        swift_storeEnumTagMultiPayload();
        sub_10000D1EC(&qword_10021E598, &qword_10021E4E8, &qword_1001B5FE0, &unk_1001B07F8);
        sub_10000D1EC(&qword_10021E5A0, &qword_10021E4C8, &qword_1001B5FC0, &unk_1001B0078);
        v142 = v195;
        _ConditionalContent<>.init(storage:)();
        sub_10000D58C(v142, v214, &qword_10021E4D8, &unk_1001B5FD0);
        swift_storeEnumTagMultiPayload();
        sub_1000E0F80();
        sub_1000E1060();
        v143 = v215;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v142, &qword_10021E4D8, &unk_1001B5FD0);
        sub_10000D58C(v143, v220, &qword_10021E518, &qword_1001B6010);
        swift_storeEnumTagMultiPayload();
        sub_1000E0EF4();
        sub_1000E1144();
        v144 = v221;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v143, &qword_10021E518, &qword_1001B6010);
        sub_10000D52C(v136, &qword_10021E4E8, &qword_1001B5FE0);
        (*(v200 + 8))(v197, v201);
        sub_10000D52C(v230 + v59, &qword_10021E560, &qword_1001B6088);
        sub_10000D52C(v59 + v229, &qword_10021E558, &qword_1001B6080);
        v145 = v59 + v55;
        v80 = v144;
      }

      sub_10000D52C(v145, &qword_10021E550, &qword_1001B6078);
      v81 = &qword_10021E548;
      v82 = &qword_1001B6070;
      goto LABEL_17;
    }

    *v47 = swift_getKeyPath();
    sub_100009F70(&qword_100219710, &qword_1001B29A0);
    swift_storeEnumTagMultiPayload();
    v95 = (v47 + *(type metadata accessor for LoadingView(0) + 20));
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    *v95 = EnvironmentObject.init()();
    v95[1] = v96;
    v97 = v230;
    v98 = *v230;
    v239 = *(v230 + 24);
    v240 = v98;
    v99 = swift_allocObject();
    v100 = v97[1];
    *(v99 + 16) = *v97;
    *(v99 + 32) = v100;
    *(v99 + 48) = *(v97 + 4);
    v101 = (v47 + *(v228 + 36));
    type metadata accessor for _TaskModifier();
    sub_100081738(&v240, v237);

    sub_10000D58C(&v239, v237, &qword_10021B9F0, &qword_1001B1858);
    static TaskPriority.userInitiated.getter();
    *v101 = &unk_1001B6168;
    v101[1] = v99;
    sub_10000D58C(v47, v43, &qword_10021B988, &qword_1001B17A0);
    swift_storeEnumTagMultiPayload();
    sub_100080AC8();
    sub_100080BB4();
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v45, v236, &qword_10021B980, &qword_1001BBD50);
    swift_storeEnumTagMultiPayload();
    sub_100080A3C();
    sub_1000E1274();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v45, &qword_10021B980, &qword_1001BBD50);
    v92 = v47;
    v93 = &qword_10021B988;
    v94 = &qword_1001B17A0;
  }

  else
  {
    sub_1000E171C(v50, type metadata accessor for EventController.State);
    *v40 = swift_getKeyPath();
    sub_100009F70(&qword_100219710, &qword_1001B29A0);
    swift_storeEnumTagMultiPayload();
    v83 = v224;
    v84 = *(v224 + 20);
    *(v40 + v84) = swift_getKeyPath();
    sub_100009F70(&qword_100219718, &qword_1001B1810);
    swift_storeEnumTagMultiPayload();
    v85 = (v40 + *(v83 + 24));
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    *v85 = EnvironmentObject.init()();
    v85[1] = v86;
    v87 = v230;
    v88 = *v230;
    v239 = *(v230 + 24);
    v240 = v88;
    v89 = swift_allocObject();
    v90 = v87[1];
    *(v89 + 16) = *v87;
    *(v89 + 32) = v90;
    *(v89 + 48) = *(v87 + 4);
    v91 = (v40 + *(v229 + 36));
    *v91 = sub_1000E1780;
    v91[1] = v89;
    v91[2] = 0;
    v91[3] = 0;
    sub_10000D58C(v40, v43, &qword_10021B968, &qword_1001B1780);
    swift_storeEnumTagMultiPayload();

    sub_100081738(&v240, v237);
    sub_10000D58C(&v239, v237, &qword_10021B9F0, &qword_1001B1858);
    sub_100080AC8();
    sub_100080BB4();
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v45, v236, &qword_10021B980, &qword_1001BBD50);
    swift_storeEnumTagMultiPayload();
    sub_100080A3C();
    sub_1000E1274();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v45, &qword_10021B980, &qword_1001BBD50);
    v92 = v40;
    v93 = &qword_10021B968;
    v94 = &qword_1001B1780;
  }

  return sub_10000D52C(v92, v93, v94);
}

uint64_t sub_1000E0760(uint64_t *a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_task_alloc();
  v1[4] = v5;
  *v5 = v1;
  v5[1] = sub_100080584;

  return sub_10014E440(v3, v4);
}

void sub_1000E0820(uint64_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = *a1;
    v3 = a1[1];

    sub_1000DCEDC(v2, v3, 6, v1);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000E08E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(*v2 + 96);
  v4 = a2(0);
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2 + v3, 1, 1, v4);
  *(v2 + *(*v2 + 104)) = 1;
  v6 = (v2 + *(*v2 + 112));
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v2 + *(*v2 + 120)) = _swiftEmptyArrayStorage;
  *(v2 + *(*v2 + 128)) = 0;
  v7 = (v2 + *(*v2 + 144));
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v26._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000002ALL;
  v10._object = 0x80000001001BF370;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v26);

  *v7 = v12;
  v13 = (v2 + *(*v2 + 152));
  *v13 = 0xD000000000000011;
  v13[1] = 0x80000001001C0900;
  v14 = (v2 + *(*v2 + 160));
  v15 = [v8 mainBundle];
  v27._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000029;
  v16._object = 0x80000001001C0320;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v27);

  *v14 = v18;
  v19 = (v2 + *(*v2 + 168));
  v20 = [v8 mainBundle];
  v28._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000037;
  v21._object = 0x80000001001C0350;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v28);

  *v19 = v23;
  ObservationRegistrar.init()();
  (*(v5 + 32))(v2 + *(*v2 + 136), a1, v4);
  return v2;
}

uint64_t sub_1000E0C0C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1000E122C(&qword_10021E540, type metadata accessor for EventController, &unk_1001BA190);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC15ShazamEventsApp15EventController__state;
  swift_beginAccess();
  return sub_1000E0E8C(v4 + v5, a3, type metadata accessor for EventController.State);
}

uint64_t sub_1000E0CEC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EventController.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000E0E8C(a1, v6, type metadata accessor for EventController.State);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1000E122C(&qword_10021E540, type metadata accessor for EventController, &unk_1001BA190);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000E171C(v6, type metadata accessor for EventController.State);
}

uint64_t sub_1000E0E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000E0EF4()
{
  result = qword_10021E570;
  if (!qword_10021E570)
  {
    sub_10000B3DC(&qword_10021E518, &qword_1001B6010);
    sub_1000E0F80();
    sub_1000E1060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E570);
  }

  return result;
}

unint64_t sub_1000E0F80()
{
  result = qword_10021E578;
  if (!qword_10021E578)
  {
    sub_10000B3DC(&qword_10021E510, &qword_1001B6008);
    sub_10000D1EC(&qword_10021E580, &qword_10021E520, &qword_1001B6018, &unk_1001BA2F8);
    sub_10000D1EC(&qword_10021E588, &qword_10021E4F0, &qword_1001B5FE8, &unk_1001BA2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E578);
  }

  return result;
}

unint64_t sub_1000E1060()
{
  result = qword_10021E590;
  if (!qword_10021E590)
  {
    sub_10000B3DC(&qword_10021E4D8, &unk_1001B5FD0);
    sub_10000D1EC(&qword_10021E598, &qword_10021E4E8, &qword_1001B5FE0, &unk_1001B07F8);
    sub_10000D1EC(&qword_10021E5A0, &qword_10021E4C8, &qword_1001B5FC0, &unk_1001B0078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E590);
  }

  return result;
}

unint64_t sub_1000E1144()
{
  result = qword_10021E5A8;
  if (!qword_10021E5A8)
  {
    sub_10000B3DC(&qword_10021E4B8, &qword_1001B5FB0);
    sub_10000D1EC(&qword_10021E568, &qword_10021E4C0, &qword_1001B5FB8, &unk_1001BA2F8);
    sub_1000E122C(&qword_10021B9D8, type metadata accessor for ErrorView, &unk_1001BCC3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E5A8);
  }

  return result;
}

uint64_t sub_1000E122C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000E1274()
{
  result = qword_10021E5B0;
  if (!qword_10021E5B0)
  {
    sub_10000B3DC(&qword_10021E528, &qword_1001B6020);
    sub_1000E0EF4();
    sub_1000E1144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E5B0);
  }

  return result;
}

uint64_t sub_1000E1300(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = type metadata accessor for Sport();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1 + v2, 1, 1, v3);
  v5 = (v1 + *(*v1 + 104));
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v1 + *(*v1 + 112)) = 1;
  *(v1 + *(*v1 + 120)) = _swiftEmptyArrayStorage;
  v6 = *(*v1 + 128);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + *(*v1 + 136)) = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 64);
  sub_10008319C(&v31, v30);
  sub_1000831F8(v35);
  v8 = (v1 + *(*v1 + 152));
  v9 = v34;
  v8[2] = v33;
  v8[3] = v9;
  v10 = v32;
  *v8 = v31;
  v8[1] = v10;
  v11 = (v1 + *(*v1 + 160));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + *(*v1 + 168));
  v13 = objc_opt_self();
  v14 = [v13 mainBundle];
  v36._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  v15._object = 0x80000001001BF370;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v36);

  *v12 = v17;
  v18 = (v1 + *(*v1 + 176));
  v19 = [v13 mainBundle];
  v37._object = 0xE000000000000000;
  v20._object = 0x80000001001C0320;
  v20._countAndFlagsBits = 0xD000000000000029;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v37);

  *v18 = v22;
  v23 = (v1 + *(*v1 + 184));
  v24 = [v13 mainBundle];
  v38._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD000000000000037;
  v25._object = 0x80000001001C0350;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v38);

  *v23 = v27;
  ObservationRegistrar.init()();
  (*(v4 + 32))(v1 + *(*v1 + 144), a1, v3);
  return v1;
}

uint64_t sub_1000E16BC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000E16EC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000E171C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E1788()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D890;

  return sub_1000E0760((v0 + 16));
}

unint64_t sub_1000E183C()
{
  result = qword_10021E5E0;
  if (!qword_10021E5E0)
  {
    sub_10000B3DC(&qword_10021E5E8, &qword_1001B6170);
    sub_100080A3C();
    sub_1000E1274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E5E0);
  }

  return result;
}

uint64_t sub_1000E18CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000E18F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000E1914(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000E195C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E19DC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (v5)
  {
    if (*(v5 + 88) && *(v5 + 80) == 1)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      v15 = *(v0 + 64);
      v9 = *(v0 + 56);
      v14 = v9;
      if (v15 != 1)
      {

        static os_log_type_t.fault.getter();
        v10 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10000D52C(&v14, &qword_10021E658, &qword_1001B62D0);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v9) = v13[15];
      }

      v11 = v9 ^ 1;
      return v11 & 1;
    }

LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000E4B68(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000E1C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ScrollViewProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  static Axis.Set.horizontal.getter();
  v16 = a2;
  sub_100009F70(&qword_10021E600, &qword_1001B6280);
  sub_1000E25AC();
  ScrollView.init(_:showsIndicators:content:)();
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v9 = (*(v7 + 80) + 81) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v11 = *(a2 + 48);
  *(v10 + 48) = *(a2 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a2 + 64);
  v12 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v12;
  (*(v7 + 32))(v10 + v9, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v13 = (a3 + *(sub_100009F70(&qword_10021E620, &qword_1001B6290) + 36));
  *v13 = sub_1000E2754;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  return sub_1000E256C(a2, v17);
}

uint64_t sub_1000E1E40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_100009F70(&qword_10021E618, &qword_1001B6288);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v21[1] = *(sub_100009F70(&qword_10021E628, &unk_1001B6298) + 44);
  v24 = *a1;
  v25 = v24;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 3);
  *(v6 + 48) = *(a1 + 2);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  sub_10000D58C(&v25, v23, &qword_10021E630, &qword_1001B62C0);
  sub_1000E256C(a1, v23);
  sub_100009F70(&qword_10021E630, &qword_1001B62C0);
  sub_100009F70(&qword_10021E638, &qword_1001B62C8);
  sub_10000D1EC(&qword_10021E640, &qword_10021E630, &qword_1001B62C0, &protocol conformance descriptor for [A]);
  sub_1000E3F5C();
  sub_10000D1EC(&qword_10021E650, &qword_10021E638, &qword_1001B62C8, &protocol conformance descriptor for IDView<A, B>);
  ForEach<>.init(_:id:content:)();
  v9 = static Edge.Set.horizontal.getter();
  sub_1000E19DC();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v22;
  sub_10000F618(v5, v22, &qword_10021E618, &qword_1001B6288);
  result = sub_100009F70(&qword_10021E600, &qword_1001B6280);
  v20 = v18 + *(result + 36);
  *v20 = v9;
  *(v20 + 8) = v11;
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_1000E20DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TabButton(0);
  __chkstk_darwin(v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_100009F70(&qword_10021E638, &qword_1001B62C8);
  __chkstk_darwin(v9);
  v11 = &v25[-v10 - 8];
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a2 + 16);
  if (v14 == 1)
  {
    if (v13 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!v14)
  {
    if (!v13)
    {
LABEL_11:
      v15 = 1;
      goto LABEL_12;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_12;
  }

  if (v13 < 2)
  {
    goto LABEL_8;
  }

  if (*(a2 + 8) == v12 && v14 == v13)
  {
    goto LABEL_11;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_12:
  v16 = swift_allocObject();
  v17 = *(a2 + 48);
  *(v16 + 48) = *(a2 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(a2 + 64);
  v18 = *(a2 + 16);
  *(v16 + 16) = *a2;
  *(v16 + 32) = v18;
  *(v16 + 88) = v12;
  *(v16 + 96) = v13;
  *v8 = v12;
  *(v8 + 1) = v13;
  v8[16] = v15 & 1;
  *(v8 + 3) = sub_1000E4070;
  *(v8 + 4) = v16;
  v19 = *(v6 + 28);
  *&v8[v19] = swift_getKeyPath();
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  swift_storeEnumTagMultiPayload();
  if (v13)
  {
    if (v13 == 1)
    {
      v20 = 0xEF6E6F697461636FLL;
      v21 = 0x4C746E6572727563;
    }

    else
    {
      v21 = v12;
      v20 = v13;
    }
  }

  else
  {
    v20 = 0xE300000000000000;
    v21 = 7105633;
  }

  sub_1000E40A4(v8, v11);
  v22 = &v11[*(v9 + 52)];
  *v22 = v21;
  v22[1] = v20;
  sub_10000F618(v11, a3, &qword_10021E638, &qword_1001B62C8);
  sub_1000E4108(v12, v13);
  sub_1000E4108(v12, v13);
  sub_1000E4108(v12, v13);
  return sub_1000E256C(a2, v25);
}

void sub_1000E2368(uint64_t *a1)
{
  if (a1[5])
  {
    v2 = *a1;

    v4 = sub_100105B10(v3, v2);
    v6 = v5;

    if (v6 != 2)
    {
      (a1[3])(v4, v6);
      if (v6)
      {
        if (v6 == 1)
        {
          sub_1000E3EE0(v4, 1uLL);
        }
      }

      else
      {
        sub_1000E3EE0(v4, 0);
      }

      static UnitPoint.trailing.getter();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
    }
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E4B68(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000E24D4@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = sub_1000E2564;
  a1[1] = v5;
  return sub_1000E256C(v10, v9);
}

unint64_t sub_1000E25AC()
{
  result = qword_10021E608;
  if (!qword_10021E608)
  {
    sub_10000B3DC(&qword_10021E600, &qword_1001B6280);
    sub_10000D1EC(&qword_10021E610, &qword_10021E618, &qword_1001B6288, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E608);
  }

  return result;
}

uint64_t sub_1000E2664()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_100027EB0(*(v0 + 72), *(v0 + 80));
  (*(v2 + 8))(v0 + ((v3 + 81) & ~v3), v1);

  return swift_deallocObject();
}

void sub_1000E2754()
{
  type metadata accessor for ScrollViewProxy();

  sub_1000E2368((v0 + 16));
}

void sub_1000E27B8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x80000001001C09A0;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10021E5F0 = v3;
}

uint64_t sub_1000E285C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_100009F70(&qword_10021E708, &qword_1001B6370);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v23 = sub_100009F70(&qword_10021E710, &qword_1001B6378);
  __chkstk_darwin(v23);
  v22 = &v22 - v5;
  v26 = sub_100009F70(&qword_10021E718, &qword_1001B6380);
  __chkstk_darwin(v26);
  v7 = &v22 - v6;
  v8 = sub_100009F70(&qword_10021E720, &qword_1001B6388);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v25 = sub_100009F70(&qword_10021E728, &qword_1001B6390);
  __chkstk_darwin(v25);
  v12 = &v22 - v11;
  v13 = sub_100009F70(&qword_10021E730, &qword_1001B6398);
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  v24 = sub_100009F70(&qword_10021E738, &qword_1001B63A0);
  __chkstk_darwin(v24);
  v17 = &v22 - v16;
  v18 = v1[1];
  if (v18)
  {
    if (v18 == 1)
    {
      sub_1000E332C(v4);
      sub_1000E476C();
      v19 = v22;
      View.accessibilityIdentifier(_:)();
      sub_10000D52C(v4, &qword_10021E708, &qword_1001B6370);
      sub_10000D58C(v19, v10, &qword_10021E710, &qword_1001B6378);
      swift_storeEnumTagMultiPayload();
      sub_1000E46B8(&qword_10021E780, &qword_10021E738, &qword_1001B63A0, sub_1000E43AC);
      sub_1000E46B8(&qword_10021E788, &qword_10021E710, &qword_1001B6378, sub_1000E476C);
      _ConditionalContent<>.init(storage:)();
      sub_10000D58C(v12, v7, &qword_10021E728, &qword_1001B6390);
      swift_storeEnumTagMultiPayload();
      sub_1000E45D4();
      _ConditionalContent<>.init(storage:)();
      sub_10000D52C(v12, &qword_10021E728, &qword_1001B6390);
      return sub_10000D52C(v19, &qword_10021E710, &qword_1001B6378);
    }

    sub_1000E2F10(*v1, v18, v15);
    sub_1000E43AC();
    View.accessibilityIdentifier(_:)();
    sub_10000D52C(v15, &qword_10021E730, &qword_1001B6398);
    sub_10000D58C(v17, v7, &qword_10021E738, &qword_1001B63A0);
    swift_storeEnumTagMultiPayload();
    sub_1000E45D4();
    sub_1000E46B8(&qword_10021E780, &qword_10021E738, &qword_1001B63A0, sub_1000E43AC);
    _ConditionalContent<>.init(storage:)();
    v21 = v17;
  }

  else
  {
    if (qword_1002183F8 != -1)
    {
      swift_once();
    }

    sub_1000E2F10(xmmword_10021E5F0, *(&xmmword_10021E5F0 + 1), v15);
    sub_1000E43AC();
    View.accessibilityIdentifier(_:)();
    sub_10000D52C(v15, &qword_10021E730, &qword_1001B6398);
    sub_10000D58C(v17, v10, &qword_10021E738, &qword_1001B63A0);
    swift_storeEnumTagMultiPayload();
    sub_1000E46B8(&qword_10021E780, &qword_10021E738, &qword_1001B63A0, sub_1000E43AC);
    sub_1000E46B8(&qword_10021E788, &qword_10021E710, &qword_1001B6378, sub_1000E476C);
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v12, v7, &qword_10021E728, &qword_1001B6390);
    swift_storeEnumTagMultiPayload();
    sub_1000E45D4();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v12, &qword_10021E728, &qword_1001B6390);
    v21 = v17;
  }

  return sub_10000D52C(v21, &qword_10021E738, &qword_1001B63A0);
}

uint64_t sub_1000E2F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v41 = type metadata accessor for ColorScheme();
  v6 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = sub_100009F70(&qword_10021E760, &qword_1001B63B0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v42 = sub_100009F70(&qword_10021E750, &qword_1001B63A8);
  __chkstk_darwin(v42);
  v43 = &v41 - v16;
  v45 = a1;
  v46 = a2;
  v47 = v3;

  sub_100009F70(&qword_10021AFE8, &qword_1001B0A38);
  sub_100071294();
  Button.init(action:label:)();
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v17 = &v15[*(v13 + 44)];
  *v17 = a1;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  if (*(v3 + 16) == 1)
  {
    v22 = static Color.primary.getter();
  }

  else
  {
    type metadata accessor for TabButton(0);
    sub_100024640(v11);
    v23 = v41;
    (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v41);
    v24 = static ColorScheme.== infix(_:_:)();
    v25 = *(v6 + 8);
    v25(v9, v23);
    v25(v11, v23);
    v26 = objc_opt_self();
    if (v24)
    {
      v27 = [v26 systemGray6Color];
    }

    else
    {
      v27 = [v26 systemGray5Color];
    }

    v28 = v27;
    v22 = Color.init(uiColor:)();
  }

  v29 = v22;
  v30 = v43;
  v31 = static Edge.Set.all.getter();
  sub_10000F618(v15, v30, &qword_10021E760, &qword_1001B63B0);
  v32 = v30 + *(v42 + 36);
  *v32 = v29;
  *(v32 + 8) = v31;
  if (qword_100218430 != -1)
  {
    swift_once();
  }

  v33 = qword_100230600;
  v34 = sub_100009F70(&qword_10021E730, &qword_1001B6398);
  v35 = v44;
  v36 = (v44 + *(v34 + 36));
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = v33;
  v36[1] = v33;
  *(v36 + *(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)) = 256;
  return sub_10000F618(v30, v35, &qword_10021E750, &qword_1001B63A8);
}

uint64_t sub_1000E332C@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v88 = type metadata accessor for AccessibilityTraits();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ColorScheme();
  v68 = *(v69 - 8);
  v3 = __chkstk_darwin(v69);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v66 - v5;
  v6 = type metadata accessor for TitleAndIconLabelStyle();
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  __chkstk_darwin(v6);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymbolVariants();
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021E800, &qword_1001B63E8);
  __chkstk_darwin(v12 - 8);
  v14 = &v66 - v13;
  v15 = type metadata accessor for LocationButton();
  v71 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100009F70(&qword_10021E7D8, &qword_1001B63E0);
  v19 = *(v18 - 8);
  v72 = v18;
  v73 = v19;
  __chkstk_darwin(v18);
  v21 = &v66 - v20;
  v22 = sub_100009F70(&qword_10021E7D0, &qword_1001B63D8);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v70 = &v66 - v24;
  v77 = sub_100009F70(&qword_10021E7C0, &qword_1001B63D0);
  __chkstk_darwin(v77);
  v81 = &v66 - v25;
  v80 = sub_100009F70(&qword_10021E7B0, &qword_1001B63C8);
  __chkstk_darwin(v80);
  v82 = &v66 - v26;
  v83 = sub_100009F70(&qword_10021E7A0, &qword_1001B63C0);
  __chkstk_darwin(v83);
  v84 = &v66 - v27;
  static LocationButton.Title.currentLocation.getter();
  v28 = type metadata accessor for LocationButton.Title();
  (*(*(v28 - 8) + 56))(v14, 0, 1, v28);

  LocationButton.init(_:action:)();
  static SymbolVariants.fill.getter();
  v29 = sub_1000E4B68(&qword_10021E7E0, &type metadata accessor for LocationButton, &protocol conformance descriptor for LocationButton);
  View.symbolVariant(_:)();
  (*(v74 + 8))(v11, v75);
  (*(v71 + 8))(v17, v15);
  v30 = v76;
  TitleAndIconLabelStyle.init()();
  v89 = v15;
  v90 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1000E4B68(&qword_10021E7E8, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
  v31 = v70;
  v32 = v72;
  v33 = v78;
  View.labelStyle<A>(_:)();
  (*(v79 + 8))(v30, v33);
  (*(v73 + 8))(v21, v32);
  v34 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v36 = &v31[*(v23 + 44)];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = *(v1 + 16);
  if (v37 == 1)
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v38 = qword_100230560;
  }

  else
  {
    v38 = static Color.primary.getter();
  }

  v39 = v82;
  v40 = swift_getKeyPath();
  v41 = v31;
  v42 = v81;
  sub_10000F618(v41, v81, &qword_10021E7D0, &qword_1001B63D8);
  v43 = (v42 + *(v77 + 36));
  *v43 = v40;
  v43[1] = v38;
  if (v37)
  {
    v44 = static Color.primary.getter();
  }

  else
  {
    type metadata accessor for TabButton(0);
    v45 = v66;
    sub_100024640(v66);
    v46 = v68;
    v47 = v67;
    v48 = v69;
    (*(v68 + 104))(v67, enum case for ColorScheme.light(_:), v69);
    v49 = static ColorScheme.== infix(_:_:)();
    v50 = *(v46 + 8);
    v50(v47, v48);
    v50(v45, v48);
    v51 = objc_opt_self();
    if (v49)
    {
      v52 = [v51 systemGray6Color];
    }

    else
    {
      v52 = [v51 systemGray5Color];
    }

    v53 = v52;
    v44 = Color.init(uiColor:)();
  }

  v54 = v44;
  v55 = swift_getKeyPath();
  v89 = v54;
  v56 = AnyShapeStyle.init<A>(_:)();
  sub_10000F618(v42, v39, &qword_10021E7C0, &qword_1001B63D0);
  v57 = (v39 + *(v80 + 36));
  *v57 = v55;
  v57[1] = v56;
  if (qword_100218430 != -1)
  {
    swift_once();
  }

  v58 = qword_100230600;
  v59 = v84;
  v60 = &v84[*(v83 + 36)];
  v61 = *(type metadata accessor for RoundedRectangle() + 20);
  v62 = enum case for RoundedCornerStyle.continuous(_:);
  v63 = type metadata accessor for RoundedCornerStyle();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  *v60 = v58;
  v60[1] = v58;
  *(v60 + *(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)) = 256;
  sub_10000F618(v39, v59, &qword_10021E7B0, &qword_1001B63C8);
  v64 = v85;
  static AccessibilityTraits.isButton.getter();
  sub_1000E479C();
  View.accessibility(addTraits:)();
  (*(v86 + 8))(v64, v88);
  return sub_10000D52C(v59, &qword_10021E7A0, &qword_1001B63C0);
}

double sub_1000E3D38@<D0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100027068();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.footnote.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10000D60C(v5, v7, v9 & 1);

  if (*(a3 + 16) == 1)
  {
    v15 = [objc_opt_self() systemBackgroundColor];
    Color.init(uiColor:)();
  }

  else
  {
    static Color.primary.getter();
  }

  v16 = Text.foregroundStyle<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10000D60C(v10, v12, v14 & 1);

  v23 = static Edge.Set.horizontal.getter();
  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = v20 & 1;
  *(a4 + 24) = v22;
  *(a4 + 32) = v23;
  result = 0.0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 1;
  return result;
}

uint64_t sub_1000E3EE0(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_10008324C(a1, a2);
  }

  return a1;
}

uint64_t sub_1000E3EF0()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_100027EB0(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_1000E3F5C()
{
  result = qword_10021E648;
  if (!qword_10021E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E648);
  }

  return result;
}

uint64_t type metadata accessor for TabButton(uint64_t a1)
{
  result = qword_10021E6B8;
  if (!qword_10021E6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E3FFC()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_100027EB0(*(v0 + 72), *(v0 + 80));
  if (*(v0 + 96) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E40A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4108(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1000E4130(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_100219838, &qword_1001B2330);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000E4200(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100219838, &qword_1001B2330);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000E42B0(uint64_t a1)
{
  sub_100018E0C();
  if (v1 <= 0x3F)
  {
    sub_100027A4C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000E43AC()
{
  result = qword_10021E740;
  if (!qword_10021E740)
  {
    sub_10000B3DC(&qword_10021E730, &qword_1001B6398);
    sub_1000E4464();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E740);
  }

  return result;
}

unint64_t sub_1000E4464()
{
  result = qword_10021E748;
  if (!qword_10021E748)
  {
    sub_10000B3DC(&qword_10021E750, &qword_1001B63A8);
    sub_1000E451C();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E748);
  }

  return result;
}

unint64_t sub_1000E451C()
{
  result = qword_10021E758;
  if (!qword_10021E758)
  {
    sub_10000B3DC(&qword_10021E760, &qword_1001B63B0);
    sub_10000D1EC(&qword_10021E768, &qword_10021E770, &qword_1001B63B8, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E758);
  }

  return result;
}

unint64_t sub_1000E45D4()
{
  result = qword_10021E778;
  if (!qword_10021E778)
  {
    sub_10000B3DC(&qword_10021E728, &qword_1001B6390);
    sub_1000E46B8(&qword_10021E780, &qword_10021E738, &qword_1001B63A0, sub_1000E43AC);
    sub_1000E46B8(&qword_10021E788, &qword_10021E710, &qword_1001B6378, sub_1000E476C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E778);
  }

  return result;
}

uint64_t sub_1000E46B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    sub_1000E4B68(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E479C()
{
  result = qword_10021E798;
  if (!qword_10021E798)
  {
    sub_10000B3DC(&qword_10021E7A0, &qword_1001B63C0);
    sub_1000E4854();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E798);
  }

  return result;
}

unint64_t sub_1000E4854()
{
  result = qword_10021E7A8;
  if (!qword_10021E7A8)
  {
    sub_10000B3DC(&qword_10021E7B0, &qword_1001B63C8);
    sub_1000E490C();
    sub_10000D1EC(&qword_10021E7F0, &qword_10021E7F8, &qword_1001B7CA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E7A8);
  }

  return result;
}

unint64_t sub_1000E490C()
{
  result = qword_10021E7B8;
  if (!qword_10021E7B8)
  {
    sub_10000B3DC(&qword_10021E7C0, &qword_1001B63D0);
    sub_1000E49C4();
    sub_10000D1EC(&qword_100219128, &qword_100219130, &qword_1001ADD38, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E7B8);
  }

  return result;
}

unint64_t sub_1000E49C4()
{
  result = qword_10021E7C8;
  if (!qword_10021E7C8)
  {
    sub_10000B3DC(&qword_10021E7D0, &qword_1001B63D8);
    sub_10000B3DC(&qword_10021E7D8, &qword_1001B63E0);
    type metadata accessor for TitleAndIconLabelStyle();
    type metadata accessor for LocationButton();
    sub_1000E4B68(&qword_10021E7E0, &type metadata accessor for LocationButton, &protocol conformance descriptor for LocationButton);
    swift_getOpaqueTypeConformance2();
    sub_1000E4B68(&qword_10021E7E8, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8, &unk_1001ADC10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E7C8);
  }

  return result;
}

uint64_t sub_1000E4B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000E4BD8()
{
  result = qword_10021E808;
  if (!qword_10021E808)
  {
    sub_10000B3DC(&qword_10021E810, &unk_1001B6480);
    sub_1000E45D4();
    sub_1000E46B8(&qword_10021E780, &qword_10021E738, &qword_1001B63A0, sub_1000E43AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E808);
  }

  return result;
}

uint64_t sub_1000E4D6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    type metadata accessor for DesignTimeSong(0);
    if (a1 != a2)
    {
      do
      {
        while (1)
        {
          v6 = MusicItemID.init(stringLiteral:)();
          v8 = v7;
          if (v6 != MusicItemID.init(stringLiteral:)() || v8 != v9)
          {
            break;
          }

          if (!--v2)
          {
            return 1;
          }
        }

        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        --v2;
      }

      while (v2);
    }
  }

  return 1;
}

uint64_t sub_1000E4E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeMusicPlaylist(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1000E7E94(v13, v10, type metadata accessor for DesignTimeMusicPlaylist);
        sub_1000E7E94(v14, v7, type metadata accessor for DesignTimeMusicPlaylist);
        v16 = sub_10018A9C0(v10, v7);
        sub_1000E7EFC(v7, type metadata accessor for DesignTimeMusicPlaylist);
        sub_1000E7EFC(v10, type metadata accessor for DesignTimeMusicPlaylist);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1000E5030(uint64_t a1, uint64_t a2)
{
  v79 = type metadata accessor for URL();
  v4 = *(v79 - 8);
  __chkstk_darwin(v79);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v7 - 8);
  v70 = &v62 - v8;
  v71 = sub_100009F70(&qword_10021E8E8, &unk_1001B6570);
  __chkstk_darwin(v71);
  v10 = &v62 - v9;
  v74 = type metadata accessor for DesignTimeImage(0);
  v11 = *(v74 - 8);
  __chkstk_darwin(v74);
  v75 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v13 - 8);
  v15 = &v62 - v14;
  v72 = sub_100009F70(&qword_10021E8F8, &unk_1001B6580);
  __chkstk_darwin(v72);
  v80 = &v62 - v16;
  v76 = type metadata accessor for DesignTimeMusicAlbum(0);
  v17 = __chkstk_darwin(v76);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v22 = (&v62 - v21);
  v23 = *(a1 + 16);
  if (v23 == *(a2 + 16))
  {
    if (!v23 || a1 == a2)
    {
      return 1;
    }

    v63 = v6;
    v73 = v15;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v77 = a2 + v24;
    v78 = a1 + v24;
    v25 = (v11 + 48);
    v26 = (v4 + 48);
    v62 = (v4 + 32);
    v64 = (v4 + 8);
    v66 = *(v20 + 72);
    v67 = (v11 + 48);
    v68 = v10;
    v69 = (v4 + 48);
    while (1)
    {
      sub_1000E7E94(v78, v22, type metadata accessor for DesignTimeMusicAlbum);
      sub_1000E7E94(v77, v19, type metadata accessor for DesignTimeMusicAlbum);
      v27 = *v22 == *v19 && v22[1] == v19[1];
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v28 = v22[2] == v19[2] && v22[3] == v19[3];
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v29 = *(v76 + 24);
      v30 = *(v72 + 48);
      v31 = v80;
      sub_10000D58C(v22 + v29, v80, &qword_10021E8F0, &unk_1001B8A10);
      sub_10000D58C(v19 + v29, v31 + v30, &qword_10021E8F0, &unk_1001B8A10);
      v32 = *v25;
      v33 = v74;
      if ((*v25)(v31, 1, v74) == 1)
      {
        if (v32(v80 + v30, 1, v33) != 1)
        {
          goto LABEL_40;
        }

        sub_10000D52C(v80, &qword_10021E8F0, &unk_1001B8A10);
      }

      else
      {
        v34 = v80;
        v35 = v73;
        sub_10000D58C(v80, v73, &qword_10021E8F0, &unk_1001B8A10);
        if (v32(v34 + v30, 1, v33) == 1)
        {
          sub_1000E7EFC(v35, type metadata accessor for DesignTimeImage);
LABEL_40:
          v59 = &qword_10021E8F8;
          v60 = &unk_1001B6580;
          v61 = v80;
LABEL_43:
          sub_10000D52C(v61, v59, v60);
          break;
        }

        v36 = v80 + v30;
        v37 = v75;
        sub_100028E88(v36, v75);
        v26 = v69;
        if ((*v35 != *v37 || v35[1] != v37[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
        {
LABEL_38:
          sub_1000E7EFC(v75, type metadata accessor for DesignTimeImage);
          sub_1000E7EFC(v73, type metadata accessor for DesignTimeImage);
          v59 = &qword_10021E8F0;
          v60 = &unk_1001B8A10;
          v61 = v80;
          goto LABEL_43;
        }

        v38 = *(v33 + 24);
        v39 = *(v75 + v38);
        if (*(v73 + v38))
        {
          if (!v39)
          {
            goto LABEL_38;
          }

          type metadata accessor for CGColor(0);
          sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
          v40 = v39;
          v33 = v74;
          v41 = static _CFObject.== infix(_:_:)();

          if ((v41 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else if (v39)
        {
          goto LABEL_38;
        }

        v42 = *(v33 + 28);
        v43 = v73;
        v44 = *(v73 + v42);
        v45 = *(v75 + v42);
        sub_1000E7EFC(v75, type metadata accessor for DesignTimeImage);
        sub_1000E7EFC(v43, type metadata accessor for DesignTimeImage);
        sub_10000D52C(v80, &qword_10021E8F0, &unk_1001B8A10);
        v27 = v44 == v45;
        v25 = v67;
        if (!v27)
        {
          break;
        }
      }

      v46 = *(v76 + 28);
      v47 = *(v71 + 48);
      v48 = v68;
      sub_10000D58C(v22 + v46, v68, qword_100218748, &unk_1001AD110);
      sub_10000D58C(v19 + v46, v48 + v47, qword_100218748, &unk_1001AD110);
      v49 = *v26;
      if ((*v26)(v48, 1, v79) == 1)
      {
        if (v49(v48 + v47, 1, v79) != 1)
        {
          goto LABEL_42;
        }

        sub_10000D52C(v48, qword_100218748, &unk_1001AD110);
        sub_1000E7EFC(v19, type metadata accessor for DesignTimeMusicAlbum);
        sub_1000E7EFC(v22, type metadata accessor for DesignTimeMusicAlbum);
      }

      else
      {
        v50 = v70;
        sub_10000D58C(v48, v70, qword_100218748, &unk_1001AD110);
        if (v49(v48 + v47, 1, v79) == 1)
        {
          (*v64)(v50, v79);
LABEL_42:
          v59 = &qword_10021E8E8;
          v60 = &unk_1001B6570;
          v61 = v48;
          goto LABEL_43;
        }

        v51 = v63;
        v52 = v79;
        (*v62)(v63, v48 + v47, v79);
        sub_1000E7E4C(&qword_10021D560, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v65 = dispatch thunk of static Equatable.== infix(_:_:)();
        v53 = v50;
        v54 = *v64;
        v55 = v51;
        v56 = v69;
        (*v64)(v55, v52);
        v57 = v53;
        v26 = v56;
        v54(v57, v52);
        v25 = v67;
        sub_10000D52C(v48, qword_100218748, &unk_1001AD110);
        sub_1000E7EFC(v19, type metadata accessor for DesignTimeMusicAlbum);
        sub_1000E7EFC(v22, type metadata accessor for DesignTimeMusicAlbum);
        if ((v65 & 1) == 0)
        {
          return 0;
        }
      }

      v77 += v66;
      v78 += v66;
      if (!--v23)
      {
        return 1;
      }
    }

    sub_1000E7EFC(v19, type metadata accessor for DesignTimeMusicAlbum);
    sub_1000E7EFC(v22, type metadata accessor for DesignTimeMusicAlbum);
  }

  return 0;
}

uint64_t sub_1000E59A8(uint64_t a1, uint64_t a2)
{
  v50 = type metadata accessor for DesignTimeImage(0);
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v55 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v52 = sub_100009F70(&qword_10021E8F8, &unk_1001B6580);
  __chkstk_darwin(v52);
  v10 = &v45 - v9;
  v51 = type metadata accessor for DesignTimeArtist(0);
  v11 = __chkstk_darwin(v51);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v16 = (&v45 - v15);
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      return 1;
    }

    v54 = v8;
    v49 = v10;
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = a1 + v18;
    v56 = a2 + v18;
    v20 = (v4 + 48);
    v21 = *(v14 + 72);
    v47 = &v45 - v15;
    v48 = v21;
    v22 = v50;
    v46 = (v4 + 48);
    while (1)
    {
      sub_1000E7E94(v19, v16, type metadata accessor for DesignTimeArtist);
      sub_1000E7E94(v56, v13, type metadata accessor for DesignTimeArtist);
      v27 = *v16 == *v13 && v16[1] == v13[1];
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v28 = v16[2] == v13[2] && v16[3] == v13[3];
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v53 = v19;
      v29 = v20;
      v30 = *(v51 + 24);
      v31 = *(v52 + 48);
      v32 = v49;
      sub_10000D58C(v16 + v30, v49, &qword_10021E8F0, &unk_1001B8A10);
      sub_10000D58C(v13 + v30, v32 + v31, &qword_10021E8F0, &unk_1001B8A10);
      v33 = *v29;
      if ((*v29)(v32, 1, v22) == 1)
      {
        if (v33(v32 + v31, 1, v22) != 1)
        {
          goto LABEL_34;
        }

        v20 = v29;
        sub_10000D52C(v32, &qword_10021E8F0, &unk_1001B8A10);
        sub_1000E7EFC(v13, type metadata accessor for DesignTimeArtist);
        sub_1000E7EFC(v16, type metadata accessor for DesignTimeArtist);
      }

      else
      {
        v34 = v54;
        sub_10000D58C(v32, v54, &qword_10021E8F0, &unk_1001B8A10);
        if (v33(v32 + v31, 1, v22) == 1)
        {
          sub_1000E7EFC(v34, type metadata accessor for DesignTimeImage);
          v16 = v47;
LABEL_34:
          v42 = &qword_10021E8F8;
          v43 = &unk_1001B6580;
LABEL_35:
          sub_10000D52C(v32, v42, v43);
          break;
        }

        v35 = v32 + v31;
        v36 = v55;
        sub_100028E88(v35, v55);
        v37 = v34[1];
        v27 = *v34 == *v36;
        v16 = v47;
        if ((!v27 || v37 != v36[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
        {
LABEL_31:
          sub_1000E7EFC(v55, type metadata accessor for DesignTimeImage);
          sub_1000E7EFC(v54, type metadata accessor for DesignTimeImage);
          v42 = &qword_10021E8F0;
          v43 = &unk_1001B8A10;
          goto LABEL_35;
        }

        v38 = *(v22 + 24);
        v39 = *(v55 + v38);
        if (*(v54 + v38))
        {
          if (!v39)
          {
            goto LABEL_31;
          }

          type metadata accessor for CGColor(0);
          sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
          v40 = v39;
          v22 = v50;
          v41 = static _CFObject.== infix(_:_:)();

          if ((v41 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (v39)
        {
          goto LABEL_31;
        }

        v23 = *(v22 + 28);
        v24 = v54;
        v25 = *(v54 + v23);
        v26 = *(v55 + v23);
        sub_1000E7EFC(v55, type metadata accessor for DesignTimeImage);
        sub_1000E7EFC(v24, type metadata accessor for DesignTimeImage);
        sub_10000D52C(v32, &qword_10021E8F0, &unk_1001B8A10);
        sub_1000E7EFC(v13, type metadata accessor for DesignTimeArtist);
        sub_1000E7EFC(v16, type metadata accessor for DesignTimeArtist);
        v27 = v25 == v26;
        v20 = v46;
        if (!v27)
        {
          return 0;
        }
      }

      v56 += v48;
      v19 = v53 + v48;
      if (!--v17)
      {
        return 1;
      }
    }

    sub_1000E7EFC(v13, type metadata accessor for DesignTimeArtist);
    sub_1000E7EFC(v16, type metadata accessor for DesignTimeArtist);
  }

  return 0;
}

uint64_t sub_1000E5FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1000E6084(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for DesignTimeImage(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  String.hash(into:)();
  String.hash(into:)();
  v15 = v1[4];
  Hasher._combine(_:)(*(v15 + 16));
  for (i = *(v15 + 16); i; --i)
  {
    MusicItemID.init(stringLiteral:)();
    String.hash(into:)();
  }

  sub_1000E6D8C(a1, v1[5]);
  sub_1000E6810(a1, v1[6]);
  v17 = type metadata accessor for DesignTimeMusicKitArtist(0);
  sub_10000D58C(v1 + *(v17 + 36), v14, &qword_10021E8F0, &unk_1001B8A10);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
    v19 = v23;
    v18 = v24;
  }

  else
  {
    sub_100028E88(v14, v11);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v18 = v24;
    dispatch thunk of Hashable.hash(into:)();
    v19 = v23;
    if (*&v11[*(v8 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v11[*(v8 + 28)]);
    sub_1000E7EFC(v11, type metadata accessor for DesignTimeImage);
  }

  sub_10000D58C(v1 + *(v17 + 40), v7, qword_100218748, &unk_1001AD110);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = v22;
    (*(v19 + 32))(v22, v7, v18);
    Hasher._combine(_:)(1u);
    sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v19 + 8))(v20, v18);
  }
}

uint64_t sub_1000E65A0(uint64_t a1)
{
  result = sub_1000E7E4C(&qword_10021E888, type metadata accessor for DesignTimeMusicKitArtist, &unk_1001B64AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeMusicKitArtist(uint64_t a1)
{
  result = qword_10021E958;
  if (!qword_10021E958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E66C0(uint64_t a1)
{
  *(a1 + 8) = sub_1000E7E4C(&qword_10021E8D0, type metadata accessor for DesignTimeMusicKitArtist, &unk_1001B6500);
  result = sub_1000E7E4C(&qword_10021E8D8, type metadata accessor for DesignTimeMusicKitArtist, &unk_1001B64C8);
  *(a1 + 16) = result;
  return result;
}

Swift::Int sub_1000E678C()
{
  Hasher.init(_seed:)();
  sub_1000E6084(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E67D0()
{
  Hasher.init(_seed:)();
  sub_1000E6084(v1);
  return Hasher._finalize()();
}

void sub_1000E6810(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v5 - 8);
  v33 = &v24 - v6;
  v7 = type metadata accessor for DesignTimeImage(0);
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v30 = type metadata accessor for DesignTimeMusicAlbum(0);
  v13 = *(v30 - 8);
  __chkstk_darwin(v30);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  Hasher._combine(_:)(v16);
  if (v16)
  {
    v17 = v13;
    v18 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v30 + 24);
    v30 = *(v30 + 28);
    v31 = v19;
    v20 = (v28 + 48);
    v26 = (v28 + 32);
    v25 = (v28 + 8);
    v28 = *(v17 + 72);
    v29 = (v32 + 48);
    v32 = v7;
    do
    {
      sub_1000E7E94(v18, v15, type metadata accessor for DesignTimeMusicAlbum);
      String.hash(into:)();
      String.hash(into:)();
      sub_10000D58C(&v15[v31], v12, &qword_10021E8F0, &unk_1001B8A10);
      if ((*v29)(v12, 1, v7) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        sub_100028E88(v12, v9);
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        if (*&v9[*(v7 + 24)])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CGColor(0);
          sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v7 = v32;
        Hasher._combine(_:)(v9[*(v32 + 28)]);
        sub_1000E7EFC(v9, type metadata accessor for DesignTimeImage);
      }

      v21 = v33;
      sub_10000D58C(&v15[v30], v33, qword_100218748, &unk_1001AD110);
      if ((*v20)(v21, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v22 = v27;
        (*v26)(v27, v21, v3);
        Hasher._combine(_:)(1u);
        sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        v23 = v22;
        v7 = v32;
        (*v25)(v23, v3);
      }

      sub_1000E7EFC(v15, type metadata accessor for DesignTimeMusicAlbum);
      v18 += v28;
      --v16;
    }

    while (v16);
  }
}

void sub_1000E6D8C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for DesignTimeImage(0);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v10 - 8);
  v39 = &v27 - v11;
  v12 = type metadata accessor for DesignTimeMusicPlaylist(0);
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  Hasher._combine(_:)(v16);
  v38 = v16;
  if (v16)
  {
    v17 = a2;
    v18 = 0;
    v37 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = v12[9];
    v35 = v12[8];
    v36 += 6;
    v33 = v12[10];
    v34 = v19;
    v20 = v28;
    v31 = *(v13 + 72);
    v32 = (v28 + 6);
    ++v28;
    v29 = (v20 + 4);
    do
    {
      sub_1000E7E94(v37 + v31 * v18, v15, type metadata accessor for DesignTimeMusicPlaylist);
      String.hash(into:)();
      String.hash(into:)();
      if (*(v15 + 5))
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!*(v15 + 7))
        {
          goto LABEL_8;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!*(v15 + 7))
        {
LABEL_8:
          Hasher._combine(_:)(0);
          goto LABEL_9;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_9:
      v21 = v39;
      sub_10000D58C(&v15[v35], v39, &qword_10021E8F0, &unk_1001B8A10);
      if ((*v36)(v21, 1, v8) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v22 = v40;
        sub_100028E88(v21, v40);
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        if (*(v22 + *(v8 + 24)))
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CGColor(0);
          sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v23 = v40;
        Hasher._combine(_:)(*(v40 + *(v8 + 28)));
        sub_1000E7EFC(v23, type metadata accessor for DesignTimeImage);
      }

      sub_10000D58C(&v15[v34], v7, qword_100218748, &unk_1001AD110);
      if ((*v32)(v7, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v24 = v30;
        (*v29)(v30, v7, v3);
        Hasher._combine(_:)(1u);
        sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        (*v28)(v24, v3);
      }

      v25 = *&v15[v33];
      Hasher._combine(_:)(*(v25 + 16));
      for (i = *(v25 + 16); i; --i)
      {
        MusicItemID.init(stringLiteral:)();
        String.hash(into:)();
      }

      ++v18;
      sub_1000E7EFC(v15, type metadata accessor for DesignTimeMusicPlaylist);
    }

    while (v18 != v38);
  }
}

void sub_1000E7418(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DesignTimeImage(0);
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for DesignTimeArtist(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  Hasher._combine(_:)(v13);
  if (v13)
  {
    v14 = *(v9 + 24);
    v15 = v10;
    v16 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = (v20 + 48);
    v18 = *(v15 + 72);
    v19 = v14;
    v20 = v18;
    do
    {
      sub_1000E7E94(v16, v12, type metadata accessor for DesignTimeArtist);
      String.hash(into:)();
      String.hash(into:)();
      sub_10000D58C(&v12[v14], v8, &qword_10021E8F0, &unk_1001B8A10);
      if ((*v17)(v8, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
        sub_1000E7EFC(v12, type metadata accessor for DesignTimeArtist);
      }

      else
      {
        sub_100028E88(v8, v5);
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        type metadata accessor for URL();
        sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        dispatch thunk of Hashable.hash(into:)();
        if (*&v5[*(v3 + 24)])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CGColor(0);
          sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._combine(_:)(v5[*(v3 + 28)]);
        sub_1000E7EFC(v12, type metadata accessor for DesignTimeArtist);
        sub_1000E7EFC(v5, type metadata accessor for DesignTimeImage);
        v14 = v19;
      }

      v16 += v20;
      --v13;
    }

    while (v13);
  }
}

BOOL sub_1000E77D8(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v6 - 8);
  v45 = &v42 - v7;
  v8 = sub_100009F70(&qword_10021E8E8, &unk_1001B6570);
  __chkstk_darwin(v8);
  v46 = &v42 - v9;
  v10 = type metadata accessor for DesignTimeImage(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
  __chkstk_darwin(v14 - 8);
  v16 = (&v42 - v15);
  v17 = sub_100009F70(&qword_10021E8F8, &unk_1001B6580);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_1000E4D6C(a1[4], a2[4]) & 1) == 0 || (sub_1000E4E78(a1[5], a2[5]) & 1) == 0 || (sub_1000E5030(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v43 = v4;
  v42 = type metadata accessor for DesignTimeMusicKitArtist(0);
  v20 = *(v42 + 36);
  v21 = *(v17 + 48);
  sub_10000D58C(a1 + v20, v19, &qword_10021E8F0, &unk_1001B8A10);
  v22 = a2 + v20;
  v23 = v21;
  sub_10000D58C(v22, &v19[v21], &qword_10021E8F0, &unk_1001B8A10);
  v24 = *(v11 + 48);
  if (v24(v19, 1, v10) == 1)
  {
    if (v24(&v19[v23], 1, v10) == 1)
    {
      sub_10000D52C(v19, &qword_10021E8F0, &unk_1001B8A10);
      goto LABEL_16;
    }

LABEL_14:
    v25 = &qword_10021E8F8;
    v26 = &unk_1001B6580;
    v27 = v19;
LABEL_22:
    sub_10000D52C(v27, v25, v26);
    return 0;
  }

  sub_10000D58C(v19, v16, &qword_10021E8F0, &unk_1001B8A10);
  if (v24(&v19[v23], 1, v10) == 1)
  {
    sub_1000E7EFC(v16, type metadata accessor for DesignTimeImage);
    goto LABEL_14;
  }

  sub_100028E88(&v19[v23], v13);
  v28 = sub_100022244(v16, v13);
  sub_1000E7EFC(v13, type metadata accessor for DesignTimeImage);
  sub_1000E7EFC(v16, type metadata accessor for DesignTimeImage);
  sub_10000D52C(v19, &qword_10021E8F0, &unk_1001B8A10);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v29 = *(v42 + 40);
  v30 = *(v8 + 48);
  v31 = a1 + v29;
  v32 = v46;
  sub_10000D58C(v31, v46, qword_100218748, &unk_1001AD110);
  sub_10000D58C(a2 + v29, v32 + v30, qword_100218748, &unk_1001AD110);
  v33 = v47;
  v34 = *(v47 + 48);
  v35 = v43;
  if (v34(v32, 1, v43) != 1)
  {
    v36 = v45;
    sub_10000D58C(v32, v45, qword_100218748, &unk_1001AD110);
    if (v34(v32 + v30, 1, v35) == 1)
    {
      (*(v33 + 8))(v36, v35);
      goto LABEL_21;
    }

    v38 = v32 + v30;
    v39 = v44;
    (*(v33 + 32))(v44, v38, v35);
    sub_1000E7E4C(&qword_10021D560, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    v41 = *(v33 + 8);
    v41(v39, v35);
    v41(v36, v35);
    sub_10000D52C(v32, qword_100218748, &unk_1001AD110);
    return (v40 & 1) != 0;
  }

  if (v34(v32 + v30, 1, v35) != 1)
  {
LABEL_21:
    v25 = &qword_10021E8E8;
    v26 = &unk_1001B6570;
    v27 = v32;
    goto LABEL_22;
  }

  sub_10000D52C(v32, qword_100218748, &unk_1001AD110);
  return 1;
}

uint64_t sub_1000E7E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E7E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E7EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E7F70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(qword_100218748, &unk_1001AD110);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000E80C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021E8F0, &unk_1001B8A10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(qword_100218748, &unk_1001AD110);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000E81FC(uint64_t a1)
{
  sub_1000E83D0(319, &qword_10021E968, type metadata accessor for DesignTimeSong, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1000E83D0(319, &qword_10021E970, type metadata accessor for DesignTimeMusicPlaylist, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1000E83D0(319, &qword_10021E978, type metadata accessor for DesignTimeMusicAlbum, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1000E83D0(319, &qword_10021E980, type metadata accessor for DesignTimeImage, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000E83D0(319, &qword_100218E80, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000E83D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000E8434(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000E8580(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1000E9A94(a1);
  return v2;
}

uint64_t sub_1000E85C0@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000E86A8(KeyPath);

  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_1000E8748(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 96);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000E88E8()
{
  KeyPath = swift_getKeyPath();
  sub_1000E86A8(KeyPath);

  return *(v0 + *(*v0 + 104));
}

double sub_1000E8970(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v13 = *(v1 + v4);
  v12 = a1;
  v11 = *(v3 + 80);
  sub_10001EBF4();
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    *(v1 + v4) = a1;
  }

  else
  {
    __chkstk_darwin(v5);
    v10 = *(&v11 + 1);
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v9[2] = v1;
    LOBYTE(v10) = a1;
    sub_1000E8810(v8, sub_1000EBAA8, v9, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_1000E8AD0()
{
  v0 = sub_1000EB4B4();

  return v0;
}

uint64_t sub_1000E8B08(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 112));
  v7 = v6[1];
  v16 = *v6;
  v17 = v7;
  v14 = a1;
  v15 = a2;
  v13 = *(v5 + 80);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v2;
    v12[3] = a1;
    v12[4] = a2;
    sub_1000E8810(v11, sub_10007CCA4, v12, &type metadata for () + 8);
  }
}

uint64_t sub_1000E8C80()
{
  sub_1000EB540();
}

uint64_t sub_1000E8CA8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 120);
  v6 = *(v2 + v5);
  v11[6] = a1;
  v11[7] = v6;
  type metadata accessor for Array();
  v11[5] = *(*(*(v4 + 88) + 8) + 8);
  swift_getWitnessTable();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    sub_1000E8810(v10, sub_1000EB1F0, v11, &type metadata for () + 8);
  }
}

void *sub_1000E8E40()
{
  v0 = sub_1000EB61C();
  v1 = v0;
  return v0;
}

void sub_1000E8E6C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 128);
  v6 = *(v2 + v5);
  v13 = a1;
  v14 = v6;
  sub_100009F70(&qword_10021D568, &qword_1001B47A0);
  v12 = *(v4 + 80);
  sub_1000BB21C();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    v8 = *(v2 + v5);
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v2;
    v11[3] = a1;
    sub_1000E8810(v10, sub_1000EB96C, v11, &type metadata for () + 8);
  }
}

uint64_t sub_1000E8FE4@<X0>(uint64_t a1@<X8>)
{
  v6 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  sub_1000E86A8(KeyPath);

  v4 = *(*v1 + 136);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1000E90C0(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 136);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&a1[v5], a2);
  return swift_endAccess();
}

uint64_t sub_1000E917C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1000E8FE4(&v9 - v5);
  v7 = (*(*(v2 + 88) + 136))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000E92AC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = v28 - v9;
  v11 = *(v5 - 8);
  __chkstk_darwin(v8);
  v13 = v28 - v12;
  v14 = sub_1000E9A04();
  if (v15)
  {
    v16 = v15;
    v29 = v14;
    sub_100009F70(&qword_100219EF8, &qword_1001AF310);
    v17 = swift_allocObject();
    v28[1] = a2;
    v18 = v17;
    *(v17 + 16) = xmmword_1001ACB00;
    sub_1000E8FE4(v13);
    (*(v4 + 168))(v5, v4);
    (*(v11 + 8))(v13, v5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = sub_1000FC8F4(AssociatedTypeWitness, AssociatedConformanceWitness);
    v22 = v21;
    (*(v7 + 8))(v10, AssociatedTypeWitness);
    v18[7] = &type metadata for String;
    v23 = sub_100096600();
    v18[4] = v20;
    v18[5] = v22;
    v18[12] = &type metadata for String;
    v18[13] = v23;
    v24 = v29;
    v18[8] = v23;
    v18[9] = v24;
    v18[10] = v16;
    return String.init(format:_:)();
  }

  else
  {
    sub_1000E8FE4(v13);
    (*(v4 + 168))(v5, v4);
    (*(v11 + 8))(v13, v5);
    v26 = swift_getAssociatedConformanceWitness();
    v27 = sub_1000FC8F4(AssociatedTypeWitness, v26);
    (*(v7 + 8))(v10, AssociatedTypeWitness);
    return v27;
  }
}

uint64_t sub_1000E95E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1000E8FE4(&v9 - v5);
  v7 = (*(*(v2 + 88) + 120))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000E96F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_1000E8FE4(&v8 - v5);
  (*(*(v2 + 88) + 176))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000E97F8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v14 - v6;
  v8 = *(v2 - 8);
  __chkstk_darwin(v5);
  v10 = &v14 - v9;
  sub_1000E8FE4(&v14 - v9);
  (*(v1 + 176))(v2, v1);
  (*(v8 + 8))(v10, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v12;
}

id sub_1000E9A04()
{
  result = sub_1000EB61C();
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v1 = result;
      v2 = [result cityName];

      if (v2)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000E9A94(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  (*(*(v3 - 8) + 56))(&v28 - v5, 1, 1, v3);
  v7 = *(*v1 + 96);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(v1 + v7, v6, v8);
  *(v1 + *(*v1 + 104)) = 1;
  v9 = (v1 + *(*v1 + 112));
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + *(*v1 + 120)) = static Array._allocateUninitialized(_:)();
  *(v1 + *(*v1 + 128)) = 0;
  v10 = (v1 + *(*v1 + 144));
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v29._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000002ALL;
  v13._object = 0x80000001001BF370;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v29);

  *v10 = v15;
  v16 = (v1 + *(*v1 + 152));
  *v16 = 0xD000000000000011;
  v16[1] = 0x80000001001C0900;
  v17 = (v1 + *(*v1 + 160));
  v18 = [v11 mainBundle];
  v30._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000029;
  v19._object = 0x80000001001C0320;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v30);

  *v17 = v21;
  v22 = (v1 + *(*v1 + 168));
  v23 = [v11 mainBundle];
  v31._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000037;
  v24._object = 0x80000001001C0350;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v31);

  *v22 = v26;
  ObservationRegistrar.init()();
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 136), a1);
  return v1;
}

uint64_t sub_1000E9E74(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1000E917C(a1);
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_1000E8B08(v1, v2);
}

uint64_t sub_1000E9EAC()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v5;
  v1[9] = v4;

  return _swift_task_switch(sub_1000E9FD8, v5, v4);
}

uint64_t sub_1000E9FD8()
{
  v1 = v0[3];
  sub_1000E8FE4(v0[6]);
  v2 = *(v1 + 88);
  v6 = (*(v2 + 184) + **(v2 + 184));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1000EA100;
  v4 = v0[4];

  return v6(v4, v2);
}

uint64_t sub_1000EA100(uint64_t a1)
{
  v4 = *v2;
  v4[11] = v1;

  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = v4[8];
    v9 = v4[9];
    v10 = sub_1000EA300;
  }

  else
  {
    v4[12] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = v4[8];
    v9 = v4[9];
    v10 = sub_1000EA288;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1000EA288()
{
  v1 = *(v0 + 96);

  sub_1000E8CA8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EA300()
{
  v14 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    v7 = sub_1000E97F8();
    v9 = sub_10005D4E8(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch schedule for venue: %s, error: %@", v4, 0x16u);
    sub_1000EB068(v5);

    sub_100021498(v6);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000EA520()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*v0 + 88);
  v1[4] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v5;
  v1[10] = v4;

  return _swift_task_switch(sub_1000EA658, v5, v4);
}

uint64_t sub_1000EA658()
{
  if (sub_1000EB61C())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_1000E96F0(0);
    v3 = swift_task_alloc();
    v0[11] = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_1000EA77C;
    v5 = v0[7];
    v6 = v0[5];

    return sub_10019C8F0(v5, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_1000EA77C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);

  v7 = (v6 + 8);
  v8 = v4[7];
  v9 = v4[5];
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = v5[9];
    v11 = v5[10];
    v12 = sub_1000EA99C;
  }

  else
  {
    v5[12] = a1;
    (*v7)(v8, v9);
    v10 = v5[9];
    v11 = v5[10];
    v12 = sub_1000EA924;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_1000EA924()
{
  v1 = *(v0 + 96);

  sub_1000E8E6C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EA99C()
{

  sub_1000E8E6C(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EAA10(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1000E8FE4(&v9 - v5);
  v7 = sub_1000A199C(v6, v3, *(v2 + 88));
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000EAB08(uint64_t a1)
{
  v2 = sub_1000E95E0(a1);
  v4 = v3;
  v5 = sub_1000EAA10(v2);
  sub_1000DCEDC(v2, v4, v5, a1);
}

void sub_1000EAB68(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v9 = a1;
  v10 = sub_1000E95E0(a1);
  v12 = v11;
  v13 = sub_1000EAA10(v10);
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = v9;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  if (*(a5 + 72))
  {
    v15 = *(a5 + 64);
    v16 = *(a5 + 72);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  sub_1000109A4(a2, a3, a4);

  v17 = sub_1001666DC(1, 5, 1, inited);
  v21 = v17;
  sub_1000109BC(&aBlock, v28);
  sub_1000EB0D0(4, v28, &v21, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001BDDE0;
  v19[4] = v17;
  v26 = sub_1000EBA28;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000DCA40;
  v25 = &unk_10020E9C0;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v20);
}

uint64_t sub_1000EAE00()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);

  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 136), v2);

  v4 = *(*v0 + 176);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1000EAFF8()
{
  sub_1000EAE00();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EB068(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021B938, &unk_1001B16A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EB0D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100043D3C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100071318(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1000EB170@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000EB540();
}

__n128 sub_1000EB1E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000EB1F0()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 120)) = *(v0 + 24);
}

double sub_1000EB240(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  v10 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  v11 = *(v4 + 88);
  v16[4] = *(*(v11 + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = (*(v7 + 8))(v9, v6);
  if (v4)
  {
    swift_beginAccess();
    (*(v7 + 24))(v2 + v10, a1, v6);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v12);
    v16[-2] = v5;
    v16[-1] = v11;
    KeyPath = swift_getKeyPath();
    v15 = __chkstk_darwin(KeyPath);
    v16[-2] = v2;
    v16[-1] = a1;
    sub_1000E8810(v15, sub_1000EB9CC, &v16[-4], &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_1000EB4B4()
{
  KeyPath = swift_getKeyPath();
  sub_1000E86A8(KeyPath);

  return *(v0 + *(*v0 + 112));
}

uint64_t sub_1000EB540()
{
  KeyPath = swift_getKeyPath();
  sub_1000E86A8(KeyPath);

  return *(v0 + *(*v0 + 120));
}

uint64_t sub_1000EB61C()
{
  KeyPath = swift_getKeyPath();
  sub_1000E86A8(KeyPath);

  return *(v0 + *(*v0 + 128));
}

double sub_1000EB6A4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v15[-v7];
  v9 = *(v4 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = *(v4 + 88);
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = (*(v6 + 8))(v8, v5);
  if (v4)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    *&v15[-16] = v5;
    *&v15[-8] = v10;
    KeyPath = swift_getKeyPath();
    v14 = __chkstk_darwin(KeyPath);
    *&v15[-16] = v2;
    *&v15[-8] = a1;
    sub_1000E8810(v14, sub_1000EB8D8, &v15[-32], &type metadata for () + 8);
  }

  return result;
}

id sub_1000EB8F4@<X0>(void *a1@<X8>)
{
  v2 = sub_1000EB61C();
  *a1 = v2;

  return v2;
}

void sub_1000EB930(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000E8E6C(v1);
}

void sub_1000EB96C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 128);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

uint64_t sub_1000EB9E8()
{

  return swift_deallocObject();
}

uint64_t sub_1000EBA30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EBA48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000E88E8();
  *a1 = result;
  return result;
}

uint64_t sub_1000EBACC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000EB4B4();
  a1[1] = v2;
}

uint64_t sub_1000EBB0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000E8B08(v1, v2);
}

uint64_t sub_1000EBB6C(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_1000EBD4C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v10 = *(v4 + 96);
  v9 = *(v4 + 104);
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v9;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 12;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v12 = *(a4 + 64);
    v13 = *(a4 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v20 = v12;
  v21 = v13;

  sub_1000109A4(a1, a2, a3);

  v14 = sub_1001666DC(1, 5, 1, inited);
  v18 = v14;
  sub_1000109BC(&aBlock, v25);
  sub_1000EB0D0(4, v25, &v18, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001BDDE0;
  v16[4] = v14;
  v23 = sub_100010AAC;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000DCA40;
  v22 = &unk_10020EAC8;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t sub_1000EC04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = a4;
  v12 = swift_allocObject();
  sub_1000EC59C(a1, a2, a3, v6, a5, a6);
  return v12;
}

double sub_1000EC0CC()
{
  KeyPath = swift_getKeyPath();
  sub_1000EC288(KeyPath);

  return *(v0 + 120);
}

void sub_1000EC140(double a1)
{
  v3 = *v1;
  v4 = *(v1 + 15);
  v10 = a1;
  v11 = v4;
  v9 = *(*&v3 + 80);
  sub_10001EA38();
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    v1[15] = a1;
  }

  else
  {
    __chkstk_darwin(v5);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    *&v8[3] = a1;
    sub_1000EC318(v7, sub_1000EC9D4, v8, &type metadata for () + 8);
  }
}

double sub_1000EC3E0()
{
  KeyPath = swift_getKeyPath();
  sub_1000EC288(KeyPath);

  return *(v0 + 128);
}

void sub_1000EC454(double a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v10 = a1;
  v11 = v4;
  v9 = *(*&v3 + 80);
  sub_10001EA38();
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v5)
  {
    v1[16] = a1;
  }

  else
  {
    __chkstk_darwin(v5);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    *&v8[3] = a1;
    sub_1000EC318(v7, sub_1000ECA44, v8, &type metadata for () + 8);
  }
}

uint64_t sub_1000EC59C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  *(v6 + 16) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 24) = v13;
  *(v6 + 32) = v14 & 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = 0x7A65426863746177;
  *(v6 + 56) = 0xEA00000000006C65;
  *(v6 + 64) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 72) = v16;
  *(v6 + 80) = v17 & 1;
  *(v6 + 88) = v18;
  ObservationRegistrar.init()();
  *(v6 + 96) = a1;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 136) = a4;
  return v6;
}

char *sub_1000EC684()
{

  v1 = qword_10021EA48;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000EC724()
{
  sub_1000EC684();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EC794()
{

  return swift_deallocObject();
}

uint64_t sub_1000EC7D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1000EC84C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000EC858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_1000EC8F4, v5, v4);
}

uint64_t sub_1000EC8F4()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 40) = v5;
  v2 = sub_100043D3C((v0 + 16));
  (*(*(v5 - 8) + 16))(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_10009A860;

  return sub_100033744(v0 + 16);
}

double sub_1000EC9D4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 120) = result;
  return result;
}

double sub_1000ECA44()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 128) = result;
  return result;
}

uint64_t sub_1000ECA5C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = a1[5];
  *(a8 + 64) = a1[4];
  *(a8 + 80) = v15;
  *(a8 + 89) = *(a1 + 89);
  v16 = a1[1];
  *a8 = *a1;
  *(a8 + 16) = v16;
  v17 = a1[3];
  *(a8 + 32) = a1[2];
  *(a8 + 48) = v17;
  type metadata accessor for RemoteViewConfiguration();
  sub_1000F4DE4(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  *(a8 + 112) = EnvironmentObject.init()();
  *(a8 + 120) = v18;
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v19 = type metadata accessor for PlaylistModule(0, v23);
  v20 = *(v19 + 56);
  *(a8 + v20) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  result = swift_storeEnumTagMultiPayload();
  v22 = a8 + *(v19 + 60);
  *v22 = a2;
  *(v22 + 8) = a3 & 1;
  return result;
}

void sub_1000ECBA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = *(a1 + 16);
  v11 = v1;
  v2 = type metadata accessor for PlaylistViewModel(319, &v10);
  if (v3 <= 0x3F)
  {
    *&v10 = v2;
    sub_10000B304(319);
    if (v5 <= 0x3F)
    {
      *(&v10 + 1) = v4;
      sub_10000E648(319);
      if (v7 <= 0x3F)
      {
        *&v11 = v6;
        sub_1000F565C(319, &qword_10021A870, &type metadata for Bool, &type metadata accessor for Environment);
        if (v9 <= 0x3F)
        {
          *(&v11 + 1) = v8;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000ECCA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000ECD70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000ECE64(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 112);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 60);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000F4DE4(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000ED0E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v34 = sub_10000B3DC(&qword_10021AFA8, &unk_1001B6A30);
  v35 = a1[2];
  v3 = type metadata accessor for Array();
  v36 = a1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  swift_getWitnessTable();
  v7 = type metadata accessor for Button();
  v27 = type metadata accessor for PlainButtonStyle();
  v30 = v7;
  WitnessTable = swift_getWitnessTable();
  v26 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  v31 = type metadata accessor for AccessibilityAttachmentModifier();
  v28 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v3;
  v51 = &type metadata for String;
  v52 = v28;
  v53 = swift_getWitnessTable();
  v54 = &protocol witness table for String;
  v23[2] = type metadata accessor for ForEach();
  v32 = a1[3];
  type metadata accessor for Array();
  v33 = a1[5];
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, v8, v9, v10);
  swift_getWitnessTable();
  type metadata accessor for Button();
  v24 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v23[1] = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v54 = &protocol witness table for String;
  type metadata accessor for ForEach();
  v25 = type metadata accessor for _ConditionalContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v47 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v52 = v24;
  v53 = v26;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v49;
  v44 = swift_getWitnessTable();
  v42 = v11;
  v43 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v23 - v17;
  static HorizontalAlignment.leading.getter();
  *&v19 = v35;
  *(&v19 + 1) = v32;
  *&v20 = v36;
  *(&v20 + 1) = v33;
  v39 = v19;
  v40 = v20;
  v41 = v37;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_100157EFC();
  v21 = *(v13 + 8);
  v21(v16, v12);
  sub_100157EFC();
  return (v21)(v18, v12);
}

uint64_t sub_1000ED8BC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v152 = a1;
  v153 = a2;
  v147 = a6;
  v9 = type metadata accessor for ContentMarginPlacement();
  v145 = *(v9 - 8);
  v146 = v9;
  __chkstk_darwin(v9);
  v144 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrollIndicatorVisibility();
  v142 = *(v11 - 8);
  v143 = v11;
  __chkstk_darwin(v11);
  v140 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Array();
  v154 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  swift_getWitnessTable();
  v17 = type metadata accessor for Button();
  v18 = type metadata accessor for PlainButtonStyle();
  v138 = v18;
  v150 = v17;
  WitnessTable = swift_getWitnessTable();
  v141 = WitnessTable;
  v137 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  *&v175 = v17;
  *(&v175 + 1) = v18;
  *&v176 = WitnessTable;
  *(&v176 + 1) = v137;
  v134 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  swift_getOpaqueTypeMetadata2();
  v151 = type metadata accessor for AccessibilityAttachmentModifier();
  v20 = type metadata accessor for ModifiedContent();
  v139 = v20;
  v21 = swift_getWitnessTable();
  *&v175 = v13;
  *(&v175 + 1) = &type metadata for String;
  *&v176 = v20;
  *(&v176 + 1) = v21;
  *&v177 = &protocol witness table for String;
  v132 = type metadata accessor for ForEach();
  v22 = type metadata accessor for Array();
  v148 = a3;
  v149 = a5;
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, v23, v24, v25);
  swift_getWitnessTable();
  v26 = type metadata accessor for Button();
  v135 = swift_getWitnessTable();
  v28 = v137;
  v27 = v138;
  *&v175 = v26;
  *(&v175 + 1) = v138;
  *&v176 = v135;
  *(&v176 + 1) = v137;
  swift_getOpaqueTypeMetadata2();
  v29 = type metadata accessor for ModifiedContent();
  v133 = v29;
  v30 = swift_getWitnessTable();
  *&v175 = v22;
  *(&v175 + 1) = &type metadata for String;
  *&v176 = v29;
  *(&v176 + 1) = v30;
  *&v177 = &protocol witness table for String;
  v131 = type metadata accessor for ForEach();
  v136 = type metadata accessor for _ConditionalContent();
  *&v175 = v150;
  *(&v175 + 1) = v27;
  *&v176 = v141;
  *(&v176 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v173 = OpaqueTypeConformance2;
  v174 = v32;
  v172 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  *&v175 = v26;
  *(&v175 + 1) = v27;
  *&v176 = v135;
  *(&v176 + 1) = v28;
  v170 = swift_getOpaqueTypeConformance2();
  v171 = v32;
  v141 = v32;
  v169 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v167 = v33;
  v168 = v34;
  swift_getWitnessTable();
  v119 = type metadata accessor for HStack();
  v118 = swift_getWitnessTable();
  v35 = type metadata accessor for ScrollView();
  v131 = *(v35 - 8);
  __chkstk_darwin(v35);
  v117 = &v111 - v36;
  v37 = swift_getWitnessTable();
  *&v175 = v35;
  *(&v175 + 1) = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v132 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v126 = &v111 - v39;
  v133 = v35;
  *&v175 = v35;
  *(&v175 + 1) = v37;
  v121 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  *&v175 = OpaqueTypeMetadata2;
  *(&v175 + 1) = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v128 = *(v41 - 8);
  __chkstk_darwin(v41);
  v125 = &v111 - v42;
  v135 = OpaqueTypeMetadata2;
  *&v175 = OpaqueTypeMetadata2;
  *(&v175 + 1) = v40;
  v120 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v134 = v41;
  *&v175 = v41;
  *(&v175 + 1) = v43;
  v124 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v127 = *(v44 - 8);
  __chkstk_darwin(v44);
  v123 = &v111 - v45;
  v130 = v46;
  v139 = type metadata accessor for ModifiedContent();
  v136 = *(v139 - 8);
  v47 = __chkstk_darwin(v139);
  v138 = &v111 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v122 = &v111 - v50;
  __chkstk_darwin(v49);
  v137 = &v111 - v51;
  v52 = type metadata accessor for AccessibilityTraits();
  v115 = *(v52 - 8);
  v116 = v52;
  __chkstk_darwin(v52);
  v114 = &v111 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100009F70(&qword_10021AFA8, &unk_1001B6A30);
  v54 = __chkstk_darwin(v150);
  v129 = &v111 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v113 = &v111 - v57;
  __chkstk_darwin(v56);
  v151 = &v111 - v58;
  v59 = v152[5];
  v179 = v152[4];
  v180[0] = v59;
  *(v180 + 9) = *(v152 + 89);
  v60 = v152[1];
  v175 = *v152;
  v176 = v60;
  v61 = v152[3];
  v177 = v152[2];
  v178 = v61;
  *&v161 = v153;
  v63 = v148;
  v62 = v149;
  *(&v161 + 1) = v148;
  *&v162 = v154;
  *(&v162 + 1) = v149;
  v64 = type metadata accessor for PlaylistViewModel(0, &v161);
  sub_100032F58(v64);
  v65 = Text.init(_:tableName:bundle:comment:)();
  v67 = v66;
  LOBYTE(v32) = v68;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v69 = Text.font(_:)();
  v111 = v70;
  v112 = v69;
  LOBYTE(v28) = v71;
  v73 = v72;
  v74 = v152;

  sub_10000D60C(v65, v67, v32 & 1);

  LOBYTE(v41) = static Edge.Set.leading.getter();
  v76 = v153;
  v75 = v154;
  *&v161 = v153;
  *(&v161 + 1) = v63;
  *&v162 = v154;
  *(&v162 + 1) = v62;
  v77 = type metadata accessor for PlaylistModule(0, &v161);
  sub_1000ECE64(v77);
  EdgeInsets.init(_all:)();
  v166 = v28 & 1;
  v165 = 0;
  *&v157 = v112;
  *(&v157 + 1) = v111;
  LOBYTE(v158) = v28 & 1;
  *(&v158 + 1) = v73;
  LOBYTE(v159) = v41;
  *(&v159 + 1) = v78;
  *&v160[0] = v79;
  *(&v160[0] + 1) = v80;
  *&v160[1] = v81;
  BYTE8(v160[1]) = 0;
  sub_100009F70(&qword_10021AFE8, &qword_1001B0A38);
  sub_100071294();
  v82 = v113;
  View.accessibilityIdentifier(_:)();
  v163 = v159;
  v164[0] = v160[0];
  *(v164 + 9) = *(v160 + 9);
  v161 = v157;
  v162 = v158;
  v83 = v140;
  sub_10000D52C(&v161, &qword_10021AFE8, &qword_1001B0A38);
  v84 = v114;
  static AccessibilityTraits.isHeader.getter();
  ModifiedContent<>.accessibility(addTraits:)();
  (*(v115 + 8))(v84, v116);
  sub_10000D52C(v82, &qword_10021AFA8, &unk_1001B6A30);
  v85 = static Axis.Set.horizontal.getter();
  v155[2] = v76;
  v155[3] = v148;
  v155[4] = v75;
  v155[5] = v149;
  v86 = v117;
  v155[6] = v74;
  sub_1001511F4(v85, sub_1000F1988, v155, v119, v118);
  static ScrollIndicatorVisibility.hidden.getter();
  sub_100009F70(&qword_10021A390, &qword_1001B6A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v82) = static Axis.Set.vertical.getter();
  *(inited + 32) = v82;
  v88 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v88;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v82)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v88)
  {
    Axis.Set.init(rawValue:)();
  }

  v89 = v126;
  v90 = v133;
  View.scrollIndicators(_:axes:)();
  (*(v142 + 8))(v83, v143);
  (*(v131 + 8))(v86, v90);
  static Edge.Set.leading.getter();
  sub_1000ECE64(v77);
  v154 = v77;
  v91 = v144;
  static ContentMarginPlacement.scrollContent.getter();
  v92 = v125;
  v93 = v135;
  View.contentMargins(_:_:for:)();
  v94 = v146;
  v95 = *(v145 + 8);
  v95(v91, v146);
  (*(v132 + 8))(v89, v93);
  static Edge.Set.trailing.getter();
  sub_1000ECE64(v154);
  static ContentMarginPlacement.scrollContent.getter();
  v97 = v123;
  v96 = v124;
  v98 = v134;
  View.contentMargins(_:_:for:)();
  v95(v91, v94);
  (*(v128 + 8))(v92, v98);
  *&v157 = v98;
  *(&v157 + 1) = v96;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v122;
  v101 = v130;
  View.accessibilityIdentifier(_:)();
  (*(v127 + 8))(v97, v101);
  v156[2] = v99;
  v156[3] = v141;
  v102 = v139;
  v103 = swift_getWitnessTable();
  v104 = v137;
  sub_100157EFC();
  v105 = v136;
  v106 = *(v136 + 8);
  v106(v100, v102);
  v107 = v151;
  v108 = v129;
  sub_10000D58C(v151, v129, &qword_10021AFA8, &unk_1001B6A30);
  *&v157 = v108;
  v109 = v138;
  (*(v105 + 16))(v138, v104, v102);
  *(&v157 + 1) = v109;
  v156[0] = v150;
  v156[1] = v102;
  v155[7] = sub_1000F5B38(&qword_10021B000, &qword_10021AFA8, &unk_1001B6A30, sub_100071294);
  v155[8] = v103;
  sub_100151024(&v157, 2uLL, v156);
  v106(v104, v102);
  sub_10000D52C(v107, &qword_10021AFA8, &unk_1001B6A30);
  v106(v109, v102);
  return sub_10000D52C(v108, &qword_10021AFA8, &unk_1001B6A30);
}

uint64_t sub_1000EE960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v34 = a2;
  v36 = a1;
  v37 = a6;
  type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  swift_getWitnessTable();
  type metadata accessor for Button();
  v28 = type metadata accessor for PlainButtonStyle();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v30 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v25[0] = type metadata accessor for ForEach();
  v32 = a3;
  type metadata accessor for Array();
  v33 = a5;
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, v11, v12, v13);
  swift_getWitnessTable();
  v14 = type metadata accessor for Button();
  v26 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v25[1] = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v55 = &protocol witness table for String;
  type metadata accessor for ForEach();
  v29 = type metadata accessor for _ConditionalContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v48 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v51 = v14;
  v52 = v28;
  v53 = v26;
  v54 = v27;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v50;
  v45 = swift_getWitnessTable();
  v43 = v15;
  v44 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = type metadata accessor for HStack();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v25 - v21;
  v38 = v34;
  v39 = v32;
  v40 = v35;
  v41 = v33;
  v42 = v36;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_100157EFC();
  v23 = *(v17 + 8);
  v23(v20, v16);
  sub_100157EFC();
  return (v23)(v22, v16);
}

uint64_t sub_1000EEF9C@<X0>(unsigned __int128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v114 = a6;
  v115 = a5;
  v104 = a2;
  v9 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v124 = &unk_1001B6AD0;
  swift_getWitnessTable();
  v13 = type metadata accessor for Button();
  v14 = type metadata accessor for PlainButtonStyle();
  v123 = &protocol conformance descriptor for Button<A>;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v121 = WitnessTable;
  v122 = v13;
  v119 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  swift_getOpaqueTypeMetadata2();
  v118 = type metadata accessor for AccessibilityAttachmentModifier();
  v113 = &protocol conformance descriptor for [A];
  v101 = v9;
  *&v156 = v9;
  *(&v156 + 1) = &type metadata for String;
  v120 = type metadata accessor for ModifiedContent();
  *&v157 = v120;
  *(&v157 + 1) = swift_getWitnessTable();
  v97 = *(&v157 + 1);
  *&v158 = &protocol witness table for String;
  v17 = type metadata accessor for ForEach();
  KeyPath = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v99 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v98 = v93 - v20;
  v21 = v104;
  *&v156 = v104;
  *(&v156 + 1) = a3;
  *&v157 = a4;
  *(&v157 + 1) = v115;
  v108 = type metadata accessor for PlaylistModule(0, &v156);
  v102 = *(v108 - 8);
  v106 = *(v102 + 64);
  __chkstk_darwin(v108);
  v107 = v93 - v22;
  v23 = type metadata accessor for Array();
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, v24, v25, v26);
  swift_getWitnessTable();
  v27 = type metadata accessor for Button();
  v116 = swift_getWitnessTable();
  v117 = v27;
  *&v156 = v27;
  *(&v156 + 1) = v14;
  v123 = v16;
  v124 = v14;
  *&v157 = v116;
  *(&v157 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  v28 = type metadata accessor for ModifiedContent();
  v29 = swift_getWitnessTable();
  v96 = v23;
  *&v156 = v23;
  v30 = v102;
  *(&v156 + 1) = &type metadata for String;
  *&v157 = v28;
  v118 = v28;
  v93[1] = v29;
  *(&v157 + 1) = v29;
  *&v158 = &protocol witness table for String;
  v31 = type metadata accessor for ForEach();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v95 = v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v94 = v93 - v35;
  v110 = v36;
  v119 = v17;
  v37 = v115;
  v38 = type metadata accessor for _ConditionalContent();
  v112 = *(v38 - 8);
  v113 = v38;
  __chkstk_darwin(v38);
  v111 = v93 - v39;
  v40 = a1[5];
  v160 = a1[4];
  v161[0] = v40;
  *(v161 + 9) = *(a1 + 89);
  v41 = a1[1];
  v156 = *a1;
  v157 = v41;
  v42 = a1[3];
  v158 = a1[2];
  v159 = v42;
  v43 = v21;
  v44 = v105;
  v150 = __PAIR128__(v105, v21);
  v109 = a4;
  *&v151 = a4;
  *(&v151 + 1) = v37;
  v45 = type metadata accessor for PlaylistViewModel(0, &v150);
  v46 = sub_100032FE0(v45);
  v103 = v30 + 16;
  v47 = a1[5];
  v154 = a1[4];
  v155[0] = v47;
  *(v155 + 9) = *(a1 + 89);
  v48 = a1[1];
  v150 = *a1;
  v151 = v48;
  v49 = a1[3];
  v152 = a1[2];
  v153 = v49;
  if (v46)
  {
    v149 = sub_100033050(v45);
    __chkstk_darwin(v149);
    v50 = v43;
    v93[-4] = v43;
    v93[-3] = v44;
    v51 = v109;
    v91 = v109;
    v92 = v37;
    KeyPath = swift_getKeyPath();
    v101 = v32;
    v53 = v107;
    v52 = v108;
    (*(v30 + 16))(v107, a1, v108);
    v54 = (*(v30 + 80) + 48) & ~*(v30 + 80);
    v55 = swift_allocObject();
    *(v55 + 2) = v50;
    *(v55 + 3) = v44;
    *(v55 + 4) = v51;
    *(v55 + 5) = v37;
    (*(v30 + 32))(&v55[v54], v53, v52);
    v145 = v117;
    v146 = v124;
    v147 = v116;
    v148 = v123;
    v115 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v129 = OpaqueTypeConformance2;
    v130 = v57;
    v58 = swift_getWitnessTable();
    v91 = v58;
    v59 = v95;
    ForEach<>.init(_:id:content:)();
    v128 = v58;
    v60 = v110;
    v61 = swift_getWitnessTable();
    v62 = v94;
    sub_100157EFC();
    v63 = *(v101 + 8);
    v63(v59, v60);
    sub_100157EFC();
    v145 = v122;
    v146 = v124;
    v147 = v121;
    v148 = v123;
    v126 = swift_getOpaqueTypeConformance2();
    v127 = v57;
    v125 = swift_getWitnessTable();
    v64 = v119;
    v65 = swift_getWitnessTable();
    v66 = v111;
    sub_100061878(v59, v60, v64, v61, v65);
    v63(v59, v60);
    v63(v62, v60);
  }

  else
  {
    v149 = sub_10003311C(v45);
    __chkstk_darwin(v149);
    v67 = v43;
    v93[-4] = v43;
    v93[-3] = v44;
    v68 = v109;
    v91 = v109;
    v92 = v37;
    v96 = swift_getKeyPath();
    v70 = v107;
    v69 = v108;
    (*(v30 + 16))(v107, a1, v108);
    v71 = (*(v30 + 80) + 48) & ~*(v30 + 80);
    v72 = swift_allocObject();
    *(v72 + 2) = v67;
    *(v72 + 3) = v44;
    *(v72 + 4) = v68;
    *(v72 + 5) = v37;
    (*(v30 + 32))(&v72[v71], v70, v69);
    v145 = v122;
    v146 = v124;
    v147 = v121;
    v148 = v123;
    v115 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v143 = v73;
    v144 = v74;
    v75 = swift_getWitnessTable();
    v91 = v75;
    v76 = v99;
    ForEach<>.init(_:id:content:)();
    v142 = v75;
    v77 = v119;
    v78 = swift_getWitnessTable();
    v79 = v98;
    sub_100157EFC();
    v80 = *(KeyPath + 8);
    v80(v76, v77);
    sub_100157EFC();
    v145 = v117;
    v146 = v124;
    v147 = v116;
    v148 = v123;
    v140 = swift_getOpaqueTypeConformance2();
    v141 = v74;
    v139 = swift_getWitnessTable();
    v81 = v110;
    v82 = swift_getWitnessTable();
    v66 = v111;
    sub_100061970(v76, v81, v77, v82, v78);
    v80(v76, v77);
    v80(v79, v77);
  }

  v84 = v123;
  v83 = v124;
  v145 = v117;
  v146 = v124;
  v147 = v116;
  v148 = v123;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v137 = v85;
  v138 = v86;
  v136 = swift_getWitnessTable();
  v87 = swift_getWitnessTable();
  v145 = v122;
  v146 = v83;
  v147 = v121;
  v148 = v84;
  v134 = swift_getOpaqueTypeConformance2();
  v135 = v86;
  v133 = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v131 = v87;
  v132 = v88;
  v89 = v113;
  swift_getWitnessTable();
  sub_100157EFC();
  return (*(v112 + 8))(v66, v89);
}

uint64_t sub_1000EFCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v83 = a4;
  v84 = a6;
  v85 = a2;
  v88 = a7;
  v89 = a1;
  v11 = type metadata accessor for PlainButtonStyle();
  v69 = v11;
  v87 = *(v11 - 8);
  __chkstk_darwin(v11);
  v86 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a3;
  v98 = a4;
  v99 = a5;
  v100 = a6;
  v80 = type metadata accessor for PlaylistModule(0, &v97);
  v13 = *(v80 - 8);
  v82 = *(v13 + 64);
  v14 = __chkstk_darwin(v80);
  v16 = &v62 - v15;
  v17 = *(a3 - 8);
  v75 = *(v17 + 64);
  __chkstk_darwin(v14);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
  WitnessTable = swift_getWitnessTable();
  v23 = type metadata accessor for Button();
  v81 = *(v23 - 8);
  __chkstk_darwin(v23);
  v71 = &v62 - v24;
  v26 = v25;
  v70 = v25;
  v27 = swift_getWitnessTable();
  v67 = v27;
  v66 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v97 = v26;
  v98 = v11;
  v99 = v27;
  v100 = v66;
  v73 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v64 = &v62 - v28;
  type metadata accessor for AccessibilityAttachmentModifier();
  v76 = type metadata accessor for ModifiedContent();
  v79 = *(v76 - 8);
  v29 = __chkstk_darwin(v76);
  v65 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v72 = &v62 - v31;
  v32 = v17;
  (*(v17 + 16))(v19, v89, a3);
  v33 = v13;
  v34 = *(v13 + 16);
  v35 = v16;
  v36 = v80;
  v34(v16, v85, v80);
  v37 = v32;
  v38 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v39 = (v75 + *(v33 + 80) + v38) & ~*(v33 + 80);
  v40 = swift_allocObject();
  v41 = a3;
  *(v40 + 2) = a3;
  v42 = v83;
  *(v40 + 3) = v83;
  *(v40 + 4) = a5;
  v43 = a5;
  v44 = v84;
  *(v40 + 5) = v84;
  v45 = &v40[v38];
  v46 = v41;
  (*(v37 + 32))(v45, v63);
  (*(v33 + 32))(&v40[v39], v35, v36);
  v90 = v46;
  v91 = v42;
  v92 = v43;
  v93 = v44;
  v94 = v89;
  v47 = v71;
  Button.init(action:label:)();
  v48 = v86;
  PlainButtonStyle.init()();
  v49 = v64;
  v50 = v70;
  v51 = v69;
  v52 = v67;
  v53 = v66;
  View.buttonStyle<A>(_:)();
  (*(v87 + 8))(v48, v51);
  (*(v81 + 8))(v47, v50);
  v97 = v50;
  v98 = v51;
  v99 = v52;
  v100 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v65;
  v56 = OpaqueTypeMetadata2;
  View.accessibilityIdentifier(_:)();
  (*(v74 + 8))(v49, v56);
  v57 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v95 = OpaqueTypeConformance2;
  v96 = v57;
  v58 = v76;
  swift_getWitnessTable();
  v59 = v72;
  sub_100157EFC();
  v60 = *(v79 + 8);
  v60(v55, v58);
  sub_100157EFC();
  return (v60)(v59, v58);
}

uint64_t sub_1000F0498(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v34 = a4;
  v37 = type metadata accessor for OpenURLAction();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  (*(a5 + 96))(a3, a5);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000D52C(v13, qword_100218748, &unk_1001AD110);
  }

  (*(v15 + 32))(v20, v13, v14);
  v44 = __PAIR128__(v34, a3);
  v33 = a3;
  v22 = v34;
  *&v45 = a5;
  v23 = v35;
  *(&v45 + 1) = v35;
  type metadata accessor for PlaylistModule(0, &v44);
  sub_100023FD4(v10);
  v24 = *(a2 + 80);
  v48 = *(a2 + 64);
  *v49 = v24;
  *&v49[9] = *(a2 + 89);
  v25 = *(a2 + 16);
  v44 = *a2;
  v45 = v25;
  v26 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v26;
  *&v38 = v33;
  *(&v38 + 1) = v22;
  *&v39 = a5;
  *(&v39 + 1) = v23;
  type metadata accessor for PlaylistViewModel(0, &v38);
  sub_1000331E8(v20, v18);
  OpenURLAction.callAsFunction(_:)();
  v27 = *(v15 + 8);
  v27(v18, v14);
  (*(v36 + 8))(v10, v37);
  v28 = *(a2 + 80);
  v42 = *(a2 + 64);
  v43[0] = v28;
  *(v43 + 9) = *(a2 + 89);
  v29 = *(a2 + 16);
  v38 = *a2;
  v39 = v29;
  v30 = *(a2 + 32);
  v41 = *(a2 + 48);
  v40 = v30;
  if (*(a2 + 112))
  {

    sub_100033274(v31);

    return (v27)(v20, v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000F4DE4(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F08A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = AssociatedTypeWitness;
  v6 = type metadata accessor for Optional();
  __chkstk_darwin(v6 - 8);
  v28 = &v24 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for PlaylistItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = (*(a2 + 64))(a1, a2);
  v24 = v17;
  v25 = v16;
  v18 = (*(a2 + 72))(a1, a2);
  v20 = v19;
  v21 = v28;
  (*(a2 + 88))(a1, a2);
  sub_1000F0B24(v25, v24, v18, v20, v21, v27, AssociatedConformanceWitness, v13);
  swift_getWitnessTable();
  sub_100157EFC();
  v22 = *(v10 + 8);
  v22(v13, v9);
  sub_100157EFC();
  return (v22)(v15, v9);
}

uint64_t sub_1000F0B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v10 = *(type metadata accessor for PlaylistItem(0, a6, a7, a4) + 40);
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a8[v10], a5, v11);
}

uint64_t sub_1000F0BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v82 = a5;
  v81 = a3;
  v86 = a1;
  v87 = a2;
  v85 = a7;
  v11 = type metadata accessor for PlainButtonStyle();
  v67 = v11;
  v84 = *(v11 - 8);
  __chkstk_darwin(v11);
  v83 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v99 = a6;
  v72 = a6;
  v74 = type metadata accessor for PlaylistModule(0, &v96);
  v13 = *(v74 - 8);
  v80 = *(v13 + 64);
  v14 = __chkstk_darwin(v74);
  v16 = &v60 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v61 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v77 = type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  WitnessTable = swift_getWitnessTable();
  v22 = type metadata accessor for Button();
  v79 = *(v22 - 8);
  __chkstk_darwin(v22);
  v69 = &v60 - v23;
  v25 = v24;
  v68 = v24;
  v26 = swift_getWitnessTable();
  v65 = v26;
  v64 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v96 = v25;
  v97 = v11;
  v98 = v26;
  v99 = v64;
  v71 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v62 = &v60 - v27;
  type metadata accessor for AccessibilityAttachmentModifier();
  v75 = type metadata accessor for ModifiedContent();
  v78 = *(v75 - 8);
  v28 = __chkstk_darwin(v75);
  v63 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v70 = &v60 - v30;
  (*(v17 + 16))(&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v86, a4);
  v31 = v13;
  v32 = *(v13 + 16);
  v33 = v16;
  v34 = v74;
  v32(v16, v87, v74);
  v35 = v17;
  v36 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v37 = (v18 + *(v31 + 80) + v36) & ~*(v31 + 80);
  v38 = swift_allocObject();
  v39 = v81;
  *(v38 + 2) = v81;
  *(v38 + 3) = a4;
  v40 = a4;
  v41 = v82;
  v42 = v72;
  *(v38 + 4) = v82;
  *(v38 + 5) = v42;
  v43 = &v38[v36];
  v44 = v40;
  (*(v35 + 32))(v43, v61);
  (*(v31 + 32))(&v38[v37], v33, v34);
  v88 = v39;
  v89 = v44;
  v90 = v41;
  v91 = v42;
  v92 = v86;
  v93 = v87;
  v45 = v69;
  Button.init(action:label:)();
  v46 = v83;
  PlainButtonStyle.init()();
  v47 = v62;
  v48 = v68;
  v49 = v67;
  v50 = v65;
  v51 = v64;
  View.buttonStyle<A>(_:)();
  (*(v84 + 8))(v46, v49);
  (*(v79 + 8))(v45, v48);
  v96 = v48;
  v97 = v49;
  v98 = v50;
  v99 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v63;
  v54 = OpaqueTypeMetadata2;
  View.accessibilityIdentifier(_:)();
  (*(v73 + 8))(v47, v54);
  v55 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v94 = OpaqueTypeConformance2;
  v95 = v55;
  v56 = v75;
  swift_getWitnessTable();
  v57 = v70;
  sub_100157EFC();
  v58 = *(v78 + 8);
  v58(v53, v56);
  sub_100157EFC();
  return (v58)(v57, v56);
}

uint64_t sub_1000F13C4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v33 = a3;
  v9 = type metadata accessor for OpenURLAction();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v31 - v20;
  (*(a6 + 64))(a4, a6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10000D52C(v14, qword_100218748, &unk_1001AD110);
  }

  (*(v16 + 32))(v21, v14, v15);
  v23 = a6;
  v32 = a6;
  v24 = a4;
  v25 = v33;
  *&v38 = v33;
  *(&v38 + 1) = v24;
  v26 = v34;
  *&v39 = v34;
  *(&v39 + 1) = v23;
  type metadata accessor for PlaylistModule(0, &v38);
  sub_100023FD4(v11);
  v27 = a2[5];
  v42 = a2[4];
  v43[0] = v27;
  *(v43 + 9) = *(a2 + 89);
  v28 = a2[1];
  v38 = *a2;
  v39 = v28;
  v29 = a2[3];
  v40 = a2[2];
  v41 = v29;
  v37[0] = v25;
  v37[1] = v24;
  v37[2] = v26;
  v37[3] = v32;
  type metadata accessor for PlaylistViewModel(0, v37);
  sub_1000331E8(v21, v19);
  OpenURLAction.callAsFunction(_:)();
  v30 = *(v16 + 8);
  v30(v19, v15);
  (*(v35 + 8))(v11, v36);
  return (v30)(v21, v15);
}

uint64_t sub_1000F16E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = AssociatedTypeWitness;
  v8 = type metadata accessor for Optional();
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for PlaylistItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v31 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = (*(a3 + 48))(a2, a3);
  v27 = v19;
  v28 = v18;
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v26 = v20;
  v22 = *(a3 + 56);

  v22(a2, a3);
  sub_1000F0B24(v28, v27, v26, v21, v10, v30, AssociatedConformanceWitness, v15);
  swift_getWitnessTable();
  sub_100157EFC();
  v23 = *(v31 + 8);
  v23(v15, v12);
  sub_100157EFC();
  return (v23)(v17, v12);
}

uint64_t sub_1000F19B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(*(a1 + a2 - 24));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_1000F1A10(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1000F1A38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 16) + 56))(*(a1 + a2 - 32));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1000F1A90()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v2 = type metadata accessor for PlaylistModule(0, v7);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  v4 = *(v2 + 56);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_100027EB0(*(v3 + *(v2 + 60)), *(v3 + *(v2 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_1000F1C2C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v12[0] = v2[2];
  v4 = v12[0];
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v8 = *(type metadata accessor for PlaylistModule(0, v12) - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_1000F1CF4()
{
  v1 = *(v0 + 32);
  v3 = *(*(v0 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v12[0] = *(v0 + 16);
  v2 = *&v12[0];
  v12[1] = v1;
  v6 = type metadata accessor for PlaylistModule(0, v12);
  v7 = (v5 + v4 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  (*(v3 + 8))(v0 + v5, v2);
  v8 = v0 + v7;

  v9 = *(v6 + 56);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  sub_100027EB0(*(v8 + *(v6 + 60)), *(v8 + *(v6 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_1000F1EF4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v6 = *(*(v0[2] - 8) + 64);
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v7 = *(type metadata accessor for PlaylistModule(0, v10) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1000F0498(v0 + v5, v8, v1, v2, v3, v4);
}

uint64_t sub_1000F2024()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v14 = *(v0 + 16);
  v7 = (v5 + 48) & ~v5;
  v15 = v2;
  v16 = v1;
  v8 = type metadata accessor for PlaylistModule(0, &v14);
  v9 = (v7 + v6 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  (*(v4 + 8))(v0 + v7, v3);
  v10 = v0 + v9;

  v11 = *(v8 + 56);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  sub_100027EB0(*(v10 + *(v8 + 60)), *(v10 + *(v8 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_1000F2234()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = *(*(v2 - 8) + 64);
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v7 = *(type metadata accessor for PlaylistModule(0, v10) - 8);
  v8 = (v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80)));

  return sub_1000F13C4(v0 + v5, v8, v1, v2, v3, v4);
}

uint64_t sub_1000F2344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v57);
  v56 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 24);
  v44 = *(a1 + 16);
  v45 = v4;
  type metadata accessor for PlaylistArtworkView(255, v44, v4, v5);
  sub_10000B3DC(&qword_10021EBD8, &qword_1001B6B20);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  v13 = type metadata accessor for ModifiedContent();
  v51 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  sub_10000B3DC(&qword_100218928, &unk_1001ADC30);
  v48 = v13;
  v16 = type metadata accessor for ModifiedContent();
  v53 = *(v16 - 8);
  __chkstk_darwin(v16);
  v50 = &v43 - v17;
  v54 = v18;
  v19 = type metadata accessor for ModifiedContent();
  v55 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v49 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v43 - v22;
  static HorizontalAlignment.center.getter();
  v59 = v44;
  v60 = v45;
  v61 = v46;
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v24 = v15;
  View.frame(width:height:alignment:)();
  (*(v7 + 8))(v9, v6);
  v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v70 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v68 = WitnessTable;
  v69 = &protocol witness table for _FrameLayout;
  v26 = swift_getWitnessTable();
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v47 + 8))(v12, v10);
  if (qword_100218428 != -1)
  {
    swift_once();
  }

  v27 = qword_1002305F8;
  v28 = *(v57 + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  v31 = v56;
  (*(*(v30 - 8) + 104))(v56 + v28, v29, v30);
  *v31 = v27;
  v31[1] = v27;
  v32 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v66 = v26;
  v67 = v32;
  v33 = v48;
  v34 = swift_getWitnessTable();
  sub_1000F4DE4(&qword_10021EBE0, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v35 = v50;
  View.clipShape<A>(_:style:)();
  sub_1000A3C3C(v31);
  (*(v51 + 8))(v24, v33);
  static Edge.Set.all.getter();
  v36 = sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
  v64 = v34;
  v65 = v36;
  v37 = v54;
  v38 = swift_getWitnessTable();
  v39 = v49;
  View.padding(_:_:)();
  (*(v53 + 8))(v35, v37);
  v62 = v38;
  v63 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v40 = v52;
  sub_100157EFC();
  v41 = *(v55 + 8);
  v41(v39, v19);
  sub_100157EFC();
  return (v41)(v40, v19);
}

uint64_t sub_1000F2B74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v39 = sub_100009F70(&qword_10021EBD8, &qword_1001B6B20);
  v7 = __chkstk_darwin(v39);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v16 = type metadata accessor for PlaylistArtworkView(0, a2, a3, v15);
  v36 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v37 = &v36 - v20;
  v22 = type metadata accessor for PlaylistItem(0, a2, a3, v21);
  (*(v12 + 16))(v14, a1 + *(v22 + 40), v11);
  sub_1000F2F6C(v14, v19, 240.0, a2, a3);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC();
  v23 = v36;
  v24 = *(v36 + 8);
  v24(v19, v16);
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v25 = sub_100009F70(&qword_10021EBE8, &qword_1001B6B28);
  sub_1000F301C(a1, &v10[*(v25 + 44)]);
  LOBYTE(v14) = static Edge.Set.horizontal.getter();
  v26 = &v10[*(sub_100009F70(&qword_10021EBF0, &qword_1001B6B30) + 36)];
  *v26 = v14;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  LOBYTE(v14) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v27 = v39;
  v28 = &v10[*(v39 + 36)];
  *v28 = v14;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = v37;
  (*(v23 + 16))(v19, v37, v16);
  v45[0] = v19;
  v34 = v40;
  sub_10000D58C(v10, v40, &qword_10021EBD8, &qword_1001B6B20);
  v45[1] = v34;
  v44[0] = v16;
  v44[1] = v27;
  v42 = WitnessTable;
  v43 = sub_1000F4E2C();
  sub_100151024(v45, 2uLL, v44);
  sub_10000D52C(v10, &qword_10021EBD8, &qword_1001B6B20);
  v24(v33, v16);
  sub_10000D52C(v34, &qword_10021EBD8, &qword_1001B6B20);
  return (v24)(v19, v16);
}

uint64_t sub_1000F2F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, uint64_t a4@<X1>, uint64_t a5@<X2>)
{
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 32))(a2, a1, v10);
  v12 = type metadata accessor for PlaylistArtworkView(0, a4, a5, v11);
  *(a2 + *(v12 + 36)) = a3;
  v13 = a2 + *(v12 + 40);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_1000F301C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_100009F70(&qword_10021EC18, &qword_1001B6B40);
  v4 = __chkstk_darwin(v3 - 8);
  v78 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v64 - v6;
  v7 = sub_100009F70(&qword_10021EC20, &qword_1001B6B48);
  __chkstk_darwin(v7);
  v9 = &v64 - v8;
  v10 = sub_100009F70(&qword_10021EC28, &qword_1001B6B50);
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = __chkstk_darwin(v10);
  v76 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v72 = a1;
  v15 = *a1;
  v16 = a1[1];
  v80 = v15;
  v81 = v16;
  v17 = sub_100027068();

  v67 = v17;
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v23 = Text.font(_:)();
  v25 = v24;
  LODWORD(v71) = v26;
  v75 = v27;

  sub_10000D60C(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v29 = &v9[*(v7 + 36)];
  v30 = sub_100009F70(&qword_10021EC30, &qword_1001B6B88);
  v31 = *(v30 + 28);
  v32 = enum case for Text.TruncationMode.tail(_:);
  v33 = type metadata accessor for Text.TruncationMode();
  v34 = *(v33 - 8);
  v69 = *(v34 + 104);
  v70 = v33;
  v68 = v34 + 104;
  v69(v29 + v31, v32);
  *v29 = swift_getKeyPath();
  *v9 = v23;
  *(v9 + 1) = v25;
  v9[16] = v71 & 1;
  *(v9 + 3) = v75;
  *(v9 + 4) = KeyPath;
  v35 = 1;
  *(v9 + 5) = 1;
  v9[48] = 0;
  v36 = sub_1000F5068();
  v75 = v14;
  v71 = v7;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v9, &qword_10021EC20, &qword_1001B6B48);
  v37 = v72[3];
  if (v37)
  {
    v64 = v36;
    v65 = v32;
    v66 = v30;
    v80 = v72[2];
    v81 = v37;

    v38 = Text.init<A>(_:)();
    v40 = v39;
    v42 = v41;
    static Font.subheadline.getter();
    v43 = Text.font(_:)();
    v45 = v44;
    v47 = v46;

    sub_10000D60C(v38, v40, v42 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v80 = qword_100230570;

    v48 = Text.foregroundStyle<A>(_:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_10000D60C(v43, v45, v47 & 1);

    v55 = swift_getKeyPath();
    v56 = &v9[*(v71 + 36)];
    (v69)(v56 + *(v66 + 28), v65, v70);
    *v56 = swift_getKeyPath();
    *v9 = v48;
    *(v9 + 1) = v50;
    v9[16] = v52 & 1;
    *(v9 + 3) = v54;
    *(v9 + 4) = v55;
    *(v9 + 5) = 1;
    v9[48] = 0;
    v57 = v76;
    View.accessibilityIdentifier(_:)();
    sub_10000D52C(v9, &qword_10021EC20, &qword_1001B6B48);
    v58 = v77;
    sub_1000F5120(v57, v77);
    v35 = 0;
  }

  else
  {
    v57 = v76;
    v58 = v77;
  }

  (*(v73 + 56))(v58, v35, 1, v74);
  v59 = v75;
  sub_10000D58C(v75, v57, &qword_10021EC28, &qword_1001B6B50);
  v60 = v78;
  sub_10000D58C(v58, v78, &qword_10021EC18, &qword_1001B6B40);
  v61 = v79;
  sub_10000D58C(v57, v79, &qword_10021EC28, &qword_1001B6B50);
  v62 = sub_100009F70(qword_10021EC48, &qword_1001B6BC0);
  sub_10000D58C(v60, v61 + *(v62 + 48), &qword_10021EC18, &qword_1001B6B40);
  sub_10000D52C(v58, &qword_10021EC18, &qword_1001B6B40);
  sub_10000D52C(v59, &qword_10021EC28, &qword_1001B6B50);
  sub_10000D52C(v60, &qword_10021EC18, &qword_1001B6B40);
  return sub_10000D52C(v57, &qword_10021EC28, &qword_1001B6B50);
}

uint64_t sub_1000F3680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = type metadata accessor for EnvironmentValues();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  (*(v10 + 16))(&v28 - v11, v3, v9);
  v13 = *(v8 - 8);
  v14 = 1;
  result = (*(v13 + 48))(v12, 1, v8);
  if (result == 1)
  {
    v8 = v9;
    v16 = v29;
LABEL_16:
    (*(v10 + 8))(v12, v8);
    v27 = type metadata accessor for URL();
    return (*(*(v27 - 8) + 56))(v16, v14, 1, v27);
  }

  v17 = *(v3 + *(a1 + 36));
  v18 = v3 + *(a1 + 40);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (v20 == 1)
  {
    v21 = *v18;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v19, 0);
    result = (*(v28 + 8))(v7, v5);
    v21 = v30;
  }

  v23 = v17 * v21;
  if (COERCE__INT64(fabs(v17 * v21)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v20)
  {
    v24 = *&v19;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v19, 0);
    result = (*(v28 + 8))(v7, v5);
    v24 = v30;
  }

  v16 = v29;
  v26 = v17 * v24;
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v26 < 9.22337204e18)
  {
    (*(*(a1 + 24) + 40))(v23, v26, 1, v8);
    v14 = 0;
    v10 = v13;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1000F3ACC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, v2, v5);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v10 = (*(*(a1 + 24) + 24))(v4);
    (*(v9 + 8))(v8, v4);
    if (v10)
    {
      return Color.init(cgColor:)();
    }
  }

  v12 = [objc_opt_self() systemGray5Color];
  return Color.init(uiColor:)();
}

uint64_t sub_1000F3C7C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_100009F70(&qword_10021BC68, &unk_1001B22F8);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1000F3680(a1, v7);
  (*(v3 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(a1 + 16);
  (*(v3 + 32))(v12 + v11, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_100009F70(&qword_10021A7A0, &qword_1001AFFC0);
  sub_10004F9BC();
  AsyncImage.init(url:scale:transaction:content:)();
  v13 = &v10[*(sub_100009F70(&qword_10021BC70, &qword_1001B2308) + 36)];
  *v13 = 0x3FF0000000000000;
  *(v13 + 4) = 0;
  v10[*(v8 + 36)] = 1;
  sub_10008D700();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v10, &qword_10021BC68, &unk_1001B22F8);
}

void sub_1000F3F10(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v22 = a2;
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AsyncImagePhase();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  if ((*(v12 + 88))(v14, v11) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v16 = Image.resizable(capInsets:resizingMode:)();
    (*(v8 + 8))(v10, v7);
    v23 = v16;
    v24 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021A7B8, &unk_1001AFFC8);
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();

    v17 = v25;
    v18 = v26;
  }

  else
  {
    v19 = type metadata accessor for PlaylistArtworkView(0, a3, a4, v15);
    v23 = sub_1000F3ACC(v19);
    v24 = 1;
    sub_100009F70(&qword_10021A7B8, &unk_1001AFFC8);
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();
    v17 = v25;
    v18 = v26;
    (*(v12 + 8))(v14, v11);
  }

  v20 = v22;
  *v22 = v17;
  *(v20 + 8) = v18;
}

void sub_1000F422C(uint64_t a1)
{
  sub_1000F565C(319, &qword_10021EBD0, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F42E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 32) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1000F44A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 32) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1000F479C(uint64_t *a1)
{
  sub_10000B3DC(&qword_10021AFA8, &unk_1001B6A30);
  type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  type metadata accessor for Array();
  v4 = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, v4, v5, v6);
  swift_getWitnessTable();
  type metadata accessor for Button();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

uint64_t sub_1000F4DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000F4E2C()
{
  result = qword_10021EBF8;
  if (!qword_10021EBF8)
  {
    sub_10000B3DC(&qword_10021EBD8, &qword_1001B6B20);
    sub_1000F4EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EBF8);
  }

  return result;
}

unint64_t sub_1000F4EB8()
{
  result = qword_10021EC00;
  if (!qword_10021EC00)
  {
    sub_10000B3DC(&qword_10021EBF0, &qword_1001B6B30);
    sub_10000D1EC(&qword_10021EC08, &qword_10021EC10, &qword_1001B6B38, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EC00);
  }

  return result;
}

uint64_t sub_1000F4F9C(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_1000F5068()
{
  result = qword_10021EC38;
  if (!qword_10021EC38)
  {
    sub_10000B3DC(&qword_10021EC20, &qword_1001B6B48);
    sub_10002764C();
    sub_10000D1EC(&qword_10021EC40, &qword_10021EC30, &qword_1001B6B88, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EC38);
  }

  return result;
}

uint64_t sub_1000F5120(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021EC28, &qword_1001B6B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000F5198(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    sub_1000F565C(319, &qword_1002198C0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F5244(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    if (v6 < 0xFE)
    {
      v19 = *((((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 > 1)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_33;
  }

LABEL_29:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_1000F53D4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v13 = (a3 - v10 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v12] = 0;
    }

    else if (v6)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0xFE)
      {
        v21 = ((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v21 + 8) = 0;
          *v21 = a2 - 255;
        }

        else
        {
          *(v21 + 8) = -a2;
        }
      }

      else if (v9 >= a2)
      {
        v22 = *(v7 + 56);

        v22();
      }

      else
      {
        if (v11 <= 3)
        {
          v18 = ~(-1 << (8 * v11));
        }

        else
        {
          v18 = -1;
        }

        if (v11)
        {
          v19 = v18 & (~v9 + a2);
          if (v11 <= 3)
          {
            v20 = v11;
          }

          else
          {
            v20 = 4;
          }

          bzero(a1, v11);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              *a1 = v19;
              a1[2] = BYTE2(v19);
            }

            else
            {
              *a1 = v19;
            }
          }

          else if (v20 == 1)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v19;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v16 = ~v10 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v16;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v12] = v17;
      }

      else
      {
        *&a1[v12] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v12] = v17;
  }
}

void sub_1000F565C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000F56AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlaylistArtworkView(255, *a1, a1[1], a4);
  sub_10000B3DC(&qword_10021EBD8, &qword_1001B6B20);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002188F8, &unk_1001ADC20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928, &unk_1001ADC30);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000F5928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PlaylistArtworkView(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = *(v5 - 8);
  if (!(*(v8 + 48))(v4 + v7, 1, v5))
  {
    (*(v8 + 8))(v4 + v7, v5);
  }

  sub_100027EB0(*(v4 + v7 + *(v6 + 40)), *(v4 + v7 + *(v6 + 40) + 8));

  return swift_deallocObject();
}

void sub_1000F5A58(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for PlaylistArtworkView(0, v6, v7, a2);

  sub_1000F3F10(a1, a3, v6, v7);
}

uint64_t sub_1000F5B38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000F5C04(uint64_t a1, void (*a2)(void, void), void *a3, uint64_t a4, uint64_t a5)
{
  v129 = a2;
  v9 = sub_100009F70(&qword_10021E558, &qword_1001B6080);
  __chkstk_darwin(v9 - 8);
  v104 = &v96 - v10;
  v125 = type metadata accessor for Sport();
  v105 = *(v125 - 8);
  __chkstk_darwin(v125);
  v100 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v13 = __chkstk_darwin(v12 - 8);
  v99 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v96 - v15;
  v16 = type metadata accessor for URL();
  v123 = *(v16 - 8);
  v124 = v16;
  v17 = __chkstk_darwin(v16);
  v97 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v98 = &v96 - v19;
  v20 = sub_100009F70(&qword_10021E4E0, &qword_1001B8DB0);
  v21 = __chkstk_darwin(v20 - 8);
  v118 = &v96 - v22;
  v121 = *(a4 - 8);
  v23 = __chkstk_darwin(v21);
  v103 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v117 = &v96 - v25;
  v26 = type metadata accessor for Music();
  v119 = *(v26 - 8);
  v120 = v26;
  __chkstk_darwin(v26);
  v101 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TimeZone();
  v115 = *(v28 - 8);
  v116 = v28;
  __chkstk_darwin(v28);
  v114 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Date();
  v113 = *(v131 - 8);
  __chkstk_darwin(v131);
  v112 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DateInterval();
  v109 = *(v130 - 8);
  __chkstk_darwin(v130);
  v108 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v126 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v110 = &v96 - v32;
  v33 = type metadata accessor for String.Encoding();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = objc_opt_self();
  v122 = a3;
  v38 = [v37 eventWithEventStore:a3];
  v39 = *(a5 + 136);
  v40 = v38;
  v39(a4, a5);
  v41 = String._bridgeToObjectiveC()();

  [v40 setTitle:v41];

  v42 = *(a5 + 120);
  v133 = a1;
  v43 = a4;
  v44 = a4;
  v45 = a5;
  v42(v44, a5);
  static String.Encoding.utf8.getter();
  v46 = String.data(using:allowLossyConversion:)();
  v48 = v47;

  (*(v34 + 8))(v36, v33);
  if (v48 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v40 setStructuredData:isa];

    sub_1000F6A9C(v46, v48);
  }

  v50 = v129;
  if (v129)
  {
    v51 = objc_opt_self();
    v52 = v50;
    v53 = [v51 locationWithMapItem:v52];
    [v40 setStructuredLocation:v53];
  }

  v54 = *(v45 + 168);
  v127 = v45;
  v128 = v45 + 168;
  v129 = v54;
  v55 = v110;
  v56 = v43;
  v54(v43, v45);
  v57 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v134 = v40;
  v106 = AssociatedConformanceWitness;
  v107 = *(AssociatedConformanceWitness + 16);
  v59 = v108;
  v107(v57, AssociatedConformanceWitness);
  v126 = *(v126 + 8);
  (v126)(v55, v57);
  v60 = v112;
  DateInterval.start.getter();
  v132 = v56;
  v109 = *(v109 + 8);
  (v109)(v59, v130);
  v61 = Date._bridgeToObjectiveC()().super.isa;
  v113 = *(v113 + 8);
  (v113)(v60, v131);
  [v134 setStartDate:v61];

  v129(v132, v127);
  v62 = v106;
  v107(v57, v106);
  (v126)(v55, v57);
  DateInterval.end.getter();
  (v109)(v59, v130);
  v63 = v132;
  v64 = Date._bridgeToObjectiveC()().super.isa;
  (v113)(v60, v131);
  [v134 setEndDate:v64];

  v65 = v133;
  v129(v63, v127);
  v66 = v114;
  v67 = v134;
  (*(v62 + 24))(v57, v62);
  (v126)(v55, v57);
  v68 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v115 + 8))(v66, v116);
  [v67 setTimeZone:v68];

  v69 = [v122 defaultCalendarForNewEvents];
  [v67 setCalendar:v69];

  v70 = *(v121 + 16);
  v70(v117, v65, v63);
  v71 = v118;
  v72 = v120;
  v73 = swift_dynamicCast();
  v74 = v119;
  v75 = *(v119 + 56);
  if (v73)
  {
    v75(v71, 0, 1, v72);
    v76 = v101;
    (*(v74 + 32))(v101, v71, v72);
    v77 = v102;
    Music.webURL.getter();
    v78 = v123;
    v79 = v124;
    v80 = (*(v123 + 48))(v77, 1, v124);
    v81 = v125;
    if (v80 != 1)
    {
      v87 = v98;
      (*(v78 + 32))(v98, v77, v79);
      URL.absoluteString.getter();
      v88 = String._bridgeToObjectiveC()();

      v89 = v134;
      [v134 setNotes:v88];

      (*(v78 + 8))(v87, v79);
      (*(v74 + 8))(v76, v72);
      return v134;
    }

    (*(v74 + 8))(v76, v72);
    sub_10000D52C(v77, qword_100218748, &unk_1001AD110);
  }

  else
  {
    v75(v71, 1, 1, v72);
    sub_10000D52C(v71, &qword_10021E4E0, &qword_1001B8DB0);
    v79 = v124;
    v81 = v125;
    v78 = v123;
  }

  v70(v103, v133, v132);
  v82 = v104;
  v83 = swift_dynamicCast();
  v84 = v105;
  if (v83)
  {
    (*(v105 + 56))(v82, 0, 1, v81);
    v85 = v100;
    (*(v84 + 32))(v100, v82, v81);
    v86 = v99;
    Sport.webURL.getter();
    if ((*(v78 + 48))(v86, 1, v79) == 1)
    {

      (*(v84 + 8))(v85, v81);
      sub_10000D52C(v86, qword_100218748, &unk_1001AD110);
    }

    else
    {
      v90 = v79;
      v91 = v97;
      (*(v78 + 32))(v97, v86, v90);
      URL.absoluteString.getter();
      v92 = v85;
      v93 = String._bridgeToObjectiveC()();

      v94 = v134;
      [v134 setNotes:v93];

      (*(v78 + 8))(v91, v90);
      (*(v84 + 8))(v92, v81);
    }
  }

  else
  {

    (*(v84 + 56))(v82, 1, 1, v81);
    sub_10000D52C(v82, &qword_10021E558, &qword_1001B6080);
  }

  return v134;
}

uint64_t sub_1000F6A9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100035DB0(result, a2);
  }

  return result;
}

unint64_t sub_1000F6AB8(uint64_t a1)
{
  result = sub_1000F6AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6AE0()
{
  result = qword_10021ECD0[0];
  if (!qword_10021ECD0[0])
  {
    type metadata accessor for EventAttribution();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021ECD0);
  }

  return result;
}

char *sub_1000F6B38(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_1000F6C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v12 = *(type metadata accessor for UpcomingViewModel(0, a8, a10, a4) + 48);
  type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  v14 = *(*(v13 - 8) + 32);

  return v14(a9 + v12, a7, v13);
}

void sub_1000F6D5C(uint64_t a1)
{
  sub_1000F72EC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Array();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Optional();
      type metadata accessor for Binding();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000F6E28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_34;
  }

  v13 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-49 - v9) | v11));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 < 2)
    {
LABEL_34:
      if (v8 == 0x7FFFFFFF)
      {
        v19 = *(a1 + 1);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {
        v20 = (*(v4 + 48))((v9 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_34;
  }

LABEL_23:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1000F7030(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(v7 + 80);
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = -2 - ((-49 - v11) | v12) - (((-17 - v11) | v11) - v13);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_22:
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
  {
    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_22;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_23:
    v19 = ~v10 + a2;
    if (v14 < 4)
    {
      v20 = (v19 >> (8 * v14)) + 1;
      if (v14)
      {
        v21 = v19 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v21;
            if (v6 > 1)
            {
LABEL_53:
              if (v6 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v6 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v6 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v6)
    {
      a1[v14] = v20;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v14] = 0;
  }

  else if (v6)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }
  }

  else
  {
    v22 = *(v7 + 56);
    v23 = (v11 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 32) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11;
    v24 = a2 + 1;

    v22(v23, v24);
  }
}

void sub_1000F72EC()
{
  if (!qword_10021EBD0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10021EBD0);
    }
  }
}

char *sub_1000F733C(uint64_t a1)
{
  v1 = type metadata accessor for GridItem.Size();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for GridItem();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = xmmword_1001AF670;
  (*(v2 + 104))(v4, enum case for GridItem.Size.flexible(_:), v1);
  GridItem.init(_:spacing:alignment:)();
  v8 = Array.count.getter();
  if (v8 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  return sub_1000F6B38(v7, v9);
}

void sub_1000F749C(void *a1, uint64_t a2)
{
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001AD8A0;
  v6 = a1[2];
  v5 = a1[3];
  *(v4 + 56) = &type metadata for AnalyticsString;
  *(v4 + 64) = &off_10021CBD0;
  *(v4 + 32) = 0;
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  v7 = sub_1000F7870(a2);
  if (v7 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  *(v4 + 96) = &type metadata for AnalyticsPageName;
  *(v4 + 104) = &off_10021CBA8;
  *(v4 + 72) = v8;
  *(v4 + 136) = &type metadata for AnalyticsModuleName;
  *(v4 + 144) = &off_10021CC30;
  *(v4 + 112) = 17;
  *(v4 + 176) = &type metadata for AnalyticsModuleAction;
  *(v4 + 184) = &off_10021CC08;
  *(v4 + 152) = xmmword_1001B6D00;
  *(v4 + 168) = 3;
  if (a1[9])
  {
    v9 = a1[8];
    v10 = a1[9];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v23 = &type metadata for AnalyticsString;
  v24 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  v21 = v9;
  v22 = v10;

  v11 = sub_1001666DC(1, 5, 1, v4);
  v26 = v11;
  v12 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  sub_1000EB0D0(4, v14, &v26, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v16 = String._bridgeToObjectiveC()();
  v17 = swift_allocObject();
  v17[2] = 0xD00000000000001ELL;
  v17[3] = 0x80000001001BDDE0;
  v17[4] = v11;
  v24 = sub_100010AAC;
  v25 = v17;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000DCA40;
  v23 = &unk_10020ED88;
  v18 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

double sub_1000F7778(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection<>.firstIndex(of:)();
  result = -v3;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000F7820()
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  return Binding.wrappedValue.getter();
}

uint64_t sub_1000F7870(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = *(v2 - 8);
  __chkstk_darwin(v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F7820();
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
    return 15;
  }

  else
  {
    (*(v8 + 32))(v10, v7, v2);
    v12 = sub_1000A199C(v10, v2, *(a1 + 24));
    (*(v8 + 8))(v10, v2);
    return v12;
  }
}

uint64_t sub_1000F7A38()
{

  return swift_deallocObject();
}

uint64_t sub_1000F7A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F7A90(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

id sub_1000F7B7C()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  sub_100009F70(&qword_10021EDF8, &qword_1001B6DA0);
  Binding.projectedValue.getter();
  v2 = v13;
  v3 = v14;
  v15 = v0[2];
  LOBYTE(v16) = *(v0 + 48);
  sub_100009F70(&qword_100218960, &unk_1001B81D0);
  Binding.projectedValue.getter();
  v4 = v12;
  v5 = v13;
  v6 = type metadata accessor for SearchBar.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV15ShazamEventsApp9SearchBar11Coordinator__text];
  *v8 = v12;
  *(v8 + 2) = v2;
  *(v8 + 3) = v3;
  v9 = &v7[OBJC_IVAR____TtCV15ShazamEventsApp9SearchBar11Coordinator__isSearching];
  *v9 = v4;
  v9[16] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, "init");
}

id sub_1000F7C6C()
{
  v1 = [objc_allocWithZone(UISearchBar) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100009F70(&qword_10021EE28, &qword_1001B6E90);
  UIViewRepresentableContext.coordinator.getter();
  [v1 setDelegate:v4];

  [v1 setSearchBarStyle:2];
  if (*(v0 + 64))
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  [v1 setPlaceholder:v2];

  [v1 setReturnKeyType:0];
  [v1 setShowsCancelButton:0 animated:0];
  return v1;
}

double sub_1000F7D7C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[1];
  aBlock = *v1;
  v19 = v11;
  sub_100009F70(&qword_10021EDF8, &qword_1001B6DA0);
  Binding.wrappedValue.getter();
  v12 = String._bridgeToObjectiveC()();

  [a1 setText:v12];

  aBlock = v1[2];
  LOBYTE(v19) = *(v1 + 48);
  sub_100009F70(&qword_100218960, &unk_1001B81D0);
  Binding.wrappedValue.getter();
  if (v22 == 1)
  {
    sub_1000F845C();
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v20 = sub_1000F84E0;
    v21 = v15;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v19 = sub_1001914E4;
    *(&v19 + 1) = &unk_10020EE88;
    v16 = _Block_copy(&aBlock);
    v17 = a1;
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_1000F84F0();
    sub_100009F70(&qword_1002231F0, &qword_1001B6E88);
    sub_1000F8548();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1000F82A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000F82DC@<X0>(void *a1@<X8>)
{
  result = sub_1000F7B7C();
  *a1 = result;
  return result;
}

uint64_t sub_1000F8318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F8408();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000F837C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F8408();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000F83E0(uint64_t a1)
{
  sub_1000F8408();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000F8408()
{
  result = qword_10021EE08;
  if (!qword_10021EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE08);
  }

  return result;
}

unint64_t sub_1000F845C()
{
  result = qword_1002231E0;
  if (!qword_1002231E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002231E0);
  }

  return result;
}

uint64_t sub_1000F84A8()
{

  return swift_deallocObject();
}

unint64_t sub_1000F84F0()
{
  result = qword_10021EE10;
  if (!qword_10021EE10)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE10);
  }

  return result;
}

unint64_t sub_1000F8548()
{
  result = qword_10021EE20;
  if (!qword_10021EE20)
  {
    sub_10000B3DC(&qword_1002231F0, &qword_1001B6E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE20);
  }

  return result;
}

uint64_t sub_1000F85B4(uint64_t a1)
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
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

uint64_t sub_1000F8660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v7 = *(type metadata accessor for PageControl(0, a3, a4, a4) + 36);
  type metadata accessor for Optional();
  v8 = type metadata accessor for Binding();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a2, v8);
}

id sub_1000F8700()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent:0.3];

  return v1;
}

uint64_t sub_1000F876C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for Optional();
  v3 = type metadata accessor for Binding();
  return a2(v3);
}

uint64_t sub_1000F87C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Optional();
  v3 = type metadata accessor for Binding();
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  type metadata accessor for PageControl.Coordinator(0, v2, *(a1 + 24), v6);
  sub_1000F876C(a1, &Binding.projectedValue.getter);
  v7 = swift_allocObject();
  sub_1000F8E6C(v5);
  return v7;
}

uint64_t sub_1000F8898(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1000F8E6C(a1);
  return v2;
}

id sub_1000F88D8(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(UIPageControl) init];
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  [v2 addTarget:v6 action:"pageDidChange:" forControlEvents:4096];

  [v2 setNumberOfPages:Array.count.getter()];
  v3 = sub_1000F8700();
  [v2 setPageIndicatorTintColor:v3];

  v4 = [objc_opt_self() labelColor];
  [v2 setCurrentPageIndicatorTintColor:v4];

  return v2;
}

void sub_1000F8A18(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Optional();
  v27 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v26 - v8;
  v32 = *(v5 - 8);
  __chkstk_darwin(v7);
  v28 = v10;
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Binding();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  v15 = v36;
  v16 = *v3;
  v17 = *(*v36 + 104);
  swift_beginAccess();
  *(v15 + v17) = v16;

  sub_1000F876C(a3, &Binding.projectedValue.getter);
  v18 = *(*v15 + 96);
  swift_beginAccess();
  v19 = v14;
  v20 = v30;
  (*(v12 + 40))(v15 + v18, v19, v11);
  swift_endAccess();
  v21 = [v20 numberOfPages];
  if (v21 != Array.count.getter())
  {
    [v20 setNumberOfPages:Array.count.getter()];
  }

  v22 = v31;
  sub_1000F876C(a3, &Binding.wrappedValue.getter);
  v23 = v32;
  if ((*(v32 + 48))(v22, 1, v5) == 1)
  {

    (*(v27 + 8))(v22, v28);
  }

  else
  {
    v24 = v29;
    (*(v23 + 32))(v29, v22, v5);
    v33 = v16;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection<>.firstIndex(of:)();
    if (v35 == 1 || (v25 = v34, v25 == [v20 currentPage]))
    {
      (*(v23 + 8))(v24, v5);
    }

    else
    {
      [v20 setCurrentPage:v25];

      (*(v23 + 8))(v24, v5);
    }
  }
}

uint64_t sub_1000F8E6C(uint64_t a1)
{
  v3 = *(*v1 + 104);
  *(v1 + v3) = static Array._allocateUninitialized(_:)();
  v4 = *(*v1 + 96);
  type metadata accessor for Optional();
  v5 = type metadata accessor for Binding();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t sub_1000F8F34(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v11[-v5];
  v8 = *(v7 + 104);
  swift_beginAccess();
  v15 = *(v1 + v8);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v14 = v12;
  v13 = [a1 currentPage];
  sub_100009F70(qword_10021EF10, qword_1001B6EE0);
  result = Range.contains(_:)();
  if (result)
  {
    [a1 currentPage];
    swift_beginAccess();
    Array.subscript.getter();
    swift_endAccess();
    v10 = [a1 interactionState];
    if (v10 != 2)
    {
      v10 = static Animation.default.getter();
    }

    __chkstk_darwin(v10);
    *&v11[-16] = v1;
    *&v11[-8] = v6;
    withAnimation<A>(_:_:)();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}