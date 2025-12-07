void sub_10008E4C4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v0 = [objc_opt_self() defaultCenter];
    [v0 postNotificationName:@"com.apple.parsecd.performedSearch" object:0];
    swift_unknownObjectRelease();
  }
}

void sub_10008E598(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = sub_100005490(v3);
  __chkstk_darwin(v4);
  sub_100003664();
  if (*(a2 + 16))
  {
    v13[3] = sub_100046184(&qword_100217B98, &unk_10019BE60);
    v13[0] = a2;

    static JSONSerializationUtil.data(withJSONObject:options:)(v13, 0);
    sub_10000CEBC();
    sub_100007378(v13);
    static String.Encoding.utf8.getter();
    sub_10000CC98();
    String.init(data:encoding:)();
    v6 = v5;
    v7 = sub_10000CC98();
    sub_100014A40(v7, v8);
    if (v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000E138();
      sub_10011567C(v9, v10, v11, v12);
    }
  }
}

uint64_t sub_10008E6C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for PegasusContext(0) + 116));
  if ((v3 == 2) | v3 & 1)
  {
    v4 = 28271;
  }

  else
  {
    v4 = 6710895;
  }

  if ((v3 == 2) | v3 & 1)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  sub_100019B38(*(v2 + 752), *(v2 + 760), v4, v5);
}

void sub_10008E750()
{
  sub_100005478();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_100046184(&qword_100217B90, &unk_10019E900);
  sub_100005490(v8);
  sub_100003760();
  __chkstk_darwin(v9);
  sub_100023F20();
  v10 = type metadata accessor for Trialpb_TrialExperiment();
  sub_100003650();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003664();
  sub_10000FEE8();
  if (![v5 sessionExperimentMetadataEnabled])
  {
    goto LABEL_10;
  }

  sub_1000CFA5C(v7);
  if (!v14)
  {
    goto LABEL_10;
  }

  if (!v3)
  {

    sub_1000051C0(v0, 1, 1, v10);
    goto LABEL_9;
  }

  sub_100066648(v3, v0);

  if (sub_100008D0C(v0, 1, v10) == 1)
  {
LABEL_9:
    sub_10000B240(v0, &qword_100217B90, &unk_10019E900);
    goto LABEL_10;
  }

  (*(v12 + 32))(v1, v0, v10);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000BF7C();
  Trialpb_TrialExperiment.treatmentID.getter();
  v15 = sub_10000DE18();
  sub_10011567C(v15, v16, v17, v18);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000BF7C();
  Trialpb_TrialExperiment.experimentID.getter();
  v19 = sub_10000DE18();
  sub_10011567C(v19, v20, v21, v22);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000BF7C();
  Trialpb_TrialExperiment.experimentNamespace.getter();
  v23 = sub_10000DE18();
  sub_10011567C(v23, v24, v25, v26);

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100019B38(v27, v28, 49, 0xE100000000000000);

  sub_100013354(v7, &selRef_treatmentId);
  if (v29)
  {

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100019B38(v30, v31, 49, 0xE100000000000000);
  }

  (*(v12 + 8))(v1, v10);
LABEL_10:
  sub_100005460();
}

uint64_t sub_10008EA00()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10002044C(v14);
    sub_100007534(v14, v14[3]);
    v3 = sub_100008380();
    sub_100020624(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14[0]);
    v12 = v11;
    sub_100007378(v14);
    if (v12)
    {
      sub_100019B38(*(v1 + 896), *(v1 + 904), 49, 0xE100000000000000);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10008EAA8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_10000CB70();
    if (v3)
    {
      sub_1000960F4();
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10011567C(v4, v5, v2, v0);
      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10008EB7C()
{
  sub_100005478();

  v0._countAndFlagsBits = sub_10000F18C();
  v1.value = PegasusClientName.init(rawValue:)(v0).value;
  if (v1.value > parsecd_PegasusClientName_Lookup || ((1 << v1.value) & 0x16) == 0)
  {
    sub_100005460();
  }

  else
  {
    v3 = sub_10008C8D8();
    v4 = 0;
    sub_100004154();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    if ((v6 & v5) == 0)
    {
      goto LABEL_7;
    }

    do
    {
      v10 = v4;
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (v10 << 10) | (16 * v11);
      v13 = (*(v3 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v3 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];

      sub_10011567C(v14, v15, v17, v18);
    }

    while (v7);
    while (1)
    {
LABEL_7:
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return;
      }

      if (v10 >= v9)
      {
        break;
      }

      v7 = *(v3 + 64 + 8 * v10);
      ++v4;
      if (v7)
      {
        v4 = v10;
        goto LABEL_11;
      }
    }

    sub_100005460();
  }
}

void sub_10008ECD8()
{
  sub_100005478();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v53 = v7;
  v8 = sub_100046184(&qword_100217050, &qword_100199180);
  sub_100005490(v8);
  sub_100003760();
  __chkstk_darwin(v9);
  v11 = v51 - v10;
  v12 = type metadata accessor for Date();
  sub_100003650();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000407C();
  sub_10000BA2C();
  __chkstk_darwin(v16);
  v18 = v51 - v17;
  __chkstk_darwin(v19);
  v52 = v51 - v20;
  __chkstk_darwin(v21);
  v22 = v4 == 0x697261666173 && v2 == 0xE600000000000000;
  if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((sub_100095FD0(), v4 == v24) ? (v25 = v2 == v23) : (v25 = 0), v25 || (sub_100019030(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
  {
    v26 = type metadata accessor for PegasusContext(0);
    v27 = (v6 + *(v26 + 80));
    v28 = v27[1];
    if (v28)
    {
      v51[0] = v0;
      v51[1] = v18;
      v29 = *v27;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v6;
      v33 = v32;
      v54 = v29;
      v55 = v28;

      String.init<A>(_:)();
      sub_1000385B8();
      sub_10011567C(v30, v33, v34, v29);
      v6 = v31;

      v0 = v51[0];
    }

    static Date.now.getter();
    v35 = v52;
    static Date.- infix(_:_:)();
    static Date.- infix(_:_:)();
    sub_10002DF94(v6 + *(v26 + 60), v11);
    if (sub_100008D0C(v11, 1, v12) == 1)
    {
      v36 = *(v14 + 8);
      v37 = sub_100096024();
      v36(v37);
      (v36)(v35, v12);
      v38 = sub_100005854();
      v36(v38);
      sub_10000B240(v11, &qword_100217050, &qword_100199180);
    }

    else
    {
      (*(v14 + 32))(v0, v11, v12);
      sub_10000CC98();
      if (static Date.< infix(_:_:)())
      {
        v39 = 0xE400000000000000;
        v40 = 1919431742;
      }

      else
      {
        sub_10000BE44();
        if (static Date.< infix(_:_:)())
        {
          v39 = 0xE700000000000000;
          v40 = 0x7268342D6D3531;
        }

        else
        {
          sub_10000F18C();
          if ((static Date.< infix(_:_:)() & 1) == 0)
          {
            v47 = *(v14 + 8);
            v48 = sub_100003674();
            v47(v48);
            v49 = sub_100096024();
            v47(v49);
            (v47)(v35, v12);
            v50 = sub_100005854();
            v47(v50);
            goto LABEL_22;
          }

          v39 = 0xE400000000000000;
          v40 = 1832202556;
        }
      }

      v41 = *(v14 + 8);
      v42 = sub_100003674();
      v41(v42);
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10011567C(v43, v44, v40, v39);

      v45 = sub_100096024();
      v41(v45);
      (v41)(v35, v12);
      v46 = sub_100005854();
      v41(v46);
    }
  }

LABEL_22:
  sub_100005460();
}

void sub_10008F108()
{
  sub_100007FB8();
  if (v0 || (sub_100012628(), !v1))
  {
    if ((sub_100006A18() & 1) == 0)
    {
      sub_100007C28();
      sub_100019B38(v2, v3, v4, v5);
    }
  }
}

void sub_10008F150(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    if (*(a2 + 56))
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0xE000000000000000;
    }

    if (!v4 && (sub_10000AA6C(*(a2 + 56)) & 1) == 0)
    {
      sub_100095FEC(*(v2 + 528), *(v2 + 536));
    }
  }
}

void sub_10008F1AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (*(a2 + 16))
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0xE000000000000000;
    }

    if (!v4 && (sub_10000AA6C(*(a2 + 16)) & 1) == 0)
    {
      sub_100095FEC(*(v2 + 800), *(v2 + 808));
    }
  }
}

void sub_10008F208(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 120);
  if (v3)
  {
    if (*(a2 + 112))
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0xE000000000000000;
    }

    if (!v4 && (sub_10000AA6C(*(a2 + 112)) & 1) == 0)
    {
      sub_100095FEC(*(v2 + 384), *(v2 + 392));
    }
  }
}

uint64_t sub_10008F260(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    return sub_100019B38(v2[32], v2[33], v2[36], v2[37]);
  }

  return result;
}

void sub_10008F2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 || a3 != 0xE000000000000000)
  {
    v8 = sub_100008380();
    if ((sub_1000089A8(v8, v9) & 1) == 0)
    {
      sub_100019B38(*(v4 + 688), *(v4 + 696), a2, a3);
    }
  }

  if (a4 || (sub_100012628(), !v10))
  {
    if ((sub_100006A18() & 1) == 0)
    {
      sub_10000E138();
      sub_100019B38(v11, v12, v13, v14);
    }
  }
}

void sub_10008F338()
{
  sub_100005478();
  v3 = v2;
  v4 = sub_100046184(&qword_1002192E0, &unk_10019BE40);
  sub_100005490(v4);
  sub_100003760();
  __chkstk_darwin(v5);
  sub_100023F20();
  v6 = type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo();
  sub_100003650();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100003664();
  sub_10000FEE8();
  if (!swift_unknownObjectWeakLoadStrong() || (v10 = [objc_opt_self() standardUserDefaults], v11 = String._bridgeToObjectiveC()(), v12 = objc_msgSend(v10, "BOOLForKey:", v11), v10, v11, swift_unknownObjectRelease(), (v12 & 1) == 0))
  {
    sub_100092740(v3, v0);
    if (sub_100008D0C(v0, 1, v6) == 1)
    {
      sub_10000B240(v0, &qword_1002192E0, &unk_10019BE40);
    }

    else
    {
      (*(v8 + 32))(v1, v0, v6);
      Apple_Parsec_Search_LocalCompletionInfo.completions.getter();
      v13 = sub_1000041F8();
      sub_100046184(v13, v14);
      sub_10000F218();
      sub_100095D74(v15, &unk_100219130, &qword_100199320, v16);
      v26 = sub_10001BE24();
      v18 = v17;

      Apple_Parsec_Search_LocalCompletionInfo.origins.getter();
      v27 = sub_10001BE24();
      v20 = v19;

      Apple_Parsec_Search_LocalCompletionInfo.scores.getter();
      v21 = sub_10001BE24();
      v23 = v22;

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100019B38(v24, v25, v26, v18);

      sub_100019B38(v0[92], v0[93], v21, v23);

      sub_100019B38(v0[90], v0[91], v27, v20);

      (*(v8 + 8))(v1, v6);
    }
  }

  sub_100005460();
}

uint64_t sub_10008F61C()
{
  sub_10000AA8C();
  result = type metadata accessor for PegasusContext(0);
  v2 = (v0 + *(result + 88));
  v3 = v2[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v2;
    switch(v3 >> 62)
    {
      case 1uLL:
        v5 = v4;
        v6 = v4 >> 32;
        goto LABEL_8;
      case 2uLL:
        v5 = *(v4 + 16);
        v6 = *(v4 + 24);
LABEL_8:
        if (v5 == v6)
        {
          return result;
        }

        v7 = sub_100005854();
        sub_100062FBC(v7, v8);
LABEL_10:
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000CEBC();
        object = Data.base64EncodedString(options:)(0)._object;
        v10 = sub_10000CC98();
        sub_10011567C(v10, v11, v12, object);

LABEL_11:
        v13 = sub_100005854();

        result = sub_100014A2C(v13, v14);
        break;
      case 3uLL:
        goto LABEL_11;
      default:
        if ((v3 & 0xFF000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_10008F730()
{
  sub_10000AA8C();
  result = type metadata accessor for PegasusContext(0);
  v2 = (v0 + *(result + 108));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000E138();
      sub_10011567C(v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t sub_10008F7C8()
{
  result = sub_100014C44();
  v3 = (v1 + *(result + 108));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return sub_100019B38(*(v0 + 272), *(v0 + 280), v5, v4);
    }
  }

  return result;
}

uint64_t sub_10008F824()
{
  result = sub_100014C44();
  v3 = (v1 + *(result + 68));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    if (*v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 0xE000000000000000;
    }

    if (!v6)
    {
      v7 = sub_10000F18C();
      result = sub_1000089A8(v7, v8);
      if ((result & 1) == 0)
      {
        return sub_1000126B0(*(v0 + 128), *(v0 + 136), v5);
      }
    }
  }

  return result;
}

uint64_t sub_10008F888()
{
  result = sub_100014C44();
  v3 = (v1 + *(result + 72));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    if (*v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 0xE000000000000000;
    }

    if (!v6)
    {
      v7 = sub_10000F18C();
      result = sub_1000089A8(v7, v8);
      if ((result & 1) == 0)
      {
        return sub_1000126B0(*(v0 + 32), *(v0 + 40), v5);
      }
    }
  }

  return result;
}

uint64_t sub_10008F8EC()
{
  result = sub_100014C44();
  if (*(v0 + *(result + 140)) != 6)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    v2 = sub_100005978();
    sub_100019B38(v2, v3, v4, v5);
  }

  return result;
}

uint64_t sub_10008F9A0()
{
  result = sub_100014C44();
  v3 = *(v1 + *(result + 124));
  v4 = *(v1 + *(result + 128));
  if (v4 != 2)
  {
    v3 |= v4;
  }

  if (v3)
  {
    return sub_100019B38(v0[60], v0[61], v0[62], v0[63]);
  }

  return result;
}

void sub_10008F9F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    if (*(a2 + 32))
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0xE000000000000000;
    }

    if (!v4 && (sub_10000AA6C(*(a2 + 32)) & 1) == 0)
    {
      sub_100095FEC(*(v2 + 176), *(v2 + 184));
    }
  }
}

void sub_10008FA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    v3 = !*(a2 + 96) && v2 == 0xE000000000000000;
    if (!v3 && (sub_100006A18() & 1) == 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000E138();
      sub_10011567C(v4, v5, v6, v7);
    }
  }
}

uint64_t sub_10008FAD8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.description.getter();
  v0 = sub_100005978();
  sub_10011567C(v0, v1, v2, v3);
}

uint64_t sub_10008FB4C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000CEBC();
  dispatch thunk of CustomStringConvertible.description.getter();
  v1 = v0;
  v2 = sub_10000CC98();
  sub_10011567C(v2, v3, v4, v1);
}

void sub_10008FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  sub_10000AA8C();
  v15 = v4;
  v5 = sub_100095BA4(v15);
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for PegasusContext(0);
    v8 = (v3 + *(v7 + 104));
    v9 = v8[1];
    if (v9)
    {
      v10 = *v8;
      v16[0] = *v8;
      v16[1] = v9;
      __chkstk_darwin(v7);
      v14[2] = v16;
      v11 = sub_100093434(sub_10003377C, v14, v6);

      if (v11)
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10011567C(v12, v13, v10, v9);
      }

      return;
    }
  }
}

void sub_10008FD14(float a1)
{
  if (a1 > 0.0)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    Float.description.getter();
    sub_1000385B8();
    sub_10011567C(v3, v5, v6, v1);
  }
}

void sub_10008FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a3 == 0x6867696C746F7073 && a4 == 0xE900000000000074;
    if (v6 || (sub_100019030(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v7 = type metadata accessor for PegasusContext(0);
      v8 = (a2 + *(v7 + 132));
      v9 = v8[1];
      if (v9)
      {
        v10 = *v8;
        if (*v8)
        {
          v11 = 0;
        }

        else
        {
          v11 = v9 == 0xE000000000000000;
        }

        if (!v11)
        {
          v12 = v7;
          v13 = sub_100008380();
          if ((sub_1000089A8(v13, v14) & 1) == 0)
          {
            sub_100019B38(v4[12], v4[13], v10, v9);
            v15 = *(a2 + *(v12 + 136));
            if (v15 != 2 && (v15 & 1) != 0)
            {
              sub_100019B38(v4[14], v4[15], v4[36], v4[37]);
            }
          }
        }
      }
    }
  }
}

id sub_10008FE88(int a1, id a2)
{
  result = [a2 exp];
  if (result)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    v3 = sub_10000CC98();
    sub_1000126B0(v3, v4, v5);
  }

  return result;
}

uint64_t sub_10008FF18(uint64_t a1, void *a2)
{
  result = sub_1000A4718(a2);
  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000E138();
    sub_10011567C(v4, v5, v6, v7);
  }

  return result;
}

