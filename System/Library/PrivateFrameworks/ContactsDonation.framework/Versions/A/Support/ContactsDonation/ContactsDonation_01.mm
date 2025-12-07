uint64_t sub_100017428()
{
  v1 = sub_100003760(&qword_100044F50, &qword_100030240);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v14 - v3;
  v5 = *(type metadata accessor for AddressBookDetails(0) + 112);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(v0 + v5, 1, v6);
  result = 0;
  if (v9 != 1)
  {
    sub_100018138(v0 + v5, v4);
    result = v8(v4, 1, v6);
    if (result == 1)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    Date.timeIntervalSinceNow.getter();
    v12 = v11;
    v13 = v11;
    result = (*(v7 + 8))(v4, v6);
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v12 > -9.22337204e18)
    {
      if (v12 < 9.22337204e18)
      {
        if (!__OFSUB__(0, v12))
        {
          return -v12 / 86400;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000175F0()
{
  v1 = sub_100003760(&qword_100044F50, &qword_100030240);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v14 - v3;
  v5 = *(type metadata accessor for AddressBookDetails(0) + 116);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(v0 + v5, 1, v6);
  result = 0;
  if (v9 != 1)
  {
    sub_100018138(v0 + v5, v4);
    result = v8(v4, 1, v6);
    if (result == 1)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    Date.timeIntervalSinceNow.getter();
    v12 = v11;
    v13 = v11;
    result = (*(v7 + 8))(v4, v6);
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v12 > -9.22337204e18)
    {
      if (v12 < 9.22337204e18)
      {
        if (!__OFSUB__(0, v12))
        {
          return -v12 / 86400;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000177B8(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v85 = *(v3 - 8);
  v5 = __chkstk_darwin(v3, v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v78 - v9;
  v11 = sub_100003760(&qword_100044F50, &qword_100030240);
  v13 = __chkstk_darwin(v11 - 8, v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v78 - v18;
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v78 - v22;
  v25 = __chkstk_darwin(v21, v24);
  v82 = &v78 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v84 = &v78 - v29;
  __chkstk_darwin(v28, v30);
  v32 = (&v78 - v31);
  v33 = type metadata accessor for AddressBookDetails(0);
  v86 = v33;
  v35 = *(v33 + 20);
  v36 = *(v1 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    goto LABEL_63;
  }

  v81 = v19;
  *(v1 + v35) = v38;
  if (qword_1000446B0 != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    __chkstk_darwin(v33, v34);
    *(&v78 - 2) = a1;
    result = sub_10000A7AC(sub_1000197DC, (&v78 - 4), v39);
    if (result)
    {
      goto LABEL_8;
    }

    v42 = v86[6];
    v43 = *(v1 + v42);
    v37 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v37)
    {
      break;
    }

    *(v1 + v42) = v44;
    result = type metadata accessor for ContactDetails(0);
    if (*(a1 + *(result + 36)) == 1)
    {
      v45 = v86[7];
      v46 = *(v1 + v45);
      v37 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v37)
      {
        goto LABEL_67;
      }

      *(v1 + v45) = v47;
    }

LABEL_8:
    if (qword_1000446B8 != -1)
    {
      result = swift_once();
    }

    __chkstk_darwin(result, v41);
    *(&v78 - 2) = a1;
    result = sub_10000A7AC(sub_1000180FC, (&v78 - 4), v48);
    if (result)
    {
      v49 = v86[8];
      v50 = *(v1 + v49);
      v37 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v37)
      {
        goto LABEL_66;
      }

      *(v1 + v49) = v51;
    }

    v83 = v23;
    v79 = v15;
    v80 = v7;
    v52 = type metadata accessor for ContactDetails(0);
    v23 = *(v52 + 96);
    sub_100018138(a1 + v23, v32);
    v53 = *(v85 + 48);
    v54 = v53(v32, 1, v3);
    sub_1000181A8(v32);
    if (v54 == 1)
    {
      goto LABEL_20;
    }

    v78 = v52;
    v55 = v84;
    sub_100018138(a1 + v23, v84);
    result = v53(v55, 1, v3);
    if (result == 1)
    {
      goto LABEL_68;
    }

    v56 = v82;
    sub_100018138(v1 + v86[28], v82);
    if (v53(v56, 1, v3) == 1)
    {
      static Date.distantFuture.getter();
      if (v53(v56, 1, v3) != 1)
      {
        sub_1000181A8(v56);
      }
    }

    else
    {
      (*(v85 + 32))(v10, v56, v3);
    }

    v57 = v84;
    v58 = static Date.< infix(_:_:)();
    v59 = v10;
    v10 = *(v85 + 8);
    (v10)(v59, v3);
    (v10)(v57, v3);
    v52 = v78;
    if (v58)
    {
LABEL_20:
      sub_100018210(a1 + v23, v1 + v86[28]);
    }

    v60 = *(v52 + 100);
    v15 = v83;
    sub_100018138(a1 + v60, v83);
    v61 = v53(v15, 1, v3);
    result = sub_1000181A8(v15);
    if (v61 != 1)
    {
      v62 = v81;
      sub_100018138(a1 + v60, v81);
      result = v53(v62, 1, v3);
      if (result == 1)
      {
        goto LABEL_69;
      }

      v15 = v86[29];
      v63 = v79;
      sub_100018138(v1 + v15, v79);
      v64 = v53(v63, 1, v3);
      v23 = v80;
      if (v64 == 1)
      {
        static Date.distantPast.getter();
        if (v53(v63, 1, v3) != 1)
        {
          sub_1000181A8(v63);
        }
      }

      else
      {
        (*(v85 + 32))(v80, v63, v3);
      }

      v65 = v62;
      v66 = static Date.> infix(_:_:)();
      v10 = (v85 + 8);
      v67 = *(v85 + 8);
      v67(v23, v3);
      result = (v67)(v65, v3);
      if (v66)
      {
        result = sub_100018210(a1 + v60, v1 + v15);
      }
    }

    if (qword_1000446C0 != -1)
    {
      result = swift_once();
    }

    v32 = *(qword_100046260 + 16);
    if (v32)
    {
      v7 = (qword_100046260 + 56);
      v15 = v87;
      do
      {
        v3 = *(v7 - 2);

        swift_getAtKeyPath();
        if (v87[0] == 1)
        {
          v68 = swift_modifyAtWritableKeyPath();
          if (__OFADD__(*v69, 1))
          {
            goto LABEL_60;
          }

          ++*v69;
          v68(v87, 0);
        }

        v7 += 32;
        v32 = (v32 - 1);
      }

      while (v32);
    }

    if (qword_1000446D0 != -1)
    {
      result = swift_once();
    }

    v70 = *(qword_100046270 + 16);
    if (v70)
    {
      v32 = (qword_100046270 + 40);
      v7 = v87;
      do
      {
        v3 = *v32;

        swift_getAtKeyPath();
        if (v87[0] == 1)
        {
          v71 = swift_modifyAtWritableKeyPath();
          if (__OFADD__(*v72, 1))
          {
            goto LABEL_61;
          }

          ++*v72;
          v71(v87, 0);
        }

        v32 += 2;
        --v70;
      }

      while (v70);
    }

    if (qword_1000446C8 != -1)
    {
      result = swift_once();
    }

    v32 = *(qword_100046268 + 16);
    if (!v32)
    {
      return result;
    }

    v7 = (qword_100046268 + 56);
    v15 = v87;
    while (1)
    {
      v3 = *(v7 - 1);

      swift_getAtKeyPath();
      v23 = *v87;
      result = swift_modifyAtWritableKeyPath();
      if (__OFADD__(*v76, v23))
      {
        break;
      }

      *v76 += v23;
      if (v76[1] < v23)
      {
        v76[1] = v23;
      }

      if (v23 < 1)
      {
        v74 = v76[3];
        v73 = v76 + 3;
        v75 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        v77 = v76[2];
        v73 = v76 + 2;
        v75 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          __break(1u);
          return result;
        }
      }

      *v73 = v75;
      (result)(v87, 0);

      v7 += 32;
      v32 = (v32 - 1);
      if (!v32)
      {
        return result;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v33 = swift_once();
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_100018138(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_100044F50, &qword_100030240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000181A8(uint64_t a1)
{
  v2 = sub_100003760(&qword_100044F50, &qword_100030240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018210(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_100044F50, &qword_100030240);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_1000182A0()
{
  v1 = *(v0 + *(type metadata accessor for AllContactsInBatches(0) + 24));
  sub_100003760(&unk_100045620, &unk_100030750);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100030440;
  *(v2 + 32) = CNContactIdentifierKey;
  v3 = objc_allocWithZone(CNContactFetchRequest);
  v4 = CNContactIdentifierKey;
  sub_100003760(&qword_100044FD0, &qword_100030260);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v3 initWithKeysToFetch:isa];

  v33 = 0;
  v7 = [v1 executeFetchRequest:v6 error:&v33];

  if (v7)
  {
    v8 = v33;
    v9 = [v7 value];

    v34 = v9;
    sub_100003760(&qword_1000458F0, &qword_100030938);
    swift_dynamicCast();
    v10 = v33;
    if (v33 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      v13 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v14 = *(v10 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v17 = [v14 identifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_10002642C(0, *(v13 + 2) + 1, 1, v13);
        }

        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        if (v22 >= v21 >> 1)
        {
          v13 = sub_10002642C((v21 > 1), v22 + 1, 1, v13);
        }

        *(v13 + 2) = v22 + 1;
        v23 = &v13[16 * v22];
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
        ++v12;
        if (v16 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_23:
  }

  else
  {
    v24 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = sub_10001DC5C(v29, v30, &v34);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "failed to fetch contact identifiers: %s", v27, 0xCu);
      sub_100003850(v28);
    }

    return _swiftEmptyArrayStorage;
  }

  return v13;
}

unint64_t sub_1000186B0(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_100018728(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1000187B0()
{
  v1 = sub_100019044(v0);
  sub_10001971C(v0);
  return v1;
}

uint64_t sub_1000187E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_12:
    sub_100018FE0(v3, v4);
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3 - 1;
    while (1)
    {
      v9 = sub_100016E28();
      if (!v9)
      {
        break;
      }

      *(a2 + 8 * v7) = v9;
      if (v8 == v7)
      {
        goto LABEL_12;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v5 = v7;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000188A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100016E28();
  *a1 = result;
  return result;
}

void sub_1000188C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100003760(&qword_100044CC0, &unk_100030940);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1000189B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003760(&qword_100044F50, &qword_100030240);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 112);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100018AC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003760(&qword_100044F50, &qword_100030240);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 112);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100018BCC(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_10000702C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100018CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
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

    return (v10 + 1);
  }
}

uint64_t sub_100018D78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100018E30(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_100018ED4(319);
    if (v2 <= 0x3F)
    {
      sub_100018F38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100018ED4(uint64_t a1)
{
  if (!qword_100045A58)
  {
    sub_1000039EC(&qword_100045A60, "*W");
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100045A58);
    }
  }
}

unint64_t sub_100018F38()
{
  result = qword_100045A68;
  if (!qword_100045A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045A68);
  }

  return result;
}

unint64_t sub_100018F88()
{
  result = qword_100045AA0;
  if (!qword_100045AA0)
  {
    type metadata accessor for AllContactsInBatches(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AA0);
  }

  return result;
}

uint64_t sub_100018FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllContactsInBatches(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100019044(uint64_t a1)
{
  v2 = type metadata accessor for AllContactsInBatches(0);
  __chkstk_darwin(v2, v3);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019778(a1, v5);
  v6 = 0;
  v65 = 0;
  v7 = &v5[v2[5]];
  v8 = _swiftEmptyArrayStorage;
  v66 = &_swiftEmptyArrayStorage[4];
  *&v9 = 134218242;
  v63 = v9;
  v62 = v2;
  v64 = v5;
  v10 = *v7;
  if (!*v7)
  {
    goto LABEL_3;
  }

LABEL_2:
  v12 = *(v7 + 1);
  v11 = *(v7 + 2);
  for (i = *(v7 + 3); ; *(v7 + 3) = i)
  {
    v14 = i >> 1;
    if (v11 == i >> 1)
    {
      break;
    }

    if (v11 >= (i >> 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
    }

    v15 = *&v5[v2[7]];
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v16 = v14 - v11;
    if (__OFSUB__(v14, v11))
    {
      goto LABEL_64;
    }

    v69 = v8;
    v17 = i >> 1;
    if (v16 >= v15)
    {
      v17 = v11 + v15;
      if (__OFADD__(v11, v15))
      {
        goto LABEL_71;
      }
    }

    if (v17 < v11)
    {
      goto LABEL_65;
    }

    if (v14 < v17)
    {
      goto LABEL_66;
    }

    if (v17 < 0)
    {
      goto LABEL_67;
    }

    if (v16 >= v15)
    {
      v18 = __OFADD__(v11, v15);
      v19 = v11 + v15;
      if (v18)
      {
        goto LABEL_72;
      }

      if (v14 < v19)
      {
        goto LABEL_70;
      }

      v14 = v19;
    }

    if (v14 < v11)
    {
      goto LABEL_68;
    }

    v68 = v6;
    *v7 = v10;
    *(v7 + 1) = v12;
    *(v7 + 2) = v14;
    *(v7 + 3) = i;
    v20 = qword_1000446D8;
    swift_unknownObjectRetain_n();
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = objc_allocWithZone(CNContactFetchRequest);
    sub_100003760(&qword_100044FD0, &qword_100030260);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v70 = [v21 initWithKeysToFetch:isa];

    if ((i & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_23:
      sub_1000188C8(v10, v12, v11, i & 1 | (2 * v17));
      goto LABEL_30;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v23 = swift_dynamicCastClass();
    if (!v23)
    {
      swift_unknownObjectRelease();
      v23 = _swiftEmptyArrayStorage;
    }

    v24 = v23[2];

    if (__OFSUB__(v17, v11))
    {
      goto LABEL_73;
    }

    if (v24 != v17 - v11)
    {
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    if (!swift_dynamicCastClass())
    {
      swift_unknownObjectRelease();
    }

LABEL_30:
    swift_unknownObjectRelease();
    v25 = objc_opt_self();
    v26 = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v25 predicateForContactsWithIdentifiers:v26];

    v28 = v70;
    [v70 setPredicate:v27];

    v67 = objc_autoreleasePoolPush();
    v29 = *&v5[v2[6]];
    v72 = 0;
    v30 = [v29 executeFetchRequest:v28 error:&v72];
    if (v30)
    {
      v31 = v30;
      v32 = v72;
      v33 = [v31 value];

      v72 = v33;
      sub_100003760(&qword_1000458F0, &qword_100030938);
      v34 = swift_dynamicCast();
      v6 = v68;
      v8 = v69;
      if (v34)
      {
        v35 = v71;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v36 = v72;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v65 = 0;
      swift_unknownObjectRetain();
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v72 = v40;
        *v39 = v63;
        if (__OFSUB__(v17, v11))
        {
          goto LABEL_75;
        }

        v41 = v40;
        *(v39 + 4) = v17 - v11;
        swift_unknownObjectRelease();
        *(v39 + 12) = 2080;
        swift_getErrorValue();
        v42 = Error.localizedDescription.getter();
        v44 = sub_10001DC5C(v42, v43, &v72);

        *(v39 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v37, v38, "failed to fetch batch of %ld: %s", v39, 0x16u);
        sub_100003850(v41);

        v35 = 0;
        v2 = v62;
      }

      else
      {

        swift_unknownObjectRelease();
        v35 = 0;
      }

      v5 = v64;
      v6 = v68;
      v8 = v69;
      v28 = v70;
    }

    objc_autoreleasePoolPop(v67);

    swift_unknownObjectRelease_n();
    if (!v35)
    {
      break;
    }

    if (v6)
    {
      v45 = v66;
      v18 = __OFSUB__(v6--, 1);
      if (v18)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v46 = v8[3];
      if (((v46 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_74;
      }

      v47 = v46 & 0xFFFFFFFFFFFFFFFELL;
      if (v47 <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = v47;
      }

      sub_100003760(&qword_100045AA8, &qword_100030A28);
      v49 = swift_allocObject();
      v50 = j__malloc_size(v49);
      v51 = v50 - 32;
      if (v50 < 32)
      {
        v51 = v50 - 25;
      }

      v52 = v51 >> 3;
      v49[2] = v48;
      v49[3] = 2 * (v51 >> 3);
      v53 = (v49 + 4);
      v54 = v8[3] >> 1;
      if (v8[2])
      {
        v55 = v8 + 4;
        if (v49 != v8 || v53 >= v55 + 8 * v54)
        {
          memmove(v49 + 4, v55, 8 * v54);
        }

        v8[2] = 0;
      }

      v45 = (v53 + 8 * v54);
      v56 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - v54;

      v8 = v49;
      v18 = __OFSUB__(v56, 1);
      v6 = v56 - 1;
      if (v18)
      {
        goto LABEL_69;
      }
    }

    *v45 = v35;
    v66 = v45 + 1;
    v10 = *v7;
    if (*v7)
    {
      goto LABEL_2;
    }

LABEL_3:
    v10 = sub_1000182A0();
    v11 = 0;
    v12 = (v10 + 32);
    i = (2 * *(v10 + 2)) | 1;
    *v7 = v10;
    *(v7 + 1) = v10 + 32;
    *(v7 + 2) = 0;
  }

  sub_10001971C(v5);
  v57 = v8[3];
  if (v57 >= 2)
  {
    v58 = v57 >> 1;
    v18 = __OFSUB__(v58, v6);
    v59 = v58 - v6;
    if (v18)
    {
      goto LABEL_76;
    }

    v8[2] = v59;
  }

  return v8;
}

uint64_t sub_10001971C(uint64_t a1)
{
  v2 = type metadata accessor for AllContactsInBatches(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllContactsInBatches(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10001980C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100019880(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_1000198C4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001AD04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000198FC()
{
  sub_100003760(&unk_100045620, &unk_100030750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100030440;
  *(v0 + 32) = CNContactWallpaperMetadataKey;
  qword_1000462E8 = v0;

  return _objc_retain_x1();
}

id sub_100019964()
{
  sub_100003760(&unk_100045620, &unk_100030750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FD50;
  v1 = CNContactWallpaperMetadataKey;
  v2 = CNContactSharedPhotoDisplayPreferenceKey;
  v5 = CNContactSharedPhotoDisplayPreferenceKey;
  *(v0 + 32) = CNContactWallpaperMetadataKey;
  *(v0 + 40) = v2;
  qword_1000462F0 = v0;
  v3 = v1;

  return v5;
}

double sub_1000199EC()
{
  v1 = sub_10001A564();
  v2 = v1;
  v22 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v20 = v0;
    v21 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v21)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = v2;
      v10 = [v6 extensionBundleID];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v12;

      if (v11 == 0xD000000000000028 && 0x80000001000321C0 == v0)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v0 = &v22;
      specialized ContiguousArray._endMutation()();
LABEL_6:
      v2 = v9;
      ++v4;
      if (v8 == i)
      {
        v15 = v22;
        v0 = v20;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *(v15 + 16);
  }

  v17 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18 > 0)
    {
      return v16 / v18;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 > 0)
    {
      return v16 / v18;
    }
  }

  return 0.0;
}

double sub_100019C28()
{
  v1 = sub_10001A564();
  v2 = v1;
  v22 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v20 = v0;
    v21 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v21)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = v2;
      v10 = [v6 extensionBundleID];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v12;

      if (v11 == 0xD00000000000002ELL && 0x8000000100032190 == v0)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v0 = &v22;
      specialized ContiguousArray._endMutation()();
LABEL_6:
      v2 = v9;
      ++v4;
      if (v8 == i)
      {
        v15 = v22;
        v0 = v20;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *(v15 + 16);
  }

  v17 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18 > 0)
    {
      return v16 / v18;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 > 0)
    {
      return v16 / v18;
    }
  }

  return 0.0;
}

double sub_100019E64()
{
  v1 = sub_10001A564();
  v2 = v1;
  v22 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v20 = v0;
    v21 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v21)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = v2;
      v10 = [v6 extensionBundleID];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = v12;

      if (v11 == 0xD00000000000002CLL && 0x8000000100032160 == v0)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v0 = &v22;
      specialized ContiguousArray._endMutation()();
LABEL_6:
      v2 = v9;
      ++v4;
      if (v8 == i)
      {
        v15 = v22;
        v0 = v20;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *(v15 + 16);
  }

  v17 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18 > 0)
    {
      return v16 / v18;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 > 0)
    {
      return v16 / v18;
    }
  }

  return 0.0;
}

double sub_10001A0A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 32);
  sub_100003A34((v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider), v1);
  v3 = (*(v2 + 24))(v1, v2);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 sharedPhotoDisplayPreference] == 2)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage[2];
  }

  v11 = sub_10001A564();
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 <= 0)
  {
    return 0.0;
  }

  else
  {
    return v10 / v12;
  }
}

double sub_10001A2A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 32);
  sub_100003A34((v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider), v1);
  v3 = (*(v2 + 24))(v1, v2);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v7 sharedPhotoDisplayPreference] == 1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage[2];
  }

  v11 = sub_10001A564();
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 <= 0)
  {
    return 0.0;
  }

  else
  {
    return v10 / v12;
  }
}

uint64_t sub_10001A4B0()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___meCardPosterType;
  result = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___meCardPosterType);
  if (result == 5)
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 24);
    v5 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider + 32);
    sub_100003A34((v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider), v4);
    result = (*(v5 + 8))(v4, v5);
    if (result)
    {
      v6 = result;
      v7 = [result wallpaperMetadata];
      v8 = sub_10001AB1C(v7);

      result = v8;
    }

    *(v3 + v1) = result;
  }

  return result;
}

