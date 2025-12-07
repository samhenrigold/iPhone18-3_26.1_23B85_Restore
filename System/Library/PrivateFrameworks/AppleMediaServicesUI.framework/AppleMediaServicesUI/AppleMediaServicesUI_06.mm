unint64_t sub_100098A3C()
{
  result = qword_100269EE0;
  if (!qword_100269EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EE0);
  }

  return result;
}

unint64_t sub_100098A90()
{
  result = qword_100269EF0;
  if (!qword_100269EF0)
  {
    sub_10007BC70(&qword_100269EE8, &unk_1001E70D0);
    sub_100098B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EF0);
  }

  return result;
}

unint64_t sub_100098B14()
{
  result = qword_100269EF8;
  if (!qword_100269EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EF8);
  }

  return result;
}

unint64_t sub_100098B68()
{
  result = qword_100269F08;
  if (!qword_100269F08)
  {
    sub_10007BC70(&qword_100269EE8, &unk_1001E70D0);
    sub_100098BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F08);
  }

  return result;
}

unint64_t sub_100098BEC()
{
  result = qword_100269F10;
  if (!qword_100269F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F10);
  }

  return result;
}

uint64_t sub_100098C40(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_1002692D0, &unk_1001E70E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100098CC4()
{
  result = qword_100269F20;
  if (!qword_100269F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AMPBag.AppUniversalLinks.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AMPBag.Definition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100098ED4()
{
  result = qword_100269F30;
  if (!qword_100269F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F30);
  }

  return result;
}

unint64_t sub_100098F2C()
{
  result = qword_100269F38;
  if (!qword_100269F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F38);
  }

  return result;
}

unint64_t sub_100098F84()
{
  result = qword_100269F40;
  if (!qword_100269F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F40);
  }

  return result;
}

unint64_t sub_100098FDC()
{
  result = qword_100269F48;
  if (!qword_100269F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F48);
  }

  return result;
}

unint64_t sub_100099034()
{
  result = qword_100269F50;
  if (!qword_100269F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F50);
  }

  return result;
}

unint64_t sub_10009908C()
{
  result = qword_100269F58;
  if (!qword_100269F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F58);
  }

  return result;
}

void sub_1000990F0(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  [v1 handleInboundURL:v2];
}

unint64_t sub_100099170(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244448, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

id sub_1000991BC(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v7 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34[-1] - v8;
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v10 setAccount:a3];
  [v10 setFailOnDismiss:a2 & 1];
  strcpy(v34, "clientData");
  BYTE3(v34[1]) = 0;
  HIDWORD(v34[1]) = -369098752;
  sub_100002E90();
  sub_100004F48();
  sub_10000E1E8(v35);
  if (*(&v37 + 1))
  {
    v11 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (sub_1000069B0(v11, v12, v13, v11))
    {
      v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_6;
    }
  }

  else
  {
    sub_100002C5C(&v36);
  }

  v14.super.isa = 0;
LABEL_6:
  [v10 setClientData:v14.super.isa];

  strcpy(v34, "metricsOverlay");
  HIBYTE(v34[1]) = -18;
  sub_100002E90();
  sub_100004F48();
  sub_10000E1E8(v35);
  if (*(&v37 + 1))
  {
    v15 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (sub_1000069B0(v15, v16, v17, v15))
    {
      v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      goto LABEL_11;
    }
  }

  else
  {
    sub_100002C5C(&v36);
  }

  v18.super.isa = 0;
LABEL_11:
  [v10 setMetricsOverlay:v18.super.isa];

  v34[0] = 0xD000000000000010;
  v34[1] = 0x80000001001F42E0;
  sub_100002E90();
  sub_100004F48();
  v19 = sub_10000E1E8(v35);
  if (*(&v37 + 1))
  {
    if (sub_1000069B0(v19, v20, v21, &type metadata for Int))
    {
      [v10 setDestinationStyle:v34[0]];
    }
  }

  else
  {
    sub_100002C5C(&v36);
  }

  v34[0] = 7107189;
  v34[1] = 0xE300000000000000;
  sub_100002E90();
  sub_100004F48();

  v22 = sub_10000E1E8(v35);
  if (*(&v37 + 1))
  {
    if (sub_1000069B0(v22, v23, v24, &type metadata for String))
    {
      URL.init(string:)();

      v25 = type metadata accessor for URL();
      v27 = 0;
      if (sub_100009F34(v9, 1, v25) != 1)
      {
        URL._bridgeToObjectiveC()(v26);
        v27 = v28;
        (*(*(v25 - 8) + 8))(v9, v25);
      }

      [v10 setURL:v27];
    }
  }

  else
  {
    sub_100002C5C(&v36);
  }

  v29 = sub_100099650(v10);
  if (!v29)
  {
    v36 = 0u;
    v37 = 0u;
    goto LABEL_27;
  }

  v30 = v29;
  v34[0] = 0x656C797473;
  v34[1] = 0xE500000000000000;
  sub_100002E90();
  sub_10000E0C8(v35, v30, &v36);

  sub_10000E1E8(v35);
  if (!*(&v37 + 1))
  {
LABEL_27:
    sub_100002C5C(&v36);
    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v31 = sub_100099170(v35[0]);
    if (v31 != 6)
    {
      a4 = sub_100050FCC(v31);
    }
  }

LABEL_28:
  [v10 setPresentationStyle:a4];

  return v10;
}

uint64_t sub_100099650(void *a1)
{
  v1 = [a1 clientData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000996BC(uint64_t a1)
{
  sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
  v2 = Promise.__allocating_init()();

  sub_100099764(a1, sub_100099C4C, v2);

  return v2;
}

void sub_100099764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_10009992C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100099934;
  v9[3] = &unk_100246E38;
  v8 = _Block_copy(v9);

  [v3 enqueueWithRequest:a1 completion:v8];
  _Block_release(v8);
}

void sub_100099854(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v6 = a1;
    a3(a1, 0);
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_1000999C0();
      v5 = swift_allocError();
    }

    swift_errorRetain();
    a3(v5, 1);
  }
}

void sub_100099934(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_1000999C0()
{
  result = qword_100269F60;
  if (!qword_100269F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SyncError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for EnqueueError(_BYTE *result, int a2, int a3)
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

unint64_t sub_100099BA0()
{
  result = qword_100269F68;
  if (!qword_100269F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F68);
  }

  return result;
}

unint64_t sub_100099BF8()
{
  result = qword_100269F70;
  if (!qword_100269F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269F70);
  }

  return result;
}

uint64_t sub_100099C58(void *a1)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for Date();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = __chkstk_darwin(v3);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v54 - v6;
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E74B0;
  *(inited + 32) = 0x657669746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [v2 active];
  sub_100002EA8();
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = v8;
  *(inited + 88) = v9;
  v10 = [v2 backingIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(inited + 96) = v11;
  *(inited + 104) = v13;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x47656C6261736964;
  *(inited + 136) = 0xEF676E6970756F72;
  *(inited + 144) = [v2 disableGrouping];
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x80000001001F4360;
  *(inited + 192) = [v2 isExpirationDateHidden];
  *(inited + 216) = &type metadata for Bool;
  strcpy((inited + 224), "displayStyle");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = [v2 displayStyle];
  *(inited + 264) = &type metadata for Int;
  *(inited + 272) = 0x65644970756F7267;
  *(inited + 280) = 0xEF7265696669746ELL;
  v14 = [v2 groupIdentifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(inited + 288) = v15;
  *(inited + 296) = v17;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x696669746E656469;
  *(inited + 328) = 0xEA00000000007265;
  v18 = [v2 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(inited + 336) = v19;
  *(inited + 344) = v21;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0x79654B676F6CLL;
  *(inited + 376) = 0xE600000000000000;
  v22 = [v2 logKey];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(inited + 384) = v23;
  *(inited + 392) = v25;
  *(inited + 408) = &type metadata for String;
  *(inited + 416) = 0x797469726F697270;
  *(inited + 424) = 0xE800000000000000;
  *(inited + 432) = [v2 priority];
  sub_100002EA8();
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = v26 + 5;
  *(inited + 472) = v27;
  *(inited + 480) = [v2 shouldPostNotification];
  *(inited + 504) = &type metadata for Bool;
  *(inited + 512) = 0x6F666E4972657375;
  *(inited + 520) = 0xE800000000000000;
  v28 = [v2 userInfo];
  *(inited + 552) = sub_100002BC0(0, &qword_100269F78, NSMutableDictionary_ptr);
  *(inited + 528) = v28;
  v29 = Dictionary.init(dictionaryLiteral:)();
  v30 = [v2 account];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 ams_DSID];

    if (v32)
    {
      v63 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      *&v62 = v32;
      sub_100002C4C(&v62, v61);
      swift_isUniquelyReferenced_nonNull_native();
      v60 = v29;
      sub_100004F64();
      sub_10000DFC4();
      v29 = v60;
    }
  }

  v33 = [v2 isHardwareOffer];
  v63 = &type metadata for Bool;
  LOBYTE(v62) = v33;
  sub_100002C4C(&v62, v61);
  swift_isUniquelyReferenced_nonNull_native();
  v60 = v29;
  sub_100004F64();
  sub_10000DFC4();
  v34 = v60;
  v35 = [v2 expirationDate];
  if (v35)
  {
    v36 = v35;
    v37 = v55;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = v57;
    v38 = v58;
    v40 = v37;
    v41 = v59;
    (*(v58 + 32))(v57, v40, v59);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v43 = [v56 stringFromDate:isa];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v63 = &type metadata for String;
    *&v62 = v44;
    *(&v62 + 1) = v46;
    sub_100002C4C(&v62, v61);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000B6FC();
    sub_100004F64();
    sub_10000DFC4();
    v34 = v60;
    (*(v38 + 8))(v39, v41);
  }

  v47 = sub_100026484(v2, &selRef_footer);
  if (v48)
  {
    sub_1000069D0(v47, v48);
    sub_10000B6FC();
    sub_100004F64();
    sub_10000DFC4();
    v34 = v60;
  }

  v49 = sub_100026484(v2, &selRef_informativeText);
  if (v50)
  {
    sub_1000069D0(v49, v50);
    sub_10000B6FC();
    sub_100004F64();
    sub_10000DFC4();
    v34 = v60;
  }

  v51 = sub_100026484(v2, &selRef_title);
  if (v52)
  {
    sub_1000069D0(v51, v52);
    sub_10000B6FC();
    sub_100004F64();
    sub_10000DFC4();
    return v60;
  }

  return v34;
}

char *sub_10009A310(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_10009B7C0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(a2 + 8 * i + 32);
      }

      v8 = v7;
      v9 = sub_100099C58(a1);

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10009B7C0((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void sub_10009A444()
{
  sub_100042428();
  v0 = sub_100006A08(0x45534D41u);
  v2 = sub_10002411C(v0, v1 | 0xED00007400000000, 49, 0xE100000000000000);
  v3 = objc_allocWithZone(AMSMetrics);
  sub_100006A08(0x65736D61u);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithContainerID:v4 bag:v2];

  qword_100287778 = v5;
}

void sub_10009A4F0()
{
  sub_10000AE8C();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  if (v3)
  {
    while (1)
    {
      v5 = *v4;

      v1(&v5);
      if (v0)
      {
        break;
      }

      ++v4;
      if (!--v3)
      {
        return;
      }
    }
  }
}

void sub_10009A57C()
{
  sub_10000AE8C();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  if (v3)
  {
    while (1)
    {
      memcpy(__dst, v4, sizeof(__dst));
      memcpy(__src, v4, sizeof(__src));
      sub_10009CFF8(__dst, v5);
      v1(__src);
      if (v0)
      {
        break;
      }

      memcpy(v5, __src, sizeof(v5));
      sub_10009D054(v5);
      v4 += 72;
      if (!--v3)
      {
        return;
      }
    }

    memcpy(v5, __src, sizeof(v5));
    sub_10009D054(v5);
  }
}

uint64_t sub_10009A63C()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v3 = qword_1002878E8;
  type metadata accessor for Debouncer();
  swift_allocObject();
  result = sub_1000C0390(v2, v3, sub_10009A734, 0);
  qword_100287780 = result;
  return result;
}

uint64_t sub_10009A7EC(char a1, void **a2, uint64_t a3, void *a4, unsigned int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v69 = a7;
  v70 = a8;
  v65 = a6;
  v68 = a5;
  v67 = a4;
  v71 = a2;
  v72 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  __chkstk_darwin(v18 - 8);
  v20 = &v52 - v19;
  v21 = type metadata accessor for ScheduleInfo(0);
  __chkstk_darwin(v21);
  v64 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v23 - 8);
  if (a1)
  {
    v58 = v17;
    v59 = v15;
    v60 = v13;
    v61 = v14;
    v62 = v11;
    v63 = v10;
    v57 = a9;
    if (qword_100268718 != -1)
    {
      swift_once();
    }

    v66 = qword_100287878;
    v24 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v25 = *(type metadata accessor for LogInterpolation() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v55 = v24;
    v53 = v27 + 2 * v26;
    v28 = swift_allocObject();
    v52 = xmmword_1001E5F70;
    *(v28 + 16) = xmmword_1001E5F70;
    v54 = v27;
    v29 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 0xD000000000000029;
    v30._object = 0x80000001001F45A0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    v77 = &type metadata for String;
    v32 = v71;
    v31 = v72;
    aBlock = v71;
    v75 = v72;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&aBlock, &qword_10026D350, &qword_1001E6050);
    v33._countAndFlagsBits = 41;
    v33._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
    v56 = v26;
    LogInterpolation.init(stringInterpolation:)();
    v34 = static os_log_type_t.default.getter();
    sub_1000036B0(v34, v28);

    sub_100003CA8(v67, v67[3]);
    sub_1001906AC(v32, v31, v68, v20);
    v41 = sub_100009F34(v20, 1, v21);
    if (v41 == 1)
    {
      sub_10000A00C(v20, &qword_100269F90, &qword_1001E8720);
      v42 = swift_allocObject();
      *(v42 + 16) = v52;
      v43 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v44._countAndFlagsBits = 0xD000000000000040;
      v44._object = 0x80000001001F45D0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
      v77 = &type metadata for String;
      aBlock = v71;
      v75 = v72;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&aBlock, &qword_10026D350, &qword_1001E6050);
      v45._countAndFlagsBits = 41;
      v45._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
      LogInterpolation.init(stringInterpolation:)();
      v46 = static os_log_type_t.error.getter();
      sub_1000036B0(v46, v42);
    }

    else
    {
      v51 = v64;
      sub_100065360(v20, v64, type metadata accessor for ScheduleInfo);
      sub_100003CA8(v65, v65[3]);
      sub_1000E1A18(v51);
      sub_100067514(v51, type metadata accessor for ScheduleInfo);
    }

    v47 = v58;
    sub_1001CF568();
    if (qword_1002687F0 != -1)
    {
      swift_once();
    }

    v78 = sub_10009B164;
    v79 = 0;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100005E50;
    v77 = &unk_100246FD0;
    v48 = _Block_copy(&aBlock);
    static DispatchQoS.unspecified.getter();
    v73 = _swiftEmptyArrayStorage;
    sub_100065204(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
    v49 = v60;
    v50 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);
    (*(v62 + 8))(v49, v50);
    return (*(v59 + 8))(v47, v61);
  }

  else
  {
    if (qword_100268718 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1001E5F70;
    v36 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v37._object = 0x80000001001F4570;
    v37._countAndFlagsBits = 0xD000000000000026;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
    v77 = &type metadata for String;
    aBlock = v71;
    v75 = v72;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&aBlock, &qword_10026D350, &qword_1001E6050);
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
    LogInterpolation.init(stringInterpolation:)();
    v39 = static os_log_type_t.default.getter();
    sub_1000036B0(v39, v35);
  }
}