void sub_10008FF9C()
{
  sub_100006A3C();
  v2 = v0;
  v62 = v3;
  v63 = v4;
  v6 = v5;
  v65 = v7;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for URL();
  sub_100003650();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000407C();
  v18 = v16 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v59 - v21;
  v64 = v6;
  v23 = [v6 searchURL];
  if (!v23)
  {
    v28 = sub_100095CCC();
    v29 = sub_100004248(&type metadata for PARNetworkRequestFactory.NetworkRequestError, v28);
    sub_100095FA8(v29, v30);
    goto LABEL_20;
  }

  v24 = v23;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10008E4C4();
  type metadata accessor for ParsecURLRequestBuilder(0);
  (*(v14 + 16))(v18, v22, v12);
  v25 = sub_100018084(v18);
  if (!v1)
  {
    v31 = v25;
    v61 = v11;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100115440(v32, v33, *(v2 + 192), *(v2 + 200));

    v34 = sub_1000F39B4(v65);
    sub_1000184C0(v34);

    sub_1000192B0();
    sub_10008CE88();
    v59 = v12;
    sub_100013354(v64, &selRef_clientName);
    sub_10009610C();
    if (v50)
    {
      v36 = 0xE000000000000000;
    }

    else
    {
      v36 = v35;
    }

    sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
    Dictionary.init(dictionaryLiteral:)();
    sub_1000960E8();
    sub_1000185A8();

    v37 = type metadata accessor for PegasusContext(0);
    sub_10001A184(v31, *(v9 + *(v37 + 76)), *(v9 + *(v37 + 76) + 8));
    sub_100019AEC(v31, *v9, v9[1]);
    sub_10001A134(v31, v9[9], v9[10]);
    sub_100096098();
    sub_1000CFAE4(v65);
    sub_100005578();
    sub_10008F108();

    v38 = sub_10000BE44();
    sub_10008F150(v38, v39);
    v40 = sub_10000BE44();
    sub_10008F1AC(v40, v41);
    v42 = sub_10000BE44();
    sub_10008F208(v42, v43);
    v44 = sub_10000BE44();
    sub_10008F260(v44, v45);
    sub_10000BE44();
    sub_10008F61C();
    v46 = sub_100013354(v64, &selRef_clientName);
    if (!v47)
    {
      v46 = 0;
      v47 = 0xE000000000000000;
    }

    v48.value = PegasusClientName.init(rawValue:)(*&v46).value;
    if (v48.value != parsecd_PegasusClientName_unknownDefault)
    {
      v50 = sub_10009614C(v48.value) == v36 && v49 == 0xE800000000000000;
      if (v50)
      {

        goto LABEL_19;
      }

      sub_1000960E8();
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
        goto LABEL_19;
      }
    }

    sub_10000BE44();
    sub_10008F824();
    sub_10000BE44();
    sub_10008F888();
    sub_10000BE44();
    sub_10008F8EC();
LABEL_19:
    sub_100013354(v64, &selRef_clientName);
    sub_100005578();
    sub_10008EA00();

    v60 = v9;
    sub_10008F9A0();
    v52 = sub_10000BE44();
    sub_10008F9F4(v52, v53);
    v54 = sub_10000BE44();
    sub_10008FA4C(v54, v55);
    type metadata accessor for SessionTokens(0);
    v56 = v64;
    sub_10008E750();
    sub_10008FAD8();
    sub_10008FB4C();
    sub_100013354(v56, &selRef_userAgent);
    sub_100005578();
    sub_10008D584(v31, v57);

    sub_10008FBE0(v31, v60, v56);
    [v65 scale];
    *&v58 = v58;
    sub_10008FD14(*&v58);
    sub_10008D514();
    sub_10001A220(v61);
    [v56 timeoutIntervalForRequest];
    URLRequest.timeoutInterval.setter();
    [v56 assumesHTTP3Capable];
    URLRequest.assumesHTTP3Capable.setter();
  }

  v26 = sub_100096024();
  v27(v26);
LABEL_20:
  sub_100007FD4();
}

void sub_1000904BC()
{
  sub_100006A3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for URL();
  v11 = sub_100005490(v10);
  __chkstk_darwin(v11);
  sub_100003664();
  v12 = sub_100023F20();
  type metadata accessor for ParsecURLRequestBuilder(v12);
  v13 = [v5 moreResultsURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_100018084(v0);
  if (!v1)
  {
    v15 = v14;
    v35 = v7;
    if (!sub_100115534())
    {
      sub_10008E4C4();
    }

    v16 = sub_1000F39B4(v5);
    sub_1000184C0(v16);

    sub_1000192B0();
    sub_10008CE88();
    sub_100013354(v3, &selRef_clientName);
    sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
    v17 = Dictionary.init(dictionaryLiteral:)();
    sub_100007878();
    sub_1000185A8();

    sub_100019AEC(v15, *v35, v35[1]);
    sub_10001A134(v15, v35[9], v35[10]);
    sub_100096098();
    v18 = sub_100007878();
    sub_10008F150(v18, v19);
    v20 = sub_100013354(v3, &selRef_clientName);
    if (!v21)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    v22.value = PegasusClientName.init(rawValue:)(*&v20).value;
    if (v22.value != parsecd_PegasusClientName_unknownDefault)
    {
      if (sub_10009614C(v22.value) == v17 && v23 == 0xE800000000000000)
      {

        goto LABEL_15;
      }

      sub_1000960E8();
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_15;
      }
    }

    sub_100007878();
    sub_10008F824();
    sub_100007878();
    sub_10008F888();
    sub_100007878();
    sub_10008F8EC();
LABEL_15:
    sub_100013354(v3, &selRef_clientName);
    sub_100005578();
    sub_100009924();
    sub_10008EA00();

    sub_100007878();
    sub_10008F9A0();
    v26 = sub_100007878();
    sub_10008F9F4(v26, v27);
    v28 = sub_100007878();
    sub_10008FA4C(v28, v29);
    type metadata accessor for SessionTokens(0);
    sub_10008E750();
    sub_10008EAA8();
    sub_10008FAD8();
    sub_10008FB4C();
    sub_100013354(v3, &selRef_userAgent);
    sub_100005578();
    v30 = sub_100009924();
    sub_10008D584(v30, v31);

    v32 = sub_100007878();
    sub_10008FBE0(v32, v33, v3);
    [v5 scale];
    *&v34 = v34;
    sub_10008FD14(*&v34);
    sub_10008D514();
    sub_10001A220(v9);
    [v3 timeoutIntervalForRequest];
    URLRequest.timeoutInterval.setter();
    [v3 assumesHTTP3Capable];
    URLRequest.assumesHTTP3Capable.setter();
  }

  sub_100007FD4();
}

void sub_100090884()
{
  sub_100006A3C();
  v4 = v0;
  v60 = v5;
  v7 = v6;
  v63 = v8;
  v62 = v9;
  v10 = type metadata accessor for PegasusContext(0);
  sub_1000036B8();
  __chkstk_darwin(v11);
  sub_100003664();
  v59 = v13 - v12;
  sub_1000058D8();
  v14 = type metadata accessor for URL();
  sub_100003650();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_10000407C();
  sub_1000250FC();
  __chkstk_darwin(v18);
  sub_10000C9A4();
  __chkstk_darwin(v19);
  sub_100096040();
  v61 = v7;
  v20 = [v7 searchURL];
  if (v20)
  {
    v21 = v20;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000960E8();
    v22();
    sub_10008E4C4();
    type metadata accessor for ParsecURLRequestBuilder(0);
    (*(v16 + 16))(v3, v2, v14);
    v23 = sub_100018084(v3);
    if (v1)
    {
      v24 = sub_100023F30();
      v25(v24);
    }

    else
    {
      v29 = v23;
      v30 = v0[18];
      v31 = v4[19];
      v32 = [v63 queryString];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      sub_100115440(v30, v31, v33, v35);

      v36 = sub_1000F39B4(v63);
      sub_1000184C0(v36);

      sub_1000192B0();
      sub_10008CE88();
      sub_100013354(v61, &selRef_clientName);
      sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      Dictionary.init(dictionaryLiteral:)();
      sub_100003674();
      sub_1000185A8();

      v37 = v60;
      sub_10001A184(v29, *(v60 + *(v10 + 76)), *(v60 + *(v10 + 76) + 8));
      sub_100019AEC(v29, *v37, v37[1]);
      sub_10001A134(v29, v37[9], v37[10]);
      sub_100017250(v60, v59);
      sub_100013354(v63, &selRef_preferredLanguage);
      sub_10008CF5C();

      sub_1000174A8(v59);
      sub_1000CFAE4(v63);
      sub_100005578();
      sub_10000EBA4();
      sub_10008F108();

      v38 = sub_10001AC1C();
      sub_10008F150(v38, v39);
      sub_10001AC1C();
      sub_10008F61C();
      sub_10001AC1C();
      sub_10008F824();
      sub_10001AC1C();
      sub_10008F888();
      sub_10001AC1C();
      sub_10008F8EC();
      sub_10001AC1C();
      sub_10008F9A0();
      v40 = sub_10001AC1C();
      sub_10008F9F4(v40, v41);
      v42 = sub_10001AC1C();
      sub_10008FA4C(v42, v43);
      type metadata accessor for SessionTokens(0);
      sub_10008E750();
      sub_10008EAA8();
      v44 = [v63 appBundleId];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      sub_100019B38(v4[46], v4[47], v45, v47);

      sub_100013354(v63, &selRef_domain);
      sub_100005578();
      sub_10000EBA4();
      sub_100090F40();

      v48 = [v63 queryContext];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      sub_100090F88(v29, v49, v51);

      sub_100090FF4(v29, [v63 lookupSelectionType]);
      sub_100013354(v61, &selRef_clientName);
      sub_100005578();
      sub_10000EBA4();
      sub_10008EA00();

      sub_10008FAD8();
      sub_10008FB4C();
      sub_100013354(v61, &selRef_userAgent);
      sub_100005578();
      v52 = sub_10000EBA4();
      sub_10008D584(v52, v53);

      v54 = sub_10001AC1C();
      sub_10008FBE0(v54, v55, v61);
      [v63 scale];
      *&v56 = v56;
      sub_10008FD14(*&v56);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100013354(v61, &selRef_clientName);
        sub_100005578();
        sub_10000EBA4();
        sub_10008EB7C();

        swift_unknownObjectRelease();
      }

      sub_10008D514();
      sub_10001A220(v62);
      [v61 timeoutIntervalForRequest];
      URLRequest.timeoutInterval.setter();
      [v61 assumesHTTP3Capable];
      URLRequest.assumesHTTP3Capable.setter();

      v57 = sub_100023F30();
      v58(v57);
    }
  }

  else
  {
    v26 = sub_100095CCC();
    v27 = sub_100004248(&type metadata for PARNetworkRequestFactory.NetworkRequestError, v26);
    sub_100095FA8(v27, v28);
  }

  sub_100007FD4();
}

void sub_100090F40()
{
  sub_100007FB8();
  if (v0 || (sub_100012628(), !v1))
  {
    if ((sub_100006A18() & 1) == 0)
    {
      sub_100007C28();
      sub_100019B38(v2, v3, v4, v5);
    }
  }
}

uint64_t sub_100090F88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_100092384(a2, a3);
  if (v5)
  {
    sub_1000126B0(*(v3 + 400), *(v3 + 408), result);
  }

  return result;
}

uint64_t sub_100090FF4(uint64_t a1, uint64_t a2)
{
  sub_1000924BC(a2);
  v2 = sub_100005978();
  sub_100019B38(v2, v3, v4, v5);
}

void sub_10009104C()
{
  sub_100006A3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for URL();
  v11 = sub_100005490(v10);
  __chkstk_darwin(v11);
  sub_100003664();
  v12 = sub_100023F20();
  type metadata accessor for ParsecURLRequestBuilder(v12);
  v13 = v5;
  v14 = [v5 cardURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = sub_100018084(v0);
  if (!v1)
  {
    v16 = v15;
    v17 = sub_1000F39B4(v13);
    sub_1000184C0(v17);

    sub_1000192B0();
    sub_10008CE88();
    v18 = type metadata accessor for PegasusContext(0);
    sub_10001A184(v16, *(v7 + *(v18 + 76)), *(v7 + *(v18 + 76) + 8));
    sub_100019AEC(v16, *v7, v7[1]);
    sub_10001A134(v16, v7[9], v7[10]);
    sub_100096098();
    v19 = sub_100005994();
    sub_10008F150(v19, v20);
    sub_100005994();
    sub_10008F61C();
    sub_100005994();
    sub_10008F824();
    sub_100005994();
    sub_10008F888();
    sub_100005994();
    sub_10008F8EC();
    v21 = sub_100005994();
    sub_10008F9F4(v21, v22);
    v23 = sub_100005994();
    sub_10008FA4C(v23, v24);
    type metadata accessor for SessionTokens(0);
    sub_10008E750();
    sub_10008EAA8();
    sub_10008FAD8();
    sub_10008FB4C();
    sub_100013354(v3, &selRef_userAgent);
    sub_100005578();
    v25 = sub_100009924();
    sub_10008D584(v25, v26);

    v27 = sub_100005994();
    sub_10008FBE0(v27, v28, v3);
    [v13 scale];
    *&v29 = v29;
    sub_10008FD14(*&v29);
    sub_10008D514();
    sub_100013354(v3, &selRef_clientName);
    sub_100005578();
    sub_100009924();
    sub_10008EA00();

    sub_10001A220(v9);
    [v3 timeoutIntervalForRequest];
    URLRequest.timeoutInterval.setter();
    [v3 assumesHTTP3Capable];
    URLRequest.assumesHTTP3Capable.setter();
  }

  sub_100007FD4();
}

void sub_100091304()
{
  sub_100006A3C();
  v100 = v3;
  v101 = v0;
  v98 = v5;
  v99 = v4;
  v7 = v6;
  v9 = v8;
  v97 = v10;
  type metadata accessor for URLRequest();
  sub_100003650();
  v89 = v12;
  v90 = v11;
  __chkstk_darwin(v11);
  sub_100003664();
  v91 = v14 - v13;
  sub_1000058D8();
  v92 = type metadata accessor for Date();
  sub_100003650();
  v94 = v15;
  __chkstk_darwin(v16);
  sub_10000407C();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v93 = &v84 - v21;
  sub_1000058D8();
  v96 = type metadata accessor for URL();
  sub_100003650();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_10000407C();
  sub_1000250FC();
  __chkstk_darwin(v25);
  sub_10000C9A4();
  __chkstk_darwin(v26);
  v95 = &v84 - v27;
  v28 = v9;
  v29 = sub_100013354(v9, &selRef_clientName);
  if (v30)
  {
    v31 = v29 == 1818845549 && v30 == 0xE400000000000000;
    if (v31)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_100091AD4();
    goto LABEL_24;
  }

LABEL_7:
  v33 = [v9 flightURL];
  if (!v33)
  {
    v41 = sub_100095CCC();
    v42 = sub_100004248(&type metadata for PARNetworkRequestFactory.NetworkRequestError, v41);
    sub_100095FA8(v42, v43);
    goto LABEL_24;
  }

  v34 = v33;
  v88 = v7;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = v95;
  v36 = v96;
  v37 = sub_1000041F8();
  v38(v37);
  v39 = v101;
  sub_10008E4C4();
  type metadata accessor for ParsecURLRequestBuilder(0);
  (*(v23 + 16))(v2, v35, v36);
  v40 = sub_100018084(v2);
  if (v1)
  {
    (*(v23 + 8))(v35, v36);
    goto LABEL_24;
  }

  v44 = v40;
  v45 = v39[19];
  v85 = v39[18];
  v86 = v45;
  v87 = 0;
  v46 = v100;
  v47 = [v100 flightQuery];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = v44;
  sub_100115440(v85, v86, v48, v50);
  v52 = v46;
  v53 = v101;

  v54 = [v52 date];
  v86 = v23;
  v55 = v35;
  if (!v54)
  {
LABEL_19:
    v68 = sub_1000F39B4(v52);
    sub_1000184C0(v68);

    sub_1000192B0();
    v69 = v51;
    v70 = v87;
    sub_10008CE88();
    if (v70)
    {
      (*(v86 + 8))(v55, v96);
    }

    else
    {
      sub_100013354(v28, &selRef_clientName);
      sub_10009610C();
      v87 = 0;
      v71 = v53;
      sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000041F8();
      sub_1000185A8();

      v72 = type metadata accessor for PegasusContext(0);
      v73 = v99;
      sub_10001A184(v69, *(v99 + *(v72 + 76)), *(v99 + *(v72 + 76) + 8));
      sub_100019AEC(v69, *v73, v73[1]);
      sub_10001A134(v69, v73[9], v73[10]);
      sub_100096098();
      sub_1000CFAE4(v52);
      sub_100005578();
      sub_100095FC4();
      sub_10008F108();

      sub_100007FC8();
      sub_10008F61C();
      sub_100007FC8();
      sub_10008F824();
      sub_100007FC8();
      sub_10008F888();
      sub_100007FC8();
      sub_10008F8EC();
      sub_100013354(v28, &selRef_clientName);
      sub_100005578();
      sub_100095FC4();
      sub_10008EA00();

      v74 = type metadata accessor for SessionTokens(0);
      v75 = v88;
      sub_10008FAD8();
      sub_10008FB4C();
      sub_100013354(v28, &selRef_userAgent);
      sub_100005578();
      v76 = sub_100095FC4();
      sub_10008D584(v76, v77);

      v78 = sub_100007FC8();
      sub_10008FBE0(v78, v79, v28);
      [v52 scale];
      *&v80 = v80;
      sub_10008FD14(*&v80);
      sub_10008EAA8();
      sub_10008E750();
      sub_10008D514();
      sub_10011567C(v71[106], v71[107], v71[108], v71[109]);
      v81 = [v52 appBundleId];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000CEBC();

      sub_100019B38(v71[46], v71[47], v74, v75);

      v82 = v91;
      v83 = v87;
      sub_10001A220(v91);
      if (!v83)
      {
        [v28 timeoutIntervalForRequest];
        URLRequest.timeoutInterval.setter();
        [v28 assumesHTTP3Capable];
        URLRequest.assumesHTTP3Capable.setter();

        (*(v86 + 8))(v95, v96);
        (*(v89 + 32))(v97, v82, v90);
        goto LABEL_24;
      }

      (*(v86 + 8))(v95, v96);
    }

LABEL_24:
    sub_100007FD4();
    return;
  }

  v56 = v54;
  v57 = v51;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = v92;
  (*(v94 + 32))(v93, v19, v92);
  v59 = v53[68];
  v60 = v53[69];
  Date.timeIntervalSince1970.getter();
  sub_10000ADEC();
  if (!(v62 ^ v63 | v31))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v61 <= -9.22337204e18)
  {
    goto LABEL_26;
  }

  if (v61 < 9.22337204e18)
  {
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v67 = v60;
    v51 = v57;
    sub_100115440(v59, v67, v64, v66);

    (*(v94 + 8))(v93, v58);
    v53 = v101;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
}

void sub_100091AD4()
{
  sub_100006A3C();
  v77 = v3;
  v78 = v1;
  v4 = v0;
  v71 = v5;
  v72 = v6;
  v8 = v7;
  v73 = v9;
  type metadata accessor for Date();
  sub_100003650();
  v74 = v11;
  v75 = v10;
  __chkstk_darwin(v10);
  sub_10000407C();
  sub_10000BA2C();
  __chkstk_darwin(v12);
  v76 = &v67 - v13;
  sub_1000058D8();
  v14 = type metadata accessor for URL();
  sub_100003650();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_10000407C();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  sub_10000C9A4();
  v23 = __chkstk_darwin(v22);
  v25 = &v67 - v24;
  v26 = [v8 flightURL];
  if (!v26)
  {
    v30 = sub_100095CCC();
    v31 = sub_100004248(&type metadata for PARNetworkRequestFactory.NetworkRequestError, v30);
    sub_100095FA8(v31, v32);
    goto LABEL_17;
  }

  v27 = v26;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v16 + 32))(v25, v0, v14);
  sub_10008E4C4();
  type metadata accessor for ParsecURLRequestBuilder(0);
  (*(v16 + 16))(v20, v25, v14);
  v28 = v78;
  v29 = sub_100018084(v20);
  if (v28)
  {
    (*(v16 + 8))(v25, v14);
LABEL_17:
    sub_100007FD4();
    return;
  }

  v33 = v29;
  v67 = v25;
  v68 = v16;
  v35 = v0[18];
  v34 = v4[19];
  v36 = v4;
  v69 = v14;
  v70 = v34;
  v78 = 0;
  v37 = v77;
  v38 = [v77 flightQuery];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v8;
  v42 = v41;

  sub_100115440(v35, v70, v39, v42);
  v43 = v40;

  v44 = v78;
  v45 = [v37 date];
  v46 = v33;
  if (!v45)
  {
LABEL_11:
    sub_1000192B0();
    sub_10008CE88();
    if (v44)
    {
      (*(v68 + 8))(v67, v69);
    }

    else
    {
      sub_100013354(v43, &selRef_clientName);
      if (v59)
      {
        v60 = v59;
      }

      else
      {
        v60 = 0xE000000000000000;
      }

      sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      Dictionary.init(dictionaryLiteral:)();
      sub_100023F30();
      sub_1000185A8();

      v61 = type metadata accessor for PegasusContext(0);
      v62 = v71;
      sub_10001A184(v46, *(v71 + *(v61 + 76)), *(v71 + *(v61 + 76) + 8));
      sub_100019AEC(v46, *v62, v62[1]);
      sub_10001A134(v46, v62[9], v62[10]);
      sub_100096098();
      sub_10008FB4C();
      sub_100013354(v43, &selRef_userAgent);
      sub_100005578();
      v63 = sub_100009924();
      sub_10008D584(v63, v64);

      sub_10008D514();
      sub_10011567C(v36[106], v36[107], v36[108], v36[109]);
      v65 = [v77 appBundleId];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000960F4();

      sub_100019B38(v36[46], v36[47], v46, v60);

      sub_10001A220(v73);
      v66 = v69;
      [v43 timeoutIntervalForRequest];
      URLRequest.timeoutInterval.setter();
      [v43 assumesHTTP3Capable];
      URLRequest.assumesHTTP3Capable.setter();

      (*(v68 + 8))(v67, v66);
    }

    goto LABEL_17;
  }

  v47 = v45;
  v70 = v43;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v74;
  v48 = v75;
  (*(v74 + 32))(v76, v2, v75);
  Date.timeIntervalSince1970.getter();
  sub_10000ADEC();
  if (!(v52 ^ v53 | v51))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v50 <= -9.22337204e18)
  {
    goto LABEL_18;
  }

  if (v50 < 9.22337204e18)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v56 = sub_10001AC1C();
    sub_100115440(v56, v57, v58, v55);

    (*(v49 + 8))(v76, v48);
    v43 = v70;
    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
}

