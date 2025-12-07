uint64_t sub_1002AAD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  sub_1009EA804();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  if (a5 != a7 || a6 != a8)
  {
    return 0;
  }

  return sub_1009E9A44(a2, a4);
}

uint64_t sub_1002AAE98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1002AAED8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1002AAF3C()
{
  result = qword_100CA6928;
  if (!qword_100CA6928)
  {
    result = swift_getWitnessTable(byte_100A317FC, &type metadata for LazyLocationViewGridLayout, v0, v1);
    atomic_store(result, &qword_100CA6928);
  }

  return result;
}

uint64_t sub_1002AAF90(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002AB040(uint64_t a1)
{
  result = qword_100CA69D8;
  if (!qword_100CA69D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002AB08C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10022C350(a3, a4);
  sub_1000037E8();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1002AB0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002AB040(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AB154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _LazyLayout_Subview_V1();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a1 + *(a2 + 24);

  return sub_100006F14((v5 + 64));
}

uint64_t sub_1002AB1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _LazyLayout_Subview_V1();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  memcpy((a1 + v8), (a2 + v8), 0x68uLL);
  return a1;
}

uint64_t sub_1002AB268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _LazyLayout_Subview_V1();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = a1 + v8;
  v13 = a2 + v8;
  v14 = *(v13 + 8);
  *v12 = *v13;
  *(v12 + 8) = v14;

  v15 = *(v13 + 32);
  *(v12 + 16) = *(v13 + 16);
  *(v12 + 32) = v15;
  *(v12 + 48) = *(v13 + 48);
  sub_100006F14((v12 + 64));
  v16 = *(v13 + 80);
  *(v12 + 64) = *(v13 + 64);
  *(v12 + 80) = v16;
  *(v12 + 96) = *(v13 + 96);
  return a1;
}

uint64_t sub_1002AB354(uint64_t a1)
{
  result = type metadata accessor for _LazyLayout_Subview_V1();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1002AB3F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1002AB444(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1002AB498(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1002AB4C0()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);
  return v0;
}

uint64_t sub_1002AB4F0()
{
  sub_1002AB4C0();

  return swift_deallocClassInstance();
}

uint64_t sub_1002AB524(uint64_t a1)
{
  v2 = type metadata accessor for SavedLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AB580(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6AC8, &qword_100A31A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002AB5E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C42D30, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002AB634(char a1)
{
  if (!a1)
  {
    return 0xD00000000000002ALL;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001FLL;
  }

  return 0xD00000000000001ELL;
}

unint64_t sub_1002AB6A8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002AB5E8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1002AB6D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002AB634(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002AB704(void *a1)
{
  v1 = [a1 type];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002AC2F0();
  sub_1002AC344();
  LOBYTE(v1) = BidirectionalCollection<>.starts<A>(with:)();

  return v1 & 1;
}

uint64_t sub_1002AB7B4(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v5 - 8);
  v7 = v70 - v6;
  v73 = type metadata accessor for ActivityAction(0);
  v8 = __chkstk_darwin(v73);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 type];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v76._countAndFlagsBits = v12;
  v76._object = v14;
  v15 = sub_1002AB5E8(v76);
  if (v15 == 3)
  {
    if (qword_100CA2768 != -1)
    {
      sub_10001E73C(&qword_100CA2768);
    }

    v16 = type metadata accessor for Logger();
    sub_10000703C(v16, qword_100D90C90);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_37;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v74[0] = v21;
    *v20 = 136446210;
    v22 = [v17 type];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100078694(v23, v25, v74);

    *(v20 + 4) = v26;
    v27 = "Failed to handle shortcut with unknown type=%{public}s";
    v28 = v19;
    v29 = v18;
    v30 = v20;
    v31 = 12;
    goto LABEL_36;
  }

  v32 = v15;
  v72 = v4;
  if (qword_100CA2768 != -1)
  {
    sub_10001E73C(&qword_100CA2768);
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_10000703C(v33, qword_100D90C90);
  v35 = a1;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v70[1] = v34;
    v71 = v7;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v74[0] = v39;
    *v38 = 136446723;
    LOBYTE(v75) = v32;
    v40 = String.init<A>(describing:)();
    v42 = sub_100078694(v40, v41, v74);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2160;
    *(v38 + 14) = 1752392040;
    *(v38 + 22) = 2081;
    v70[0] = v35;
    if (sub_1002AC274(v35))
    {
      sub_10022C350(&qword_100CE49E0, &qword_100A97870);
      v43 = Dictionary.description.getter();
      v45 = v44;
    }

    else
    {
      v43 = 0xD000000000000030;
      v45 = 0x8000000100ABD8B0;
    }

    v46 = sub_100078694(v43, v45, v74);

    *(v38 + 24) = v46;
    _os_log_impl(&_mh_execute_header, v36, v37, "Handling shortcut for type=%{public}s, userInfo=%{private,mask.hash}s", v38, 0x20u);
    swift_arrayDestroy();
    sub_100003884(v39);
    sub_100003884(v38);

    v7 = v71;
    v35 = v70[0];
  }

  else
  {
  }

  if (!v32)
  {
    sub_1000161C0(v2 + 4, v2[7]);
    swift_storeEnumTagMultiPayload();
    v61 = 1;
LABEL_30:
    sub_100366814(v10, 1, 0);
    sub_1002AC218(v10);
    return v61;
  }

  if (v32 != 1)
  {
    if (qword_100CA29A0 != -1)
    {
      swift_once();
    }

    v61 = 1;
    LOBYTE(v74[0]) = 1;
    sub_1002AC1D8(&unk_100CA6B90, byte_100A31AA4);
    Updatable.save<A>(setting:value:)();
    sub_1000161C0(v2 + 4, v2[7]);
    swift_storeEnumTagMultiPayload();
    goto LABEL_30;
  }

  if (!sub_1002AC274(v35) || (v47 = sub_10087A800(), , !v47) || (v74[0] = v47, v48 = sub_10022C350(&qword_100CE49E0, &qword_100A97870), (sub_10001BC2C(v48, v49, v50, &type metadata for Double) & 1) == 0) || (v51 = v75, !sub_1002AC274(v35)) || (v52 = sub_10087A800(), v53 = , !v52) || (v74[0] = v52, (sub_10001BC2C(v53, v54, v55, &type metadata for Double) & 1) == 0) || (v56 = v75, !sub_1002AC274(v35)) || (v57 = sub_10087A800(), , !v57) || (v75 = *&v57, (swift_dynamicCast() & 1) == 0))
  {
    v63 = v35;
    v18 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v64))
    {
LABEL_37:

      return 0;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v74[0] = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    if (sub_1002AC274(v63))
    {
      sub_10022C350(&qword_100CE49E0, &qword_100A97870);
      v65 = Dictionary.description.getter();
      v67 = v66;
    }

    else
    {
      v65 = 0xD000000000000030;
      v67 = 0x8000000100ABD8B0;
    }

    v68 = sub_100078694(v65, v67, v74);

    *(v20 + 14) = v68;
    v27 = "Failed to handle saved location shortcut, missing information from userInfo=%{private,mask.hash}s";
    v28 = v64;
    v29 = v18;
    v30 = v20;
    v31 = 22;
LABEL_36:
    _os_log_impl(&_mh_execute_header, v29, v28, v27, v30, v31);
    sub_100006F14(v21);
    sub_100003884(v21);
    sub_100003884(v20);
    goto LABEL_37;
  }

  v59 = v74[0];
  v58 = v74[1];
  v60 = type metadata accessor for Date();
  v61 = 1;
  sub_10001B350(v7, 1, 1, v60);
  sub_100066E08();
  v62 = Dictionary.init(dictionaryLiteral:)();
  sub_1002A2C08(v59, v58, 18, v7, v62, 0, 0, v51, v56);

  sub_1001AEDF4(v7);
  return v61;
}

uint64_t sub_1002ABFCC()
{

  sub_100006F14((v0 + 32));
  return v0;
}

uint64_t sub_1002ABFFC()
{
  sub_1002ABFCC();

  return swift_deallocClassInstance();
}

uint64_t sub_1002AC1D8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ShortcutItemHandler();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002AC218(uint64_t a1)
{
  v2 = type metadata accessor for ActivityAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AC274(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10022C350(&qword_100CE49E0, &qword_100A97870);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1002AC2F0()
{
  result = qword_100CA6BA8;
  if (!qword_100CA6BA8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_100CA6BA8);
  }

  return result;
}

unint64_t sub_1002AC344()
{
  result = qword_100CA6BB0;
  if (!qword_100CA6BB0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_100CA6BB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowHeightCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShortcutItem(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002AC500()
{
  result = qword_100CA6BB8;
  if (!qword_100CA6BB8)
  {
    result = swift_getWitnessTable(aI_15, &type metadata for ShortcutItem, v0, v1);
    atomic_store(result, &qword_100CA6BB8);
  }

  return result;
}

uint64_t type metadata accessor for MoonScrubberViewModel(uint64_t a1)
{
  result = qword_100CA6C20;
  if (!qword_100CA6C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AC5C8(uint64_t a1)
{
  sub_1002AC72C(319, &qword_100CA6C30, type metadata accessor for ScrubberDateSelection, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1002AC72C(319, &qword_100CA6C38, type metadata accessor for ScrubberDay, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_1002AC72C(319, &unk_100CA6C40, type metadata accessor for ScrubberHour, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          type metadata accessor for TimeZone();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002AC72C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1002AC790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrubberDateSelection(0);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA6BC0, &unk_100A31BE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_10022C350(&qword_100CA6C90, &unk_100A4C610);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v14 = *(v13 + 56);
  sub_1002ACB5C(a1, &v22 - v11);
  sub_1002ACB5C(a2, &v12[v14]);
  sub_10000394C(v12);
  if (v15)
  {
    sub_10000394C(&v12[v14]);
    if (v15)
    {
      sub_10003FDF4(v12, &qword_100CA6BC0, &unk_100A31BE0);
      goto LABEL_11;
    }

LABEL_9:
    sub_10003FDF4(v12, &qword_100CA6C90, &unk_100A4C610);
LABEL_17:
    v20 = 0;
    return v20 & 1;
  }

  sub_1002ACB5C(v12, v9);
  sub_10000394C(&v12[v14]);
  if (v15)
  {
    sub_1002ACBCC(v9);
    goto LABEL_9;
  }

  sub_1002ACC28(&v12[v14], v6);
  v16 = sub_1009B93F4(v9, v6);
  sub_1002ACBCC(v6);
  sub_1002ACBCC(v9);
  sub_10003FDF4(v12, &qword_100CA6BC0, &unk_100A31BE0);
  if ((v16 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v17 = type metadata accessor for MoonScrubberViewModel(0);
  sub_100003C48(v17[5]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100003C48(v17[6]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100003C48(v17[7]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1009ECAA8();
  if ((v18 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1009ECE20();
  if ((v19 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100003C48(v17[10]);
  v20 = static TimeZone.== infix(_:_:)();
  return v20 & 1;
}

uint64_t sub_1002ACA08@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CA6C98, &qword_100A31C90);
  a1[4] = sub_1002ACC8C();
  sub_100042FB0(a1);
  type metadata accessor for MoonScrubberViewModel(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1002ACAD0(uint64_t a1)
{
  sub_1002ACCF0(&qword_100CA6CA8, aI_16);

  return ShortDescribable.description.getter();
}

uint64_t sub_1002ACB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6BC0, &unk_100A31BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002ACBCC(uint64_t a1)
{
  v2 = type metadata accessor for ScrubberDateSelection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002ACC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrubberDateSelection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002ACC8C()
{
  result = qword_100CA6CA0;
  if (!qword_100CA6CA0)
  {
    v3 = sub_10022E824(&qword_100CA6C98, &qword_100A31C90);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CA6CA0);
  }

  return result;
}

uint64_t sub_1002ACCF0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MoonScrubberViewModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1002ACD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  sub_1000302D8(v23, &a9 - v34, &qword_100CA54B0, &qword_100A2F8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10011C0F0(v35, v25, &qword_100CA6D28, &qword_100A4CEA0);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  sub_10000536C();
}

void sub_1002ACF28()
{
  sub_10000C778();
  v36 = v2;
  v35 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v34 = v5 - v4;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v32 = v7;
  v33 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for ReportWeatherView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v30 = sub_10022C350(&qword_100CA6D80, &qword_100A31D38);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v31 = sub_10022C350(&qword_100CA6D88, &qword_100A31D40);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100014230();
  v37 = v0;
  sub_10022C350(&qword_100CA6D90, &qword_100A31D48);
  sub_10023FBF4(&qword_100CA6D98, &qword_100CA6D90, &qword_100A31D48, &protocol conformance descriptor for VStack<A>);
  NavigationView.init(content:)();
  v18 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v16[*(sub_10022C350(&qword_100CA6DA0, &unk_100A31D80) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  sub_1002AFD60(v0, &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  sub_1002AFAD0(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = &v16[*(sub_10022C350(&qword_100CA6DA8, &qword_100A31D90) + 36)];
  *v23 = sub_1002AFB34;
  v23[1] = v22;
  v23[2] = 0;
  v23[3] = 0;
  sub_1002AFD60(v0, &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_1002AFAD0(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v21);
  v25 = &v16[*(v30 + 36)];
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 2) = sub_1002AFB4C;
  *(v25 + 3) = v24;
  static AccessibilityChildBehavior.contain.getter();
  sub_1002AFBFC(&qword_100CA6DB0, &qword_100CA6D80, &qword_100A31D38, sub_1002AFBCC);
  View.accessibilityElement(children:)();
  (*(v32 + 8))(v10, v33);
  sub_10003FDA0(v16, &qword_100CA6D80);
  *(v1 + *(sub_10022C350(&qword_100CA6DD8, &qword_100A31DA8) + 36)) = 1;
  type metadata accessor for AutomationViewInfo(0);
  v26 = v34;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v27 = v1 + *(v31 + 36);
  v28 = type metadata accessor for AutomationInfoProperty(0);
  sub_1002AFD60(v26, v27 + *(v28 + 24));
  sub_1002B042C(v26, type metadata accessor for AutomationInfo);
  *v27 = 0;
  *(v27 + 8) = 0xE000000000000000;
  *(v27 + 16) = swift_getKeyPath();
  *(v27 + 24) = 0;
  Solarium.init()();
  sub_10022C350(&qword_100CA6DE0, &qword_100A31DD8);
  sub_1002AFDB8();
  sub_1002AFF70();
  View.staticIf<A, B>(_:then:)();
  sub_10003FDA0(v1, &qword_100CA6D88);
  sub_10000536C();
}

uint64_t sub_1002AD448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10022C350(&qword_100CA6E20, &qword_100A31DE8);
  return sub_1002AD4A0(a1, a2 + *(v4 + 44));
}

uint64_t sub_1002AD4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v72 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA6E28, &qword_100A31DF0);
  __chkstk_darwin(v5);
  v7 = &v63 - v6;
  v69 = sub_10022C350(&qword_100CA6E30, &qword_100A31DF8);
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v63 - v8;
  v9 = sub_10022C350(&qword_100CA6E38, &qword_100A31E00);
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin(v9);
  v68 = &v63 - v10;
  v79 = sub_10022C350(&qword_100CA6E40, &qword_100A31E08);
  __chkstk_darwin(v79);
  v65 = &v63 - v11;
  v76 = sub_10022C350(&qword_100CA6E48, &qword_100A31E10);
  __chkstk_darwin(v76);
  v78 = &v63 - v12;
  v13 = sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0);
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  v75 = type metadata accessor for ReportWeatherSubmittedView(0);
  __chkstk_darwin(v75);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10022C350(&qword_100CA6E50, &unk_100A31E18);
  v18 = *(v77 - 8);
  __chkstk_darwin(v77);
  v20 = &v63 - v19;
  v21 = type metadata accessor for ReportWeatherView(0);
  v22 = (a1 + *(v21 + 28));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v81) = v23;
  v82 = v24;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  v25 = State.wrappedValue.getter();
  if (v85 == 1)
  {
    sub_1002ACD78(v25, v26, v27, v28, v29, v30, v31, v32, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
    Binding.projectedValue.getter();
    sub_10003FDA0(v15, &qword_100CA6D28);
    v33 = sub_1002B01D4(&qword_100CA6EA8, type metadata accessor for ReportWeatherSubmittedView, byte_100A9E4DC);
    v34 = v75;
    View.navigationBarHidden(_:)();
    sub_1002B042C(v17, type metadata accessor for ReportWeatherSubmittedView);
    v35 = v77;
    (*(v18 + 16))(v78, v20, v77);
    swift_storeEnumTagMultiPayload();
    v81 = v34;
    v82 = v33;
    swift_getOpaqueTypeConformance2();
    sub_1002B021C();
    _ConditionalContent<>.init(storage:)();
    return (*(v18 + 8))(v20, v35);
  }

  else
  {
    sub_1002ADDE0();
    v37 = (a1 + *(v21 + 32));
    v38 = v37[1];
    v81 = *v37;
    v82 = v38;
    sub_10002D5A4();

    v39 = Text.init<A>(_:)();
    v41 = v40;
    v43 = v42;
    v44 = sub_1002B0028();
    v45 = v66;
    View.navigationTitle(_:)();
    sub_10010CD64(v39, v41, v43 & 1);

    v46 = sub_10003FDA0(v7, &qword_100CA6E28);
    v64 = &v63;
    __chkstk_darwin(v46);
    *(&v63 - 2) = a1;
    v47 = sub_10022C350(&qword_100CA6E90, &qword_100A31E38);
    v81 = v5;
    v82 = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = sub_10022E824(&qword_100CA6E98, &unk_100A31E40);
    v50 = sub_10023FBF4(&qword_100CA6EA0, &qword_100CA6E98, &unk_100A31E40, &protocol conformance descriptor for TupleToolbarContent<A>);
    v81 = v49;
    v82 = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v53 = v68;
    v52 = v69;
    View.toolbar<A>(content:)();
    (*(v67 + 8))(v45, v52);
    v55 = v72;
    v54 = v73;
    v56 = v74;
    (*(v73 + 104))(v72, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v74);
    v81 = v52;
    v82 = v47;
    v83 = OpaqueTypeConformance2;
    v84 = v51;
    swift_getOpaqueTypeConformance2();
    v57 = v65;
    v58 = v71;
    View.navigationBarTitleDisplayMode(_:)();
    (*(v54 + 8))(v55, v56);
    (*(v70 + 8))(v53, v58);
    v59 = *(v79 + 36);
    v60 = enum case for ColorScheme.dark(_:);
    v61 = type metadata accessor for ColorScheme();
    (*(*(v61 - 8) + 104))(v57 + v59, v60, v61);
    sub_10001B350(v57 + v59, 0, 1, v61);
    sub_1000302D8(v57, v78, &qword_100CA6E40, &qword_100A31E08);
    swift_storeEnumTagMultiPayload();
    v62 = sub_1002B01D4(&qword_100CA6EA8, type metadata accessor for ReportWeatherSubmittedView, byte_100A9E4DC);
    v81 = v75;
    v82 = v62;
    swift_getOpaqueTypeConformance2();
    sub_1002B021C();
    _ConditionalContent<>.init(storage:)();
    return sub_10003FDA0(v57, &qword_100CA6E40);
  }
}

void sub_1002ADDE0()
{
  sub_10000C778();
  v2 = v0;
  v4 = v3;
  v5 = sub_10022C350(&qword_100CA6F48, &unk_100A31F10);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100014230();
  v7 = sub_10022C350(&qword_100CA6E68, &qword_100A31E28);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for ReportWeatherView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_1009880C4();
  v14 = *&v56[0];
  if ((*&v56[0] & 0x8000000000000000) == 0)
  {
    v15 = swift_allocObject();
    *&v51 = v4;
    v16 = v15;
    *&v50 = v1;
    *(v15 + 16) = v14;
    v46 = (v15 + 16);
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    *&v49 = v5;
    v18 = v17;
    v19 = swift_allocObject();
    v47 = v7;
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v16;
    sub_1002AFD60(v2, &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    *&v48 = v16;

    v20 = static MainActor.shared.getter();
    v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v16;
    sub_1002AFAD0(&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    Binding.init(get:set:)();
    v23 = v56[0];
    v24 = *&v56[1];
    swift_getKeyPath();
    v25 = sub_1000038D8();
    *&v10[*(type metadata accessor for ReportWeatherContentView(v25) + 20)] = v20;
    sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
    swift_storeEnumTagMultiPayload();
    *v10 = v23;
    *(v10 + 2) = v24;
    swift_getKeyPath();
    v56[0] = v23;
    *&v56[1] = v24;

    sub_10022C350(&qword_100CA6F58, &qword_100A5BB10);
    Binding.subscript.getter();

    v26 = v52;
    v27 = v53;
    LOBYTE(v21) = v54;
    v28 = &v10[*(v47 + 36)];
    v29 = *(type metadata accessor for SafariSheetModifier(0) + 20);
    v30 = v46;
    swift_beginAccess();
    v31 = *v30;
    v32 = OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_onlineFeedbackURL;
    v33 = type metadata accessor for URL();
    sub_1000037E8();
    (*(v34 + 16))(&v28[v29], v31 + v32, v33);
    sub_10001B350(&v28[v29], 0, 1, v33);
    *v28 = v26;
    *(v28 + 1) = v27;
    v28[16] = v21;
    sub_1000302D8(v10, v50, &qword_100CA6E68, &qword_100A31E28);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA6E88, &qword_100A31E30);
    sub_1002B00E0();
    sub_1000055A4();
    sub_10023FBF4(v35, &qword_100CA6E88, &qword_100A31E30, v36);
    _ConditionalContent<>.init(storage:)();
    sub_10003FDA0(v10, &qword_100CA6E68);

LABEL_7:
    sub_10000536C();
    return;
  }

  v50 = *(&v56[1] + 8);
  v51 = *(v56 + 8);
  v48 = *(&v56[3] + 8);
  v49 = *(&v56[2] + 8);
  v37 = *(&v56[4] + 1);
  v38 = v56[5];
  v39 = swift_allocObject();
  *(v39 + 16) = v14 & 0x7FFFFFFFFFFFFFFFLL;
  *(v39 + 40) = v50;
  *(v39 + 24) = v51;
  *(v39 + 72) = v48;
  *(v39 + 56) = v49;
  *(v39 + 88) = v37;
  *(v39 + 96) = v38;
  v40 = sub_10022C350(&qword_100CA6F50, &qword_100A3E000);
  v55[10] = sub_10071E894;
  v55[11] = 0;
  LOBYTE(v55[12]) = 0;
  v55[0] = v40;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000302D8(&xmmword_100D8FB90, v56, &unk_100CAF270, &qword_100A31F20);
  if (*(&v56[1] + 1))
  {
    sub_100013188(v56, &v55[3]);
    v55[1] = sub_1002B08C4;
    v55[2] = v39;
    v41 = Dictionary.init(dictionaryLiteral:)();
    v55[8] = _swiftEmptyArrayStorage;
    v55[9] = v41;
    memcpy(v56, v55, 0x61uLL);
    sub_1000302D8(v56, v1, &qword_100CA6E88, &qword_100A31E30);
    swift_storeEnumTagMultiPayload();
    v42 = sub_100003940();
    sub_10022C350(v42, v43);
    sub_1002B00E0();
    sub_1000055A4();
    sub_10023FBF4(v44, &qword_100CA6E88, &qword_100A31E30, v45);
    _ConditionalContent<>.init(storage:)();
    sub_10003FDA0(v56, &qword_100CA6E88);
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1002AE4E8()
{
  v0 = sub_10022C350(&qword_100CA6E98, &unk_100A31E40);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_1002AE60C();
  sub_10023FBF4(&qword_100CA6EA0, &qword_100CA6E98, &unk_100A31E40, &protocol conformance descriptor for TupleToolbarContent<A>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_1002AE60C()
{
  sub_10000C778();
  v19[1] = v2;
  v19[0] = sub_10022C350(&qword_100CA6EC0, &qword_100A31E50);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = v19 - v4;
  v6 = sub_10022C350(&qword_100CA6EC8, &qword_100A31E58);
  sub_1000037C4();
  v8 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  v12 = type metadata accessor for ToolbarItemPlacement();
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v14 = sub_10022C350(&qword_100CA6ED0, &qword_100A31E60);
  sub_1000037C4();
  v16 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100014230();
  static ToolbarItemPlacement.navigationBarLeading.getter();
  v21 = v0;
  sub_10022C350(&qword_100CA6ED8, &qword_100A31E68);
  sub_1002B048C();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v20 = v0;
  sub_10022C350(&qword_100CA6EF0, &qword_100A31E80);
  sub_1002B0580();
  ToolbarItem<>.init(placement:content:)();
  v18 = *(v19[0] + 48);
  (*(v16 + 16))(v5, v1, v14);
  (*(v8 + 16))(&v5[v18], v11, v6);
  TupleToolbarContent.init(_:)();
  (*(v8 + 8))(v11, v6);
  (*(v16 + 8))(v1, v14);
  sub_10000536C();
}

uint64_t sub_1002AE8CC(uint64_t a1)
{
  v2 = type metadata accessor for ReportWeatherView(0);
  v3 = sub_1000161C0((a1 + *(v2 + 24)), *(a1 + *(v2 + 24) + 24));
  sub_1000161C0((*v3 + 32), *(*v3 + 56));
  type metadata accessor for ReportWeatherExposureEvent();
  sub_1002B01D4(&qword_100CA6E18, &type metadata accessor for ReportWeatherExposureEvent, &protocol conformance descriptor for ReportWeatherExposureEvent);
  return Tracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_1002AE96C(uint64_t a1)
{
  v2 = type metadata accessor for ReportWeatherView(0);
  sub_1009880C4();
  if ((v4[0] & 0x8000000000000000) == 0)
  {
    sub_1000161C0((a1 + *(v2 + 24)), *(a1 + *(v2 + 24) + 24));
    sub_10071E4F8();
  }

  return sub_10026AD10(v4);
}

uint64_t sub_1002AE9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() systemBackgroundColor];
  v5 = Color.init(_:)();
  v6 = static SafeAreaRegions.all.getter();
  v7 = static Edge.Set.all.getter();
  v8 = static Alignment.center.getter();
  v10 = v9;
  sub_1000302D8(a1, a2, &qword_100CA6D88, &qword_100A31D40);
  result = sub_10022C350(&qword_100CA6DE0, &qword_100A31DD8);
  v12 = a2 + *(result + 36);
  *v12 = v5;
  *(v12 + 8) = v6;
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  return result;
}

uint64_t sub_1002AEAAC@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 16);
}

uint64_t sub_1002AEAF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  swift_beginAccess();
  *(a4 + 16) = v7;

  v8 = type metadata accessor for ReportWeatherView(0);
  sub_1000161C0((a5 + *(v8 + 24)), *(a5 + *(v8 + 24) + 24));
  v10[0] = v7 & 0xFFFFFFFFFFFFFF9;
  return sub_10071E3FC(v10);
}

uint64_t sub_1002AEB8C@<X0>(void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1000161C0(a1, a1[3]);
  sub_100035B30(*v5 + 16, a3);
  memcpy((a3 + 40), a2, 0x60uLL);
  return sub_1002B094C(a2, &v7);
}

uint64_t sub_1002AEBEC(uint64_t a1)
{
  Solarium.init()();
  sub_10022C350(&unk_100CE1740, &unk_100A31E70);
  sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  sub_10023FBF4(&qword_100CA6EE8, &unk_100CE1740, &unk_100A31E70, &protocol conformance descriptor for Button<A>);
  sub_10023FBF4(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_1002AED1C(uint64_t a1)
{
  Solarium.init()();
  sub_10022C350(&qword_100CA6F08, &qword_100A31E88);
  sub_10022C350(&qword_100CA6F28, &qword_100A31E98);
  sub_10012E508();
  sub_1002B0618();
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_1002AEDF0(uint64_t a1)
{
  v2 = type metadata accessor for ReportWeatherView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10022C350(&qword_100CA6F40, &unk_100A97D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  static ButtonRole.cancel.getter();
  v8 = type metadata accessor for ButtonRole();
  sub_10001B350(v7, 0, 1, v8);
  sub_1002AFD60(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1002AFAD0(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return Button.init(role:action:label:)();
}

uint64_t sub_1002AEFA4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1002AEFDC(uint64_t a1)
{
  v2 = type metadata accessor for ReportWeatherView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10022C350(&qword_100CA6F40, &unk_100A97D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  static ButtonRole.cancel.getter();
  v8 = type metadata accessor for ButtonRole();
  sub_10001B350(v7, 0, 1, v8);
  sub_1002AFD60(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1002AFAD0(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return Button.init(role:action:label:)();
}

uint64_t sub_1002AF2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReportWeatherView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10022C350(&unk_100CE1740, &unk_100A31E70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  sub_1002AFD60(a1, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1002AFAD0(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  Button.init(action:label:)();
  sub_1009880C4();
  if (v19[0] < 0)
  {
    sub_10026AD10(v19);
    v14 = 1;
  }

  else
  {
    v13 = sub_100587B64(v19[0]);
    sub_10026AD10(v19);
    v14 = !v13;
  }

  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14 & 1;
  (*(v8 + 32))(a2, v10, v7);
  result = sub_10022C350(&qword_100CA6F08, &qword_100A31E88);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = sub_1002B09C4;
  v18[2] = v16;
  return result;
}

uint64_t sub_1002AF53C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1002AF57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for ReportWeatherView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-1] - v8;
  v10 = sub_10022C350(&qword_100CA6F38, &qword_100A31EA0);
  __chkstk_darwin(v10);
  v12 = &v28[-1] - v11;
  sub_1002AFD60(a1, &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1002AFAD0(&v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  Button.init(action:label:)();
  sub_1009880C4();
  if (v29[0] < 0)
  {
    sub_10026AD10(v29);
  }

  else
  {
    v15 = sub_100587B64(v29[0]);
    sub_10026AD10(v29);
    if (v15)
    {
      v16 = static Color.white.getter();
      goto LABEL_6;
    }
  }

  v16 = static Color.gray.getter();
LABEL_6:
  v17 = v16;
  KeyPath = swift_getKeyPath();
  (*(v7 + 32))(v12, v9, v6);
  v19 = &v12[*(v10 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  sub_1009880C4();
  if (v28[0] < 0)
  {
    sub_10026AD10(v28);
    v21 = 1;
  }

  else
  {
    v20 = sub_100587B64(v28[0]);
    sub_10026AD10(v28);
    v21 = !v20;
  }

  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v21 & 1;
  v24 = v27;
  sub_10011C0F0(v12, v27, &qword_100CA6F38, &qword_100A31EA0);
  result = sub_10022C350(&qword_100CA6F28, &qword_100A31E98);
  v26 = (v24 + *(result + 36));
  *v26 = v22;
  v26[1] = sub_100168F20;
  v26[2] = v23;
  return result;
}

uint64_t sub_1002AF8EC(uint64_t a1, uint64_t a2)
{
  static Animation.timingCurve(_:_:_:_:duration:)();
  withAnimation<A>(_:_:)();

  v3 = type metadata accessor for ReportWeatherView(0);
  sub_1009880C4();
  if ((v5[0] & 0x8000000000000000) == 0)
  {
    sub_1000161C0((a1 + *(v3 + 24)), *(a1 + *(v3 + 24) + 24));
    sub_10071E584(v5[0]);
  }

  return sub_10026AD10(v5);
}

uint64_t sub_1002AF9BC()
{
  v0 = sub_1000038D8();
  type metadata accessor for ReportWeatherView(v0);
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  return State.wrappedValue.setter();
}

uint64_t sub_1002AFA50@<X0>(const char *a2@<X1>, uint64_t a3@<X8>, uint64_t x2_0@<X2>)
{
  v7 = LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)(v7, v9, v8 & 1, v10, 0, 0, 0, a2, x2_0, 2);
  *a3 = result;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v14;
  return result;
}

uint64_t sub_1002AFAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportWeatherView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AFB64(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for ReportWeatherView(0);
  sub_100003810(v1);
  v3 = sub_1000055BC(*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1002AFBFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10[0] = a4();
    v10[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002AFC7C()
{
  result = qword_100CA6DC0;
  if (!qword_100CA6DC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA6DA0, &unk_100A31D80);
    v4[0] = sub_10023FBF4(&qword_100CA6DC8, &unk_100CA6DD0, &unk_100A31D98, &protocol conformance descriptor for NavigationView<A>);
    v4[1] = sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA6DC0);
  }

  return result;
}

uint64_t sub_1002AFD60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

unint64_t sub_1002AFDB8()
{
  result = qword_100CA6DE8;
  if (!qword_100CA6DE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA6D88, &qword_100A31D40);
    v4[0] = sub_1002AFE74();
    v4[1] = sub_1002B01D4(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA6DE8);
  }

  return result;
}

unint64_t sub_1002AFE74()
{
  result = qword_100CA6DF0;
  if (!qword_100CA6DF0)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CA6DD8, &qword_100A31DA8);
    v4[2] = sub_10022E824(&qword_100CA6D80, &qword_100A31D38);
    v4[3] = sub_1002AFBFC(&qword_100CA6DB0, &qword_100CA6D80, &qword_100A31D38, sub_1002AFBCC);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA6DF0);
  }

  return result;
}

unint64_t sub_1002AFF70()
{
  result = qword_100CA6E00;
  if (!qword_100CA6E00)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA6DE0, &qword_100A31DD8);
    v4[0] = sub_1002AFDB8();
    v4[1] = sub_10023FBF4(&qword_100CA6E08, &qword_100CA6E10, &qword_100A31DE0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA6E00);
  }

  return result;
}

unint64_t sub_1002B0028()
{
  result = qword_100CA6E58;
  if (!qword_100CA6E58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA6E28, &qword_100A31DF0);
    v4[0] = sub_1002B00E0();
    v4[1] = sub_10023FBF4(&qword_100CA6E80, &qword_100CA6E88, &qword_100A31E30, byte_100A5F580);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA6E58);
  }

  return result;
}

unint64_t sub_1002B00E0()
{
  result = qword_100CA6E60;
  if (!qword_100CA6E60)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA6E68, &qword_100A31E28);
    v4[0] = sub_1002B01D4(&qword_100CA6E70, type metadata accessor for ReportWeatherContentView, byte_100A5BA5C);
    v4[1] = sub_1002B01D4(&qword_100CA6E78, type metadata accessor for SafariSheetModifier, a9r);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA6E60);
  }

  return result;
}

uint64_t sub_1002B01D4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002B021C()
{
  result = qword_100CA6EB0;
  if (!qword_100CA6EB0)
  {
    v6[14] = v0;
    v6[15] = v1;
    v3 = sub_10022E824(&qword_100CA6E40, &qword_100A31E08);
    v4 = sub_10022E824(&qword_100CA6E38, &qword_100A31E00);
    sub_10022E824(&qword_100CA6E30, &qword_100A31DF8);
    sub_10022E824(&qword_100CA6E90, &qword_100A31E38);
    sub_10022E824(&qword_100CA6E28, &qword_100A31DF0);
    sub_1002B0028();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_10022E824(&qword_100CA6E98, &unk_100A31E40);
    sub_10023FBF4(&qword_100CA6EA0, &qword_100CA6E98, &unk_100A31E40, &protocol conformance descriptor for TupleToolbarContent<A>);
    v6[4] = OpaqueTypeConformance2;
    v6[5] = swift_getOpaqueTypeConformance2();
    v6[2] = v4;
    v6[3] = swift_getOpaqueTypeConformance2();
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_10023FBF4(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(result, &qword_100CA6EB0);
  }

  return result;
}

uint64_t sub_1002B042C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1002B048C()
{
  result = qword_100CA6EE0;
  if (!qword_100CA6EE0)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = sub_10022E824(&qword_100CA6ED8, &qword_100A31E68);
    v4[0] = &protocol witness table for Solarium;
    v4[1] = sub_10023FBF4(&qword_100CA6EE8, &unk_100CE1740, &unk_100A31E70, &protocol conformance descriptor for Button<A>);
    v4[2] = sub_10023FBF4(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CA6EE0);
  }

  return result;
}

unint64_t sub_1002B0580()
{
  result = qword_100CA6EF8;
  if (!qword_100CA6EF8)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CA6EF0, &qword_100A31E80);
    v4[0] = &protocol witness table for Solarium;
    v4[1] = sub_10012E508();
    v4[2] = sub_1002B0618();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CA6EF8);
  }

  return result;
}

unint64_t sub_1002B0618()
{
  result = qword_100CA6F20;
  if (!qword_100CA6F20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA6F28, &qword_100A31E98);
    v4[0] = sub_1002B06D0();
    v4[1] = sub_10023FBF4(&qword_100CA6F10, &unk_100CA6F18, &unk_100A31E90, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA6F20);
  }

  return result;
}

unint64_t sub_1002B06D0()
{
  result = qword_100CA6F30;
  if (!qword_100CA6F30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA6F38, &qword_100A31EA0);
    v4[0] = sub_10023FBF4(&qword_100CA5548, &qword_100CA5528, &qword_100A2F940, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA6F30);
  }

  return result;
}

uint64_t sub_1002B07DC(uint64_t a1)
{
  v2 = type metadata accessor for ReportWeatherView(0);
  sub_100003810(v2);
  v4 = sub_1000055BC(*(v3 + 80));
  return sub_1002AF8EC(v4, a1);
}

uint64_t sub_1002B087C()
{
  v0 = type metadata accessor for ReportWeatherView(0);
  sub_100003810(v0);
  v2 = sub_1000055BC(*(v1 + 80));
  return sub_1002AF190(v2);
}

uint64_t sub_1002B08D8(uint64_t *a1)
{
  v3 = type metadata accessor for ReportWeatherView(0);
  sub_100003810(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_1002AEAF8(a1, v5, v6, v7, v8);
}

uint64_t sub_1002B09D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002B0AC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    String.subscript.getter();
    sub_1000746B4();

    return sub_100016748();
  }

  return result;
}

uint64_t sub_1002B0B70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1002B0BB0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1002B0BF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1002B0C38(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1002B0C88(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  (*(v4 + 16))(v7, a1, v2);

  Atomic.wrappedValue.setter();

  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1002B0D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, void, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v404 = a6;
  v397 = a4;
  v403 = a3;
  v395 = a1;
  v361 = a7;
  v9 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v9 - 8);
  v339 = &v332 - v10;
  v337 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v337);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_100003878();
  v358 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_100003878();
  v357 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  sub_100003878();
  v355 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  sub_100003878();
  v354 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_100003878();
  v352 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_100003878();
  v350 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_100003878();
  v348 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_100003878();
  v346 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  sub_100003878();
  v344 = v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_100003878();
  v342 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  sub_100003878();
  v340 = v35;
  sub_10000386C();
  __chkstk_darwin(v36);
  sub_100003878();
  v333 = v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  v40 = &v332 - v39;
  v41 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003C38();
  v360 = v43 - v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v377 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v376 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v375 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v374 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v373 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v372 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v371 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v370 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v369 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v356 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v368 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v353 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  v71 = &v332 - v70;
  __chkstk_darwin(v72);
  sub_100003878();
  v351 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_100003878();
  v396 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  v349 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v393 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v347 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v392 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v345 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v391 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v343 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_100003878();
  v390 = v91;
  sub_10000386C();
  __chkstk_darwin(v92);
  sub_100003878();
  v341 = v93;
  sub_10000386C();
  __chkstk_darwin(v94);
  sub_100003878();
  v389 = v95;
  sub_10000386C();
  __chkstk_darwin(v96);
  sub_100003878();
  v338 = v97;
  sub_10000386C();
  __chkstk_darwin(v98);
  sub_100003878();
  v388 = v99;
  sub_10000386C();
  __chkstk_darwin(v100);
  sub_100003878();
  v336 = v101;
  sub_10000386C();
  __chkstk_darwin(v102);
  sub_100003878();
  v387 = v103;
  sub_10000386C();
  __chkstk_darwin(v104);
  sub_100003878();
  v335 = v105;
  sub_10000386C();
  __chkstk_darwin(v106);
  sub_100003878();
  v385 = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  sub_100003878();
  v334 = v109;
  sub_10000386C();
  __chkstk_darwin(v110);
  sub_100003878();
  v384 = v111;
  sub_10000386C();
  __chkstk_darwin(v112);
  v114 = (&v332 - v113);
  __chkstk_darwin(v115);
  v399 = &v332 - v116;
  v402 = type metadata accessor for Optional();
  v362 = *(v402 - 8);
  __chkstk_darwin(v402);
  sub_100003C38();
  v367 = v117 - v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v366 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v365 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  sub_100003878();
  v364 = v124;
  sub_10000386C();
  __chkstk_darwin(v125);
  sub_100003878();
  v383 = v126;
  sub_10000386C();
  __chkstk_darwin(v127);
  sub_100003878();
  v382 = v128;
  sub_10000386C();
  __chkstk_darwin(v129);
  sub_100003878();
  v381 = v130;
  sub_10000386C();
  __chkstk_darwin(v131);
  sub_100003878();
  v380 = v132;
  sub_10000386C();
  __chkstk_darwin(v133);
  v135 = &v332 - v134;
  __chkstk_darwin(v136);
  v379 = &v332 - v137;
  v401 = a2;
  sub_100566A24(a2, v425);
  v398 = v41;
  v400 = v114;
  v359 = v13;
  v394 = v71;
  if (v426)
  {
    v138 = 1;
    v139 = v399;
    v140 = v40;
    v141 = v404;
  }

  else
  {
    v142 = v114;
    sub_1001B3B30(v395 + OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_severeAlert, v40);
    sub_100049654();
    v143();
    sub_1001B4354(v40);
    v144 = v399;
    v145 = sub_100003984();
    v146 = v404;
    sub_1000833D8(v145, v147, v404);
    v148 = *(v41 + 8);
    v149 = sub_100003984();
    v148(v149);
    v150 = sub_100005474();
    sub_1000833D8(v150, v151, v146);
    v152 = sub_100005474();
    v148(v152);
    (*(v41 + 32))(v135, v142, a5);
    v138 = 0;
    v139 = v144;
    v140 = v40;
    v141 = v146;
  }

  v153 = 1;
  sub_100017568(v135, v138);
  v154 = sub_100003C68();
  sub_1003E7FD4(v154, v155);
  v157 = v362 + 8;
  v156 = *(v362 + 8);
  v158 = sub_10004E3C0();
  v156(v158);
  sub_100566BE4(v401, &v427);
  v386 = v135;
  v378 = v156;
  v159 = v139;
  if ((v428 & 1) == 0)
  {
    v135 = v427;
    sub_10006942C(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_nextHourPrecipitation);
    v156 = v400;
    sub_1000055F8();
    sub_100049654();
    v160();
    sub_1001B4354(v140);
    sub_100008030();
    sub_1000833D8(v161, v162, v163);
    v141 = *(v398 + 8);
    v164 = sub_100003984();
    v141(v164);
    sub_100008030();
    sub_1000833D8(v165, v166, v167);
    (v141)(v139, a5);
    v168 = sub_1000746C4();
    v169(v168);
    v153 = 0;
  }

  v170 = 1;
  sub_100017568(v135, v153);
  v171 = sub_100003C68();
  sub_1003E7FD4(v171, v172);
  v173 = sub_10004E3C0();
  v156(v173);
  sub_100566BC8(v401, &v429);
  if ((v430 & 1) == 0)
  {
    v135 = v429;
    sub_10006942C(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_newsArticle);
    v156 = v400;
    sub_1000055F8();
    sub_100049654();
    v174();
    sub_1001B4354(v140);
    sub_100008030();
    sub_1000833D8(v175, v176, v177);
    v141 = *(v398 + 8);
    v178 = sub_100003984();
    v141(v178);
    sub_100008030();
    sub_1000833D8(v179, v180, v181);
    (v141)(v159, a5);
    v182 = sub_1000746C4();
    v183(v182);
    v170 = 0;
  }

  v184 = 1;
  sub_100017568(v135, v170);
  v185 = sub_100003C68();
  sub_1003E7FD4(v185, v186);
  v187 = sub_10004E3C0();
  v156(v187);
  sub_100566A40(v401, &v431);
  if ((v432 & 1) == 0)
  {
    v135 = v431;
    sub_10006942C(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_airQuality);
    v188 = v400;
    sub_1000055F8();
    sub_100049654();
    v189();
    sub_1001B4354(v140);
    sub_100008030();
    sub_1000833D8(v190, v191, v192);
    v193 = v398;
    v194 = *(v398 + 8);
    v194(v188, a5);
    sub_100008030();
    sub_1000833D8(v195, v196, v197);
    v198 = sub_100005474();
    (v194)(v198);
    v141 = v404;
    v199 = v193;
    v156 = v378;
    (*(v199 + 32))(v135, v188, a5);
    v184 = 0;
  }

  sub_100017568(v135, v184);
  v200 = sub_100003C68();
  sub_1003E7FD4(v200, v201);
  v202 = sub_10004E3C0();
  v156(v202);
  v203 = OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_map;
  v204 = v395;
  swift_beginAccess();
  v205 = v204 + v203;
  v206 = v339;
  sub_10026E174(v205, v339);
  v207 = sub_100024D10(v206, 1, v337) == 1;
  v363 = v157;
  if (v207)
  {
    sub_10026E1E4(v206);
    v208 = 1;
    v209 = v398;
    v211 = v401;
  }

  else
  {
    v210 = v333;
    sub_10026E24C(v206, v333);
    v211 = v401;
    sub_100566A5C(v401, v433);
    v209 = v398;
    if (v434)
    {
      sub_1001B4354(v210);
      v208 = 1;
    }

    else
    {
      v212 = v400;
      sub_100049654();
      v213();
      sub_1001B4354(v210);
      v214 = v399;
      v215 = sub_100003C68();
      sub_1000833D8(v215, v216, v217);
      v218 = *(v209 + 8);
      v218(v212, a5);
      v219 = sub_100003984();
      sub_1000833D8(v219, v220, v141);
      v221 = v214;
      v156 = v378;
      v218(v221, a5);
      v222 = v212;
      v135 = v386;
      (*(v209 + 32))(v386, v222, a5);
      v208 = 0;
    }
  }

  sub_100017568(v135, v208);
  sub_100008030();
  sub_1003E7FD4(v223, v224);
  v225 = sub_10004E3C0();
  v156(v225);
  v226 = v340;
  sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v340);
  sub_100566A78(v211, v435);
  if (v436)
  {
    goto LABEL_34;
  }

  sub_100049654();
  v227();
  sub_1001B4354(v226);
  sub_100008030();
  sub_1000833D8(v228, v229, v230);
  v231 = *(v209 + 8);
  v232 = sub_100003A80();
  v231(v232);
  v233 = v342;
  sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v342);
  sub_100566A94(v211, v437);
  if (v438)
  {
    goto LABEL_34;
  }

  v234 = sub_100022810();
  v235(v234);
  sub_1001B4354(v233);
  sub_100008030();
  sub_1000833D8(v236, v237, v238);
  v239 = sub_100003A80();
  v231(v239);
  v240 = v344;
  sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v344);
  sub_100566AB0(v211, v439);
  if (v440)
  {
    goto LABEL_37;
  }

  v241 = sub_100022810();
  v242(v241);
  sub_1001B4354(v240);
  sub_100008030();
  sub_1000833D8(v243, v244, v245);
  v246 = sub_100003A80();
  v231(v246);
  v247 = v346;
  sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v346);
  sub_100566ACC(v211, v441);
  if (v442)
  {
    goto LABEL_34;
  }

  v248 = sub_10001929C();
  v249(v248);
  sub_1001B4354(v247);
  sub_100008030();
  sub_1000833D8(v250, v251, v252);
  v253 = sub_100003984();
  v231(v253);
  v254 = v348;
  sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v348);
  sub_100566AE8(v211, v443);
  if (v444)
  {
    goto LABEL_37;
  }

  v255 = sub_10001929C();
  v256(v255);
  sub_1001B4354(v254);
  sub_100008030();
  sub_1000833D8(v257, v258, v259);
  v260 = sub_100003984();
  v231(v260);
  v261 = v350;
  sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v350);
  sub_100566B04(v211, v445);
  if (v446)
  {
    goto LABEL_34;
  }

  v262 = sub_10001929C();
  v263(v262);
  sub_1001B4354(v261);
  sub_100008030();
  sub_1000833D8(v264, v265, v266);
  v267 = sub_100003984();
  v231(v267);
  v268 = v352;
  sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v352);
  sub_100566B20(v211, v447);
  if (v448)
  {
    goto LABEL_34;
  }

  v269 = sub_100022810();
  v270(v269);
  sub_1001B4354(v268);
  sub_100008030();
  sub_1000833D8(v271, v272, v273);
  v274 = sub_100003A80();
  v231(v274);
  v275 = v354;
  sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v354);
  sub_100566B3C(v211, v449);
  if (v450)
  {
LABEL_37:
    sub_100013470();
    goto LABEL_38;
  }

  v276 = sub_100022810();
  v277(v276);
  sub_1001B4354(v275);
  sub_100008030();
  sub_1000833D8(v278, v279, v280);
  v281 = sub_100003A80();
  v231(v281);
  v282 = v355;
  sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v355);
  sub_100566B58(v211, &v451);
  if ((v452 & 1) == 0)
  {
    v283 = sub_10001929C();
    v284(v283);
    sub_1001B4354(v282);
    sub_100008030();
    sub_1000833D8(v285, v286, v287);
    v288 = sub_100003984();
    v231(v288);
    v289 = v357;
    sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v357);
    sub_100566B74(v211, &v453);
    if ((v454 & 1) == 0)
    {
      v290 = sub_100022810();
      v291(v290);
      sub_1001B4354(v289);
      sub_100008030();
      sub_1000833D8(v292, v293, v294);
      v295 = sub_100003A80();
      v231(v295);
      v296 = v358;
      sub_1001B3B30(*(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v358);
      sub_100566B90(v211, &v455);
      if ((v456 & 1) == 0)
      {
        v297 = sub_10001929C();
        v298(v297);
        sub_1001B4354(v296);
        sub_100008030();
        sub_1000833D8(v299, v300, v301);
        v302 = sub_100003984();
        v231(v302);
        v303 = *(v204 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages;
        v304 = v359;
        sub_1001B3B30(v303, v359);
        sub_100566BAC(v211, v457);
        if ((v458 & 1) == 0)
        {
          v403(v304, v457[0], v457[1], v457[2], v457[3]);
          sub_1001B4354(v304);
          sub_100008030();
          sub_1000833D8(v305, v306, v307);
          v308 = sub_100003984();
          v231(v308);
          v309 = *(v362 + 16);
          v310 = v402;
          v309(v135, v379, v402);
          v424[0] = v135;
          v311 = v364;
          v309(v364, v380, v310);
          v424[1] = v311;
          v312 = v365;
          v309(v365, v381, v310);
          v424[2] = v312;
          v313 = v366;
          v309(v366, v382, v310);
          v424[3] = v313;
          v314 = v367;
          v309(v367, v383, v310);
          v424[4] = v314;
          v315 = *(v398 + 16);
          v316 = v399;
          v315(v399, v384, a5);
          v424[5] = v316;
          v317 = v400;
          v315(v400, v385, a5);
          v424[6] = v317;
          v318 = v369;
          v315(v369, v387, a5);
          v424[7] = v318;
          v319 = v370;
          v315(v370, v388, a5);
          v424[8] = v319;
          v320 = v371;
          v315(v371, v389, a5);
          v424[9] = v320;
          v321 = v372;
          v315(v372, v390, a5);
          v424[10] = v321;
          v322 = v373;
          v315(v373, v391, a5);
          v424[11] = v322;
          v323 = v374;
          v315(v374, v392, a5);
          v424[12] = v323;
          v324 = v375;
          v315(v375, v393, a5);
          v424[13] = v324;
          v325 = v376;
          v315(v376, v396, a5);
          v424[14] = v325;
          v326 = v377;
          v315(v377, v394, a5);
          v424[15] = v326;
          v327 = v404;
          v328 = v360;
          v315(v360, v368, a5);
          v424[16] = v328;
          v423[0] = v310;
          v423[1] = v310;
          v423[2] = v310;
          v423[3] = v310;
          v423[4] = v310;
          v423[5] = a5;
          v423[6] = a5;
          v423[7] = a5;
          v423[8] = a5;
          v423[9] = a5;
          v423[10] = a5;
          v423[11] = a5;
          v423[12] = a5;
          v423[13] = a5;
          v423[14] = a5;
          v423[15] = a5;
          v423[16] = a5;
          v405 = v327;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v310, &v405);
          v407 = WitnessTable;
          v408 = WitnessTable;
          v409 = WitnessTable;
          v410 = WitnessTable;
          v411 = v327;
          v412 = v327;
          v413 = v327;
          v414 = v327;
          v415 = v327;
          v416 = v327;
          v417 = v327;
          v418 = v327;
          v419 = v327;
          v420 = v327;
          v421 = v327;
          v422 = v327;
          sub_10012E24C(v424, 17, v423);
          v329 = sub_100005474();
          v231(v329);
          (v231)(v394, a5);
          (v231)(v396, a5);
          (v231)(v393, a5);
          (v231)(v392, a5);
          (v231)(v391, a5);
          (v231)(v390, a5);
          (v231)(v389, a5);
          (v231)(v388, a5);
          (v231)(v387, a5);
          (v231)(v385, a5);
          (v231)(v384, a5);
          v330 = v378;
          (v378)(v383, v310);
          v330(v382, v310);
          v330(v381, v310);
          v330(v380, v310);
          v330(v379, v310);
          (v231)(v328, a5);
          (v231)(v377, a5);
          (v231)(v376, a5);
          (v231)(v375, a5);
          (v231)(v374, a5);
          (v231)(v373, a5);
          (v231)(v372, a5);
          (v231)(v371, a5);
          (v231)(v370, a5);
          (v231)(v369, a5);
          (v231)(v400, a5);
          (v231)(v399, a5);
          v330(v367, v310);
          v330(v366, v310);
          v330(v365, v310);
          v330(v364, v310);
          return (v330)(v386, v310);
        }
      }
    }

    goto LABEL_37;
  }

LABEL_34:
  sub_10001E640();
LABEL_38:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002B2864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002B2910(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1002B2950(uint64_t result, int a2, int a3)
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

uint64_t sub_1002B29C8@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CA7180, &unk_100A322A0);
  return sub_1002B2A18(v2, a2 + *(v4 + 44));
}

uint64_t sub_1002B2A18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v112 = type metadata accessor for DetailNewsComponentView(0);
  __chkstk_darwin(v112);
  v106 = (&v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  __chkstk_darwin(v4 - 8);
  v111 = &v104 - v5;
  v110 = type metadata accessor for DetailComponentContainerViewModel(0);
  __chkstk_darwin(v110);
  v105 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA7190, &qword_100A322B0);
  __chkstk_darwin(v7 - 8);
  v116 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v124 = &v104 - v10;
  v109 = type metadata accessor for MonthlyAveragesChart(0);
  __chkstk_darwin(v109);
  v125 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v123 = &v104 - v13;
  v14 = sub_10022C350(&qword_100CA7198, &qword_100A322B8);
  __chkstk_darwin(v14);
  v115 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v114 = &v104 - v17;
  __chkstk_darwin(v18);
  v113 = &v104 - v19;
  __chkstk_darwin(v20);
  v22 = &v104 - v21;
  v23 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  __chkstk_darwin(v23 - 8);
  v25 = &v104 - v24;
  v26 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  __chkstk_darwin(v26);
  v107 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v108 = &v104 - v29;
  v30 = sub_10022C350(&qword_100CA71A8, &unk_100A496E0);
  __chkstk_darwin(v30 - 8);
  v122 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v120 = &v104 - v33;
  v34 = type metadata accessor for TemperatureAveragesHeroChartView(0);
  v35 = (v34 - 8);
  __chkstk_darwin(v34);
  v121 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v104 - v38;
  v41 = a1[4];
  v40 = a1[5];
  v42 = sub_1000161C0(a1 + 1, v41);
  v43 = &v39[v35[9]];
  v43[3] = v41;
  v43[4] = *(v40 + 16);
  v44 = sub_100042FB0(v43);
  (*(*(v41 - 8) + 16))(v44, v42, v41);
  v45 = *a1;
  sub_1002B3874(*a1 + OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_heroChart, &v39[v35[10]], type metadata accessor for TemperatureAveragesHeroChartViewModel);
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v46 = v35[7];
  *&v39[v46] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  swift_storeEnumTagMultiPayload();
  v47 = v35[8];
  v119 = v39;
  *&v39[v47] = 0x4030000000000000;
  v48 = OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_summaryPlatterViewModel;
  swift_beginAccess();
  sub_100035AD0(v45 + v48, v25, &qword_100CA71A0, &unk_100A322C0);
  v49 = sub_100024D10(v25, 1, v26);
  v118 = v22;
  if (v49 == 1)
  {
    v50 = v107;
    sub_1000180EC(v25, &qword_100CA71A0, &unk_100A322C0);
    v51 = 1;
    v52 = v120;
  }

  else
  {
    v53 = v108;
    sub_1002B392C(v25, v108, type metadata accessor for ConditionDetailPlatterViewModel);
    v54 = v53;
    v55 = v107;
    sub_1002B3874(v54, v107, type metadata accessor for ConditionDetailPlatterViewModel);
    v57 = a1[4];
    v56 = a1[5];
    v58 = sub_1000161C0(a1 + 1, v57);
    v127 = v57;
    v128 = *(v56 + 8);
    v59 = sub_100042FB0(v126);
    (*(*(v57 - 8) + 16))(v59, v58, v57);
    sub_1002B3874(v55, v22, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100035B30(v126, &v22[v14[10]]);
    v22[v14[9]] = 0;
    v60 = &v22[v14[11]];
    *v60 = 0;
    *(v60 + 1) = 0;
    v61 = v14[12];
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    *&v22[v61] = sub_1004BA278();
    swift_endAccess();
    v50 = v55;
    sub_1002B38D4(v55, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_1002B38D4(v108, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100006F14(v126);
    v52 = v120;
    sub_1002B398C(v22, v120);
    v51 = 0;
  }

  sub_10001B350(v52, v51, 1, v14);
  v62 = v123;
  sub_1002B3874(v45 + OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_averagesChart, v123, type metadata accessor for MonthlyAveragesChartModel);
  v63 = v109;
  sub_100035B30((a1 + 1), v62 + *(v109 + 20));
  *(v62 + *(v63 + 24)) = 0;
  v64 = OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_newsViewModel;
  swift_beginAccess();
  v65 = v111;
  sub_100035AD0(v45 + v64, v111, &qword_100CA7188, &qword_100A35360);
  v66 = sub_100024D10(v65, 1, v110);
  v67 = v112;
  if (v66 == 1)
  {
    sub_1000180EC(v65, &qword_100CA7188, &qword_100A35360);
    v68 = 1;
    v69 = v124;
  }

  else
  {
    v70 = v65;
    v71 = v105;
    sub_1002B392C(v70, v105, type metadata accessor for DetailComponentContainerViewModel);
    v72 = v106;
    sub_1002B3874(v71, v106 + v67[5], type metadata accessor for DetailComponentContainerViewModel);
    v73 = a1[4];
    v74 = a1[5];
    v75 = sub_1000161C0(a1 + 1, v73);
    v76 = (v72 + v67[6]);
    v76[3] = v73;
    v76[4] = *(v74 + 8);
    v77 = sub_100042FB0(v76);
    (*(*(v73 - 8) + 16))(v77, v75, v73);
    sub_1002B38D4(v71, type metadata accessor for DetailComponentContainerViewModel);
    *v72 = swift_getKeyPath();
    sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
    swift_storeEnumTagMultiPayload();
    *(v72 + v67[7]) = 0;
    v69 = v124;
    sub_1002B392C(v72, v124, type metadata accessor for DetailNewsComponentView);
    v68 = 0;
  }

  sub_10001B350(v69, v68, 1, v67);
  v78 = v50;
  sub_1002B3874(v45 + OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_aboutNormalRangePlatterViewModel, v50, type metadata accessor for ConditionDetailPlatterViewModel);
  v80 = a1[4];
  v79 = a1[5];
  v81 = sub_1000161C0(a1 + 1, v80);
  v127 = v80;
  v128 = *(v79 + 8);
  v82 = sub_100042FB0(v126);
  (*(*(v80 - 8) + 16))(v82, v81, v80);
  v83 = v118;
  sub_1002B3874(v78, v118, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_100035B30(v126, v83 + v14[10]);
  *(v83 + v14[9]) = 0;
  v84 = (v83 + v14[11]);
  *v84 = 0;
  v84[1] = 0;
  v85 = v14[12];
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v83 + v85) = sub_1004BA278();
  swift_endAccess();
  sub_1002B38D4(v78, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_100006F14(v126);
  sub_1002B3874(v45 + OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_aboutAverageTemperaturePlatterViewModel, v78, type metadata accessor for ConditionDetailPlatterViewModel);
  v87 = a1[4];
  v86 = a1[5];
  v88 = sub_1000161C0(a1 + 1, v87);
  v127 = v87;
  v128 = *(v86 + 8);
  v89 = sub_100042FB0(v126);
  (*(*(v87 - 8) + 16))(v89, v88, v87);
  v90 = v113;
  sub_1002B3874(v78, v113, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_100035B30(v126, v90 + v14[10]);
  *(v90 + v14[9]) = 0;
  v91 = (v90 + v14[11]);
  *v91 = 0;
  v91[1] = 0;
  v92 = v14[12];
  swift_beginAccess();
  *(v90 + v92) = sub_1004BA278();
  swift_endAccess();
  sub_1002B38D4(v78, type metadata accessor for ConditionDetailPlatterViewModel);
  sub_100006F14(v126);
  v93 = v121;
  sub_1002B3874(v119, v121, type metadata accessor for TemperatureAveragesHeroChartView);
  v126[0] = v93;
  v94 = v120;
  v95 = v122;
  sub_100035AD0(v120, v122, &qword_100CA71A8, &unk_100A496E0);
  v126[1] = v95;
  v96 = v123;
  v97 = v125;
  sub_1002B3874(v123, v125, type metadata accessor for MonthlyAveragesChart);
  v126[2] = v97;
  v98 = v124;
  v99 = v116;
  sub_100035AD0(v124, v116, &qword_100CA7190, &qword_100A322B0);
  v127 = v99;
  v100 = v118;
  v101 = v114;
  sub_100035AD0(v118, v114, &qword_100CA7198, &qword_100A322B8);
  v128 = v101;
  v102 = v115;
  sub_100035AD0(v90, v115, &qword_100CA7198, &qword_100A322B8);
  v129 = v102;
  sub_1003E81E8(v126);
  sub_1000180EC(v90, &qword_100CA7198, &qword_100A322B8);
  sub_1000180EC(v100, &qword_100CA7198, &qword_100A322B8);
  sub_1000180EC(v98, &qword_100CA7190, &qword_100A322B0);
  sub_1002B38D4(v96, type metadata accessor for MonthlyAveragesChart);
  sub_1000180EC(v94, &qword_100CA71A8, &unk_100A496E0);
  sub_1002B38D4(v119, type metadata accessor for TemperatureAveragesHeroChartView);
  sub_1000180EC(v102, &qword_100CA7198, &qword_100A322B8);
  sub_1000180EC(v101, &qword_100CA7198, &qword_100A322B8);
  sub_1000180EC(v99, &qword_100CA7190, &qword_100A322B0);
  sub_1002B38D4(v125, type metadata accessor for MonthlyAveragesChart);
  sub_1000180EC(v122, &qword_100CA71A8, &unk_100A496E0);
  return sub_1002B38D4(v121, type metadata accessor for TemperatureAveragesHeroChartView);
}

uint64_t sub_1002B3874(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1002B38D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1002B392C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1002B398C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA7198, &qword_100A322B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B39FC()
{
  result = qword_100CA71B8;
  if (!qword_100CA71B8)
  {
    v3 = sub_10022E824(&qword_100CA71C0, &qword_100A32370);
    result = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v3, v0, v1);
    atomic_store(result, &qword_100CA71B8);
  }

  return result;
}

uint64_t type metadata accessor for CalendarView(uint64_t a1)
{
  result = qword_100CA7228;
  if (!qword_100CA7228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B3AD4(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CalendarViewModel(319);
    if (v2 <= 0x3F)
    {
      _s13CalendarStateVMa(319);
      if (v3 <= 0x3F)
      {
        sub_1002B3B88();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1002B3B88()
{
  result = qword_100CA7238;
  if (!qword_100CA7238)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CA7238);
  }

  return result;
}

id sub_1002B3C00()
{
  result = sub_1002B3C20();
  qword_100CA71C8 = result;
  return result;
}

id sub_1002B3C20()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

uint64_t sub_1002B3CA0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = sub_10022C350(&qword_100CA7270, &qword_100A323D8);
  return sub_1002B3CFC(v2, (a1 + *(v5 + 44)));
}

uint64_t sub_1002B3CFC@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v103 = a2;
  v3 = type metadata accessor for CalendarView(0);
  v96 = *(v3 - 8);
  v4 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v97 = v5;
  v98 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA7278, &qword_100A323E0);
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v110 = (&v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v109 = &v76 - v9;
  v10 = type metadata accessor for PrimaryDividerStyle();
  v90 = *(v10 - 8);
  v91 = v10;
  __chkstk_darwin(v10);
  v89 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Divider();
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  v86 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&qword_100CA7280, &unk_100A49700);
  v99 = *(v14 - 8);
  v100 = v14;
  __chkstk_darwin(v14);
  v108 = (&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v106 = &v76 - v17;
  v18 = sub_10022C350(&qword_100CA7288, &qword_100A323E8);
  __chkstk_darwin(v18 - 8);
  v107 = (&v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v111 = &v76 - v21;
  v22 = type metadata accessor for CalendarHeaderView(0);
  v23 = (v22 - 8);
  __chkstk_darwin(v22);
  v105 = (&v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v27 = &v76 - v26;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v92 = v186;
  v93 = v188;
  v94 = v191;
  v95 = v190;
  v221 = 1;
  v219 = v187;
  v217 = v189;
  v84 = v4;
  v28 = *(v4 + 32);
  v77 = a1;
  v80 = a1 + v28;
  v29 = _s13CalendarStateVMa(0);
  v104 = Date.fullMonthAndYear(in:)();
  v85 = v30;
  v31 = *(v29 + 32);
  v32 = v29;
  v81 = v29;
  v33 = v23[8];
  v34 = type metadata accessor for Date();
  v35 = *(*(v34 - 8) + 16);
  v36 = &v27[v33];
  v37 = v80;
  v35(v36, v80 + v31, v34);
  v35(&v27[v23[9]], v37 + *(v32 + 28), v34);
  v38 = v77;
  type metadata accessor for CalendarViewModel(0);
  LOBYTE(v4) = static Date.< infix(_:_:)();
  v39 = static Date.> infix(_:_:)();
  sub_100035B30(v38 + *(v84 + 36), &v27[v23[12]]);
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v40 = v85;
  *(v27 + 2) = v104;
  *(v27 + 3) = v40;
  v27[v23[10]] = v4 & 1;
  v41 = v23[11];
  v104 = v27;
  v27[v41] = v39 & 1;
  static Alignment.center.getter();
  v42 = _FrameLayout.init(width:height:alignment:)();
  v82 = v192;
  v83 = v194;
  v84 = v197;
  v85 = v196;
  v227 = 1;
  v225 = v193;
  v223 = v195;
  v43 = *(v37 + *(v81 + 36));
  if (v43[1].n128_u64[0])
  {
    v44 = v43[2].n128_i64[0];
    __chkstk_darwin(v42);
    v75 = v38;

    sub_1008EE858(sub_1002B584C, (&v76 - 4), v44, v45, v46, v47, v48, v49, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v167[0] = v51;
  sub_1002B586C();
  View.accessibilityHidden(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v78 = v198;
  v79 = v200;
  v80 = v203;
  v81 = v202;
  v173 = 1;
  v171 = v199;
  v169 = v201;
  v52 = v86;
  Divider.init()();
  v53 = v89;
  static DividerStyle<>.primary.getter();
  sub_1002B5BA0(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
  sub_1002B5BA0(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle, &protocol conformance descriptor for PrimaryDividerStyle);
  v54 = v88;
  v55 = v91;
  View.dividerStyle<A>(_:)();
  (*(v90 + 8))(v53, v55);
  (*(v87 + 8))(v52, v54);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v88 = v204;
  v89 = v206;
  v90 = v209;
  v91 = v208;
  v179 = 1;
  v177 = v205;
  v175 = v207;
  v167[0] = v43;
  swift_getKeyPath();
  v56 = v38;
  v57 = v98;
  sub_1002B59E4(v56, v98);
  v58 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v59 = swift_allocObject();
  sub_1002B5AF0(v57, v59 + v58);

  sub_10022C350(&qword_100CA72B0, &qword_100A32440);
  sub_10022C350(&qword_100CA72B8, &qword_100A32448);
  sub_100006F64(&qword_100CA72C0, &qword_100CA72B0, &qword_100A32440, &protocol conformance descriptor for [A]);
  sub_1002B5930();
  v75 = sub_100006F64(&qword_100CA72D8, &qword_100CA72B8, &qword_100A32448, &protocol conformance descriptor for GridRow<A>);
  ForEach<>.init(_:id:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v60 = v210;
  v98 = v214;
  v96 = v212;
  v97 = v215;
  v185 = 1;
  v183 = v211;
  v181 = v213;
  v156 = 0;
  v157 = v221;
  *v158 = *v220;
  *&v158[3] = *&v220[3];
  v159 = v92;
  v160 = v219;
  *v161 = *v218;
  *&v161[3] = *&v218[3];
  v162 = v93;
  v163 = v217;
  *&v164[3] = *&v216[3];
  *v164 = *v216;
  v165 = v95;
  v166 = v94;
  v167[0] = &v156;
  v61 = v105;
  sub_1002B59E4(v104, v105);
  v145 = 0;
  v146 = v227;
  *v147 = *v226;
  *&v147[3] = *&v226[3];
  v148 = v82;
  v149 = v225;
  *v150 = *v224;
  *&v150[3] = *&v224[3];
  v151 = v83;
  v152 = v223;
  *v153 = *v222;
  *&v153[3] = *&v222[3];
  v154 = v85;
  v155 = v84;
  v167[1] = v61;
  v167[2] = &v145;
  v62 = v107;
  sub_1000302D8(v111, v107, &qword_100CA7288, &qword_100A323E8);
  v134 = 0;
  v135 = v173;
  *v136 = *v172;
  *&v136[3] = *&v172[3];
  v137 = v78;
  v138 = v171;
  *v139 = *v170;
  *&v139[3] = *&v170[3];
  v140 = v79;
  v141 = v169;
  *v142 = *v168;
  *&v142[3] = *&v168[3];
  v143 = v81;
  v144 = v80;
  v167[3] = v62;
  v167[4] = &v134;
  v63 = v99;
  v64 = v100;
  v65 = v108;
  v66 = v106;
  (*(v99 + 16))();
  v123 = 0;
  v124 = v179;
  *v125 = *v178;
  *&v125[3] = *&v178[3];
  v126 = v88;
  v127 = v177;
  *v128 = *v176;
  *&v128[3] = *&v176[3];
  v129 = v89;
  v130 = v175;
  *v131 = *v174;
  *&v131[3] = *&v174[3];
  v132 = v91;
  v133 = v90;
  v167[5] = v65;
  v167[6] = &v123;
  v68 = v101;
  v67 = v102;
  v69 = v109;
  v70 = v110;
  (*(v101 + 16))();
  v112 = 0;
  v113 = v185;
  *v114 = *v184;
  *&v114[3] = *&v184[3];
  v115 = v60;
  v116 = v183;
  *v117 = *v182;
  *&v117[3] = *&v182[3];
  v118 = v96;
  v119 = v181;
  *v120 = *v180;
  *&v120[3] = *&v180[3];
  v121 = v98;
  v122 = v97;
  v167[7] = v70;
  v167[8] = &v112;
  v71 = sub_1003E82C0(v167, v103);
  v72 = *(v68 + 8);
  v72(v69, v67, v71);
  v73 = *(v63 + 8);
  v73(v66, v64);
  sub_1000180EC(v111, &qword_100CA7288, &qword_100A323E8);
  sub_1002B5B48(v104, type metadata accessor for CalendarHeaderView);
  (v72)(v110, v67);
  v73(v108, v64);
  sub_1000180EC(v107, &qword_100CA7288, &qword_100A323E8);
  return sub_1002B5B48(v105, type metadata accessor for CalendarHeaderView);
}

uint64_t sub_1002B4A60@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for CalendarView(0);
  v4 = Date.standaloneNarrowDayOfWeek(in:)();
  v6 = v5;
  _s13CalendarStateVMa(0);
  result = Calendar.isDateInWeekend(_:)();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = result & 1;
  return result;
}

uint64_t sub_1002B4AF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CalendarView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  *a3 = static VerticalAlignment.top.getter();
  *(a3 + 8) = 0;
  sub_10022C350(&qword_100CA72B8, &qword_100A32448);
  v13[1] = v9;
  swift_getKeyPath();
  sub_1002B59E4(a2, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1002B5AF0(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

  sub_10022C350(&qword_100CA72D0, &qword_100A32450);
  type metadata accessor for CalendarGridCell(0);
  sub_100006F64(&qword_100CA72E0, &qword_100CA72D0, &qword_100A32450, &protocol conformance descriptor for [A]);
  sub_1002B5BA0(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1002B5BA0(&qword_100CA72E8, type metadata accessor for CalendarGridCell, byte_100A55394);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1002B4D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = type metadata accessor for Date();
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v75 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  __chkstk_darwin(v78);
  v82 = &v65[-v7];
  v8 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v8 - 8);
  v83 = &v65[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v76 = &v65[-v11];
  __chkstk_darwin(v12);
  v85 = &v65[-v13];
  v77 = type metadata accessor for CalendarDayViewModel(0);
  __chkstk_darwin(v77);
  v79 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for CalendarGridCellViewModel(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_10022C350(&qword_100CA72F0, &qword_100A32470);
  __chkstk_darwin(v18 - 8);
  v80 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v65[-v21];
  __chkstk_darwin(v23);
  v25 = &v65[-v24];
  v26 = type metadata accessor for CalendarView(0);
  v27 = a2 + *(v26 + 20);
  v28 = type metadata accessor for CalendarViewModel(0);
  sub_100879D60();
  v86 = v26;
  _s13CalendarStateVMa(0);
  if (static Date.< infix(_:_:)())
  {
    sub_1000180EC(v25, &qword_100CA72F0, &qword_100A32470);
    v29 = type metadata accessor for CalendarDayCellViewModel(0);
    sub_10001B350(v17, 1, 1, v29);
    goto LABEL_18;
  }

  v72 = v17;
  v73 = a3;
  sub_1002B5AAC();
  v30 = static NSNumberFormatter.dayDigits(from:timeZone:)();
  v69 = v31;
  v74 = a2;
  v32 = sub_1002B55F0(a1);
  v67 = v33;
  v68 = v32;
  v66 = Calendar.isDateInToday(_:)();
  v34 = Calendar.isDateInWeekend(_:)();
  sub_1000302D8(v25, v22, &qword_100CA72F0, &qword_100A32470);
  v70 = type metadata accessor for CalendarMoonPhaseData(0);
  v35 = sub_100024D10(v22, 1, v70);
  v71 = v25;
  if (v35 == 1)
  {
    sub_1000180EC(v22, &qword_100CA72F0, &qword_100A32470);
    v36 = 8;
  }

  else
  {
    v36 = *v22;
    sub_1002B5B48(v22, type metadata accessor for CalendarMoonPhaseData);
  }

  v37 = v81;
  v38 = *(v28 + 40);
  v39 = *(v77 + 36);
  v40 = type metadata accessor for MoonPhase.Hemisphere();
  v41 = v79;
  (*(*(v40 - 8) + 16))(&v79[v39], v27 + v38, v40);
  v43 = v68;
  v42 = v69;
  *v41 = v30;
  *(v41 + 8) = v42;
  v44 = v67;
  *(v41 + 16) = v43;
  *(v41 + 24) = v44;
  *(v41 + 32) = v66 & 1;
  *(v41 + 33) = v34 & 1;
  *(v41 + 34) = v36;
  v45 = *(v28 + 32);
  v46 = v84;
  v47 = v85;
  (*(v37 + 16))(v85, a1, v84);
  sub_10001B350(v47, 0, 1, v46);
  v48 = *(v78 + 48);
  v49 = v82;
  sub_1000302D8(v27 + v45, v82, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000302D8(v47, &v49[v48], &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v49, 1, v46) != 1)
  {
    v53 = v76;
    sub_1000302D8(v49, v76, &unk_100CB2CF0, &unk_100A2D7F0);
    v54 = sub_100024D10(&v49[v48], 1, v46);
    a3 = v73;
    if (v54 != 1)
    {
      v55 = &v49[v48];
      v56 = v75;
      (*(v37 + 32))(v75, v55, v46);
      sub_1002B5BA0(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = *(v37 + 8);
      v57(v56, v46);
      sub_1000180EC(v85, &unk_100CB2CF0, &unk_100A2D7F0);
      v57(v53, v46);
      sub_1000180EC(v49, &unk_100CB2CF0, &unk_100A2D7F0);
      v17 = v72;
      v51 = v80;
      goto LABEL_14;
    }

    sub_1000180EC(v85, &unk_100CB2CF0, &unk_100A2D7F0);
    (*(v37 + 8))(v53, v46);
    v51 = v80;
    goto LABEL_11;
  }

  sub_1000180EC(v47, &unk_100CB2CF0, &unk_100A2D7F0);
  v50 = sub_100024D10(&v49[v48], 1, v46);
  a3 = v73;
  v51 = v80;
  if (v50 != 1)
  {
LABEL_11:
    sub_1000180EC(v49, qword_100CA4F80, &unk_100A580C0);
    v52 = 0;
    goto LABEL_12;
  }

  sub_1000180EC(v49, &unk_100CB2CF0, &unk_100A2D7F0);
  v52 = 1;
LABEL_12:
  v17 = v72;
LABEL_14:
  sub_10011C0F0(v71, v51, &qword_100CA72F0, &qword_100A32470);
  v58 = v70;
  if (sub_100024D10(v51, 1, v70) == 1)
  {
    sub_1000180EC(v51, &qword_100CA72F0, &qword_100A32470);
    v59 = v83;
    sub_10001B350(v83, 1, 1, v46);
  }

  else
  {
    v60 = v51 + *(v58 + 20);
    v59 = v83;
    sub_1000302D8(v60, v83, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1002B5B48(v51, type metadata accessor for CalendarMoonPhaseData);
  }

  sub_1002B5AF0(v41, v17);
  v61 = type metadata accessor for CalendarDayCellViewModel(0);
  v17[*(v61 + 20)] = v52 & 1;
  sub_10011C0F0(v59, &v17[*(v61 + 24)], &unk_100CB2CF0, &unk_100A2D7F0);
  sub_10001B350(v17, 0, 1, v61);
  a2 = v74;
LABEL_18:
  sub_1002B5AF0(v17, a3);
  v62 = *(v86 + 28);
  v63 = type metadata accessor for CalendarGridCell(0);
  return sub_100035B30(a2 + v62, a3 + *(v63 + 20));
}

uint64_t sub_1002B55F0(uint64_t a1)
{
  if (qword_100CA1EC0 != -1)
  {
    swift_once();
  }

  v1 = qword_100CA71C8;
  type metadata accessor for CalendarView(0);
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  [v1 setTimeZone:isa];

  v3 = Date._bridgeToObjectiveC()().super.isa;
  v4 = [v1 stringFromDate:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  _s13CalendarStateVMa(0);
  if (Calendar.isDateInToday(_:)())
  {
    sub_10022C350(&qword_100CA7300, &qword_100A51110);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100A2D320;
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    v9 = [objc_opt_self() mainBundle];
    v14._object = 0x8000000100ABDA20;
    v10._countAndFlagsBits = 0x7961646F54;
    v11._object = 0x8000000100ABD9F0;
    v14._countAndFlagsBits = 0xD00000000000003FLL;
    v11._countAndFlagsBits = 0xD000000000000026;
    v10._object = 0xE500000000000000;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v9, v10, v14);

    *(v8 + 48) = v12;
    sub_10022C350(&qword_100CCC930, &qword_100A41810);
    sub_100006F64(&qword_100CB2D00, &qword_100CCC930, &qword_100A41810, &protocol conformance descriptor for [A]);
    v5 = BidirectionalCollection<>.joined(separator:)();
  }

  return v5;
}

unint64_t sub_1002B586C()
{
  result = qword_100CA7290;
  if (!qword_100CA7290)
  {
    result = swift_getWitnessTable(byte_100A914DC, &type metadata for CalendarWeekdayView, v0, v1);
    atomic_store(result, &qword_100CA7290);
  }

  return result;
}

uint64_t sub_1002B58C0()
{
  type metadata accessor for CalendarView(0);
  v0 = sub_100005614();

  return sub_1002B4AF8(v0, v1, v2);
}

unint64_t sub_1002B5930()
{
  result = qword_100CA72C8;
  if (!qword_100CA72C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA72D0, &qword_100A32450);
    v4[0] = sub_1002B5BA0(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CA72C8);
  }

  return result;
}

uint64_t sub_1002B59E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1002B5A3C()
{
  type metadata accessor for CalendarView(0);
  v0 = sub_100005614();

  return sub_1002B4D5C(v0, v1, v2);
}

unint64_t sub_1002B5AAC()
{
  result = qword_100CA72F8;
  if (!qword_100CA72F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CA72F8);
  }

  return result;
}

uint64_t sub_1002B5AF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1002B5B48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1002B5BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppLaunchCountMonitor.__deallocating_deinit()
{

  sub_100006F14((v0 + 32));

  return swift_deallocClassInstance();
}

BOOL sub_1002B5C4C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NewsDataModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA74F8, &qword_100A32528);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_10022C350(&qword_100CA75C0, &unk_100A325E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for MoonDetailInput.Input(0);
  v17 = sub_10001BC88(v16[5]);
  if ((sub_10070B2E4(v17, v18) & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[6]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[7]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[8]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[9]);
  if ((static Locale.== infix(_:_:)() & 1) == 0 || *(a1 + v16[10]) != *(a2 + v16[10]) || *(a1 + v16[11]) != *(a2 + v16[11]))
  {
    return 0;
  }

  v19 = v16[12];
  v20 = *(v12 + 48);
  sub_100035AD0(a1 + v19, v15, &qword_100CA74F8, &qword_100A32528);
  sub_100035AD0(a2 + v19, &v15[v20], &qword_100CA74F8, &qword_100A32528);
  sub_10000394C(v15);
  if (v21)
  {
    sub_10000394C(&v15[v20]);
    if (v21)
    {
      sub_1000180EC(v15, &qword_100CA74F8, &qword_100A32528);
      return 1;
    }

    goto LABEL_17;
  }

  sub_100035AD0(v15, v11, &qword_100CA74F8, &qword_100A32528);
  sub_10000394C(&v15[v20]);
  if (v21)
  {
    sub_1002B773C(v11, type metadata accessor for NewsDataModel);
LABEL_17:
    sub_1000180EC(v15, &qword_100CA75C0, &unk_100A325E0);
    return 0;
  }

  sub_10000562C();
  sub_1002B7794(&v15[v20], v7, v23);
  v24 = sub_1009D82EC(v11, v7);
  sub_1002B773C(v7, type metadata accessor for NewsDataModel);
  sub_1002B773C(v11, type metadata accessor for NewsDataModel);
  sub_1000180EC(v15, &qword_100CA74F8, &qword_100A32528);
  return (v24 & 1) != 0;
}

BOOL sub_1002B5F34(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MoonDetailInput.Input(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for MoonDetailInput(0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = sub_10022C350(&qword_100CA75B8, &qword_100A325D8);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v18 = *(v17 + 56);
  sub_1002B77F4(a1, &v22 - v15, type metadata accessor for MoonDetailInput);
  sub_1002B77F4(a2, &v16[v18], type metadata accessor for MoonDetailInput);
  sub_10000394C(v16);
  if (!v20)
  {
    sub_1002B77F4(v16, v12, type metadata accessor for MoonDetailInput);
    sub_10000394C(&v16[v18]);
    if (!v20)
    {
      sub_1002B7794(&v16[v18], v7, type metadata accessor for MoonDetailInput.Input);
      v19 = sub_1002B5C4C(v12, v7);
      sub_1002B773C(v7, type metadata accessor for MoonDetailInput.Input);
      sub_1002B773C(v12, type metadata accessor for MoonDetailInput.Input);
      sub_10004E3CC();
      return v19;
    }

    sub_1002B773C(v12, type metadata accessor for MoonDetailInput.Input);
LABEL_9:
    sub_1000180EC(v16, &qword_100CA75B8, &qword_100A325D8);
    return 0;
  }

  sub_10000394C(&v16[v18]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_10004E3CC();
  return 1;
}

uint64_t sub_1002B615C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v3 = sub_10022C350(qword_100CA66A0, &unk_100A314C0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v168 = &v143 - v5;
  v6 = sub_1000038CC();
  v167 = type metadata accessor for MoonDetailSelectedDate(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v169 = v9 - v8;
  sub_1000038CC();
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v164 = v11;
  v165 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v163 = v13 - v12;
  v14 = sub_1000038CC();
  v15 = type metadata accessor for TimeState(v14);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v157 = v18 - v17;
  sub_1000038CC();
  v148 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v147 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v146 = v22 - v21;
  v23 = sub_10022C350(&qword_100CA75C8, &unk_100A325F0);
  sub_100003810(v23);
  sub_100003828();
  __chkstk_darwin(v24);
  v150 = &v143 - v25;
  v26 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  v166 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v151 = v30;
  v31 = sub_1000038CC();
  v170 = type metadata accessor for NewsDataModel(v31);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000037D8();
  v152 = v34 - v33;
  v35 = sub_1000038CC();
  v153 = type metadata accessor for WeatherData(v35);
  sub_1000037E8();
  __chkstk_darwin(v36);
  sub_1000037D8();
  v155 = v38 - v37;
  v39 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  sub_100003810(v39);
  sub_100003828();
  __chkstk_darwin(v40);
  v42 = &v143 - v41;
  v43 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_100003848();
  v154 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_10000E70C();
  v156 = v47;
  sub_1000038CC();
  v48 = type metadata accessor for Location();
  sub_1000037C4();
  v50 = v49;
  __chkstk_darwin(v51);
  sub_1000037D8();
  v54 = v53 - v52;
  v55 = sub_10022C350(&qword_100CA74F8, &qword_100A32528);
  sub_100003810(v55);
  sub_100003828();
  __chkstk_darwin(v56);
  v58 = &v143 - v57;
  v171 = type metadata accessor for Date();
  sub_1000037C4();
  v161 = v59;
  __chkstk_darwin(v60);
  sub_100003848();
  v160 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  v173 = &v143 - v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_10000E70C();
  v172 = v65;
  v66 = sub_10022C350(&qword_100CA75D0, &unk_100A4C620);
  sub_100003810(v66);
  sub_100003828();
  __chkstk_darwin(v67);
  v69 = &v143 - v68;
  v70 = type metadata accessor for MoonDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v71);
  sub_1000037D8();
  v74 = v73 - v72;
  sub_1002B6FC4(a1, v69);
  v75 = sub_10000C7F0();
  v159 = v70;
  sub_1000038B4(v75, v76, v70);
  if (!v91)
  {
    sub_1002B7794(v69, v74, type metadata accessor for MoonDetailViewState);
    v86 = v170;
    sub_10001B350(v58, 1, 1, v170);
    v144 = v50;
    v87 = *(v50 + 16);
    v162 = v54;
    v145 = v48;
    v87(v54, v74, v48);
    v158 = a1;
    v88 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v143 = v74;
    v89 = Location.id.getter();
    sub_1000864C0(v89, v90, v88);

    sub_1000038B4(v42, 1, v43);
    v149 = v58;
    if (v91)
    {
      sub_1000180EC(v58, &qword_100CA74F8, &qword_100A32528);
      sub_1000180EC(v42, &qword_100CA37B0, &unk_100A2D740);
      v92 = v158;
      v93 = v167;
      v81 = v174;
      v94 = v161;
    }

    else
    {
      v95 = v156;
      sub_1002B7794(v42, v156, type metadata accessor for LocationWeatherDataState);
      v96 = v154;
      sub_1002B77F4(v95, v154, type metadata accessor for LocationWeatherDataState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v93 = v167;
      v94 = v161;
      if (EnumCaseMultiPayload == 1)
      {
        v98 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
        v99 = *(v98 + 48);
        v100 = *(v98 + 64);
        v101 = v155;
        sub_1002B7794(v96, v155, type metadata accessor for WeatherData);
        sub_10000562C();
        v102 = v152;
        sub_1002B7794(v96 + v100, v152, v103);
        sub_1002B773C(v96 + v99, type metadata accessor for PreprocessedWeatherData);
        v104 = v150;
        sub_100035AD0(v101 + *(v153 + 36), v150, &qword_100CA75C8, &unk_100A325F0);
        v105 = type metadata accessor for WeatherDataOverrides(0);
        sub_1000038B4(v104, 1, v105);
        v81 = v174;
        v106 = v171;
        if (v91)
        {
          sub_1000180EC(v104, &qword_100CA75C8, &unk_100A325F0);
          v111 = v151;
          sub_10001B350(v151, 1, 1, v106);
          v107 = v169;
          v108 = v143;
        }

        else
        {
          v111 = v151;
          sub_100035AD0(v104, v151, &unk_100CB2CF0, &unk_100A2D7F0);
          sub_1002B773C(v104, type metadata accessor for WeatherDataOverrides);
          sub_1000038B4(v111, 1, v106);
          v107 = v169;
          v113 = v172;
          v108 = v143;
          if (!v112)
          {
            sub_1000281A4();
            sub_1002B773C(v155, v117);
            sub_100049660();
            v118 = v149;
            sub_1000180EC(v149, &qword_100CA74F8, &qword_100A32528);
            v119 = v111;
            v58 = v118;
            (*(v94 + 32))(v113, v119, v106);
LABEL_20:
            sub_10000562C();
            sub_1002B7794(v102, v58, v120);
            v110 = 0;
            v86 = v170;
            goto LABEL_21;
          }
        }

        sub_1000180EC(v111, &unk_100CB2CF0, &unk_100A2D7F0);
        v114 = v155;
        v115 = v146;
        WeatherDataModel.currentWeather.getter();
        CurrentWeather.date.getter();
        (*(v147 + 8))(v115, v148);
        sub_1000281A4();
        sub_1002B773C(v114, v116);
        sub_100049660();
        v58 = v149;
        sub_1000180EC(v149, &qword_100CA74F8, &qword_100A32528);
        goto LABEL_20;
      }

      sub_1002B773C(v95, type metadata accessor for LocationWeatherDataState);
      sub_1000180EC(v58, &qword_100CA74F8, &qword_100A32528);
      sub_1002B773C(v96, type metadata accessor for LocationWeatherDataState);
      v92 = v158;
      v81 = v174;
      v86 = v170;
    }

    v109 = v157;
    sub_1002B77F4(v92 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v157, type metadata accessor for TimeState);
    (*(v94 + 32))(v172, v109, v171);
    v110 = 1;
    v107 = v169;
    v108 = v143;
LABEL_21:
    sub_10001B350(v58, v110, 1, v86);
    v121 = v163;
    Location.timeZone.getter();
    v122 = v173;
    Date.zeroMinutes(timeZone:)();
    (*(v164 + 8))(v121, v165);
    v123 = v159;
    v124 = v168;
    sub_100035AD0(v108 + *(v159 + 20), v168, qword_100CA66A0, &unk_100A314C0);
    v125 = sub_10000C7F0();
    sub_1000038B4(v125, v126, v93);
    if (v91)
    {
      v131 = v171;
      (*(v94 + 16))(v107, v122, v171);
      swift_storeEnumTagMultiPayload();
      v127 = sub_10000C7F0();
      sub_1000038B4(v127, v128, v93);
      v130 = v160;
      if (!v91)
      {
        sub_1000180EC(v124, qword_100CA66A0, &unk_100A314C0);
      }
    }

    else
    {
      sub_100022820();
      sub_1002B7794(v124, v107, v129);
      v130 = v160;
      v131 = v171;
    }

    v132 = v166;
    sub_100035AD0(v108 + *(v123 + 24), v166, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000038B4(v132, 1, v131);
    if (v91)
    {
      sub_10070B0DC(v130);
      sub_1000038B4(v132, 1, v131);
      if (!v91)
      {
        sub_1000180EC(v132, &unk_100CB2CF0, &unk_100A2D7F0);
      }
    }

    else
    {
      (*(v94 + 32))(v130, v132, v131);
    }

    v133 = type metadata accessor for MoonDetailInput.Input(0);
    sub_100022820();
    sub_1002B7794(v107, v81 + v134, v135);
    v136 = v158 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    v137 = *(type metadata accessor for EnvironmentState(0) + 32);
    v138 = v133[9];
    type metadata accessor for Locale();
    sub_1000037E8();
    (*(v139 + 16))(v81 + v138, v136 + v137);
    LOBYTE(v136) = *(v108 + *(v123 + 32));
    sub_1002B773C(v108, type metadata accessor for MoonDetailViewState);
    (*(v144 + 32))(v81, v162, v145);
    v140 = *(v94 + 32);
    v140(v81 + v133[6], v130, v131);
    v140(v81 + v133[7], v172, v131);
    v140(v81 + v133[8], v173, v131);
    *(v81 + v133[10]) = v136;
    *(v81 + v133[11]) = 1;
    sub_1002B7854(v149, v81 + v133[12]);
    v84 = v81;
    v85 = 0;
    v83 = v133;
    goto LABEL_30;
  }

  sub_1000180EC(v69, &qword_100CA75D0, &unk_100A4C620);
  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  sub_10000703C(v77, qword_100D90B68);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  v80 = os_log_type_enabled(v78, v79);
  v81 = v174;
  if (v80)
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "Unable to make MoonDetailInput due to missing moonDetailViewState.", v82, 2u);
  }

  v83 = type metadata accessor for MoonDetailInput.Input(0);
  v84 = v81;
  v85 = 1;
LABEL_30:
  sub_10001B350(v84, v85, 1, v83);
  v141 = type metadata accessor for MoonDetailInput(0);
  return sub_10001B350(v81, 0, 1, v141);
}

uint64_t sub_1002B6FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003848();
  v65 = v4;
  sub_10000386C();
  __chkstk_darwin(v5);
  sub_10000E70C();
  v67 = v6;
  v7 = sub_1000038CC();
  v68 = type metadata accessor for LocationPreviewViewState(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_100003848();
  v64 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_10000E70C();
  v66 = v11;
  v12 = sub_1000038CC();
  v71 = type metadata accessor for MoonDetailViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  v62 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  v63 = &v61 - v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003848();
  v70 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  v24 = &v61 - v23;
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v28);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v61 - v32;
  v34 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_10000FB00();
  sub_1002B77F4(a1 + v34, v27, v35);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1002B7794(v27, v33, type metadata accessor for ModalViewState.LocationDetailModal);
    sub_1002B7794(v33, v30, type metadata accessor for ModalViewState.LocationDetailModal);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1002B7794(v30, v19, type metadata accessor for MoonDetailViewState);
      v36 = v19;
LABEL_21:
      sub_1002B7794(v36, v72, type metadata accessor for MoonDetailViewState);
      v54 = 0;
      return sub_10001B350(v72, v54, 1, v71);
    }

    v37 = type metadata accessor for ModalViewState.LocationDetailModal;
    v38 = v30;
  }

  else
  {
    v37 = type metadata accessor for ModalViewState;
    v38 = v27;
  }

  sub_1002B773C(v38, v37);
  sub_10000FB00();
  sub_1002B77F4(a1 + v34, v24, v39);
  if (swift_getEnumCaseMultiPayload())
  {
    v40 = type metadata accessor for ModalViewState;
  }

  else
  {
    v41 = v66;
    sub_1002B7794(v24, v66, type metadata accessor for LocationPreviewViewState);
    v24 = v67;
    sub_1000192AC();
    sub_1002B77F4(v41 + v42, v24, v43);
    sub_1000746E4();
    sub_1002B773C(v41, v44);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v45 = v24;
      v46 = v63;
LABEL_20:
      sub_1002B7794(v45, v46, type metadata accessor for MoonDetailViewState);
      v36 = v46;
      goto LABEL_21;
    }

    v40 = type metadata accessor for LocationPreviewModalViewState;
  }

  sub_1002B773C(v24, v40);
  sub_10000FB00();
  v47 = v70;
  sub_1002B77F4(a1 + v34, v70, v48);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v53 = type metadata accessor for ModalViewState;
LABEL_16:
    sub_1002B773C(v47, v53);
    goto LABEL_17;
  }

  type metadata accessor for ModalViewState.MapViewModal(0);
  v49 = sub_10000C7F0();
  sub_1000038B4(v49, v50, v51);
  if (!v52)
  {
    v55 = v64;
    sub_1002B7794(v47, v64, type metadata accessor for LocationPreviewViewState);
    sub_1000192AC();
    v47 = v65;
    sub_1002B77F4(v55 + v56, v65, v57);
    sub_1000746E4();
    sub_1002B773C(v55, v58);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      v45 = v47;
      v46 = v62;
      goto LABEL_20;
    }

    v53 = type metadata accessor for LocationPreviewModalViewState;
    goto LABEL_16;
  }

  sub_1000180EC(v47, &qword_100CA65E0, &unk_100A31400);
LABEL_17:
  v54 = 1;
  return sub_10001B350(v72, v54, 1, v71);
}

uint64_t sub_1002B7578(uint64_t a1)
{
  v1 = type metadata accessor for MoonDetailInput.Input(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1002B75F8(uint64_t a1)
{
  type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MoonDetailSelectedDate(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Locale();
        if (v4 <= 0x3F)
        {
          sub_1002B76E4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002B76E4(uint64_t a1)
{
  if (!qword_100CA7568)
  {
    type metadata accessor for NewsDataModel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA7568);
    }
  }
}

uint64_t sub_1002B773C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1002B7794(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1002B77F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1002B7854(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA74F8, &qword_100A32528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B78C4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA65C0, &unk_100A313E0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_100003990(&v470 - v4);
  v5 = sub_10022C350(&qword_100CA65D0, &unk_100A313F0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_100003990(&v470 - v7);
  v8 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003990(&v470 - v10);
  v11 = type metadata accessor for LocationPreviewViewState(0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003990(&v470 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v547 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_10000E70C();
  sub_100003990(v17);
  v546 = type metadata accessor for TimeState(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_10000E70C();
  v543 = v21;
  v22 = sub_1000038CC();
  v552 = type metadata accessor for NotificationsOptInState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v542 = v26;
  v27 = sub_1000038CC();
  v551 = type metadata accessor for NotificationsState(v27);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  v541 = v31;
  v32 = sub_1000038CC();
  v549 = type metadata accessor for LocationsState(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_10000E70C();
  v540 = v36;
  v37 = sub_1000038CC();
  v550 = type metadata accessor for EnvironmentState(v37);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  v539 = v41;
  v42 = sub_1000038CC();
  v545 = type metadata accessor for AppConfigurationState(v42);
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v538 = v46;
  v47 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v48 = sub_100003810(v47);
  __chkstk_darwin(v48);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_10000E70C();
  sub_100003990(v54);
  v55 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_10000E70C();
  v537 = v62;
  v63 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v64 = sub_100003810(v63);
  __chkstk_darwin(v64);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_10000E70C();
  v536 = v70;
  v71 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v72 = sub_100003810(v71);
  __chkstk_darwin(v72);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_10000E70C();
  v535 = v78;
  v79 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v80 = sub_100003810(v79);
  __chkstk_darwin(v80);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_10000E70C();
  sub_100003990(v86);
  v87 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v88 = sub_100003810(v87);
  __chkstk_darwin(v88);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_10000E70C();
  sub_100003990(v94);
  v95 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v96 = sub_100003810(v95);
  __chkstk_darwin(v96);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_10000E70C();
  sub_100003990(v102);
  v103 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v104 = sub_100003810(v103);
  __chkstk_darwin(v104);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  v111 = &v470 - v110;
  v112 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v113);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  v119 = &v470 - v118;
  __chkstk_darwin(v120);
  v122 = &v470 - v121;
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  v126 = &v470 - v125;
  __chkstk_darwin(v127);
  v129 = &v470 - v128;
  __chkstk_darwin(v130);
  v132 = &v470 - v131;
  sub_10001BC94();
  v133 = a1;
  v548 = v134;
  sub_1000BC728(a1 + v134, v132, v135);
  swift_storeEnumTagMultiPayload();
  sub_100003940();
  sub_1000BC008();
  LOBYTE(a1) = v136;
  sub_1000DFDD0(v129, type metadata accessor for ModalViewState);
  v544 = v132;
  sub_1000DFDD0(v132, type metadata accessor for ModalViewState);
  if (a1)
  {
    return 1;
  }

  sub_10001BC94();
  v138 = v548;
  sub_1000BC728(v133 + v548, v126, v139);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10000FB18();
  sub_1000DFDD0(v126, v141);
  v142 = v133;
  if (EnumCaseMultiPayload == 5)
  {
    sub_100003934();
    v143 = v545;
    sub_10001B350(v144, v145, v146, v545);
    v147 = sub_100003BCC(&v556);
    sub_10001B350(v147, v148, v149, v550);
    v150 = sub_100003BCC(&v557);
    sub_10001B350(v150, v151, v152, v549);
    v153 = sub_100003BCC(&v558);
    sub_10001B350(v153, v154, v155, v551);
    sub_100003934();
    sub_10001B350(v156, v157, v158, v552);
    sub_100003934();
    v159 = v546;
    sub_10001B350(v160, v161, v162, v546);
    sub_100003934();
    v163 = v547;
    sub_10001B350(v164, v165, v166, v547);
    v167 = v511;
    swift_storeEnumTagMultiPayload();
    sub_10000E7B0();
    sub_10001B350(v168, v169, v170, v112);
    sub_10001BC94();
    sub_1000BC728(v142 + v138, v122, v171);
    v172 = v167;
    v173 = v512;
    sub_100051B60(v172, v512, &qword_100CA65E8, &unk_100A31410);
    sub_10000E7EC(v173);
    if (v174)
    {
      sub_1000180EC(v173, &qword_100CA65E8, &unk_100A31410);
    }

    else
    {
      sub_10000FB18();
      sub_1000DFDD0(v122, v213);
      sub_10001E75C();
      sub_100072F20(v173, v122, v214);
    }

    v215 = v508;
    sub_10001E75C();
    sub_100072F20(v122, v534, v216);
    v217 = *(v142 + 16);
    LODWORD(v532) = *(v142 + 24);
    sub_100051B60(v111, v215, &qword_100CA6640, qword_100A32640);
    v218 = sub_1000131C4();
    sub_1000038B4(v218, v219, v143);
    v548 = v217;
    if (v174)
    {
      v220 = sub_1000281BC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
      sub_1000BC728(v220, v538, v221);
      v222 = sub_1000131C4();
      v224 = sub_100024D10(v222, v223, v143);
      v225 = v215;
      v226 = v224;

      v174 = v226 == 1;
      v228 = v551;
      v229 = v552;
      v230 = v550;
      v231 = v514;
      v232 = v509;
      if (!v174)
      {
        sub_1000180EC(v225, &qword_100CA6640, qword_100A32640);
      }
    }

    else
    {
      sub_100069448();
      sub_100072F20(v215, v538, v227);

      v228 = v551;
      v229 = v552;
      v230 = v550;
      v231 = v514;
      v232 = v509;
    }

    sub_100051B60(v533[0], v232, &qword_100CA6638, &unk_100A31460);
    sub_1000038B4(v232, 1, v230);
    if (v174)
    {
      sub_100030358();
      v233 = sub_100022838();
      sub_1000BC728(v233, v539, v234);
      sub_1000038B4(v232, 1, v230);
      v236 = v517;
      if (!v174)
      {
        sub_1000180EC(v232, &qword_100CA6638, &unk_100A31460);
      }
    }

    else
    {
      sub_100013510();
      sub_100072F20(v232, v539, v235);
      v236 = v517;
    }

    v237 = v510;
    sub_100051B60(v533[1], v510, &qword_100CA6630, &unk_100A32630);
    sub_10000E7EC(v237);
    if (v174)
    {
      v238 = sub_1000192C8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_1000BC728(v238, v540, v239);
      sub_10000E7EC(v237);
      if (!v174)
      {
        sub_1000180EC(v237, &qword_100CA6630, &unk_100A32630);
      }
    }

    else
    {
      sub_10004E3F4();
      sub_100072F20(v237, v540, v240);
    }

    v241 = v513;
    sub_100051B60(v533[2], v513, &qword_100CA6628, &unk_100A31450);
    v242 = sub_1000175DC();
    sub_1000038B4(v242, v243, v228);
    if (v174)
    {
      v244 = sub_100016758(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_1000BC728(v244, v541, v245);
      v246 = sub_1000175DC();
      sub_1000038B4(v246, v247, v228);
      v249 = v516;
      if (!v174)
      {
        sub_1000180EC(v241, &qword_100CA6628, &unk_100A31450);
      }
    }

    else
    {
      sub_10002456C();
      sub_100072F20(v241, v541, v248);
      v249 = v516;
    }

    sub_100051B60(v535, v231, &qword_100CA6620, &unk_100A32620);
    v250 = sub_1000162A4();
    sub_1000038B4(v250, v251, v229);
    if (v174)
    {
      v252 = sub_10004968C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_1000BC728(v252, v542, v253);
      v254 = sub_1000162A4();
      sub_1000038B4(v254, v255, v229);
      if (!v174)
      {
        sub_1000180EC(v231, &qword_100CA6620, &unk_100A32620);
      }
    }

    else
    {
      sub_10003C2AC();
      sub_100072F20(v231, v542, v256);
    }

    v257 = v515;
    sub_100051B60(v536, v515, &qword_100CA6618, &unk_100A31440);
    v258 = sub_1000131C4();
    sub_1000038B4(v258, v259, v159);
    if (v174)
    {
      v260 = sub_1000746FC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_1000BC728(v260, v543, v261);
      v262 = sub_1000131C4();
      sub_1000038B4(v262, v263, v159);
      if (!v174)
      {
        sub_1000180EC(v257, &qword_100CA6618, &unk_100A31440);
      }
    }

    else
    {
      sub_10001762C();
      sub_100072F20(v257, v543, v264);
    }

    sub_100051B60(v537, v249, &qword_100CA6610, &unk_100A32610);
    v265 = sub_10000C7F0();
    sub_1000038B4(v265, v266, v163);
    if (v174)
    {
      sub_1000205F0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      v267 = sub_10000C7F0();
      sub_1000038B4(v267, v268, v163);
      v269 = v236;
      if (!v174)
      {
        sub_1000180EC(v249, &qword_100CA6610, &unk_100A32610);
      }
    }

    else
    {
      sub_10000C860();
      v269 = v236;
    }

    sub_10001E75C();
    v270 = v544;
    sub_100072F20(v534, v544, v271);
    v272 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v273 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v274 = v142;
    v275 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v276 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    v277 = *(v274 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    sub_1000370A0();
    LOBYTE(v476) = v277;
    v474 = v275;
    v475 = v276;
    v472 = v272;
    v473 = v273;
    v470 = v269;
    v471 = v270;
    v278 = v548;
    v279 = v532;
    v280 = v538;
    v281 = v539;
    v282 = v540;
    v283 = v541;
    v284 = v542;
    v285 = v543;
  }

  else
  {
    sub_10001BC94();
    sub_1000BC728(v133 + v138, v119, v175);
    v176 = swift_getEnumCaseMultiPayload();
    v178 = v546;
    v177 = v547;
    v179 = v545;
    if (v176)
    {
      sub_10000FB18();
      sub_1000DFDD0(v119, v180);
      v181 = sub_100003BCC(&v548);
      sub_10001B350(v181, v182, v183, v179);
      v184 = sub_100003BCC(&v549);
      v185 = v550;
      sub_10001B350(v184, v186, v187, v550);
      v188 = sub_100003BCC(&v550);
      v189 = v549;
      sub_10001B350(v188, v190, v191, v549);
      v192 = sub_100003BCC(&v551);
      v193 = v551;
      sub_10001B350(v192, v194, v195, v551);
      v196 = sub_100003BCC(v553);
      sub_10001B350(v196, v197, v198, v552);
      v199 = sub_100003BCC(v554);
      sub_10001B350(v199, v200, v201, v178);
      v202 = sub_100003BCC(v555);
      sub_10001B350(v202, v203, v204, v177);
      v205 = v489;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v206, v207, v208, v112);
      sub_10001BC94();
      v209 = v485;
      sub_1000BC728(v133 + v548, v485, v210);
      v211 = v205;
      v212 = v490;
      sub_100051B60(v211, v490, &qword_100CA65E8, &unk_100A31410);
      sub_10000E7EC(v212);
      if (v174)
      {
        sub_1000180EC(v212, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_10000FB18();
        sub_1000DFDD0(v209, v331);
        sub_10001E75C();
        sub_100072F20(v212, v209, v332);
      }

      v333 = *(&v490 + 1);
      sub_10001E75C();
      sub_100072F20(v209, v522, v334);
      v335 = *(v133 + 16);
      LODWORD(v543) = *(v133 + 24);
      v336 = v486;
      sub_100051B60(v518, v486, &qword_100CA6640, qword_100A32640);
      v337 = sub_1000162A4();
      sub_1000038B4(v337, v338, v179);
      v339 = v193;
      v548 = v335;
      if (v174)
      {
        v340 = sub_1000281BC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
        sub_1000BC728(v340, v526, v341);
        v342 = sub_1000162A4();
        v344 = sub_100024D10(v342, v343, v179);

        v346 = v488;
        if (v344 != 1)
        {
          sub_1000180EC(v336, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100069448();
        sub_100072F20(v336, v526, v345);

        v346 = v488;
      }

      v347 = v487;
      sub_100051B60(v519, v487, &qword_100CA6638, &unk_100A31460);
      sub_1000038B4(v347, 1, v185);
      if (v174)
      {
        sub_100030358();
        v348 = sub_100022838();
        sub_1000BC728(v348, v527, v349);
        sub_1000038B4(v347, 1, v185);
        v351 = v547;
        if (!v174)
        {
          sub_1000180EC(v347, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100013510();
        sub_100072F20(v347, v527, v350);
        v351 = v547;
      }

      sub_100051B60(v520, v346, &qword_100CA6630, &unk_100A32630);
      v352 = sub_1000182B8();
      sub_1000038B4(v352, v353, v189);
      v354 = v552;
      if (v174)
      {
        v355 = sub_1000192C8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1000BC728(v355, v528, v356);
        v357 = sub_1000182B8();
        sub_1000038B4(v357, v358, v189);
        v360 = v491;
        if (!v174)
        {
          sub_1000180EC(v346, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10004E3F4();
        sub_100072F20(v346, v528, v359);
        v360 = v491;
      }

      sub_100051B60(v521, v333, &qword_100CA6628, &unk_100A31450);
      v361 = sub_1000175DC();
      sub_1000038B4(v361, v362, v339);
      if (v174)
      {
        v363 = sub_100016758(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
        sub_1000BC728(v363, v529, v364);
        v365 = sub_1000175DC();
        sub_1000038B4(v365, v366, v339);
        v368 = v492;
        v369 = v546;
        if (!v174)
        {
          sub_1000180EC(v333, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10002456C();
        sub_100072F20(v333, v529, v367);
        v368 = v492;
        v369 = v546;
      }

      sub_100051B60(v523, v360, &qword_100CA6620, &unk_100A32620);
      v370 = sub_100016298();
      sub_1000038B4(v370, v371, v354);
      if (v174)
      {
        v372 = sub_10004968C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
        sub_1000BC728(v372, v530, v373);
        v374 = sub_100016298();
        sub_1000038B4(v374, v375, v354);
        v377 = v493;
        if (!v174)
        {
          sub_1000180EC(v360, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10003C2AC();
        sub_100072F20(v360, v530, v376);
        v377 = v493;
      }

      sub_100051B60(v524, v368, &qword_100CA6618, &unk_100A31440);
      v378 = sub_1000131C4();
      sub_1000038B4(v378, v379, v369);
      if (v174)
      {
        v380 = sub_1000746FC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1000BC728(v380, v531, v381);
        v382 = sub_1000131C4();
        sub_1000038B4(v382, v383, v369);
        if (!v174)
        {
          sub_1000180EC(v368, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001762C();
        sub_100072F20(v368, v531, v384);
      }

      sub_100051B60(v525, v377, &qword_100CA6610, &unk_100A32610);
      v385 = sub_10000C7F0();
      sub_1000038B4(v385, v386, v351);
      if (v174)
      {
        sub_1000205F0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        v387 = sub_10000C7F0();
        sub_1000038B4(v387, v388, v351);
        if (!v174)
        {
          sub_1000180EC(v377, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10000C860();
      }

      sub_10001E75C();
      v389 = v544;
      sub_100072F20(v522, v544, v390);
      v391 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v392 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v393 = v142;
      v394 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v395 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v396 = *(v393 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      sub_1000370A0();
      LOBYTE(v476) = v396;
      v474 = v394;
      v475 = v395;
      v472 = v391;
      v473 = v392;
      v471 = v389;
      v470 = v532;
      v278 = v548;
      v279 = v543;
      v280 = v526;
      v281 = v527;
      v282 = v528;
      v283 = v529;
      v284 = v530;
      v285 = v531;
    }

    else
    {
      v286 = v478;
      sub_100072F20(v119, v478, type metadata accessor for LocationPreviewViewState);
      v287 = sub_100003BCC(&v526);
      sub_10001B350(v287, v288, v289, v179);
      v290 = sub_100003BCC(&v527);
      sub_10001B350(v290, v291, v292, v550);
      v293 = sub_100003BCC(&v528);
      v294 = v549;
      sub_10001B350(v293, v295, v296, v549);
      v297 = sub_100003BCC(&v529);
      sub_10001B350(v297, v298, v299, v551);
      v300 = sub_100003BCC(&v531);
      sub_10001B350(v300, v301, v302, v552);
      v303 = sub_100003BCC(&v532);
      sub_10001B350(v303, v304, v305, v178);
      v306 = sub_100003BCC(v533);
      sub_10001B350(v306, v307, v308, v177);
      type metadata accessor for PreviewLocation(0);
      v309 = v479;
      sub_100003934();
      sub_10001B350(v310, v311, v312, v313);
      v314 = type metadata accessor for LocationPreviewModalViewState(0);
      v315 = v480;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v316, v317, v318, v314);
      type metadata accessor for SelectedSearchResult(0);
      v319 = v481;
      sub_100003934();
      sub_10001B350(v320, v321, v322, v323);
      v324 = v474;
      sub_10043DB64(v309, v315, v319, v474);
      sub_1000180EC(v319, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v315, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v309, &qword_100CA65C8, &unk_100A31670);
      sub_1000DFDD0(v286, type metadata accessor for LocationPreviewViewState);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v325, v326, v327, v112);
      sub_10001BC94();
      v328 = v470;
      sub_1000BC728(v133 + v548, v470, v329);
      v330 = v475;
      sub_100051B60(v324, v475, &qword_100CA65E8, &unk_100A31410);
      sub_10000E7EC(v330);
      if (v174)
      {
        sub_1000180EC(v330, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_10000FB18();
        sub_1000DFDD0(v328, v397);
        sub_10001E75C();
        v398 = sub_100003940();
        sub_100072F20(v398, v399, v400);
      }

      v401 = v477;
      v402 = v476;
      v403 = v471;
      sub_10001E75C();
      sub_100072F20(v328, v404, v405);
      v406 = *(v133 + 16);
      LODWORD(v543) = *(v133 + 24);
      sub_100051B60(v494, v403, &qword_100CA6640, qword_100A32640);
      v407 = sub_1000162A4();
      v408 = v545;
      sub_1000038B4(v407, v409, v545);
      v548 = v406;
      if (v174)
      {
        v410 = sub_1000281BC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
        sub_1000BC728(v410, v502, v411);
        v412 = sub_1000162A4();
        v414 = sub_100024D10(v412, v413, v408);

        v416 = v473;
        if (v414 != 1)
        {
          sub_1000180EC(v403, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100069448();
        sub_100072F20(v403, v502, v415);

        v416 = v473;
      }

      v417 = v472;
      sub_100051B60(v495, v472, &qword_100CA6638, &unk_100A31460);
      v418 = sub_1000162A4();
      v419 = v550;
      sub_1000038B4(v418, v420, v550);
      if (v174)
      {
        sub_100030358();
        v421 = sub_100022838();
        sub_1000BC728(v421, v503, v422);
        v423 = sub_1000162A4();
        sub_1000038B4(v423, v424, v419);
        v426 = v484;
        v427 = v483;
        if (!v174)
        {
          sub_1000180EC(v417, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100013510();
        sub_100072F20(v417, v503, v425);
        v426 = v484;
        v427 = v483;
      }

      sub_100051B60(v496, v416, &qword_100CA6630, &unk_100A32630);
      v428 = sub_1000182B8();
      sub_1000038B4(v428, v429, v294);
      if (v174)
      {
        v430 = sub_1000192C8(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
        sub_1000BC728(v430, v504, v431);
        v432 = sub_1000182B8();
        sub_1000038B4(v432, v433, v294);
        v435 = v551;
        if (!v174)
        {
          sub_1000180EC(v416, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10004E3F4();
        sub_100072F20(v416, v504, v434);
        v435 = v551;
      }

      sub_100051B60(v497, v402, &qword_100CA6628, &unk_100A31450);
      v436 = sub_100016298();
      sub_1000038B4(v436, v437, v435);
      if (v174)
      {
        v438 = sub_100016758(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
        sub_1000BC728(v438, v505, v439);
        v440 = sub_100016298();
        sub_1000038B4(v440, v441, v435);
        if (!v174)
        {
          sub_1000180EC(v402, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10002456C();
        sub_100072F20(v402, v505, v442);
      }

      sub_100051B60(v499, v401, &qword_100CA6620, &unk_100A32620);
      v443 = sub_1000131C4();
      v444 = v552;
      sub_1000038B4(v443, v445, v552);
      if (v174)
      {
        v446 = sub_10004968C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
        sub_1000BC728(v446, v506, v447);
        v448 = sub_1000131C4();
        sub_1000038B4(v448, v449, v444);
        if (!v174)
        {
          sub_1000180EC(v401, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10003C2AC();
        sub_100072F20(v401, v506, v450);
      }

      v451 = v482;
      sub_100051B60(v500, v482, &qword_100CA6618, &unk_100A31440);
      v452 = sub_100016298();
      sub_1000038B4(v452, v453, v178);
      if (v174)
      {
        v454 = sub_1000746FC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
        sub_1000BC728(v454, v507, v455);
        v456 = sub_100016298();
        sub_1000038B4(v456, v457, v178);
        if (!v174)
        {
          sub_1000180EC(v451, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10001762C();
        sub_100072F20(v451, v507, v458);
      }

      sub_100051B60(v501, v427, &qword_100CA6610, &unk_100A32610);
      sub_10000E7EC(v427);
      if (v174)
      {
        sub_1000205F0(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        sub_10000E7EC(v427);
        v459 = v426;
        if (!v174)
        {
          sub_1000180EC(v427, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_10000C860();
        v459 = v426;
      }

      sub_10001E75C();
      v460 = v544;
      sub_100072F20(v498, v544, v461);
      v462 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v463 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v464 = v142;
      v465 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v466 = *(v142 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v467 = *(v464 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      sub_1000370A0();
      LOBYTE(v476) = v467;
      v474 = v465;
      v475 = v466;
      v472 = v462;
      v473 = v463;
      v470 = v459;
      v471 = v460;
      v278 = v548;
      v279 = v543;
      v280 = v502;
      v281 = v503;
      v282 = v504;
      v283 = v505;
      v284 = v506;
      v285 = v507;
    }
  }

  sub_10003E038(v278, v279, v280, v281, v282, v283, v284, v285, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496);
  v137 = v468;

  return v137;
}

unint64_t sub_1002B9A24()
{
  result = qword_100CA75E0;
  if (!qword_100CA75E0)
  {
    result = swift_getWitnessTable(byte_100A32774, &type metadata for TipViewPlacement, v0, v1);
    atomic_store(result, &qword_100CA75E0);
  }

  return result;
}

uint64_t sub_1002B9A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D72657465646E75 && a2 == 0xEC00000064656E69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1953720684 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1002B9B94(char a1)
{
  if (!a1)
  {
    return 0x6D72657465646E75;
  }

  if (a1 == 1)
  {
    return 1953720684;
  }

  return 0x6E6F697461636F6CLL;
}

uint64_t sub_1002B9BEC(void *a1, int a2)
{
  v33 = a2;
  sub_10022C350(&qword_100CA7630, &qword_100A327C8);
  sub_1000037C4();
  v31 = v4;
  v32 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_10022C350(&qword_100CA7638, &qword_100A327D0);
  sub_1000037C4();
  v28 = v8;
  v29 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CA7640, &qword_100A327D8);
  sub_1000037C4();
  v27 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10022C350(&qword_100CA7648, &qword_100A327E0);
  sub_1000037C4();
  v19 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_1000161C0(a1, a1[3]);
  sub_1002BA7B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_1002BA858();
      sub_10000C88C(&type metadata for TipViewPlacement.ListCodingKeys, &v35);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_1002BA804();
      v24 = v30;
      sub_10000C88C(&type metadata for TipViewPlacement.LocationCodingKeys, &v36);
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_1002BA8AC();
    sub_10000C88C(&type metadata for TipViewPlacement.UndeterminedCodingKeys, &v34);
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_1002B9F08(void *a1)
{
  v62 = sub_10022C350(&qword_100CA75E8, &qword_100A327A0);
  sub_1000037C4();
  v60 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v58 = &v52 - v4;
  v59 = sub_10022C350(&qword_100CA75F0, &qword_100A327A8);
  sub_1000037C4();
  v57 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v52 - v7;
  v9 = sub_10022C350(&qword_100CA75F8, &qword_100A327B0);
  sub_1000037C4();
  v56 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_10022C350(&qword_100CA7600, &qword_100A327B8);
  sub_1000037C4();
  v61 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_1000161C0(a1, v17);
  sub_1002BA7B0();
  v18 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v52 = v9;
  v53 = v13;
  v54 = v8;
  v55 = 0;
  v19 = v62;
  v63 = a1;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  v17 = v14;
  if (v22 == v23 >> 1)
  {
    goto LABEL_10;
  }

  if (v22 < (v23 >> 1))
  {
    v24 = v14;
    v25 = *(v21 + v22);
    v26 = sub_100618E7C();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v31 = v59;
    v32 = v60;
    if (v28 == v30 >> 1)
    {
      v17 = v25;
      if (v25)
      {
        v56 = v26;
        v33 = v55;
        if (v25 == 1)
        {
          v65 = 1;
          sub_1002BA858();
          v34 = v54;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v57 + 8))(v34, v31);
            v35 = sub_100003C88();
            v36(v35);
LABEL_21:
            sub_100006F14(v63);
            return v17;
          }
        }

        else
        {
          LODWORD(v59) = v25;
          v66 = 2;
          sub_1002BA804();
          v17 = v58;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v32 + 8))(v17, v19);
            v50 = sub_100003C88();
            v51(v50);
            v17 = v59;
            goto LABEL_21;
          }
        }

        v46 = sub_100003C88();
        v47(v46);
      }

      else
      {
        v64 = 0;
        sub_1002BA8AC();
        v42 = v53;
        sub_10000803C();
        v43 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v43)
        {
          swift_unknownObjectRelease();
          (*(v56 + 8))(v42, v52);
          v48 = sub_100003C78();
          v49(v48, v24);
          goto LABEL_21;
        }

        v44 = sub_100003C78();
        v45(v44, v24);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v24;
LABEL_10:
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v39 = &type metadata for TipViewPlacement;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.typeMismatch(_:), v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = sub_100003C78();
    v41(v40, v17);
LABEL_11:
    a1 = v63;
LABEL_12:
    sub_100006F14(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002BA4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002B9A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002BA4CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002B9B8C();
  *a1 = result;
  return result;
}

uint64_t sub_1002BA4F4(uint64_t a1)
{
  v2 = sub_1002BA7B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002BA530(uint64_t a1)
{
  v2 = sub_1002BA7B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002BA58C@<X0>(_BYTE *a1@<X8>)
{
  result = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1002BA5B8(uint64_t a1)
{
  v2 = sub_1002BA858();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002BA5F4(uint64_t a1)
{
  v2 = sub_1002BA858();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002BA630(uint64_t a1)
{
  v2 = sub_1002BA804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002BA66C(uint64_t a1)
{
  v2 = sub_1002BA804();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002BA6A8(uint64_t a1)
{
  v2 = sub_1002BA8AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002BA6E4(uint64_t a1)
{
  v2 = sub_1002BA8AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002BA720@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B9F08(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002BA768@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100786250(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1002BA7B0()
{
  result = qword_100CA7608;
  if (!qword_100CA7608)
  {
    result = swift_getWitnessTable(byte_100A32ADC, &type metadata for TipViewPlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7608);
  }

  return result;
}

unint64_t sub_1002BA804()
{
  result = qword_100CA7618;
  if (!qword_100CA7618)
  {
    result = swift_getWitnessTable(aE_28, &type metadata for TipViewPlacement.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7618);
  }

  return result;
}

unint64_t sub_1002BA858()
{
  result = qword_100CA7620;
  if (!qword_100CA7620)
  {
    result = swift_getWitnessTable(byte_100A32A3C, &type metadata for TipViewPlacement.ListCodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7620);
  }

  return result;
}

unint64_t sub_1002BA8AC()
{
  result = qword_100CA7628;
  if (!qword_100CA7628)
  {
    result = swift_getWitnessTable(byte_100A329EC, &type metadata for TipViewPlacement.UndeterminedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7628);
  }

  return result;
}

_BYTE *sub_1002BA900(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002BAA10()
{
  result = qword_100CA7650;
  if (!qword_100CA7650)
  {
    result = swift_getWitnessTable(asc_100A329C4, &type metadata for TipViewPlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7650);
  }

  return result;
}

unint64_t sub_1002BAA68()
{
  result = qword_100CA7658;
  if (!qword_100CA7658)
  {
    result = swift_getWitnessTable(byte_100A328E4, &type metadata for TipViewPlacement.UndeterminedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7658);
  }

  return result;
}

unint64_t sub_1002BAAC0()
{
  result = qword_100CA7660;
  if (!qword_100CA7660)
  {
    result = swift_getWitnessTable("Ŏ ", &type metadata for TipViewPlacement.UndeterminedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7660);
  }

  return result;
}

unint64_t sub_1002BAB18()
{
  result = qword_100CA7668;
  if (!qword_100CA7668)
  {
    result = swift_getWitnessTable(aM_35, &type metadata for TipViewPlacement.ListCodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7668);
  }

  return result;
}

unint64_t sub_1002BAB70()
{
  result = qword_100CA7670;
  if (!qword_100CA7670)
  {
    result = swift_getWitnessTable(byte_100A328BC, &type metadata for TipViewPlacement.ListCodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7670);
  }

  return result;
}

unint64_t sub_1002BABC8()
{
  result = qword_100CA7678;
  if (!qword_100CA7678)
  {
    result = swift_getWitnessTable(byte_100A32844, &type metadata for TipViewPlacement.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7678);
  }

  return result;
}

unint64_t sub_1002BAC20()
{
  result = qword_100CA7680;
  if (!qword_100CA7680)
  {
    result = swift_getWitnessTable(aE_29, &type metadata for TipViewPlacement.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7680);
  }

  return result;
}

unint64_t sub_1002BAC78()
{
  result = qword_100CA7688;
  if (!qword_100CA7688)
  {
    result = swift_getWitnessTable(byte_100A32934, &type metadata for TipViewPlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7688);
  }

  return result;
}

unint64_t sub_1002BACD0()
{
  result = qword_100CA7690;
  if (!qword_100CA7690)
  {
    result = swift_getWitnessTable(aU_30, &type metadata for TipViewPlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CA7690);
  }

  return result;
}

uint64_t sub_1002BAD40(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1002E5784();
  }

  String.hash(into:)();
}

uint64_t sub_1002BADC4()
{
  sub_1002E579C();
  switch(v0)
  {
    case 2:
      sub_10002C57C();
      sub_100041138();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BAE88(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 7:
      sub_1002E5760();
      goto LABEL_3;
    case 6:
LABEL_3:
      sub_10002C57C();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BAFAC(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BB024(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1000E629C();
  }

  String.hash(into:)();
}

uint64_t sub_1002BB0AC(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BB128(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BB170()
{
  sub_1000925C8();
  switch(v0)
  {
    case 1:
    case 2:
      break;
    case 3:
    case 4:
      sub_10002C57C();
      break;
    default:
      sub_100041138();
      sub_10002C57C();
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BB22C()
{
  sub_1000925C8();
  switch(v0)
  {
    case 2:
      sub_1000E14E4();
      break;
    case 3:
      sub_10002C57C();
      sub_1000BC710();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BB2E8()
{
  sub_1000925C8();
  switch(v0)
  {
    case 1:
      sub_10002C57C();
      break;
    case 2:
      sub_1002E5760();
      sub_10002C57C();
      break;
    case 3:
      sub_1000E14E4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BB3AC()
{
  sub_1002E5604();
  switch(v0)
  {
    case 1:
      sub_1002E5488();
      break;
    case 3:
      sub_1002E5690();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BB454(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_100021FDC();
    sub_1002E55DC();
  }

  else
  {
    sub_100052660();
  }

  String.hash(into:)();
}

uint64_t sub_1002BB4C0()
{
  sub_1002E576C();
  switch(v0)
  {
    case 1:
    case 2:
    case 5:
      sub_10002C57C();
      break;
    case 4:
      sub_10003DE5C();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BB5B0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_1002E5488();
      break;
    case 6:
      sub_1002E5690();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BB68C(uint64_t a1, char a2)
{
  String.hash(into:)();
}

void sub_1002BB72C(uint64_t a1, char a2)
{
  if (qword_100A3A5C8[a2])
  {
    v2 = qword_100A3A5C8[a2];
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
}

void sub_1002BB768(uint64_t a1, char a2)
{
  v2 = 1024.0;
  if ((a2 & 1) == 0)
  {
    v2 = 0.0;
  }

  if (v2 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *&v2;
  }

  Hasher._combine(_:)(v3);
}

uint64_t sub_1002BB7AC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_100052660();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BB898(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BB8FC(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BB9C0(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_100027DEC();
  }

  else
  {
    sub_1002E55A8();
  }

  String.hash(into:)();
}

uint64_t sub_1002BBA18(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_100163730();
  }

  String.hash(into:)();
}

uint64_t sub_1002BBAD0()
{
  sub_1002E576C();
  switch(v0)
  {
    case 3:
      sub_1002E579C();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BBB90(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BBBF8()
{
  sub_1002E58E4();
  switch(v0)
  {
    case 4:
      sub_10002C57C();
      sub_1000BC710();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BBCBC()
{
  sub_1000E629C();
  switch(v0)
  {
    case 1:
      sub_1002E58E4();
      break;
    case 2:
      sub_100052660();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BBD48()
{
  sub_100052660();
  switch(v0)
  {
    case 1:
      sub_1000BC710();
      sub_10002C57C();
      break;
    case 2:
      sub_100042D20();
      break;
    case 3:
      sub_1000B8510();
      break;
    case 4:
      sub_1000BDA54();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BBDE4()
{
  sub_1000E629C();
  switch(v0)
  {
    case 1:
      sub_100052660();
      break;
    case 2:
      sub_1000BC710();
      sub_10002C57C();
      break;
    case 3:
      sub_1000B8510();
      break;
    case 4:
      sub_1000BDA54();
      break;
    case 6:
    case 7:
      sub_100042D20();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BBEC0(uint64_t a1, char a2)
{
  sub_100052660();
  String.hash(into:)();
}

uint64_t sub_1002BBF24(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_10002C57C();
      break;
    case 4:
      sub_100052660();
      break;
    case 5:
      sub_1000BDA54();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BBFF4()
{
  sub_1002E4E6C();
  switch(v0)
  {
    case 1:
    case 6:
      sub_100052660();
      break;
    case 2:
      goto LABEL_3;
    case 3:
    case 7:
      sub_100041138();
LABEL_3:
      sub_10002C57C();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BC104(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BC184(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BC1F4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BC2A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

uint64_t sub_1002BC2FC(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BC36C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1002E5604();
      break;
    case 5:
      sub_1002E5690();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BC438(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10009D138();
  }

  else
  {
    sub_10003DE5C();
  }

  String.hash(into:)();
}

uint64_t sub_1002BC4B8(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BC510(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1002E5724();
    sub_1000C8E18();
  }

  else
  {
    sub_1000E629C();
  }

  String.hash(into:)();
}

uint64_t sub_1002BC578()
{
  sub_1002E4E6C();
  switch(v0)
  {
    case 1:
    case 4:
    case 7:
      sub_1002E5870();
      break;
    case 2:
    case 5:
    case 8:
      sub_1002E5358();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BC6A4(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1001A4FCC();
  }

  String.hash(into:)();
}

uint64_t sub_1002BC720(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10019551C();
    sub_1000C8E18();
  }

  else
  {
    sub_100042D20();
  }

  String.hash(into:)();
}

uint64_t sub_1002BC78C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_1002E5870();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BC858()
{
  sub_1002E4E6C();
  String.hash(into:)();
}

uint64_t sub_1002BC8E8(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BC9DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10019551C();
    sub_1000C8E18();
  }

  else
  {
    sub_1002E5760();
    sub_10002C57C();
  }

  String.hash(into:)();
}

uint64_t sub_1002BCA48(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_1002E5358();
      break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      sub_1002E56E8();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t sub_1002BCB74(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_1002BCCAC(uint64_t a1)
{
  sub_1002E5540(a1);
  if (v1)
  {
    sub_10019551C();
    sub_1000C8E18();
  }

  else
  {
    sub_1002E5760();
    sub_10002C57C();
  }

  sub_1000E146C(v2, v3, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1002BCD64(uint64_t a1)
{
  sub_1002E5540(a1);
  if (v1)
  {
    sub_10019551C();
    sub_1000C8E18();
  }

  else
  {
    sub_100042D20();
    v3 = v5 + 1;
  }

  sub_1000E146C(v2, v3, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1002BCDD4(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x616365726F467361;
    }

    else
    {
      v4 = 0x7265646C6F63;
    }
  }

  else
  {
    sub_1001A4FCC();
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BCE6C(uint64_t a1)
{
  sub_1002E5540(a1);
  if (v1)
  {
    sub_1002E5724();
    sub_1000C8E18();
  }

  else
  {
    sub_1000E629C();
  }

  sub_1000E146C(v2, v3, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1002BCED8(uint64_t a1)
{
  sub_1002E5540(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002BCF44(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1002BCF88(uint64_t a1)
{
  sub_1002E5540(a1);
  if (v1)
  {
    sub_10009D138();
  }

  else
  {
    sub_10003DE5C();
  }

  sub_1000E146C(v2, v3, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1002BCFFC(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    v4 = 0x30327265746E6977;
  }

  else
  {
    v4 = 0x343230326C6C6166;
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD088(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(2 * a2 + 2);
  return Hasher._finalize()();
}

Swift::Int sub_1002BD0D4(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    v4 = 0x6361667265746E69;
  }

  else
  {
    v4 = 1701869940;
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD140(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    v4 = 0x656E696C66666FLL;
  }

  else
  {
    v4 = 0x6C62616863616572;
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD1B4(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002BD290(uint64_t a1)
{
  sub_1002E5540(a1);
  sub_100052660();
  sub_1000E146C(v1, v2, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD370(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    v4 = 0x746E657261707061;
  }

  else
  {
    v4 = 0x6C6175746361;
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD40C(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100A3A600[a2]);
  return Hasher._finalize()();
}

Swift::Int sub_1002BD45C(uint64_t a1, char a2)
{
  v3 = Hasher.init(_seed:)();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x756F726765726F66;
    }

    else
    {
      v5 = 0x6E6968636E75616CLL;
    }
  }

  else
  {
    sub_100163730();
  }

  sub_1000E146C(v3, v5, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD4EC(uint64_t a1)
{
  sub_1002E5540(a1);
  if (v1)
  {
    sub_100027DEC();
  }

  else
  {
    sub_1002E55A8();
  }

  sub_1000E146C(v2, v3, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD560(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    v4 = 0x736C6961746564;
  }

  else
  {
    v4 = 7368564;
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD610(uint64_t a1)
{
  sub_1002E5540(a1);
  sub_1002BB768(v3, v1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1002BD694(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    v4 = 0x656369746F6ELL;
  }

  else
  {
    v4 = 0x616D7269666E6F63;
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD738(uint64_t a1)
{
  sub_1002E5540(a1);
  if (v1)
  {
    sub_100021FDC();
    sub_1002E55DC();
  }

  else
  {
    sub_100052660();
  }

  sub_1000E146C(v2, v3, v4);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD7A8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1002BD894(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1002BD8F8(uint64_t a1)
{
  sub_1002E5540(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002BD960(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    v4 = 0x6552686372616573;
  }

  else
  {
    v4 = 1701736302;
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BD9D4(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v4 = 0x74736554786676;
    }
  }

  else
  {
    sub_1000E629C();
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BDA60(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    v4 = 0x74736554786676;
  }

  else
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1002BDB0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1002BDB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1002BDBC0(uint64_t a1)
{
  v2 = sub_1002E5540(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x72616C75676572;
    }

    else
    {
      v4 = 0x6669636570736E75;
    }
  }

  else
  {
    sub_1002E5784();
  }

  sub_1000E146C(v2, v4, v3);

  return Hasher._finalize()();
}

uint64_t sub_1002BDCFC()
{
  sub_100003CD0();
  swift_beginAccess();
  return sub_100095588();
}

void sub_1002BDD94()
{
  v2 = sub_1000E66F8();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    sub_1002D5FFC();
    sub_1000E6720();

    sub_1002E573C();
  }

  *(v3 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_showOnlineFeedbackSafariView) = v0 & 1;
}

BOOL sub_1002BDE9C()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationCommonViewComponents._Storage(v0);
  sub_100003B2C();
  return sub_1002C1A50();
}

uint64_t sub_1002BDF74()
{
  v0 = sub_100003B38();
  type metadata accessor for DefaultContent._Storage(v0);
  sub_100003B2C();
  sub_1002D3F1C();
  return v1 & 1;
}

uint64_t sub_1002BE0D4()
{
  v0 = sub_100003B38();
  type metadata accessor for DefaultNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

uint64_t sub_1002BE144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100003934();
  sub_10001B350(v8, v9, v10, v11);
  *(v5 + 16) = a1;
  sub_1002E4ECC(v5 + v7, v12);
  sub_100097AA4();
  swift_endAccess();
  sub_10003DE74();
  sub_1002E551C();
  sub_10003DE74();
  return v5;
}

void sub_1002BE23C()
{
  sub_10000C778();
  v2 = sub_100017580();
  v3 = type metadata accessor for LocationComponentContainerViewModel(v2);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v5);
  sub_1002E4BCC(v6, v7, v8, v9, v10, v11, v12, v13, v33);
  v14 = sub_10022C350(&qword_100CAA860, &unk_100A35328);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100021D38();
  v16 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_100003C38();
  sub_100053394();
  __chkstk_darwin(v18);
  sub_1002E4C00();
  type metadata accessor for LocationCommonViewComponents._Storage(0);

  sub_10000C918();
  v19 = sub_1002C1A50();

  if (!v19)
  {
    goto LABEL_14;
  }

  sub_100003CD0();
  swift_beginAccess();
  sub_1002E57CC();
  sub_100003CD0();
  swift_beginAccess();
  v20 = *(v14 + 48);
  sub_1002E57CC();
  sub_1002E57CC();
  sub_1000038B4(v0, 1, v3);
  if (!v21)
  {
    sub_100095588();
    sub_1000038B4(v0 + v20, 1, v3);
    if (!v21)
    {
      sub_10003DE74();
      v22 = sub_1002E58CC();
      sub_1009A24BC(v22, v23);
      sub_100003C98();
      sub_100040B64();
      v24 = sub_100003A60();
      sub_1000180EC(v24, v25, &unk_100A2F7B0);
      sub_100040B64();
      sub_10000C90C();
      sub_1000180EC(v26, v27, v28);
      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    sub_1000180EC(v1, &qword_100CA5008, &unk_100A2F7B0);
    sub_10002061C();
    sub_100040B64();
LABEL_10:
    sub_1000180EC(v0, &qword_100CAA860, &unk_100A35328);
    goto LABEL_14;
  }

  sub_1000180EC(v1, &qword_100CA5008, &unk_100A2F7B0);
  sub_1000038B4(v0 + v20, 1, v3);
  if (!v21)
  {
    goto LABEL_10;
  }

  sub_1000180EC(v0, &qword_100CA5008, &unk_100A2F7B0);
LABEL_12:
  sub_100074718();
  sub_100066B44();
  sub_100073ADC();
  sub_100082590();
  v29 = sub_10008672C();
  sub_1009A24BC(v29, v30);
  sub_100003C98();
  sub_100040B64();
  sub_100027E24();
  sub_100040B64();
  if (v20)
  {
    sub_100074718();
    sub_100066B44();
    sub_100073ADC();
    sub_100082590();
    v31 = sub_10008672C();
    sub_1009A24BC(v31, v32);
    sub_100003C98();
    sub_100040B64();
    sub_100027E24();
    sub_100040B64();
  }

LABEL_14:
  sub_1002E52C4();
  sub_10000536C();
}

uint64_t sub_1002BE5F4()
{
  sub_1002E5960();
  sub_1000180EC(v1 + *v2, &qword_100CA5008, &unk_100A2F7B0);
  sub_1002E5054();
  sub_100040B64();
  sub_100073C90(*v0);
  sub_100040B64();
  return v1;
}

void sub_1002BE6B4(uint64_t a1)
{
  sub_1001ACFB8(a1, &unk_100CA76D0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocationComponentContainerViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1002E4BF0();
      updated = swift_updateClassMetadata2();
      sub_1002E54EC(updated);
    }
  }
}

uint64_t sub_1002BE80C()
{
  v0 = sub_100003B38();
  type metadata accessor for DefaultTrendNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

uint64_t sub_1002BE874()
{
  sub_1002E5660();
  v3 = *v2;
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100003934();
  sub_10001B350(v4, v5, v6, v7);
  *(v0 + 16) = v1;
  sub_1002E4ECC(v0 + v3, v8);
  sub_100097AA4();
  swift_endAccess();
  sub_1002E4B60();
  sub_1002E55D0();
  sub_10003DE74();
  return v0;
}

uint64_t sub_1002BE924()
{
  sub_1002E562C();

  sub_1000180EC(v0 + *v1, &qword_100CA5008, &unk_100A2F7B0);
  sub_10002061C();
  sub_100040B64();
  return v0;
}

void sub_1002BE9D4()
{
  sub_1002E58B4();
  sub_1001ACFB8(v0, &unk_100CA76D0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocationComponentContainerViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1002E4BF0();
      updated = swift_updateClassMetadata2();
      sub_1002E54EC(updated);
    }
  }
}

uint64_t sub_1002BEAFC()
{
  v0 = sub_100003B38();
  type metadata accessor for ElevatedAqiContent._Storage(v0);
  sub_100003B2C();
  sub_1002D3F1C();
  return v1 & 1;
}

uint64_t sub_1002BEC5C()
{
  v0 = sub_100003B38();
  type metadata accessor for ElevatedAqiMinorAlertContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

uint64_t sub_1002BEDC4()
{
  v0 = sub_100003B38();
  type metadata accessor for ElevatedAqiNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

uint64_t sub_1002BEEE4()
{
  v0 = sub_100003B38();
  type metadata accessor for ElevatedAqiSevereContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

uint64_t sub_1002BEFA0()
{
  sub_1002D3110(&OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_map, &OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_airQuality, &OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_newsArticle, &OBJC_IVAR____TtCV7Weather28ElevatedAqiSevereNewsContent8_Storage_severeAlert);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_1002BF080()
{
  v0 = sub_100003B38();
  type metadata accessor for ElevatedAqiSevereNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002D2CFC();
  return v1 & 1;
}

uint64_t sub_1002BF0DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000100ABDCD0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x8000000100ABDCF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x8000000100ABDD10 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x8000000100ABDD30 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7551686372616573 && a2 == 0xEB00000000797265;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x8000000100ABDD60 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6863726165537369 && a2 == 0xEB00000000676E69;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x697469736E617274 && a2 == 0xEF6449676E696E6FLL;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD00000000000001FLL && 0x8000000100ABDDA0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1002BF400(char a1)
{
  result = 0x7551686372616573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6863726165537369;
      break;
    case 7:
      result = 0x697469736E617274;
      break;
    case 8:
      result = 0x72656767697274;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1002BF544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002BF0DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002BF56C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002BF3F8();
  *a1 = result;
  return result;
}

uint64_t sub_1002BF594(uint64_t a1)
{
  v2 = sub_1002DD234();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002BF5D0(uint64_t a1)
{
  v2 = sub_1002DD234();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002BF60C()
{
  sub_100032568();
  v3 = v0;
  v5 = v4;
  v6 = sub_10022C350(&qword_100CAA868, &qword_100A35338);
  sub_1000037C4();
  v8 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_100003CF8();
  sub_10000E890(v5);
  sub_1002DD234();
  sub_100020E58();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002DD288();
  sub_100005670();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1002DD2DC();
    sub_100005670();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = *(v3 + 32);

    sub_100003CDC();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v10 || (, sub_1002DD330(), sub_100005670(), KeyedEncodingContainer.encode<A>(_:forKey:)(), sub_100005670(), KeyedEncodingContainer.encode(_:forKey:)(), v11 = *(v3 + 72), , sub_100003CDC(), KeyedEncodingContainer.encodeIfPresent(_:forKey:)(), v11))
    {
      (*(v8 + 8))(v2, v6);

      goto LABEL_6;
    }

    sub_1002DD384();
    sub_100005670();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v8 + 8))(v2, v6);
LABEL_6:
  sub_10008835C();
}

uint64_t sub_1002BF8F8()
{
  sub_1000E6720();
  swift_allocObject();
  sub_1002E5680();
  sub_1002BF93C();
  return v0;
}

void sub_1002BF93C()
{
  sub_10000E8AC();
  sub_1002E58F8();
  v4 = v3;
  sub_10001E790();
  sub_10022C350(&qword_100CAADE8, &qword_100A35528);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100014230();
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  sub_1002E4C1C(v4);
  v6 = sub_1002DD234();
  sub_1000E672C(&type metadata for ListViewState._Storage.CodingKeys, v7, v6);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002DECDC();
    sub_1002E4C98(&unk_100C632C0);
    *(v0 + 16) = v13;
    *(v0 + 24) = BYTE8(v13);
    sub_1000C8B98(1);
    *(v0 + 25) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1000C8B98(2);
    *(v0 + 26) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1002DE2B0();
    sub_1002E4C98(&unk_100C5DC18);
    *(v0 + 27) = v13;
    sub_1000C8B98(4);
    *(v0 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v0 + 40) = v8;
    sub_1002DED30();
    sub_1002E4C98(&type metadata for ExternalSearchQuery);
    *(v0 + 48) = v13;
    *(v0 + 64) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1000C8B98(7);
    *(v0 + 72) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v0 + 80) = v9;

    sub_1002DED84();
    sub_1002E4C98(&type metadata for ListSessionTrigger);
    *(v0 + 88) = 6;
    sub_1000C8B98(9);
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = sub_100020E44();
    v12(v11);
    *(v0 + 89) = v10 & 1;
  }

  sub_100006F14(v4);
  sub_1002E5454();
  sub_10000C8F4();
}

uint64_t sub_1002BFC60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BF8F8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002BFCB0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1007525A8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002BFD18()
{
  sub_100003A00();
  type metadata accessor for ListViewState._Storage();
  sub_100003B2C();
  return sub_1000BAC0C() & 1;
}

void sub_1002BFD48()
{
  sub_100032568();
  sub_1000BD310();
  sub_10022C350(&qword_100CAB1C0, &qword_100A38918);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_10001320C();
  sub_10000E890(v0);
  sub_1002E23BC();
  sub_1002E54AC();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for ListViewState._Storage();
  sub_1002E518C();
  v5 = sub_1000E1628(v2, v3, v4, "yg ");
  sub_1000C84A4(v5, v6);
  v7 = sub_1000B97B8();
  v8(v7);
  sub_1002E5564();
  sub_10008835C();
}

void sub_1002BFE50()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB1A8, &qword_100A38910);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E23BC();
  sub_10000FB60(&type metadata for ListViewState.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for ListViewState._Storage();
    sub_1002E518C();
    v8 = sub_1000E1628(v5, v6, v7, "ag ");
    sub_10000E864(v8, v9);
    v10 = sub_10000565C();
    v11(v10);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002BFF64(uint64_t a1)
{
  v2 = sub_1002E23BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002BFFA0(uint64_t a1)
{
  v2 = sub_1002E23BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002BFFE8(void *a1@<X8>)
{
  sub_1002BFE50();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C0030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100752994();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_1002C0078()
{
  sub_1000B7B64();
  sub_1002E4E84();
  sub_10003DE74();
  sub_1002E547C();
  sub_10003DE74();
  sub_1000885A0();
  sub_10003DE74();
  sub_1002E551C();
  sub_10003DE74();
  sub_1002E58D8();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_1000426D8();
}

uint64_t sub_1002C01CC()
{
  v2 = sub_1002E5434();
  v3 = type metadata accessor for LocationViewComponent(v2);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_10002820C();
  __chkstk_darwin(v5);
  sub_1002E53C8();
  sub_10000804C();
  sub_100066B44();
  sub_1002E4C54();
  v6 = sub_100021CEC();
  sub_100659078(v6, v7);
  sub_10001424C();
  sub_100040B64();
  sub_1002E4CC0();
  sub_100040B64();
  if (v1)
  {
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v8 = sub_100021CEC();
    sub_100659078(v8, v9);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v10 = sub_100021CEC();
    sub_100659078(v10, v11);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v12 = sub_100021CEC();
    sub_100659078(v12, v13);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v14 = sub_100021CEC();
    sub_100659078(v14, v15);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v16 = sub_100021CEC();
    sub_100659078(v16, v17);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v18 = sub_100021CEC();
    sub_100659078(v18, v19);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v20 = sub_100021CEC();
    sub_100659078(v20, v21);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v22 = sub_100021CEC();
    sub_100659078(v22, v23);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v24 = sub_100021CEC();
    sub_100659078(v24, v25);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v26 = sub_100021CEC();
    sub_100659078(v26, v27);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v28 = sub_100021CEC();
    sub_100659078(v28, v29);
    sub_1000496A8();
    sub_100040B64();
    sub_10000C918();
    sub_100040B64();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1002C05AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F46796C72756F68 && a2 == 0xEE00747361636572;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F46796C696164 && a2 == 0xED00007473616365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x53657369726E7573 && a2 == 0xED00007465736E75;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1684957559 && a2 == 0xE400000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x8000000100ABAC40 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6B694C736C656566 && a2 == 0xE900000000000065;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7365676172657661 && a2 == 0xE800000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 1852796781 && a2 == 0xE400000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1002C0984(char a1)
{
  result = 0x6F46796C72756F68;
  switch(a1)
  {
    case 1:
      result = 0x726F46796C696164;
      break;
    case 2:
      result = 0x7865646E497675;
      break;
    case 3:
      result = 0x53657369726E7573;
      break;
    case 4:
      result = 1684957559;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6B694C736C656566;
      break;
    case 7:
      result = 0x79746964696D7568;
      break;
    case 8:
      result = 0x696C696269736976;
      break;
    case 9:
      result = 0x6572757373657270;
      break;
    case 10:
      result = 0x7365676172657661;
      break;
    case 11:
      result = 1852796781;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002C0AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002C05AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002C0B18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002C097C();
  *a1 = result;
  return result;
}

uint64_t sub_1002C0B40(uint64_t a1)
{
  v2 = sub_1002DEC88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C0B7C(uint64_t a1)
{
  v2 = sub_1002DEC88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002C0BB8()
{
  sub_1002E50CC();
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_dailyForecast);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_uvIndex);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_sunriseSunset);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_wind);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_precipitationTotal);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_feelsLike);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_humidity);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_visibility);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_pressure);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_averages);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather37LocationCommonConfigurationComponents8_Storage_moon);
  sub_100040B64();
  return v0;
}

void sub_1002C0D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000E8AC();
  v29 = v28;
  sub_10001E790();
  type metadata accessor for LocationViewComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_10000386C();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_10000386C();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_100053394();
  __chkstk_darwin(v39);
  sub_100021390();
  __chkstk_darwin(v40);
  sub_1001924BC();
  __chkstk_darwin(v41);
  sub_10000E70C();
  sub_10022C350(&qword_100CAADD8, &qword_100A35520);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v42);
  sub_10003038C();
  v43 = sub_10002FDB4();
  sub_10001930C(v43, v44);
  sub_1002DEC88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100005644();
    sub_1000E1628(v45, 255, v46, aA_7);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001BCAC();
    sub_10003DE74();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001BCAC();
    sub_10003DE74();
    sub_1002E55F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001BCAC();
    sub_10003DE74();
    sub_1002E55F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001BCAC();
    sub_10003DE74();
    sub_1002E4D8C();
    sub_1002E59C0(v47, v48, v49, v50);
    sub_10001BCAC();
    sub_10003DE74();
    sub_1002E4D8C();
    sub_1002E59C0(v51, v52, v53, v54);
    sub_10001BCAC();
    sub_10003DE74();
    sub_1002E4D8C();
    sub_1002E59C0(v55, v56, v57, v58);
    sub_10001BCAC();
    sub_10003DE74();
    sub_1002E4D8C();
    sub_1002E59C0(v59, v60, v61, v62);
    sub_10001BCAC();
    sub_10003DE74();
    sub_1002E4D8C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001BCAC();
    sub_10003DE74();
    sub_1002E4D8C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001BCAC();
    sub_10003DE74();
    sub_1002E55F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001BCAC();
    sub_10003DE74();
    sub_1002E55F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v63 = sub_1000B90BC();
    v64(v63);
    sub_10001BCAC();
    sub_10003DE74();
  }

  sub_100006F14(v29);
  sub_10000C8F4();
}

uint64_t sub_1002C16A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C0CF8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C16F4()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationCommonConfigurationComponents._Storage(v0);
  sub_100003B2C();
  return sub_1002C01CC() & 1;
}

void sub_1002C1724()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAAAB8, &qword_100A353F8);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002DDC80();
  sub_10000FB60(&type metadata for LocationCommonConfigurationComponents.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationCommonConfigurationComponents._Storage(0);
    v5 = sub_1000E1628(&qword_100CAAAC8, 255, type metadata accessor for LocationCommonConfigurationComponents._Storage, byte_100A35080);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C184C(uint64_t a1)
{
  v2 = sub_1002DDC80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C1888(uint64_t a1)
{
  v2 = sub_1002DDC80();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C18C4(void *a1@<X8>)
{
  sub_1002C1724();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1002C18FC()
{
  sub_1000B7B64();
  sub_1002E4E84();
  sub_10003DE74();
  sub_1002E547C();
  sub_10003DE74();
  sub_1000885A0();
  sub_10003DE74();
  sub_1002E551C();
  sub_10003DE74();
  sub_1002E58D8();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_10003DE74();
  sub_1000426D8();
}

BOOL sub_1002C1A50()
{
  v1 = sub_1002E5434();
  v2 = type metadata accessor for LocationComponentContainerViewModel(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_10002820C();
  __chkstk_darwin(v4);
  sub_1002E53C8();
  sub_1000281D8();
  sub_100066B44();
  sub_1002E4C54();
  v5 = sub_100021CEC();
  sub_1009A24BC(v5, v6);
  sub_100022854();
  sub_100040B64();
  sub_1002E4CC0();
  sub_100040B64();
  if (v0)
  {
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v7 = sub_100021CEC();
    sub_1009A24BC(v7, v8);
    sub_100022854();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v9 = sub_100021CEC();
    sub_1009A24BC(v9, v10);
    sub_100022854();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v11 = sub_100021CEC();
    sub_1009A24BC(v11, v12);
    sub_100022854();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v13 = sub_100021CEC();
    sub_1009A24BC(v13, v14);
    sub_100022854();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v15 = sub_100021CEC();
    sub_1009A24BC(v15, v16);
    sub_100022854();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v17 = sub_100021CEC();
    sub_1009A24BC(v17, v18);
    sub_100022854();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v19 = sub_100021CEC();
    sub_1009A24BC(v19, v20);
    sub_100022854();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v21 = sub_100021CEC();
    sub_1009A24BC(v21, v22);
    sub_100022854();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v23 = sub_100021CEC();
    sub_1009A24BC(v23, v24);
    sub_100022854();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v25 = sub_100021CEC();
    sub_1009A24BC(v25, v26);
    sub_100022854();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    sub_1000281D8();
    sub_100066B44();
    sub_1002E4C54();
    v27 = sub_100021CEC();
    v29 = sub_1009A24BC(v27, v28);
    sub_1002E503C();
    sub_100040B64();
    sub_10000C918();
    sub_100040B64();
  }

  else
  {
    return 0;
  }

  return v29;
}

uint64_t sub_1002C1E30()
{
  sub_1002E506C();
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon);
  sub_100040B64();
  return v0;
}

uint64_t sub_1002C1F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    sub_1002E4BF0();
    updated = swift_updateClassMetadata2();
    return sub_1002E54EC(updated);
  }

  return result;
}

uint64_t sub_1002C2050(uint64_t a1)
{
  v2 = sub_1002DEC34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C208C(uint64_t a1)
{
  v2 = sub_1002DEC34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002C20C8()
{
  sub_1002E562C();

  sub_100040B64();
  sub_100073C90(*v0);
  sub_100040B64();
  return v1;
}

void sub_1002C21A8()
{
  sub_10000E8AC();
  sub_10006A6F8();
  type metadata accessor for LocationViewComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_100020E28();
  __chkstk_darwin(v2);
  sub_1002E4C00();
  sub_10022C350(&qword_100CAADC8, &qword_100A35518);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10000C8D8();
  v4 = sub_10002C598();
  sub_10001930C(v4, v5);
  v6 = sub_1002DEC34();
  sub_100092684(&type metadata for LocationDefaultConfiguration._Storage.CodingKeys, v7, v6);
  sub_1000BB54C();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E57B4();
    sub_1000B911C(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    sub_1000E1628(v8, 255, v9, aA_7);
    sub_100037F98();
    sub_1000C831C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001E774();
    sub_10003DE74();
    sub_1001706A4();
    sub_1000C831C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_1000B0C24();
    v11(v10);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_1002E4C38();
  sub_100133ACC();
  sub_10000C8F4();
}

uint64_t sub_1002C241C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C217C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C247C()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationDefaultConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002C9E1C();
  return v1 & 1;
}

void sub_1002C24BC()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB1D0, &qword_100A38920);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2410();
  sub_10000FB60(&type metadata for LocationDefaultConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationDefaultConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB1E0, 255, type metadata accessor for LocationDefaultConfiguration._Storage, "yh ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C25E4(uint64_t a1)
{
  v2 = sub_1002E2410();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C2620(uint64_t a1)
{
  v2 = sub_1002E2410();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C265C(void *a1@<X8>)
{
  sub_1002C24BC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C26B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100235504();
  *a1 = result;
  return result;
}

uint64_t sub_1002C26D8(uint64_t a1)
{
  v2 = sub_1002DEBE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C2714(uint64_t a1)
{
  v2 = sub_1002DEBE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002C2750()
{
  sub_1002E5960();
  sub_100040B64();
  sub_10016515C(*v2);
  sub_100040B64();
  sub_10016515C(*v0);
  sub_100040B64();
  return v1;
}

void sub_1002C283C()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAADB8, &qword_100A35510);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DEBE0();
  sub_1000162E4(&type metadata for LocationDefaultNewsConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002C2B0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C2810(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C2B74()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationDefaultNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002C2BBC()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB1E8, &qword_100A38928);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2464();
  sub_10000FB60(&type metadata for LocationDefaultNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationDefaultNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB1F8, 255, type metadata accessor for LocationDefaultNewsConfiguration._Storage, byte_100A34FB8);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C2CE4(uint64_t a1)
{
  v2 = sub_1002E2464();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C2D20(uint64_t a1)
{
  v2 = sub_1002E2464();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C2D5C(void *a1@<X8>)
{
  sub_1002C2BBC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C2DB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1002E50FC();
  sub_10003DE74();
  sub_1002E547C();
  sub_10003DE74();
  sub_1000885A0();
  sub_10003DE74();
  return v1;
}

uint64_t sub_1002C2E30(uint64_t a1)
{
  v2 = sub_1002DEB8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C2E6C(uint64_t a1)
{
  v2 = sub_1002DEB8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C2F2C()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAADA8, &qword_100A35508);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DEB8C();
  sub_1000162E4(&type metadata for LocationDefaultTrendNewsConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002C31FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C2F00(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C3264()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationDefaultTrendNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002C32AC()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB200, &qword_100A38930);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E24B8();
  sub_10000FB60(&type metadata for LocationDefaultTrendNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationDefaultTrendNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB210, 255, type metadata accessor for LocationDefaultTrendNewsConfiguration._Storage, byte_100A34F68);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C33D4(uint64_t a1)
{
  v2 = sub_1002E24B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C3410(uint64_t a1)
{
  v2 = sub_1002E24B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C344C(void *a1@<X8>)
{
  sub_1002C32AC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C3498(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10003DE74();
  sub_1002E55D0();
  sub_10003DE74();
  return v1;
}

uint64_t sub_1002C3508()
{
  v2 = sub_100087F98();
  v4 = v4 && v3 == 0xE600000000000000;
  if (v4 || (sub_100071914(v2, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1002E5444();
    v6 = v4 && v0 == 0xE300000000000000;
    if (v6 || (sub_1002E4C70() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = sub_1000D3BC4();
      if (v4 && v0 == v8)
      {

        return 2;
      }

      else
      {
        sub_100071914(v7, 0xEA00000000007974);
        sub_1000379AC();
        if (v1)
        {
          return 2;
        }

        else
        {
          return 3;
        }
      }
    }
  }
}

uint64_t sub_1002C35B0(uint64_t a1)
{
  v2 = sub_1002DEB38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C35EC(uint64_t a1)
{
  v2 = sub_1002DEB38();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C36A4()
{
  sub_10000E8AC();
  sub_10006A6F8();
  type metadata accessor for LocationViewComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_100020E28();
  __chkstk_darwin(v2);
  sub_1002E4C00();
  sub_10022C350(&qword_100CAAD98, &qword_100A35500);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10000C8D8();
  v4 = sub_10002C598();
  sub_10001930C(v4, v5);
  v6 = sub_1002DEB38();
  sub_100092684(&type metadata for LocationElevatedAqiConfiguration._Storage.CodingKeys, v7, v6);
  sub_1000BB54C();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E57B4();
    sub_1000B911C(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    sub_1000E1628(v8, 255, v9, aA_7);
    sub_100037F98();
    sub_1000C831C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001E774();
    sub_10003DE74();
    sub_1001706A4();
    sub_1000C831C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_1000B0C24();
    v11(v10);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_1002E4C38();
  sub_100133ACC();
  sub_10000C8F4();
}

uint64_t sub_1002C3918@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C3678(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C3978()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationElevatedAqiConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002C9E1C();
  return v1 & 1;
}

void sub_1002C39B8()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB218, &qword_100A38938);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E250C();
  sub_10000FB60(&type metadata for LocationElevatedAqiConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationElevatedAqiConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB228, 255, type metadata accessor for LocationElevatedAqiConfiguration._Storage, "ii ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C3AE0(uint64_t a1)
{
  v2 = sub_1002E250C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C3B1C(uint64_t a1)
{
  v2 = sub_1002E250C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C3B58(void *a1@<X8>)
{
  sub_1002C39B8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C3BAC(uint64_t a1)
{
  v2 = sub_1002DEAE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C3BE8(uint64_t a1)
{
  v2 = sub_1002DEAE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C3CA8()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAAD88, &qword_100A354F8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DEAE4();
  sub_1000162E4(&type metadata for LocationElevatedAqiMinorAlertConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002C3F78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C3C7C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C3FE0()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationElevatedAqiMinorAlertConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002C4028()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB230, &qword_100A38940);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2560();
  sub_10000FB60(&type metadata for LocationElevatedAqiMinorAlertConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationElevatedAqiMinorAlertConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB240, 255, type metadata accessor for LocationElevatedAqiMinorAlertConfiguration._Storage, byte_100A34EC8);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}