void *sub_10001A564()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata;
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails____lazy_storage___collectedMetadata);
  }

  else
  {
    v2 = sub_10001A5CC(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10001A5CC(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC21contactsdonationagent13PosterDetails_dataProvider);
  v2 = v1[3];
  v3 = v1[4];
  sub_100003A34(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_17:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = [v9 wallpaperMetadata];

    ++v8;
    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v11;
    }
  }

  return _swiftEmptyArrayStorage;
}

id sub_10001A794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterDetails(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PosterDetails(uint64_t a1)
{
  result = qword_100045AE8;
  if (!qword_100045AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001A8AC(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterDetails.PosterType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterDetails.PosterType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001AAC8()
{
  result = qword_100045AF8;
  if (!qword_100045AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045AF8);
  }

  return result;
}

uint64_t sub_10001AB1C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 extensionBundleID];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD00000000000002ELL && 0x8000000100032190 == v5)
    {

      return 1;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {

      return 1;
    }

    v8 = [v1 extensionBundleID];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == 0xD000000000000028 && 0x80000001000321C0 == v11)
    {

      return 2;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {

        return 2;
      }

      else
      {
        v13 = [v1 extensionBundleID];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (v14 == 0xD00000000000002CLL && 0x8000000100032160 == v16)
        {

          return 3;
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
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

  return result;
}

unint64_t sub_10001AD04(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

void sub_10001AE84(void *a1)
{
  v3 = String.lowercased()();
  v4 = OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_visitedValues;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v27 = v3;
  v26 = &v27;

  v6 = sub_10000A700(sub_100004AE0, v25, v5);

  if (v6)
  {
  }

  else
  {
    swift_beginAccess();
    v7 = *(v1 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v4) = v7;
    v24 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_10002642C(0, *(v7 + 2) + 1, 1, v7);
      *(v1 + v4) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_10002642C((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    *&v7[16 * v10 + 32] = v3;
    *(v1 + v4) = v7;
    swift_endAccess();
    v11 = String._bridgeToObjectiveC()();
    v12 = objc_allocWithZone(CNLabeledValue);
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 initWithLabel:v13 value:v11];

    sub_100003760(&qword_100045B68, &qword_100030B68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10002FBD0;
    v27._countAndFlagsBits = 0x69724F65756C6176;
    v27._object = 0xEB000000006E6967;
    AnyHashable.init<A>(_:)();
    v16 = [v24 origin];
    v17 = [objc_allocWithZone(CNValueOrigin) initWithDonationOrigin:v16];

    *(inited + 96) = sub_10001BA08();
    *(inited + 72) = v17;
    sub_100028B24(inited);
    swift_setDeallocating();
    sub_10001BA54(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v14 setStoreInfo:isa];

    v19 = *(v1 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v20 = [v19 emailAddresses];
    sub_100003760(&unk_100045B80, &unk_100030250);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v27._countAndFlagsBits = v21;
    v22 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v27._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23 = Array._bridgeToObjectiveC()().super.isa;

    [v19 setEmailAddresses:v23];
  }
}

void sub_10001B300(void *a1, id a2)
{
  v5 = [a2 stringValue];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_visitedValues;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v31 = v6;
  v32 = v8;
  v30 = &v31;

  LOBYTE(v5) = sub_10000A700(sub_100004AC0, v29, v10);

  if (v5)
  {
  }

  else
  {
    swift_beginAccess();
    v11 = *(v2 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v9) = v11;
    v28 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_10002642C(0, *(v11 + 2) + 1, 1, v11);
      *(v2 + v9) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_10002642C((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v6;
    *(v15 + 5) = v8;
    *(v2 + v9) = v11;
    swift_endAccess();
    v16 = objc_allocWithZone(CNLabeledValue);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 initWithLabel:v17 value:a2];

    sub_100003760(&qword_100045B68, &qword_100030B68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10002FBD0;
    v31 = 0x69724F65756C6176;
    v32 = 0xEB000000006E6967;
    AnyHashable.init<A>(_:)();
    v20 = [v28 origin];
    v21 = [objc_allocWithZone(CNValueOrigin) initWithDonationOrigin:v20];

    *(inited + 96) = sub_10001BA08();
    *(inited + 72) = v21;
    sub_100028B24(inited);
    swift_setDeallocating();
    sub_10001BA54(inited + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 setStoreInfo:isa];

    v23 = *(v2 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v24 = [v23 phoneNumbers];
    sub_100003760(&unk_100045B80, &unk_100030250);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v25;
    v26 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v27 = Array._bridgeToObjectiveC()().super.isa;

    [v23 setPhoneNumbers:v27];
  }
}

id sub_10001B978(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10001BA08()
{
  result = qword_100045B70;
  if (!qword_100045B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045B70);
  }

  return result;
}

uint64_t sub_10001BA54(uint64_t a1)
{
  v2 = sub_100003760(&unk_100045FA0, &unk_100030B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001BABC()
{
  PersonNameComponents.namePrefix.getter();
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v3 = String._bridgeToObjectiveC()();

    [v2 setNamePrefix:v3];
  }

  PersonNameComponents.givenName.getter();
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v6 = String._bridgeToObjectiveC()();

    [v5 setGivenName:v6];
  }

  PersonNameComponents.middleName.getter();
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v9 = String._bridgeToObjectiveC()();

    [v8 setMiddleName:v9];
  }

  PersonNameComponents.familyName.getter();
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v12 = String._bridgeToObjectiveC()();

    [v11 setFamilyName:v12];
  }

  PersonNameComponents.nameSuffix.getter();
  if (v13)
  {
    v14 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v15 = String._bridgeToObjectiveC()();

    [v14 setNameSuffix:v15];
  }

  PersonNameComponents.nickname.getter();
  if (v16)
  {
    v17 = *(v0 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
    v18 = String._bridgeToObjectiveC()();

    [v17 setNickname:v18];
  }
}

void sub_10001BC8C(void *a1, uint64_t a2)
{
  v5 = [objc_opt_self() singleLineStringFromPostalAddress:a2 addCountryName:0];
  if (v5)
  {
    v29 = a1;
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String.lowercased()();

    v8 = OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_visitedValues;
    v9 = swift_beginAccess();
    v10 = *(v2 + v8);
    v30 = v7;
    __chkstk_darwin(v9, v11);
    v28[2] = &v30;

    LOBYTE(v6) = sub_10000A700(sub_100004AE0, v28, v10);

    if (v6)
    {

      return;
    }

    swift_beginAccess();
    v12 = *(v2 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v8) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_10002642C(0, *(v12 + 2) + 1, 1, v12);
      *(v2 + v8) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_10002642C((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    *&v12[16 * v15 + 32] = v7;
    *(v2 + v8) = v12;
    swift_endAccess();
    a1 = v29;
  }

  v16 = objc_allocWithZone(CNLabeledValue);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithLabel:v17 value:a2];

  sub_100003760(&qword_100045B68, &qword_100030B68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002FBD0;
  v30._countAndFlagsBits = 0x69724F65756C6176;
  v30._object = 0xEB000000006E6967;
  AnyHashable.init<A>(_:)();
  v20 = [a1 origin];
  v21 = [objc_allocWithZone(CNValueOrigin) initWithDonationOrigin:v20];

  *(inited + 96) = sub_10001BA08();
  *(inited + 72) = v21;
  sub_100028B24(inited);
  swift_setDeallocating();
  sub_10001BA54(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v18 setStoreInfo:isa];

  v23 = *(v2 + OBJC_IVAR____TtCC21contactsdonationagent14ContactBuilderP33_1769836B200A88CF9192BAA6148092D915DonationVisitor_contact);
  v24 = [v23 postalAddresses];
  sub_100003760(&unk_100045B80, &unk_100030250);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30._countAndFlagsBits = v25;
  v26 = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v30._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v23 setPostalAddresses:v27];
}

uint64_t sub_10001C0B0()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_100046308 = result;
  unk_100046310 = v1;
  return result;
}

void sub_10001C0E0(void *a1)
{
  v2 = v1;
  v4 = sub_100003760(&qword_1000457A8, "W");
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v63 - v11;
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v63 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v63 - v18;
  v20 = type metadata accessor for PersonNameComponents();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20, v22);
  v67 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = _swiftEmptyArrayStorage;
  v24 = [a1 identifier];
  if (!v24)
  {
    __break(1u);
    goto LABEL_39;
  }

  v25 = v24;
  v65 = v12;
  v66 = v8;
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v26;

  if (qword_100044720 != -1)
  {
    swift_once();
  }

  v27 = qword_100046338;
  v28 = *(qword_100046338 + 16);
  v29 = v21 + 48;
  v12 = a1;

  v70 = v2;
  if (v28)
  {
    v64 = v21;
    v30 = 0;
    v31 = v27 + 5;
    while (1)
    {
      v32 = *(v31 - 1);
      v72 = v12;
      v32(&v72);
      v33 = (*v29)(v16, 1, v20);
      sub_100011CE8(v16);
      if (v33 != 1)
      {
        break;
      }

      ++v30;
      v31 += 2;
      if (v28 == v30)
      {
        goto LABEL_10;
      }
    }

    v28 = v30;
LABEL_10:
    v21 = v64;
  }

  v34 = v27[2];
  if (v28 == v34)
  {

    (*(v21 + 7))(v19, 1, 1, v20);

    v28 = v69;
    v35 = (*(v21 + 6))(v19, 1, v20);
    goto LABEL_16;
  }

  if (v28 >= v34)
  {
    __break(1u);
    goto LABEL_35;
  }

  v16 = v21;
  v36 = v27[2 * v28 + 4];
  v72 = v12;

  v37 = v65;
  v36(&v72);

  v38 = v66;
  sub_10001CD2C(v37, v66);
  v39 = *v29;
  if ((*v29)(v38, 1, v20) == 1)
  {
LABEL_39:

    __break(1u);
    goto LABEL_40;
  }

  v21 = v16;
  (*(v16 + 4))(v19, v38, v20);
  sub_100011CE8(v37);
  (*(v16 + 7))(v19, 0, 1, v20);

  v28 = v69;
  v35 = v39(v19, 1, v20);
LABEL_16:
  if (v35 != 1)
  {
    v19 = v67;
    (*(v21 + 4))();
    v72 = 0x3A656D616ELL;
    v73 = 0xE500000000000000;
    v29 = v21;
    v40 = v68;
    v41._countAndFlagsBits = v68;
    v41._object = v28;
    String.append(_:)(v41);
    v42 = sub_10001C86C(v72, v73, v40, v28);

    v27 = v42;
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v44 = [objc_opt_self() donationValueWithNameComponents:isa origin:v27];

    v16 = v44;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v29 + 1))(v19, v20);
      goto LABEL_20;
    }

LABEL_35:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_19;
  }

  sub_100011CE8(v19);
LABEL_20:
  if (qword_1000446E0 != -1)
  {
    swift_once();
  }

  v45 = qword_100046280;
  v46 = *(qword_100046280 + 16);
  v16 = v12;

  if (v46)
  {
    v47 = 0;
    v48 = v45 + 5;
    while (1)
    {
      v49 = *(v48 - 1);
      v71 = v16;
      v49(&v72, &v71);
      v50 = v73;
      sub_10001CD9C(v72, v73, v74, v75);
      if (v50)
      {
        break;
      }

      ++v47;
      v48 += 2;
      if (v46 == v47)
      {
        goto LABEL_28;
      }
    }

    v46 = v47;
  }

LABEL_28:
  v51 = v45[2];
  if (v46 == v51)
  {

    return;
  }

  if (v46 >= v51)
  {
    __break(1u);
    goto LABEL_37;
  }

  v52 = v45[2 * v46 + 4];
  v71 = v16;

  v52(&v72, &v71);

  v53 = v73;
  if (v73)
  {
    v54 = v72;
    v56 = v74;
    v55 = v75;

    sub_10001CD9C(v54, v53, v56, v55);

    v72 = 0x3A6C69616D65;
    v73 = 0xE600000000000000;
    v57 = v68;
    v58._countAndFlagsBits = v68;
    v58._object = v28;
    String.append(_:)(v58);
    v59 = sub_10001C86C(v72, v73, v57, v28);

    v45 = v59;
    v60 = String._bridgeToObjectiveC()();

    v61 = String._bridgeToObjectiveC()();

    v62 = [objc_opt_self() donationValueWithEmailAddress:v60 label:v61 origin:v45];

    v46 = v62;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_33:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return;
    }

LABEL_37:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_33;
  }

LABEL_40:

  __break(1u);
}

id sub_10001C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v30 = a2;
  v5 = sub_100003760(&qword_100044F50, &qword_100030240);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v27 - v11;
  if (qword_100044718 != -1)
  {
    swift_once();
  }

  v28 = qword_100046308;
  v13 = OBJC_IVAR____TtC21contactsdonationagent21AccountPropertyParser_donationDate;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v16(v12, v4 + v13, v14);
  v17 = *(v15 + 56);
  v17(v12, 0, 1, v14);
  v16(v9, v4 + OBJC_IVAR____TtC21contactsdonationagent21AccountPropertyParser_expirationDate, v14);
  v17(v9, 0, 1, v14);
  v28 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = *(v15 + 48);
  isa = 0;
  if (v20(v12, 1, v14) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v12, v14);
  }

  if (v20(v9, 1, v14) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = Date._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v9, v14);
  }

  v23 = objc_allocWithZone(CNDonationOrigin);
  v24 = v28;
  v25 = [v23 initWithBundleIdentifier:v28 donationIdentifier:v18 clusterIdentifier:v19 donationDate:isa expirationDate:v22];

  return v25;
}

id sub_10001CB68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountPropertyParser(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccountPropertyParser(uint64_t a1)
{
  result = qword_100045BB8;
  if (!qword_100045BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001CC9C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001CD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003760(&qword_1000457A8, "W");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10001CD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

id sub_10001CDE0()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___meCard;
  v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___meCard);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10001CE50(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10001E250(v4);
  }

  sub_10001E260(v2);
  return v3;
}

id sub_10001CE50(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_store);
  if (qword_100044708 != -1)
  {
    swift_once();
  }

  sub_100003760(&qword_100044FD0, &qword_100030260);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v21 = 0;
  v9 = [v7 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v21];

  v10 = v21;
  if (!v9)
  {
    v11 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_logger, v2);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = sub_10001DC5C(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not fetch Me Card %s", v14, 0xCu);
      sub_100003850(v15);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v9;
}

id sub_10001D140()
{
  v1 = (v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___numberOfContacts);
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___numberOfContacts + 8) != 1)
  {
    return *v1;
  }

  result = sub_10001D18C(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_10001D18C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_store);
  v22 = 0;
  v8 = [v7 unifiedContactCountWithError:&v22];
  if (v8)
  {
    v9 = v8;
    v10 = v22;
    v11 = [v9 integerValue];
  }

  else
  {
    v12 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_logger, v2);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_10001DC5C(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not count contacts. %s", v15, 0xCu);
      sub_100003850(v16);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v11;
}

void *sub_10001D438()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___contactsWithWallpaper;
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___contactsWithWallpaper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___contactsWithWallpaper);
  }

  else
  {
    v2 = sub_10001D4A0(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10001D4A0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_store);
  v8 = [objc_opt_self() predicateForContactsWithWallpaperMetadata];
  if (qword_100044710 != -1)
  {
    swift_once();
  }

  sub_100003760(&qword_100044FD0, &qword_100030260);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v24 = 0;
  v10 = [v7 unifiedContactsMatchingPredicate:v8 keysToFetch:isa error:&v24];

  v11 = v24;
  if (v10)
  {
    sub_10001E204();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v11;
  }

  else
  {
    v14 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_logger, v2);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_10001DC5C(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not fetch contacts. %s", v17, 0xCu);
      sub_100003850(v18);
    }

    (*(v3 + 8))(v6, v2);

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t sub_10001D7D8()
{
  v1 = OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10001E250(*(v0 + OBJC_IVAR____TtC21contactsdonationagent25PosterDetailsDataProvider____lazy_storage___meCard));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for PosterDetailsDataProvider(uint64_t a1)
{
  result = qword_100045C10;
  if (!qword_100045C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001D8F8(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_10001DA20()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 wallpaperMetadata];
      if (v7)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10001DB7C()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

void *sub_10001DBE0()
{
  v1 = *(*v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10001DC0C()
{
  v1 = *(*v0 + 24);
  if (v1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_10001DC5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001DD28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000EC48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003850(v11);
  return v7;
}

unint64_t sub_10001DD28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001DE34(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *sub_10001DE34(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001DE80(a1, a2);
  sub_10001DFB0(&off_10003CFE8);
  return v3;
}

void *sub_10001DE80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10001E09C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001E09C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10001DFB0(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001E110(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001E09C(uint64_t a1, uint64_t a2)
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

  sub_100003760(&unk_100045E10, &qword_100030C98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001E110(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003760(&unk_100045E10, &qword_100030C98);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_10001E204()
{
  result = qword_100045E08;
  if (!qword_100045E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045E08);
  }

  return result;
}

void sub_10001E250(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10001E260(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10001E270@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003760(&qword_100044F50, &qword_100030240);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_defaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    v10 = type metadata accessor for Date();
    v11 = swift_dynamicCast();
    v12 = *(v10 - 8);
    (*(v12 + 56))(v6, v11 ^ 1u, 1, v10);
    if ((*(v12 + 48))(v6, 1, v10) != 1)
    {
      return (*(v12 + 32))(a1, v6, v10);
    }
  }

  else
  {
    sub_10000630C(v17, &unk_100045370, &unk_100030510);
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  sub_10000630C(v6, &qword_100044F50, &qword_100030240);
  return static Date.distantPast.getter();
}

id sub_10001E4B0()
{
  v1 = &v0[OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_activityIdentifier];
  *v1 = 0xD00000000000001CLL;
  *(v1 + 1) = 0x8000000100032500;
  v2 = OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_logger;
  v3 = [objc_msgSend(objc_opt_self() "defaultProvider")];
  swift_unknownObjectRelease();
  *&v0[v2] = v3;
  v4 = OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_defaults;
  *&v0[v4] = [objc_opt_self() standardUserDefaults];
  *&v0[OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_analyzer] = [objc_allocWithZone(type metadata accessor for CNMetricsAnalyzerEngine(0)) init];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AnalysisService();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_10001E5DC(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 os_transactionInhibitorWithLabel:v5];

  [v6 start];
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    sub_10001E6E8();
  }

  else if (!state)
  {
    v8 = xpc_activity_copy_criteria(a1);
    v9 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_logger);
    if (v8)
    {
      [v9 analysisServiceCriteria:v8];
      swift_unknownObjectRelease();
    }

    else
    {
      [v9 analysisServiceCheckingIn];
    }
  }

  [v6 stop];

  return swift_unknownObjectRelease();
}

uint64_t sub_10001E6E8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v24 - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v24 - v13;
  Date.init()();
  sub_10001E270(v7);
  static Date.+ infix(_:_:)();
  v15 = *(v3 + 8);
  v15(v7, v2);
  v16 = static Date.> infix(_:_:)();
  v15(v11, v2);
  v15(v14, v2);
  if (v16)
  {
    Date.init()();
    v17 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_defaults);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v19 = String._bridgeToObjectiveC()();
    [v17 setObject:isa forKey:v19];

    v15(v14, v2);
    v20 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_logger);
    [v20 willReportAnalytics];
    sub_10001E960();
    [v20 didReportAnalytics];
  }

  else
  {
    v21 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_logger);
    sub_10001E270(v14);
    v22 = Date._bridgeToObjectiveC()().super.isa;
    v15(v14, v2);
    [v21 didSkipDuplicateAnalysis:v22];
  }

  return v16 & 1;
}

BOOL sub_10001E960()
{
  v1 = *(v0 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_analyzer);
  if (v1)
  {
    v2 = v1;
    isa = CNMetricsAnalyzerEngine.contactsAnalysis()().super.super.isa;
    v4 = objc_opt_self();
    v5 = String._bridgeToObjectiveC()();
    [v4 sendDictionary:isa forEvent:v5 andLog:1];

    v6 = CNMetricsAnalyzerEngine.postersAnalysis()().super.super.isa;
    v7 = String._bridgeToObjectiveC()();
    [v4 sendDictionary:v6 forEvent:v7 andLog:1];
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC21contactsdonationagent15AnalysisService_logger) noAnalyzerAvailable];
  }

  return v1 != 0;
}

id sub_10001EA7C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AnalysisService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10001EB44(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_10001EB88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002678C(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v9 = (*(a1 + 48) + 16 * v5);
    v10 = v9[1];
    v22 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_10002678C((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v22;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_10002AA7C(v5, v23, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_10002AA7C(v5, v23, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_10001EDCC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_10002AA7C(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_10002AA7C(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_10001EFE0(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

void sub_10001F18C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10001F1F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10001F270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_10001F368(uint64_t a1, uint64_t a2)
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

void sub_10001F3CC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_10001F43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_10001F4C4(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_10001F570(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return sub_100003850(v5);
}

void sub_10001F5E0(char *a1)
{
  v41 = *&a1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  [v41 beginRestorePersistedState];
  v40 = a1;
  sub_100003A34(&a1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence], *&a1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence + 24]);
  v2 = sub_10000D490();
  v44[0] = 0;
  v3 = [v2 result:v44];

  v4 = v44[0];
  if (!v3)
  {
    v16 = v44[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return;
  }

  v44[0] = 0;
  sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
  v5 = v4;
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v6 = v44[0];
  if (v44[0])
  {
    v44[0] = _swiftEmptyArrayStorage;
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      goto LABEL_40;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v9 = v40;
    v10 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_feedbackStore;
    v39 = v40;
    if (v8)
    {
      v11 = 0;
      v42 = CNDonationStoreMeCardIdentifier;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v7 + 16))
          {
            goto LABEL_37;
          }

          v12 = *(v6 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v8 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_5;
        }

        v15 = *&v9[v10];
        if ([v15 canHashDonation:v12])
        {
          if (([v15 donatedValueHasBeenConfirmedOrRejected:v13 contactIdentifier:v42] & 1) == 0)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v9 = v40;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            goto LABEL_9;
          }
        }

        else
        {
          [v41 foundUnhashableValue:v13];
        }

LABEL_9:
        ++v11;
        if (v14 == v8)
        {
          v17 = v44[0];
          goto LABEL_21;
        }
      }
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_21:

    v18 = *&v39[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_notYetExpired];
    v6 = *&v39[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_notYetExpired + 8];
    v44[0] = _swiftEmptyArrayStorage;
    v19 = (v17 >> 62) & 1;
    if (v17 < 0)
    {
      LODWORD(v19) = 1;
    }

    v38 = v19;
    if (v19 == 1)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (v20)
      {
LABEL_25:
        v21 = 0;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= *(v17 + 16))
            {
              goto LABEL_39;
            }

            v22 = *(v17 + 8 * v21 + 32);
          }

          v23 = v22;
          v7 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_38;
          }

          if (v18(v22))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v21;
        }

        while (v7 != v20);
        v24 = v44[0];
LABEL_43:
        v25 = sub_1000287E8(_swiftEmptyArrayStorage);
        v43 = *&v39[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_indexDonationByIdentifierReduction];
        if ((v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
        {
          goto LABEL_75;
        }

        for (i = *(v24 + 16); ; i = _CocoaArrayWrapper.endIndex.getter())
        {

          if (i)
          {
            v27 = 0;
            v28 = v25;
            while (1)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v27 >= *(v24 + 16))
                {
                  goto LABEL_72;
                }

                v29 = *(v24 + 8 * v27 + 32);
              }

              v30 = v29;
              v31 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              v25 = v43(v28, v29);

              ++v27;
              v28 = v25;
              if (v31 == i)
              {
                goto LABEL_55;
              }
            }

            __break(1u);
LABEL_72:
            __break(1u);
          }

          else
          {
LABEL_55:

            v32 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
            swift_beginAccess();
            *&v39[v32] = v25;

            v33 = *&v39[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_readyForRenewal];
            v24 = *&v39[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_readyForRenewal + 8];
            if (v38)
            {
              v34 = _CocoaArrayWrapper.endIndex.getter();
              if (!v34)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v34 = *(v17 + 16);
              if (!v34)
              {
LABEL_69:

                sub_100022BA4(_swiftEmptyArrayStorage);

                sub_100021D54();
                [v41 endRestorePersistedState];
                return;
              }
            }

            v25 = 0;
            while (1)
            {
              if ((v17 & 0xC000000000000001) != 0)
              {
                v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v25 >= *(v17 + 16))
                {
                  goto LABEL_74;
                }

                v35 = *(v17 + 8 * v25 + 32);
              }

              v36 = v35;
              v37 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                break;
              }

              if (v33(v35))
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              else
              {
              }

              ++v25;
              if (v37 == v34)
              {
                goto LABEL_69;
              }
            }
          }

          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          ;
        }
      }
    }

    else
    {
      v20 = *(v17 + 16);
      if (v20)
      {
        goto LABEL_25;
      }
    }

    v24 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }
}

BOOL sub_10001FBD0(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 origin];
  v8 = [v7 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  Date.timeIntervalSinceNow.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  return v10 > 0.0;
}

BOOL sub_10001FCF8(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 origin];
  v8 = [v7 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  Date.timeIntervalSinceNow.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  return v10 < 604800.0;
}

uint64_t sub_10001FE2C(uint64_t a1, void *a2)
{

  v4 = [a2 origin];
  v5 = [v4 donationIdentifier];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100027748(v9, v6, v8, isUniquelyReferenced_nonNull_native);

  return a1;
}

uint64_t sub_10001FEF0()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_suppressingNotificationsDuringStartup] = 1;
  v2 = *&v0[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_preferencesMonitor];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = (v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onSuppress);
  v5 = *(v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onSuppress);
  v6 = *(v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onSuppress + 8);
  *v4 = sub_10002B200;
  v4[1] = v3;
  v7 = v1;
  sub_10000F288(v5, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = (v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable);
  v10 = *(v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable);
  v11 = *(v2 + OBJC_IVAR____TtC21contactsdonationagent26DonationPreferencesMonitor_onEnable + 8);
  *v9 = sub_10002B208;
  v9[1] = v8;
  v12 = v7;
  sub_10000F288(v10, v11);
  sub_10000ECD0();
  v13 = sub_100003A34(&v12[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider], *&v12[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider + 24]);
  v14 = &v12[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_environment];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *v13;
  v17 = *sub_100003A34(v14, *(v14 + 3));

  sub_100028658(v17, sub_10002B248, v15, v16);

  v18 = *&v12[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v24[4] = sub_10002B250;
  v24[5] = v19;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_10002B9B4;
  v24[3] = &unk_10003E930;
  v20 = _Block_copy(v24);
  v21 = v12;

  v22 = [v18 performWriterBlock:v20];
  _Block_release(v20);
  return swift_unknownObjectRelease();
}

char *sub_100020144(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    aBlock[4] = sub_10002B2D4;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B9B4;
    aBlock[3] = &unk_10003E980;
    v5 = _Block_copy(aBlock);
    v6 = v3;

    v7 = [v2 performWriterBlock:v5];
    _Block_release(v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100020274(char a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v10[4] = sub_10002B360;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10002B9B4;
  v10[3] = &unk_10003EAC0;
  v6 = _Block_copy(v10);
  v7 = a2;

  v8 = [v4 performWriterBlock:v6];
  _Block_release(v6);
  return swift_unknownObjectRelease();
}

id sub_100020374(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_100021FB0((a3 & 1) == 0);
  if ((*(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_suppressingNotificationsDuringStartup) & 1) == 0)
  {
    v5 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_distributedNotificationCenter);
    v6 = CNDonationStoreMeCardValuesDidChangeNotification;

    return [v5 postNotificationName:v6 object:0];
  }

  return result;
}

uint64_t sub_1000203F0(char a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v10[4] = sub_10002B314;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10002B9B4;
  v10[3] = &unk_10003E9D0;
  v6 = _Block_copy(v10);
  v7 = a2;

  v8 = [v4 performWriterBlock:v6];
  _Block_release(v6);
  return swift_unknownObjectRelease();
}

id sub_1000204F0(uint64_t a1, char a2, char *a3)
{
  if (a2)
  {
    return sub_1000221A0();
  }

  v5 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v10[4] = sub_10002B320;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10002B9B4;
  v10[3] = &unk_10003EA20;
  v7 = _Block_copy(v10);
  v8 = a3;

  v9 = [v5 performWriterBlock:v7];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_1000205F4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(a1, v13);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v14)
  {
    a2();
  }

  else
  {
    a2();
    sub_100022BA4(a5);
  }

  v17 = *(a4 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  [v17 agentDidHandleRequest:a6];
  v18 = Date.init()();
  __chkstk_darwin(v18, v19);
  *&v24[-16] = v16;

  v20 = sub_10001EFE0(sub_10002B6C4, &v24[-32], a5);
  v21 = v20;
  if (v20 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v17 preExpiredDonations:isa];

    sub_100022BA4(v21);
  }

LABEL_7:

  return (*(v12 + 8))(v16, v11);
}

BOOL sub_100020804(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 origin];
  v9 = [v8 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = Date.compare(_:)();
  (*(v4 + 8))(v7, v3);
  return v10 == -1;
}

unint64_t sub_100020B0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    if (result >> 62)
    {
      v18 = result;
      v19 = a3;
      v20 = a2;
      v21 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v20;
      LOBYTE(a3) = v19;
      v22 = v21;
      result = v18;
      if (v22 <= 0)
      {
        return result;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (a3 == 1)
  {
    if (!*(result + 16))
    {
      return result;
    }

    goto LABEL_11;
  }

  if (result || a2 != 0xE000000000000000)
  {
    v8 = result;
    v9 = a2;
    v10 = a3;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v9;
    LOBYTE(a3) = v10;
    v12 = v11;
    result = v8;
    if ((v12 & 1) == 0)
    {
LABEL_11:
      sub_100020D84(result, a2, a3);
      sub_100021D54();
      v13 = *&v5[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
      v14 = swift_allocObject();
      v14[2] = v5;
      v14[3] = a4;
      v14[4] = a5;
      v23[4] = sub_10002B114;
      v23[5] = v14;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_10002B9B4;
      v23[3] = &unk_10003E778;
      v15 = _Block_copy(v23);
      v16 = v5;

      v17 = [v13 performReaderBlock:v15];
      _Block_release(v15);
      result = swift_unknownObjectRelease();
      if ((v16[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_suppressingNotificationsDuringStartup] & 1) == 0)
      {
        return [*&v16[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_distributedNotificationCenter] postNotificationName:CNDonationStoreMeCardValuesDidChangeNotification object:0];
      }
    }
  }

  return result;
}

void sub_100020D10(uint64_t a1, uint64_t a2)
{
  sub_100021D54();
  if ((*(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_suppressingNotificationsDuringStartup) & 1) == 0)
  {
    v3 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_distributedNotificationCenter);
    v4 = CNDonationStoreMeCardValuesDidChangeNotification;

    [v3 postNotificationName:v4 object:0];
  }
}

unint64_t sub_100020D84(unint64_t result, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = result;
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = *(result + 16);
      if (v6)
      {
        v7 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
        v8 = (result + 40);
        do
        {
          v10 = *(v8 - 1);
          v9 = *v8;
          swift_beginAccess();

          v11 = sub_100026A0C(v10, v9);
          if (v12)
          {
            v13 = v11;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v15 = *(v4 + v7);
            *(v4 + v7) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_100027A28();
            }

            sub_100027434(v13, v15);
            *(v4 + v7) = v15;
          }

          swift_endAccess();

          v8 += 2;
          --v6;
        }

        while (v6);
      }

      return result;
    }

    v26 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
    swift_beginAccess();
    v16 = *(v4 + v26);
    sub_10002B0DC(v5, a2, 2u);

    v29 = sub_100029780(v28, v5, a2);
    sub_10002AFF0(v5, a2, 2u);

    v30 = sub_10001EB88(v29);

    v31 = v30[2];
    if (!v31)
    {
    }

    v32 = 0;
    v5 = (v30 + 5);
    while (v32 < v30[2])
    {
      v16 = *(v5 - 8);
      v33 = *v5;
      swift_beginAccess();

      v34 = sub_100026A0C(v16, v33);
      if (v35)
      {
        v16 = v34;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v37 = *(v4 + v26);
        *(v4 + v26) = 0x8000000000000000;
        if (!v36)
        {
          sub_100027A28();
        }

        sub_100027434(v16, v37);
        *(v4 + v26) = v37;
      }

      ++v32;
      swift_endAccess();

      v5 += 16;
      if (v31 == v32)
      {
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v69 = _swiftEmptyArrayStorage;
    v16 = result & 0xFFFFFFFFFFFFFF8;
    if (!(result >> 62))
    {
      v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_12:
  v18 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_feedbackStore;
  v66 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger;
  v19 = v4;
  v20 = v19;
  if (v17)
  {
    v21 = 0;
    v64 = v19;
    v65 = CNDonationStoreMeCardIdentifier;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(v16 + 16))
        {
          goto LABEL_60;
        }

        v22 = *(v5 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_59;
      }

      v25 = *(v4 + v18);
      if ([v25 canHashDonation:v22])
      {
        if (([v25 donatedValueHasBeenConfirmedOrRejected:v23 contactIdentifier:v65] & 1) == 0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v20 = v64;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_16;
        }
      }

      else
      {
        [*(v4 + v66) foundUnhashableValue:v23];
      }

LABEL_16:
      ++v21;
      if (v24 == v17)
      {
        v38 = v69;
        goto LABEL_36;
      }
    }
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_36:

  v39 = v38;
  if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
  {
    v63 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v38;
    v4 = v63;
    if (v63)
    {
      goto LABEL_39;
    }

LABEL_65:
  }

  v4 = *(v38 + 16);
  if (!v4)
  {
    goto LABEL_65;
  }

LABEL_39:
  if (v4 >= 1)
  {
    v16 = 0;
    v40 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
    v67 = v39;
    v68 = v39 & 0xC000000000000001;
    while (1)
    {
      if (v68)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v43 = *(v39 + 8 * v16 + 32);
      }

      v44 = v43;
      v45 = [v43 origin];
      v5 = [v45 donationIdentifier];

      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      swift_beginAccess();
      v49 = v44;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v51 = *&v20[v40];
      *&v20[v40] = 0x8000000000000000;
      v52 = sub_100026A0C(v46, v48);
      v54 = v51[2];
      v55 = (v53 & 1) == 0;
      v56 = __OFADD__(v54, v55);
      v57 = v54 + v55;
      if (v56)
      {
        goto LABEL_61;
      }

      v5 = v53;
      if (v51[3] < v57)
      {
        break;
      }

      if (v50)
      {
        goto LABEL_51;
      }

      v62 = v52;
      sub_100027A28();
      v52 = v62;
      if ((v5 & 1) == 0)
      {
LABEL_52:
        v51[(v52 >> 6) + 8] |= 1 << v52;
        v59 = (v51[6] + 16 * v52);
        *v59 = v46;
        v59[1] = v48;
        *(v51[7] + 8 * v52) = v49;
        v60 = v51[2];
        v56 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v56)
        {
          goto LABEL_62;
        }

        v51[2] = v61;
        goto LABEL_42;
      }

LABEL_41:
      v41 = v51[7];
      v42 = *(v41 + 8 * v52);
      *(v41 + 8 * v52) = v49;

LABEL_42:
      ++v16;
      *&v20[v40] = v51;
      swift_endAccess();

      v39 = v67;
      if (v4 == v16)
      {
      }
    }

    sub_100026EE8(v57, v50);
    v52 = sub_100026A0C(v46, v48);
    if ((v5 & 1) != (v58 & 1))
    {
      goto LABEL_69;
    }

LABEL_51:
    if ((v5 & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_69:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000213D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v8 = *&a2[v7];
  v9 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_diskScheduler];
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v8;
  v10[4] = a3;
  v10[5] = a4;
  aBlock[4] = sub_10002B168;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001EB44;
  aBlock[3] = &unk_10003E7C8;
  v11 = _Block_copy(aBlock);
  swift_bridgeObjectRetain_n();
  v12 = a2;

  [v9 performBlock:v11];
  _Block_release(v11);
}

void sub_10002150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003A34((a1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence), *(a1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence + 24));
  v8 = *(a2 + 16);
  if (!v8)
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v18 = a3;
  v19 = a4;
  v9 = sub_100026704(v8, 0);
  v10 = sub_100027E5C(&aBlock, v9 + 4, v8, a2);
  v11 = aBlock;

  sub_100016CE4(v11);
  if (v10 == v8)
  {
    a3 = v18;
    a4 = v19;
LABEL_5:
    v12 = sub_10000E250(v9);

    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v24 = sub_10002B1AC;
    v25 = v13;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10002B9B4;
    v23 = &unk_10003E818;
    v14 = _Block_copy(&aBlock);

    v15 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler);
    [v12 addSuccessBlock:v14 scheduler:v15];
    _Block_release(v14);
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    v24 = sub_10002B1D8;
    v25 = v16;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10002177C;
    v23 = &unk_10003E868;
    v17 = _Block_copy(&aBlock);

    [v12 addFailureBlock:v17 scheduler:v15];
    _Block_release(v17);

    return;
  }

  __break(1u);
}

void sub_100021784(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1000217F0(void *a1, void (*a2)(void))
{
  if ([a1 isLeft])
  {
    v4 = [a1 left];
  }

  else
  {
    v4 = [a1 right];
  }

  a2();
}

void sub_1000219FC(void (*a1)(id))
{
  v2 = [NSError errorWithDomain:CNDonationErrorDomain code:1 userInfo:0];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() eitherWithRight:v2];

    a1(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_100021AB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_contact);
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  v5 = v3;
}

id sub_100021B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v10 = *(a2 + v9);
  v11 = *(v10 + 16);
  if (!v11)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v19 = a4;
  v20 = a5;
  v12 = sub_100026704(v11, 0);
  v13 = sub_100027E5C(aBlock, v12 + 4, v11, v10);
  v14 = aBlock[0];

  result = sub_100016CE4(v14);
  if (v13 == v11)
  {
    a4 = v19;
    a5 = v20;
LABEL_5:
    v16 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler);
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = v12;
    aBlock[4] = sub_10002B468;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001EB44;
    aBlock[3] = &unk_10003EBD8;
    v18 = _Block_copy(aBlock);

    [v16 performBlock:v18];
    _Block_release(v18);
    return [*(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger) agentDidHandleRequest:a5];
  }

  __break(1u);
  return result;
}