void sub_100092094()
{
  sub_100006A3C();
  v26 = v2;
  v4 = v3;
  v27 = v5;
  v6 = type metadata accessor for Requestor();
  sub_100003650();
  v29 = v7;
  __chkstk_darwin(v8);
  sub_100003664();
  v11 = v10 - v9;
  v12 = type metadata accessor for UserAgent();
  sub_100003650();
  v28 = v13;
  __chkstk_darwin(v14);
  sub_100003664();
  v17 = v16 - v15;
  v18 = type metadata accessor for URL();
  sub_100003650();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100003664();
  sub_10000FEE8();
  type metadata accessor for ParsecURLRequestBuilder(0);
  (*(v20 + 16))(v1, v4, v18);
  v22 = sub_100018084(v1);
  if (!v0)
  {
    v23 = v22;
    v30 = v12;
    sub_10008CE88();
    (*(v29 + 104))(v11, enum case for Requestor.parsecd(_:), v6);
    UserAgent.init(_:requestor:)();
    v24 = UserAgent.fullString.getter();
    (*(v28 + 8))(v17, v30);
    sub_10008D584(v23, v24);

    if (v26)
    {
      sub_100092338();
    }

    sub_10008D514();
    sub_10001A220(v27);
    v25 = type metadata accessor for URLRequest();
    sub_1000051C0(v27, 0, 1, v25);
  }

  sub_100007FD4();
}

void sub_100092338()
{
  sub_100007FB8();
  if (v0 || (sub_100012628(), !v1))
  {
    if ((sub_100006A18() & 1) == 0)
    {
      sub_100007C28();
      sub_10011567C(v2, v3, v4, v5);
    }
  }
}

uint64_t sub_100092384(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_10000AA8C();
    v3 = objc_opt_self();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 dominantLanguageForString:v4];

    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = v6 == 6581877 && v8 == 0xE300000000000000;
    if (v9 || (sub_10000F18C(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

LABEL_11:
      v10 = String._bridgeToObjectiveC()();
      v13.length = String.UTF16View.count.getter();
      v13.location = 0;
      v11 = CFStringTokenizerCopyBestStringLanguage(v10, v13);

      if (v11)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }
  }

  return sub_10000F18C();
}

uint64_t sub_10009251C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16) + 1;
  while (--v6)
  {
    if (String.init(cString:)() == v5 && v7 == a2)
    {

LABEL_10:
      v26 = &unk_1001F8DF0;
      v27 = sub_100095C78();
      sub_100008C84(&v25, v28);
      v10 = PARFeatureFlagOverrideDisable;
      sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      v11 = v10;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        v13 = v29;
        v14 = v30;
        sub_100007534(v28, v29);
        v15 = (*(v14 + 24))(v13, v14);
        if (v16)
        {
          sub_10009522C(v15, v16);
        }

        v17 = v29;
        v18 = v30;
        sub_100007534(v28, v29);
        v19 = (*(v18 + 32))(v17, v18);
        if (!v20)
        {
          return sub_100007378(v28);
        }

LABEL_17:
        sub_1000936D4(&v25, v19, v20);
      }

      else
      {
        v21 = PARFeatureFlagOverrideEnable;
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          v23 = v29;
          v24 = v30;
          sub_100007534(v28, v29);
          v19 = (*(v24 + 24))(v23, v24);
          if (v20)
          {
            goto LABEL_17;
          }
        }
      }

      return sub_100007378(v28);
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_100092740@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo();
  sub_100003650();
  v114 = v3;
  __chkstk_darwin(v3);
  sub_100003664();
  v113 = v5 - v4;
  Apple_Parsec_Search_LocalCompletionInfo.init()();
  v130 = _swiftEmptySetSingleton;
  v129 = _swiftEmptyArrayStorage;
  p_ivar_base_size = &UploadStateFileStore.ivar_base_size;
  v122 = a1;
  if (![a1 engagedSuggestion])
  {
    goto LABEL_4;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v7 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v7 >> 1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    sub_100005854();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_4:
    v8 = [v122 *(p:v113 ivar:? base:?size + 420)];
    if (v8)
    {
      v9 = sub_100095B2C(v8);
      if (v9)
      {
        sub_1000BADC4(v9);
      }
    }

    v10 = sub_100095ABC(v122);
    if (v10)
    {
      sub_1000BADC4(v10);
    }

    v11 = sub_1000CFA68(v122);
    if (v11)
    {
      sub_1000BADC4(v11);
    }

    v12 = v129;
    v13 = sub_10000D57C(v129);
    if (v13)
    {
      v14 = v13;
      if (v13 >= 1)
      {
        v15 = _swiftEmptyDictionarySingleton;
        v16 = 32;
        v123 = v12;
        while (1)
        {
          p_ivar_base_size = *(v12 + v16);
          v17 = sub_100013354(p_ivar_base_size, &selRef_suggestion);
          if (v18)
          {
            v19 = v17;
            v20 = v18;
            sub_10009311C(p_ivar_base_size);
            if (v22)
            {
              v23 = v21;
              v24 = v22;
              sub_100046184(&unk_100217040, &qword_1001989F0);
              v25 = swift_allocObject();
              *(v25 + 16) = xmmword_100197F20;
              [(uint32_t *)p_ivar_base_size score];
              v27 = v26;
              *(v25 + 56) = &type metadata for CGFloat;
              *(v25 + 64) = sub_100095DBC();
              *(v25 + 32) = v27;
              v28 = String.init(format:_:)();
              v126 = v29;

              sub_1000936D4(&v128, v19, v20);

              if (*(v15 + 2) && (v30 = sub_100005B74(v19, v20), (v31 & 1) != 0))
              {
                v32 = v30;

                v33 = *(*(v15 + 7) + 8 * v32);

                v34 = v15;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1000040F0();
                  sub_10006CCE4();
                  v33 = v39;
                }

                v36 = *(v33 + 16);
                v35 = *(v33 + 24);
                if (v36 >= v35 >> 1)
                {
                  sub_1000066A8(v35);
                  sub_10006CCE4();
                  v33 = v40;
                }

                *(v33 + 16) = v36 + 1;
                v37 = (v33 + 32 * v36);
                v37[4] = v23;
                v37[5] = v24;
                v37[6] = v28;
                v37[7] = v126;

                v15 = v34;
              }

              else
              {
                sub_100046184(&qword_1002161C0, &qword_10019A670);
                v38 = swift_allocObject();
                *(v38 + 16) = xmmword_100197F20;
                *(v38 + 32) = v23;
                *(v38 + 40) = v24;
                *(v38 + 48) = v28;
                *(v38 + 56) = v126;
                swift_isUniquelyReferenced_nonNull_native();
                v128 = v15;
                sub_100007FC8();
                sub_1000BDA84();

                v15 = v128;
              }

              v12 = v123;
              goto LABEL_27;
            }
          }

LABEL_27:
          v16 += 8;
          if (!--v14)
          {

            v41 = v130;
            goto LABEL_30;
          }
        }
      }

      __break(1u);
LABEL_77:
      sub_100004228(&qword_1002140B8);
      goto LABEL_63;
    }

    v15 = _swiftEmptyDictionarySingleton;
    v41 = _swiftEmptySetSingleton;
LABEL_30:
    if (!v41[2])
    {
      break;
    }

    v42 = v41 + 7;
    sub_100004154();
    v45 = v44 & v43;
    v47 = (v46 + 63) >> 6;

    v48 = v45;
    v49 = 0;
    v50 = _swiftEmptyArrayStorage;
    v127 = _swiftEmptyArrayStorage;
    v118 = v41;
    v119 = v15;
    v116 = v47;
    v117 = v41 + 7;
    if (!v45)
    {
      goto LABEL_32;
    }

    do
    {
LABEL_36:
      v124 = v48;
      v121 = v49;
      v51 = v15;
      v52 = *(v15 + 2);

      if (!v52 || (v53 = sub_10000F18C(), v55 = sub_100005B74(v53, v54), (v56 & 1) == 0))
      {

        if (qword_1002140B8 != -1)
        {
          sub_100004228(&qword_1002140B8);
        }

        v102 = type metadata accessor for Logger();
        sub_10000964C(v102, qword_100232A98);

        v103 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v103, v91))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v128 = v105;
          *v104 = 136315138;
          v106 = sub_10000F18C();
          v109 = sub_100009684(v106, v107, v108);

          *(v104 + 4) = v109;
          _os_log_impl(&_mh_execute_header, v103, v91, "Can't add ECC suggestion to request, no suggestions for: %s", v104, 0xCu);
          sub_100007378(v105);
          sub_1000036D4(v105);
          sub_1000036D4(v104);
        }

        else
        {
        }

        v110 = sub_100096118();
        v111(v110);
        goto LABEL_72;
      }

      v57 = *(*(v51 + 7) + 8 * v55);

      v125 = v57;
      v58 = *(v57 + 16);
      v120 = v50;
      if (v58)
      {
        v59 = (v125 + 56);
        p_ivar_base_size = _swiftEmptyArrayStorage;
        v60 = _swiftEmptyArrayStorage;
        do
        {
          v61 = *(v59 - 3);
          v62 = *(v59 - 2);
          v64 = *(v59 - 1);
          v63 = *v59;
          swift_bridgeObjectRetain_n();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000040F0();
            sub_10001B77C();
            v60 = v71;
          }

          v66 = *(v60 + 2);
          v65 = *(v60 + 3);
          if (v66 >= v65 >> 1)
          {
            sub_1000066A8(v65);
            sub_10001B77C();
            v60 = v72;
          }

          *(v60 + 2) = v66 + 1;
          v67 = &v60[4 * v66];
          *(v67 + 4) = v64;
          *(v67 + 5) = v63;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000040F0();
            sub_10001B77C();
            p_ivar_base_size = v73;
          }

          v69 = *(p_ivar_base_size + 2);
          v68 = *(p_ivar_base_size + 3);
          if (v69 >= v68 >> 1)
          {
            sub_1000066A8(v68);
            sub_10001B77C();
            p_ivar_base_size = v74;
          }

          *(p_ivar_base_size + 2) = v69 + 1;
          v70 = &p_ivar_base_size[4 * v69];
          *(v70 + 4) = v61;
          *(v70 + 5) = v62;
          v59 += 4;
          --v58;
        }

        while (v58);
      }

      else
      {
        p_ivar_base_size = _swiftEmptyArrayStorage;
        v60 = _swiftEmptyArrayStorage;
      }

      v128 = p_ivar_base_size;
      sub_100046184(&unk_100219130, &qword_100199320);
      sub_10000F218();
      sub_100095D74(qword_100214FD8, &unk_100219130, &qword_100199320, v75);
      v76 = sub_10009612C();
      v78 = v77;

      v128 = v60;
      sub_10009612C();
      sub_1000960F4();

      v50 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000040F0();
        sub_10001B77C();
        v50 = v86;
      }

      v47 = v116;
      v80 = v50[2];
      v79 = v50[3];
      if (v80 >= v79 >> 1)
      {
        sub_1000066A8(v79);
        sub_10001B77C();
        v50 = v87;
      }

      v50[2] = v80 + 1;
      v81 = &v50[2 * v80];
      v81[4] = v76;
      v81[5] = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000040F0();
        sub_10001B77C();
        v127 = v88;
      }

      v42 = v117;
      v41 = v118;
      v83 = v127[2];
      v82 = v127[3];
      v84 = v124;
      if (v83 >= v82 >> 1)
      {
        sub_1000066A8(v82);
        sub_10001B77C();
        v84 = v124;
        v127 = v89;
      }

      v48 = (v84 - 1) & v84;
      v127[2] = v83 + 1;
      v85 = &v127[2 * v83];
      v85[4] = &v128;
      v85[5] = p_ivar_base_size;
      v15 = v119;
      v49 = v121;
    }

    while (v48);
LABEL_32:
    while (1)
    {
      v7 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v7 >= v47)
      {

        sub_100066404(v41);
        Apple_Parsec_Search_LocalCompletionInfo.completions.setter();
        Apple_Parsec_Search_LocalCompletionInfo.scores.setter();
        Apple_Parsec_Search_LocalCompletionInfo.origins.setter();

        v90 = sub_1000041F8();
        v91 = v114;
        v92(v90);
        v93 = a2;
        v94 = 0;
        return sub_1000051C0(v93, v94, 1, v91);
      }

      v48 = v42[v7];
      ++v49;
      if (v48)
      {
        v49 = v7;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_75:
    sub_1000066A8(v7);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  if (qword_1002140B8 != -1)
  {
    goto LABEL_77;
  }

LABEL_63:
  v95 = type metadata accessor for Logger();
  sub_10000964C(v95, qword_100232A98);
  v96 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v96, v91))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    sub_10000554C(&_mh_execute_header, v98, v99, "No ECC suggestions to add to request");
    sub_1000036D4(v97);
  }

  v100 = sub_100096118();
  v101(v100);
LABEL_72:

  v94 = 1;
  v93 = a2;
  return sub_1000051C0(v93, v94, 1, v91);
}

void sub_10009311C(void *a1)
{
  if ([a1 type] == 5)
  {
    sub_100013354(a1, &selRef_topicIdentifier);
    if (!v3)
    {
      if (qword_1002140B8 != -1)
      {
        sub_100004228(&qword_1002140B8);
      }

      v4 = type metadata accessor for Logger();
      sub_10000964C(v4, qword_100232A98);
      v1 = a1;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v22 = v8;
        *v7 = 136315650;
        v9 = sub_100013354(v1, &selRef_suggestion);
        if (!v10)
        {
LABEL_18:

          __break(1u);
          return;
        }

        v11 = sub_100009684(v9, v10, &v22);

        *(v7 + 4) = v11;
        *(v7 + 12) = 1024;
        v12 = [v1 type];

        *(v7 + 14) = v12;
        *(v7 + 18) = 2080;
        v13 = sub_100013354(v1, &selRef_topicIdentifier);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v13 = 7104878;
          v15 = 0xE300000000000000;
        }

        v16 = sub_100009684(v13, v15, &v22);

        *(v7 + 20) = v16;
        _os_log_impl(&_mh_execute_header, v5, v6, "Can't extract ECC suggestion and source for %s, invalid type (%d) or topic (%s)", v7, 0x1Cu);
        swift_arrayDestroy();
        sub_1000036D4(v8);
        sub_1000036D4(v7);
      }

      else
      {
      }

      return;
    }
  }

  switch([a1 type])
  {
    case 5u:
      sub_100046184(&unk_100217040, &qword_1001989F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100197F20;
      v18 = sub_100013354(a1, &selRef_topicIdentifier);
      if (!v19)
      {
        __break(1u);
        goto LABEL_18;
      }

      v20 = v18;
      v21 = v19;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = sub_10000512C();
      *(v17 + 32) = v20;
      *(v17 + 40) = v21;
      String.init(format:_:)();
      break;
    default:
      return;
  }
}