uint64_t sub_10009B164()
{
  type metadata accessor for ActivityObserver();
  swift_initStaticObject();
  return sub_10004A6E8(1);
}

uint64_t sub_10009B1A0(uint64_t a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100002DEC();
  if (qword_100268718 != -1)
  {
    sub_100019B54(&qword_100268718);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v6 = *(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  v8 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001001F43A0;
  v9._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  v10 = type metadata accessor for ScheduleInfo(0);
  v21 = v10;
  v11 = sub_100017E64(&v20);
  sub_100006280(v11);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v20, &qword_10026D350, &qword_1001E6050);
  sub_100003B48();
  LogInterpolation.init(stringInterpolation:)();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12, v7);

  v13 = sub_10018FA34(a1 + *(v10 + 20));
  if ((*(a1 + *(v10 + 24)) & 1) != 0 || !v13)
  {
    sub_10018FD5C(a1);
    if (qword_1002685F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
    sub_100006070(&qword_100269F80, &unk_10026F890, &unk_1001E74C0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  else
  {
    v14 = swift_allocObject();
    v15 = sub_100009DFC(v14);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 0xD000000000000019;
    v16._object = 0x80000001001F43F0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    v21 = v10;
    v17 = sub_100017E64(&v20);
    sub_100006280(v17);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v20, &qword_10026D350, &qword_1001E6050);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v18 = static os_log_type_t.debug.getter();
    sub_1000036B0(v18, v6);
  }
}

char *sub_10009B700(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009BB84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10009B720()
{
  sub_100004B1C();
  sub_10009C570(v1, v2, v3, v4, v5, v6, v7, sub_1000D6698);
  *v0 = v8;
}

char *sub_10009B7C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009BCD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009B7E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009BDE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10009B800(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009BEE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009B994(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009C260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009B9F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009C370(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009BA18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009C468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009BAD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009C7F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009BB44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009C9FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009BB64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009CB0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10009BB84(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_10026A060, &qword_1001E75E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_10004F7A8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&qword_10026A068, &qword_1001E75E8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10009BCD0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FD0, &qword_1001E7538);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1000D6AC0((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10009BDE0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1000D66E0((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_10009BEE8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10007B9A4(&qword_10026A048, &unk_1001E75C0);
  v10 = *(sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1000D673C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_10009C0B4(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10007B9A4(&qword_100269FD8, &qword_1001EA220);
  v11 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  sub_100002CFC(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v17 = j__malloc_size(v16);
  if (!v13)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v17 - v15 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_23;
  }

  v16[2] = v9;
  v16[3] = 2 * ((v17 - v15) / v13);
LABEL_18:
  sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  sub_100004864();
  if (a1)
  {
    sub_1000D679C(a4 + v19, v9, v16 + v19);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_10009C260(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1000D6AC0((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10009C370(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FA8, &qword_1001E7500);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10006933C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10009C468(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_10026A030, &qword_1001E75A8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1000D6898((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10009C570(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  if (a3)
  {
    sub_100002EBC();
    if (v13 != v14)
    {
      sub_10000AE9C();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10007B9A4(a5, a6);
  v17 = a7(0);
  sub_100002CFC(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  a7(0);
  sub_100004864();
  if (a1)
  {
    a8(a4 + v25, v15, v22 + v25);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10009C718(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_100002EBC();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_10007B9A4(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  sub_10000AE9C();
  if (!v11)
  {
    sub_100004F88();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_10009C7F8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_10026A010, &qword_1001E7588);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1000D6AC0((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&qword_10026A018, &qword_1001E7590);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10009C908(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *), uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_100002EBC();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_10007B9A4(a5, a6);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 32);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_10000AE9C();
  if (!v12)
  {
    sub_100004F88();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_10009C9FC(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FF8, &qword_1001E7568);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1000D6AC0((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&qword_10026A000, qword_1001E7570);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_10009CB0C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10007B9A4(&qword_100269FB0, &qword_1001E7508);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1000D6988((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_10007B9A4(&qword_100271F60, &qword_1001E7510);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009CC24(unsigned __int8 *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-1] - v4;
  v6 = type metadata accessor for ScheduleInfo(0);
  __chkstk_darwin(v6);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = &type metadata for ScheduleDatabase;
  v23[4] = &off_100251628;
  v21 = &type metadata for EngagementScheduleRunner;
  v22 = &off_100249BF8;
  sub_100003CA8(v23, &type metadata for ScheduleDatabase);
  v9 = &a1[*(type metadata accessor for ScheduleInfo.Metadata(0) + 44)];
  v11 = *v9;
  v10 = v9[1];
  sub_1001906AC(*v9, v10, *a1, v5);
  if (sub_100009F34(v5, 1, v6) == 1)
  {
    sub_10000A00C(v5, &qword_100269F90, &qword_1001E8720);
    if (qword_100268718 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F70;
    v13 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._object = 0x80000001001F4520;
    v14._countAndFlagsBits = 0xD000000000000026;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
    v19[3] = &type metadata for String;
    v19[0] = v11;
    v19[1] = v10;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(v19, &qword_10026D350, &qword_1001E6050);
    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    LogInterpolation.init(stringInterpolation:)();
    v16 = static os_log_type_t.error.getter();
    sub_1000036B0(v16, v12);
  }

  else
  {
    sub_100065360(v5, v8, type metadata accessor for ScheduleInfo);
    sub_100003CA8(v20, v21);
    sub_1000E1A18(v8);
    sub_100067514(v8, type metadata accessor for ScheduleInfo);
  }

  sub_100002C00(v23);
  return sub_100002C00(v20);
}

__n128 sub_10009D128(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10009D13C(uint64_t a1, int a2)
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

uint64_t sub_10009D17C(uint64_t result, int a2, int a3)
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

_BYTE *sub_10009D1D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppDefaults.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10009D338(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10009D454(char a1)
{
  result = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      result = 0x6C616E7265746E69;
      break;
    case 2:
      result = 0x7379656E72756F6ALL;
      break;
    case 3:
      result = 0x6E656D6D6F636572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009D50C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000116D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009D53C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009D454(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10009D578(char a1)
{
  if (!a1)
  {
    return 0x65756575716E65;
  }

  if (a1 == 1)
  {
    return 0x696577746867696CLL;
  }

  return 1668184435;
}

unint64_t sub_10009D5F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004EF8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009D628@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009D578(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009D658()
{
  result = qword_10026A098;
  if (!qword_10026A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A098);
  }

  return result;
}

NSString sub_10009D6AC()
{
  switch(*(v0 + 1))
  {
    case 1:
      result = sub_10000BD6C();
      break;
    case 2:
    case 3:
      result = String._bridgeToObjectiveC()();
      break;
    default:
      result = sub_10000B720();
      break;
  }

  return result;
}

NSString sub_10009D750()
{
  switch(*(v0 + 1))
  {
    case 1:
    case 3:
      result = String._bridgeToObjectiveC()();
      break;
    case 2:
      result = sub_10000BD6C();
      break;
    default:
      result = sub_10000B720();
      break;
  }

  return result;
}

id sub_10009D7EC()
{
  sub_100042428();
  result = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  qword_10026A070 = result;
  return result;
}

id sub_10009D848()
{
  if (qword_1002685E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100287778;
  qword_10026A078 = qword_100287778;

  return v1;
}

uint64_t sub_10009D8AC(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10009D914()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = sub_1000AE380();

  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connectionsLock];
    v3 = v1;
    [v2 lock];
    v4 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connections;
    swift_beginAccess();
    v5 = *&v3[v4];

    [v2 unlock];
    v20 = v3;

    v6 = sub_100049574(v5);
    v7 = 0;
    v21 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v6 == v7)
      {

        sub_10009DE78(v21);

        return;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 processIdentifier];
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      *(v12 + 24) = v11;
      v26 = sub_10009E25C;
      v27 = v12;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v24 = sub_1000266E0;
      v25 = &unk_1002471F8;
      v13 = _Block_copy(&aBlock);

      v14 = [v9 remoteObjectProxyWithErrorHandler:v13];
      _Block_release(v13);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      sub_100002C4C(&v28, &aBlock);
      sub_10007B9A4(&qword_10026A288, &qword_1001E7868);
      if (swift_dynamicCast())
      {
        v15 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000D4CFC();
          v15 = v18;
        }

        v16 = v15[2];
        if (v16 >= v15[3] >> 1)
        {
          sub_1000D4CFC();
          v15 = v19;
        }

        v15[2] = v16 + 1;
        v21 = v15;
        v17 = &v15[2 * v16];
        *(v17 + 8) = v11;
        v17[5] = v22;
        v7 = v10;
      }

      else
      {
        ++v7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    sub_10007B9A4(&qword_10026A288, &qword_1001E7868);

    Dictionary.init(dictionaryLiteral:)();
  }
}

uint64_t sub_10009DCA8(uint64_t a1, uint64_t a2, int a3)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F60;
  v11 = type metadata accessor for AppConnection();
  v10[0] = a2;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v10);
  LogInterpolation.init(stringLiteral:)();
  v11 = &type metadata for Int32;
  LODWORD(v10[0]) = a3;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v10);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8, v5);
}

void *sub_10009DE78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007B9A4(&qword_10026A290, &qword_1001F1E00);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_10009DF94(v2, 1, &v4);

  return v4;
}

uint64_t sub_10009DF60()
{
  sub_10009DF38();

  return swift_deallocClassInstance();
}

uint64_t sub_10009DF94(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v27 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *i;
    v7 = *(i - 2);
    v9 = *a3;
    v10 = sub_1000AABA0(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];
    swift_unknownObjectRetain();
    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10007B9A4(&qword_10026A298, &unk_1001E7870);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v20[6] + 4 * v15) = v7;
    *(v20[7] + 8 * v15) = v8;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v20[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_1001C65AC();
  v18 = sub_1000AABA0(v7);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v15 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x80000001001F47E0;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10009E268(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(18);

  sub_100004B44();
  v11[8] = 0xD000000000000013;
  v12 = v5;
  String.append(_:)(*(v2 + 24));
  v6._countAndFlagsBits = 59;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = v12;
  v8 = *(v2 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[2] = v8;
  v11[3] = 0xD000000000000013;
  v11[4] = v7;
  v11[5] = _swiftEmptyArrayStorage;
  v11[6] = sub_1000A08F4;
  v11[7] = v9;

  sub_100014A20(sub_10001D7C8, v11);
}

uint64_t sub_10009E38C(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for ContentInfo(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A420(&v10);
  if (!v2)
  {
    v7 = *(&v10 + 1);
    if (*(&v10 + 1) >> 60 != 15)
    {
      v8 = v10;
      sub_10003A638(6, &v10);
      if (v11)
      {
        sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        if (swift_dynamicCast())
        {
          sub_1000B14D4(v6, v12);
          a2(v6);
          sub_1000A0914(v6);
          sub_10003AE18(v8, v7);
          return 1;
        }

        sub_10003AE18(v8, v7);
      }

      else
      {
        sub_10003AE18(v8, v7);
        sub_100002C5C(&v10);
      }
    }

    sub_1000A078C();
    swift_allocError();
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_10009E544(uint64_t a1, uint64_t a2)
{
  *v129 = 0;
  v130 = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  v5._countAndFlagsBits = 0x205443454C4553;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_1000073D0();
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x204D4F524620;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v2 + 24));
  v8._countAndFlagsBits = sub_100002F28();
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  sub_10000825C(v9, v10, v11, v12, v13, v14, v15, v16, v94, v103, v112, v2, 0);
  sub_1000119D4(v17, v18, v19, v20, v21, v22, v23, v24, v95, v104, v113, v121, v129[0]);
  sub_10000825C(v25, v26, v27, v28, v29, v30, v31, v32, v96, v105, v114, v122, v129[0]);
  sub_1000119D4(v33, v34, v35, v36, v37, v38, v39, v40, v97, v106, v115, v123, v129[0]);
  sub_10000825C(v41, v42, v43, v44, v45, v46, v47, v48, v98, v107, v116, v124, v129[0]);
  sub_1000119D4(v49, v50, v51, v52, v53, v54, v55, v56, v99, v108, v117, v125, v129[0]);
  sub_10000825C(v57, v58, v59, v60, v61, v62, v63, v64, v100, v109, v118, v126, v129[0]);
  v65._countAndFlagsBits = 0x3F20454B494C20;
  v65._object = 0xE700000000000000;
  String.append(_:)(v65);
  sub_10000B310(v66, v67, v68, v69, v70, v71, v72, v73, v101, 0xE000000000000000, *v129, v127, *v129, 0xE000000000000000);
  v75 = *v129;
  v74 = v130;

  v76._countAndFlagsBits = 9516;
  v76._object = 0xE200000000000000;
  String.append(_:)(v76);
  sub_10000B310(v77, v78, v79, v80, v81, v82, v83, v84, v102, v110, v119, v128, a1, a2);
  v85._countAndFlagsBits = 9516;
  v85._object = 0xE200000000000000;
  String.append(_:)(v85);
  v86 = *v129;
  v87 = v130;
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E6580;
  *(inited + 32) = v75;
  *(inited + 40) = v74;
  v89 = sub_10000827C(inited);
  *(v89 + 56) = a1;
  *(v89 + 64) = a2;
  *(v89 + 72) = v90;
  *(v89 + 80) = v86;
  *(v89 + 88) = v87;
  *(v89 + 96) = v90;
  *(v89 + 104) = a1;
  *(v89 + 112) = a2;
  *(v89 + 120) = v90;
  sub_100004AA0();
  v91 = swift_allocObject();
  *(v91 + 16) = _swiftEmptyArrayStorage;

  sub_10005AFD4(v120, v111, inited, sub_1000A08D4, v91);
  if (v131)
  {

    swift_setDeallocating();
    v92 = inited;
    sub_10001CE50();
  }

  else
  {

    swift_setDeallocating();
    sub_10001CE50();

    sub_10000602C(v91 + 16, v129);
    v92 = *(v91 + 16);
  }

  return v92;
}

uint64_t sub_10009E7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  sub_10001CCDC();

  sub_100004B44();
  v30 = 0xD000000000000013;
  v31 = v12;
  String.append(_:)(*(v5 + 24));
  v13._countAndFlagsBits = sub_100002F28();
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = sub_100004FBC();
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 1059077408;
  v15._object = 0xE400000000000000;
  String.append(_:)(v15);
  v29 = v31;
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;

  if (a4)
  {

    v17._object = 0x80000001001F49B0;
    v17._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v17);
    sub_1000D5584();
    inited = v18;
    *(v18 + 16) = 2;
    *(v18 + 56) = a3;
    *(v18 + 64) = a4;
    *(v18 + 72) = 3;
  }

  if (a5 != 4)
  {
    sub_100023C7C();
    v19 = *(inited + 16);
    if (v19 >= *(inited + 24) >> 1)
    {
      sub_1000D5584();
      inited = v28;
    }

    *(inited + 16) = v19 + 1;
    v20 = inited + 24 * v19;
    *(v20 + 32) = a5;
    *(v20 + 40) = 0;
    *(v20 + 48) = 1;
  }

  v21._countAndFlagsBits = 59;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  sub_100004AA0();
  v22 = swift_allocObject();
  *(v22 + 16) = _swiftEmptyArrayStorage;
  v23 = *(v5 + 16);
  __chkstk_darwin(v22);
  sub_100006764();
  *(v24 - 32) = v29;
  *(v24 - 24) = inited;
  *(v24 - 16) = sub_1000A08B4;
  *(v24 - 8) = v25;
  sub_100014A20(sub_10001D7C8, v26);

  if (v6)
  {
  }

  else
  {

    sub_10000602C(v22 + 16, &v30);
    v23 = *(v22 + 16);
  }

  return v23;
}

uint64_t sub_10009EACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentInfo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10003A420(&v14);
  if (!v2)
  {
    v8 = *(&v14 + 1);
    if (*(&v14 + 1) >> 60 != 15)
    {
      v9 = v14;
      sub_10003A638(6, &v14);
      if (v15)
      {
        sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        if (swift_dynamicCast())
        {
          sub_1000B14D4(v7, v13[1]);
          swift_beginAccess();
          sub_1000EF570();
          v10 = *(*(a2 + 16) + 16);
          sub_1000EF674(v10);
          v11 = *(a2 + 16);
          *(v11 + 16) = v10 + 1;
          sub_1000A0850(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10);
          *(a2 + 16) = v11;
          swift_endAccess();
          sub_10003AE18(v9, v8);
          return 0;
        }

        sub_10003AE18(v9, v8);
      }

      else
      {
        sub_10003AE18(v9, v8);
        sub_100002C5C(&v14);
      }
    }

    sub_1000A078C();
    swift_allocError();
    swift_willThrow();
  }

  return 0;
}

uint64_t sub_10009ECF4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  sub_10000AB30();
  _StringGuts.grow(_:)(23);

  sub_100004B44();
  v16 = 0xD000000000000013;
  v17 = v6;
  String.append(_:)(*(v1 + 24));
  v7._countAndFlagsBits = 0x455245485720;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  v8 = 0;
  v19 = 0xD000000000000013;
  v20 = v17;
  v18 = _swiftEmptyArrayStorage;
  v9 = *(a1 + 16);
  v10 = (a1 + 40);
  while (v9 != v8)
  {
    v12 = *(v10 - 1);
    v11 = *v10;

    sub_10009EE9C(v8, v12, v11);

    v10 += 2;
    ++v8;
  }

  sub_100004AA0();
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = *(v4 + 16);
  sub_10005AFD4(v19, v20, v18, sub_1000A0A74, v13);
  if (v3)
  {
  }

  else
  {
    sub_10000602C(v13 + 16, &v16);
    v14 = *(v13 + 16);
  }

  return v14;
}

void sub_10009EE9C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >= 1)
  {
    v5._countAndFlagsBits = 0x20444E4120;
    v5._object = 0xE500000000000000;
    String.append(_:)(v5);
  }

  v6._object = 0x80000001001F4960;
  v6._countAndFlagsBits = 0xD00000000000004ALL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = a2;
  v7._object = a3;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 9516;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 9516;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E6580;
  *(inited + 32) = 11301;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 3;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  *(inited + 72) = 3;
  *(inited + 80) = 11301;
  *(inited + 88) = 0xE200000000000000;
  *(inited + 96) = 3;
  *(inited + 104) = a2;
  *(inited + 112) = a3;
  *(inited + 120) = 3;

  sub_10010F548(inited);
}

uint64_t sub_10009EFE8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for ContentInfo(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003CA8(a1, a1[3]);
  sub_1000073D0();
  sub_10003A420(&v20);
  if (!v2)
  {
    if (*(&v20 + 1) >> 60 != 15)
    {
      sub_100004FD0();
      sub_10003A638(6, v9);
      if (v21)
      {
        sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        if (swift_dynamicCast())
        {
          sub_1000B14D4(v8, v19[1]);
          swift_beginAccess();
          sub_1000EF570();
          v10 = *(*(a2 + 16) + 16);
          sub_1000EF674(v10);
          v11 = *(a2 + 16);
          *(v11 + 16) = v10 + 1;
          sub_1000A0850(v8, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10);
          *(a2 + 16) = v11;
          swift_endAccess();
          v12 = sub_100004FD0();
          sub_10003AE18(v12, v13);
          return 1;
        }

        v16 = sub_100004FD0();
        sub_10003AE18(v16, v17);
      }

      else
      {
        v14 = sub_100004FD0();
        sub_10003AE18(v14, v15);
        sub_100002C5C(&v20);
      }
    }

    sub_1000A078C();
    swift_allocError();
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_10009F208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  sub_10001CCDC();

  sub_100004B44();
  v27 = 0xD000000000000013;
  v28 = v10;
  String.append(_:)(*(v4 + 24));
  v11._countAndFlagsBits = sub_100002F28();
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_100006A5C();
  String.append(_:)(v12);
  v13._countAndFlagsBits = 1059077408;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  v26 = v28;
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000827C(inited);

  if (v9 != 4)
  {
    sub_100023C7C();
    sub_1000D5584();
    inited = v15;
    *(v15 + 16) = 2;
    *(v15 + 56) = a3;
    *(v15 + 64) = 0;
    *(v15 + 72) = 1;
  }

  v16._countAndFlagsBits = 0xD00000000000001CLL;
  v16._object = 0x80000001001F4940;
  String.append(_:)(v16);
  sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  v17 = swift_allocBox();
  v19 = v18;
  v20 = type metadata accessor for ContentInfo(0);
  v21 = sub_10000A7C0(v19, 1, 1, v20);
  __chkstk_darwin(v21);
  sub_100006764();
  *(v22 - 32) = v26;
  *(v22 - 24) = inited;
  *(v22 - 16) = sub_1000A06FC;
  *(v22 - 8) = v17;
  sub_100014A20(sub_10001D7C8, v23);

  if (v5)
  {
  }

  else
  {

    sub_10000602C(v19, &v27);
    sub_1000A071C(v19, a4);
  }
}

uint64_t sub_10009F470(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v11 - v4);
  v6 = swift_projectBox();
  sub_10003A420(&v11);
  if (!v2)
  {
    v7 = *(&v11 + 1);
    if (*(&v11 + 1) >> 60 != 15)
    {
      v8 = v11;
      sub_10003A638(6, &v11);
      if (v12)
      {
        sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        if (swift_dynamicCast())
        {
          sub_1000B14D4(v5, v13);
          sub_10003AE18(v8, v7);
          v9 = type metadata accessor for ContentInfo(0);
          sub_10000A7C0(v5, 0, 1, v9);
          swift_beginAccess();
          sub_1000A07E0(v5, v6);
          return 0;
        }

        sub_10003AE18(v8, v7);
      }

      else
      {
        sub_10003AE18(v8, v7);
        sub_100002C5C(&v11);
      }
    }

    sub_1000A078C();
    swift_allocError();
    swift_willThrow();
  }

  return 0;
}

uint64_t sub_10009F650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(40);

  strcpy(v21, "DELETE FROM ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  String.append(_:)(*(v4 + 24));
  v9._countAndFlagsBits = sub_100002F28();
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = sub_100004FBC();
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = sub_100005F08() | 0x444E412000000000;
  v11._object = 0xE900000000000020;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_100006750();
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x3B3F203D2120;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14 = v21[0];
  v15 = v21[1];
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  v16._rawValue = swift_initStackObject();
  *(v16._rawValue + 1) = xmmword_1001E5F70;
  *(v16._rawValue + 4) = a1;
  *(v16._rawValue + 5) = a2;
  v17 = sub_10000827C(v16._rawValue);
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;
  *(v17 + 72) = v18;

  v19._countAndFlagsBits = v14;
  v19._object = v15;
  SQLDatabase.execute(sql:parameters:)(v19, v16);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_10009F7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    _StringGuts.grow(_:)(39);

    strcpy(v24, "DELETE FROM ");
    BYTE5(v24[1]) = 0;
    HIWORD(v24[1]) = -5120;
    String.append(_:)(*(v4 + 24));
    v9._countAndFlagsBits = 0x20455245485720;
    v9._object = 0xE700000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_100004FBC();
    v10._object = 0xE800000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = sub_100005F08() | 0x444E412000000000;
    v11._object = 0xE900000000000020;
    String.append(_:)(v11);
    v12._countAndFlagsBits = sub_100006750();
    v12._object = 0xE700000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = sub_100005F08() & 0xFFFF0000FFFFFFFFLL | 0x3B00000000;
    v13._object = 0xE500000000000000;
    String.append(_:)(v13);
    v14 = v24[0];
    v15 = v24[1];
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    v16._rawValue = swift_initStackObject();
    *(v16._rawValue + 1) = xmmword_1001E5F70;
    *(v16._rawValue + 4) = a1;
    *(v16._rawValue + 5) = a2;
    v17 = sub_10000827C(v16._rawValue);
    *(v17 + 56) = a3;
    *(v17 + 64) = a4;
    *(v17 + 72) = v18;
  }

  else
  {
    _StringGuts.grow(_:)(28);

    strcpy(v24, "DELETE FROM ");
    BYTE5(v24[1]) = 0;
    HIWORD(v24[1]) = -5120;
    String.append(_:)(*(v4 + 24));
    v20._countAndFlagsBits = 0x20455245485720;
    v20._object = 0xE700000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = sub_100004FBC();
    v21._object = 0xE800000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = sub_100005F08() & 0xFFFF0000FFFFFFFFLL | 0x3B00000000;
    v22._object = 0xE500000000000000;
    String.append(_:)(v22);
    v14 = v24[0];
    v15 = v24[1];
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    v16._rawValue = swift_initStackObject();
    *(v16._rawValue + 1) = xmmword_1001E61B0;
    *(v16._rawValue + 4) = a1;
    *(v16._rawValue + 5) = a2;
    sub_10000827C(v16._rawValue);
  }

  v19._countAndFlagsBits = v14;
  v19._object = v15;
  SQLDatabase.execute(sql:parameters:)(v19, v16);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_10009FA1C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_1000B1DA8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v41 = 0;
  v6 = [v4 dataWithPropertyList:isa format:100 options:0 error:&v41];

  v7 = v41;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v11._object = 0x80000001001F48E0;
    v11._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v11);
    String.append(_:)(*(v2 + 24));
    v12._countAndFlagsBits = 10272;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = sub_100004FBC();
    v13._object = 0xE800000000000000;
    String.append(_:)(v13);
    sub_100007908();
    v14._countAndFlagsBits = sub_100006750();
    v14._object = 0xE700000000000000;
    String.append(_:)(v14);
    sub_100007908();
    v15._countAndFlagsBits = sub_1000073D0();
    v15._object = 0xE600000000000000;
    String.append(_:)(v15);
    sub_100007908();
    v16._countAndFlagsBits = sub_100006A5C();
    String.append(_:)(v16);
    sub_100007908();
    v17._countAndFlagsBits = sub_100004B34();
    v17._object = 0xE500000000000000;
    String.append(_:)(v17);
    sub_100007908();
    v18._countAndFlagsBits = sub_100002F08();
    String.append(_:)(v18);
    sub_100007908();
    v19._countAndFlagsBits = sub_100007164();
    v19._object = 0xE900000000000073;
    String.append(_:)(v19);
    sub_100007908();
    v20._countAndFlagsBits = 0x617461646174656DLL;
    v20._object = 0xE800000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0xD00000000000001BLL;
    v21._object = 0x80000001001F4900;
    String.append(_:)(v21);
    v39 = v42;
    v40 = v41;
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E7880;
    v23 = *(a1 + 24);
    *(inited + 32) = *(a1 + 16);
    *(inited + 40) = v23;
    *(inited + 48) = 3;
    v24 = type metadata accessor for ContentInfo(0);
    v25 = (a1 + v24[12]);
    v26 = v25[1];
    *(inited + 56) = *v25;
    *(inited + 64) = v26;
    *(inited + 72) = 3;
    *(inited + 80) = v8;
    *(inited + 88) = v10;
    *(inited + 96) = 0;
    v27 = (a1 + v24[11]);
    v28 = v27[1];
    *(inited + 104) = *v27;
    *(inited + 112) = v28;
    *(inited + 120) = 3;
    *(inited + 128) = *(a1 + v24[10]);
    *(inited + 136) = 0;
    *(inited + 144) = 1;

    sub_10003A5E0(v8, v10);

    static Date.timeIntervalSinceReferenceDate.getter();
    *(inited + 152) = v29;
    *(inited + 160) = 0;
    *(inited + 168) = 2;
    v41 = *a1;

    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000A0698();
    v30 = sub_100004870();
    v32 = v31;

    *(inited + 176) = v30;
    *(inited + 184) = v32;
    *(inited + 192) = 3;
    v41 = *(a1 + 8);

    v33 = sub_100004870();
    v35 = v34;

    *(inited + 200) = v33;
    *(inited + 208) = v35;
    v36._countAndFlagsBits = v40;
    *(inited + 216) = 3;
    v36._object = v39;
    SQLDatabase.execute(sql:parameters:)(v36, inited);
    swift_setDeallocating();
    sub_10001CE50();

    return sub_1000253FC(v8, v10);
  }

  else
  {
    v38 = v7;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_10009FDF8()
{
  sub_1000A95D8();

  return swift_deallocClassInstance();
}

uint64_t sub_10009FE4C(uint64_t a1, void *a2)
{
  sub_10000AB30();
  _StringGuts.grow(_:)(98);
  sub_100005734();
  v3._countAndFlagsBits = sub_1000062C4();
  v3._object = a2;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  sub_100007ED0();
  sub_10000A324();
  v5._countAndFlagsBits = sub_1000062C4();
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  sub_10000A324();
  v6._countAndFlagsBits = sub_1000073D0();
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  sub_100012B88();
  v7._countAndFlagsBits = sub_100006A5C();
  String.append(_:)(v7);
  sub_10000B188();
  v8._countAndFlagsBits = sub_100004B34();
  v8._object = 0xE500000000000000;
  String.append(_:)(v8);
  sub_10000B188();
  v9._countAndFlagsBits = sub_100002F08();
  String.append(_:)(v9);
  sub_10000A954(" REAL, PRIMARY KEY (");
  v10._countAndFlagsBits = sub_100019B74();
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_1000062C4();
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 10537;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  SQLDatabase.execute(sql:parameters:)(v15, _swiftEmptyArrayStorage);
}

uint64_t sub_10009FFB8(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(24);

  sub_100004B44();
  v22 = v3;
  v4._countAndFlagsBits = sub_1000062C4();
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 59;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = v22;
  SQLDatabase.execute(sql:parameters:)(v6, _swiftEmptyArrayStorage);

  if (!v8)
  {
    _StringGuts.grow(_:)(95);
    sub_100005734();
    v9._countAndFlagsBits = sub_1000062C4();
    v9._object = a2;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 10272;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    sub_100007ED0();
    sub_10000A324();
    v11._countAndFlagsBits = sub_1000062C4();
    v11._object = 0xE700000000000000;
    String.append(_:)(v11);
    sub_10000A324();
    v12._countAndFlagsBits = sub_1000073D0();
    v12._object = 0xE600000000000000;
    String.append(_:)(v12);
    sub_100012B88();
    v13._countAndFlagsBits = sub_100006A5C();
    String.append(_:)(v13);
    sub_10000A324();
    v14._countAndFlagsBits = sub_100004B34();
    v14._object = 0xE500000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 0x52454745544E4920;
    v15._object = 0xEA0000000000202CLL;
    String.append(_:)(v15);
    v16._countAndFlagsBits = sub_100002F08();
    String.append(_:)(v16);
    sub_10000A954(" REAL, PRIMARY KEY (");
    v17._countAndFlagsBits = sub_100019B74();
    v17._object = 0xE800000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 8236;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = sub_1000062C4();
    v19._object = 0xE700000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 10537;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    SQLDatabase.execute(sql:parameters:)(v21, _swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1000A01BC(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(27);

  strcpy(&v17, "ALTER TABLE ");
  BYTE5(v17._object) = 0;
  HIWORD(v17._object) = -5120;
  v4._countAndFlagsBits = sub_100019B74();
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x2044444120;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_1000062C4();
  v6._object = 0xE900000000000073;
  String.append(_:)(v6);
  sub_100005C08();
  SQLDatabase.execute(sql:parameters:)(v17, _swiftEmptyArrayStorage);
  if (v7)
  {
  }

  sub_10000AB30();
  _StringGuts.grow(_:)(27);

  strcpy(&v17, "ALTER TABLE ");
  BYTE5(v17._object) = 0;
  HIWORD(v17._object) = -5120;
  v8._countAndFlagsBits = sub_100019B74();
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x2044444120;
  v9._object = 0xE500000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x617461646174656DLL;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  sub_100005C08();
  SQLDatabase.execute(sql:parameters:)(v17, _swiftEmptyArrayStorage);
  v12 = v11;
  if (v11)
  {

    v12 = 0;
  }

  v13 = sub_100007164();
  result = sub_1000A040C(v13, 0xE900000000000073, a1, a2);
  if (!v12)
  {
    v15 = result;
    result = sub_1000A040C(0x617461646174656DLL, 0xE800000000000000, a1, a2);
    if ((v15 & result & 1) == 0)
    {
      sub_1000A0624();
      swift_allocError();
      *v16 = 6;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000A040C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  LOBYTE(v6) = v5;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v12._object = 0x80000001001F48A0;
  v12._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v12);
  v13._countAndFlagsBits = a3;
  v13._object = a4;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4552454857202927;
  v14._object = 0xEF273D656D616E20;
  String.append(_:)(v14);
  v15._countAndFlagsBits = a1;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 15143;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v19 = v4;
  v20 = 0;
  v21 = 0xE000000000000000;
  v22 = _swiftEmptyArrayStorage;
  v23 = sub_1000A0678;
  v24 = v11;
  sub_100014A20(sub_100014F50, &v18);
  if (v5)
  {
  }

  else
  {

    swift_beginAccess();
    v6 = *(v11 + 16);
  }

  return v6 & 1;
}

uint64_t sub_1000A05B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001ABCC(0);
  if (!v2)
  {
    v6 = (v4 > 0) & ~v5;
    swift_beginAccess();
    *(a2 + 16) = v6;
  }

  return 1;
}

unint64_t sub_1000A0624()
{
  result = qword_10026A388;
  if (!qword_10026A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A388);
  }

  return result;
}

unint64_t sub_1000A0698()
{
  result = qword_100270BB0;
  if (!qword_100270BB0)
  {
    sub_10007BC70(&qword_1002704A0, &unk_1001ECCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270BB0);
  }

  return result;
}

uint64_t sub_1000A071C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A078C()
{
  result = qword_10026A390;
  if (!qword_10026A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A390);
  }

  return result;
}

uint64_t sub_1000A07E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0914(uint64_t a1)
{
  v2 = type metadata accessor for ContentInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AppContentTable.ContentError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1000A0A20()
{
  result = qword_10026A398;
  if (!qword_10026A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A398);
  }

  return result;
}

BOOL sub_1000A0AB0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A0A9C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A0AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A1D84();
  v5 = sub_100050EF8();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_1000A0B44(uint64_t a1)
{
  v2 = sub_1000A1D30();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000A0B80(uint64_t a1)
{
  v2 = sub_1000A1D30();
  v3 = sub_1000A1D84();
  v4 = sub_100050EF8();

  return Error<>._code.getter(a1, v2, v3, v4);
}

void *sub_1000A0BDC()
{
  swift_retain_n();
  sub_10001C50C();

  return v0;
}

uint64_t sub_1000A0C6C()
{
  sub_1000A0BDC();

  return swift_deallocClassInstance();
}

void *sub_1000A0CA0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for AppEventTable();
    v1 = sub_100004B50(v3);
    v1[2] = v2;
    v1[3] = 0xD000000000000013;
    v1[4] = 0x80000001001F4B40;
    *(v0 + 24) = v1;
  }

  return v1;
}

void *sub_1000A0D24()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for AppEventTable();
    v1 = sub_100004B50(v3);
    v1[2] = v2;
    v1[3] = 0x676F6C6B636162;
    v1[4] = 0xE700000000000000;
    *(v0 + 32) = v1;
  }

  return v1;
}

void *sub_1000A0DA4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for AppContentTable();
    v1 = sub_100004B50(v3);
    v1[2] = v2;
    v1[3] = 0x746E65746E6F63;
    v1[4] = 0xE700000000000000;
    *(v0 + 40) = v1;
  }

  return v1;
}

void sub_1000A0E24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v12 = a4;
  v6 = *(v5 + 16);
  v8[3] = a1;
  v9 = a5;
  v10 = a2;
  v11 = a3 & 1;

  sub_10001A648(v7, v6, sub_1000A1BD8, v8);
}

uint64_t sub_1000A0E88(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  if (qword_1002686B8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F70;
  v37 = type metadata accessor for AppDatabase();
  v43 = v37;
  *&v42 = a1;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v42);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001001F4C10;
  v13._countAndFlagsBits = 0xD000000000000017;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v15 = *a2;
  v14 = a2[1];
  v43 = &type metadata for String;
  *&v42 = v15;
  *(&v42 + 1) = v14;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
  v16._countAndFlagsBits = 0x54746E657665203BLL;
  v16._object = 0xED0000203A657079;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  v18 = a2[5];
  v17 = a2[6];
  v43 = &type metadata for String;
  *&v42 = v18;
  *(&v42 + 1) = v17;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  LogInterpolation.init(stringInterpolation:)();
  v20 = static os_log_type_t.info.getter();
  sub_1000036B0(v20, v10);

  v21 = sub_1000A589C();
  v22 = a1;
  sub_100051540();
  sub_1000A6F08(a3, &v42);

  if (!v41)
  {
    if (v43)
    {
      result = swift_dynamicCast();
      if (result)
      {
        v24 = v44;
        goto LABEL_11;
      }
    }

    else
    {
      result = sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
    }

    v24 = 0;
LABEL_11:
    v25 = __OFADD__(v24, v21);
    v26 = v24 + v21;
    if (v25)
    {
      __break(1u);
    }

    else
    {
      if ((a5 & 1) != 0 || v26 <= a4)
      {
LABEL_19:
        sub_1000A6098(a2);
        v43 = &type metadata for Int;
        *&v42 = v26;

        sub_1000A6E98(&v42, a3);

        sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1001E5F70;
        v43 = v37;
        *&v42 = v22;

        v34 = AMSLogKey();
        if (v34)
        {
          v35 = v34;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v42);
        LogInterpolation.init(stringLiteral:)();
        v36 = static os_log_type_t.info.getter();
        sub_1000036B0(v36, v33);
      }

      v40 = v26;
      if (!__OFSUB__(v26, a4))
      {
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1001E5F70;
        v43 = v37;
        *&v42 = a1;

        v28 = AMSLogKey();
        if (v28)
        {
          v29 = v28;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v42);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v30._countAndFlagsBits = 0x676E6970706F7244;
        v30._object = 0xE900000000000020;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
        v43 = &type metadata for Int;
        *&v42 = v26 - a4;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
        v31._countAndFlagsBits = 0x2973286574796220;
        v31._object = 0xE800000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
        LogInterpolation.init(stringInterpolation:)();
        v32 = static os_log_type_t.default.getter();
        sub_1000036B0(v32, v27);

        result = sub_1000A5CF8(v26 - a4);
        v22 = a1;
        v26 -= result;
        if (!__OFSUB__(v40, result))
        {
          goto LABEL_19;
        }

LABEL_25:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1000A14DC()
{
  v1 = type metadata accessor for Date();
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  __chkstk_darwin(v4 - 8);
  v6 = (&v32 - v5);
  v7 = type metadata accessor for ScheduleInfo(0);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001ADD4(0x6E69616D6F64, 0xE600000000000000);
  if (!v0)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_10001ADD4(7955819, 0xE300000000000000);
    v16 = v15;
    v35 = v14;
    sub_10003A420(v38);
    v33 = *&v38[0];
    v34 = v16;
    v17 = *(&v38[0] + 1);
    v18 = sub_10003A400(0x70795465756C6176, 0xE900000000000065);
    v32 = v17;
    if (v19)
    {
      v18 = -1;
    }

    v21 = sub_1000521C8(v18);
    if (!v34)
    {
      sub_10003AE18(v33, v32);
      goto LABEL_3;
    }

    v22 = v21;
    if (v13)
    {
      v23._countAndFlagsBits = v12;
    }

    else
    {
      v23._countAndFlagsBits = 0;
    }

    if (v13)
    {
      v23._object = v13;
    }

    else
    {
      v23._object = 0xE000000000000000;
    }

    v24 = sub_1000A1A78(v23);
    v25 = v33;
    if (v24 == 3)
    {
      v26 = v33;
      v27 = v32;
LABEL_16:
      sub_10003AE18(v26, v27);
LABEL_3:

      return 1;
    }

    v28 = v32;
    if (v32 >> 60 == 15)
    {
      goto LABEL_3;
    }

    if (v22 == 7)
    {
      v26 = v33;
      v27 = v32;
      goto LABEL_16;
    }

    v29 = v24;
    sub_10003A638(v22, &v36);
    if (!v37)
    {
      sub_10003AE18(v25, v28);

      sub_10000A064(&v36, &qword_10026D350, &qword_1001E6050);
      return 1;
    }

    sub_100002C4C(&v36, v38);
    if (v29)
    {
      if (v29 == 1)
      {

        type metadata accessor for AppDatabase();
        sub_10001D804(2, 0);
        sub_100011BAC(v38, &v36);
        sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_100002C00(v38);
          sub_10003AE18(v33, v28);

          return 1;
        }

        v31 = v39;
        Date.init()();
        sub_100041D4C(v31, v3, v6);
        sub_10000A7C0(v6, 0, 1, v7);
        sub_1000A1B18(v6, v9);
        sub_100041404();
        sub_1000A9108(v9);
        sub_10003AE18(v33, v32);

        sub_1000A1B7C(v9);
        goto LABEL_31;
      }

      type metadata accessor for AppDatabase();
      v30 = 2;
    }

    else
    {
      type metadata accessor for AppDatabase();
      v30 = 1;
    }

    sub_10001D804(v30, 0);
    sub_100051540();
    sub_100011BAC(v38, &v36);
    sub_1000526FC(&v36, v35, v34);

    sub_10003AE18(v25, v28);

    sub_10000A064(&v36, &qword_10026D350, &qword_1001E6050);
LABEL_31:
    sub_100002C00(v38);
  }

  return 1;
}

unint64_t sub_1000A1A78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244840, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000A1AC4()
{
  result = qword_10026A518;
  if (!qword_10026A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A518);
  }

  return result;
}

uint64_t sub_1000A1B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1B7C(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AppDatabase.DatabaseError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1000A1CB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1000A1CDC()
{
  result = qword_10026A5B8;
  if (!qword_10026A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A5B8);
  }

  return result;
}

unint64_t sub_1000A1D30()
{
  result = qword_10026A5C0;
  if (!qword_10026A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A5C0);
  }

  return result;
}

unint64_t sub_1000A1D84()
{
  result = qword_10026A5C8;
  if (!qword_10026A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A5C8);
  }

  return result;
}

uint64_t sub_1000A1DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x456465776F6C6C61 && a2 == 0xED000073746E6576;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44676F6C6B636162 && a2 == 0xEF73746C75616665;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001001F4D20 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x80000001001F4D40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1000A1F58(char a1)
{
  result = 0x456465776F6C6C61;
  switch(a1)
  {
    case 1:
      result = 0x44676F6C6B636162;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A2000(uint64_t a1, uint64_t a2)
{
  sub_1001C48BC();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }

    goto LABEL_4;
  }

  if (v6 == 2 || ((v6 ^ v5) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_4;
  }

  result = 0;
  if ((*(a2 + 24) & 1) == 0 && *(a1 + 16) == *(a2 + 16))
  {
LABEL_4:
    v7 = *(a1 + 40);
    v8 = *(a2 + 40);
    if (v7)
    {
      if (!v8)
      {
        return 0;
      }

      v9 = *(a1 + 32) == *(a2 + 32) && v7 == v8;
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    v10 = *(a1 + 48);
    v11 = *(a2 + 48);
    if (v10)
    {
      if (v11 && (sub_1001C3F8C(v10, v11) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000A20F4(void *a1)
{
  v4 = sub_10007B9A4(&qword_10026A720, &unk_1001E7CB0);
  sub_100002CC4();
  v6 = v5;
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_100004B68();
  sub_100003CA8(a1, a1[3]);
  sub_1000A4374();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10007B9A4(&qword_10026A6F8, &unk_1001E7CA0);
  sub_1000A4470(&qword_10026A728, sub_1000A44E8, &protocol conformance descriptor for <A> [A]);
  sub_100007944();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_1000A453C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000A4590(&qword_10026A740, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_100007944();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1000A2330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100007E34();
  v25 = v24;
  v27 = v26;
  sub_10007B9A4(&qword_10026A6E8, &qword_1001E7C98);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v28);
  sub_100003CA8(v25, v25[3]);
  sub_1000A4374();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100002C00(v25);
  }

  else
  {
    sub_10007B9A4(&qword_10026A6F8, &unk_1001E7CA0);
    sub_1000A4470(&qword_10026A700, sub_1000A43C8, &protocol conformance descriptor for <A> [A]);
    sub_10000BD74();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000A441C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = v37;
    v36 = v37;
    LOBYTE(v37) = 2;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v30;
    v34 = v29;
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000A4590(&qword_10026A718, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_10000BD74();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = sub_1000073F4();
    v33(v32);
    sub_100002C00(v25);
    *v27 = v36;
    *(v27 + 8) = v35;
    *(v27 + 16) = v38;
    *(v27 + 24) = v39;
    *(v27 + 32) = v34;
    *(v27 + 40) = v31;
    *(v27 + 48) = v37;
  }

  sub_100005B78();
}

uint64_t sub_1000A2614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A1DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A263C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A1F50();
  *a1 = result;
  return result;
}

uint64_t sub_1000A2664(uint64_t a1)
{
  v2 = sub_1000A4374();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A26A0(uint64_t a1)
{
  v2 = sub_1000A4374();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000A26DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1000A2330(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SWORD2(v13), SBYTE6(v13), SHIBYTE(v13), v15, v16, v18, v19, v21, v22, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v14;
    *(a9 + 16) = v17;
    result = *&v20;
    *(a9 + 32) = v20;
    *(a9 + 48) = v23;
  }

  return result;
}

uint64_t sub_1000A2748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696D694C657A6973 && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000A2818(char a1)
{
  if (a1)
  {
    return 0x696D694C657A6973;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

BOOL sub_1000A2854(int a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  if ((a1 ^ a4))
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && a2 == a5;
  }

  return (a6 & 1) != 0;
}

void sub_1000A2884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100007E34();
  v25 = v24;
  v26 = sub_10007B9A4(&qword_10026A7C0, &qword_1001E7F60);
  sub_100002CC4();
  v28 = v27;
  sub_100004E78();
  __chkstk_darwin(v29);
  sub_100006264();
  sub_100003CA8(v25, v25[3]);
  sub_1000A4AA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v22)
  {
    sub_100023CC0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v28 + 8))(v23, v26);
  sub_100005B78();
}

uint64_t sub_1000A29D0(void *a1)
{
  v4 = sub_10007B9A4(&qword_10026A7A0, &qword_1001E7F50);
  sub_100002CC4();
  v6 = v5;
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_100006264();
  v8 = a1[3];
  sub_100003CA8(a1, v8);
  sub_1000A4AA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v8) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100023CC0();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v2, v4);
  }

  sub_100002C00(a1);
  return v8 & 1;
}

uint64_t sub_1000A2B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A2748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A2B90(uint64_t a1)
{
  v2 = sub_1000A4AA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A2BCC(uint64_t a1)
{
  v2 = sub_1000A4AA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A2C08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000A29D0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1000A2C8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x655273776F6C6C61 && a2 == 0xEE0065736E6F7073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
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

uint64_t sub_1000A2DA8(char a1)
{
  if (!a1)
  {
    return 0x655273776F6C6C61;
  }

  if (a1 == 1)
  {
    return 0x6E656E6F706D6F63;
  }

  return 0x7265746C6966;
}

void sub_1000A2E0C(int a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, char a7)
{
  if (((a1 ^ a5) & 1) == 0)
  {
    if (a3)
    {
      if ((a7 & 1) == 0)
      {
        return;
      }
    }

    else if ((a7 & 1) != 0 || a2 != a6)
    {
      return;
    }

    sub_1001C4B20();
  }
}

void sub_1000A2E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_100007E34();
  v28 = v27;
  v29 = sub_10007B9A4(&qword_10026A7B0, &qword_1001E7F58);
  sub_100002CC4();
  v31 = v30;
  sub_100004E78();
  __chkstk_darwin(v32);
  sub_100004B68();
  sub_100003CA8(v28, v28[3]);
  sub_1000A4A54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v25)
  {
    sub_100023CC0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
    sub_1000A4AFC(&qword_10026A7B8, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v31 + 8))(v26, v29);
  sub_100005B78();
}

void sub_1000A300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100007E34();
  v26 = v25;
  v27 = sub_10007B9A4(&qword_10026A780, &unk_1001E7F40);
  sub_100002CC4();
  v29 = v28;
  sub_100004E78();
  __chkstk_darwin(v30);
  sub_100006264();
  sub_100003CA8(v26, v26[3]);
  sub_1000A4A54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_100023CC0();
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
  sub_1000A4AFC(&qword_10026A798, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v24, v27);
  sub_100002C00(v26);
  sub_100005B78();
}

uint64_t sub_1000A3218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A2C8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A3240(uint64_t a1)
{
  v2 = sub_1000A4A54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A327C(uint64_t a1)
{
  v2 = sub_1000A4A54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A335C(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v16 = *a1;
  v15 = *(a1 + 2);
  v14 = a1[6];
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v8 = *(a1 + 1);
  *(v7 + 24) = *a1;
  *(v7 + 40) = v8;
  *(v7 + 56) = *(a1 + 2);
  *(v7 + 72) = a1[6];
  *(v7 + 80) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000A46A4;
  *(v9 + 24) = v7;
  aBlock[4] = sub_1000A46B4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012764;
  aBlock[3] = &unk_100247570;
  v10 = _Block_copy(aBlock);

  sub_1000A46BC(&v16, v12, &qword_10026A6F8, &unk_1001E7CA0);
  sub_1000A46BC(&v15, v12, &unk_10026CD20, &unk_1001E7CC0);
  sub_1000A46BC(&v14, v12, &qword_10026A758, &qword_1001EBE80);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3544(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3B88();
  sub_1000A3E48();
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v20 = *a2;
  v19 = *(a2 + 2);
  v18 = a2[6];
  sub_1000A46BC(&v20, v17, &qword_10026A6F8, &unk_1001E7CA0);
  sub_1000A46BC(&v19, v17, &unk_10026CD20, &unk_1001E7CC0);
  sub_1000A46BC(&v18, v17, &qword_10026A758, &qword_1001EBE80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000AC840(a2, a3, isUniquelyReferenced_nonNull_native, v11, v12, v13, v14, v15, *(a1 + 24), v17[1]);
  *(a1 + 24) = v17[0];
  return swift_endAccess();
}

void sub_1000A36EC()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_100004B68();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F70;
  v20 = type metadata accessor for AppDefaultsProvider(0);
  v18 = v0;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v18);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001001F4D00;
  v8._countAndFlagsBits = 0xD000000000000019;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  v20 = type metadata accessor for URL();
  sub_100017E64(&v18);
  sub_1000047A4();
  (*(v9 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_100009FB0(&v18, &qword_10026D350, &qword_1001E6050);
  sub_100004B74();
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v10 = static os_log_type_t.info.getter();
  sub_1000036B0(v10, v5);

  v11 = Data.init(contentsOf:options:)();
  v13 = v12;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A4650();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000253FC(v11, v13);

  v14 = v19;
  v15 = v20;
  v16 = v21;
  v17 = v22;
  *v2 = v18;
  *(v2 + 8) = v14;
  *(v2 + 24) = v15;
  *(v2 + 32) = v16;
  *(v2 + 48) = v17;
  sub_100005F14();
}

void sub_1000A3B88()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v22[1] = v4;
  v5 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v5);
  sub_100004E78();
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for URL();
  sub_100002CC4();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v22 - v17;
  __chkstk_darwin(v16);
  v20 = v22 - v19;
  sub_1000A46BC(v1 + OBJC_IVAR____TtC14amsengagementd19AppDefaultsProvider_directoryURL, v8, &unk_10026FEE0, &unk_1001E67C0);
  if (sub_100009F34(v8, 1, v9) == 1)
  {
    sub_100009FB0(v8, &unk_10026FEE0, &unk_1001E67C0);
    sub_10001E78C(v3);
    URL.appendingPathComponent(_:)();
    (*(v11 + 8))(v15, v9);
  }

  else
  {
    (*(v11 + 32))(v20, v8, v9);
    URL.appendingPathComponent(_:)();

    URL.appendingPathExtension(_:)();
    v21 = *(v11 + 8);
    v21(v18, v9);
    v21(v20, v9);
  }

  sub_100005F14();
}

void sub_1000A3E48()
{
  sub_100003D74();
  v2 = v1;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F70;
  *(&v16 + 1) = type metadata accessor for AppDefaultsProvider(0);
  *&v15 = v0;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v15);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001001F4CE0;
  v8._countAndFlagsBits = 0xD000000000000018;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  *(&v16 + 1) = type metadata accessor for URL();
  sub_100017E64(&v15);
  sub_1000047A4();
  (*(v9 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_100009FB0(&v15, &qword_10026D350, &qword_1001E6050);
  sub_100004B74();
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v10 = static os_log_type_t.info.getter();
  sub_1000036B0(v10, v5);

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v11 = v2[1];
  v15 = *v2;
  v16 = v11;
  v17 = v2[2];
  v18 = *(v2 + 6);
  sub_1000A45FC();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;

  Data.write(to:options:)();
  sub_1000253FC(v12, v14);
  sub_100005F14();
}

uint64_t sub_1000A4298()
{

  sub_100009FB0(v0 + OBJC_IVAR____TtC14amsengagementd19AppDefaultsProvider_directoryURL, &unk_10026FEE0, &unk_1001E67C0);
  return v0;
}

uint64_t sub_1000A42E8()
{
  sub_1000A4298();

  return swift_deallocClassInstance();
}

__n128 sub_1000A4348(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

unint64_t sub_1000A4374()
{
  result = qword_10026A6F0;
  if (!qword_10026A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A6F0);
  }

  return result;
}

unint64_t sub_1000A43C8()
{
  result = qword_10026A708;
  if (!qword_10026A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A708);
  }

  return result;
}

unint64_t sub_1000A441C()
{
  result = qword_10026A710;
  if (!qword_10026A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A710);
  }

  return result;
}

uint64_t sub_1000A4470(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_10026A6F8, &unk_1001E7CA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A44E8()
{
  result = qword_10026A730;
  if (!qword_10026A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A730);
  }

  return result;
}

unint64_t sub_1000A453C()
{
  result = qword_10026A738;
  if (!qword_10026A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A738);
  }

  return result;
}

uint64_t sub_1000A4590(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_1002704A0, &unk_1001ECCF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A45FC()
{
  result = qword_10026A748;
  if (!qword_10026A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A748);
  }

  return result;
}

unint64_t sub_1000A4650()
{
  result = qword_10026A750;
  if (!qword_10026A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A750);
  }

  return result;
}

uint64_t sub_1000A46BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10007B9A4(a3, a4);
  sub_1000047A4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AppDefaults.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 initializeBufferWithCopyOfBuffer for AppBacklogDefaults(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppBacklogDefaults(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for AppBacklogDefaults(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000A48B0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000A48BC(uint64_t a1, int a2)
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

uint64_t sub_1000A48FC(uint64_t result, int a2, int a3)
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

unint64_t sub_1000A4950()
{
  result = qword_10026A768;
  if (!qword_10026A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A768);
  }

  return result;
}

unint64_t sub_1000A49A8()
{
  result = qword_10026A770;
  if (!qword_10026A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A770);
  }

  return result;
}

unint64_t sub_1000A4A00()
{
  result = qword_10026A778;
  if (!qword_10026A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A778);
  }

  return result;
}

unint64_t sub_1000A4A54()
{
  result = qword_10026A788;
  if (!qword_10026A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A788);
  }

  return result;
}

unint64_t sub_1000A4AA8()
{
  result = qword_10026A7A8;
  if (!qword_10026A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7A8);
  }

  return result;
}

uint64_t sub_1000A4AFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_10026A790, &qword_1001ED5B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppBacklogDefaults.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AppEventInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000A4D24()
{
  result = qword_10026A7C8;
  if (!qword_10026A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7C8);
  }

  return result;
}

unint64_t sub_1000A4D7C()
{
  result = qword_10026A7D0;
  if (!qword_10026A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7D0);
  }

  return result;
}

unint64_t sub_1000A4DD4()
{
  result = qword_10026A7D8;
  if (!qword_10026A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7D8);
  }

  return result;
}

unint64_t sub_1000A4E2C()
{
  result = qword_10026A7E0;
  if (!qword_10026A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7E0);
  }

  return result;
}

unint64_t sub_1000A4E84()
{
  result = qword_10026A7E8;
  if (!qword_10026A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7E8);
  }

  return result;
}

unint64_t sub_1000A4EDC()
{
  result = qword_10026A7F0;
  if (!qword_10026A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026A7F0);
  }

  return result;
}

uint64_t sub_1000A4F34()
{
  sub_100006A94();
  _StringGuts.grow(_:)(80);
  v2._countAndFlagsBits = 0x5420455441455243;
  v2._object = 0xED000020454C4241;
  String.append(_:)(v2);
  v3._countAndFlagsBits = v1;
  v3._object = v0;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 7368801;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x2C474E4952545320;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x64616F6C796170;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x202C424F4C4220;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 1701669236;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x202C4C41455220;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x696669746E656469;
  v11._object = 0xEA00000000007265;
  String.append(_:)(v11);
  v12._object = 0x80000001001F4D60;
  v12._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 1701869940;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x29474E4952545320;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  SQLDatabase.execute(sql:parameters:)(v16, _swiftEmptyArrayStorage);
}

uint64_t sub_1000A5100()
{
  sub_100006A94();
  _StringGuts.grow(_:)(36);

  strcpy(&v7, "ALTER TABLE ");
  BYTE5(v7._object) = 0;
  HIWORD(v7._object) = -5120;
  v2._countAndFlagsBits = v1;
  v2._object = v0;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x4C4F432044444120;
  v3._object = 0xEC000000204E4D55;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 1702521203;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x52454745544E4920;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  SQLDatabase.execute(sql:parameters:)(v7, _swiftEmptyArrayStorage);
}

void sub_1000A51F8()
{
  v6 = *v0;
  v7 = v0[2];
  switch(*(v0 + 32))
  {
    case 1:
      v9 = v0[1];
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001E61B0;
      *(v10 + 32) = v6;
      goto LABEL_20;
    case 2:
    case 3:
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1001E61B0;
      *(v8 + 32) = v7;
      *(v8 + 40) = 0;
      *(v8 + 48) = 2;
      return;
    case 4:
      v9 = v0[3];
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001E61B0;
      *(v10 + 32) = v7;
LABEL_20:
      *(v10 + 40) = v9;
      *(v10 + 48) = 3;

      return;
    case 5:
      sub_100005784();
      v38 = _swiftEmptyArrayStorage;
      while (2)
      {
        if (v4 == v2)
        {
          return;
        }

        if (v2 >= *(v3 + 16))
        {
          goto LABEL_38;
        }

        sub_100002F6C(v30, v31, v32, v33, v34, v35, v36, v37, v47, v48, v49, v50, v51, v52, v53, v54, v55);
        sub_1000A51F8();
        v40 = *(v39 + 16);
        if (__OFADD__(v38[2], v40))
        {
          goto LABEL_40;
        }

        v41 = v39;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (sub_100023CCC(), v25 ^ v26))
        {
          sub_10000A340(isUniquelyReferenced_nonNull_native);
          v1 = v44;
          v43 = v44[3] >> 1;
        }

        if (!*(v41 + 16))
        {

          if (!v40)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }

        if (v43 - v1[2] < v40)
        {
          goto LABEL_44;
        }

        sub_100007964();
        swift_arrayInitWithCopy();

        if (!v40)
        {
LABEL_36:
          sub_1000A57C0(&v53);

          v5 += 40;
          ++v2;
          v38 = v1;
          continue;
        }

        break;
      }

      v45 = v1[2];
      v26 = __OFADD__(v45, v40);
      v46 = v45 + v40;
      if (!v26)
      {
        v1[2] = v46;
        goto LABEL_36;
      }

      goto LABEL_46;
    default:
      sub_100005784();
      v19 = _swiftEmptyArrayStorage;
      while (2)
      {
        if (v4 == v2)
        {
          return;
        }

        if (v2 >= *(v3 + 16))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        sub_100002F6C(v11, v12, v13, v14, v15, v16, v17, v18, v47, v48, v49, v50, v51, v52, v53, v54, v55);
        sub_1000A51F8();
        v21 = *(v20 + 16);
        if (__OFADD__(v19[2], v21))
        {
          goto LABEL_39;
        }

        v22 = v20;

        v23 = swift_isUniquelyReferenced_nonNull_native();
        if (!v23 || (sub_100023CCC(), v25 ^ v26))
        {
          sub_10000A340(v23);
          v1 = v27;
          v24 = v27[3] >> 1;
        }

        if (!*(v22 + 16))
        {

          if (!v21)
          {
            goto LABEL_18;
          }

          goto LABEL_41;
        }

        if (v24 - v1[2] < v21)
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        sub_100007964();
        swift_arrayInitWithCopy();

        if (!v21)
        {
LABEL_18:
          sub_1000A57C0(&v53);

          v5 += 40;
          ++v2;
          v19 = v1;
          continue;
        }

        break;
      }

      v28 = v1[2];
      v26 = __OFADD__(v28, v21);
      v29 = v28 + v21;
      if (!v26)
      {
        v1[2] = v29;
        goto LABEL_18;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return;
  }
}

uint64_t sub_1000A5514()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = 0x3F203D3D20707061;
  switch(*(v0 + 32))
  {
    case 1:
      return v3;
    case 2:
      v33 = *v0;
      sub_1000A5788(v0, &v41);
      v18 = 1059077664;
      goto LABEL_12;
    case 3:
      v33 = *v0;
      sub_1000A5788(v0, &v41);
      v18 = 1059077152;
LABEL_12:
      v19 = 0xE400000000000000;
      String.append(_:)(*&v18);
      return v33;
    case 4:
      *&v41 = *v0;
      *(&v41 + 1) = v1;

      v17._countAndFlagsBits = 0x3F20454B494C20;
      v17._object = 0xE700000000000000;
      String.append(_:)(v17);
      return v41;
    case 5:
      if (*(*(v2 + 16) + 16))
      {
        sub_100007404();
        sub_1000062DC();
        do
        {
          sub_100005010(v20, v21, v22, v23, v24, v25, v26, v27, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
          v28._countAndFlagsBits = sub_1000A5514();
          String.append(_:)(v28);

          v29._countAndFlagsBits = 41;
          v29._object = 0xE100000000000000;
          String.append(_:)(v29);
          sub_1000A57C0(&v41);
          sub_10000BD98();
          if (v15)
          {
            sub_1000082A8(v30);
          }

          sub_10000B728();
        }

        while (!v16);
      }

      goto LABEL_20;
    default:
      if (*(*(v2 + 16) + 16))
      {
        sub_100007404();
        sub_1000062DC();
        do
        {
          sub_100005010(v4, v5, v6, v7, v8, v9, v10, v11, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
          v12._countAndFlagsBits = sub_1000A5514();
          String.append(_:)(v12);

          v13._countAndFlagsBits = 41;
          v13._object = 0xE100000000000000;
          String.append(_:)(v13);
          sub_1000A57C0(&v41);
          sub_10000BD98();
          if (v15)
          {
            sub_1000082A8(v14);
          }

          sub_10000B728();
        }

        while (!v16);
      }

LABEL_20:
      sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
      sub_1000A0698();
      v3 = BidirectionalCollection<>.joined(separator:)();

      return v3;
  }
}

uint64_t sub_1000A57FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A583C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

Swift::Int sub_1000A589C()
{
  v1 = v0[1];
  if ((v1 & 0x1000000000000000) != 0)
  {
    v2 = String.UTF8View._foreignCount()();
  }

  else if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v3 = Data.count.getter();
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = __OFADD__(v4, 8);
  v6 = v4 + 8;
  if (v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = __OFADD__(v6, 8);
  v7 = v6 + 8;
  if (v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = v7 + 8;
  if (__OFADD__(v7, 8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v0[6];
  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = v0[5] & 0xFFFFFFFFFFFFLL;
    }

    goto LABEL_13;
  }

LABEL_20:
  v9 = String.UTF8View._foreignCount()();
LABEL_13:
  v5 = __OFADD__(v2, v9);
  result = v2 + v9;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A5940@<X0>(double *a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 7368801;
  v24 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000503C();
  sub_10000E1E8(v25);
  if (v27)
  {
    if (swift_dynamicCast())
    {
      v6 = v24;
      v22 = v23;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
  }

  v22 = 0;
  v6 = 0xE000000000000000;
LABEL_6:
  v7 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v25[0] = 0;
  v9 = [v7 dataWithJSONObject:isa options:2 error:v25];

  v10 = v25[0];
  if (!v9)
  {
    v14 = v10;

    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v23 = 0x6D6954746E657665;
  v24 = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  sub_10000503C();
  sub_10000E1E8(v25);
  if (v27)
  {
    if (swift_dynamicCast())
    {
      v13 = v23;
      goto LABEL_13;
    }
  }

  else
  {
    sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
  }

  Date.init()();
  Date.timeIntervalSince1970.getter();
  v13 = v16;
  (*(v3 + 8))(v5, v2);
LABEL_13:
  v23 = 0x707954746E657665;
  v24 = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  sub_10000503C();

  sub_10000E1E8(v25);
  if (!v27)
  {
    result = sub_10000A064(v26, &qword_10026D350, &qword_1001E6050);
    goto LABEL_17;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_17:
    v17 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_18;
  }

  v17 = v23;
  v18 = v24;
LABEL_18:
  v19 = v21;
  *a1 = v22;
  *(a1 + 1) = v6;
  *(a1 + 2) = v19;
  *(a1 + 3) = v12;
  *(a1 + 4) = v13;
  *(a1 + 5) = v17;
  *(a1 + 6) = v18;
  a1[7] = 0.0;
  a1[8] = 0.0;
  return result;
}

uint64_t sub_1000A5CF8(uint64_t a1)
{
  v3 = v1;
  _StringGuts.grow(_:)(28);

  sub_100006AB4();
  v16 = v5;
  v17 = v6;
  String.append(_:)(*(v1 + 24));
  v7._countAndFlagsBits = sub_10000B740();
  v7._object = 0xEA00000000002059;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 1701669236;
  v8._object = 0xE400000000000000;
  String.append(_:)(v8);
  v10 = v16;
  v9 = v17;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = *(v1 + 16);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = v11;
  v13[4] = a1;
  v15[2] = v12;
  v15[3] = v10;
  v15[4] = v9;
  v15[5] = _swiftEmptyArrayStorage;
  v15[6] = sub_1000A6BB0;
  v15[7] = v13;

  sub_100014A20(sub_10001D7C8, v15);
  if (v2)
  {
  }

  else
  {

    swift_beginAccess();
    v12 = *(v11 + 16);
  }

  return v12;
}

uint64_t sub_1000A5E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10003A400(0x696669746E656469, 0xEA00000000007265);
  if (v4)
  {
    return v5;
  }

  if (v10)
  {
    return 1;
  }

  v12 = v9;
  v13 = sub_10003A400(1702521203, 0xE400000000000000);
  v5 = 1;
  if (v14)
  {
    return v5;
  }

  v27 = v13;
  _StringGuts.grow(_:)(27);

  strcpy(v26, "DELETE FROM ");
  BYTE5(v26[1]) = 0;
  HIWORD(v26[1]) = -5120;
  String.append(_:)(*(a2 + 24));
  v15._countAndFlagsBits = 0x20455245485720;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x696669746E656469;
  v16._object = 0xEA00000000007265;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 1059077408;
  v17._object = 0xE400000000000000;
  String.append(_:)(v17);
  v19 = v26[0];
  v18 = v26[1];
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = v12;
  *(inited + 40) = 0;
  *(inited + 48) = 1;
  v21._countAndFlagsBits = v19;
  v21._object = v18;
  SQLDatabase.execute(sql:parameters:)(v21, inited);
  if (v22)
  {
    swift_setDeallocating();
    sub_10001CE50();

    return v5;
  }

  swift_setDeallocating();
  sub_10001CE50();
  result = swift_beginAccess();
  v23 = *(a3 + 16);
  v24 = __OFADD__(v23, v27);
  v25 = v23 + v27;
  if (!v24)
  {
    *(a3 + 16) = v25;
    return v25 < a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A6098(void *a1)
{
  _StringGuts.grow(_:)(54);
  v3._countAndFlagsBits = 0x4920545245534E49;
  v3._object = 0xEC000000204F544ELL;
  String.append(_:)(v3);
  String.append(_:)(*(v1 + 24));
  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 7368801;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  sub_1000062F0();
  v6._countAndFlagsBits = sub_100002F94();
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  sub_1000062F0();
  v7._countAndFlagsBits = 1702521203;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  sub_1000062F0();
  v8._countAndFlagsBits = 1701669236;
  v8._object = 0xE400000000000000;
  String.append(_:)(v8);
  sub_1000062F0();
  v9._countAndFlagsBits = 1701869940;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10._object = 0x80000001001F4DB0;
  v10._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v10);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61C0;
  v12 = a1[1];
  *(inited + 32) = *a1;
  *(inited + 40) = v12;
  *(inited + 48) = 3;
  v14 = a1[2];
  v13 = a1[3];
  *(inited + 56) = v14;
  *(inited + 64) = v13;
  *(inited + 72) = 0;

  sub_10003A5E0(v14, v13);
  *(inited + 80) = sub_1000A589C();
  *(inited + 88) = 0;
  *(inited + 96) = 1;
  *(inited + 120) = 2;
  v15 = a1[5];
  *(inited + 104) = a1[4];
  *(inited + 112) = 0;
  v16 = a1[6];
  *(inited + 128) = v15;
  *(inited + 136) = v16;
  *(inited + 144) = 3;

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  SQLDatabase.execute(sql:parameters:)(v17, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1000A6278()
{
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = v2 + 16;
  _StringGuts.grow(_:)(16);

  sub_100006AB4();
  v7 = v4;
  v8 = v5;
  String.append(_:)(*(v0 + 24));
  sub_10005AFD4(v7, v8, _swiftEmptyArrayStorage, sub_1000A6B7C, v2);
  if (v1)
  {
  }

  else
  {

    swift_beginAccess();
    v3 = *(v2 + 16);
  }

  return v3;
}

uint64_t sub_1000A639C(void *a1, uint64_t a2)
{
  sub_100003CA8(a1, a1[3]);
  v5 = sub_10001ADD4(7368801, 0xE300000000000000);
  if (!v2)
  {
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      sub_100003CA8(a1, a1[3]);
      sub_10003A420(__src);
      v9 = *(&__src[0] + 1);
      if (*(&__src[0] + 1) >> 60 != 15)
      {
        v10 = *&__src[0];
        sub_100003CA8(a1, a1[3]);
        v11 = sub_100041D2C(1701669236, 0xE400000000000000);
        if ((v12 & 1) == 0)
        {
          v13 = v11;
          sub_100003CA8(a1, a1[3]);
          v14 = sub_10001ADD4(1701869940, 0xE400000000000000);
          if (v15)
          {
            *&__src[0] = v8;
            *(&__src[0] + 1) = v7;
            *&__src[1] = v10;
            *(&__src[1] + 1) = v9;
            *&__src[2] = v13;
            *(&__src[2] + 1) = v14;
            *&__src[4] = 0;
            __src[3] = v15;
            swift_beginAccess();
            sub_1000A6B9C(v10, v9);
            sub_10009CFF8(__src, &v19);
            sub_1000EF588();
            v17 = *(*(a2 + 16) + 16);
            sub_1000EF68C(v17);
            v18 = *(a2 + 16);
            *(v18 + 16) = v17 + 1;
            memcpy((v18 + 72 * v17 + 32), __src, 0x48uLL);
            *(a2 + 16) = v18;
            swift_endAccess();
            sub_10003AE18(v10, v9);
            sub_10009D054(__src);
            return 1;
          }
        }

        sub_10003AE18(v10, v9);
      }
    }
  }

  return 1;
}

uint64_t sub_1000A6594(uint64_t a1)
{
  _StringGuts.grow(_:)(28);

  strcpy(v13, "DELETE FROM ");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  String.append(_:)(*(v1 + 24));
  v3._countAndFlagsBits = 0x20455245485720;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = sub_100002F94();
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x3B3F203D20;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v7 = v13[0];
  v6 = v13[1];
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  *(inited + 48) = 0;
  sub_10003A5E0(v9, v10);
  v11._countAndFlagsBits = v7;
  v11._object = v6;
  SQLDatabase.execute(sql:parameters:)(v11, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1000A66D8(__int128 *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  _StringGuts.grow(_:)(16);

  sub_100006AB4();
  *&v32 = v11;
  *(&v32 + 1) = v12;
  String.append(_:)(*(v5 + 24));
  v31 = v32;
  v13 = *(a1 + 32);
  if (v13 == 255)
  {
    v17 = _swiftEmptyArrayStorage;
  }

  else
  {
    v14 = a1[1];
    v32 = *a1;
    v33 = v14;
    v34 = v13;
    v30._countAndFlagsBits = 0x20455245485720;
    v30._object = 0xE700000000000000;
    sub_1000A6B0C(a1, &v29);
    v15._countAndFlagsBits = sub_1000A5514();
    String.append(_:)(v15);

    String.append(_:)(v30);

    sub_1000A51F8();
    v17 = v16;
    sub_10000A064(a1, &qword_10026A8C8, &qword_1001E8288);
  }

  v18._countAndFlagsBits = sub_10000B740();
  v18._object = 0xEE00656D69742059;
  String.append(_:)(v18);
  if ((a3 & 1) == 0)
  {
    v29._countAndFlagsBits = 0x2054494D494C20;
    v29._object = 0xE700000000000000;
    v30._countAndFlagsBits = a2;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    String.append(_:)(v29);
  }

  v20 = *(v5 + 16);
  v21 = v31;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v24[2] = v20;
  v25 = v21;
  v26 = v17;
  v27 = sub_1000A6AEC;
  v28 = __chkstk_darwin(v22);

  sub_100014A20(sub_100014F50, v24);
}

uint64_t sub_1000A6938(char a1, uint64_t (*a2)(void *))
{
  v5 = sub_10001ADD4(7368801, 0xE300000000000000);
  if (!v2)
  {
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      sub_10003A420(&v17);
      v10 = *(&v17 + 1);
      if (*(&v17 + 1) >> 60 != 15)
      {
        v11 = v17;
        v12 = sub_100041D2C(1701669236, 0xE400000000000000);
        if ((v13 & 1) == 0)
        {
          v14 = v12;
          v15 = sub_10001ADD4(1701869940, 0xE400000000000000);
          if (v16)
          {
            v18[0] = v8;
            v18[1] = v7;
            v18[2] = v11;
            v18[3] = v10;
            v18[4] = v14;
            v18[5] = v15;
            v18[7] = 0;
            v18[8] = 0;
            v18[6] = v16;
            sub_10003A5E0(v11, v10);
            a1 = a2(v18);
            sub_10009D054(v18);
            sub_10003AE18(v11, v10);
            return a1 & 1;
          }
        }

        sub_10003AE18(v11, v10);
      }
    }

    a1 = 1;
  }

  return a1 & 1;
}

uint64_t sub_1000A6B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026A8C8, &qword_1001E8288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A6B9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003A5E0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000A6BDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000A6C1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A6C80(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(86);
  v4._countAndFlagsBits = 0x5420455441455243;
  v4._object = 0xED000020454C4241;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 10272;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x6E69616D6F64;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x202C5458455420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_100005058();
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x202C5458455420;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = sub_100005798() & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x202C424F4C4220;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = sub_100005798() | 0x7079546500000000;
  v13._object = 0xE900000000000065;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x52454745544E4920;
  v14._object = 0xEA0000000000202CLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x69646F4D7473616CLL;
  v15._object = 0xEC00000064656966;
  String.append(_:)(v15);
  v16._object = 0x80000001001F4860;
  v16._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v16);
  v17._countAndFlagsBits = sub_100005058();
  String.append(_:)(v17);
  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6E69616D6F64;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10537;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  SQLDatabase.execute(sql:parameters:)(v21, _swiftEmptyArrayStorage);
}

uint64_t sub_1000A6E98(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10000BDB0();
    if (v2)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (v2)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0xEB00000000657A69;
    v7 = 0x53676F6C6B636162;
  }

  sub_1000526FC(a1, v7, v8);
}

uint64_t sub_1000A6F08@<X0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0x656D69547473616CLL;
    }

    if (v2 == 1)
    {
      v4 = 0x80000001001F4E70;
    }

    else
    {
      v4 = 0xEC000000656E6F5ALL;
    }
  }

  else
  {
    v4 = 0xEB00000000657A69;
    v3 = 0x53676F6C6B636162;
  }

  sub_1000515B8(v3, v4, a2);
}

uint64_t sub_1000A6FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  sub_100051FD8(&v20);
  if (!v5)
  {
    if (*(&v20 + 1))
    {
      v22 = v20;
      v23 = v21[0];
      v24 = v21[1];
      sub_10004ED94(&v22, &v20, qword_10026A9D8, &unk_1001E8390);
      sub_10004ED94(&v22, v17, qword_10026A9D8, &unk_1001E8390);

      sub_100002C4C(&v18, &v19);
      swift_beginAccess();
      sub_100052CE8();
      swift_endAccess();
      sub_10000A064(&v22, qword_10026A9D8, &unk_1001E8390);
      sub_100002C00(v21);
    }

    else
    {
      sub_10000A064(&v20, &qword_10026A9D0, &qword_1001E8388);
      if (qword_1002686B8 != -1)
      {
        swift_once();
      }

      v25 = qword_100287818;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001E5F70;
      *(&v23 + 1) = type metadata accessor for AppKeyValueTable();
      *&v22 = a2;

      v11 = AMSLogKey();
      if (v11)
      {
        v12 = v11;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v22);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v13._object = 0x80000001001F4E30;
      v13._countAndFlagsBits = 0xD000000000000018;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
      *(&v23 + 1) = &type metadata for String;
      *&v22 = a4;
      *(&v22 + 1) = a5;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v22, &qword_10026D350, &qword_1001E6050);
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
      LogInterpolation.init(stringInterpolation:)();
      v15 = static os_log_type_t.error.getter();
      sub_1000036B0(v15, v10);
    }
  }

  return 1;
}

uint64_t sub_1000A7348(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A73B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 252) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_20:
      v10 = *(a1 + v3);
      if (v10 >= 4)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 253;
}

void sub_1000A74C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1000A7698(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(55);
  v4._countAndFlagsBits = 0x5420455441455243;
  v4._object = 0xED000020454C4241;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 10272;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  sub_100004B94();
  sub_10000797C();
  String.append(_:)(v7);
  v8._object = 0x80000001001F4F20;
  v8._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v8);
  v9._countAndFlagsBits = sub_100002F08();
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x202C4C41455220;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = sub_1000073D0();
  v11._object = 0xE600000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x29424F4C4220;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  SQLDatabase.execute(sql:parameters:)(v13, _swiftEmptyArrayStorage);
}

uint64_t sub_1000A77EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  _StringGuts.grow(_:)(39);

  sub_10000B754();
  v31 = v8;
  v32 = v7;
  String.append(_:)(*(v3 + 24));
  v9._countAndFlagsBits = sub_100002FA8(0x570Au);
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  sub_100004B94();
  sub_10000797C();
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x3B3F203D20;
  v11._object = 0xE500000000000000;
  String.append(_:)(v11);
  v12 = v31;
  v13 = v32;
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;
  sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v15 = swift_allocBox();
  v17 = v16;
  v18 = type metadata accessor for ScheduleInfo(0);
  sub_10000A7C0(v17, 1, 1, v18);
  v19 = *(v3 + 16);
  sub_100002FB8();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v15;
  v25 = v19;
  v26 = v12;
  v27 = v13;
  v28 = inited;
  v29 = sub_1000A9488;
  v30 = v20;

  v21 = v33;
  sub_100014A20(sub_10001D7C8, v24);
  if (v21)
  {

    swift_setDeallocating();
    sub_10001CE50();
  }

  else
  {
    swift_setDeallocating();
    sub_10001CE50();

    sub_10000602C(v17, &v31);
    sub_1000A94A8(v17, a3);
  }
}

uint64_t sub_1000A7A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v4 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v36 - v13;
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = swift_projectBox();
  sub_10003A420(&v45);
  if (v3)
  {
    return 0;
  }

  v39 = v11;
  v40 = v16;
  v38 = v17;
  v41 = v8;
  v42 = v6;
  v18 = v43;
  v19 = v45;
  sub_100041D2C(0x69646F4D7473616CLL, 0xEC00000064656966);
  v37 = v19;
  if (*(&v19 + 1) >> 60 != 15)
  {
    v21 = v20;
    v22 = v37;
    sub_10003A5E0(v37, *(&v37 + 1));
    sub_10003A638(6, &v45);
    if (v46)
    {
      sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
      v23 = swift_dynamicCast();
      sub_10003AE18(v22, *(&v22 + 1));
      if (v23)
      {
        v43 = v44;
        if (v21)
        {
          static Date.now.getter();
          Date.timeIntervalSinceReferenceDate.getter();
          v24 = v41;
          (*(v41 + 8))(v14, v7);
          v25 = *(&v37 + 1);
        }

        else
        {
          v25 = *(&v37 + 1);
          v24 = v41;
        }

        v26 = v42;
        v32 = v39;
        v33 = v40;
        Date.init(timeIntervalSinceReferenceDate:)();
        (*(v24 + 16))(v32, v33, v7);
        sub_100041D4C(v43, v32, v26);
        (*(v24 + 8))(v33, v7);
        sub_10003AE18(v22, v25);
        v34 = type metadata accessor for ScheduleInfo(0);
        sub_10000A7C0(v26, 0, 1, v34);
        v35 = v38;
        swift_beginAccess();
        sub_1000A9518(v26, v35);
        return 0;
      }
    }

    else
    {
      sub_10003AE18(v22, *(&v22 + 1));
      sub_100002C5C(&v45);
    }
  }

  if (qword_1002686B8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1001E5F70;
  v46 = type metadata accessor for AppSchedulesTable();
  *&v45 = v18;

  v28 = AMSLogKey();
  if (v28)
  {
    v29 = v28;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v45);
  LogInterpolation.init(stringLiteral:)();
  v30 = static os_log_type_t.error.getter();
  sub_1000036B0(v30, v27);
  sub_10003AE18(v37, *(&v37 + 1));

  return 0;
}

uint64_t sub_1000A7F38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v44 = v1;
    v4 = sub_10000BDE4();
    sub_100027C2C(v4, v5, v6);
    v7 = _swiftEmptyArrayStorage;
    v8 = _swiftEmptyArrayStorage[2];
    v9 = 2 * v8;
    v10 = v2;
    do
    {
      v42 = v7;
      v11 = v7[3];
      v12 = v8 + 1;
      if (v8 >= v11 >> 1)
      {
        sub_100027C2C((v11 > 1), v8 + 1, 1);
        v7 = v42;
      }

      v7[2] = v12;
      v13 = &v7[v9];
      v13[4] = 63;
      v13[5] = 0xE100000000000000;
      v9 += 2;
      v8 = v12;
      --v10;
    }

    while (v10);
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000A0698();
    v40._countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();
    v40._object = v14;

    v42 = _swiftEmptyArrayStorage;
    v15 = sub_10000BDE4();
    sub_10009B7E0(v15, v16, v17);
    v18 = _swiftEmptyArrayStorage;
    v19 = (a1 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v42 = v18;
      v23 = v18[2];
      v22 = v18[3];

      if (v23 >= v22 >> 1)
      {
        sub_10009B7E0((v22 > 1), v23 + 1, 1);
        v18 = v42;
      }

      v18[2] = v23 + 1;
      v24 = &v18[3 * v23];
      v24[4] = v20;
      v24[5] = v21;
      *(v24 + 48) = 3;
      v19 += 2;
      --v2;
    }

    while (v2);
    _StringGuts.grow(_:)(43);

    sub_10000B754();
    v42 = v26;
    v43 = v25;
    v27 = v41;
    String.append(_:)(*(v41 + 24));
    v28._countAndFlagsBits = sub_100002FA8(0x570Au);
    v28._object = 0xE700000000000000;
    String.append(_:)(v28);
    sub_100004B94();
    sub_10000797C();
    String.append(_:)(v29);
    v30._countAndFlagsBits = 0x28204E490ALL;
    v30._object = 0xE500000000000000;
    String.append(_:)(v30);
    String.append(_:)(v40);

    v31._countAndFlagsBits = 15145;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v32 = v42;
    v33 = v43;
    v34 = swift_allocObject();
    type metadata accessor for ScheduleInfo(0);
    *(v34 + 16) = Dictionary.init(dictionaryLiteral:)();
    v35 = *(v27 + 16);
    sub_100002FB8();
    v36 = swift_allocObject();
    *(v36 + 16) = v27;
    *(v36 + 24) = v34;
    v39[2] = v35;
    v39[3] = v32;
    v39[4] = v33;
    v39[5] = v18;
    v39[6] = sub_1000A9404;
    v39[7] = __chkstk_darwin(v36);

    v37 = v44;
    sub_100014A20(sub_10001D7C8, v39);
    if (v37)
    {
    }

    else
    {

      sub_10000602C(v34 + 16, &v42);
      v35 = *(v34 + 16);
    }

    return v35;
  }

  else
  {
    type metadata accessor for ScheduleInfo(0);
    return Dictionary.init(dictionaryLiteral:)();
  }
}

uint64_t sub_1000A82DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v51 = a2;
  v3 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for ScheduleInfo(0);
  __chkstk_darwin(v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v19 = v53;
  v20 = sub_10001ADD4(0x696669746E656469, 0xEA00000000007265);
  if (v19)
  {
    return v18 & 1;
  }

  v45 = v16;
  v46 = v13;
  v43 = v20;
  v44 = v6;
  v53 = v21;
  v49 = v10;
  v50 = v18;
  v47 = v8;
  v48 = v5;
  sub_10003A420(&v55);
  v22 = v55;
  sub_100041D2C(0x69646F4D7473616CLL, 0xEC00000064656966);
  v42 = v22;
  if (*(&v22 + 1) >> 60 != 15)
  {
    v25 = v51;
    if (!v53)
    {
      goto LABEL_12;
    }

    v26 = v23;
    v27 = *(&v42 + 1);
    v28 = v42;
    sub_10003A5E0(v42, *(&v42 + 1));
    sub_10003A638(6, &v55);
    if (!v56)
    {
      sub_10003AE18(v28, v27);

      sub_100002C5C(&v55);
      goto LABEL_6;
    }

    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v29 = swift_dynamicCast();
    sub_10003AE18(v28, v27);
    if (v29)
    {
      v51 = v54;
      if (v26)
      {
        v30 = v45;
        static Date.now.getter();
        Date.timeIntervalSinceReferenceDate.getter();
        v31 = v49;
        v32 = v9;
        (*(v49 + 8))(v30, v9);
        v33 = *(&v42 + 1);
      }

      else
      {
        v33 = *(&v42 + 1);
        v32 = v9;
        v31 = v49;
      }

      v18 = v46;
      v39 = v47;
      v40 = v50;
      Date.init(timeIntervalSinceReferenceDate:)();
      (*(v31 + 16))(v18, v40, v32);
      sub_100041D4C(v51, v18, v39);
      v41 = v48;
      sub_1000A9424(v39, v48);
      LOBYTE(v18) = 1;
      sub_10000A7C0(v41, 0, 1, v44);
      swift_beginAccess();
      sub_1000AA330();
      swift_endAccess();
      sub_10003AE18(v42, v33);
      sub_100042144(v39, type metadata accessor for ScheduleInfo);
      (*(v31 + 8))(v50, v32);
      return v18 & 1;
    }
  }

LABEL_6:
  v25 = v51;
LABEL_12:
  if (qword_1002686B8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1001E5F70;
  v56 = type metadata accessor for AppSchedulesTable();
  *&v55 = v25;

  v35 = AMSLogKey();
  v36 = v42;
  if (v35)
  {
    v37 = v35;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v55);
  LogInterpolation.init(stringLiteral:)();
  v38 = static os_log_type_t.error.getter();
  sub_1000036B0(v38, v34);
  sub_10003AE18(v36, *(&v42 + 1));

  LOBYTE(v18) = 0;
  return v18 & 1;
}

uint64_t sub_1000A88F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _StringGuts.grow(_:)(36);

  v17[0] = 0xD000000000000017;
  v17[1] = 0x80000001001F4F60;
  String.append(_:)(*(v2 + 24));
  v6._countAndFlagsBits = sub_100002FA8(0x570Au);
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  sub_100004B94();
  sub_10000797C();
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x3F2820454B494C0ALL;
  v8._object = 0xEA00000000003B29;
  String.append(_:)(v8);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  v11 = *(v2 + 16);
  sub_100002FB8();
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  *(v12 + 24) = v10;
  v16[2] = v11;
  v16[3] = 0xD000000000000017;
  v16[4] = 0x80000001001F4F60;
  v16[5] = inited;
  v16[6] = sub_1000A93E4;
  v16[7] = v12;

  v13 = v18;
  sub_100014A20(sub_100014F50, v16);
  if (v13)
  {

    swift_setDeallocating();
    v14 = inited;
    sub_10001CE50();
  }

  else
  {
    swift_setDeallocating();
    sub_10001CE50();

    sub_10000602C(v10 + 16, v17);
    v14 = *(v10 + 16);
  }

  return v14;
}

uint64_t sub_1000A8B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001ADD4(0x696669746E656469, 0xEA00000000007265);
  if (!v3)
  {
    v9 = v7;
    if (v7)
    {
      v10 = v6;
      swift_beginAccess();
      sub_1000EF5A0();
      v11 = *(*(a3 + 16) + 16);
      sub_1000EF6A4(v11);
      v12 = *(a3 + 16);
      *(v12 + 16) = v11 + 1;
      v13 = v12 + 16 * v11;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      *(a3 + 16) = v12;
      swift_endAccess();
      v8 = 1;
    }

    else
    {
      if (qword_1002686B8 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1001E5F70;
      v19[3] = type metadata accessor for AppSchedulesTable();
      v19[0] = a2;

      v15 = AMSLogKey();
      if (v15)
      {
        v16 = v15;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v19);
      LogInterpolation.init(stringLiteral:)();
      v17 = static os_log_type_t.error.getter();
      sub_1000036B0(v17, v14);

      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t sub_1000A8D54(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(28);

  sub_1000082CC();
  v12._countAndFlagsBits = v5;
  v12._object = v6;
  String.append(_:)(*(v2 + 24));
  v7._countAndFlagsBits = sub_100002FA8(0x5720u);
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  sub_100004B94();
  sub_10000797C();
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x3B3F203D20;
  v9._object = 0xE500000000000000;
  String.append(_:)(v9);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;

  SQLDatabase.execute(sql:parameters:)(v12, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

uint64_t sub_1000A8E8C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = sub_10000BDE4();
    sub_100027C2C(v3, v4, v5);
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 2 * v6;
    v8 = v1;
    do
    {
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v6 + 1;
      if (v6 >= v9 >> 1)
      {
        sub_100027C2C((v9 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v11 = &_swiftEmptyArrayStorage[v7];
      v11[4] = 63;
      v11[5] = 0xE100000000000000;
      v7 += 2;
      v6 = v10;
      --v8;
    }

    while (v8);
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_1000A0698();
    v28._countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();
    v28._object = v12;

    v13 = sub_10000BDE4();
    sub_10009B7E0(v13, v14, v15);
    v16 = (v2 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];

      if (v20 >= v19 >> 1)
      {
        sub_10009B7E0((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[3 * v20];
      v21[4] = v17;
      v21[5] = v18;
      *(v21 + 48) = 3;
      v16 += 2;
      --v1;
    }

    while (v1);
    _StringGuts.grow(_:)(32);

    sub_1000082CC();
    v30._countAndFlagsBits = v22;
    v30._object = v23;
    String.append(_:)(*(v29 + 24));
    v24._countAndFlagsBits = sub_100002FA8(0x5720u);
    v24._object = 0xE700000000000000;
    String.append(_:)(v24);
    sub_100004B94();
    sub_10000797C();
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0x28204E4920;
    v26._object = 0xE500000000000000;
    String.append(_:)(v26);
    String.append(_:)(v28);

    v27._countAndFlagsBits = 15145;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    SQLDatabase.execute(sql:parameters:)(v30, _swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1000A9108(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_100190A7C();
  sub_10007B9A4(&qword_10026AB48, &unk_1001E8700);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = 0;
  v6 = [v4 dataWithPropertyList:isa format:100 options:0 error:&v29];

  v7 = v29;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v11._countAndFlagsBits = 0xD000000000000017;
    v11._object = 0x80000001001F48E0;
    String.append(_:)(v11);
    String.append(_:)(*(v2 + 24));
    v12._countAndFlagsBits = 10272;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    sub_100004B94();
    sub_10000797C();
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8236;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = sub_1000073D0();
    v15._object = 0xE600000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 8236;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = sub_100002F08();
    String.append(_:)(v17);
    v18._object = 0x80000001001F4F40;
    v18._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v18);
    v20 = v29;
    v19 = v30;
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E5F60;
    v22 = a1 + *(type metadata accessor for ScheduleInfo(0) + 20);
    v23 = (v22 + *(type metadata accessor for ScheduleInfo.Metadata(0) + 44));
    v24 = v23[1];
    *(inited + 32) = *v23;
    *(inited + 40) = v24;
    *(inited + 48) = 3;
    *(inited + 56) = v8;
    *(inited + 64) = v10;
    *(inited + 72) = 0;

    sub_10003A5E0(v8, v10);
    static Date.timeIntervalSinceReferenceDate.getter();
    *(inited + 80) = v25;
    *(inited + 88) = 0;
    *(inited + 96) = 2;
    v26._countAndFlagsBits = v20;
    v26._object = v19;
    SQLDatabase.execute(sql:parameters:)(v26, inited);
    swift_setDeallocating();
    sub_10001CE50();

    return sub_1000253FC(v8, v10);
  }

  else
  {
    v28 = v7;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_1000A9424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A94A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9518(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A95D8()
{

  return v0;
}

uint64_t sub_1000A9600(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  String.append(_:)(*&a1);

  v8._countAndFlagsBits = 95;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v9._countAndFlagsBits = a3;
  v9._object = a4;
  String.append(_:)(v9);

  object = v18._object;
  _StringGuts.grow(_:)(26);

  strcpy(&v18, "CREATE INDEX ");
  HIWORD(v18._object) = -4864;
  v11._countAndFlagsBits = 1601725545;
  v11._object = object;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 542002976;
  v12._object = 0xE400000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 40;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 15145;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  SQLDatabase.execute(sql:parameters:)(v18, _swiftEmptyArrayStorage);
}

uint64_t sub_1000A97A0()
{
  sub_1000A95D8();

  return swift_deallocClassInstance();
}

id sub_1000A9854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppURLSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A9890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AsyncLazyCache.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_1000A994C()
{
  v1 = *v0;

  v2 = *(*v0 + 14);
  v5 = type metadata accessor for AsyncLazyCache.State(0, v1[10], v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  return v0;
}

uint64_t sub_1000A99E0()
{
  sub_1000A994C();

  return swift_deallocClassInstance();
}

void sub_1000A9A68(uint64_t a1)
{
  sub_1000A9E10();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1000A9AE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = 253 - (2u >> (8 * v4));
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_24;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1000A9C2C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 <= 3)
  {
    v6 = 253 - (2u >> (8 * v5));
  }

  else
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (v6 >= a3)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((~(-1 << v8) + a3 - v6) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v6 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v7] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }

  else
  {
    v10 = ~v6 + a2;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v7);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }
}

void sub_1000A9E10()
{
  if (!qword_10026AD88)
  {
    v0 = sub_1000A9E58();
    if (!v1)
    {
      atomic_store(v0, &qword_10026AD88);
    }
  }
}

unint64_t sub_1000A9E58()
{
  result = qword_10026AD90;
  if (!qword_10026AD90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10026AD90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AsyncLazyCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000A9F94()
{
  result = qword_10026AD98;
  if (!qword_10026AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026AD98);
  }

  return result;
}

uint64_t sub_1000A9FF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100002C4C(a1, v15);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1000AC178(v15, a2);
    *v2 = v14;
    return sub_10000E1E8(a2);
  }

  else
  {
    sub_10000A00C(a1, &qword_10026D350, &qword_1001E6050);
    sub_1000AB5B4(a2, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    sub_10000E1E8(a2);
    return sub_10000A00C(v15, &qword_10026D350, &qword_1001E6050);
  }
}

void sub_1000AA0C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_10003B104(a1, v28);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000631C();
    v7 = sub_1000AC288(v5, a2, v6);
    sub_10000A6E0(v7, v8, v9, v10, v11, v12, v13, v14, v26, v27);
  }

  else
  {
    sub_10000A00C(a1, &qword_10026AF58, &qword_1001E86F0);
    v15 = *v2;
    sub_10004C144(a2, sub_100046278, sub_10004C204);
    if (v16)
    {
      sub_100017D08();
      sub_100002FC4();
      v17 = sub_10007B9A4(&unk_10026AF60, &qword_1001E86F8);
      sub_100023CE0(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27);
      sub_1000115E8();
      sub_10003B104((v25 + 40 * a2), v28);
      sub_10007B9A4(&qword_10026AB48, &unk_1001E8700);
      sub_100042038();
      sub_10000A144();
      _NativeDictionary._delete(at:)();
      *v3 = v15;
    }

    else
    {
      v29 = 0;
      memset(v28, 0, sizeof(v28));
    }

    sub_10000A00C(v28, &qword_10026AF58, &qword_1001E86F0);
  }
}

void sub_1000AA20C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100002C4C(a1, v36);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000631C();
    sub_1000AC71C(v5, a2, v6, v7, v8, v9, v10, v11, v32, v34);
    sub_10000A6E0(v12, v13, v14, v15, v16, v17, v18, v19, v33, v35);
  }

  else
  {
    sub_10000A00C(a1, &qword_10026D350, &qword_1001E6050);
    v20 = *v2;
    sub_10000BDF4();
    sub_10004C144(a2, v21, sub_1000AB020);
    if (v22)
    {
      sub_100017D08();
      sub_100002FC4();
      v23 = sub_10007B9A4(&qword_10026AFB0, &qword_1001E8738);
      sub_100023CE0(v23, v24, v25, v26, v27, v28, v29, v30, v32, v34);
      sub_1000115E8();
      sub_100002C4C((v31 + 32 * a2), v36);
      sub_1000AE324();
      sub_10000A144();
      _NativeDictionary._delete(at:)();
      *v3 = v20;
    }

    else
    {
      memset(v36, 0, sizeof(v36));
    }

    sub_10000A00C(v36, &qword_10026D350, &qword_1001E6050);
  }
}

void sub_1000AA330()
{
  sub_100008738();
  sub_1000293A8();
  v2 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  __chkstk_darwin(v2 - 8);
  v3 = sub_10001BD5C();
  type metadata accessor for ScheduleInfo(v3);
  sub_100002DDC();
  __chkstk_darwin(v4);
  if (sub_100009F34(v0, 1, v5) == 1)
  {
    v6 = sub_1000159D0();
    sub_10000A00C(v6, v7, &qword_1001E8720);
    sub_1000582F4();

    v8 = sub_100002FD8();
    sub_10000A00C(v8, v9, &qword_1001E8720);
  }

  else
  {
    v10 = sub_1000159D0();
    sub_1000AE26C(v10, v11, v12);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10001CCFC();
    sub_1000AC95C(v13, v14, v15, v16);

    *v1 = v17;
  }

  sub_100003B6C();
}

void sub_1000AA4AC()
{
  sub_100008738();
  sub_1000293A8();
  v2 = sub_10007B9A4(&qword_10026AF40, &unk_1001EEAD0);
  __chkstk_darwin(v2 - 8);
  v3 = sub_10001BD5C();
  type metadata accessor for MercuryCacheUpdateData.DataKind(v3);
  sub_100002DDC();
  __chkstk_darwin(v4);
  if (sub_100009F34(v0, 1, v5) == 1)
  {
    v6 = sub_1000159D0();
    sub_10000A00C(v6, v7, &unk_1001EEAD0);
    sub_1000582F4();

    v8 = sub_100002FD8();
    sub_10000A00C(v8, v9, &unk_1001EEAD0);
  }

  else
  {
    v10 = sub_1000159D0();
    sub_1000AE26C(v10, v11, v12);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10001CCFC();
    sub_1000ACD04(v13, v14, v15, v16);

    *v1 = v17;
  }

  sub_100003B6C();
}

uint64_t sub_1000AA628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_100012A94();
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000AA674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100012A94();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_10000A864(v3);
}

uint64_t sub_1000AA6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_100012A94(), (v5 & 1) != 0))
  {
    v6 = *(*(a3 + 56) + 32 * v4);
  }

  else
  {
    sub_1000060DC();
    return 1;
  }

  return v6;
}

void *sub_1000AA768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100012A94();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1000AA7B0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      updated = type metadata accessor for MercuryCacheUpdateCoordinator();
      sub_1000AE384(updated, v5, v6, updated, v7, v8, v9, v10, v3, v14);
      return v15;
    }
  }

  else if (*(a2 + 16))
  {
    v12 = sub_1000AACE4(a1);
    if (v13)
    {
      sub_10000A864(v12);
    }
  }

  return 0;
}