void sub_100021D54()
{
  v1 = v0;
  v2 = sub_100003760(&qword_1000457A8, "W");
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v22 - v4;
  v6 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v23 = v1;
  v9 = sub_100026704(v8, 0);
  v10 = sub_100027E5C(&v25, v9 + 4, v8, v7);
  v11 = v25;

  sub_100016CE4(v11);
  if (v10 == v8)
  {
    v1 = v23;
    v12 = v9;
LABEL_5:
    v13 = (v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider);
    v14 = *sub_100003A34((v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider), *(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_curatedInfoProvider + 24));
    v15 = OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_curatedName;
    swift_beginAccess();
    sub_100011DB8(v14 + v15, v5, &qword_1000457A8, "W");
    v16 = *(*sub_100003A34(v13, v13[3]) + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_curatedEmailAddresses);
    v17 = type metadata accessor for ContactRebuilder(0);
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_filteredDonations] = v12;
    sub_100011DB8(v5, &v18[OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_curatedName], &qword_1000457A8, "W");
    *&v18[OBJC_IVAR____TtC21contactsdonationagent16ContactRebuilder_curatedEmailAddresses] = v16;
    v24.receiver = v18;
    v24.super_class = v17;

    v19 = objc_msgSendSuper2(&v24, "init");
    sub_10000630C(v5, &qword_1000457A8, "W");
    sub_100010290();
    sub_100010DA0();
    v20 = sub_100010F5C();

    v21 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_contact);
    *(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_contact) = v20;

    return;
  }

  __break(1u);
}