BOOL sub_100093434(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1000934E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10019BC20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_100093548()
{
  sub_100005478();
  v3 = type metadata accessor for Trialpb_TrialExperiment();
  sub_100003650();
  __chkstk_darwin(v4);
  sub_100003664();
  sub_100096068();
  sub_10000AE70();
  sub_10000B89C(v5, v6, &protocol conformance descriptor for Trialpb_TrialExperiment);
  sub_100012EFC();
  sub_10000DBC8();
  do
  {
    sub_1000076A8();
    if (v7)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_10000FF80();
      v12(v11);
      v13 = sub_100096008();
      sub_10009412C(v13, v14, v15);
      v16 = sub_10002DEFC();
      v17(v16);
      goto LABEL_7;
    }

    v8 = sub_10001ADA0();
    v2(v8);
    sub_10000AE70();
    sub_10000B89C(&qword_100217B68, v9, &protocol conformance descriptor for Trialpb_TrialExperiment);
    sub_1000960B0();
    v10 = sub_100096050();
    v1(v10);
  }

  while ((v0 & 1) == 0);
  (v1)(v19, v3);
  v18 = sub_10000FEF4();
  v2(v18);
LABEL_7:
  sub_100005460();
}

BOOL sub_1000936D4(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1000943DC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_100093820(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Trialpb_TrialExperiment();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100046184(&qword_100217B70, &unk_10019BE30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1000934E4(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000B89C(&qword_100217B60, &type metadata accessor for Trialpb_TrialExperiment, &protocol conformance descriptor for Trialpb_TrialExperiment);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int sub_100093B78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100046184(&qword_100217B38, &qword_10019BE20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1000934E4(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100093DD4(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100046184(&qword_100217B58, &qword_10019BE28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1000934E4(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000B89C(&qword_100217B48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10009412C(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for Trialpb_TrialExperiment();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100093820(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1000948AC(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_10000B89C(&qword_100217B60, &type metadata accessor for Trialpb_TrialExperiment, &protocol conformance descriptor for Trialpb_TrialExperiment);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10000B89C(&qword_100217B68, &type metadata accessor for Trialpb_TrialExperiment, &protocol conformance descriptor for Trialpb_TrialExperiment);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_10009469C();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

unint64_t sub_1000943DC(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100093B78(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_100094BC4(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_100094544();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_100094544()
{
  v1 = v0;
  sub_100046184(&qword_100217B38, &qword_10019BE20);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void sub_10009469C()
{
  sub_100005478();
  v2 = v0;
  v4 = v3(0);
  sub_100003650();
  v6 = v5;
  sub_100003760();
  __chkstk_darwin(v7);
  sub_10000FEE8();
  v8 = sub_100005994();
  sub_100046184(v8, v9);
  v10 = *v0;
  v11 = static _SetStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v25 = v2;
    v13 = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v10 + 56 + 8 * v14)
    {
      memmove(v13, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v1, *(v10 + 48) + v24, v4);
      (*(v6 + 32))(*(v12 + 48) + v24, v1, v4);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v2 = v25;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v2 = v12;
    sub_100005460();
  }
}

uint64_t sub_1000948AC(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Trialpb_TrialExperiment();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100046184(&qword_100217B70, &unk_10019BE30);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000B89C(&qword_100217B60, &type metadata accessor for Trialpb_TrialExperiment, &protocol conformance descriptor for Trialpb_TrialExperiment);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_100094BC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100046184(&qword_100217B38, &qword_10019BE20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100094DF8(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100046184(&qword_100217B58, &qword_10019BE28);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000B89C(&qword_100217B48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100095110(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_10001B82C((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10009522C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100094544();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_100095594(v8);
  *v2 = v15;
  return v13;
}

void sub_100095354()
{
  sub_100005478();
  v24 = v1;
  v2 = type metadata accessor for UUID();
  sub_100003650();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003664();
  v8 = v7 - v6;
  v23 = v0;
  v9 = *v0;
  sub_10000391C();
  sub_10000B89C(v10, v11, &protocol conformance descriptor for UUID);
  v12 = sub_100012EFC();
  v13 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v14 = v12 & v13;
    if (((*(v9 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {
      v18 = 1;
      v19 = v24;
      goto LABEL_9;
    }

    v15 = *(v4 + 72) * v14;
    (*(v4 + 16))(v8, *(v9 + 48) + v15, v2);
    sub_10000391C();
    sub_10000B89C(&qword_100217B50, v16, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v4 + 8))(v8, v2);
    if (v17)
    {
      break;
    }

    v12 = v14 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v23;
  v25 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10009469C();
    v21 = v25;
  }

  v22 = *(v21 + 48) + v15;
  v19 = v24;
  (*(v4 + 32))(v24, v22, v2);
  sub_10009574C(v14);
  v18 = 0;
  *v23 = v25;
LABEL_9:
  sub_1000051C0(v19, v18, 1, v2);
  sub_100005460();
}

unint64_t sub_100095594(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_10009574C(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v36 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v35 = v14;
      v15 = *(v13 + 56);
      v37 = v13;
      v38 = v15;
      v16 = v11;
      v17 = (v13 - 8);
      v18 = v7;
      while (1)
      {
        v19 = v8;
        v20 = v38 * v10;
        v21 = v16;
        v35(v6, *(v18 + 48) + v38 * v10, v3);
        v22 = v18;
        sub_10000B89C(&qword_100217B48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v6, v3);
        v16 = v21;
        v24 = v23 & v21;
        if (a1 >= v36)
        {
          if (v24 < v36 || a1 < v24)
          {
LABEL_20:
            v18 = v22;
            goto LABEL_24;
          }
        }

        else if (v24 < v36 && a1 < v24)
        {
          goto LABEL_20;
        }

        v18 = v22;
        v26 = *(v22 + 48);
        v27 = v38 * a1;
        v28 = v26 + v38 * a1;
        v29 = v26 + v20 + v38;
        if (v38 * a1 < v20 || v28 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v16 = v21;
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v27 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v16;
        v8 = v19;
        if (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v7;
LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v7;
  }

  v32 = *(v18 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v34;
    ++*(v18 + 36);
  }
}

uint64_t sub_100095A58(void *a1)
{
  v1 = [a1 replayHeaderItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100095ABC(void *a1)
{
  v1 = [a1 localContextualSuggestions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100005180(0, &qword_100217810, SFSearchSuggestion_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100095B2C(void *a1)
{
  v2 = [a1 duplicateSuggestions];

  if (!v2)
  {
    return 0;
  }

  sub_100005180(0, &qword_100217810, SFSearchSuggestion_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100095BA4(void *a1)
{
  v1 = [a1 skuUploadWhitelist];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100095BFC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

unint64_t sub_100095C78()
{
  result = qword_100217B40;
  if (!qword_100217B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217B40);
  }

  return result;
}

unint64_t sub_100095CCC()
{
  result = qword_100219210;
  if (!qword_100219210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219210);
  }

  return result;
}

unint64_t sub_100095D20()
{
  result = qword_100217B78;
  if (!qword_100217B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217B78);
  }

  return result;
}

uint64_t sub_100095D74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100095DBC()
{
  result = qword_100217B80;
  if (!qword_100217B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217B80);
  }

  return result;
}

uint64_t sub_100095E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PARNetworkRequestFactory.NetworkRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100095F54()
{
  result = qword_100217BA0;
  if (!qword_100217BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217BA0);
  }

  return result;
}

uint64_t sub_100095FA8(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_100095FEC(uint64_t a1, uint64_t a2)
{

  return sub_100019B38(a1, a2, v3, v2);
}

void sub_100096098()
{

  sub_10008CF5C();
}

uint64_t sub_1000960B0()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_10009612C()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_10009614C(char a1)
{

  return PegasusClientName.rawValue.getter(a1);
}

uint64_t sub_10009616C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_100214158 != -1)
  {
    swift_once();
  }

  AvroArray.init(schema:)();
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v13 = sub_1000669EC(a3);

  sub_1000964D4(v13, &v19);
  if (v4)
  {
  }

  else
  {

    if (qword_100214150 != -1)
    {
      swift_once();
    }

    schema = *byte_100217BA8;
    sub_1000967A0(&schema, &v17);
    AvroRecord.init(schema:)(&v18, &schema);
    static AvroValue.string(_:)(a1, a2, v23);

    AvroRecord.set(_:forField:)(v23, 0x6553686372616573, 0xEF64496E6F697373);
    sub_100096480(v23);
    static AvroValue.array(_:)(v19, v20, v21, v22, v24);
    AvroRecord.set(_:forField:)(v24, 0xD000000000000011, 0x80000001001AF490);
    sub_100096480(v24);

    name = v18.schema.name;
    *a4 = v18.schema.type;
    *(a4 + 16) = name;
    v16 = *&v18.schema.fields._rawValue;
    *(a4 + 32) = v18.schema.namespace;
    *(a4 + 48) = v16;
  }

  return result;
}

uint64_t sub_1000963F4()
{
  ByteBuffer.writeBytes(_:)(&off_1001F5B98);
  ByteBuffer.writeBytes(_:)(&off_1001F5BC0);
  v1 = v0[1];
  v12[0] = *v0;
  v12[1] = v1;
  v2 = v0[3];
  v12[2] = v0[2];
  v12[3] = v2;
  static AvroValue.record(_:)(v12, v11);
  ByteBuffer.writeAvroValue(_:)(v11, v3, v4, v5, v6, v7, v8, v9);
  sub_100096480(v11);
  return 0;
}

uint64_t sub_1000964D4(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  do
  {
    if (v4 == v3)
    {
      break;
    }

    type metadata accessor for Trialpb_TrialExperiment();
    result = sub_100096A1C();
    ++v3;
  }

  while (!v2);
  return result;
}

double sub_100096594()
{
  sub_100046184(&qword_100217C30, &qword_10019BF58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100198F10;
  v1 = *AvroSchema.string.unsafeMutableAddressor();

  *(v0 + 32) = AvroRecordSchema.Field.init(name:type:optional:)(0x6553686372616573, 0xEF64496E6F697373, v1);
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  if (qword_100214158 != -1)
  {
    swift_once();
  }

  v4 = static AvroSchema.array(schema:)();
  *(v0 + 56) = AvroRecordSchema.Field.init(name:type:optional:)(0xD000000000000011, 0x80000001001AF490, v4);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7._countAndFlagsBits = 0xD000000000000013;
  v7._object = 0x800000010019BF20;
  v8._countAndFlagsBits = 0xD000000000000032;
  v8._object = 0x80000001001AF4B0;
  AvroRecordSchema.init(name:namespace:fields:)(&v10, v7, v8, v0);
  *byte_100217BA8 = v10;
  return *&v10.namespace.value._countAndFlagsBits;
}

uint64_t sub_10009670C()
{
  if (qword_100214160 != -1)
  {
    swift_once();
  }

  v1[0] = *byte_100217BF8;
  v1[1] = *&byte_100217BF8[16];
  v1[2] = *&byte_100217BF8[32];
  v2 = *&byte_100217BF8[48];
  result = static AvroSchema.record(schema:)(v1);
  qword_100217BE0 = 0x7961727261;
  *algn_100217BE8 = 0xE500000000000000;
  qword_100217BF0 = result;
  return result;
}

uint64_t sub_100096850()
{
  sub_100046184(&qword_100217C30, &qword_10019BF58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10019A7F0;
  v1 = AvroSchema.string.unsafeMutableAddressor();
  v2 = *v1;

  *(v0 + 32) = AvroRecordSchema.Field.init(name:type:optional:)(0xD000000000000013, 0x80000001001AF4F0, v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  v5 = *v1;

  *(v0 + 56) = AvroRecordSchema.Field.init(name:type:optional:)(0x656D697265707865, 0xEC0000006449746ELL, v5);
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  v8 = *v1;

  *(v0 + 80) = AvroRecordSchema.Field.init(name:type:optional:)(0x6E656D7461657274, 0xEB00000000644974, v8);
  *(v0 + 88) = v9;
  *(v0 + 96) = v10;
  v11 = AvroSchema.int.unsafeMutableAddressor();
  v12 = *v11;

  *(v0 + 104) = AvroRecordSchema.Field.init(name:type:optional:)(0x656D796F6C706564, 0xEC0000006449746ELL, v12);
  *(v0 + 112) = v13;
  *(v0 + 120) = v14;
  v15 = *v11;

  result = AvroRecordSchema.Field.init(name:type:optional:)(0xD000000000000014, 0x80000001001AF510, v15);
  *(v0 + 128) = result;
  *(v0 + 136) = v17;
  *(v0 + 144) = v18;
  *byte_100217BF8 = 0x64726F636572;
  *&byte_100217BF8[8] = 0xE600000000000000;
  strcpy(&byte_100217BF8[16], "ExperimentInfo");
  byte_100217BF8[31] = -18;
  *&byte_100217BF8[32] = 0;
  *&byte_100217BF8[40] = 0;
  *&byte_100217BF8[48] = v0;
  return result;
}

uint64_t sub_100096A1C()
{
  if (qword_100214160 != -1)
  {
    swift_once();
  }

  schema = *byte_100217BF8;
  sub_1000967A0(&schema, &v9);
  AvroRecord.init(schema:)(&v10, &schema);
  v1 = Trialpb_TrialExperiment.experimentNamespace.getter();
  static AvroValue.string(_:)(v1, v2, v11);

  AvroRecord.set(_:forField:)(v11, 0xD000000000000013, 0x80000001001AF4F0);
  if (v0)
  {
    v9 = v10;
    sub_1000967FC(&v9);
    v3 = v11;
    return sub_100096480(v3);
  }

  sub_100096480(v11);
  v4 = Trialpb_TrialExperiment.experimentID.getter();
  static AvroValue.string(_:)(v4, v5, v12);

  AvroRecord.set(_:forField:)(v12, 0x656D697265707865, 0xEC0000006449746ELL);
  sub_100096480(v12);
  v6 = Trialpb_TrialExperiment.treatmentID.getter();
  static AvroValue.string(_:)(v6, v7, v13);

  AvroRecord.set(_:forField:)(v13, 0x6E656D7461657274, 0xEB00000000644974);
  sub_100096480(v13);
  result = Trialpb_TrialExperiment.deploymentID.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  static AvroValue.int(_:)(v14, result);
  AvroRecord.set(_:forField:)(v14, 0x656D796F6C706564, 0xEC0000006449746ELL);
  sub_100096480(v14);
  result = Trialpb_TrialExperiment.compatibilityVersion.getter();
  if ((result & 0x80000000) == 0)
  {
    static AvroValue.int(_:)(v15, result);
    AvroRecord.set(_:forField:)(v15, 0xD000000000000014, 0x80000001001AF510);
    sub_100096480(v15);
    v17 = v10;
    static AvroValue.record(_:)(&v17.schema.type._countAndFlagsBits, v16);
    sub_1000967FC(&v17);
    AvroArray.append(_:)(v16);
    v3 = v16;
    return sub_100096480(v3);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100096D70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100096DB0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100096E10()
{
  v1 = objc_autoreleasePoolPush();
  *(v0 + 16) = 0;

  objc_autoreleasePoolPop(v1);

  sub_10000B218(v0 + 24);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100096E94()
{
  sub_100096E10();

  return _swift_deallocClassInstance(v0, 152, 7);
}

void sub_100096EC8()
{
  v1 = v0;
  if (qword_1002140E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000964C(v2, qword_100232B28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received search performed notification, requesting location if allowed", v5, 2u);
  }

  if (*(v1 + 40))
  {
    swift_unknownObjectRetain();
    sub_100080A24();
    swift_unknownObjectRelease();
  }

  if (*(v1 + 72) && object_getClass(*(v1 + 72)) == _TtC7parsecd13MotionManager)
  {
    swift_unknownObjectRetain();
    sub_1000E5404();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10009716C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1000971A4(v4, v5, a3, v6);
}

uint64_t sub_1000971A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Critbit.Node(0, a3, a3, a4);
  Array.init()();
  if (!a1)
  {
    return sub_1000974C4();
  }

  return a1;
}

uint64_t sub_1000971F8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_10009716C(*v2, v2[1], *(a2 + 16));
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

void sub_10009724C(uint64_t a1, uint64_t a2)
{
  v2 = String.utf8CString.getter();
  sub_100097364(1, v2);
  v6 = v5 >> 1;
  v7 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_8:
    swift_unknownObjectRelease();
    return;
  }

  v8 = v3;
  v9 = v4;
  sub_1000EC9E4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    while (v9 < v6)
    {
      v10 = *(v8 + v9);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1000EC9E4(v11 > 1, v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      *(&_swiftEmptyArrayStorage[4] + v12) = v10;
      if (v6 == ++v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100097364(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a2 + 16);
  result = sub_10008C560(0, (v3 - result) & ~((v3 - result) >> 63), v3);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = result;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (v3 >= v5)
  {
    return a2;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000973D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v4 - 8);
  static String.Encoding.utf8.getter();
  sub_100046184(&qword_100217F20, &qword_1001A5520);
  sub_100097BDC();
  result = String.init<A>(bytes:encoding:)();
  if (v6)
  {
    v7 = a3(result);

    return v7 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000974C4()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1000974EC()
{

  return v0;
}

uint64_t sub_100097514()
{
  v0 = sub_1000974EC();

  return _swift_deallocClassInstance(v0, 42, 7);
}

uint64_t sub_10009755C(uint64_t a1)
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

char *sub_100097600()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_100097680()
{
  v0 = sub_100097600();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100097730()
{
  v0 = sub_1000974EC();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100097778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000977B4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_100097808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_100097870@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  for (i = *v2; ; i = v11)
  {
    v10 = *(i + 16);
    if (!v10)
    {
      break;
    }

    type metadata accessor for Critbit.Node(255, *(a1 + 16), v7, v8);
    type metadata accessor for Array();

    Array.append(_:)();
    v11 = *(v10 + 16);

    *v2 = v11;
  }

  v12 = *(i + 24);
  if (!v12)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v22 = a2;
    v23 = 1;
    return sub_1000051C0(v22, v23, 1, TupleTypeMetadata2);
  }

  v26 = *(v12 + 2);

  static String.Encoding.utf8.getter();
  sub_100046184(&qword_100217F20, &qword_1001A5520);
  sub_100097BDC();
  v25 = String.init<A>(bytes:encoding:)();
  v14 = v13;

  if (v14)
  {
    v18 = *(a1 + 16);
    type metadata accessor for Critbit.Node(255, v18, v16, v17);
    type metadata accessor for Array();
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.popLast()();
    v19 = v26;
    if (!v26)
    {
      v19 = sub_1000974C4();
    }

    *v3 = v19;
    v20 = swift_getTupleTypeMetadata2();
    v21 = *(v20 + 48);
    *a2 = v25;
    a2[1] = v14;
    (*(*(v18 - 8) + 16))(a2 + v21, &v12[*(*v12 + 96)], v18);

    v22 = a2;
    v23 = 0;
    TupleTypeMetadata2 = v20;
    return sub_1000051C0(v22, v23, 1, TupleTypeMetadata2);
  }

  __break(1u);
  return result;
}

uint64_t sub_100097B44(uint64_t a1, uint64_t a2)
{

  return a1;
}

uint64_t sub_100097B7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100097B44(*v1, v1[1]);
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

unint64_t sub_100097BDC()
{
  result = qword_100217F28[0];
  if (!qword_100217F28[0])
  {
    sub_1000461CC(&qword_100217F20, &qword_1001A5520);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100217F28);
  }

  return result;
}

BOOL sub_100097C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 16))
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);

      v12 = sub_1000973D8(v10, v11, a4);

      return v12 & 1;
    }

    return 1;
  }

  v6 = sub_100005ECC(v5);

  if (v6)
  {

    v8 = sub_100005ECC(v7);

    return v8;
  }

  return 0;
}

uint64_t sub_100097D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100097D80(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100097DC0(uint64_t result, int a2, int a3)
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

Swift::Void __swiftcall NSFileManager.createRequiredCacheSubdirectories()()
{
  v0 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v0 - 8);
  sub_10000407C();
  v3 = v1 - v2;
  __chkstk_darwin(v4);
  v6 = &v37 - v5;
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for URL();
  sub_100003650();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000407C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  NSFileManager.parsecdAssetsDirectoryURL.getter();
  if (sub_100008D0C(v9, 1, v10) == 1)
  {
    sub_1000982A0(v9);
    if (qword_1002141B8 != -1)
    {
      sub_100004270(&qword_1002141B8);
    }

    v23 = type metadata accessor for Logger();
    sub_100006674(v23, qword_100232D18);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (sub_100007670(v25))
    {
      v26 = sub_100006640();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "unable to obtain cache assets directory", v26, 2u);
      sub_1000036D4(v26);
    }
  }

  else
  {
    (*(v12 + 32))(v22, v9, v10);
    NSFileManager.createRequiredCohortsSubdirectories(cachesURL:)();
    (*(v12 + 8))(v22, v10);
  }

  NSFileManager.parsecdCustomFBDirectoryURL.getter();
  if (sub_100008D0C(v6, 1, v10) == 1)
  {
    sub_1000982A0(v6);
    if (qword_1002141B8 != -1)
    {
      sub_100004270(&qword_1002141B8);
    }

    v27 = type metadata accessor for Logger();
    sub_100006674(v27, qword_100232D18);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (sub_100007670(v29))
    {
      v30 = sub_100006640();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "unable to obtain cache custom feedback directory", v30, 2u);
      sub_1000036D4(v30);
    }
  }

  else
  {
    (*(v12 + 32))(v19, v6, v10);
    sub_100098A30();
    NSFileManager.createRequiredFLSubdirectories()();
    (*(v12 + 8))(v19, v10);
  }

  NSFileManager.parsecdSessionFBDirectoryURL.getter();
  if (sub_100008D0C(v3, 1, v10) == 1)
  {
    sub_1000982A0(v3);
    if (qword_1002141B8 != -1)
    {
      sub_100004270(&qword_1002141B8);
    }

    v31 = type metadata accessor for Logger();
    sub_100006674(v31, qword_100232D18);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = sub_100006640();
      *v34 = 0;
      sub_10000554C(&_mh_execute_header, v35, v36, "unable to obtain cache session feedback directory");
      sub_1000036D4(v34);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v3, v10);
    _sSo13NSFileManagerC7parsecdE34createRequiredSessionFBDirectories3urly10Foundation3URLV_tF_0(v16);
    (*(v12 + 8))(v16, v10);
  }
}

uint64_t sub_1000982A0(uint64_t a1)
{
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSo13NSFileManagerC7parsecdE34createRequiredSessionFBDirectories3urly10Foundation3URLV_tF_0(uint64_t a1)
{
  v2 = v1;
  URL.path.getter();
  sub_100046184(qword_100217FB0, &unk_10019C2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  *(inited + 64) = &type metadata for Int;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 448;
  type metadata accessor for FileAttributeKey(0);
  sub_100098E68();
  v26 = NSFilePosixPermissions;
  sub_100007FEC();
  Dictionary.init(dictionaryLiteral:)();
  sub_100007FEC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = String._bridgeToObjectiveC()();

  v27 = 0;
  v6 = [v1 setAttributes:isa ofItemAtPath:v5 error:&v27];

  if (v6)
  {
    v7 = v27;
  }

  else
  {
    v9 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  URL._bridgeToObjectiveC()(v8);
  v11 = v10;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_100197F20;
  *(v12 + 64) = &type metadata for Int;
  *(v12 + 32) = v26;
  *(v12 + 40) = 448;
  sub_100007FEC();
  v13 = Dictionary.init(dictionaryLiteral:)();
  v27 = 0;
  v14 = sub_100098EC0(v11, 1, v13, &v27, v2);

  v15 = v27;
  if (v14)
  {

    v16 = v15;
  }

  else
  {
    v17 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1002141B8 != -1)
    {
      sub_100004270(&qword_1002141B8);
    }

    v18 = type metadata accessor for Logger();
    sub_100006674(v18, qword_100232D18);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_100009684(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error making parsecd caches subdir: %s", v21, 0xCu);
      sub_100007378(v22);
      sub_1000036D4(v22);
      sub_1000036D4(v21);
    }

    else
    {
    }
  }
}

uint64_t NSFileManager.createRequiredCohortsSubdirectories(cachesURL:)()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_100003650();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003664();
  v8 = v7 - v6;
  URL.appendingPathComponent(_:isDirectory:)();
  _sSo13NSFileManagerC7parsecdE34createRequiredSessionFBDirectories3urly10Foundation3URLV_tF_0(v8);
  sub_100046184(qword_100217FB0, &unk_10019C2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v10;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  type metadata accessor for FileAttributeKey(0);
  sub_100098E68();
  v11 = NSFileProtectionKey;
  v12 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  sub_100007FEC();
  Dictionary.init(dictionaryLiteral:)();
  sub_100007FEC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  URL.path.getter();
  v14 = String._bridgeToObjectiveC()();

  v28 = 0;
  v15 = [v1 setAttributes:isa ofItemAtPath:v14 error:&v28];

  if (v15)
  {
    v16 = *(v4 + 8);
    v17 = v28;
    return v16(v8, v2);
  }

  else
  {
    v19 = v28;
    sub_1000058BC();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1002141B8 != -1)
    {
      sub_100004270(&qword_1002141B8);
    }

    v20 = type metadata accessor for Logger();
    sub_100006674(v20, qword_100232D18);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_100009684(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "error setting protection key: %s", v23, 0xCu);
      sub_100007378(v24);
      sub_1000036D4(v24);
      sub_1000036D4(v23);
    }

    else
    {
    }

    return (*(v4 + 8))(v8, v2);
  }
}

uint64_t sub_100098A30()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = static _CPKnownFeedbackType.allCustomFeedbackDirectories.getter();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 5;
    do
    {

      URL.appendingPathComponent(_:isDirectory:)();

      _sSo13NSFileManagerC7parsecdE34createRequiredSessionFBDirectories3urly10Foundation3URLV_tF_0(v3);
      (*(v1 + 8))(v3, v0);
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall NSFileManager.createRequiredFLSubdirectories()()
{
  v0 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for URL();
  sub_100003650();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003664();
  v9 = v8 - v7;
  NSFileManager.feedbackLoggerCacheDirectoryURL.getter(v2);
  if (sub_100008D0C(v2, 1, v3) == 1)
  {
    sub_1000982A0(v2);
  }

  else
  {
    (*(v5 + 32))(v9, v2, v3);
    _sSo13NSFileManagerC7parsecdE34createRequiredSessionFBDirectories3urly10Foundation3URLV_tF_0(v9);
    (*(v5 + 8))(v9, v3);
  }
}

id NSFileManager.saveInCache(file:from:)()
{
  v1 = v0;
  NSFileManager.validateCacheSubdirectories()();
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 fileExistsAtPath:v2];

  URL._bridgeToObjectiveC()(v4);
  if (v3)
  {
    v7 = v5;
    URL._bridgeToObjectiveC()(v6);
    v9 = v8;
    v15 = 0;
    v10 = [v1 replaceItemAtURL:v7 withItemAtURL:v8 backupItemName:0 options:1 resultingItemURL:0 error:&v15];
  }

  else
  {
    v11 = v5;
    URL._bridgeToObjectiveC()(v6);
    v9 = v12;
    v15 = 0;
    v10 = [v1 moveItemAtURL:v11 toURL:v12 error:&v15];
  }

  if (v10)
  {
    return v15;
  }

  v14 = v15;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

unint64_t sub_100098E68()
{
  result = qword_1002147B0;
  if (!qword_1002147B0)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002147B0);
  }

  return result;
}

id sub_100098EC0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for FileAttributeKey(0);
  sub_100098E68();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [a5 createDirectoryAtURL:a1 withIntermediateDirectories:a2 & 1 attributes:isa error:a4];

  return v10;
}

uint64_t sub_100098FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for UInt);
}

uint64_t sub_10009904C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for UInt);
}

uint64_t sub_1000990B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for UInt);
}

uint64_t sub_100099128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for UInt);
}

BOOL sub_100099198@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100098FCC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009920C()
{
  v0 = sub_1000FC0D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

_BYTE *sub_100099280(_BYTE *result, int a2, int a3)
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

uint64_t sub_100099334(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000993B0(char a1)
{
  type metadata accessor for Lock();
  sub_1000068B4();
  swift_allocObject();
  *(v1 + 16) = Lock.init()();
  *(v1 + 24) = a1;
  return v1;
}

void *sub_100099400()
{
  sub_1000A52C4();
  sub_1000068B4();
  swift_allocObject();
  v0[2] = Lock.init()();
  sub_1000A4E88(v1, v0 + *(*v0 + 96), &qword_100217480, &unk_100198F70);
  return v0;
}

char *sub_100099470()
{
  sub_1000A52C4();
  sub_1000068B4();
  swift_allocObject();
  *(v0 + 2) = Lock.init()();
  v2 = *(*v0 + 96);
  type metadata accessor for Client();
  sub_1000036B8();
  (*(v3 + 32))(&v0[v2], v1);
  return v0;
}

uint64_t sub_1000994F8()
{

  v0 = sub_10000FB34();

  return v0;
}

void sub_10009953C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_1002140C0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000964C(v9, qword_100232AB0);
    v10 = a2;
    v11 = v8;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v14 = 136315394;
      (*(v4 + 16))(v6, v11 + OBJC_IVAR____TtC7parsecd16ClientConnection_connectionID, v3);
      sub_1000075C4(&unk_1002181A0, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v4 + 8))(v6, v3);
      v18 = sub_100009684(v15, v17, &v21);

      *(v14 + 4) = v18;
      *(v14 + 12) = 1024;
      LODWORD(v18) = [v10 processIdentifier];

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "timing out idle xpc transaction: %s from %d", v14, 0x12u);
      sub_100007378(v20);
    }

    else
    {
    }

    sub_100099818();
  }
}

void sub_100099818()
{
  sub_100005478();
  v3 = v0;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003664();
  v37 = v9 - v8;
  sub_1000058D8();
  v38 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v36 = v10;
  __chkstk_darwin(v11);
  sub_100003664();
  sub_10000FEE8();
  v12 = type metadata accessor for DispatchTimeInterval();
  sub_100003650();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100003664();
  sub_100007884();
  v16 = type metadata accessor for DispatchTime();
  sub_100003650();
  v35 = v17;
  __chkstk_darwin(v18);
  sub_10000407C();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v32 - v23;
  if ((*(v3 + OBJC_IVAR____TtC7parsecd16ClientConnection_isActiveListener) & 1) == 0 && sub_1000101C8(*(*(v3 + OBJC_IVAR____TtC7parsecd16ClientConnection_transactionOpen) + 16), *(v3 + OBJC_IVAR____TtC7parsecd16ClientConnection_transactionOpen)))
  {
    v33 = v6;
    v34 = v4;
    v25 = sub_1000994F8();
    if (v25)
    {
      if (*(*(v25 + 64) + 32))
      {

        sub_1000F0A9C();
      }
    }

    v32 = *(v3 + OBJC_IVAR____TtC7parsecd16ClientConnection_backgroundQueue);
    static DispatchTime.now()();
    *v2 = 60;
    (*(v14 + 104))(v2, enum case for DispatchTimeInterval.seconds(_:), v12);
    + infix(_:_:)();
    (*(v14 + 8))(v2, v12);
    v35 = *(v35 + 8);
    (v35)(v21, v16);
    sub_1000068B4();
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40[4] = sub_1000A4260;
    v40[5] = v26;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 1107296256;
    v40[2] = sub_10000D50C;
    v40[3] = &unk_1001F9EB8;
    v27 = _Block_copy(v40);

    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_10000EBB4();
    sub_1000075C4(v28, v29);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_10000CB0C();
    v30 = v37;
    v31 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v27);
    (*(v33 + 8))(v30, v31);
    (*(v36 + 8))(v1, v38);
    (v35)(v24, v16);
  }

  sub_100005460();
}

id sub_100099C7C()
{
  ObjectType = swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if (sub_1000101C8(*(*&v0[OBJC_IVAR____TtC7parsecd16ClientConnection_transactionOpen] + 16), *&v0[OBJC_IVAR____TtC7parsecd16ClientConnection_transactionOpen]))
  {
    v2 = sub_1000994F8();
    if (v2)
    {
      if (*(*(v2 + 64) + 32))
      {

        sub_1000F0A9C();
      }
    }
  }

  sub_100016BF0(0);
  sub_100099D60();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100099D60()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7parsecd16ClientConnection_cancellableLock) + 16);
  os_unfair_lock_lock(v1);
  sub_10009A170(v0);

  os_unfair_lock_unlock(v1);
}

void sub_100099EF4()
{
  sub_100007A1C();
  v1 = *(*(v0 + OBJC_IVAR____TtC7parsecd16ClientConnection_cancellableLock) + 16);
  os_unfair_lock_lock(v1);
  v2 = OBJC_IVAR____TtC7parsecd16ClientConnection_cancellables;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v2);
  v3 = sub_10000F18C();
  sub_1000BDB4C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, vars0, vars8);
  *(v0 + v2) = v12;
  swift_endAccess();
  os_unfair_lock_unlock(v1);
}

uint64_t sub_100099FFC@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = OBJC_IVAR____TtC7parsecd16ClientConnection_cancellables;
  swift_beginAccess();
  v6 = sub_1000BB930();
  v7 = 0;
  if (v8)
  {
    v9 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a1 + v5);
    v11 = v15[3];
    sub_100046184(&qword_100218238, &qword_10019C650);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
    v12 = v15[6];
    v13 = type metadata accessor for CancellableStoreKey(0);
    sub_10001E64C(v12 + *(*(v13 - 8) + 72) * v9, type metadata accessor for CancellableStoreKey);
    v7 = *(v15[7] + 8 * v9);
    type metadata accessor for AnyCancellable();
    sub_1000075C4(&qword_100218180, type metadata accessor for CancellableStoreKey);
    _NativeDictionary._delete(at:)();
    *(a1 + v5) = v15;
  }

  *a3 = v7;
  return swift_endAccess();
}

void sub_10009A170(uint64_t a1)
{
  v2 = sub_100046184(&qword_100218248, &unk_10019C680);
  __chkstk_darwin(v2);
  v4 = &v17 - v3;
  v5 = OBJC_IVAR____TtC7parsecd16ClientConnection_cancellables;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v6 + 48);
    v16 = type metadata accessor for CancellableStoreKey(0);
    sub_1000A5150(v15 + *(*(v16 - 8) + 72) * v14, v4);
    *&v4[*(v2 + 48)] = *(*(v6 + 56) + 8 * v14);

    AnyCancellable.cancel()();
    sub_10000B240(v4, &qword_100218248, &unk_10019C680);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10009A33C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_100042344(*(*(Strong + OBJC_IVAR____TtC7parsecd16ClientConnection_transactionOpen) + 16)))
    {
      if (qword_1002140C0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000964C(v3, qword_100232AB0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Timed out client reconnected, leaving connection intact.", v6, 2u);
      }
    }

    else
    {

      sub_10000B6E0();

      if (qword_1002140C0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000964C(v7, qword_100232AB0);
      v4 = v2;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 67109120;
        *(v10 + 4) = [*(&v4->isa + OBJC_IVAR____TtC7parsecd16ClientConnection_connection) processIdentifier];

        _os_log_impl(&_mh_execute_header, v8, v9, "Invalidating inactive connection from pid %d", v10, 8u);
      }

      else
      {

        v8 = v4;
      }

      [*(&v4->isa + OBJC_IVAR____TtC7parsecd16ClientConnection_connection) invalidate];
    }
  }
}

void sub_10009A594()
{
  v2 = v0;
  sub_10000899C();
  v3 = type metadata accessor for UserAgent();
  sub_100003650();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003664();
  v9 = v8 - v7;
  v10 = sub_100046184(&qword_100217480, &unk_100198F70);
  v11 = sub_100005490(v10);
  __chkstk_darwin(v11);
  sub_10000FEE8();
  if (v0[OBJC_IVAR____TtC7parsecd16ClientConnection_parClientRequiresStateChangeNotifications] != 1)
  {
    return;
  }

  v12 = sub_1000A4804(v0);
  if (!v12)
  {
    v27 = 0u;
    v28 = 0u;
    goto LABEL_9;
  }

  v13 = v12;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100034150(v13, &v27);

  sub_10003430C(&v26);
  if (!*(&v28 + 1))
  {
LABEL_9:
    v15 = &qword_1002181D0;
    v16 = &qword_100198E00;
    v17 = &v27;
    goto LABEL_10;
  }

  sub_100005180(0, &qword_100218240, PARBag_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v14 = v26;
  if (!sub_1000994F8())
  {

    return;
  }

  sub_10001184C();
  if (sub_100008D0C(v1, 1, v3))
  {

    v15 = &qword_100217480;
    v16 = &unk_100198F70;
    v17 = v1;
LABEL_10:
    sub_10000B240(v17, v15, v16);
    return;
  }

  (*(v5 + 16))(v9, v1, v3);
  sub_10000B240(v1, &qword_100217480, &unk_100198F70);
  v18 = UserAgent.fullString.getter();
  v20 = v19;
  v21 = sub_10000F18C();
  v22(v21);
  objc_allocWithZone(PARBag);
  v23 = v14;
  v24 = sub_100015C68(v23, v18, v20);
  v25 = *&v2[OBJC_IVAR____TtC7parsecd16ClientConnection_remoteObject];
  if (v25)
  {
    [v25 bagDidLoad:v24 error:0];
  }

  else
  {
  }
}

void sub_10009A8EC(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC7parsecd16ClientConnection_parClientRequiresStateChangeNotifications) != 1)
  {
    return;
  }

  v2 = sub_1000A4804(a1);
  if (!v2)
  {
    v19 = 0u;
    v20 = 0u;
    goto LABEL_14;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100034150(v3, &v19);

  v4 = sub_10003430C(v18);
  if (!*(&v20 + 1))
  {
LABEL_14:
    sub_10000B240(&v19, &qword_1002181D0, &qword_100198E00);
    return;
  }

  if (sub_1000A5330(v4, v5, v6, &type metadata for String))
  {
    v8 = v18[0];
    v7 = v18[1];
    v9 = *(v1 + OBJC_IVAR____TtC7parsecd16ClientConnection_remoteObject);
    if (v9)
    {
      sub_100005854();
      v10 = String._bridgeToObjectiveC()();
      [v9 didDownloadResource:v10];
    }

    if (v8 == 0xD00000000000001BLL && 0x80000001001AFAF0 == v7)
    {

LABEL_17:
      sub_100005180(0, &qword_100217408, NSXPCConnection_ptr);
      v13 = sub_10000CC24(0xD000000000000014, 0x80000001001AE470, 0);
      v14 = objc_allocWithZone(type metadata accessor for FlusherClient());
      v15 = FlusherClient.init(connection:)(v13);
      v16 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
      v17(v16);

      return;
    }

    sub_100005854();
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_17;
    }
  }
}

void sub_10009AB58(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC7parsecd16ClientConnection_parClientRequiresStateChangeNotifications) != 1)
  {
    return;
  }

  v3 = sub_1000A4804(a1);
  if (!v3)
  {
    v10 = 0u;
    v11 = 0u;
    goto LABEL_8;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100034150(v4, &v10);

  v5 = sub_10003430C(&v9);
  if (!*(&v11 + 1))
  {
LABEL_8:
    sub_10000B240(&v10, &qword_1002181D0, &qword_100198E00);
    return;
  }

  if (sub_1000A5330(v5, v6, v7, &type metadata for String))
  {
    v8 = *(v1 + OBJC_IVAR____TtC7parsecd16ClientConnection_remoteObject);
    if (v8)
    {
      String._bridgeToObjectiveC()();
      sub_100007818();

      [v8 didDeleteResource:v2];
    }

    else
    {
    }
  }
}

void sub_10009ACEC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  BagTask = type metadata accessor for ForceFetchBagTask(0);
  __chkstk_darwin(BagTask);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100046184(&qword_100217480, &unk_100198F70);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for UserAgent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  _Block_copy(a3);
  v16 = sub_10000B730(a1, 1);
  if (v16 >= 2)
  {
    sub_10001184C();
    if (sub_100008D0C(v10, 1, v11) == 1)
    {
      sub_100016250(v16);
      sub_10000B240(v10, &qword_100217480, &unk_100198F70);
      goto LABEL_5;
    }

    (*(v12 + 32))(v14, v10, v11);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      (*(v12 + 16))(v7 + *(BagTask + 20), v14, v11);
      *v7 = v16;
      v17 = (v7 + *(BagTask + 24));
      *v17 = sub_100013438;
      v17[1] = v15;

      sub_10009AFDC();
      sub_10001E64C(v7, type metadata accessor for ForceFetchBagTask);
      (*(v12 + 8))(v14, v11);
      goto LABEL_6;
    }

    (*(v12 + 8))(v14, v11);
  }

  sub_100016250(v16);
LABEL_5:
  a3[2](a3, 0, 0);
LABEL_6:

  _Block_release(a3);
}

uint64_t sub_10009AFDC()
{
  BagTask = type metadata accessor for ForceFetchBagTask(0);
  v2 = *(BagTask - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(BagTask - 8);
  v4 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_1000051C0(v6, 1, 1, v7);
  sub_1000A5150(v0, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1000A4EFC(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_1000A38EC(0, 0, v6, &unk_10019C660, v9);
}

uint64_t sub_10009B1FC(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_1000158AC();
  v3 = sub_10000899C();
  sub_100015914(v3, 0);
  v4 = sub_100016D34();
  swift_unknownObjectRelease();
  if (v4)
  {
    if ([v4 engagementCardGrpcDisabled])
    {
      goto LABEL_16;
    }

    v5 = [a1 queryCommand];
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = v5;
    objc_opt_self();
    sub_1000042D0();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 drilldownMetadata];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 jsonData];
        goto LABEL_8;
      }
    }

    else
    {
      objc_opt_self();
      sub_1000042D0();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = [v16 card];
        if (v17)
        {
          v18 = v17;
          v9 = [v17 drilldownMetadata];

          if (v9)
          {
            v10 = [v9 jsonData];
LABEL_8:
            v11 = v10;

            if (v11)
            {
              v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v14 = v13;

              sub_100014A40(v12, v14);
              return 1;
            }
          }
        }
      }
    }

LABEL_16:
  }

  return 0;
}

void sub_10009B394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _convertErrorToNSError(_:)();
  }

  v3 = sub_10000BE80();
  v6 = v4;
  v5(v3);
}