id sub_100021FB0(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  if ((a1 & 1) == 0)
  {
    result = [v3 featureWillDisable];
    v5 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState;
    v6 = 1;
LABEL_8:
    *(v1 + v5) = v6;
    return result;
  }

  result = [v3 featureWillEnable];
  v5 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState;
  if (*(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState) != 1)
  {
    v6 = 3;
    goto LABEL_8;
  }

  *(v1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState) = 2;

  return sub_1000221A0();
}

id sub_10002203C(uint64_t a1, char *a2)
{
  v3 = sub_1000287E8(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  *&a2[v4] = v3;

  sub_100021D54();
  v5 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = nullsub_1;
  v6[4] = 0;
  aBlock[4] = sub_10002B900;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B9B4;
  aBlock[3] = &unk_10003EA70;
  v7 = _Block_copy(aBlock);
  v8 = a2;

  v9 = [v5 performReaderBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
  return [*&v8[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger] featureDidDisable];
}

id sub_1000221A0()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] == 2)
  {
    v0[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState] = 3;
    v2 = swift_allocObject();
    *(v2 + 16) = _swiftEmptyArrayStorage;
    v3 = (v2 + 16);
    [*&v1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger] willDiscoverExtensions];
    v4 = [objc_opt_self() currentExtensionsObservable];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v2;
    v43 = sub_10002B0B0;
    v44 = v6;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_10001F570;
    v42 = &unk_10003E688;
    v7 = _Block_copy(&aBlock);
    v8 = v1;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v43 = sub_10002B0B8;
    v44 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_10001EB44;
    v42 = &unk_10003E6D8;
    v10 = _Block_copy(&aBlock);
    v11 = v8;

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v43 = sub_10002B0D4;
    v44 = v12;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v41 = sub_10002177C;
    v42 = &unk_10003E728;
    v13 = _Block_copy(&aBlock);
    v14 = v11;

    v15 = [v5 observerWithResultBlock:v7 completionBlock:v10 failureBlock:v13];
    _Block_release(v13);
    _Block_release(v10);
    _Block_release(v7);
    v16 = [v4 subscribe:v15];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v17 = type metadata accessor for AccountsDonationSolicitor();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC21contactsdonationagent25AccountsDonationSolicitor_agent] = v14;
    v39.receiver = v18;
    v39.super_class = v17;
    v19 = v14;
    v20 = objc_msgSendSuper2(&v39, "init");
    swift_beginAccess();
    v21 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_100026538(0, v21[2] + 1, 1, v21);
      *v3 = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_100026538((v23 > 1), v24 + 1, 1, v21);
    }

    v42 = v17;
    v43 = &off_10003D918;
    *&aBlock = v20;
    v21[2] = v24 + 1;
    sub_100003B50(&aBlock, &v21[5 * v24 + 4]);
    *v3 = v21;
    swift_endAccess();
    v25 = type metadata accessor for SIMCardDonationSolicitor();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC21contactsdonationagent24SIMCardDonationSolicitor_agent] = v19;
    v38.receiver = v26;
    v38.super_class = v25;
    v27 = v19;
    v28 = objc_msgSendSuper2(&v38, "init");
    swift_beginAccess();
    v29 = *v3;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v29;
    if ((v30 & 1) == 0)
    {
      v29 = sub_100026538(0, v29[2] + 1, 1, v29);
      *v3 = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v29 = sub_100026538((v31 > 1), v32 + 1, 1, v29);
    }

    v42 = v25;
    v43 = &off_10003D908;
    *&aBlock = v28;
    v29[2] = v33;
    v34 = (v29 + 4);
    sub_100003B50(&aBlock, &v29[5 * v32 + 4]);
    *v3 = v29;
    swift_endAccess();

    do
    {
      sub_100003B68(v34, &aBlock);
      v35 = v42;
      v36 = v43;
      sub_100003A34(&aBlock, v42);
      (v36[1])(1, v35, v36);
      sub_100003850(&aBlock);
      v34 += 40;
      --v33;
    }

    while (v33);
  }

  return [*&v1[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger] featureDidEnable];
}

void sub_1000226F4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10000EC48(a1, &v16);
  sub_1000038E8(0, &unk_100045F90, CNDDonorExtension_ptr);
  if (swift_dynamicCast())
  {
    v6 = v19;
    v7 = type metadata accessor for ExtensionDonationSolicitor();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC21contactsdonationagent26ExtensionDonationSolicitor_donor] = v6;
    v20.receiver = v8;
    v20.super_class = v7;
    v9 = v6;
    v10 = objc_msgSendSuper2(&v20, "init");
    swift_beginAccess();
    v11 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_100026538(0, v11[2] + 1, 1, v11);
      *(a3 + 16) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100026538((v13 > 1), v14 + 1, 1, v11);
    }

    v17 = v7;
    v18 = &off_10003D928;
    *&v16 = v10;
    v11[2] = v14 + 1;
    sub_100003B50(&v16, &v11[5 * v14 + 4]);
    *(a3 + 16) = v11;
    swift_endAccess();
  }

  else
  {
    v15 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
    sub_100003A34(a1, a1[3]);
    [v15 didDiscoverUnexpectedExtensionType:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
  }
}

void sub_1000228C4(uint64_t a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState) = 2;
  v2 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  v3 = _convertErrorToNSError(_:)();
  [v2 didFailToDiscoverExtensions:v3];
}