void sub_10009B410()
{
  sub_100005478();
  v2 = v1;
  v40 = v3;
  v41 = v4;
  type metadata accessor for SessionLookupKey(0);
  sub_1000036B8();
  __chkstk_darwin(v5);
  sub_100003664();
  v8 = v7 - v6;
  v9 = type metadata accessor for Requestor();
  sub_100003650();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100003664();
  sub_10000FEE8();
  v13 = type metadata accessor for Client();
  v14 = sub_100005490(v13);
  __chkstk_darwin(v14);
  sub_100003664();
  v15 = type metadata accessor for UserAgent();
  sub_100003650();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100003664();
  v21 = v20 - v19;

  Client.init(_:)();
  (*(v11 + 104))(v0, enum case for Requestor.parsecd(_:), v9);
  UserAgent.init(_:requestor:)();
  if (swift_unknownObjectWeakLoadStrong() && ((*(v17 + 16))(v8, v21, v15), swift_storeEnumTagMultiPayload(), sub_100086FBC(v8), sub_1000A527C(), swift_unknownObjectRelease(), sub_10001E64C(v8, type metadata accessor for SessionLookupKey), v2))
  {
    v22 = objc_allocWithZone(_CPFeedbackPayload);
    sub_100014924(v40, v41);
    v23 = sub_1000149C0(v40, v41);
    if (v23)
    {
      v24 = v23;
      sub_10000BE80();
      sub_100014D74();

LABEL_15:
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    if (qword_1002140A0 != -1)
    {
      sub_100003878(&qword_1002140A0);
    }

    v33 = type metadata accessor for Logger();
    sub_100006674(v33, qword_100232A50);

    v26 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v26, v34))
    {

      goto LABEL_15;
    }

    v35 = sub_100007800();
    v43 = sub_100007B80();
    *(v35 + 4) = sub_1000A5350(4.8149e-34);
    sub_1000A5304();
    _os_log_impl(v36, v37, v38, v39, v35, 0xCu);
    sub_100007378(v43);
    sub_1000036D4(v43);
    sub_1000036D4(v35);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002140C0 != -1)
    {
      sub_1000037E4(&qword_1002140C0);
    }

    v25 = type metadata accessor for Logger();
    sub_100006674(v25, qword_100232AB0);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = sub_100007800();
      v42 = sub_100007B80();
      *(v28 + 4) = sub_1000A5350(4.8149e-34);
      sub_1000A5304();
      _os_log_impl(v29, v30, v31, v32, v28, 0xCu);
      sub_100007378(v42);
      sub_1000036D4(v42);
      sub_1000036D4(v28);
    }
  }

LABEL_16:
  (*(v17 + 8))(v21, v15);
  sub_100005460();
}

uint64_t sub_10009B930(uint64_t a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
  result = sub_10000BBB4(a1, v10);
  if (*(v3 + 24))
  {
    sub_1000092B4(v3, v7);
    v5 = v8;
    v6 = v9;
    sub_100007534(v7, v8);
    (*(v6 + 72))(a1, v5, v6);
    return sub_100007378(v7);
  }

  return result;
}

void sub_10009B9C8(void (*a1)(uint64_t))
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1002140A0 != -1)
    {
      sub_100003878(&qword_1002140A0);
    }

    v6 = type metadata accessor for Logger();
    sub_100006674(v6, qword_100232A50);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (sub_100007670(v8))
    {
      v9 = sub_100006640();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "registering new receiving listener", v9, 2u);
      sub_1000036D4(v9);
    }

    *(v2 + OBJC_IVAR____TtC7parsecd16ClientConnection_isActiveListener) = 1;
    *(v5 + 32) = *(v2 + OBJC_IVAR____TtC7parsecd16ClientConnection_remoteObject);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (a1)
    {
      v10 = sub_10002D450();
      a1(v10);
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000960F4();
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    v12 = sub_10001197C(inited, xmmword_100197F20);
    v12[2].n128_u64[0] = v13;
    v12[2].n128_u64[1] = v14;
    sub_1000066DC();
    *(v15 + 72) = &type metadata for String;
    sub_10000FF10(v15, v16);
    Dictionary.init(dictionaryLiteral:)();
    v17 = objc_allocWithZone(NSError);
    v18 = sub_100005584();
    v20 = sub_1000A5370(v18, v19, 99);
    if (qword_1002140A0 != -1)
    {
      sub_100003878(&qword_1002140A0);
    }

    v21 = type metadata accessor for Logger();
    sub_100006674(v21, qword_100232A50);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (sub_100007670(v23))
    {
      v24 = sub_100006640();
      *v24 = 0;
      sub_1000A5304();
      _os_log_impl(v25, v26, v27, v28, v24, 2u);
      sub_1000036D4(v24);
    }

    if (a1)
    {
      sub_10001343C(v20);
      (a1)();
    }

    else
    {
    }
  }
}

void sub_10009BD00(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_10009BD64(void (*a1)(uint64_t))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100086E8C();
    if (a1)
    {
      v2 = sub_10002D450();
      a1(v2);
    }

    swift_unknownObjectRelease();
  }

  else if (a1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000960F4();
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    v4 = sub_10001197C(inited, xmmword_100197F20);
    v4[2].n128_u64[0] = v5;
    v4[2].n128_u64[1] = v6;
    sub_1000066DC();
    *(v7 + 72) = &type metadata for String;
    sub_10000FF10(v7, v8);
    Dictionary.init(dictionaryLiteral:)();
    v9 = objc_allocWithZone(NSError);
    v10 = sub_100005584();
    v12 = sub_1000A5370(v10, v11, 99);
    (a1)();
  }
}

uint64_t sub_10009BF60()
{
  v2 = v0;
  v3 = type metadata accessor for Client();
  sub_100003650();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003664();
  sub_10000FEE8();
  result = sub_1000994F8();
  if (result)
  {
    sub_10001186C(result, v8);
    v9 = Client.type.getter();
    (*(v5 + 8))(v1, v3);
    ClientType.rawValue.getter();
    sub_10000899C();
    if (v9 == ClientType.rawValue.getter())
    {
    }

    sub_1000C0C4C();
    if (*(v2 + OBJC_IVAR____TtC7parsecd16ClientConnection_isActiveListener) != 1)
    {
    }

    else
    {
      if (qword_1002140A0 != -1)
      {
        sub_100003878(&qword_1002140A0);
      }

      v10 = type metadata accessor for Logger();
      sub_100006674(v10, qword_100232A50);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (sub_100007670(v12))
      {
        v13 = sub_100006640();
        sub_1000A5288(v13);
        sub_100023F3C();
        _os_log_impl(v14, v15, v16, v17, v18, 2u);
        sub_10000B084();
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        *(Strong + 32) = 0;
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void (*sub_10009C124(void (*result)()))()
{
  if (result)
  {
    v2 = result;
    v3 = *(*(v1 + OBJC_IVAR____TtC7parsecd16ClientConnection_clientStateManager) + 32);
    os_unfair_lock_lock(v3 + 6);
    sub_10010D1AC();
    os_unfair_lock_unlock(v3 + 6);
    v2();
  }

  return result;
}

void sub_10009C28C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100046184(&qword_1002184F0, &unk_10019C640);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

void sub_10009C310(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = [objc_allocWithZone(NSDictionary) init];
    sub_10001F928();
    sub_1000ABD54();
    v5 = v4;
    swift_unknownObjectRelease();
    if (a3)
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      (a3)(v5, 0, 0);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000960F4();
    v6 = objc_allocWithZone(NSError);
    v7 = sub_100005584();
    sub_1000B184C(v7, v8, 500, 0);
    v9 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
    v11 = v10;
    a3(v9);
  }
}

void sub_10009C5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
LABEL_3:
      v8 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v7.super.isa = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7.super.isa);
}

uint64_t sub_10009C66C(uint64_t a1, void (*a2)(void *, uint64_t))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = [objc_opt_self() defaultManager];
    v5 = sub_1000B241C(a1);
    v6 = 0;
    swift_unknownObjectRelease();

    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = objc_allocWithZone(NSError);
  v10 = sub_10000BE80();
  v6 = sub_1000B184C(v10, v11, 500, 0);
  swift_willThrow();
  v5 = 0;
  if (a2)
  {
LABEL_3:
    v7 = sub_10001343C(v6);
    a2(v5, v7);
  }

LABEL_4:
}

uint64_t sub_10009C868()
{
  sub_100007A1C();
  result = sub_1000994F8();
  if (result)
  {
    v1 = result + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
    sub_10000BBB4(result, v5);
    if (*(v1 + 24))
    {
      sub_1000092B4(v1, v4);
      sub_100007534(v4, v4[3]);
      sub_1000385C4();
      v2 = sub_10000F18C();
      v3(v2);

      return sub_100007378(v4);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10009CA5C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100007A1C();
  result = sub_1000994F8();
  if (result)
  {
    v5 = result + OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
    sub_10000BBB4(result, v9);
    if (*(v5 + 24))
    {
      sub_1000092B4(v5, v8);
      sub_100007534(v8, v8[3]);
      if (a3)
      {
        [a3 intValue];
      }

      v6 = sub_10000F18C();
      v7(v6);

      return sub_100007378(v8);
    }

    else
    {
    }
  }

  return result;
}

void sub_10009CBF8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100214088 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000964C(v1, qword_100232A08);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_100009684(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "ECC: Failed to add engagedResult %s", v4, 0xCu);
      sub_100007378(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_10009CDAC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  sub_10009D04C(a2, &v20);
  if (v21)
  {
    v19 = a4;
    sub_100008C84(&v20, v22);
    v7 = _swiftEmptyArrayStorage;
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    *&v20 = _swiftEmptyArrayStorage;
    v9 = v8[2];

    while (v9)
    {
      if (!v8[2])
      {
        __break(1u);
        return result;
      }

      sub_10000CCA4();
      v11 = sub_1000A52A0();
      sub_100014924(v11, v12);
      sub_1000A52A0();
      result = PAREngagedResult.init(encoded:)();
      if (result)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
        {
          sub_1000066A8(v13);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v20;
      }
    }

    if (sub_10000D57C(v7))
    {
      v14 = v23;
      v15 = v24;
      sub_100007534(v22, v23);
      sub_1000385C4();
      (*(v16 + 48))(v7, a3, v19, v14, v15);
    }

    else
    {

      if (a3)
      {
        (a3)(0);
      }
    }

    return sub_100007378(v22);
  }

  else
  {
    result = sub_10000B240(&v20, &qword_100218208, &qword_10019C620);
    if (a3)
    {
      v17 = sub_1000A453C();
      sub_100004248(&_s5ErrorON, v17);
      *v18 = 1;
      a3();
    }
  }

  return result;
}

double sub_10009D04C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_10000B730(a1, 1);
  v4 = v3;
  if (v3 >= 2)
  {
    v5 = OBJC_IVAR____TtC7parsecd11ClientState_engagedSuggestionController;
    swift_beginAccess();
    sub_10000EFEC(v4 + v5, &v11, &qword_100218208, &qword_10019C620);
    sub_100016250(v4);
    if (v12)
    {
      sub_100008C84(&v11, a2);
      return result;
    }

    sub_10000B240(&v11, &qword_100218208, &qword_10019C620);
  }

  else
  {
    sub_100016250(v3);
  }

  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000964C(v7, qword_100232AB0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "State is not ready", v10, 2u);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_10009D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return sub_100006A70();
}

void sub_10009D2D0()
{
  v1 = v0;
  sub_10009D04C(*(v0 + 120), v0 + 56);
  if (*(v0 + 80))
  {
    sub_100008C84((v0 + 56), v0 + 16);
    if (qword_1002140C0 != -1)
    {
      sub_1000037E4(&qword_1002140C0);
    }

    v2 = type metadata accessor for Logger();
    sub_10000964C(v2, qword_100232AB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (sub_100007670(v4))
    {
      v5 = *(v0 + 112);
      v6 = sub_100007800();
      *v6 = 134217984;
      *(v6 + 4) = v5;
      sub_100023F3C();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
      sub_10000B084();
    }

    v12 = *(v0 + 112);

    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    sub_100007534((v0 + 16), v13);
    if (v12 < 0)
    {
      __break(1u);
    }

    else
    {
      v15 = (*(v14 + 24))(*(v0 + 96), *(v0 + 104), *(v0 + 112), v13, v14);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (sub_100007670(v17))
      {
        v18 = sub_100007800();
        *v18 = 134217984;
        *(v18 + 4) = sub_10000D57C(v15);
        sub_100023F3C();
        _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
        sub_10000B084();
      }

      v24 = sub_10000D57C(v15);
      if (!v24)
      {

        v27 = _swiftEmptyArrayStorage;
LABEL_21:
        sub_100007378((v1 + 16));
        goto LABEL_22;
      }

      v25 = v24;
      sub_1000A52E0(v24);
      if ((v25 & 0x8000000000000000) == 0)
      {
        v40 = v1;
        v26 = 0;
        v27 = v41;
        v28 = v15 & 0xC000000000000001;
        v29 = v15;
        do
        {
          if (v28)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v30 = *(v15 + 8 * v26 + 32);
          }

          v31 = v30;
          v32 = PAREngagedResult.encoded()();
          v34 = v33;

          v36 = v41[2];
          v35 = v41[3];
          if (v36 >= v35 >> 1)
          {
            v38 = sub_1000066A8(v35);
            sub_1000ECA64(v38, v36 + 1, 1);
          }

          ++v26;
          v41[2] = v36 + 1;
          v37 = &v41[2 * v36];
          v37[4] = v32;
          v37[5] = v34;
          v15 = v29;
        }

        while (v25 != v26);

        v1 = v40;
        goto LABEL_21;
      }
    }

    __break(1u);
    return;
  }

  sub_10000B240(v0 + 56, &qword_100218208, &qword_10019C620);
  v27 = 0;
LABEL_22:
  v39 = *(v1 + 8);

  v39(v27);
}

uint64_t sub_10009D658(uint64_t a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[5] = v10;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_10009D74C;

  return sub_10009D2B4(v9, v11, a2, v12);
}

uint64_t sub_10009D74C()
{
  sub_100008964();
  v2 = v1;
  sub_10000A9A4();
  v4 = v3;
  v5 = v3[5];
  v6 = v3[4];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v0;
  sub_100005898();
  *v10 = v9;

  if (v6)
  {
    if (v2)
    {
      Array._bridgeToObjectiveC()();
      sub_100007818();
    }

    else
    {
      v5 = 0;
    }

    v11 = v4[4];
    v12 = sub_10000BE80();
    v13(v12);
    _Block_release(v11);
  }

  else
  {
  }

  sub_1000098BC();

  return v14();
}

uint64_t sub_10009D8F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_1000051C0(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_10019C588;
  v9[5] = v8;
  sub_1000A3DA8(0, 0, v6, &unk_10019C598, v9);
}

void sub_10009DA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_10009D04C(a4, &v28);
  if (v29)
  {
    sub_100008C84(&v28, v30);
    v9 = v31;
    v10 = v32;
    sub_100007534(v30, v31);
    if ((a3 & 0x8000000000000000) == 0)
    {
      v11 = (*(v10 + 32))(a1, a2, a3, v9, v10);
      v12 = v11;
      if (a5)
      {
        v13 = sub_10000D57C(v11);
        if (v13)
        {
          v14 = v13;
          v27 = a5;
          sub_1000A52E0(v13);
          if ((v14 & 0x8000000000000000) == 0)
          {
            v15 = 0;
            v16 = v28;
            do
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v17 = *(v12 + 8 * v15 + 32);
              }

              v18 = v17;
              v19 = PAREngagedResult.encoded()();
              v21 = v20;

              *&v28 = v16;
              v23 = *(v16 + 16);
              v22 = *(v16 + 24);
              if (v23 >= v22 >> 1)
              {
                v25 = sub_1000066A8(v22);
                sub_1000ECA64(v25, v23 + 1, 1);
                v16 = v28;
              }

              ++v15;
              *(v16 + 16) = v23 + 1;
              v24 = v16 + 16 * v23;
              *(v24 + 32) = v19;
              *(v24 + 40) = v21;
            }

            while (v14 != v15);

            v27(v16);
            goto LABEL_18;
          }

LABEL_21:
          __break(1u);
          return;
        }

        a5(_swiftEmptyArrayStorage);
      }

LABEL_18:

      sub_100007378(v30);
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_10000B240(&v28, &qword_100218208, &qword_10019C620);
  if (a5)
  {
    v26 = sub_10002D450();
    a5(v26);
  }
}