void sub_100022934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(a2 + v6) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v40 = *(a2 + v6);

  v15 = 0;
  v37 = a2;
  v38 = v9;
  v36 = v6;
  while (v13)
  {
    v17 = a4;
LABEL_13:
    v19 = __clz(__rbit64(v13)) | (v15 << 6);
    v20 = (*(v40 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(*(v40 + 56) + 8 * v19);

    v16 = v23;
    v24 = [v16 origin];
    v25 = [v24 bundleIdentifier];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v26 == a3;
    a4 = v17;
    v29 = v29 && v28 == v17;
    if (v29)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {

        goto LABEL_6;
      }
    }

    v41 = v16;
    swift_beginAccess();
    v31 = sub_100026A0C(v22, v21);
    v33 = v32;

    if (v33)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v37 + v36);
      *(v37 + v36) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100027A28();
      }

      sub_100027434(v31, v35);
      *(v37 + v36) = v35;
    }

    swift_endAccess();
    v16 = v41;
LABEL_6:
    v13 &= v13 - 1;

    v9 = v38;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return;
    }

    v13 = *(v9 + 8 * v18);
    ++v15;
    if (v13)
    {
      v17 = a4;
      v15 = v18;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_100022BA4(unint64_t a1)
{
  v31 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_26:
    v19 = a1;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v19;
    if (v1)
    {
LABEL_3:
      v2 = 0;
      v28 = a1 & 0xC000000000000001;
      v26 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_internalBundleIdentifiers;
      v27 = a1 & 0xFFFFFFFFFFFFFF8;
      v3 = a1 + 32;
      do
      {
        while (1)
        {
          if (v28)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v2 >= *(v27 + 16))
            {
              goto LABEL_25;
            }

            a1 = *(v3 + 8 * v2);
          }

          v4 = a1;
          if (__OFADD__(v2++, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v6 = *&v29[v26];
          v7 = [a1 origin];
          v8 = [v7 bundleIdentifier];

          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = v10;

          if (*(v6 + 16))
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v12 = Hasher._finalize()();
            v13 = -1 << *(v6 + 32);
            v14 = v12 & ~v13;
            if ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
            {
              break;
            }
          }

LABEL_4:

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a1 = specialized ContiguousArray._endMutation()();
          if (v2 == v1)
          {
            goto LABEL_22;
          }
        }

        v15 = ~v13;
        while (1)
        {
          v16 = (*(v6 + 48) + 16 * v14);
          v17 = *v16 == v9 && v16[1] == v11;
          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      while (v2 != v1);
LABEL_22:
      v18 = v31;
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v18 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if ((v18 & 0x4000000000000000) != 0)
  {
LABEL_31:
    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
      goto LABEL_32;
    }

LABEL_30:
    v20 = [objc_msgSend(objc_opt_self() "defaultProvider")];
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v29;
    aBlock[4] = sub_10002AF18;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001EB44;
    aBlock[3] = &unk_10003E480;
    v22 = _Block_copy(aBlock);
    v23 = v29;

    v24 = [v20 afterDelay:v22 performBlock:2.0];
    _Block_release(v22);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  if (*(v18 + 16) > 0)
  {
    goto LABEL_30;
  }

LABEL_32:
}

void sub_100022F60(unint64_t a1, char *a2)
{
  v28 = [objc_allocWithZone(CNDDonorLoader) init];
  v3 = sub_100008F0C(a1);
  v4 = 0;
  v5 = v3[8];
  v24 = v3 + 8;
  v27 = v3;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v25 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger;
  if ((v7 & v5) != 0)
  {
    do
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v27[7] + 8 * (v11 | (v10 << 6)));
      v13 = *&a2[v25];
      sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;
      v15 = String._bridgeToObjectiveC()();
      [v13 willRenewValues:isa withDonor:v15];

      v16 = String._bridgeToObjectiveC()();

      v17 = [v28 donorWithIdentifier:v16];

      v18 = swift_allocObject();
      *(v18 + 16) = a2;
      *(v18 + 24) = v12;
      v33 = sub_10002AF38;
      v34 = v18;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1000029C4;
      v32 = &unk_10003E4D0;
      v19 = _Block_copy(&aBlock);
      v20 = a2;

      [v17 addSuccessBlock:v19];
      _Block_release(v19);
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v33 = sub_10002AF40;
      v34 = v21;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_10002177C;
      v32 = &unk_10003E520;
      v22 = _Block_copy(&aBlock);
      v23 = v20;

      [v17 addFailureBlock:v22];
      _Block_release(v22);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = v24[v10];
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_100023290(uint64_t a1, char *a2, unint64_t a3)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v7 = result;
    if (a3 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v8 = result;
      if (result)
      {
LABEL_4:
        if (v8 < 1)
        {
          __break(1u);
        }

        else
        {
          v9 = 0;
          do
          {
            if ((a3 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v10 = *(a3 + 8 * v9 + 32);
            }

            v11 = v10;
            ++v9;
            v12 = swift_allocObject();
            *(v12 + 16) = a2;
            *(v12 + 24) = v11;
            aBlock[4] = sub_10002AFE4;
            aBlock[5] = v12;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1000239C8;
            aBlock[3] = &unk_10003E570;
            v13 = _Block_copy(aBlock);
            v14 = a2;
            v15 = v11;

            [v7 renewExpirationDateForDonatedValue:v15 acknowledgementHandler:v13];
            _Block_release(v13);
          }

          while (v8 != v9);
          return swift_unknownObjectRelease();
        }

        return result;
      }
    }

    else
    {
      v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v16 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];

    return [v16 couldNotRenewBecauseNotADonorExtension:a1];
  }
}

void sub_1000234D4(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v8 = sub_100003760(&qword_100044F50, &qword_100030240);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &aBlock - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011DB8(a1, v11, &qword_100044F50, &qword_100030240);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000630C(v11, &qword_100044F50, &qword_100030240);
    if (a2)
    {
      v17 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
      swift_errorRetain();
      v18 = _convertErrorToNSError(_:)();
      [v17 couldNotRenewBecauseDonorError:v18];
    }

    else
    {
      v38 = [NSError errorWithDomain:CNDonationErrorDomain code:2 userInfo:0];
      if (v38)
      {
        v39 = v38;
        v40 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
        v41 = _convertErrorToNSError(_:)();
        [v40 couldNotRenewBecauseDonorError:v41];
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v19 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v19 didRenewValue:a4 untilDate:isa];

    Date.timeIntervalSinceNow.getter();
    if (v21 <= 0.0)
    {
      sub_100003760(&qword_100044CC0, &unk_100030940);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10002FBD0;
      v29 = [a4 origin];
      v30 = [v29 donationIdentifier];

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *(v28 + 32) = v31;
      *(v28 + 40) = v33;
      v25 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
      v34 = swift_allocObject();
      *(v34 + 16) = a3;
      *(v34 + 24) = v28;
      *(v34 + 32) = 0;
      *(v34 + 40) = 1;
      *(v34 + 48) = nullsub_1;
      *(v34 + 56) = 0;
      v46 = sub_10002B00C;
      v47 = v34;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v27 = &unk_10003E5C0;
    }

    else
    {
      sub_100003760(&unk_100045620, &unk_100030750);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100030440;
      v23 = Date._bridgeToObjectiveC()().super.isa;
      v24 = [a4 copyWithNewExpirationDate:v23];

      *(v22 + 32) = v24;
      v25 = *&a3[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = v22;
      *(v26 + 32) = 0;
      *(v26 + 40) = 0;
      *(v26 + 48) = nullsub_1;
      *(v26 + 56) = 0;
      v46 = sub_10002B9B8;
      v47 = v26;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v27 = &unk_10003E610;
    }

    v44 = sub_10002B9B4;
    v45 = v27;
    v35 = _Block_copy(&aBlock);
    v36 = a3;

    v37 = [v25 performWriterBlock:{v35, aBlock, v43}];
    _Block_release(v35);
    swift_unknownObjectRelease();
    (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1000239C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100003760(&qword_100044F50, &qword_100030240);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a3;
  v10(v9, a3);

  return sub_10000630C(v9, &qword_100044F50, &qword_100030240);
}

uint64_t sub_100023B80()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger) willLoadExtensionVersions];
  sub_100003A34((v0 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence), *(v0 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence + 24));
  v2 = sub_10000D904();
  v10[0] = 0;
  v3 = [v2 result:v10];

  v4 = v10[0];
  if (v3)
  {
    v10[0] = 0;
    v5 = v4;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    v6 = v10[0];
    if (!v10[0])
    {
      v6 = sub_1000288EC(_swiftEmptyArrayStorage);
    }

    v7 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_bundleIDVersions;
    swift_beginAccess();
    *(v1 + v7) = v6;
  }

  else
  {
    v9 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100023CDC()
{
  if (*(v0 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_featureState) != 1)
  {
    v1 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_bundleIDVersions;
    swift_beginAccess();
    v2 = *(v0 + v1);
    if (!v2)
    {
      sub_100023B80();
      v2 = *(v0 + v1);
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    v3 = qword_100044718;

    if (v3 == -1)
    {
      if (*(v2 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      swift_once();
      if (*(v2 + 16))
      {
LABEL_6:
        v4 = sub_100026A0C(qword_100046308, unk_100046310);
        if (v5)
        {
          v6 = *(*(v2 + 56) + 8 * v4);

          if (v6 >= 3)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }
    }

LABEL_11:
    sub_10002444C();
LABEL_12:
    sub_100003760(&unk_100044F20, &unk_10002FCB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10002FBD0;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = 0xD00000000000001ALL;
    *(v7 + 40) = 0x8000000100032730;
    print(_:separator:terminator:)();

    v8 = [objc_opt_self() currentExtensionsObservable];
    v9 = objc_opt_self();
    v23 = sub_100024100;
    v24 = 0;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10001F570;
    v22 = &unk_10003E390;
    v10 = _Block_copy(&aBlock);
    v23 = sub_1000241F8;
    v24 = 0;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10001EB44;
    v22 = &unk_10003E3B8;
    v11 = _Block_copy(&aBlock);
    v23 = sub_100024294;
    v24 = 0;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10002177C;
    v22 = &unk_10003E3E0;
    v12 = _Block_copy(&aBlock);
    v13 = [v9 observerWithResultBlock:v10 completionBlock:v11 failureBlock:v12];
    _Block_release(v12);
    _Block_release(v11);
    _Block_release(v10);
    v14 = [v8 subscribe:v13];
    swift_unknownObjectRelease();
    v15 = [objc_opt_self() mainThreadScheduler];
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v23 = sub_10002AEF8;
    v24 = v16;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10001EB44;
    v22 = &unk_10003E430;
    v17 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v18 = [v15 afterDelay:v17 performBlock:10000.0];
    _Block_release(v17);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100024100(uint64_t a1)
{
  sub_100003760(&unk_100044F20, &unk_10002FCB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10002FBD0;
  _StringGuts.grow(_:)(25);
  v2._object = 0x80000001000327B0;
  v2._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();
}

uint64_t sub_1000241F8()
{
  sub_100003760(&unk_100044F20, &unk_10002FCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002FBD0;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x8000000100032790;
  print(_:separator:terminator:)();
}

uint64_t sub_100024294(uint64_t a1)
{
  sub_100003760(&unk_100044F20, &unk_10002FCB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10002FBD0;
  _StringGuts.grow(_:)(20);
  v2._object = 0x8000000100032770;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  sub_100003760(&qword_100045F70, &qword_100030DB0);
  _print_unlocked<A, B>(_:_:)();
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();
}

id sub_10002439C(void *a1)
{
  sub_100003760(&unk_100044F20, &unk_10002FCB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10002FBD0;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x8000000100032750;
  print(_:separator:terminator:)();

  return [a1 cancel];
}

void sub_10002444C()
{
  if (qword_100044718 != -1)
  {
    swift_once();
  }

  v1 = qword_100046308;
  v2 = unk_100046310;
  v3 = *&v0[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v1;
  v4[4] = v2;
  aBlock[4] = sub_10002AEB4;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B9B4;
  aBlock[3] = &unk_10003E368;
  v5 = _Block_copy(aBlock);
  v6 = v0;

  v7 = [v3 performWriterBlock:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
  v8 = [objc_opt_self() defaultStore];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = [v8 accounts];
  if (!v10)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = v10;
  aBlock[0] = 0;
  sub_1000038E8(0, &qword_100044C78, ACAccount_ptr);
  static Array._forceBridgeFromObjectiveC(_:result:)();
  v12 = aBlock[0];
  if (!aBlock[0])
  {
LABEL_23:
    __break(1u);
    return;
  }

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    sub_10002479C(0, v15);
  }

LABEL_15:

  v18 = sub_100023B1C(aBlock);
  if (*v17)
  {
    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v19;
    *v19 = 0x8000000000000000;
    sub_1000275E4(3, v1, v2, isUniquelyReferenced_nonNull_native);
    *v19 = v24;
  }

  (v18)(aBlock, 0);
  [*&v6[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger] willSaveExtensionVersions];
  v21 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_bundleIDVersions;
  swift_beginAccess();
  if (*&v6[v21])
  {
    sub_100003A34(&v6[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence], *&v6[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_persistence + 24]);

    v23 = sub_10000E62C(v22);
  }
}

void sub_10002479C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_accountDonationReceiver);
  if (!v6)
  {
    swift_unknownObjectRetain();
    v6 = v3;
  }

  v7 = type metadata accessor for AccountChangeAnalyzer();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_identifiersToRemove] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_activeRatherThanEnabledDataClasses] = &off_10003D010;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_dataClassBlacklist] = &off_10003D040;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_oldAccount] = a1;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_newAccount] = a2;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_store] = v6;
  *&v8[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_logger] = 0;
  v32.receiver = v8;
  v32.super_class = v7;
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = a2;
  v11 = objc_msgSendSuper2(&v32, "init");
  sub_100003C18();
  sub_1000040F0();
  sub_100004318();
  v12 = *&v11[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_donations];
  v13 = OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_identifiersToRemove;
  swift_beginAccess();
  v14 = *&v11[v13];
  if (!(v12 >> 62))
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = &unk_100045000;
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_14:

    v21 = *(v14 + 16);
    if (!v21)
    {
      goto LABEL_17;
    }

LABEL_15:
    v22 = *(v3 + v16[477]);
    v23 = v14 + 40;
    do
    {

      v24 = String._bridgeToObjectiveC()();

      [v22 removing:v24];

      v23 += 16;
      --v21;
    }

    while (v21);
    goto LABEL_17;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v16 = &unk_100045000;
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v15 < 1)
  {
    __break(1u);
    return;
  }

  v30 = v3;
  v17 = *(v3 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_accountLogger);
  swift_bridgeObjectRetain_n();

  for (i = 0; i != v15; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v12 + 8 * i + 32);
    }

    v20 = v19;
    [v17 donating:{v19, v30}];
  }

  swift_bridgeObjectRelease_n();
  v3 = v30;
  v16 = &unk_100045000;
  v21 = *(v14 + 16);
  if (v21)
  {
    goto LABEL_15;
  }

LABEL_17:

  sub_100004694();
  if (*(*&v11[v13] + 16))
  {
    v25 = *&v11[OBJC_IVAR____TtC21contactsdonationagent21AccountChangeAnalyzer_store];
    if (v25)
    {

      isa = Array._bridgeToObjectiveC()().super.isa;

      v27 = swift_allocObject();
      *(v27 + 16) = v11;
      aBlock[4] = sub_10002AE90;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001F1F8;
      aBlock[3] = &unk_10003E318;
      v28 = _Block_copy(aBlock);
      v29 = v11;

      [v25 removeDonatedMeCardValuesForIdentifiers:isa completionHandler:v28];
      _Block_release(v28);

      v11 = isa;
    }
  }
}

uint64_t sub_100024BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  v10 = String._bridgeToObjectiveC()();
  [v9 willRejectDonationIdentifier:v10];

  v11 = *&v4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v17[4] = sub_10002AB0C;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10002B9B4;
  v17[3] = &unk_10003E160;
  v13 = _Block_copy(v17);
  v14 = v4;

  v15 = [v11 performWriterBlock:v13];
  _Block_release(v13);
  return swift_unknownObjectRelease();
}

void sub_100024D48(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a5;
  v64 = a6;
  v9 = sub_100003760(&qword_100045200, &qword_1000303D0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v59 - v11;
  v13 = type metadata accessor for CNDonationValue.Value(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v18 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v62 = &v59 - v20;
  v21 = OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_donations;
  swift_beginAccess();
  v22 = *&a2[v21];
  if (!*(v22 + 16))
  {
    goto LABEL_7;
  }

  v60 = a4;
  v61 = a3;
  v23 = sub_100026A0C(a3, a4);
  if ((v24 & 1) == 0)
  {

    a4 = v60;
    a3 = v61;
LABEL_7:
    v47 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
    v48 = String._bridgeToObjectiveC()();
    [v47 couldNotRejectUnknownDonationIdentifier:v48];

    v49 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler];
    v50 = swift_allocObject();
    v50[2] = a2;
    v50[3] = a3;
    v51 = v63;
    v52 = v64;
    v50[4] = a4;
    v50[5] = v51;
    v50[6] = v52;
    v70 = sub_10002AB3C;
    v71 = v50;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_10001EB44;
    v69 = &unk_10003E1B0;
    v53 = _Block_copy(&aBlock);
    v54 = a2;

    [v49 performBlock:v53];
    _Block_release(v53);
    return;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

  v26 = _s11ValueCasterCMa(0);
  v27 = objc_allocWithZone(v26);
  (*(v14 + 56))(v27 + OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value, 1, 1, v13);
  v65.receiver = v27;
  v65.super_class = v26;
  v28 = objc_msgSendSuper2(&v65, "init");
  v59 = v25;
  [v25 acceptDonationValueVisitor:v28];
  v29 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  sub_100011DB8(v28 + v29, v12, &qword_100045200, &qword_1000303D0);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = v62;
    sub_1000080C0(v12, v62);
    sub_10000844C(v30, v18);
    v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v32 = swift_allocObject();
    sub_1000080C0(v18, v32 + v31);
    v33 = swift_allocObject();
    v34 = v60;
    v35 = v61;
    v33[2] = a2;
    v33[3] = v35;
    v37 = v63;
    v36 = v64;
    v33[4] = v34;
    v33[5] = v37;
    v33[6] = v36;
    v38 = v34;
    v39 = a2;

    sub_10002A6C0(v40, sub_10002ACE4);
    v42 = v41;

    if (*(v42 + 16))
    {
      v43 = sub_10001EB88(v42);
      v44 = sub_10001EDCC(v42);

      v45 = swift_allocObject();
      v45[2] = v39;
      v45[3] = v44;
      v45[4] = sub_10002ADB4;
      v45[5] = v33;
      v46 = v39;

      sub_100020B0C(v43, 0, 1, sub_10002B844, v45);
    }

    else
    {

      v55 = *&v39[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler];
      v56 = swift_allocObject();
      v56[2] = 1;
      v56[3] = v39;
      v56[4] = v35;
      v56[5] = v38;
      v56[6] = v37;
      v56[7] = v36;
      v70 = sub_10002ADE0;
      v71 = v56;
      aBlock = _NSConcreteStackBlock;
      v67 = 1107296256;
      v68 = sub_10001EB44;
      v69 = &unk_10003E250;
      v57 = _Block_copy(&aBlock);
      v58 = v39;

      [v55 performBlock:v57];

      _Block_release(v57);
    }

    sub_1000084B0(v62);
  }
}

uint64_t sub_100025340(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v6 = sub_100003760(&qword_100045200, &qword_1000303D0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for CNDonationValue.Value(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s11ValueCasterCMa(0);
  v16 = objc_allocWithZone(v15);
  (*(v11 + 56))(v16 + OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value, 1, 1, v10);
  v22.receiver = v16;
  v22.super_class = v15;
  v17 = objc_msgSendSuper2(&v22, "init");
  [a3 acceptDonationValueVisitor:v17];
  v18 = OBJC_IVAR____TtCE21contactsdonationagentCSo15CNDonationValueP33_0B54ECC677397DAC3B941865EB3B64B811ValueCaster_value;
  swift_beginAccess();
  sub_100011DB8(v17 + v18, v9, &qword_100045200, &qword_1000303D0);

  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1000080C0(v9, v14);
    v20 = _sSo15CNDonationValueC21contactsdonationagentE0B0O2eeoiySbAE_AEtFZ_0(v14, a4);
    sub_1000084B0(v14);
    return v20 & 1;
  }

  return result;
}

void sub_100025578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger];
  v10 = String._bridgeToObjectiveC()();
  [v9 willRejectClusterIdentifier:v10];

  if (!a1 && a2 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = *&v4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler];
    v12 = swift_allocObject();
    v12[2] = v4;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = a4;
    v24 = sub_1000263B8;
    v25 = v12;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10001EB44;
    v23 = &unk_10003DF30;
    v13 = _Block_copy(&v20);
    v14 = v4;

    [v11 performBlock:v13];
    _Block_release(v13);
  }

  else
  {
    v15 = *&v4[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_lock];
    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    v16[6] = a4;
    v24 = sub_100026388;
    v25 = v16;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10002B9B4;
    v23 = &unk_10003DEE0;
    v17 = _Block_copy(&v20);
    v18 = v4;

    v19 = [v15 performWriterBlock:v17];
    _Block_release(v17);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000257CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a1 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  v6 = String._bridgeToObjectiveC()();
  [v5 couldNotRejectUnknownClusterIdentifier:v6];

  v7 = String._bridgeToObjectiveC()();
  [v5 didRejectClusterIdentifier:v7];

  return a4(0);
}

uint64_t sub_100025870(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a6;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  v12 = a2;

  v14 = sub_10002A840(v13, a3, a4);

  if (*(v14 + 16))
  {
    v15 = sub_10001EB88(v14);
    v16 = sub_10001EDCC(v14);

    v17 = swift_allocObject();
    v17[2] = v12;
    v17[3] = v16;
    v17[4] = sub_1000263C8;
    v17[5] = v11;
    v18 = v12;

    sub_100020B0C(v15, 0, 1, sub_10002AA48, v17);
  }

  else
  {

    v19 = *&v12[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler];
    v20 = swift_allocObject();
    v20[2] = 1;
    v20[3] = v12;
    v20[4] = a3;
    v20[5] = a4;
    v20[6] = a5;
    v20[7] = a6;
    v24[4] = sub_10002AA2C;
    v24[5] = v20;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_10001EB44;
    v24[3] = &unk_10003DFA8;
    v21 = _Block_copy(v24);

    v22 = v12;

    [v19 performBlock:v21];
    _Block_release(v21);
  }
}

void sub_100025AE8(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *&a2[OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_replyScheduler];
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v20[4] = a8;
  v20[5] = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_10001EB44;
  v20[3] = a9;
  v18 = _Block_copy(v20);
  sub_10002AAFC(a1);
  v19 = a2;

  [v16 performBlock:v18];
  _Block_release(v18);
}

uint64_t sub_100025C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, SEL *a7, SEL *a8, SEL *a9)
{
  if (a1)
  {
    v11 = a1;
    if (a1 != 1)
    {
      v15 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
      v17 = String._bridgeToObjectiveC()();
      v14 = _convertErrorToNSError(_:)();
      [v15 *a7];

      goto LABEL_7;
    }

    v12 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
    v13 = String._bridgeToObjectiveC()();
    [v12 *a9];
  }

  else
  {
    v12 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_logger);
  }

  v14 = String._bridgeToObjectiveC()();
  [v12 *a8];
  v11 = 0;
LABEL_7:

  return a5(v11);
}

uint64_t sub_100025D50(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

void sub_100025E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + OBJC_IVAR____TtC21contactsdonationagent13DonationAgent_feedbackStore);
  sub_1000038E8(0, &qword_100044C68, CNDonationValue_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = CNDonationStoreMeCardIdentifier;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v13[4] = sub_10002AA54;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10001F18C;
  v13[3] = &unk_10003E020;
  v11 = _Block_copy(v13);
  v12 = v9;

  [v7 rejectDonatedValues:isa contactIdentifier:v12 completionHandler:v11];
  _Block_release(v11);
}

id sub_100025FFC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DonationAgent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for DonationAgent.FeatureState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DonationAgent.FeatureState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100026330()
{
  result = qword_100045F50;
  if (!qword_100045F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F50);
  }

  return result;
}

uint64_t sub_1000263A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10002642C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003760(&qword_100044CC0, &unk_100030940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100026538(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003760(&qword_100045F80, &qword_100030DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003760(&qword_100045F88, &unk_100030DC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100026680(uint64_t a1, uint64_t a2)
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

  sub_100003760(&qword_100044CC0, &unk_100030940);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100026704(uint64_t a1, uint64_t a2)
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

  sub_100003760(&unk_100045620, &unk_100030750);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_10002678C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000267CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000267AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000268D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000267CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003760(&qword_100044CC0, &unk_100030940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000268D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003760(&qword_100045FC0, &qword_100030DE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003760(&qword_100045FC8, &qword_100030DF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100026A0C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100026AC8(a1, a2, v4);
}

unint64_t sub_100026A84(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100026B80(a1, v4);
}

unint64_t sub_100026AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100026B80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10002B6E4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10002B740(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

Swift::Int sub_100026C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003760(&unk_100045F60, &qword_100030DA8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100026EE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003760(&qword_100045F58, &unk_100030D98);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = result + 64;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10002718C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003760(&qword_100045F78, &qword_100030DB8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100027434(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000275E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100026A0C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100026C48(v16, a4 & 1);
      result = sub_100026A0C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000278C0();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_100027748(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100026A0C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100026EE8(v16, a4 & 1);
      v11 = sub_100026A0C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100027A28();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void *sub_1000278C0()
{
  v1 = v0;
  sub_100003760(&unk_100045F60, &qword_100030DA8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

  return result;
}

id sub_100027A28()
{
  v1 = v0;
  sub_100003760(&qword_100045F58, &unk_100030D98);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

        result = v20;
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

  return result;
}

void *sub_100027B94()
{
  v1 = v0;
  sub_100003760(&qword_100045F78, &qword_100030DB8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void *sub_100027D04(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100027E5C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_100027FB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  v36 = a4;
  v37 = a3;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v38 = a5;

  v17 = 0;
  v18 = 0;
  while (2)
  {
    v35 = v17;
    while (1)
    {
      if (!v14)
      {
        v20 = v18;
        while (1)
        {
          v18 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v18 >= v15)
          {
            goto LABEL_22;
          }

          v21 = *(v10 + 8 * v18);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v39 = (v21 - 1) & v21;
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64(v14));
      v39 = (v14 - 1) & v14;
LABEL_12:
      v22 = v19 | (v18 << 6);
      v23 = *(*(v37 + 56) + 8 * v22);

      v24 = v23;
      v25 = [v24 origin];
      v26 = [v25 clusterIdentifier];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v27 == v36 && v29 == v38)
      {
        break;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = v39;
      if (v31)
      {
        goto LABEL_19;
      }
    }

    v14 = v39;
LABEL_19:
    *(a1 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v17 = v35 + 1;
    if (!__OFADD__(v35, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_22:
  v32 = sub_100028418(a1, a2, v35, v37);

  return v32;
}

unint64_t *sub_1000281F0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_100029598(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_100028294(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10002A534(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

Swift::Int sub_100028324(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    swift_bridgeObjectRetain_n();
    v12 = sub_100027FB0(a1, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

Swift::Int sub_100028418(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003760(&qword_100045F58, &unk_100030D98);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    v33 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100028658(void *a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4)
{
  v24 = type metadata accessor for ProductionEnvironment();
  v25 = &off_10003DCF0;
  v23[0] = a1;
  sub_100003B68(v23, v22);
  v8 = OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_environment;
  swift_beginAccess();
  v9 = a1;
  sub_10002B264(v22, a4 + v8);
  swift_endAccess();
  v10 = (a4 + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_changeHandler);
  v11 = *(a4 + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_changeHandler);
  v12 = *(a4 + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_changeHandler + 8);
  *v10 = a2;
  v10[1] = a3;

  sub_10000F288(v11, v12);
  v13 = String._bridgeToObjectiveC()();
  sub_100003A34(v23, v24);
  v14 = sub_100014558();
  [v14 addObserver:a4 selector:"meCardChanged" name:v13 object:0];
  v15 = sub_1000148A4();
  v16 = sub_100014A44(v15);
  v17 = sub_10001507C(v15);
  if ((v16 & 1) != 0 || (v17) && (v18 = *v10) != 0)
  {
    v19 = v10[1];

    v18(v20);

    sub_10000F288(v18, v19);
  }

  else
  {
  }

  return sub_100003850(v23);
}

unint64_t sub_1000287E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003760(&qword_100045F58, &unk_100030D98);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100026A0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000288EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003760(&unk_100045F60, &qword_100030DA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100026A0C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000289FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003760(&unk_100045FD0, qword_100030DF8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100026A0C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100028B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003760(&unk_100045570, &unk_1000306E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011DB8(v4, v13, &unk_100045FA0, &unk_100030B70);
      result = sub_100026A84(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000E95C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}