void sub_10009DCE4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

void sub_10009DD50(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  sub_10009D04C(a2, &v27);
  if (v28)
  {
    v26 = a4;
    sub_100008C84(&v27, v29);
    v7 = _swiftEmptyArrayStorage;
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    *&v27 = _swiftEmptyArrayStorage;
    v9 = v8[2];

    while (v9)
    {
      if (!v8[2])
      {
        __break(1u);
        return;
      }

      sub_10000CCA4();
      v10 = sub_1000A52A0();
      sub_100014924(v10, v11);
      sub_1000A52A0();
      if (PAREngagedResult.init(encoded:)())
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v12 >> 1)
        {
          sub_1000066A8(v12);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v27;
      }
    }

    if (sub_10000D57C(v7))
    {
      v13 = v30;
      v14 = v31;
      sub_100007534(v29, v30);
      sub_1000385C4();
      (*(v15 + 56))(v7, a3, v26, v13, v14);
    }

    else
    {

      if (a3)
      {
        (a3)(0);
      }
    }

    sub_100007378(v29);
  }

  else
  {
    sub_10000B240(&v27, &qword_100218208, &qword_10019C620);
    if (a3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000960F4();
      sub_100046184(&qword_1002147F0, &qword_1001989D0);
      inited = swift_initStackObject();
      v17 = sub_10001197C(inited, xmmword_100197F20);
      v17[2].n128_u64[0] = v18;
      v17[2].n128_u64[1] = v19;
      sub_1000066DC();
      *(v20 + 72) = &type metadata for String;
      sub_10000FF10(v20, v21);
      Dictionary.init(dictionaryLiteral:)();
      v22 = objc_allocWithZone(NSError);
      v23 = sub_100005584();
      v25 = sub_1000A5370(v23, v24, 500);
      a3();
    }
  }
}

uint64_t sub_10009E0B8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = sub_1000833FC();
    result = swift_unknownObjectRelease();
    if (v1)
    {
      v2 = sub_100005854();
      sub_10005AEE4(v2, v3);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10009E1BC(uint64_t (*a1)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a1)
    {
      sub_1000158AC();
      v3 = _s7SQLiter18SQLiteBaseFunctionC4nameSSSgvpfi_0();
      sub_100015914(v3, v4);
      v5 = sub_100016D34();
      swift_unknownObjectRelease();
      if (v5 && (v6 = [v5 resources], v5, v6))
      {
        v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v7 = 0;
      }

      a1(v7);
      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else if (a1)
  {
    v8 = sub_10002D450();
    return a1(v8);
  }

  return result;
}

void sub_10009E3B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

void sub_10009E430(uint64_t a1, void (**a2)(void, void))
{
  v3 = type metadata accessor for SessionType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = [objc_opt_self() standardUserDefaults];
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v13 = v12;
    (*(v8 + 8))(v10, v7);
    v14 = String._bridgeToObjectiveC()();
    [v11 setDouble:v14 forKey:v13];

    (*(v4 + 104))(v6, enum case for SessionType.safari(_:), v3);
    sub_100007608();
    sub_10010DE04();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
    sub_100086F30(v26);
    v15 = v27;
    v16 = v28;
    sub_100007534(v26, v27);
    (*(v16 + 16))(v15, v16);
    sub_100007378(v26);
    a2[2](a2, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    sub_100046184(&qword_1002147F0, &qword_1001989D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100197F20;
    *(inited + 32) = 0x6E6F73616572;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0x796C626D65737361;
    *(inited + 56) = 0xEF6C696E20736920;
    v21 = Dictionary.init(dictionaryLiteral:)();
    v22 = objc_allocWithZone(NSError);
    v23 = sub_1000B184C(v17, v19, 500, v21);
    v24 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v24);
  }

  _Block_release(a2);
}

uint64_t sub_10009E828(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10009E91C(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void *))
{
  v74 = a4;
  v7 = type metadata accessor for PegasusContext(0);
  __chkstk_darwin(v7 - 8);
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v71 = *(Context - 8);
  v72 = Context;
  __chkstk_darwin(Context);
  v70 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000964C(v11, qword_100232AB0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = ClientType.rawValue.getter();
    *(v14 + 12) = 2048;
    *(v14 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received QueryContext request for %lu, proxy: %lu", v14, 0x16u);
  }

  v15 = ClientType.rawValue.getter();
  v16 = ClientType.rawValue.getter();
  v73 = a2;
  if (v15 == v16 && swift_unknownObjectWeakLoadStrong())
  {
    sub_100037BF4();
    v17 = sub_10007FA24();
    swift_unknownObjectRelease();
    if (v17)
    {
      v18 = objc_opt_self();
      v19 = @"com.apple.parsecd.contextCacheUpdate";
      v20 = [v18 defaultCenter];
      type metadata accessor for NotificationBarrier();
      swift_allocObject();
      v21 = sub_100046750(v19, v20, sub_10009F490, 0);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  v21 = 0;
LABEL_11:
  v22 = a3 + OBJC_IVAR____TtC7parsecd16ClientConnection_assembly;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v23 = [objc_opt_self() defaultCenter];
    [v23 postNotificationName:@"com.apple.parsecd.performedSearch" object:0];
  }

  v24 = *(a3 + OBJC_IVAR____TtC7parsecd16ClientConnection_connection);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 valueForEntitlement:v25];

  if (v26)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
  }

  v79 = v77;
  v80 = v78;
  if (!*(&v78 + 1))
  {
    sub_10000B240(&v79, &qword_1002181D0, &qword_100198E00);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
LABEL_37:

      sub_1000A453C();
      swift_allocError();
      *v43 = 2;
      v44 = _convertErrorToNSError(_:)();
      v45 = v74;
      v74[2](v74, 0, v44);

      goto LABEL_38;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Found no suitable value for application identifier entitlement", v32, 2u);
LABEL_35:

    goto LABEL_37;
  }

  v27 = v76;
  v68 = v75;
  v28 = String._bridgeToObjectiveC()();
  v29 = [v24 valueForEntitlement:v28];

  if (v29)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
  }

  v79 = v77;
  v80 = v78;
  if (!*(&v78 + 1))
  {
    sub_10000B240(&v79, &qword_1002181D0, &qword_100198E00);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v75 & 1) == 0)
  {
LABEL_32:

    v30 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v79 = v39;
      *v38 = 136315138;
      v42 = sub_100009684(v68, v27, &v79);

      *(v38 + 4) = v42;
      v41 = "QueryContext Request denied for unauthorized client %s: missing context entitlement";
      goto LABEL_34;
    }

LABEL_36:

    goto LABEL_37;
  }

  v33 = sub_1000639A0(v68, v27);
  v35 = v34;

  if ((v35 & 1) != 0 || (v36 = ClientType.rawValue.getter(), v36 == ClientType.rawValue.getter()))
  {

    v30 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v79 = v39;
      *v38 = 136315138;
      v40 = sub_100009684(v68, v27, &v79);

      *(v38 + 4) = v40;
      v41 = "Request for QueryContext denied for unrecognized client: %s";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v30, v37, v41, v38, 0xCu);
      sub_100007378(v39);

      goto LABEL_35;
    }

    goto LABEL_36;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v47 = Strong;
    v48 = *(v22 + 8);
    if (v21)
    {

      sub_1000467F4(100);
    }

    v49 = ClientType.rawValue.getter();
    if (v49 == ClientType.rawValue.getter())
    {
      v50 = a1;
    }

    else
    {
      v50 = v33;
    }

    v51 = v69;
    sub_100017190(v69);
    v52 = v70;
    sub_1000F5048(v50, v47, v48, v70);
    sub_10001E64C(v51, type metadata accessor for PegasusContext);
    sub_1000075C4(&qword_1002181F8, &type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    v53 = v72;
    v59 = Message.serializedData(partial:)();
    v61 = v60;
    (*(v71 + 8))(v52, v53);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v79 = v65;
      *v64 = 136315138;
      v66 = sub_100009684(v68, v27, &v79);

      *(v64 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v62, v63, "Sending QueryContext data to %s", v64, 0xCu);
      sub_100007378(v65);
    }

    else
    {
    }

    sub_100014924(v59, v61);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v45 = v74;
    (v74)[2](v74, isa, 0);

    sub_100014A40(v59, v61);
    sub_100014A40(v59, v61);
    swift_unknownObjectRelease();
  }

  else
  {

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Couldn't retain assembly", v56, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    *v57 = 1;
    v58 = _convertErrorToNSError(_:)();
    v45 = v74;
    v74[2](v74, 0, v58);
  }

LABEL_38:
  _Block_release(v45);
}

BOOL sub_10009F490()
{
  v0 = sub_100046184(&qword_100218200, &qword_10019C618);
  __chkstk_darwin(v0 - 8);
  v2 = v15 - v1;
  v3 = type metadata accessor for ContextUpdate(0);
  __chkstk_darwin(v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  v9 = Notification.userInfo.getter();
  if (!v9)
  {
    v17 = 0u;
    v18 = 0u;
    goto LABEL_6;
  }

  v10 = v9;
  v15[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[2] = v11;
  AnyHashable.init<A>(_:)();
  sub_100034150(v10, &v17);

  sub_10003430C(v16);
  if (!*(&v18 + 1))
  {
LABEL_6:
    sub_10000B240(&v17, &qword_1002181D0, &qword_100198E00);
    sub_1000051C0(v2, 1, 1, v3);
    goto LABEL_7;
  }

  v12 = swift_dynamicCast();
  sub_1000051C0(v2, v12 ^ 1u, 1, v3);
  if (sub_100008D0C(v2, 1, v3) == 1)
  {
LABEL_7:
    sub_10000B240(v2, &qword_100218200, &qword_10019C618);
    return 0;
  }

  sub_1000A4EFC(v2, v8);
  sub_1000A4EFC(v8, v5);
  v13 = swift_getEnumCaseMultiPayload() == 2;
  sub_10001E64C(v5, type metadata accessor for ContextUpdate);
  return v13;
}

void sub_10009F76C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

void sub_10009F804(uint64_t a1, void (**a2)(void, void, void))
{
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  _Block_copy(a2);
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000964C(v4, qword_100232AB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received request for Bag data", v7, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC7parsecd16ClientConnection_connection);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 valueForEntitlement:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v32;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v33;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_10000B240(&v36, &qword_1002181D0, &qword_100198E00);
    v12 = 0;
    v13 = 0;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v8 valueForEntitlement:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (!*(&v35 + 1))
  {
    sub_10000B240(&v36, &qword_1002181D0, &qword_100198E00);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v32 & 1) == 0)
  {
LABEL_25:

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v34 = v21;
      *v20 = 136315138;
      *&v36 = v12;
      *(&v36 + 1) = v13;
      sub_100046184(&qword_1002181F0, &qword_10019C610);
      v22 = String.init<A>(describing:)();
      v24 = sub_100009684(v22, v23, &v34);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Bag Data Request denied for unauthorized client %s: missing context entitlement", v20, 0xCu);
      sub_100007378(v21);
    }

    else
    {
    }

    sub_1000A453C();
    swift_allocError();
    v26 = 2;
LABEL_29:
    *v25 = v26;
    v27 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v27);

    goto LABEL_30;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Couldn't retain assembly", v30, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    v26 = 1;
    goto LABEL_29;
  }

  sub_1000158AC();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000A4870;
  *(v16 + 24) = v31;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000A4870;
  *(v17 + 24) = v31;
  swift_retain_n();
  sub_1000FF76C(0, sub_1000A4878, v16, sub_1000A4880, v17);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_30:

  _Block_release(a2);
}

uint64_t sub_10009FD98(void *a1, void (*a2)(uint64_t, unint64_t, uint64_t))
{
  v3 = sub_1000CFC9C(a1);
  if (v4 >> 60 == 15)
  {
    if (qword_1002140C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000964C(v5, qword_100232AB0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Couldn't construct bag data", v8, 2u);
    }

    sub_1000A453C();
    v9 = swift_allocError();
    *v10 = 3;
    a2(0, 0xF000000000000000, v9);
  }

  else
  {
    v12 = v3;
    v13 = v4;
    if (qword_1002140C0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000964C(v14, qword_100232AB0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Sending Bag data", v17, 2u);
    }

    sub_100062FBC(v12, v13);
    a2(v12, v13, 0);
    sub_100014A2C(v12, v13);

    return sub_100014A2C(v12, v13);
  }
}

uint64_t sub_1000A0000(uint64_t a1, void (*a2)(void, unint64_t, uint64_t))
{
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000964C(v3, qword_100232AB0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100009684(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to vend bag: %s", v6, 0xCu);
    sub_100007378(v7);
  }

  sub_1000A453C();
  v11 = swift_allocError();
  *v12 = 1;
  a2(0, 0xF000000000000000, v11);
}

void sub_1000A01D8(uint64_t a1, void (**a2)(void, void, void))
{
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000964C(v4, qword_100232AB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received request for Device Setup State", v7, 2u);
  }

  v8 = *(a1 + OBJC_IVAR____TtC7parsecd16ClientConnection_connection);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 valueForEntitlement:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38 = v36;
  v39 = v37;
  if (*(&v37 + 1))
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v34;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v35;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_10000B240(&v38, &qword_1002181D0, &qword_100198E00);
    v12 = 0;
    v13 = 0;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v8 valueForEntitlement:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38 = v36;
  v39 = v37;
  if (!*(&v37 + 1))
  {
    sub_10000B240(&v38, &qword_1002181D0, &qword_100198E00);
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v34 & 1) == 0)
  {
LABEL_30:

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v36 = v24;
      *v23 = 136315138;
      *&v38 = v12;
      *(&v38 + 1) = v13;
      sub_100046184(&qword_1002181F0, &qword_10019C610);
      v25 = String.init<A>(describing:)();
      v27 = sub_100009684(v25, v26, &v36);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Request for device setup state denied for unauthorized client %s: missing context entitlement", v23, 0xCu);
      sub_100007378(v24);
    }

    else
    {
    }

    sub_1000A453C();
    swift_allocError();
    v29 = 2;
LABEL_34:
    *v28 = v29;
    v30 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v30);

    goto LABEL_35;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Device setup state failed on assembly access", v33, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    v29 = 1;
    goto LABEL_34;
  }

  v16 = sub_10001710C();
  if (v16)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = v16 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "Sending Device Setup State: %{BOOL}d", v20, 8u);
  }

  a2[2](a2, v17, 0);
  swift_unknownObjectRelease();
LABEL_35:
  _Block_release(a2);
}

void sub_1000A0758(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

uint64_t sub_1000A07CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7parsecd16ClientConnection_connection);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (!*(&v30 + 1))
  {
    sub_10000B240(v31, &qword_1002181D0, &qword_100198E00);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_100214128 != -1)
    {
      sub_10000DBF4(&qword_100214128);
    }

    v21 = type metadata accessor for Logger();
    sub_100006674(v21, qword_100232B98);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_100006640();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Found no suitable value for application identifier entitlement", v24, 2u);
      sub_1000036D4(v24);
    }

    return 0;
  }

  v4 = sub_100005854();
  sub_1000639A0(v4, v5);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v25 = ClientType.rawValue.getter();
    if (v25 == ClientType.rawValue.getter() || (v26 = ClientType.rawValue.getter(), v26 == ClientType.rawValue.getter()))
    {

      return 1;
    }
  }

  if (qword_100214128 != -1)
  {
    sub_10000DBF4(&qword_100214128);
  }

  v8 = type metadata accessor for Logger();
  sub_100006674(v8, qword_100232B98);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100007800();
    v12 = sub_100007B80();
    *&v31[0] = v12;
    *v11 = 136315138;
    v13 = sub_100005854();
    sub_100009684(v13, v14, v15);
    sub_100007818();

    *(v11 + 4) = v28;
    sub_100023F3C();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_100007378(v12);
    sub_1000036D4(v12);
    sub_10000B084();
  }

  else
  {
  }

  return 0;
}

void sub_1000A0AB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v11 = type metadata accessor for Client();
  __chkstk_darwin(v11 - 8);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = sub_100004950();
    Client.init(_:)();
    type metadata accessor for ResourceAccessSpan(0);
    swift_allocObject();
    v15 = sub_100004A34(v14, 600, v13, 0, 1);
    if (sub_1000A07CC())
    {
      sub_10008493C();
      sub_100007534(v25, v25[3]);
      sub_10007768C(a1, a2, a3, a4);
      *(v15 + qword_100216C08) = 117;
      sub_10000D684();
      a6[2](a6, 0);
      swift_unknownObjectRelease();

      sub_100007378(v25);
    }

    else
    {
      *(v15 + qword_100216C08) = 43;
      sub_10000D684();
      sub_1000A453C();
      swift_allocError();
      *v22 = 2;
      v23 = _convertErrorToNSError(_:)();
      (a6)[2](a6, v23);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000964C(v16, qword_100232B98);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "APNS subscription failed on assembly access", v19, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    *v20 = 1;
    v21 = _convertErrorToNSError(_:)();
    (a6)[2](a6, v21);
  }

  _Block_release(a6);
}

void sub_1000A0FD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v11 = type metadata accessor for Client();
  __chkstk_darwin(v11 - 8);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = sub_100004950();
    Client.init(_:)();
    type metadata accessor for ResourceAccessSpan(0);
    swift_allocObject();
    v15 = sub_100004A34(v14, 601, v13, 0, 1);
    sub_10008493C();
    sub_100007534(v23, v23[3]);
    sub_100078294(a1, a2, a3, a4);
    a6[2](a6, 0);
    *(v15 + qword_100216C08) = 118;
    sub_10000D684();
    swift_unknownObjectRelease();

    sub_100007378(v23);
    _Block_release(a6);
  }

  else
  {
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000964C(v16, qword_100232B98);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "APNS unsubscribe failed on assembly access", v19, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    *v20 = 1;
    v21 = _convertErrorToNSError(_:)();
    (a6)[2](a6, v21);

    _Block_release(a6);
  }
}

void sub_1000A1334(uint64_t a1, unint64_t a2, const void *a3, unint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v93 = a6;
  v10 = sub_100046184(&qword_1002181C0, &qword_10019C5F8);
  __chkstk_darwin(v10 - 8);
  v88 = &v81 - v11;
  v12 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v89 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100046184(&qword_1002181C8, &unk_10019C600);
  __chkstk_darwin(v16 - 8);
  v18 = &v81 - v17;
  v90 = type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate();
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Client();
  __chkstk_darwin(v20 - 8);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000964C(v32, qword_100232B98);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v93;
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "APNS subscription failed on assembly access", v37, 2u);
    }

    sub_1000A453C();
    swift_allocError();
    *v38 = 1;
    v39 = _convertErrorToNSError(_:)();
    (v36)[2](v36, 0, v39);

    v40 = v36;

    goto LABEL_16;
  }

  v86 = v13;
  v87 = v12;
  v24 = Strong;
  v25 = sub_100004950();
  Client.init(_:)();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v26 = sub_100004A34(v25, 602, v22, 0, 1);
  if ((sub_1000A07CC() & 1) == 0)
  {
    *(v26 + qword_100216C08) = 43;
    sub_10000D684();
    sub_1000A453C();
    swift_allocError();
    *v41 = 2;
    v42 = _convertErrorToNSError(_:)();
    v43 = v93;
    (v93)[2](v93, 0, v42);

    swift_unknownObjectRelease();

LABEL_23:
    v40 = v43;
LABEL_16:
    _Block_release(v40);
    return;
  }

  v85 = v24;
  sub_10008493C();
  sub_100007534(v100, v100[3]);
  v27 = sub_1000784B0();
  if (!v27)
  {
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000964C(v44, qword_100232B98);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *&v96[0] = swift_slowAlloc();
      *v47 = 136315394;
      *(v47 + 4) = sub_100009684(a1, a2, v96);
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_100009684(a3, a4, v96);
      _os_log_impl(&_mh_execute_header, v45, v46, "Did not get message for %s - %s", v47, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000A453C();
    swift_allocError();
    *v48 = 4;
    v49 = _convertErrorToNSError(_:)();
    v43 = v93;
    (v93)[2](v93, 0, v49);

    *(v26 + qword_100216C08) = 119;
    sub_10000D684();

    swift_unknownObjectRelease();
    sub_100007378(v100);
    goto LABEL_23;
  }

  v94 = 0x64616F6C796170;
  v95 = 0xE700000000000000;
  v28 = v27;
  AnyHashable.init<A>(_:)();
  v29 = sub_1000A4804(v28);
  if (!v29)
  {
    _Block_release(v93);
    __break(1u);
LABEL_40:
    _Block_release(a3);
    __break(1u);
    goto LABEL_41;
  }

  sub_100034150(v29, &v98);

  sub_10003430C(v96);
  a3 = v93;
  if (!v99)
  {

    sub_10000B240(&v98, &qword_1002181D0, &qword_100198E00);
    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

LABEL_26:
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000964C(v53, qword_100232B98);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "failed to create FlightStatusUpdate from APNs push", v56, 2u);
    }

    *(v26 + qword_100216C08) = 114;
    sub_10000D684();
    sub_1000A453C();
    swift_allocError();
    *v57 = 5;
    v58 = _convertErrorToNSError(_:)();
    (*(a3 + 2))(a3, 0, v58);
    swift_unknownObjectRelease();

LABEL_31:
    sub_100007378(v100);
    v40 = a3;
    goto LABEL_16;
  }

  v30 = Data.init(base64Encoded:options:)();
  if (v31 >> 60 == 15)
  {

    goto LABEL_9;
  }

  v50 = v30;
  v51 = v31;
  *&v98 = v30;
  *(&v98 + 1) = v31;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  sub_100014924(v30, v31);
  BinaryDecodingOptions.init()();
  sub_1000075C4(&qword_1002181D8, &type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate);
  v52 = v90;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v83 = v50;
  v82 = v51;
  v84 = v26;
  sub_1000051C0(v18, 0, 1, v52);
  (*(v92 + 32))(v91, v18, v52);
  v59 = v89;
  Apple_Parsec_Type_Aps_Messsage_PushMessage.init()();
  sub_1000A4724(v28, &selRef_topic);
  if (!v60)
  {
    goto LABEL_40;
  }

  v61 = v52;
  Apple_Parsec_Type_Aps_Messsage_PushMessage.topic.setter();
  sub_100013354(v28, &selRef_channelID);
  if (v62)
  {

    Apple_Parsec_Type_Aps_Messsage_PushMessage.channel.setter();
    v63 = v88;
    (*(v92 + 16))(v88, v91, v52);
    v64 = enum case for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload.flightStatusUpdate(_:);
    v65 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload();
    (*(*(v65 - 8) + 104))(v63, v64, v65);
    sub_1000051C0(v63, 0, 1, v65);
    Apple_Parsec_Type_Aps_Messsage_PushMessage.payload.setter();
    sub_1000075C4(&unk_1002181E0, &type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage);
    v66 = Message.serializedData(partial:)();
    v68 = v67;
    if (qword_100214128 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_10000964C(v69, qword_100232B98);
    sub_100014924(v66, v68);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    sub_100014A40(v66, v68);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v96[0] = v73;
      *v72 = 136642819;
      sub_100014924(v66, v68);
      v74 = v28;
      v75 = Data.description.getter();
      v77 = v76;
      sub_100014A40(v66, v68);
      v78 = sub_100009684(v75, v77, v96);

      *(v72 + 4) = v78;
      v28 = v74;
      v61 = v90;
      v59 = v89;
      _os_log_impl(&_mh_execute_header, v70, v71, "forwarding push message to client %{sensitive}s", v72, 0xCu);
      sub_100007378(v73);
    }

    v79 = v83;
    sub_100014924(v66, v68);
    isa = Data._bridgeToObjectiveC()().super.isa;
    (*(a3 + 2))(a3, isa, 0);

    sub_100014A40(v66, v68);
    sub_1000A22E0();
    swift_unknownObjectRelease();

    sub_100014A40(v66, v68);
    sub_100014A2C(v79, v82);

    (*(v86 + 8))(v59, v87);
    (*(v92 + 8))(v91, v61);
    goto LABEL_31;
  }

LABEL_41:
  _Block_release(a3);
  __break(1u);
}

uint64_t sub_1000A22E0()
{
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100197F20;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10000512C();
  *(v0 + 32) = 0x73736563637573;
  *(v0 + 40) = 0xE700000000000000;
  sub_10000E384("ActivityResult=%{signpost.description:attribute}s", 49, 2, v0);
}

uint64_t sub_1000A239C(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
}

NSObject *sub_1000A2464(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10008493C();
    swift_unknownObjectRelease();
    sub_10000B240(v17, &qword_1002181B8, &qword_10019C5F0);
    v2 = [a1 channelItem];
    sub_100013354(v2, &selRef_channelIdentifier);
    if (v3)
    {

      sub_100013354(v2, &selRef_pushTopic);
      if (v4)
      {

        v5 = [objc_allocWithZone(PARSubscriptionStatus) init];
        [v5 setIsSubscribed:1];

        return v5;
      }

      if (qword_1002140C0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000964C(v14, qword_100232AB0);
      v5 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v5, v11))
      {
LABEL_19:

        sub_1000A453C();
        swift_allocError();
        *v15 = 3;
        swift_willThrow();

        return v5;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Invalid pushTopic for subscribe command";
    }

    else
    {
      if (qword_1002140C0 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000964C(v10, qword_100232AB0);
      v5 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v5, v11))
      {
        goto LABEL_19;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Invalid ChannelId for subscribe command";
    }

    _os_log_impl(&_mh_execute_header, v5, v11, v13, v12, 2u);

    goto LABEL_19;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_10000B240(v17, &qword_1002181B8, &qword_10019C5F0);
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000964C(v6, qword_100232AB0);
  v7 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, v5, "Cannot create a valid cloud channel connection", v8, 2u);
  }

  sub_1000A453C();
  swift_allocError();
  *v9 = 1;
  swift_willThrow();
  return v5;
}

uint64_t sub_1000A27E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100006A70();
}

void sub_1000A27FC()
{
  sub_100008964();
  if (qword_1002140C0 != -1)
  {
    sub_1000037E4(&qword_1002140C0);
  }

  v2 = type metadata accessor for Logger();
  sub_100006674(v2, qword_100232AB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100006640();
    sub_1000A5288(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Subscribing to channel", v1, 2u);
    sub_10000B084();
  }

  v6 = *(v0 + 16);

  if (v6)
  {
    v7 = *(v0 + 16);
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      sub_1000A2464(v9);

      sub_1000A53A0();

      __asm { BRAA            X2, X16 }
    }
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (sub_100007670(v14))
  {
    v15 = sub_100006640();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Invalid PARSubscriptionChannel type for subscribe command", v15, 2u);
    sub_1000036D4(v15);
  }

  v16 = sub_1000A453C();
  v17 = sub_100004248(&_s5ErrorON, v16);
  sub_1000079FC(v17, v18);
  sub_1000098BC();
  sub_1000A53A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000A29F8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000A5274;

  return sub_1000A27E8(a1);
}

void sub_1000A2ACC()
{
  sub_100008964();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = qword_1002140C0;
    v3 = v1;
    if (v2 != -1)
    {
      sub_1000037E4(&qword_1002140C0);
    }

    v4 = type metadata accessor for Logger();
    sub_100006674(v4, qword_100232AB0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (sub_100007670(v6))
    {
      v7 = sub_100006640();
      sub_1000A5288(v7);
      sub_100023F3C();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_10000B084();
    }

    [objc_allocWithZone(PARSubscriptionStatus) init];
    sub_1000A5310();
    sub_1000A53A0();

    __asm { BRAA            X2, X16 }
  }

  v15 = sub_1000A453C();
  v16 = sub_100004248(&_s5ErrorON, v15);
  sub_1000079FC(v16, v17);
  sub_1000098BC();
  sub_1000A53A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000A2C3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000A2CF8;

  return sub_1000A2AB8(a1);
}

uint64_t sub_1000A2CF8()
{
  sub_100008964();
  v2 = v0;
  v4 = v3;
  sub_10000A9A4();
  v6 = v5;
  v7 = v5[4];
  v8 = v5[3];
  v9 = v5[2];
  v10 = *v1;
  sub_100005898();
  *v11 = v10;

  if (v2)
  {
    if (v7)
    {
      v12 = v6[4];
      _convertErrorToNSError(_:)();
      sub_100007818();

      (v12)[2](v12, 0, v6);
      _Block_release(v12);
    }

    else
    {
    }
  }

  else if (v7)
  {
    v13 = v6[4];
    v14 = sub_1000041F8();
    v15(v14);

    _Block_release(v13);
  }

  else
  {
  }

  sub_1000098BC();

  return v16();
}

void sub_1000A2EC8()
{
  sub_100008964();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = qword_1002140C0;
    v3 = v1;
    if (v2 != -1)
    {
      sub_1000037E4(&qword_1002140C0);
    }

    v4 = type metadata accessor for Logger();
    sub_100006674(v4, qword_100232AB0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (sub_100007670(v6))
    {
      v7 = sub_100006640();
      sub_1000A5288(v7);
      sub_100023F3C();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_10000B084();
    }

    [objc_allocWithZone(PARSubscriptionStatus) init];
    sub_1000A5310();
    sub_1000A53A0();

    __asm { BRAA            X2, X16 }
  }

  v15 = sub_1000A453C();
  v16 = sub_100004248(&_s5ErrorON, v15);
  sub_1000079FC(v16, v17);
  sub_1000098BC();
  sub_1000A53A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000A3038(void *a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  v9 = a3;
  v10 = a1;
  v11 = sub_1000041F8();

  return sub_10009D8F4(v11, v12);
}

uint64_t sub_1000A30B8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000A5274;

  return sub_1000A2EB4(a1);
}

uint64_t sub_1000A3174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FF08;

  return sub_1000A3204();
}

uint64_t sub_1000A3204()
{
  v1[2] = v0;
  v2 = type metadata accessor for Client();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for ForceFetchBagTask(0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000A3300, 0, 0);
}

uint64_t sub_1000A3300()
{
  sub_100006EE0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1000A33A8;

  return sub_1000C0DD0();
}

uint64_t sub_1000A33A8()
{
  sub_100007B50();
  sub_10000A9A4();
  *(v2 + 80) = v1;
  *(v2 + 88) = v0;

  if (v0)
  {
    v3 = sub_1000A3834;
  }

  else
  {
    v3 = sub_1000A34B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A34B4()
{
  v41 = v0;
  v1 = *(v0 + 80);
  v2 = sub_100013354(v1, &selRef_version);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v39 = v4;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  if (([v1 feedbackEnabled] & 1) == 0)
  {
    if (qword_1002140A0 != -1)
    {
      sub_100003878(&qword_1002140A0);
    }

    v6 = type metadata accessor for Logger();
    sub_10000964C(v6, qword_100232A50);
    sub_10000C9B4();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 64);
    if (v9)
    {
      v11 = *(v0 + 32);
      v12 = *(v0 + 40);
      v13 = *(v0 + 24);
      v14 = sub_100007800();
      *v14 = 134349056;
      sub_10001186C(v14, v15);
      Client.type.getter();
      (*(v11 + 8))(v12, v13);
      v16 = ClientType.rawValue.getter();
      sub_100008438();
      sub_10001E64C(v10, v17);
      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "feedback collection disabled in bag for client %{public}lu", v14, 0xCu);
      sub_1000036D4(v14);
    }

    else
    {
      sub_100008438();
      sub_10001E64C(v10, v18);
    }
  }

  if (qword_100214090 != -1)
  {
    sub_1000042B0(&qword_100214090);
  }

  v19 = type metadata accessor for Logger();
  sub_10000964C(v19, qword_100232A20);
  sub_10000C9B4();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 56);
  if (v22)
  {
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);
    v38 = *(v0 + 24);
    v26 = swift_slowAlloc();
    v27 = sub_100007B80();
    v40 = v27;
    *v26 = 136315394;
    v28 = sub_100009684(v39, v5, &v40);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2050;
    sub_10001186C(v29, v30);
    Client.type.getter();
    (*(v24 + 8))(v25, v38);
    v31 = ClientType.rawValue.getter();
    sub_100008438();
    sub_10001E64C(v23, v32);
    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "sending bag with version: %s to client: %{public}lu", v26, 0x16u);
    sub_100007378(v27);
    sub_1000036D4(v27);
    sub_1000036D4(v26);
  }

  else
  {
    sub_100008438();
    sub_10001E64C(v23, v33);
  }

  v34 = *(v0 + 80);
  sub_10000CEC8();
  (*v35)(v34, 0);

  sub_1000098BC();

  return v36();
}

uint64_t sub_1000A3834()
{
  sub_100006EE0();
  v2 = *(v1 + 88);
  sub_10000CEC8();
  v4 = *v3;
  swift_errorRetain();
  sub_10001343C(v2);
  sub_100007818();

  v4(0, v0);

  sub_1000098BC();

  return v5();
}