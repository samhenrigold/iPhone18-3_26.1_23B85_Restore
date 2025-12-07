uint64_t sub_1000197E8()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
    v7 = *(v3 + 216);

    return _swift_task_switch(sub_1001BCF8C, v7, 0);
  }

  else
  {
    sub_1000222B8();

    v8 = sub_100019DF8();

    return v9(v8);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLStatement.bind(parameters:)(Swift::OpaquePointer parameters)
{
  v2 = *(v1 + 56);
  if (v2)
  {

    sub_1000199B0(v4, v1, v2, parameters._rawValue);
  }

  else
  {
    v5 = sub_10001ED34();
    v6 = sub_100007544(&unk_1002527D0, v5);
    sub_10000BC48(v6, v7);
    swift_willThrow();
  }
}

void sub_1000199B0(uint64_t a1, uint64_t a2, sqlite3_stmt *a3, uint64_t a4)
{
  sub_1000081D4(a1, a2, a3, a4);
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  sub_100012DE8();
  if (v9 || (v8 & 1) == 0)
  {
    sub_10001CDE0();
    __chkstk_darwin(v11);
    sub_10000BE84();
    *(v12 - 16) = sub_1001A6740;
    *(v12 - 8) = &v13;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
    if (v4)
    {

      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  sub_100019EB4(a2, a3, a4);
  if (!v4)
  {
    objc_autoreleasePoolPop(v10);

    goto LABEL_11;
  }

  objc_autoreleasePoolPop(v10);

LABEL_12:
  sub_100009EF8();
}

uint64_t sub_100019B54(uint64_t a1)
{

  return swift_once();
}

id sub_100019B80(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100019C3C()
{

  return swift_allocObject();
}

uint64_t *sub_100019C68()
{
  *(v0 - 96) = *(v0 - 144);

  return sub_100017E64((v0 - 120));
}

BOOL sub_100019C84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18);
}

uint64_t sub_100019CA4()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100019CC4(unint64_t a1)
{

  return sub_10011F39C(a1, 0x13uLL, 2, v1, v2);
}

uint64_t sub_100019CE4()
{
  sub_100003CA8((v0 + 16), *(v0 + 40));
}

void sub_100019D14(uint64_t a1)
{
  *(v2 - 216) = v1;

  sub_1000AC178(v2 - 184, v2 - 152);
}

unint64_t sub_100019D38()
{

  return sub_100012A94();
}

void sub_100019D68()
{
  *(*(v2 + 56) + 8 * v0) = v1;
}

uint64_t sub_100019D84()
{

  return _NativeDictionary._delete(at:)();
}

unint64_t sub_100019DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 64) = a2;
  *(v3 - 56) = a3;

  return sub_100017A08();
}

uint64_t sub_100019E0C(uint64_t a1, ...)
{

  return static LogInterpolation.prefix(_:_:)();
}

void (*sub_100019E50(void (*result)(uint64_t, uint64_t, uint64_t)))(uint64_t, uint64_t, uint64_t)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = result;

    v3(v4, v1, v2);
  }

  return result;
}

void sub_100019EB4(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  SQLStatement.reset()();
  if (!v6)
  {
    sqlite3_clear_bindings(a2);
    v7 = *(a3 + 16);
    if (v7)
    {
      v8 = (a3 + 48);
      v9 = 1;
      v10 = 2147483646;
      v11 = *(a1 + 16);
      v62 = a2;
      v59 = v11;
      do
      {
        v12 = *(v8 - 2);
        v13 = *(v8 - 1);
        v63 = v8 + 24;
        v64 = *v8;
        switch(*v8)
        {
          case 1:
            v31 = sub_100005618();
            v21 = sqlite3_bind_int64(v31, v32, v12);
            goto LABEL_16;
          case 2:
            v22 = sub_100005618();
            v21 = sqlite3_bind_double(v22, v23, v24);
            goto LABEL_16;
          case 3:
            v25 = qword_100268820;

            if (v25 != -1)
            {
              sub_10000706C();
              swift_once();
            }

            v26 = qword_100287918;
            sub_10000358C();
            String.utf8CString.getter();
            v27 = sub_100005618();
            v30 = sqlite3_bind_text(v27, v28, v29, -1, v26);

            v11 = v59;
            break;
          case 4:
            v19 = sub_100005618();
            v21 = sqlite3_bind_null(v19, v20);
LABEL_16:
            v30 = v21;
            break;
          default:
            switch(v13 >> 62)
            {
              case 1uLL:
                v57 = HIDWORD(v12);
                if (v12 > v12 >> 32)
                {
                  goto LABEL_41;
                }

                v58 = v12;
                v48 = sub_10000358C();
                sub_10003A5E0(v48, v49);
                v60 = v13;
                if (__DataStorage._bytes.getter() && __OFSUB__(v12, __DataStorage._offset.getter()))
                {
                  goto LABEL_47;
                }

                v35 = __DataStorage._length.getter();
                LODWORD(v44) = HIDWORD(v12) - v12;
                if (__OFSUB__(HIDWORD(v12), v12))
                {
                  goto LABEL_44;
                }

                if (qword_100268820 == -1)
                {
                  goto LABEL_33;
                }

                goto LABEL_38;
              case 2uLL:
                v57 = *(v12 + 16);

                v58 = v12;
                v33 = sub_10000358C();
                sub_10003A5E0(v33, v34);
                v60 = v13;
                if (__DataStorage._bytes.getter() && __OFSUB__(v57, __DataStorage._offset.getter()))
                {
                  goto LABEL_46;
                }

                v35 = __DataStorage._length.getter();
                v43 = *(v12 + 16);
                v42 = *(v12 + 24);
                v44 = v42 - v43;
                if (__OFSUB__(v42, v43))
                {
                  goto LABEL_42;
                }

                if (v44 < 0xFFFFFFFF80000000)
                {
                  goto LABEL_43;
                }

                if (v44 > 0x7FFFFFFF)
                {
                  goto LABEL_45;
                }

                if (qword_100268820 != -1)
                {
LABEL_38:
                  sub_10000706C();
                  v35 = swift_once();
                }

LABEL_33:
                v50 = sub_10000C1F8(v35, v36, v37, v38, qword_100287918, v39, v40, v41, v56, v57, v58, v59, v60, v62);
                v30 = sqlite3_bind_blob(v50, v51, v52, v44, v53);
                v47 = v12;
                v13 = v61;
LABEL_34:
                sub_10001CE30(v47, v13, 0);
                break;
              case 3uLL:
                if (qword_100268820 != -1)
                {
                  sub_10000706C();
                  swift_once();
                }

                v14 = sub_100005618();
                v17 = 0;
                goto LABEL_27;
              default:
                if (qword_100268820 != -1)
                {
                  sub_10000706C();
                  swift_once();
                }

                v14 = sub_100005618();
LABEL_27:
                v30 = sqlite3_bind_blob(v14, v15, v16, v17, v18);
                v45 = sub_10000358C();
                sub_10001CE30(v45, v46, 0);
                v47 = v12;
                goto LABEL_34;
            }

            break;
        }

        v11(v30, 0x61747320646E6962, 0xEE00746E656D6574);
        v54 = sub_10000358C();
        sub_10001CE30(v54, v55, v64);
        if (!v10)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
        }

        ++v9;
        --v10;
        --v7;
        v8 = v63;
      }

      while (v7);
    }
  }
}

void sub_10001A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100019DB8(a1, a2, a3);
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  v5 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v10 == 2 || (v10 & 1) == 0)
  {
    __chkstk_darwin(v5);
    sub_10000BE84();
    *(v8 - 16) = sub_1001A6724;
    *(v8 - 8) = &v9;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10000B41C();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    sub_10001A4EC();
    v7 = sqlite3_reset(v4);
    (*(v3 + 16))(v7, 0x7473207465736572, 0xEF746E656D657461);
    objc_autoreleasePoolPop(v6);
  }

  sub_100009EF8();
}

uint64_t sub_10001A4EC()
{

  sub_10001A54C(v1, v0);
}

uint64_t sub_10001A5A0(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 32))
  {

    sub_10001D534();
  }

  *(a1 + 32) = 0;
}

void sub_10001A648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1000081D4(a1, a2, a3, a4);
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  sub_100012DE8();
  if (v7 || (v6 & 1) == 0)
  {
    sub_10001CDE0();
    __chkstk_darwin(v9);
    sub_10000BE84();
    *(v10 - 16) = sub_100052DF0;
    *(v10 - 8) = &v11;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10000B41C();
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    sub_10001A768(a2, a3);
    objc_autoreleasePoolPop(v8);
  }

  sub_100009EF8();
}

void sub_10001A768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_10001ED34();
    swift_allocError();
    *v10 = 0;
    goto LABEL_18;
  }

  v5 = *(a1 + 112);
  if ((v5 & 1) == 0)
  {
    v17 = a2;
    *(a1 + 112) = 1;
    if (*(a1 + 32))
    {
      v6 = 0xD00000000000001ALL;
    }

    else
    {
      v6 = 0xD00000000000001BLL;
    }

    if (*(a1 + 32))
    {
      v7 = "BEGIN IMMEDIATE TRANSACTION";
    }

    else
    {
      v7 = "SQL Error with type: ";
    }

    v8 = String.utf8CString.getter();
    v9 = sqlite3_exec(v3, (v8 + 32), 0, 0, 0);

    sub_10001515C(v9, 0xD000000000000011, 0x8000000100202EA0, v6, v7 | 0x8000000000000000);

    if (v2)
    {
      *(a1 + 112) = 0;
LABEL_18:
      swift_willThrow();
      return;
    }

    a2 = v17;
  }

  a2();
  if (v2)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  if ((v5 & 1) == 0)
  {
    if (v11)
    {
      v12 = 0x4B4341424C4C4F52;
    }

    else
    {
      v12 = 0x3B54494D4D4F43;
    }

    if (v11)
    {
      v13 = 0xE90000000000003BLL;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    *(a1 + 112) = 0;
    v14 = String.utf8CString.getter();
    v15 = sqlite3_exec(v3, (v14 + 32), 0, 0, 0);

    sub_10001515C(v15, 0x6E61727420646E65, 0xEF6E6F6974636173, v12, v13);

    v16 = sqlite3_exec(v3, "PRAGMA incremental_vacuum(256)", 0, 0, 0);
    sub_10001515C(v16, 0xD000000000000010, 0x8000000100202EE0, 0xD00000000000001ELL, 0x8000000100202EC0);
  }

  if (v11)
  {
    goto LABEL_18;
  }
}

uint64_t sub_10001AA2C(uint64_t a1, sqlite3_stmt *a2, _BYTE *a3)
{
  sub_10001A4EC();
  v7 = sqlite3_step(a2);
  result = (*(a1 + 16))();
  if (!v3)
  {
    result = sub_100016CE0(v7);
    *a3 = result;
  }

  return result;
}

void sub_10001AAC4()
{
  sub_10000C398();
  if ((v4 & 1) == 0 || (sub_100002EBC(), v5 == v6))
  {
LABEL_6:
    sub_10000B860();
    if (v3)
    {
      sub_10007B9A4(&qword_10026BFA8, &qword_1001EA300);
      v7 = sub_10001CD54();
      sub_100019BE0(v7);
      sub_100023D60(v8);
      if (v1)
      {
LABEL_8:
        sub_10003CD70(v0 + 32, v2, (v3 + 4));
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    sub_10007B9A4(&qword_10026BFB0, &qword_1001EA308);
    sub_1000071C0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_10000AE9C();
  if (!v5)
  {
    sub_100004F88();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_10001ABBC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = 0;
  v2[2] = a2;
  return v2;
}

void sub_10001ABEC()
{
  sub_100007E34();
  v2 = v1;
  v4 = v3;
  v15[2] = v3;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v1;
  sub_100017A08();
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  if (LOBYTE(v16[0]) == 2 || (v16[0] & 1) == 0)
  {
    sub_10001CDE0();
    __chkstk_darwin(v13);
    sub_10000BE84();
    *(v14 - 16) = sub_1001A677C;
    *(v14 - 8) = v15;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
    if (v0)
    {

      goto LABEL_15;
    }

LABEL_14:

    goto LABEL_15;
  }

  v7 = objc_autoreleasePoolPush();
  sub_10001AED0();
  v8 = *(v4 + 32);
  if (!v8 || (v9 = String.lowercased()(), , v10 = sub_10001B0E4(v9._countAndFlagsBits, v9._object, v8), v12 = v11, , , (v12 & 1) != 0))
  {
LABEL_13:
    objc_autoreleasePoolPop(v7);

    goto LABEL_14;
  }

  sub_10001B138(v10, v16);
  if (!v0)
  {
    sub_10001D2C8(v16, v2);
    goto LABEL_13;
  }

  objc_autoreleasePoolPop(v7);

LABEL_15:
  sub_1000072EC();
  sub_100005B78();
}

uint64_t sub_10001ADD4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    memset(v10, 0, sizeof(v10));

    sub_10001ABEC();

    if (v3)
    {
      return sub_100002C5C(v10);
    }

    else
    {
      sub_100003C38(v10, &v9);
      sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v11 = 0;
        v12 = 0;
      }

      sub_100002C5C(v10);
      return v11;
    }
  }

  else
  {
    v5 = sub_10001ED34();
    v6 = sub_100007544(&unk_1002527D0, v5);
    return sub_100006E04(v6, v7, v8);
  }
}

void sub_10001AED0()
{
  if (*(v0 + 32))
  {
    return;
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    return;
  }

  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = sqlite3_column_count(v1);
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  if (!v3)
  {
LABEL_17:
    *(v0 + 32) = v2;

    return;
  }

  v4 = 0;
  v5 = v3;
  while (1)
  {
    if (!sqlite3_column_name(v1, v4))
    {
      goto LABEL_16;
    }

    String.init(cString:)();
    v6 = String.lowercased()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v2;
    v8 = sub_100012A94();
    v10 = *(v2 + 16);
    v11 = (v9 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    v14 = v9;
    sub_10007B9A4(&qword_10026AE68, &qword_1001E8618);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12))
    {
      v15 = sub_100012A94();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_23;
      }

      v13 = v15;
    }

    if (v14)
    {

      v2 = v20;
      *(v20[7] + 8 * v13) = v4;
    }

    else
    {
      v2 = v20;
      v20[(v13 >> 6) + 8] |= 1 << v13;
      *(v20[6] + 16 * v13) = v6;
      *(v20[7] + 8 * v13) = v4;
      v17 = v20[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_21;
      }

      v20[2] = v19;
    }

LABEL_16:
    if (v5 == ++v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10001B0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100012A94();
  if (v4)
  {
    return sub_10000A864(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001B138@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_10000357C();

    sub_10001D058(v6, v3, a1, v11);

    sub_100003C38(v11, &v10);
    sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *a2 = 0u;
      a2[1] = 0u;
    }

    return sub_100002C5C(v11);
  }

  else
  {
    v8 = sub_10001ED34();
    sub_100007544(&unk_1002527D0, v8);
    *v9 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_10001B228()
{
}

uint64_t sub_10001B244(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for JSOnDeviceStorageDatabase();
}

uint64_t sub_10001B25C()
{

  return sub_10007B9A4(v0, v1);
}

uint64_t sub_10001B274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10001B2C4(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v40._countAndFlagsBits = 0xD00000000000002FLL;
      v40._object = 0x8000000100203B50;
      SQLDatabase.execute(sql:parameters:)(v40, _swiftEmptyArrayStorage);
      if (!v41)
      {
        return 2;
      }
    }

    else if (a2)
    {
      sub_1001B80FC();
      swift_allocError();
      *v42 = 0;
      v42[1] = 0;
      swift_willThrow();
    }

    else
    {
      _StringGuts.grow(_:)(73);
      v2._countAndFlagsBits = 0x5420455441455243;
      v2._object = 0xED000020454C4241;
      String.append(_:)(v2);
      v3._countAndFlagsBits = 0x7361657261;
      v3._object = 0xE500000000000000;
      String.append(_:)(v3);
      v4._countAndFlagsBits = 10272;
      v4._object = 0xE200000000000000;
      String.append(_:)(v4);
      v5._countAndFlagsBits = 0x696669746E656469;
      v5._object = 0xEA00000000007265;
      String.append(_:)(v5);
      v6._countAndFlagsBits = 0xD000000000000013;
      v6._object = 0x80000001001F4F20;
      String.append(_:)(v6);
      v7._countAndFlagsBits = 1953259891;
      v7._object = 0xE400000000000000;
      String.append(_:)(v7);
      v8._countAndFlagsBits = 0x202C5458455420;
      v8._object = 0xE700000000000000;
      String.append(_:)(v8);
      v9._object = 0x8000000100203990;
      v9._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 0x202C5458455420;
      v10._object = 0xE700000000000000;
      String.append(_:)(v10);
      v11._object = 0xEA00000000006E69;
      v11._countAndFlagsBits = 0x616D6F4464656573;
      String.append(_:)(v11);
      v12._countAndFlagsBits = 0x202C5458455420;
      v12._object = 0xE700000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 0x6570795464656573;
      v13._object = 0xE800000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 0x295458455420;
      v14._object = 0xE600000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      SQLDatabase.execute(sql:parameters:)(v15, _swiftEmptyArrayStorage);

      if (!v16)
      {
        v17._countAndFlagsBits = 0xD00000000000003BLL;
        v17._object = 0x8000000100203B80;
        SQLDatabase.execute(sql:parameters:)(v17, _swiftEmptyArrayStorage);
        if (!v18)
        {
          v19._countAndFlagsBits = 0xD000000000000033;
          v19._object = 0x8000000100203BC0;
          SQLDatabase.execute(sql:parameters:)(v19, _swiftEmptyArrayStorage);
          if (!v20)
          {
            _StringGuts.grow(_:)(85);
            v21._countAndFlagsBits = 0x5420455441455243;
            v21._object = 0xED000020454C4241;
            String.append(_:)(v21);
            v22._countAndFlagsBits = 0x6E656D7461657274;
            v22._object = 0xEA00000000007374;
            String.append(_:)(v22);
            v23._countAndFlagsBits = 10272;
            v23._object = 0xE200000000000000;
            String.append(_:)(v23);
            v24._countAndFlagsBits = 0x444961657261;
            v24._object = 0xE600000000000000;
            String.append(_:)(v24);
            v25._countAndFlagsBits = 0x202C5458455420;
            v25._object = 0xE700000000000000;
            String.append(_:)(v25);
            v26._countAndFlagsBits = 0x614D74656B637562;
            v26._object = 0xE900000000000078;
            String.append(_:)(v26);
            v27._countAndFlagsBits = 0x52454745544E4920;
            v27._object = 0xEA0000000000202CLL;
            String.append(_:)(v27);
            v28._countAndFlagsBits = 0x694D74656B637562;
            v28._object = 0xE90000000000006ELL;
            String.append(_:)(v28);
            v29._countAndFlagsBits = 0x52454745544E4920;
            v29._object = 0xEA0000000000202CLL;
            String.append(_:)(v29);
            v30._countAndFlagsBits = 0x65746144646E65;
            v30._object = 0xE700000000000000;
            String.append(_:)(v30);
            v31._countAndFlagsBits = 0x202C4C41455220;
            v31._object = 0xE700000000000000;
            String.append(_:)(v31);
            v32._countAndFlagsBits = 0x696669746E656469;
            v32._object = 0xEA00000000007265;
            String.append(_:)(v32);
            v33._countAndFlagsBits = 0x202C5458455420;
            v33._object = 0xE700000000000000;
            String.append(_:)(v33);
            v34._countAndFlagsBits = 0x7461447472617473;
            v34._object = 0xE900000000000065;
            String.append(_:)(v34);
            v35._countAndFlagsBits = 0x202C4C41455220;
            v35._object = 0xE700000000000000;
            String.append(_:)(v35);
            v36._countAndFlagsBits = 0x6F726665726F7473;
            v36._object = 0xEA0000000000746ELL;
            String.append(_:)(v36);
            v37._countAndFlagsBits = 0x295458455420;
            v37._object = 0xE600000000000000;
            String.append(_:)(v37);
            v38._countAndFlagsBits = 0;
            v38._object = 0xE000000000000000;
            SQLDatabase.execute(sql:parameters:)(v38, _swiftEmptyArrayStorage);

            if (!v39)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return a2;
}

uint64_t sub_10001B7D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  result = __chkstk_darwin(v4 - 8);
  if (*(a1 + 64))
  {
    v26 = *(a1 + 64);
    if (qword_1002686B8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1001E5F70;
    v29 = type metadata accessor for SQLDatabase();
    v27 = a1;

    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v27);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._object = 0x8000000100202BE0;
    v9._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
    v10 = *(a1 + 32) == 0;
    v11 = 0x6E6F646165722820;
    if (!*(a1 + 32))
    {
      v11 = 0;
    }

    v12 = 0xE000000000000000;
    v29 = &type metadata for String;
    if (!v10)
    {
      v12 = 0xEB0000000029796CLL;
    }

    v27 = v11;
    v28 = v12;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v27, &qword_10026D350, &qword_1001E6050);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v29 = &type metadata for String;
    v27 = v15;
    v28 = v14;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v27, &qword_10026D350, &qword_1001E6050);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    LogInterpolation.init(stringInterpolation:)();
    v17 = static os_log_type_t.debug.getter();
    sub_1000036B0(v17, v6);

    swift_beginAccess();
    v18 = *(a1 + 104);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v18 + 32;

      do
      {
        sub_10001C56C(v20, v30);
        if (swift_weakLoadStrong())
        {
          sub_10001D3C8();
          if (v2)
          {

            sub_10000A00C(v30, &qword_10026BFB0, &qword_1001EA308);
            v2 = 0;
          }

          else
          {
            sub_10000A00C(v30, &qword_10026BFB0, &qword_1001EA308);
          }
        }

        else
        {
          sub_10000A00C(v30, &qword_10026BFB0, &qword_1001EA308);
        }

        v20 += 8;
        --v19;
      }

      while (v19);
    }

    *(a1 + 104) = _swiftEmptyArrayStorage;

    v21 = sqlite3_close(v26);
    result = sub_100016CE0(v21);
    *(a1 + 64) = 0;
    if (result)
    {
      v22 = result;
      sub_1000A0624();
      v23 = swift_allocError();
      *v24 = v22;
      sub_1001A504C(0xD00000000000001FLL, 0x8000000100202C00, 0, 0, v23);

      swift_allocError();
      *v25 = v22;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10001BC30()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = sub_100011A30();

    return v11(v10);
  }
}

uint64_t sub_10001BD44()
{
}

uint64_t sub_10001BD98(uint64_t a1)
{

  return swift_once();
}

id sub_10001BDE0()
{
  *(v0 + 112) = v1;
  *(v0 + 136) = v2;

  return v1;
}

uint64_t sub_10001BE14(uint64_t a1)
{
  sub_1001BF340();
  sub_100003D28();
  v3 = v1;
  sub_1000056A8();
  v5 = v4;
  sub_100004EEC();
  *v6 = v5;
  v7 = *v2;
  sub_100002D20();
  *v8 = v7;

  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
  }

  else
  {
    sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
    Dictionary._bridgeToObjectiveC()();
    sub_100029448();

    v10 = 0;
  }

  v11 = sub_10000A214();
  v12(v11);

  _Block_release(v5);
  sub_100002D8C();
  sub_1001BF32C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_10001BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_10000C504(a1, a2);
  v7 = sub_10007B9A4(v5, v6);
  sub_100003D10(v7);
  sub_1000F11BC();

  return a4(a1);
}

void sub_10001C04C(uint64_t a1)
{

  sub_1000036B0(a1, v1);
}

uint64_t sub_10001C070()
{

  return swift_allocObject();
}

uint64_t sub_10001C090()
{
  sub_1000F1284();

  v0 = sub_100008FE8();
  sub_10007B9A4(v0, v1);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10001C110@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, void *a3@<X8>)
{
  v4 = v3;
  v5 = a1 + 56;
  sub_100004E5C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v38 = v11;

  v12 = 0;
  v13 = _swiftEmptyDictionarySingleton;
  v35 = v10;
  v36 = v5;
  if (v8)
  {
LABEL_6:
    while (1)
    {
      v15 = (*(v38 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v17 = *v15;
      v16 = v15[1];

      v18 = a2(v17, v16);
      if (v4)
      {
        break;
      }

      v39 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v13;
      v20 = sub_100012A94();
      v22 = v13[2];
      v23 = (v21 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_20;
      }

      v25 = v20;
      v26 = v21;
      sub_10007B9A4(&qword_100271F18, &qword_1001F1B10);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24))
      {
        v27 = sub_100012A94();
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_22;
        }

        v25 = v27;
      }

      v13 = v40;
      if (v26)
      {
        *(v40[7] + 8 * v25) = v39;
      }

      else
      {
        v40[(v25 >> 6) + 8] |= 1 << v25;
        v29 = (v40[6] + 16 * v25);
        *v29 = v17;
        v29[1] = v16;
        *(v40[7] + 8 * v25) = v39;
        v30 = v40[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_21;
        }

        v40[2] = v32;
      }

      v8 &= v8 - 1;
      v4 = 0;
      v10 = v35;
      v5 = v36;
      if (!v8)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v10)
      {

        *a3 = v13;
        return result;
      }

      v8 = *(v5 + 8 * v14);
      ++v12;
      if (v8)
      {
        v12 = v14;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001C364(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000827C(inited);
  sub_100004AA0();
  v6 = swift_allocObject();
  *(v6 + 16) = &_swiftEmptySetSingleton;

  v8[2] = sub_100017C14();
  v8[3] = 0xD000000000000037;
  v8[4] = 0x8000000100203A80;
  v8[5] = inited;
  v8[6] = sub_1000190A0;
  v8[7] = v6;
  sub_100014A20(sub_10001D7C8, v8);

  if (v2)
  {

    swift_setDeallocating();
    sub_10001CE50();
  }

  else
  {
    swift_setDeallocating();
    sub_10001CE50();
    sub_10000602C(v6 + 16, v9);
    inited = *(v6 + 16);
  }

  return inited;
}

uint64_t sub_10001C4D4()
{

  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_10001C56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026BFB0, &qword_1001EA308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C5DC()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
    v7 = *(v3 + 216);

    return _swift_task_switch(sub_1001BF314, v7, 0);
  }

  else
  {
    sub_1000222B8();

    v8 = sub_100019DF8();

    return v9(v8);
  }
}

uint64_t sub_10001C74C(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000827C(inited);
  sub_100004AA0();
  v6 = swift_allocObject();
  *(v6 + 16) = &_swiftEmptySetSingleton;

  v8[2] = sub_100017C14();
  v8[3] = 0xD00000000000002FLL;
  v8[4] = 0x8000000100203A50;
  v8[5] = inited;
  v8[6] = sub_1001B84F0;
  v8[7] = v6;
  sub_100014A20(sub_10001D7C8, v8);

  if (v2)
  {

    swift_setDeallocating();
    sub_10001CE50();
  }

  else
  {
    swift_setDeallocating();
    sub_10001CE50();
    sub_10000602C(v6 + 16, v9);
    inited = *(v6 + 16);
  }

  return inited;
}

uint64_t sub_10001C8BC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001C8FC()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();
  sub_100007628();

  v0 = sub_100008428();
  v1(v0);
  v2 = sub_100007B40();

  return _swift_deallocObject(v2);
}

uint64_t sub_10001C9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001ABCC(0);
  if (!v2)
  {
    v6 = v4;
    v7 = v5;
    swift_beginAccess();
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return 0;
}

uint64_t sub_10001CA20(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    memset(v20, 0, sizeof(v20));

    sub_10001D058(v4, v2, a1, v20);

    sub_100003C38(v20, v19);
    v5 = sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
    v13 = sub_10000BC24(v5, v6, v7, v8, v9, v10, v11, v12, v19[0]);
    if ((v13 & 1) == 0)
    {
      v21 = 0;
    }

    v22 = v13 ^ 1;
    sub_100002C5C(v20);
    return v21;
  }

  else
  {
    v15 = sub_10001ED34();
    v16 = sub_100007544(&unk_1002527D0, v15);
    return sub_100006E04(v16, v17, v18);
  }
}

uint64_t sub_10001CB1C@<X0>(uint64_t a1@<X8>)
{

  return sub_1001AE448(0xD00000000000001CLL, (a1 - 32) | 0x8000000000000000);
}

void sub_10001CB54(uint64_t a1, uint64_t a2)
{

  sub_1000036B0(a1, a2);
}

uint64_t sub_10001CB88(uint64_t result)
{
  strcpy((result + 48), "amsengagementd");
  *(result + 63) = -18;
  return result;
}

void sub_10001CBC0()
{

  sub_1000D507C();
}

uint64_t sub_10001CBE4()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10001CC10()
{

  return type metadata accessor for DispatchQoS();
}

uint64_t sub_10001CC78(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_10001CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_10000A7C0(a1, 1, 1, a4);
}

void sub_10001CCDC()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0xE000000000000000;

  _StringGuts.grow(_:)(30);
}

uint64_t sub_10001CD1C(uint64_t a1, ...)
{

  return swift_getErrorValue();
}

void sub_10001CD3C(uint64_t a1@<X8>, uint64_t a2, int a3, char a4, uint64_t a5)
{
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = a5;
  *(a1 + 80) = a4;
}

uint64_t sub_10001CD54()
{

  return swift_allocObject();
}

uint64_t sub_10001CDFC()
{
  sub_100002C00(v0);

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_10001CE30(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  if (!a3)
  {
    return sub_1000253FC(a1, a2);
  }

  return a1;
}

uint64_t sub_10001CE50()
{
  swift_arrayDestroy();
  sub_1000074E4();

  return swift_deallocClassInstance();
}

uint64_t sub_10001CE8C(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

void *SQLStatement.step()(uint64_t a1)
{
  v3 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    v10 = sub_10001ED34();
    v11 = sub_100007544(&unk_1002527D0, v10);
    sub_10000BC48(v11, v12);
LABEL_12:
    swift_willThrow();
    return v4;
  }

  v17 = 31;
  v5 = *(v3 + 64);
  __chkstk_darwin(a1);
  v16[2] = v3;
  v16[3] = v4;
  v16[4] = &v17;
  v6 = swift_retain_n();
  sub_10001A648(v6, v5, sub_10001AAA4, v16);

  if (!v2)
  {
    v7 = v17;
    if (v17 == 7)
    {
      return 0;
    }

    else
    {
      if (v17 != 27)
      {
        if (v17 == 31)
        {
          v8 = sub_10001ED34();
          sub_100007544(&unk_1002527D0, v8);
          v7 = 6;
        }

        else
        {
          v14 = sub_1000A0624();
          sub_100007544(&type metadata for SQLite3Status, v14);
        }

        *v9 = v7;
        goto LABEL_12;
      }

      v13 = *(v3 + 64);
      type metadata accessor for SQLRow();
      swift_allocObject();
      v4 = sub_10001ABBC(v13, v4);
      swift_beginAccess();
      *(v3 + 32) = v4;
    }
  }

  return v4;
}

void sub_10001D058(uint64_t a1, sqlite3_stmt *a2, uint64_t a3, _OWORD *a4)
{
  sub_1000081D4(a1, a2, a3, a4);
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  sub_100012DE8();
  if (v8 || (v7 & 1) == 0)
  {
    sub_10001CDE0();
    __chkstk_darwin(v10);
    sub_10000BE84();
    *(v11 - 16) = sub_1001A6798;
    *(v11 - 8) = &v12;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    sub_10001D170(a2, a3, a4);
    objc_autoreleasePoolPop(v9);
  }

  sub_1000068D4();
}

uint64_t sub_10001D170(sqlite3_stmt *a1, uint64_t iCol, _OWORD *a3)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    JUMPOUT(0x10001D2B4);
  }

  result = sqlite3_column_type(a1, iCol);
  switch(result)
  {
    case 1:
      v7 = sub_100004894();
      v19 = &type metadata for Int;
      v18[0] = sqlite3_column_int64(v7, v8);
      return sub_10001D2C8(v18, a3);
    case 2:
      v16 = sub_100004894();
      v19 = &type metadata for Double;
      v18[0] = sqlite3_column_double(v16, v17);
      return sub_10001D2C8(v18, a3);
    case 3:
      v9 = sub_100004894();
      result = sqlite3_column_text(v9, v10);
      if (!result)
      {
        return result;
      }

      v11 = String.init(cString:)();
      v13 = &type metadata for String;
      break;
    case 4:
      sqlite3_column_bytes(a1, v3);
      v14 = sub_100004894();
      result = sqlite3_column_blob(v14, v15);
      if (!result)
      {
        return result;
      }

      v11 = Data.init(bytes:count:)();
      v13 = &type metadata for Data;
      break;
    case 5:
      result = sub_100002C5C(a3);
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    default:
      return result;
  }

  v19 = v13;
  v18[0] = v11;
  v18[1] = v12;
  return sub_10001D2C8(v18, a3);
}

uint64_t sub_10001D2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SQLStatement.__deallocating_deinit()
{
  SQLStatement.deinit();

  return swift_deallocClassInstance();
}

void *SQLStatement.deinit()
{
  sub_10001D3C8();

  return v0;
}

void sub_10001D3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100019DB8(a1, a2, a3);
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  v5 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v10 == 2 || (v10 & 1) == 0)
  {
    __chkstk_darwin(v5);
    sub_10000BE84();
    *(v8 - 16) = sub_1001A6760;
    *(v8 - 8) = &v9;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10000B41C();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    sub_10001A4EC();
    *(v3 + 56) = 0;
    v7 = sqlite3_finalize(v4);
    (*(v3 + 16))(v7, 0xD000000000000012, 0x8000000100202E60);
    objc_autoreleasePoolPop(v6);
  }

  sub_100009EF8();
}

uint64_t sub_10001D534()
{

  sub_10001D594(v1, v0);
}

void sub_10001D594(uint64_t a1, uint64_t a2)
{
  sub_10000A658();
  sub_100017A08();
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  v3 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v6 == 2 || (v6 & 1) == 0)
  {
    __chkstk_darwin(v3);
    sub_10000BE84();
    *(v5 - 16) = sub_1001A66D0;
    *(v5 - 8) = a2;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    *(a2 + 16) = 0;
    objc_autoreleasePoolPop(v4);
  }

  sub_1000068D4();
}

uint64_t SQLRow.deinit()
{

  return v0;
}

uint64_t SQLRow.__deallocating_deinit()
{
  SQLRow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10001D6F8()
{

  return swift_getWitnessTable();
}

uint64_t sub_10001D730()
{

  return swift_beginAccess();
}

uint64_t sub_10001D754()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10001D794()
{

  return LogInterpolation.init(stringInterpolation:)();
}

void *sub_10001D804(uint64_t a1, char a2)
{
  if (qword_100268618 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  type metadata accessor for AppDatabase();
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_10001D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v21[1] = a3;
  v25 = a4;
  v21[0] = type metadata accessor for DispatchTimeInterval();
  v7 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  v10 = 0xE900000000000073;
  v11 = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      v10 = 0xE800000000000000;
      v11 = 0x6C616E7265746E69;
      break;
    case 2:
      v10 = 0xE800000000000000;
      v11 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v10 = 0xEF736E6F69746164;
      v11 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v12 = v10;
  String.append(_:)(*&v11);

  v13 = 0xE100000000000000;
  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = 65;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v15 = 66;
      break;
    case 3:
      v15 = 67;
      break;
    default:
      v13 = 0xE700000000000000;
      v15 = 0x746C7561666564;
      break;
  }

  v16 = v13;
  String.append(_:)(*&v15);

  if (qword_100268610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EDAC(qword_10026A3A0, &v23);
  if (v24 == 1)
  {
    sub_10000A064(&v23, &qword_10026A510, &qword_1001E79A8);
    swift_endAccess();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    sub_10000A064(&v23, &qword_10026A510, &qword_1001E79A8);
    swift_endAccess();
    if (Strong)
    {

      goto LABEL_18;
    }
  }

  type metadata accessor for AppDatabase();
  swift_allocObject();
  v18 = sub_10001EE24(a1, a2, 0);
  if (v4)
  {
  }

  Strong = v18;
  swift_weakInit();
  swift_weakAssign();
  v24 = 0;
  swift_beginAccess();
  sub_100040D00();
  swift_endAccess();
LABEL_18:
  v22[3] = type metadata accessor for AppDatabase();
  v22[0] = Strong;
  *v9 = 500;
  v20 = v21[0];
  (*(v7 + 104))(v9, enum case for DispatchTimeInterval.milliseconds(_:), v21[0]);

  sub_100040F5C(v22, v9);
  (*(v7 + 8))(v9, v20);
  result = sub_100002C00(v22);
  *v25 = Strong;
  return result;
}

void sub_10001DCD4()
{
  v3 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v3);
  sub_100004E78();
  __chkstk_darwin(v4);
  sub_100023F60();
  sub_100002CC4();
  __chkstk_darwin(v5);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v6);
  sub_100005B48();
  v7 = [objc_opt_self() ams_engagementDirectory];
  if (v7)
  {
    v8 = v7;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_1000086AC();
    v2(v9);
    v10 = [objc_opt_self() defaultManager];
    sub_1000066EC();

    sub_10000360C();
    if (v11)
    {
      v12 = sub_10000AE08();
      v2(v12);
      sub_10000360C();
      if (!v11)
      {
        sub_100009FB0(v1, &unk_10026FEE0, &unk_1001E67C0);
      }
    }

    else
    {
      v18 = sub_100012E30();
      v19(v18);
      v20 = sub_100019E40();
      v2(v20);
    }
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = sub_100003DE8();
    sub_100002CFC(v13);
    v14 = sub_1000077EC();
    v15 = sub_100007358(v14, xmmword_1001E5F70);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000068FC();
    sub_100007DE8();

    sub_100004D04();
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v16 = static os_log_type_t.fault.getter();
    sub_1000036B0(v16, v14);

    v17 = [objc_opt_self() defaultManager];
    v21 = [v17 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t sub_10001DFD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = type metadata accessor for URL();
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000056E8();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  sub_10001E78C(v5);
  URL.appendingPathComponent(_:)();
  v16 = *(v8 + 8);
  v16(v12, v6);
  v19[0] = 0x2E74757074756FLL;
  v19[1] = 0xE700000000000000;
  v17._countAndFlagsBits = a2;
  v17._object = a3;
  String.append(_:)(v17);
  URL.appendingPathComponent(_:)();

  return v16(v15, v6);
}

void sub_10001E148()
{
  sub_100003D74();
  v1 = v0;
  isa = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = sub_100003D10(v10);
  __chkstk_darwin(v11);
  sub_100002DEC();
  URL.path.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [v0 fileExistsAtPath:v12];

  if (v13)
  {
    v14 = type metadata accessor for URL();
    sub_1000047A4();
    (*(v15 + 16))(v9, v7, v14);
    sub_100005F14();

    sub_10000A7C0(v16, v17, v18, v19);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v21 = sub_100003DE8();
    sub_100002CFC(v21);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1001E5F70;
    v51 = sub_1001CCA14();
    v54 = v51;
    v53[0] = v1;
    v50 = v1;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v53);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._object = 0x80000001001F7D60;
    v25._countAndFlagsBits = 0xD000000000000014;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    v26 = type metadata accessor for URL();
    v54 = v26;
    sub_100017E64(v53);
    sub_1000047A4();
    v28 = *(v27 + 16);
    v28();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v53, &qword_10026D350, &qword_1001E6050);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v30 = static os_log_type_t.debug.getter();
    sub_1000036B0(v30, v22);

    v31 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    if (isa)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1000FA840();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v53[0] = 0;
    v35 = [v31 createDirectoryAtURL:v34 withIntermediateDirectories:v5 & 1 attributes:isa error:v53];

    if (v35)
    {
      (v28)(v9, v7, v26);
      sub_10000A7C0(v9, 0, 1, v26);
      sub_100005F14();

      v38 = v36;
    }

    else
    {
      v39 = v53[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1001E5F70;
      v54 = v51;
      v53[0] = v50;
      v41 = v50;
      v42 = AMSLogKey();
      if (v42)
      {
        v43 = v42;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v53);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v44._countAndFlagsBits = 0xD00000000000001CLL;
      v44._object = 0x80000001001F7D80;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
      swift_getErrorValue();
      v54 = v52;
      sub_100017E64(v53);
      sub_1000047A4();
      (*(v45 + 16))();
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009FB0(v53, &qword_10026D350, &qword_1001E6050);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v46);
      LogInterpolation.init(stringInterpolation:)();
      v47 = static os_log_type_t.error.getter();
      sub_1000036B0(v47, v40);

      v48 = sub_100011B84();
      sub_10000A7C0(v48, v49, 1, v26);
      sub_100005F14();
    }
  }
}

uint64_t sub_10001E78C(char a1)
{
  type metadata accessor for URL();
  sub_100002EF0();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000078F0();
  sub_10001DCD4();
  switch(a1)
  {
    case 1:
      sub_1000062AC();
      break;
    case 2:
      sub_10000571C();
      break;
    case 3:
      sub_100002ECC();
      break;
    default:
      break;
  }

  URL.appendingPathComponent(_:isDirectory:)();

  return (*(v5 + 8))(v2, v1);
}

uint64_t sub_10001E8B8()
{
  v0 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v1 = sub_100003D10(v0);
  __chkstk_darwin(v1);
  sub_1000056E8();
  v4 = v2 - v3;
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for URL();
  sub_100002CC4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000056E8();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = [objc_opt_self() ams_dataVaultDirectory];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_10000A7C0(v4, v20, 1, v8);
  sub_10001EC00(v4, v7);
  if (sub_100009F34(v7, 1, v8) == 1)
  {
    sub_100009FB0(v7, &unk_10026FEE0, &unk_1001E67C0);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v21 = sub_100003DE8();
    sub_100002CFC(v21);
    v22 = sub_1000077EC();
    v23 = sub_100007358(v22, xmmword_1001E5F70);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000068FC();
    sub_100007DE8();

    sub_100004D04();
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v24 = static os_log_type_t.fault.getter();
    sub_1000036B0(v24, v22);

    v25 = sub_100011B84();
    return sub_10000A7C0(v25, v26, 1, v8);
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    v28 = *(v10 + 8);
    v28(v7, v8);
    (*(v10 + 32))(v17, v14, v8);
    v29 = [objc_opt_self() defaultManager];
    sub_10001E148();

    return (v28)(v17, v8);
  }
}

uint64_t sub_10001EC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001EC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001ECE0()
{
  result = qword_100271FA0;
  if (!qword_100271FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271FA0);
  }

  return result;
}

unint64_t sub_10001ED34()
{
  result = qword_100270BC0;
  if (!qword_100270BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270BC0);
  }

  return result;
}

void sub_10001EDAC(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100012A94(), (v5 & 1) != 0))
  {
    sub_100051328(*(a1 + 56) + 8 * v4, a2);
    v6 = 0;
  }

  else
  {
    *a2 = 0;
    v6 = 1;
  }

  *(a2 + 8) = v6;
}

uint64_t sub_10001EE04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001EE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v7 = a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v23 - v14;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  v16 = a1;
  v18 = v17;
  sub_10001F0D0(v16, v7, v6, v23 - v14);
  (*(v10 + 16))(v13, v15, v18);
  v19 = **(&off_100247460 + v7);
  type metadata accessor for SQLDatabase();
  v20 = SQLDatabase.__allocating_init(url:readonly:fileProtection:schemaBlock:corruptionBlock:)(v13, 0, v19, sub_100040638, 0, 0, 0);
  if (v4)
  {
    (*(v10 + 8))(v15, v18);

    type metadata accessor for AppDatabase();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 16) = v20;
    v21 = swift_retain_n();
    sub_1000179B4(v21, v21);
    sub_1000170D4();

    (*(v10 + 8))(v15, v18);
  }

  return v5;
}

uint64_t sub_10001F0D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v32[0] = a1;
  v32[1] = a4;
  v6 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v6 - 8);
  v8 = v32 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v32 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v32 - v18;
  __chkstk_darwin(v17);
  v21 = v32 - v20;
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_4;
      }

      v33 = 45;
      v34 = 0xE100000000000000;
      v28._countAndFlagsBits = (a2 - 1) + 65;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);

      v23 = v33;
      v24 = v34;
      if (a3)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    default:

LABEL_4:
      v23 = 0;
      v24 = 0xE000000000000000;
      if (a3)
      {
LABEL_5:
        v33 = 7566955;
        v34 = 0xE300000000000000;
        v25 = v24;
        String.append(_:)(*&v23);

        v26._countAndFlagsBits = 6448174;
        v26._object = 0xE300000000000000;
        String.append(_:)(v26);
        sub_10001DCD4();
        URL.appendingPathComponent(_:)();

        return (*(v10 + 8))(v21, v9);
      }

      else
      {
LABEL_7:
        v33 = 7368801;
        v34 = 0xE300000000000000;
        v29 = v24;
        String.append(_:)(*&v23);

        v30._countAndFlagsBits = 6448174;
        v30._object = 0xE300000000000000;
        String.append(_:)(v30);
        sub_10001E8B8();
        if (sub_100009F34(v8, 1, v9) == 1)
        {
          sub_10001DCD4();
          if (sub_100009F34(v8, 1, v9) != 1)
          {
            sub_10000A064(v8, &unk_10026FEE0, &unk_1001E67C0);
          }
        }

        else
        {
          (*(v10 + 32))(v19, v8, v9);
        }

        URL.appendingPathComponent(_:isDirectory:)();

        URL.appendingPathComponent(_:isDirectory:)();
        v31 = *(v10 + 8);
        v31(v13, v9);
        URL.appendingPathComponent(_:)();

        v31(v16, v9);
        return (v31)(v19, v9);
      }
  }
}

uint64_t SQLDatabase.__allocating_init(url:readonly:fileProtection:schemaBlock:corruptionBlock:)(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1;
  if (URL.isFileURL.getter())
  {
    v22 = a3;
    v15 = URL.path.getter();
    v23 = a5;
    v17 = v16;
    type metadata accessor for SQLDatabase();
    sub_10000600C();
    v14 = swift_allocObject();
    SQLDatabase.init(path:readonly:fileProtection:schemaBlock:corruptionBlock:)(v15, v17, a2 & 1, v22, a4, v23, a6, a7);
  }

  else
  {
    v19 = sub_10001ED34();
    sub_100007544(&unk_1002527D0, v19);
    *v20 = 4;
    swift_willThrow();
    sub_100014A10(a6, a7);
    sub_100014A10(a4, a5);
  }

  type metadata accessor for URL();
  sub_100002DDC();
  (*(v18 + 8))(a1);
  return v14;
}

uint64_t SQLDatabase.init(path:readonly:fileProtection:schemaBlock:corruptionBlock:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100002DDC();
  __chkstk_darwin(v13);
  sub_100002DEC();
  v14 = type metadata accessor for DispatchQoS();
  v15 = sub_100003D10(v14);
  __chkstk_darwin(v15);
  sub_100002DEC();
  v30 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100002DEC();
  v21 = v20 - v19;
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002CC4();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_100002DEC();
  v28 = v27 - v26;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 112) = 0;
  *(v9 + 40) = a7;
  *(v9 + 48) = a8;
  *(v9 + 96) = a6;
  *(v9 + 104) = _swiftEmptyArrayStorage;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 80) = a4;
  *(v9 + 88) = a5;
  sub_100017A08();
  (*(v24 + 104))(v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v22);
  (*(v17 + 104))(v21, enum case for DispatchQoS.QoSClass.default(_:), v30);
  sub_100017E54(a7, a8);
  sub_100017E54(a5, a6);
  v33 = a4;
  static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v21, v30);
  static DispatchQoS.unspecified.getter();
  sub_100013AFC(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v9 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  OS_dispatch_queue.setSpecific<A>(key:value:)();
  sub_100014A10(a7, a8);
  sub_100014A10(a5, a6);

  return v9;
}

uint64_t sub_10001FAA0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = sub_1000049C4();
  if (v2 == v3 && v1 == v4)
  {

    return 0x400000;
  }

  v6 = sub_1000066B8(v3);

  if (v6)
  {
    return 0x400000;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_1000049C4();
  if (v6 == v7 && v1 == v8)
  {

    return 0x100000;
  }

  v10 = sub_1000066B8(v7);

  if (v10)
  {
    return 0x100000;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_1000049C4();
  if (v10 == v11 && v1 == v12)
  {

    return 0x200000;
  }

  v14 = sub_1000066B8(v11);

  if (v14)
  {
    return 0x200000;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    return 3145728;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      return 3145728;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_10001FC50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002443C8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001FC9C()
{
  v1 = v0;
  setenv("JSC_criticalGCMemoryThreshold", "0.25", 1);
  setenv("JavaScriptCoreUseJIT", "0", 1);
  v2 = objc_opt_self();
  [v2 setHARLoggingItemLimit:0];
  [v2 setPreferEphemeralURLSessions:1];
  type metadata accessor for Migrator();
  sub_100020910();
  sub_10004C664();
  sub_1000464E4();
  if (qword_100268608 != -1)
  {
    sub_100007CEC(&qword_100268608);
  }

  sub_1000426FC();
  if (qword_1002685D8 != -1)
  {
    swift_once();
  }

  sub_100047F28();
  if (qword_1002687D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NetworkStatusObserver();
  sub_10017C9C4();
  type metadata accessor for ActivityObserver();
  swift_initStaticObject();
  sub_10004DB78();
  if (qword_1002687E8 != -1)
  {
    swift_once();
  }

  sub_10004E21C();
  if (qword_100268850 != -1)
  {
    swift_once();
  }

  if (qword_1002687C8 != -1)
  {
    swift_once();
  }

  if (qword_100268828 != -1)
  {
    swift_once();
  }

  sub_1001CDFA0();
  *(v1 + OBJC_IVAR____TtC14amsengagementd7RunLoop_cloudKitPushSubscription) = sub_10018BF68(0xD000000000000033, 0x80000001001FF470, sub_10018F930, 0);

  type metadata accessor for ServerDataCacheService();
  v3 = [objc_opt_self() ams_sharedAccountStore];
  sub_100194608();

  if (qword_1002685E0 != -1)
  {
    swift_once();
  }

  sub_100092D78(0, 0, 0, 0x73206E6F6D656144, 0xEE00707574726174);
  return 1;
}

uint64_t sub_100020010(unsigned int a1)
{
  v72 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v71 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v70 = &v66 - v6;
  v7 = __chkstk_darwin(v5);
  v73 = &v66 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v66 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v66 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v66 - v16;
  __chkstk_darwin(v15);
  v19 = &v66 - v18;
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v22 = [v21 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:)();
  v23 = *(v2 + 8);
  v23(v17, v1);
  sub_1000209D4();
  v68 = v20;
  v69 = v11;
  v24 = v73;
  v23(v19, v1);
  sub_10001DCD4();
  URL.appendingPathComponent(_:)();
  v23(v17, v1);
  sub_1000209D4();
  v66 = v2 + 8;
  v67 = v1;
  v23(v14, v1);
  v32 = v69;
  v33 = v72;
  sub_100020B34(v72, 29546, 0xE200000000000000);
  sub_10001DFD8(v33, 29546, 0xE200000000000000);
  v34 = v68;
  v35 = [v68 defaultManager];
  URL.path.getter();
  v36 = String._bridgeToObjectiveC()();

  v37 = [v35 fileExistsAtPath:v36];

  v38 = v71;
  if (v37)
  {
    v39 = [v34 defaultManager];
    URL.path.getter();
    v40 = String._bridgeToObjectiveC()();

    v41 = [v39 fileExistsAtPath:v40];

    v38 = v71;
    if ((v41 & 1) == 0)
    {
      v42 = [v34 defaultManager];
      URL.path.getter();
      v43 = String._bridgeToObjectiveC()();

      URL.path.getter();
      v44 = v32;
      v45 = String._bridgeToObjectiveC()();

      v76[0] = 0;
      v46 = [v42 moveItemAtPath:v43 toPath:v45 error:v76];

      if (!v46)
      {
        v63 = v76[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v64 = v67;
        v23(v24, v67);
        goto LABEL_2;
      }

      v47 = v76[0];
      v32 = v44;
      v38 = v71;
    }
  }

  v48 = v70;
  v49 = v72;
  sub_100020B34(v72, 0x6B63617074656ALL, 0xE700000000000000);
  sub_10001DFD8(v49, 0x6B63617074656ALL, 0xE700000000000000);
  v50 = [v34 defaultManager];
  URL.path.getter();
  v51 = String._bridgeToObjectiveC()();

  v52 = [v50 fileExistsAtPath:v51];

  if (!v52 || (v53 = [v34 defaultManager], URL.path.getter(), v54 = String._bridgeToObjectiveC()(), , v55 = objc_msgSend(v53, "fileExistsAtPath:", v54), v53, v54, (v55 & 1) != 0))
  {
    v56 = v67;
    v23(v38, v67);
    v23(v48, v56);
    v23(v73, v56);
    v57 = v32;
    return (v23)(v57, v56);
  }

  v58 = [v34 defaultManager];
  URL.path.getter();
  v59 = String._bridgeToObjectiveC()();

  URL.path.getter();
  v60 = String._bridgeToObjectiveC()();

  v76[0] = 0;
  v61 = [v58 moveItemAtPath:v59 toPath:v60 error:v76];

  if (v61)
  {
    v62 = v76[0];
    v56 = v67;
    v23(v38, v67);
    v23(v48, v56);
    v23(v73, v56);
    v57 = v69;
    return (v23)(v57, v56);
  }

  v65 = v76[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v64 = v67;
  v23(v38, v67);
  v23(v48, v64);
  v23(v73, v64);
  v44 = v69;
LABEL_2:
  v23(v44, v64);
  if (qword_100268708 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001E5F60;
  v26 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for Migrator();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v27 = v74;
  v28 = v75;
  v76[3] = v75;
  v29 = sub_100017E64(v76);
  (*(*(v28 - 1) + 16))(v29, v27, v28);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v76, &qword_10026D350, &qword_1001E6050);
  v30 = static os_log_type_t.error.getter();
  sub_1000036B0(v30, v25);
}

uint64_t sub_100020910()
{
  v0 = 0;
  do
  {
    v1 = &off_100244588 + v0++;
    v2 = v1[32];
    sub_100020010(v1[32]);
    sub_100020D58(v2);
    sub_10002125C(v2);
    sub_100022B4C(v2);
  }

  while (v0 != 4);
  v5[3] = &type metadata for AMSFlags;
  v5[4] = sub_10000D884();
  LOBYTE(v5[0]) = 0;
  v3 = isFeatureEnabled(_:)();
  sub_100002C00(v5);
  if (v3)
  {
    [objc_opt_self() erase];
  }

  type metadata accessor for AppDatabase();
  return sub_100044A6C();
}

void sub_1000209D4()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 fileExistsAtPath:v2];

  if (v3)
  {
    v4 = [v0 defaultManager];
    URL.path.getter();
    v5 = String._bridgeToObjectiveC()();

    v9 = 0;
    v6 = [v4 removeItemAtPath:v5 error:&v9];

    if (v6)
    {
      v7 = v9;
    }

    else
    {
      v8 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_100020B34(char a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v20 - v11;
  sub_10001DCD4();
  URL.appendingPathComponent(_:)();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  v14 = 0xE900000000000073;
  v15 = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      v14 = 0xE800000000000000;
      v15 = 0x6C616E7265746E69;
      break;
    case 2:
      v14 = 0xE800000000000000;
      v15 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v14 = 0xEF736E6F69746164;
      v15 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v16 = v14;
  String.append(_:)(*&v15);

  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = a2;
  v18._object = a3;
  String.append(_:)(v18);
  URL.appendingPathComponent(_:)();

  return (v13)(v12, v6);
}

uint64_t sub_100020D58(char a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v32 - v9;
  __chkstk_darwin(v8);
  v12 = v32 - v11;
  sub_10001DCD4();
  URL.appendingPathComponent(_:isDirectory:)();

  v13 = *(v4 + 8);
  v13(v7, v3);
  URL.appendingPathComponent(_:isDirectory:)();
  v13(v10, v3);
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  URL.path.getter();
  v16 = String._bridgeToObjectiveC()();

  LODWORD(v7) = [v15 fileExistsAtPath:v16];

  if (v7)
  {
    v17 = [v14 defaultManager];
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v37[0] = 0;
    v21 = [v17 removeItemAtURL:v19 error:v37];

    if (v21)
    {
      v22 = v37[0];
    }

    else
    {
      v33 = v13;
      v34 = v2;
      v23 = v37[0];
      v24 = _convertNSErrorToError(_:)();

      v32[1] = v24;
      swift_willThrow();
      if (qword_100268708 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1001E5F60;
      v26 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      swift_getErrorValue();
      v27 = v35;
      v28 = v36;
      v37[3] = v36;
      v29 = sub_100017E64(v37);
      (*(*(v28 - 1) + 16))(v29, v27, v28);
      static LogInterpolation.safe(_:)();
      sub_10000A064(v37, &qword_10026D350, &qword_1001E6050);
      v30 = static os_log_type_t.error.getter();
      sub_1000036B0(v30, v25);

      v13 = v33;
    }
  }

  return (v13)(v12, v3);
}

uint64_t sub_10002125C(uint64_t a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v76 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v74 - v9;
  __chkstk_darwin(v8);
  v83 = v74 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v77 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v74 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v74 - v20;
  __chkstk_darwin(v19);
  v84 = v74 - v22;
  sub_1000220D8();
  v80 = v23;
  sub_10001DCD4();
  v79 = a1;
  URL.appendingPathComponent(_:isDirectory:)();

  v81 = *(v13 + 8);
  v82 = v13 + 8;
  v81(v21, v12);
  sub_10001E8B8();
  if (sub_100009F34(v10, 1, v12) == 1)
  {
    sub_10000A064(v10, &unk_10026FEE0, &unk_1001E67C0);
    v24 = 1;
    v25 = v83;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();

    v26 = v81;
    v81(v10, v12);
    v25 = v83;
    URL.appendingPathComponent(_:isDirectory:)();
    v26(v18, v12);
    v24 = 0;
  }

  sub_10000A7C0(v25, v24, 1, v12);
  sub_10001EC70(v25, v7);
  v27 = sub_100009F34(v7, 1, v12);
  v28 = v80;
  if (v27 == 1)
  {

    sub_10000A064(v7, &unk_10026FEE0, &unk_1001E67C0);
    if (qword_100268708 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1001E5F70;
    v30 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for Migrator();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v31 = static os_log_type_t.fault.getter();
    sub_1000036B0(v31, v29);

    sub_10000A064(v25, &unk_10026FEE0, &unk_1001E67C0);
    return (v81)(v84, v12);
  }

  else
  {
    v33 = v77;
    (*(v13 + 32))(v77, v7, v12);
    v34 = objc_opt_self();
    v35 = [v34 defaultManager];
    v87 = 1;
    URL.path.getter();
    v36 = String._bridgeToObjectiveC()();

    v75 = v35;
    v37 = [v35 fileExistsAtPath:v36 isDirectory:&v87];

    if (v37)
    {
      if (qword_100268708 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1001E5F70;
      v39 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      v40 = v78;
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v41._countAndFlagsBits = 0xD000000000000020;
      v41._object = 0x8000000100200050;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v41);
      v89 = &unk_1002471C0;
      v42 = v79;
      LOBYTE(v88[0]) = v79;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v88, &qword_10026D350, &qword_1001E6050);
      v43._countAndFlagsBits = 41;
      v43._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v43);
      LogInterpolation.init(stringInterpolation:)();
      v44 = static os_log_type_t.debug.getter();
      sub_1000036B0(v44, v38);

      __chkstk_darwin(v45);
      v46 = v84;
      v47 = v75;
      v74[-4] = v84;
      v74[-3] = v47;
      v74[-2] = v40;
      LOBYTE(v74[-1]) = v42;
      sub_100022300(sub_100022438, &v74[-6], v80);

      sub_10000A064(v83, &unk_10026FEE0, &unk_1001E67C0);
      v48 = v81;
      v81(v77, v12);
      return v48(v46, v12);
    }

    else
    {
      v49 = [v34 defaultManager];
      URL.path.getter();
      v50 = String._bridgeToObjectiveC()();

      v88[0] = 0;
      v51 = [v49 createDirectoryAtPath:v50 withIntermediateDirectories:1 attributes:0 error:v88];

      v52 = v78;
      if (v51)
      {
        v53 = v88[0];
      }

      else
      {
        v54 = v88[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100268708 != -1)
        {
          swift_once();
        }

        v74[3] = qword_100287868;
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v55 = *(type metadata accessor for LogInterpolation() - 8);
        v74[2] = *(v55 + 72);
        v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1001E5F70;
        v74[1] = v57 + v56;
        v58 = AMSSetLogKeyIfNeeded();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for Migrator();
        v52 = v78;
        static LogInterpolation.prefix<A>(_:_:)();

        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v59._countAndFlagsBits = 0xD000000000000025;
        v59._object = 0x8000000100200000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v59);
        v89 = &unk_1002471C0;
        LOBYTE(v88[0]) = v79;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A064(v88, &qword_10026D350, &qword_1001E6050);
        v60._object = 0xE900000000000020;
        v60._countAndFlagsBits = 0x3A726F727265202CLL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v60);
        swift_getErrorValue();
        v62 = v85;
        v61 = v86;
        v89 = v86;
        v63 = sub_100017E64(v88);
        (*(*(v61 - 1) + 16))(v63, v62, v61);
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A064(v88, &qword_10026D350, &qword_1001E6050);
        v64._countAndFlagsBits = 41;
        v64._object = 0xE100000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v64);
        LogInterpolation.init(stringInterpolation:)();
        v65 = static os_log_type_t.fault.getter();
        sub_1000036B0(v65, v57);

        v33 = v77;
        v28 = v80;
      }

      __chkstk_darwin(v53);
      v74[-4] = v84;
      v74[-3] = v52;
      v74[-2] = v33;
      LOBYTE(v74[-1]) = v66;
      sub_100022300(sub_100179C1C, &v74[-6], v28);
      v80 = 0;
      if (qword_100268708 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1001E5F70;
      v68 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v69 = static os_log_type_t.default.getter();
      sub_1000036B0(v69, v67);

      __chkstk_darwin(v70);
      v71 = v84;
      v72 = v75;
      v74[-4] = v84;
      v74[-3] = v72;
      v74[-2] = v52;
      LOBYTE(v74[-1]) = v79;
      sub_100022300(sub_100022B28, &v74[-6], v28);

      sub_10000A064(v83, &unk_10026FEE0, &unk_1001E67C0);
      v73 = v81;
      v81(v77, v12);
      return v73(v71, v12);
    }
  }
}

void sub_1000220D8()
{
  sub_100011690();
  v1 = v0;
  if (*(v0 + 16) && (sub_10007B9A4(&qword_10026F288, &qword_1001EEB98), v2 = sub_10003AF6C(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = (v1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      Hasher.init(_seed:)();

      sub_10005AE68(v10);
      Hasher._finalize()();
      sub_100004E1C();
      v13 = ~v12;
      while (1)
      {
        v14 = v11 & v13;
        v15 = (v11 & v13) >> 6;
        v16 = *(v6 + 8 * v15);
        v17 = 1 << (v11 & v13);
        if ((v17 & v16) == 0)
        {
          break;
        }

        v18 = (*(v3 + 48) + 16 * v14);
        v19 = v18[1];
        v20 = *v18 == v9 && v19 == v8;
        if (v20 || (sub_1000240DC(*v18, v19) & 1) != 0)
        {

          goto LABEL_16;
        }

        v11 = v14 + 1;
      }

      *(v6 + 8 * v15) = v17 | v16;
      v21 = (*(v3 + 48) + 16 * v14);
      *v21 = v9;
      v21[1] = v8;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v24;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_100029454();
  }
}

id sub_100022238(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100022264()
{

  return swift_getErrorValue();
}

void *sub_100022280()
{
  v2 = *(v0 + 40);

  return sub_100003CA8((v0 + 16), v2);
}

uint64_t sub_1000222B8()
{
}

uint64_t sub_100022300(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      a1(v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100022450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v45 = a5;
  v44 = a4;
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URL();
  v12 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 8);
  v50[0] = *a1;
  v50[1] = v15;
  (*(v9 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
  sub_10001ECE0();
  URL.appending<A>(path:directoryHint:)();
  (*(v9 + 8))(v11, v8);
  URL.path.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [a3 fileExistsAtPath:v16];

  if (v17)
  {
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v50[0] = 0;
    v21 = [a3 removeItemAtURL:v19 error:v50];

    if (v21)
    {
      v22 = qword_100268708;
      v23 = v50[0];
      if (v22 != -1)
      {
        swift_once();
      }

      v43 = qword_100287868;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1001E5F70;
      v25 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v26._object = 0x80000001002000C0;
      v26._countAndFlagsBits = 0xD00000000000002DLL;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
      v51 = &unk_1002471C0;
      LOBYTE(v50[0]) = v45;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v50, &qword_10026D350, &qword_1001E6050);
      v27._countAndFlagsBits = 41;
      v27._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
      LogInterpolation.init(stringInterpolation:)();
      v28 = static os_log_type_t.debug.getter();
      sub_1000036B0(v28, v24);
    }

    else
    {
      v29 = v50[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100268708 != -1)
      {
        swift_once();
      }

      v46 = qword_100287868;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v30 = *(type metadata accessor for LogInterpolation() - 8);
      v43 = *(v30 + 72);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1001E5F70;
      v42[1] = v32 + v31;
      v33 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v34._countAndFlagsBits = 0xD000000000000035;
      v34._object = 0x8000000100200080;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
      v51 = &unk_1002471C0;
      LOBYTE(v50[0]) = v45;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v50, &qword_10026D350, &qword_1001E6050);
      v35._countAndFlagsBits = 0x3A726F727265202CLL;
      v35._object = 0xE900000000000020;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
      swift_getErrorValue();
      v36 = v48;
      v37 = v49;
      v51 = v49;
      v38 = sub_100017E64(v50);
      (*(*(v37 - 1) + 16))(v38, v36, v37);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v50, &qword_10026D350, &qword_1001E6050);
      v39._countAndFlagsBits = 41;
      v39._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v39);
      LogInterpolation.init(stringInterpolation:)();
      v40 = static os_log_type_t.debug.getter();
      sub_1000036B0(v40, v32);
    }
  }

  return (*(v12 + 8))(v14, v47);
}

uint64_t sub_100022B4C(uint64_t a1)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScheduleInfo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppDatabase();
  sub_10001D804(a1, 0);
  v28 = v7;
  v29 = v5;
  v30 = v1;
  v10 = sub_100041404();

  v11 = swift_allocObject();
  *(v11 + 16) = _swiftEmptyArrayStorage;
  v12 = v11 + 16;
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = swift_allocObject();
  v32 = a1;
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v11;
  v31 = v10;
  sub_1000415E4(sub_100044664, v14);

  swift_beginAccess();
  v21 = *(v13 + 16);
  if (*(v21 + 16))
  {
    sub_1000A8E8C(v21);
    v27[1] = v13;
    swift_beginAccess();
    v24 = *v12;
    v25 = *(*v12 + 16);

    v15 = 0;
    v26 = v28;
    while (1)
    {
      if (v25 == v15)
      {

        goto LABEL_2;
      }

      if (v15 >= *(v24 + 16))
      {
        break;
      }

      sub_1000A9424(v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v15, v9);
      sub_1000A9108(v9);
      ++v15;
      sub_1000A1B7C(v9);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_100268708 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v23 = static os_log_type_t.debug.getter();
  sub_1000036B0(v23, v22);

LABEL_2:
  LOBYTE(v15) = v32;
  if (qword_100268708 != -1)
  {
LABEL_14:
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x80000001001FFFA0;
  v17._countAndFlagsBits = 0xD000000000000017;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  v34 = &unk_1002471C0;
  v33[0] = v15;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v33, &qword_10026D350, &qword_1001E6050);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  LogInterpolation.init(stringInterpolation:)();
  v19 = static os_log_type_t.info.getter();
  sub_1000036B0(v19, v16);
}

uint64_t sub_100023468()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000234A0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100023504(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002353C(uint64_t a1)
{
  if (!qword_100270778)
  {
    sub_10007BC70(&qword_10026AE50, &unk_1001E83A0);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100270778);
    }
  }
}

void sub_1000235A0(uint64_t a1)
{
  sub_10002353C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScheduleInfo.Metadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002364C(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100023724(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TimeZone();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100023724(uint64_t a1)
{
  if (!qword_10026C658)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10026C658);
    }
  }
}

uint64_t sub_10002377C()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  if (qword_1002687F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1002878F0;
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10026A3A8 = result;
  return result;
}

void sub_100023A18()
{
  sub_100003D74();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002CC4();
  __chkstk_darwin(v0);
  sub_100002DEC();
  sub_100006658();
  sub_1000085C8();
  __chkstk_darwin(v1);
  sub_100002DEC();
  v2 = sub_100007754();
  __chkstk_darwin(v2 - 8);
  sub_100002DEC();
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100006FB8();
  sub_100013AFC(v3, v4, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  v5 = sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  sub_10000C1B0(v5);
  v6 = sub_100005ABC();
  v7(v6);
  qword_1002878F0 = sub_10000BB64(51, 0x8000000100201B40);
  sub_100005F14();
}

uint64_t sub_100023C0C()
{

  return swift_task_alloc();
}

uint64_t sub_100023C24(uint64_t a1)
{

  return sub_10000A064(a1, v1, v2);
}

uint64_t sub_100023C50(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;
}

__n128 sub_100023C6C(__n128 *a1)
{
  result = *(v1 - 368);
  a1[1] = result;
  return result;
}

void sub_100023C7C()
{
  v1 = 0x61747320444E4120;
  v2 = 0xEE003F203D206574;

  String.append(_:)(*&v1);
}

BOOL sub_100023CE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_100023D00()
{

  return swift_allocObject();
}

uint64_t sub_100023D2C(uint64_t a1)
{
  *(v1 + 104) = a1;
  *(v1 + 80) = v2;
}

unint64_t sub_100023D48()
{

  return sub_100012A94();
}

uint64_t sub_100023D70()
{

  return sub_10000A064(v0 + 496, v1, v2);
}

uint64_t sub_100023DC0()
{

  return swift_allocObject();
}

uint64_t sub_100023DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

id sub_100023E54()
{

  return v0;
}

id sub_100023E6C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return v2;
}

uint64_t sub_100023E88(uint64_t a1, uint64_t a2, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void a8, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return static LogInterpolation.safe(_:)();
}

uint64_t sub_100023EE8@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a1 = a16;
  a1[1] = v18;
  *(*(v17 + 56) + 8 * v16) = a14;
}

uint64_t sub_100023F3C(uint64_t a1)
{
  *(v3 - 120) = v1;
  *(v3 - 112) = v2;
  *(v3 - 144) = a1;
  return v3 - 144;
}

uint64_t sub_100023F60()
{

  return type metadata accessor for URL();
}

uint64_t sub_100023FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return swift_getErrorValue();
}

uint64_t sub_10002400C(uint64_t a1)
{

  return swift_getWitnessTable();
}

void sub_10002402C()
{
}

uint64_t sub_100024044()
{
  sub_100003CA8((v0 + 16), *(v0 + 40));
}

uint64_t sub_100024078()
{

  return Publisher<>.sink(receiveValue:)();
}

uint64_t sub_1000240BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return Promise.flatMap<A>(on:_:)();
}

uint64_t sub_1000240DC(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_10002411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = [swift_getObjCClassFromMetadata() bagForProfile:v4 profileVersion:v5];

  return v6;
}

void *sub_1000241D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007B9A4(a3, a4);
  v6 = sub_10001CD54();
  j__malloc_size(v6);
  sub_10000A3BC();
  v6[2] = a1;
  v6[3] = v7;
  return v6;
}

uint64_t sub_100024234()
{

  sub_1000ED448(sub_100062700, v0, &unk_10024A578, sub_100062AFC);

  sub_1000ED294();
}

uint64_t sub_100024308()
{

  v0 = sub_1000074E4();

  return _swift_deallocObject(v0);
}

uint64_t sub_10002433C(void *a1, void (*a2)(void, void, void), uint64_t a3)
{
  v4 = v3;
  v94 = a2;
  v95 = a3;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  sub_100002DEC();
  v7 = type metadata accessor for OSSignposter();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = v12 - v11;
  v90 = type metadata accessor for OSSignpostID();
  sub_100002CC4();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v87 = v18;
  v88 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v80 - v19;
  v93 = a1;
  v21 = sub_10000D7F8(a1);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  if (qword_1002686F0 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v23 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();
    OSSignposter.logHandle.getter();

    OSSignpostID.init(log:object:)();
    v9[1](v13, v7);
    v24 = *(v4 + 72);
    if ((v24 & 2) != 0)
    {
      sub_10003B1C0(v22, v94, v95);
    }

    v92 = v20;
    if ((v24 & 1) == 0)
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v25 = sub_100003DE8();
      sub_100002CFC(v25);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1001E5F70;
      *(&v100 + 1) = type metadata accessor for EnqueueRunner();
      *&v99 = v4;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v99);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v27._countAndFlagsBits = 0xD000000000000036;
      v27._object = 0x80000001001F77C0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
      v28 = *(v22 + 16);

      *(&v100 + 1) = &type metadata for Int;
      *&v99 = v28;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v99, &qword_10026D350, &qword_1001E6050);
      v29._countAndFlagsBits = 0x7328746E65766520;
      v29._object = 0xE900000000000029;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44(&qword_1002686B0);
      }

      v30 = static os_log_type_t.info.getter();
      sub_1000036B0(v30, v26);

      sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
      *&v99 = [objc_allocWithZone(AMSEngagementEnqueueResult) init];
      v31 = Promise.__allocating_init(value:)();
      (*(v15 + 8))(v92, v90);
      return v31;
    }

    v89 = v4;
    v32 = v93;
    v33 = [v93 clientInfo];
    sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
    inited = swift_initStackObject();
    v82 = xmmword_1001E5F70;
    *(inited + 16) = xmmword_1001E5F70;
    *(inited + 32) = 0x746E65696C63;
    *(inited + 40) = 0xE600000000000000;
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_1001E6580;
    *(v35 + 32) = 0x6449656C646E7562;
    *(v35 + 40) = 0xE800000000000000;
    v36 = sub_100026484(v33, &selRef_bundleIdentifier);
    v38 = v37 ? v36 : 0;
    v39 = v37 ? v37 : 0xE000000000000000;
    *(v35 + 48) = v38;
    *(v35 + 56) = v39;
    *(v35 + 72) = &type metadata for String;
    *(v35 + 80) = 0x6E6F6973726576;
    *(v35 + 88) = 0xE700000000000000;
    v40 = sub_100026484(v33, &selRef_clientVersion);
    v42 = v41 ? v40 : 0;
    v43 = v41 ? v41 : 0xE000000000000000;
    *(v35 + 96) = v42;
    *(v35 + 104) = v43;
    *(v35 + 120) = &type metadata for String;
    *(v35 + 128) = 1701667182;
    *(v35 + 136) = 0xE400000000000000;
    v84 = v33;
    v44 = sub_100026484(v33, &selRef_executableName);
    v46 = v45 ? v44 : 0;
    v47 = v45 ? v45 : 0xE000000000000000;
    *(v35 + 144) = v46;
    *(v35 + 152) = v47;
    *(v35 + 168) = &type metadata for String;
    *(v35 + 176) = 6580592;
    *(v35 + 184) = 0xE300000000000000;
    v48 = [v32 processIdentifier];
    *(v35 + 216) = &type metadata for Int32;
    *(v35 + 192) = v48;
    v49 = Dictionary.init(dictionaryLiteral:)();
    v50 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(inited + 48) = v49;
    *(inited + 72) = v50;
    *(inited + 80) = 0x73746E657665;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 120) = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
    *(inited + 96) = v22;
    v51 = Dictionary.init(dictionaryLiteral:)();
    if (sub_100024F14())
    {
      v52 = objc_autoreleasePoolPush();
      v53 = v89;
      v55 = v94;
      v54 = v95;
      sub_100024F20(v51, v89, v94, v95);
      v81 = 0;
      objc_autoreleasePoolPop(v52);
    }

    else
    {
      v81 = 0;
      v53 = v89;
      v55 = v94;
      v54 = v95;
    }

    v13 = *(v53 + 15);
    v56 = *(v53 + 16);
    v57 = *(v53 + 136);
    sub_1000262D0(v13, v56, v57);
    v83 = sub_100025454(v51, v55, v54);
    sub_100026D5C(v13, v56, v57);

    v58 = sub_10000D7F8(v93);
    v85 = v15;
    if (!v58)
    {
      break;
    }

    v59 = v58;
    v22 = 0;
    v20 = *(v58 + 16);
    v4 = 0x707954746E657665;
    v7 = 0xE900000000000065;
    v9 = &protocol witness table for String;
    while (1)
    {
      v15 = v20 != v22;
      if (v20 == v22)
      {
        goto LABEL_53;
      }

      if (v22 >= *(v59 + 16))
      {
        break;
      }

      v13 = *(v59 + 8 * v22 + 32);
      v96 = 0x707954746E657665;
      v97 = 0xE900000000000065;

      AnyHashable.init<A>(_:)();
      if (*(v13 + 16) && (v60 = sub_10000C818(&v99), (v61 & 1) != 0))
      {
        sub_100011BAC(*(v13 + 56) + 32 * v60, &v98);
        sub_10000E1E8(&v99);
        if (swift_dynamicCast())
        {
          v86 = v20 != v22;
          if (v96 == 0x526567617373654DLL && v97 == 0xEE00747365757165)
          {

LABEL_50:

            sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
            v63 = sub_100003DE8();
            sub_100002CFC(v63);
            sub_10000BF7C();
            v64 = swift_allocObject();
            *(v64 + 16) = v82;
            *(&v100 + 1) = type metadata accessor for EnqueueRunner();
            *&v99 = v89;

            static LogInterpolation.prefix(_:_:)();
            sub_100002C00(&v99);
            LogInterpolation.init(stringLiteral:)();
            LOBYTE(v15) = v86;
            if (qword_1002686B0 != -1)
            {
              sub_100002D44(&qword_1002686B0);
            }

            v65 = static os_log_type_t.default.getter();
            sub_1000036B0(v65, v64);
LABEL_53:

            goto LABEL_54;
          }

          v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v91)
          {
            goto LABEL_50;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_10000E1E8(&v99);
      }

      ++v22;
    }

    __break(1u);
LABEL_57:
    swift_once();
  }

  LOBYTE(v15) = 0;
LABEL_54:
  v66 = v85;
  v67 = v88;
  v68 = v90;
  (*(v85 + 16))(v88, v92, v90);
  v69 = (*(v66 + 80) + 24) & ~*(v66 + 80);
  v70 = (v87 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v93;
  *(v71 + 16) = v93;
  (*(v66 + 32))(v71 + v69, v67, v68);
  v73 = v89;
  *(v71 + v70) = v89;
  v74 = v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8);
  v75 = v95;
  *v74 = v94;
  *(v74 + 8) = v75;
  *(v74 + 16) = v15;
  *(&v100 + 1) = type metadata accessor for SyncTaskScheduler();
  *&v101 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(&v99);

  v76 = v72;

  SyncTaskScheduler.init()();
  sub_100026D70();
  v31 = Promise.map<A>(on:_:)();

  sub_100002C00(&v99);
  v77 = *(v73 + 72);
  v99 = *(v73 + 56);
  v100 = v77;
  v78 = *(v73 + 104);
  v101 = *(v73 + 88);
  v102 = v78;
  sub_100026DB4(&v99, v76, v31);

  (*(v66 + 8))(v92, v68);
  return v31;
}

uint64_t sub_100024E2C()
{
  v1 = type metadata accessor for OSSignpostID();
  sub_100002CC4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_100024F20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v28[0] = 0;
  v8 = [v6 dataWithJSONObject:isa options:0 error:v28];

  v9 = v28[0];
  if (v8)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = Data.count.getter();
    result = sub_1000253FC(v10, v12);
    if (v13 / 1000.0 / 1000.0 > 0.1)
    {
      v15 = [objc_allocWithZone(NSByteCountFormatter) init];
      [v15 setAllowedUnits:4];
      v16 = [v15 stringFromByteCount:v13];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v18;
      v27 = v17;

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1001E5F70;
      v29 = type metadata accessor for EnqueueRunner();
      v28[0] = a2;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(v28);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v20._object = 0x80000001001F7870;
      v20._countAndFlagsBits = 0xD00000000000001FLL;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
      v29 = &type metadata for String;
      v28[0] = v27;
      v28[1] = v26;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v28, &qword_10026D350, &qword_1001E6050);
      v21._countAndFlagsBits = 0x65756C617620;
      v21._object = 0xE600000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v22 = static os_log_type_t.default.getter();
      sub_1000036B0(v22, v19);
    }
  }

  else
  {
    v23 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001E5F70;
    v29 = type metadata accessor for EnqueueRunner();
    v28[0] = a2;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v28);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v25 = static os_log_type_t.default.getter();
    sub_1000036B0(v25, v24);
  }

  return result;
}

uint64_t sub_1000253FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100025454(uint64_t a1, void (*a2)(void, void, void), uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v128 = v9;
  v129 = v10;
  __chkstk_darwin(v9);
  sub_100002DEC();
  v126 = v12 - v11;
  v116 = type metadata accessor for JSONObject();
  sub_100002CC4();
  v115 = v13;
  __chkstk_darwin(v14);
  sub_100002DEC();
  v114 = v16 - v15;
  v17 = type metadata accessor for LogInterpolation.StringInterpolation();
  v18 = sub_100003D10(v17);
  __chkstk_darwin(v18);
  sub_100002DEC();
  v121 = v20 - v19;
  v113 = type metadata accessor for JSRoute();
  sub_100002CC4();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100002DEC();
  v26 = v25 - v24;
  v27 = type metadata accessor for JSRequest();
  sub_100002CC4();
  v119 = v28;
  __chkstk_darwin(v29);
  sub_10000AF3C();
  v130 = v30;
  v117 = v31;
  __chkstk_darwin(v32);
  v34 = v112 - v33;
  type metadata accessor for Date();
  sub_100002CC4();
  v133 = v36;
  v134 = v35;
  __chkstk_darwin(v35);
  sub_10000AF3C();
  v122 = v38;
  v123 = v37;
  __chkstk_darwin(v39);
  v41 = v112 - v40;
  v131 = v4[3];
  v42 = &v131[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest];
  v127 = a2;
  *v42 = a2;
  v42[1] = a3;

  v124 = a3;
  swift_bridgeObjectRetain_n();
  v132 = v41;
  Date.init()();
  v43 = sub_100026A14();
  v125 = v8;
  if ((v43 & 0x10000) != 0)
  {
    v120 = v27;
    v51 = v131[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48] == 0;
    v52 = sub_10002F8B8(v131[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48]);

    sub_10002E810(v51, a1, v52);
    v112[2] = sub_10002F940();
    JSRequest.route.getter();
    v53 = JSRoute.service.getter();
    v55 = v54;
    v56 = *(v22 + 8);
    v57 = v113;
    v56(v26, v113);
    v135 = v53;
    v136 = v55;
    v58._countAndFlagsBits = 46;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    v118 = v34;
    JSRequest.route.getter();
    v59 = JSRoute.function.getter();
    v61 = v60;
    v56(v26, v57);
    v62._countAndFlagsBits = v59;
    v62._object = v61;
    String.append(_:)(v62);

    v63 = v136;
    v113 = v135;
    if (qword_1002686C0 != -1)
    {
      sub_1000031E0(&qword_1002686C0);
    }

    v112[1] = qword_100287820;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v64 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v64);
    sub_1000056F8();
    v67 = v66 & ~v65;
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1001E5F70;
    v112[3] = v68 + v67;
    v138 = type metadata accessor for JSAppEngine();
    v135 = v4;

    v69 = AMSLogKey();
    if (v69)
    {
      v70 = v69;
      v71 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v71 = v4;
    }

    v72 = v127;
    v73 = v118;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v135);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v74._object = 0x80000001001F9B60;
    v74._countAndFlagsBits = 0xD000000000000016;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v74);
    v138 = &type metadata for String;
    v135 = v113;
    v136 = v63;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v135, &qword_10026D350, &qword_1001E6050);
    v75._countAndFlagsBits = 0x736E6F6974706F20;
    v75._object = 0xEA0000000000203ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v75);
    v76 = JSRequest.options.getter();
    v138 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v135 = v76;
    v77 = v114;
    JSONObject.init(wrapping:)();
    v78 = sub_10002EAD0();
    v80 = v79;
    (*(v115 + 8))(v77, v116);
    if (v80)
    {
      v81 = &type metadata for String;
    }

    else
    {
      v78 = 0;
      v81 = 0;
      v137 = 0;
    }

    v135 = v78;
    v136 = v80;
    v138 = v81;
    LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
    sub_10000A064(&v135, &qword_10026D350, &qword_1001E6050);
    v82._countAndFlagsBits = 0;
    v82._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v82);
    LogInterpolation.init(stringInterpolation:)();
    v83 = static os_log_type_t.default.getter();
    sub_1000036B0(v83, v68);

    v84 = v119;
    v85 = v130;
    v86 = v120;
    (*(v119 + 16))(v130, v73, v120);
    v87 = (*(v84 + 80) + 56) & ~*(v84 + 80);
    v88 = swift_allocObject();
    v50 = v124;
    *(v88 + 2) = v72;
    *(v88 + 3) = v50;
    v89 = v113;
    *(v88 + 4) = v71;
    *(v88 + 5) = v89;
    *(v88 + 6) = v63;
    (*(v84 + 32))(&v88[v87], v85, v86);
    v138 = type metadata accessor for SyncTaskScheduler();
    v139 = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(&v135);

    SyncTaskScheduler.init()();
    sub_10007B9A4(&qword_10026D658, &qword_1001EC9A0);
    sub_100006070(&qword_10026D660, &qword_10026D658, &qword_1001EC9A0, &protocol conformance descriptor for Promise<A>);
    Promise.flatMap<A>(on:_:)();

    sub_100002C00(&v135);
    sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v90 = v128;
    v91 = v129;
    v92 = *(v129 + 104);
    v49 = v126;
    LODWORD(v130) = enum case for DispatchQoS.QoSClass.default(_:);
    v92(v126);
    v93 = static OS_dispatch_queue.global(qos:)();
    (*(v91 + 8))(v49, v90);
    v121 = sub_100026C38(sub_10005C9BC, 0, v93);

    (*(v84 + 8))(v118, v120);
  }

  else
  {
    v44 = v43;
    type metadata accessor for DebugSocketService();
    swift_allocObject();
    v45 = sub_1000C0F9C(v44);
    v46 = swift_allocObject();
    v47 = v131;
    v46[2] = a1;
    v46[3] = v47;
    v46[4] = v45;
    v46[5] = v4;
    v48 = v47;

    v121 = sub_100101674(&unk_1001EC9B0, v46);
    LODWORD(v130) = enum case for DispatchQoS.QoSClass.default(_:);
    v49 = v126;
    v50 = v124;
  }

  v94 = swift_allocObject();
  swift_weakInit();
  v95 = v133;
  v96 = v123;
  v97 = v134;
  (*(v133 + 16))(v123, v132, v134);
  v98 = v95;
  v99 = (*(v95 + 80) + 40) & ~*(v95 + 80);
  v100 = (v122 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = swift_allocObject();
  v102 = v127;
  *(v101 + 2) = v94;
  *(v101 + 3) = v102;
  *(v101 + 4) = v50;
  (*(v98 + 32))(&v101[v99], v96, v97);
  *&v101[v100] = v125;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v103 = v128;
  v104 = v129;
  v127 = *(v129 + 104);
  v127(v49, v130, v128);
  v105 = v121;

  v106 = static OS_dispatch_queue.global(qos:)();
  v107 = *(v104 + 8);
  v107(v49, v103);
  sub_10010242C(sub_10005CF44, v101, v106, v105, &unk_10024BE98, &unk_10024BEC0, sub_1001026EC, sub_100102874);

  v127(v49, v130, v103);
  v108 = static OS_dispatch_queue.global(qos:)();
  v107(v49, v103);
  sub_10002F25C(sub_1001017A8, 0, v108);

  v109 = sub_10002F8B8(v131[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48]);
  v110 = sub_10002F38C(0x74756F656D6954, 0xE700000000000000, v109);

  (*(v133 + 8))(v132, v134);
  return v110;
}

uint64_t sub_1000260C4()
{
  type metadata accessor for JSRequest();
  sub_100002CC4();

  v0 = sub_100008428();
  v1(v0);
  v2 = sub_100012C90();

  return _swift_deallocObject(v2);
}

uint64_t sub_100026180()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000261B8()
{
  type metadata accessor for Date();
  sub_100002CC4();

  v0 = sub_100008428();
  v1(v0);
  v2 = sub_100012C90();

  return _swift_deallocObject(v2);
}

uint64_t sub_100026278()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000262D0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    return swift_unknownObjectRetain();
  }

  return v3;
}

uint64_t sub_1000262E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002636C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026C878, &qword_1001EBCD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026438(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  v5 = *(a1 + 16);
  *(v4 + 56) = *a1;
  v6 = *(a1 + 32);
  *(v4 + 72) = v5;
  *(v4 + 88) = v6;
  *(v4 + 104) = *(a1 + 48);
  v7 = *(a1 + 1);
  *(v4 + 120) = a2;
  *(v4 + 128) = a3;
  *(v4 + 136) = v7;
  v8 = *a4;
  v9 = a4[1];
  *(v4 + 176) = *(a4 + 4);
  *(v4 + 144) = v8;
  *(v4 + 160) = v9;
  return v4;
}

uint64_t sub_100026484(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1000264E4()
{
  sub_1000061B4();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v1[1] = sub_100009CC8;
  v3 = sub_100005F88();

  return v4(v3);
}

uint64_t sub_100026588()
{
  sub_1000061B4();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  v4[1] = sub_100009CCC;

  return v7(v1);
}

void sub_100026674(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10002671C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a7;
  v29 = a8;
  v27 = a6;
  v13 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001E5F70;
  v30[3] = type metadata accessor for EngagementService();
  v30[0] = a2;
  v17 = a2;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v30);
  LogInterpolation.init(stringLiteral:)();
  v18 = static os_log_type_t.default.getter();
  sub_1000036B0(v18, v16);

  v19 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v15, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v22 = v27;
  v21 = v28;
  v20[4] = a5;
  v20[5] = v22;
  v23 = v29;
  v20[6] = v21;
  v20[7] = v23;
  v20[8] = v17;
  v20[9] = a3;
  v20[10] = a4;
  v20[11] = a9;

  v24 = v17;

  sub_1000E349C();
}

uint64_t sub_1000269A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

unint64_t sub_100026A14()
{
  LODWORD(result) = sub_100024F14();
  if (!result)
  {
    goto LABEL_4;
  }

  type metadata accessor for Defaults();
  result = sub_10002E3EC(6);
  if (v1)
  {
    LODWORD(result) = 0;
LABEL_4:
    LODWORD(v2) = 1;
    return (result + (v2 << 16));
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result >> 16;
    if (!(result >> 16))
    {
      return (result + (v2 << 16));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100026A7C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

id sub_100026AEC(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [objc_opt_self() currentProcess];
  v6 = [v4 ams_configurationWithProcessInfo:v5 bag:0];

  v7 = String._bridgeToObjectiveC()();
  [v6 set_sourceApplicationBundleIdentifier:v7];

  v8 = objc_allocWithZone(NSURLCache);
  v9 = sub_100030580(0, 10000000, 0, 0);
  [v6 setURLCache:v9];

  v12.receiver = v2;
  v12.super_class = type metadata accessor for AppURLSession();
  v10 = objc_msgSendSuper2(&v12, "initWithConfiguration:delegate:delegateQueue:", v6, 0, 0);

  sub_10000FF10(a1);
  return v10;
}

uint64_t sub_100026C38(uint64_t a1, uint64_t a2, void *a3)
{
  v10[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a3;
  sub_10007B9A4(&qword_10026D668, &qword_1001EC9C0);
  v6 = a3;
  v7 = Promise.__allocating_init()();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v10);
  return v7;
}

uint64_t sub_100026D5C(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    return swift_unknownObjectRelease();
  }

  return v3;
}

unint64_t sub_100026D70()
{
  result = qword_10026FEB0;
  if (!qword_10026FEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026FEB0);
  }

  return result;
}

void sub_100026DB4(_OWORD *a1, void *a2, uint64_t a3)
{
  v46 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000D7F8(a2);
  v8 = 0;
  v47 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  while (1)
  {
    if (v10 == v8)
    {
      sub_1000263DC(v42, &v48);
      v21 = swift_allocObject();
      v22 = a1[1];
      *(v21 + 16) = *a1;
      *(v21 + 32) = v22;
      v23 = a1[3];
      *(v21 + 48) = a1[2];
      *(v21 + 64) = v23;
      v24 = v49;
      *(v21 + 80) = v48;
      *(v21 + 96) = v24;
      v25 = v47;
      *(v21 + 112) = v50;
      *(v21 + 120) = v25;
      *(v21 + 128) = v9;
      v26 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
      v28 = v43;
      v27 = v44;
      v29 = v45;
      (*(v44 + 104))(v43, enum case for DispatchQoS.QoSClass.default(_:), v45);
      sub_10000F4A4(a1, &v48);
      v30 = static OS_dispatch_queue.global(qos:)();
      (*(v27 + 8))(v28, v29);
      *(&v49 + 1) = v26;
      v50 = &protocol witness table for OS_dispatch_queue;
      *&v48 = v30;
      sub_100002FB8();
      v31 = swift_allocObject();
      *(v31 + 16) = sub_10005F924;
      *(v31 + 24) = v21;
      v32 = objc_allocWithZone(NSLock);
      v33 = v30;

      v34 = [v32 init];
      sub_100002FB8();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v31;
      sub_100002FB8();
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      *(v36 + 24) = v31;
      v37 = v34;
      swift_retain_n();
      v38 = v37;
      Promise.then(perform:orCatchError:on:)();

      sub_100002C00(&v48);
      return;
    }

    if (v8 >= v9[2])
    {
      break;
    }

    v11 = v9[v8 + 4];
    v51 = 0x707954746E657665;
    v52 = 0xE900000000000065;

    AnyHashable.init<A>(_:)();
    if (!*(v11 + 16) || (v12 = sub_10000C818(&v48), (v13 & 1) == 0))
    {

      sub_10000E1E8(&v48);
      goto LABEL_17;
    }

    sub_100011BAC(*(v11 + 56) + 32 * v12, v53);
    sub_10000E1E8(&v48);

    if ((swift_dynamicCast() & 1) != 0 && (v14 = v55) != 0)
    {
      v41 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000DE9C();
        v47 = v19;
      }

      v15 = v47[2];
      v16 = v15 + 1;
      if (v15 >= v47[3] >> 1)
      {
        v40 = v15 + 1;
        v39 = v15;
        sub_10000DE9C();
        v16 = v40;
        v15 = v39;
        v47 = v20;
      }

      ++v8;
      v17 = v47;
      v47[2] = v16;
      v18 = &v17[2 * v15];
      v18[4] = v41;
      v18[5] = v14;
    }

    else
    {
LABEL_17:
      ++v8;
    }
  }

  __break(1u);
}

uint64_t sub_100027228()
{

  sub_100002C00((v0 + 80));

  return _swift_deallocObject(v0);
}

uint64_t sub_100027280()
{
  if (*(v0 + 16))
  {
  }

  sub_100002FB8();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000272C4(char a1)
{
  result = 0x79616C6544736ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      sub_10000BEB4();
      result = v5 + 7;
      break;
    case 3:
      sub_10000BEB4();
      result = v7 + 3;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6954646E65747865;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      sub_10000BEB4();
      result = v8 - 2;
      break;
    case 8:
      result = 0x636E79537473616CLL;
      break;
    case 9:
      result = 0x65747441636E7973;
      break;
    case 10:
      sub_10000BEB4();
      result = v10 + 2;
      break;
    case 11:
      result = 0x764F656372756F73;
      break;
    case 12:
      result = 0x727265764F6C7275;
      break;
    case 13:
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 14:
      sub_10000BEB4();
      result = v4 + 15;
      break;
    case 15:
      sub_10000BEB4();
      result = v6 + 14;
      break;
    case 17:
      sub_10000BEB4();
      result = v9 + 20;
      break;
    default:
      sub_10000BEB4();
      result = v3 | 4;
      break;
  }

  return result;
}

Swift::Int sub_100027568(uint64_t *a1)
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
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1000EF810(v7, v8, a1, v4);
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
    return sub_10002765C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002765C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + (a3 << 6);
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v9 = v6;
      while (1)
      {
        v10 = *v9;
        v11 = v9[1];
        v12 = v9[3];
        v32[2] = v9[2];
        v32[3] = v12;
        v32[0] = v10;
        v32[1] = v11;
        v13 = *(v9 - 4);
        v14 = *(v9 - 3);
        v15 = *(v9 - 1);
        v31[2] = *(v9 - 2);
        v31[3] = v15;
        v31[0] = v13;
        v31[1] = v14;
        sub_10000F4A4(v32, v30);
        sub_10000F4A4(v31, v30);
        v16 = sub_100027970();
        v18 = v17;
        if (v16 == sub_100027970() && v18 == v19)
        {
          break;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000FF10(v31);
        result = sub_10000FF10(v32);
        if (v21)
        {
          if (!v5)
          {
            __break(1u);
            return result;
          }

          v22 = v9 - 4;
          v24 = v9[2];
          v23 = v9[3];
          v26 = *v9;
          v25 = v9[1];
          v27 = *(v9 - 3);
          *v9 = *(v9 - 4);
          v9[1] = v27;
          v28 = *(v9 - 1);
          v9[2] = *(v9 - 2);
          v9[3] = v28;
          *v22 = v26;
          v22[1] = v25;
          v9 -= 4;
          v22[2] = v24;
          v22[3] = v23;
          if (!__CFADD__(v8++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_10000FF10(v31);
      result = sub_10000FF10(v32);
LABEL_14:
      ++v4;
      v6 += 64;
      --v7;
      if (v4 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

Swift::Int sub_100027804(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10002795C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100027568(v6);
  *a1 = v2;
  return result;
}

void sub_100027870(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_100002EBC();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_10007B9A4(&qword_100269F98, &qword_1001E74E8);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 2) = v9;
      *(v11 + 3) = 2 * ((v12 - 32) / 64);
      if (a1)
      {
LABEL_12:
        sub_1000D6878((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_10000AE9C();
  if (!v7)
  {
    sub_100004F88();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100027970()
{
  v1 = (*v0 & 1) == 0;
  sub_100027C2C(0, 3, 0);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  v6 = _swiftEmptyArrayStorage[2];
  v5 = _swiftEmptyArrayStorage[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    sub_100004F98(v5);
  }

  _swiftEmptyArrayStorage[2] = v7;
  v8 = &_swiftEmptyArrayStorage[2 * v6];
  v8[4] = v2;
  v8[5] = v4;
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_100008244();
  if (v10)
  {
    sub_100004F98(v9);
  }

  _swiftEmptyArrayStorage[2] = v7;
  v11 = &_swiftEmptyArrayStorage[2 * v1];
  v11[4] = v2;
  v11[5] = v4;
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_100008244();
  if (v10)
  {
    sub_100004F98(v12);
  }

  _swiftEmptyArrayStorage[2] = v7;
  v13 = &_swiftEmptyArrayStorage[2 * v1];
  v13[4] = v2;
  v13[5] = v4;
  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_100006A34();
  sub_100006070(v14, &qword_1002704A0, &unk_1001ECCF0, v15);
  v16 = BidirectionalCollection<>.joined(separator:)();

  return v16;
}

char *sub_100027B2C(char *result, int64_t a2, char a3, uint64_t a4)
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
      sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
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

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100027C2C(char *a1, int64_t a2, char a3)
{
  result = sub_100027B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100027C4C@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = 0xE900000000000073;
  v6 = 0x636974796C616E61;
  switch(a1)
  {
    case 1:
      v5 = 0xE800000000000000;
      v6 = 0x6C616E7265746E69;
      break;
    case 2:
      v5 = 0xE800000000000000;
      v6 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v5 = 0xEF736E6F69746164;
      v6 = 0x6E656D6D6F636572;
      break;
    default:
      break;
  }

  v13 = v6;

  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  v11._countAndFlagsBits = a2;
  v11._object = a3;
  String.append(_:)(v11);

  *a4 = a1;
  *(a4 + 1) = 0;
  *(a4 + 8) = v13;
  *(a4 + 16) = v5;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_100027E3C(unint64_t a1)
{
  v59 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v56 = *(v63 - 8);
  __chkstk_darwin(v63);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v13 = sub_1000116AC(a1);
  sub_10007B9A4(&qword_10026C8A0, &unk_1001EBD30);
  v62 = v13;
  if (!v13)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    return Promise.__allocating_init(value:)();
  }

  v54 = v2;
  v44 = v11;
  v45 = v7;
  v46 = v5;
  v47 = v4;
  v43 = Promise.__allocating_init()();
  v57 = dispatch_group_create();
  v60 = swift_allocObject();
  *(v60 + 16) = _swiftEmptyArrayStorage;
  v14 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v55 = "rk completed with error: ";
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1002878E8;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_1000140D0(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v56 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v63);
  v56 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  result = swift_allocObject();
  v63 = result;
  *(result + 16) = _swiftEmptyArrayStorage;
  if (v62 >= 1)
  {
    v55 = v14;
    v17 = 0;
    v53 = v61 & 0xC000000000000001;
    v52 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v54 + 8);
    v51 = (v54 + 104);
    do
    {
      if (v53)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v17;
      v18 = v57;
      dispatch_group_enter(v57);
      v19 = swift_allocObject();
      v20 = v56;
      v21 = v63;
      v19[2] = v56;
      v19[3] = v21;
      v22 = v59;
      v19[4] = v60;
      v19[5] = v18;
      v23 = v58;
      (*v51)(v58, v52, v22);

      v54 = v20;
      v24 = v18;
      v25 = v55;
      v26 = static OS_dispatch_queue.global(qos:)();
      (*v50)(v23, v22);
      v66 = v25;
      v67 = &protocol witness table for OS_dispatch_queue;
      aBlock[0] = v26;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_10006124C;
      *(v27 + 24) = v19;
      v28 = objc_allocWithZone(NSLock);
      v29 = v26;

      v30 = [v28 init];
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v27;
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v27;
      v33 = v30;
      swift_retain_n();
      v34 = v33;
      Promise.then(perform:orCatchError:on:)();

      sub_100002C00(aBlock);
    }

    while (v62 != v17);
    v35 = swift_allocObject();
    v36 = v43;
    v35[2] = v60;
    v35[3] = v36;
    v35[4] = v63;
    v67 = sub_1000615BC;
    v68 = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    v66 = &unk_10024A888;
    v37 = _Block_copy(aBlock);

    v38 = v49;
    static DispatchQoS.unspecified.getter();
    v64 = _swiftEmptyArrayStorage;
    sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_1000140D0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
    v39 = v45;
    v40 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v54;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v37);

    (*(v46 + 8))(v39, v40);
    (*(v48 + 8))(v38, v44);

    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_100028764()
{

  v0 = sub_100005254();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000287B4(char a1)
{
  sub_1000050F4();
  sub_100006B84();
  v2 = sub_100003040();

  CFPreferencesAppSynchronize(v2);

  sub_1000272C4(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100003040();

  v5 = sub_100003B80();
  CFPreferencesGetAppBooleanValue(v5, v6, v7);

  return 2;
}

uint64_t sub_1000288B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v49 = a5;
  v50 = a6;
  v45 = a3;
  v46 = a4;
  v47 = a1;
  v48 = a2;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v54 = v9;
  __chkstk_darwin(v10);
  sub_100002DEC();
  sub_100012F7C();
  type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v52 = v12;
  v53 = v11;
  __chkstk_darwin(v11);
  sub_100002DEC();
  sub_10005E2AC();
  v13 = type metadata accessor for DispatchTime();
  v44 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_1000056E8();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100002DEC();
  v27 = v26 - v25;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v23 + 104))(v27, enum case for DispatchQoS.QoSClass.default(_:), v21);
  v42 = static OS_dispatch_queue.global(qos:)();
  (*(v23 + 8))(v27, v21);
  static DispatchTime.now()();
  + infix(_:_:)();
  v43 = *(v14 + 8);
  v43(v17, v13);
  static DispatchQoS.background.getter();
  sub_100004AA0();
  v28 = swift_allocObject();
  swift_weakInit();
  sub_100007A3C();
  v29 = swift_allocObject();
  v30 = v47;
  v31 = v48;
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = v31;
  v60 = v49;
  v61 = v29;
  sub_1000181CC();
  v57 = 1107296256;
  sub_100007A28();
  v58 = v32;
  v59 = v50;
  v33 = _Block_copy(aBlock);
  v55 = _swiftEmptyArrayStorage;
  sub_10000B890();
  sub_100005DC0(v34, v35, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_1000140D0(v36, v37, &unk_1001E74F0, v38);
  v39 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v42;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v33);

  (*(v54 + 8))(v7, v39);
  (*(v52 + 8))(v8, v53);
  v43(v20, v44);
}

uint64_t sub_100028D04(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  __chkstk_darwin(v6);
  sub_1000034A4();
  v7 = *(v3 + 72);
  *v2 = v7;
  v8 = sub_100006638();
  v9(v8);
  v10 = v7;
  _dispatchPreconditionTest(_:)();
  v11 = sub_100005A90();
  v12(v11, v5);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  sub_10000602C(v3 + 16, v21);
  v15 = *(v3 + 16);

  v5 = sub_100012A40(v13, v14, v15);

  if (v5)
  {
    v16 = qword_100268710;

    if (v16 == -1)
    {
LABEL_4:

      sub_100008FE8();
      sub_10004F504();
      goto LABEL_8;
    }

LABEL_10:
    sub_100006F8C();
    swift_once();
    goto LABEL_4;
  }

  v22 = *(a1 + 24);
  type metadata accessor for Worker();
  v5 = swift_allocObject();
  sub_1000290FC(a1, 5);

  sub_100027D8C(&v22, v20);
  v17 = qword_100268710;

  if (v17 != -1)
  {
    sub_100006F8C();
    swift_once();
  }

  swift_retain_n();

  sub_100008FE8();
  sub_100029470();
  sub_10000619C(v3 + 16, v20);
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v3 + 16);
  sub_100007F3C();
  sub_100029498();
  *(v3 + 16) = v19;
  swift_endAccess();
  sub_10000619C(v3 + 24, v20);
  sub_1000294AC((v3 + 32), *(v3 + 40), *(v3 + 48), v5);
  swift_endAccess();
LABEL_8:

  return v5;
}

uint64_t sub_100028F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100028D04(a2);
  if (qword_100268710 != -1)
  {
    sub_1000063EC(&qword_100268710);
  }

  sub_100015AEC();
  sub_100029688();
  sub_1000083D8();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;

  sub_1000298A0(a7, v12);

  sub_10002A3E4();
}

uint64_t sub_1000290FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = 0;
  v3 = *(a1 + 16);
  *(v2 + 48) = *a1;
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 32);
  *(v2 + 16) = sub_100029140(_swiftEmptyArrayStorage, 0);
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  return v2;
}

uint64_t sub_100029140(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_100029188()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v6 = sub_100012D2C();
  v7 = sub_100003D10(v6);
  __chkstk_darwin(v7);
  sub_100005478();
  v8 = static os_log_type_t.default.getter();
  if (sub_100006114(v8))
  {
    v16 = v5;
    v17 = static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v9);
    sub_1000056F8();
    v10 = sub_10000E6EC();
    *(v10 + 16) = xmmword_1001E6580;
    v19 = type metadata accessor for PriorityQueue();
    v18[0] = v1;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100011630();

    sub_100002C00(v18);
    LogInterpolation.init(stringLiteral:)();
    sub_10000DD58();
    v13._countAndFlagsBits = v16;
    v13._object = v3;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    v19 = type metadata accessor for Worker();
    v18[0] = v0;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v18);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v14 = PriorityQueue.debugDescription.getter();
    sub_100008794(v14, v15, &type metadata for String);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v18);
    sub_1000036B0(v17, v10);
  }

  else
  {
  }

  sub_100005F14();
}

uint64_t sub_1000293BC()
{
  v2 = *(v0 - 288);
  v3 = *(v0 - 280);

  return sub_1000253FC(v2, v3);
}

uint64_t sub_1000293DC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000293FC()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_1000294AC(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v6 = *(*a1 + 16);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_2:
  result = specialized ContiguousArray._endMutation()();
  while (v6)
  {
    v8 = v6;
    v9 = *a1;
    v10 = *(*a1 + 16);
    if (v6 >= v10)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v11 = v9 + 32;
    v18 = *(v9 + 32 + 8 * v6);
    v6 = (v6 - 1) >> 1;
    if (v6 >= v10)
    {
      goto LABEL_19;
    }

    v17 = *(v11 + 8 * v6);

    v12 = a2(&v18, &v17);

    if ((v12 & 1) == 0)
    {
      return result;
    }

    if (v8 != v6)
    {
      v13 = *(v9 + 16);
      if (v8 < v13)
      {
        if (v6 < v13)
        {
          v14 = *(v11 + 8 * v8);
          v15 = *(v11 + 8 * v6);

          result = swift_isUniquelyReferenced_nonNull_native();
          *a1 = v9;
          if ((result & 1) == 0)
          {
            result = sub_10002B89C(v9);
            v9 = result;
            *a1 = result;
          }

          if (v8 < *(v9 + 16))
          {
            *(v9 + 8 * v8 + 32) = v15;

            specialized ContiguousArray._endMutation()();
            v16 = *a1;
            result = swift_isUniquelyReferenced_nonNull_native();
            *a1 = v16;
            if ((result & 1) == 0)
            {
              result = sub_10002B89C(v16);
              v16 = result;
              *a1 = result;
            }

            if (v6 < *(v16 + 16))
            {
              *(v16 + 8 * v6 + 32) = v14;

              goto LABEL_2;
            }

            goto LABEL_23;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  return result;
}

void sub_100029688()
{
  sub_100003D74();
  v0 = sub_100012D2C();
  v1 = sub_100003D10(v0);
  __chkstk_darwin(v1);
  sub_100005478();
  v2 = static os_log_type_t.default.getter();
  if (sub_100006114(v2))
  {
    v10 = static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v3 = sub_10000A1C0();
    sub_100002CFC(v3);
    sub_1000056F8();
    v4 = swift_allocObject();
    sub_1000059F0(v4, xmmword_1001E6580);
    v5 = type metadata accessor for PriorityQueue();
    sub_10000767C(v5);
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100017F90();
    }

    else
    {
      sub_10000A640();
    }

    sub_10000494C(v11);

    sub_100002C00(v11);
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v6._countAndFlagsBits = 0x6965756575716E45;
    v6._object = 0xEE00206F7420676ELL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v6);
    v7 = type metadata accessor for Worker();
    sub_10000727C(v7);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v11);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v8 = PriorityQueue.debugDescription.getter();
    sub_100008794(v8, v9, &type metadata for String);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v11);
    sub_1000036B0(v10, v4);
  }

  else
  {
  }

  sub_100005F14();
}

uint64_t sub_1000298A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100002FB8();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_10000619C(v3 + 16, v12);

  sub_1000299CC();
  v7 = *(v3 + 32);
  v8 = *(v3 + 40) >> 1;
  v9 = (v8 - v7);
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_10002A080((v8 - v7));
  sub_10002A180(v9, sub_10002CE74, v6);
  swift_endAccess();
  if (qword_100268710 != -1)
  {
LABEL_5:
    sub_100006F8C();
    swift_once();
  }

  v10 = sub_100008FE8();
  return sub_10002A268(v10);
}

uint64_t sub_100029994()
{

  sub_100002FB8();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000299CC()
{
  v1 = v0[3];
  if ((v1 & 1) == 0 || (v2 = *v0, result = swift_isUniquelyReferenced_nonNull(), *v0 = v2, (result & 1) == 0))
  {
    v4 = v0[2];
    result = (v1 >> 1) - v4;
    if (__OFSUB__(v1 >> 1, v4))
    {
      __break(1u);
    }

    else
    {

      return sub_100029A40(result);
    }
  }

  return result;
}

uint64_t sub_100029A40(void *a1)
{
  v5 = sub_100029AC4(a1, a1 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v3 = sub_10002A064();
  sub_100029C98(&v5, a1, 0, v3);
}

void *sub_100029AC4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == &v11[2 * v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[2 * v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[2 * v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_100029C84(v6, v25);
}

uint64_t *sub_100029C98(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = (v6 - v5);
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = &v14[-v13];
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v15;
  v17 = v9 + 32;
  v18 = v9 + 32 + 16 * a2;
  v29 = v18 + 16 * a3;
  result = sub_100029F0C(v7);
  v30 = v9;
  if (result)
  {
    v19 = result;
    v28 = v4[2];
    v20 = &v4[1][2 * v28];
    sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
    swift_arrayDestroy();
    sub_10004F7A4(v20, a2, v17);
    swift_arrayDestroy();
    a4(v18, a3);
    sub_10004F7A4(v20 + 16 * a2 + 16 * v31, v13, v29);
    swift_arrayDestroy();
    *(v19 + 16) = 0;
    v21 = v28;

LABEL_15:

    swift_unknownObjectRelease();
    result = sub_100029140(v30, v21);
    *v4 = result;
    v4[1] = v25;
    v4[2] = v26;
    v4[3] = v27;
    return result;
  }

  v21 = v4[2];
  v22 = v21 + a2;
  if (__OFADD__(v21, a2))
  {
    goto LABEL_21;
  }

  if (v22 < v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v22, v21))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
  swift_arrayInitWithCopy();
  result = a4(v17 + 16 * a2, a3);
  v23 = &v31[v22];
  if (__OFADD__(v22, v31))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = (v4[3] >> 1);
  if (v24 < v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v24, v23))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_100029F0C(void *a1)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v1[1] + 16 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v7) != &v9[2 * v10 + 4])
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = v9[3];

  v14 = (v12 >> 1) - v10;
  v15 = __OFADD__(v7, v14);
  v11 = v7 + v14;
  if (!v15)
  {
LABEL_10:
    if (v11 < a1)
    {
      return 0;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = _swiftEmptyArrayStorage;
    }

    v16 = (v8 - a1 - 32) / 16;
    isUniquelyReferenced_nonNull = v7 + v16;
    if (!__OFADD__(v7, v16))
    {
      v4 = a1[2];
      if (isUniquelyReferenced_nonNull >= v4)
      {
        return a1;
      }

LABEL_19:
      sub_10018BA60(isUniquelyReferenced_nonNull, v4, 0);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_10002A080(void *result)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    __break(1u);
LABEL_11:

    return sub_100029A40(v1);
  }

  v1 = result;
  if (v3)
  {
    v6 = v2[1];
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      swift_unknownObjectRelease();
      v7 = _swiftEmptyArrayStorage;
    }

    v8 = v7[2];
    if ((v6 + 16 * v4 + 16 * v5) == &v7[2 * v8 + 4])
    {
      v9 = v7[3];

      v10 = (v9 >> 1) - v8;
      v11 = __OFADD__(v5, v10);
      v5 += v10;
      if (v11)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  if (v5 < v1 + 1)
  {
    goto LABEL_11;
  }

  return result;
}

void *sub_10002A180(void *result, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v5 >> 1;
  v7 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  v9 = result - v7 + 1;
  if (__OFSUB__(result + 1, v7))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v9)
  {
LABEL_10:
    v16 = (v3[1] + 16 * v4 + 16 * v8);
    *v16 = a2;
    v16[1] = a3;
    return result;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v12 = result[2];
  v13 = __OFADD__(v12, v9);
  v14 = &v9[v12];
  if (v13)
  {
    goto LABEL_13;
  }

  result[2] = v14;

  v15 = &v9[v6];
  if (__OFADD__(v6, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v3[3] = v5 & 1 | (2 * v15);
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_10002A3E4()
{
  sub_100003D74();
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  __chkstk_darwin(v5);
  sub_1000034A4();
  v6 = v3[9];
  *v1 = v6;
  v7 = sub_100006638();
  v8(v7);
  v6;
  _dispatchPreconditionTest(_:)();
  v9 = sub_100005A90();
  v10(v9, v4);
  if ((v2 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (qword_100268710 != -1)
  {
LABEL_10:
    sub_100006F8C();
    swift_once();
  }

  v11 = sub_10000A298();
  sub_10002A69C(v11, v12);
  v13 = v3[7];
  sub_10000602C((v3 + 8), &v21);
  while (*(v3[8] + 16) < v13)
  {
    sub_10002B43C();
    if (!v14)
    {

      v17 = sub_10000A298();
      sub_100060DBC(v17);
      break;
    }

    v15 = v14;
    sub_10002C4B4();
    sub_10000619C((v3 + 8), &v20);

    swift_isUniquelyReferenced_nonNull_native();
    v19 = v3[8];
    sub_100029498();
    v3[8] = v19;

    swift_endAccess();

    sub_10000A298();
    sub_10002C768();
    sub_100002FB8();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = v15;
    swift_retain_n();

    sub_10002BF70();
  }

  v18 = sub_10000A298();
  sub_10014A400(v18);
  sub_100005F14();
}

uint64_t sub_10002A660()
{

  sub_100002FB8();

  return _swift_deallocObject(v0);
}

void *sub_10002A840(_BYTE *a1, void (*a2)(void, void, void), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v82 = a8;
  v78 = a3;
  v77 = a2;
  v76 = 0xE900000000000073;
  v86 = type metadata accessor for DispatchQoS.QoSClass();
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v87 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for OSSignposter();
  v94 = *(v79 - 8);
  v14 = __chkstk_darwin(v79);
  v93 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v75 - v16;
  v96 = type metadata accessor for OSSignpostID();
  v91 = *(v96 - 8);
  v18 = __chkstk_darwin(v96);
  v84 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = &v75 - v20;
  v21 = 0xE000000000000000;
  *&v97 = 0;
  *(&v97 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  if (*a1)
  {
    v22 = 3041653;
  }

  else
  {
    v22 = 0;
  }

  if (*a1)
  {
    v21 = 0xE300000000000000;
  }

  v23 = v21;
  String.append(_:)(*&v22);

  v24._object = 0x80000001001F6E30;
  v24._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v24);
  v25 = v97;
  v95 = a4;
  [a4 lock];
  swift_beginAccess();
  v88 = a5;
  v80 = *(&v25 + 1);
  v81 = v25;
  sub_10000E42C(0xD000000000000017, 0x80000001001F6F80, v25, *(&v25 + 1));
  swift_endAccess();
  v26 = a1[1];
  v27 = 0x636974796C616E61;
  v28 = 0xE900000000000073;
  v75 = v26;
  switch(v26)
  {
    case 1:
      v28 = 0xE800000000000000;
      v27 = 0x6C616E7265746E69;
      break;
    case 2:
      v28 = 0xE800000000000000;
      v27 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v27 = 0x6E656D6D6F636572;
      v28 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  swift_beginAccess();
  *(a6 + 16) = v27;
  *(a6 + 24) = v28;

  [v95 unlock];
  v29 = sub_10002D0CC(a1);
  v31 = v30;
  sub_1000263DC(a7 + OBJC_IVAR____TtC14amsengagementd17EngagementService_persistedEventCoordinator, &v97);
  type metadata accessor for EnqueueRunner();
  swift_allocObject();
  v32 = sub_100026438(a1, v29, v31, &v97);
  v90 = a7;
  sub_1000262E4(a7 + OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider, v100);
  swift_beginAccess();
  v85 = v29;
  swift_unknownObjectRetain();
  sub_10000F4A4(a1, &v97);
  sub_10002636C(v100, v32 + 16);
  swift_endAccess();
  v82 = sub_10002433C(v82, v77, v78);
  v33 = v94;
  v34 = v86;
  v35 = v79;
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  v36 = qword_100287850;
  v37 = *(qword_100287850 + 16);
  OSSignposter.init(logHandle:)();

  OSSignposter.logHandle.getter();
  v38 = v92;
  OSSignpostID.init(log:object:)();
  v41 = *(v33 + 8);
  v39 = v33 + 8;
  v40 = v41;
  v41(v17, v35);
  v42 = *(v36 + 16);
  OSSignposter.init(logHandle:)();
  sub_10000F4A4(a1, &v97);
  v43 = OSSignposter.logHandle.getter();
  v44 = static os_signpost_type_t.begin.getter();
  sub_10000FF10(a1);
  v45 = OS_os_log.signpostsEnabled.getter();
  v83 = v32;
  if (v45)
  {
    v94 = v39;
    v46 = v35;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v97 = v48;
    *v47 = 136315138;
    v49 = v48;
    switch(v75)
    {
      case 1:
        v76 = 0xE800000000000000;
        break;
      case 2:
        v76 = 0xE800000000000000;
        break;
      case 3:
        v76 = 0xEF736E6F69746164;
        break;
      default:
        break;
    }

    v50 = sub_1000127B4();

    *(v47 + 4) = v50;
    v51 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v44, v51, "Enqueue", "%s enqueue", v47, 0xCu);
    sub_100002C00(v49);

    v35 = v46;
  }

  else
  {
  }

  v52 = v91;
  (*(v91 + 16))(v84, v38, v96);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v53 = OSSignpostIntervalState.init(id:isOpen:)();
  v40(v93, v35);
  v54 = swift_allocObject();
  v55 = v95;
  v56 = v88;
  v54[2] = v95;
  v54[3] = v56;
  v57 = v80;
  v54[4] = v81;
  v54[5] = v57;
  v58 = v90;
  v54[6] = v90;
  v54[7] = v53;
  v59 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v60 = v89;
  v61 = v87;
  (*(v89 + 104))(v87, enum case for DispatchQoS.QoSClass.default(_:), v34);
  v62 = v55;

  v63 = v58;

  v64 = static OS_dispatch_queue.global(qos:)();
  (*(v60 + 8))(v61, v34);
  v98 = v59;
  v99 = &protocol witness table for OS_dispatch_queue;
  *&v97 = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_10005FFDC;
  *(v65 + 24) = v54;
  v66 = objc_allocWithZone(NSLock);
  v67 = v64;

  v68 = [v66 init];
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  *(v69 + 24) = v65;
  v70 = swift_allocObject();
  *(v70 + 16) = v68;
  *(v70 + 24) = v65;
  v71 = v68;
  swift_retain_n();
  v72 = v71;
  v73 = v82;
  Promise.then(perform:orCatchError:on:)();
  swift_unknownObjectRelease();

  (*(v52 + 8))(v92, v96);

  sub_100002C00(&v97);
  return v73;
}

uint64_t sub_10002B268()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10002B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_100268710 != -1)
  {
    sub_1000063EC(&qword_100268710);
  }

  v15 = qword_100287870;

  v16 = sub_10002CFFC(v15, a3);
  a4(v16);
  sub_1000083D8();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a6;
  v17[4] = a1;
  v17[5] = a2;
  sub_1000083D8();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a6;
  v18[4] = a1;
  v18[5] = a2;
  v19 = *(a3 + 72);
  v22[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v22[4] = &protocol witness table for OS_dispatch_queue;
  v22[0] = v19;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v20 = v19;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v22);
}

unint64_t sub_10002B80C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B830()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if ((result & 1) == 0)
  {
    result = sub_10002B89C(v1);
    v1 = result;
    *v0 = result;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = *(v1 + 8 * v4 + 32);
    *(v1 + 16) = v4;
    specialized ContiguousArray._endMutation()();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002B8B0()
{
  if (*(*v0 + 16))
  {
    if (!sub_10002B830())
    {
      v1 = *(*v0 + 16) - 1;

      sub_10018BE20(v1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002B900(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    type metadata accessor for Worker();
    sub_10002B97C();
    if (v4)
    {
      break;
    }

    ++v2;
  }

  return v2;
}

void sub_10002B97C()
{
  sub_100003D74();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v5 + 56);
  v7 = *(v5 + 64);
  v8 = *(v5 + 72);
  v9 = *(v5 + 80);
  if (sub_10002BA30(*(v0 + 48), *(v5 + 48)))
  {
    v10 = v3 == v8 && v4 == v9;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v1 != v6 || v2 != v7))
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  sub_100005F14();
}

uint64_t sub_10002BA30(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  v4 = a1;
  v5 = 0x636974796C616E61;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x6C616E7265746E69;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = sub_1000058B4();
      break;
    case 3:
      v5 = 0x6E656D6D6F636572;
      v6 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v3 = 0x6E656D6D6F636572;
      v2 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008F34(v5, a2, v3);
  }

  return v8 & 1;
}

void sub_10002BBA4()
{
  sub_100003D74();
  v35 = v1;
  v3 = v2;
  v34 = v4;
  v6 = v5;
  v8 = v7;
  sub_100003EFC();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = sub_100003D10(v9);
  __chkstk_darwin(v10);
  sub_100002DEC();
  sub_10001C064();
  if (qword_1002686F0 != -1)
  {
    sub_100006C90();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A610();
  v11 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v11);
  sub_1000056F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E5F70;
  v38 = type metadata accessor for EngagementService();
  v36 = v0;
  v13 = v0;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v36);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x20676E696E6E7552;
  v14._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  if (v34)
  {
    if (v34 == 1)
    {
      v15 = 0xEF636E7953746867;
      v16 = 0x696577746867696CLL;
    }

    else
    {
      v15 = 0xE400000000000000;
      v16 = 1668184435;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
    v16 = 0x65756575716E65;
  }

  v38 = &type metadata for String;
  v36 = v16;
  v37 = v15;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100015AEC();
  sub_10000A0C4(v17, v18);
  v19._countAndFlagsBits = 0x7473657571657220;
  v19._object = 0xEF203A7070612820;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v3[1];
  v38 = &unk_1002471C0;
  LOBYTE(v36) = v20;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100015AEC();
  sub_10000A0C4(v21, v22);
  sub_100004810();
  v23._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  v24 = *v3;
  v38 = &type metadata for Bool;
  LOBYTE(v36) = v24;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100015AEC();
  sub_10000A0C4(v25, v26);
  v27._countAndFlagsBits = 0x69726F697270202CLL;
  v27._object = 0xEC000000203A7974;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
  v28 = sub_100027970();
  v38 = &type metadata for String;
  v36 = v28;
  v37 = v29;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100015AEC();
  sub_10000A0C4(v30, v31);
  v32._countAndFlagsBits = 41;
  v32._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
  LogInterpolation.init(stringInterpolation:)();
  v33 = static os_log_type_t.default.getter();
  sub_1000036B0(v33, v12);

  v35(v3, v8, v6);
  sub_100005F14();
}

uint64_t sub_10002BEDC(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_100060638, v5);
}

void sub_10002BF70()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100002DEC();
  v18 = v17 - v16;
  *(v17 - v16) = v11;
  (*(v14 + 104))(v17 - v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v11;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v12);
  if (v20)
  {
    if (qword_100268710 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100006F8C();
  swift_once();
LABEL_3:

  v21 = sub_10000AD3C();
  sub_10002C904(v21, v22);
  swift_beginAccess();
  v23 = v1[4];
  v24 = v1[5];
  if (v23 == v24 >> 1)
  {

    v25 = sub_10000AD3C();
    sub_100060A30(v25, v26);
    v1[12] = 0;
    v27 = 1;
    goto LABEL_8;
  }

  if (v23 < (v24 >> 1))
  {
    v28 = *(v1[3] + 16 * v23);

    if ((v9(v1) & 1) == 0)
    {
      v41 = v19;
      v42 = v3;
      v30 = v1[2];
      v31 = v1[3];
      v43 = v28;
      v33 = v1[4];
      v32 = v1[5];
      swift_unknownObjectRetain();
      v1[2] = sub_10002CCF0(1, v30, v31, v33, v32);
      v1[3] = v34;
      v1[4] = v35;
      v1[5] = v36;
      swift_unknownObjectRelease();

      v37 = sub_10000AD3C();
      sub_10002CB6C(v37);
      v38 = swift_allocObject();
      v38[2] = v1;
      v38[3] = v41;
      v38[4] = v9;
      v38[5] = v7;
      v38[6] = v5;
      v38[7] = v42;
      sub_100002FB8();
      v39 = swift_allocObject();
      *(v39 + 16) = sub_1000609CC;
      *(v39 + 24) = v38;
      v44[0] = sub_10001278C;
      v44[1] = v39;
      v40 = v41;

      v43(v44);

      goto LABEL_10;
    }

    v29 = sub_10000AD3C();
    sub_10014A258(v29);
    v1[12] = 0;
    v27 = 0;
LABEL_8:
    v5(v27);
LABEL_10:
    sub_100005F14();
    return;
  }

  __break(1u);
}

void sub_10002C26C()
{
  sub_100003D74();
  v1 = v0;
  sub_10000AF94();
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100005478();
  v4 = static os_log_type_t.default.getter();
  if (sub_100003F9C(v4))
  {
    v14 = static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v5 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v5);
    sub_10000C0C4();
    v6 = swift_allocObject();
    sub_1000059F0(v6, xmmword_1001E6580);
    v7 = type metadata accessor for PriorityQueue();
    sub_10000727C(v7);
    if (AMSLogKey())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100017F90();
    }

    else
    {
      sub_10000A640();
    }

    sub_10000494C(v15);

    sub_100002C00(v15);
    sub_10000B3CC();
    LogInterpolation.init(stringLiteral:)();
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._countAndFlagsBits = 0x6E696E7275746572;
    v9._object = 0xEB00000000203A67;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
    v10 = *v1;
    if (v10)
    {
      v11 = type metadata accessor for Worker();
    }

    else
    {
      v11 = 0;
      v15[1] = 0;
      v15[2] = 0;
    }

    v15[0] = v10;
    v15[3] = v11;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v15);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    sub_100012F98();
    v12 = PriorityQueue.debugDescription.getter();
    sub_100008794(v12, v13, &type metadata for String);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v15);
    sub_1000036B0(v14, v6);

    sub_100005F14();
  }

  else
  {
    sub_100005F14();
  }
}

uint64_t sub_10002C4B4()
{
  if (v0[1])
  {
    return 0x72656972726162;
  }

  result = 0x636974796C616E61;
  switch(*v0)
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

void sub_10002C574()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = sub_100012D2C();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100005478();
  v6 = static os_log_type_t.default.getter();
  if (sub_100006114(v6))
  {
    v16 = v3;
    v17 = static os_log_type_t.default.getter();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v7);
    sub_1000056F8();
    v8 = sub_10000E6EC();
    *(v8 + 16) = xmmword_1001E6580;
    v9 = type metadata accessor for PriorityQueue();
    sub_10000767C(v9);
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100011630();

    sub_100002C00(v18);
    sub_100007BB4();
    LogInterpolation.init(stringLiteral:)();
    sub_10000DD58();
    v12._countAndFlagsBits = v16;
    v12._object = v1;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    v13 = type metadata accessor for Worker();
    sub_10000727C(v13);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v18);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v14 = PriorityQueue.debugDescription.getter();
    sub_100008794(v14, v15, &type metadata for String);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v18);
    sub_1000036B0(v17, v8);
  }

  else
  {
  }

  sub_100005F14();
}

uint64_t sub_10002C91C(void *a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  __chkstk_darwin(v5);
  sub_1000034A4();
  v6 = v1[9];
  *v2 = v6;
  v7 = sub_100006638();
  v8(v7);
  v9 = v6;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100005A90();
  result = v11(v10, v4);
  if (v6)
  {
    v13 = a1[9];
    v14 = a1[10];
    if (sub_10002CB00() == v13 && v15 == v14)
    {
    }

    else
    {
      sub_10000771C();
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        sub_10000602C((v1 + 3), v26);
        v18 = sub_10018A3D8(v1[4]);
        if (v18)
        {
          v19 = *(v18 + 72);
          v20 = *(v18 + 80);
          if (v1[10] == v19 && v1[11] == v20)
          {
            v22 = 0;
          }

          else
          {
            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          if (a1[12] >= a1[11])
          {
            if (v13 == v19 && v14 == v20)
            {

              v23 = 1;
            }

            else
            {
              sub_100007F3C();
              v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v23 = v22 & v25 ^ 1;
            }
          }

          else
          {

            v23 = v22 ^ 1;
          }

          return v23 & 1;
        }
      }
    }

    v23 = 0;
    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002CB00()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_10018AEEC();
    *(v0 + 80) = v1;
    *(v0 + 88) = v2;
  }

  return v1;
}

uint64_t sub_10002CCF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a5 >> 1;
    result = sub_10002CE28(a4, result, a5 >> 1);
    if (v10)
    {
      result = v9;
    }

    if (v9 >= result)
    {
      v11 = sub_10002CDAC(result, v9, a2, a3, a4, a5);
      swift_unknownObjectRelease();
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002CDAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10002CE28(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10002D0CC(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer];
  v4 = *&v1[OBJC_IVAR____TtC14amsengagementd17EngagementService_currentEnginePerformer + 8];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *v3;

  swift_unknownObjectRetain();
  if (v5 == sub_10002D7EC() && v4 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      swift_unknownObjectRelease();

LABEL_8:
      if (qword_1002686F0 != -1)
      {
        sub_100006C90();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_10000A610();
      v9 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v9);
      sub_1000056F8();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001E5F70;
      v30 = type metadata accessor for EngagementService();
      v28 = v1;
      v11 = v1;
      v12 = AMSLogKey();
      if (v12)
      {
        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v28);
      v30 = &type metadata for String;
      v28 = 0xD00000000000001DLL;
      v29 = 0x80000001001F72A0;
      static LogInterpolation.safe(_:)();
      sub_10000A0C4(&v28, &qword_10026D350);
      v19 = static os_log_type_t.debug.getter();
      sub_1000036B0(v19, v10);

      type metadata accessor for JSAppEngine();
      sub_100002FB8();
      swift_allocObject();
      sub_10000F4A4(a1, &v28);
      v20 = sub_10002D6B8(a1);

      v21 = sub_10002D7EC();
      v22 = *v3;
      v23 = v3[1];
      v24 = v3[2];
      *v3 = v21;
      v3[1] = v25;
      v3[2] = v20;
      v3[3] = &off_10024BC70;
      sub_10002DA34(v22, v23, v24);
      return sub_100007F3C();
    }
  }

  if (qword_1002686F0 != -1)
  {
    sub_100006C90();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v14 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v14);
  sub_1000056F8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E5F70;
  v30 = type metadata accessor for EngagementService();
  v28 = v1;
  v16 = v1;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v28);
  v30 = &type metadata for String;
  v28 = 0xD00000000000001FLL;
  v29 = 0x80000001001F72C0;
  static LogInterpolation.safe(_:)();
  sub_10000A0C4(&v28, &qword_10026D350);
  v26 = static os_log_type_t.debug.getter();
  sub_1000036B0(v26, v15);

  return sub_100007F3C();
}

uint64_t sub_10002D4EC(unint64_t a1)
{
  v2 = v1 + 1;
  v3 = v1[1];
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = sub_10002B80C(a1, v1[1]);
  v7 = v4 - 1;
  if (!v7 || (type metadata accessor for Worker(), sub_10002B80C(a1, v3), sub_10002B80C(v7, v3), sub_10002B97C(), v9 = v8, , , (v9 & 1) != 0))
  {
LABEL_12:
    sub_10002B8B0();

    return v6;
  }

  v10 = v1[2];
  v11 = v1[3];
  v16 = sub_10002B80C(a1, v3);
  v15 = sub_10002B80C(*(v3 + 16) - 1, v3);
  v12 = v10(&v16, &v15);

  v13 = sub_10002B80C(*(v3 + 16) - 1, v3);
  if ((v12 & 1) == 0)
  {
    sub_10018A7A8(v2, v10, v11, a1, v13);

    goto LABEL_12;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if ((result & 1) == 0)
  {
    result = sub_10002B89C(v3);
    v3 = result;
    *v2 = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 16) > a1)
  {
    *(v3 + 8 * a1 + 32) = v13;

    specialized ContiguousArray._endMutation()();
    sub_10002B8B0();

    sub_10018A50C(v2, v10, v11, a1);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D6B8(_OWORD *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  v4 = objc_allocWithZone(type metadata accessor for JSRuntime(0));
  *(v2 + 24) = sub_10002D750(a1);
  return v2;
}

uint64_t type metadata accessor for JSRuntime(uint64_t a1)
{
  result = qword_10026D538;
  if (!qword_10026D538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10002D750(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC14amsengagementd9JSRuntime_date;
  v5 = type metadata accessor for Date();
  sub_10000A7C0(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for JSRuntime(0);
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_10002D7EC()
{
  type metadata accessor for UUID();
  sub_100002EF0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000078F0();
  if (*(v1 + 48) - 1 > 1)
  {
    sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1001E5F70;
    v8 = 0xE900000000000073;
    v9 = 0x636974796C616E61;
    v10 = v7;
    switch(*(v1 + 1))
    {
      case 1:
        v8 = 0xE800000000000000;
        v9 = 0x6C616E7265746E69;
        break;
      case 2:
        v8 = 0xE800000000000000;
        v9 = 0x7379656E72756F6ALL;
        break;
      case 3:
        v8 = 0xEF736E6F69746164;
        v9 = 0x6E656D6D6F636572;
        break;
      default:
        break;
    }

    *(v7 + 32) = v9;
    *(v7 + 40) = v8;
    *(v7 + 48) = String.init<A>(_:)();
    *(v10 + 56) = v11;
    sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    sub_100006A34();
    sub_100006070(v12, &qword_1002704A0, &unk_1001ECCF0, v13);
    v6 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {
    UUID.init()();
    v6 = UUID.uuidString.getter();
    (*(v4 + 8))(v2, v0);
  }

  return v6;
}

void sub_10002DA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10002DB2C()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0);
}

uint64_t sub_10002DB84()
{
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  v1[1] = sub_100009BE8;
  v3 = sub_1000077B0();

  return v4(v3);
}

uint64_t sub_10002DC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v6[2] = a6;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = swift_task_alloc();
  v6[3] = v11;
  sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v12 = swift_task_alloc();
  v6[4] = v12;
  v13 = swift_task_alloc();
  v6[5] = v13;
  v6[6] = _Block_copy(a5);
  v6[7] = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v10 + 32))(v13, v11, v9);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = 1;
  sub_10000A7C0(v13, v14, 1, v9);
  if (a4)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v10 + 32))(v12, v11, v9);
    v15 = 0;
  }

  sub_10000A7C0(v12, v15, 1, v9);

  v16 = swift_task_alloc();
  v6[8] = v16;
  *v16 = v6;
  v16[1] = sub_1001BE274;

  return sub_10002DE9C();
}

uint64_t sub_10002DE9C()
{
  sub_100004768();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v1[28] = v5;
  v1[33] = swift_getObjectType();
  v6 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100002CFC(v6);
  v1[34] = v7;
  v1[35] = *(v8 + 64);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v9);
  v1[38] = sub_100023C0C();
  v10 = sub_1000047B0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10002DF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v17 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100015AC0();
  *(v14 + 312) = v15;
  *(v14 + 320) = v16;
  if (qword_100268738 != -1)
  {
    sub_100004E84(&qword_100268738);
  }

  v18 = *(v14 + 256);
  v19 = *(v14 + 224);
  v38 = qword_100287898;
  *(v14 + 328) = qword_100287898;
  *(v14 + 336) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v20 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v20);
  *(v14 + 344) = *(v21 + 72);
  *(v14 + 456) = *(v22 + 80);
  v23 = swift_allocObject();
  v24 = sub_100006044(v23, xmmword_1001E5F70);
  *(v14 + 352) = v24;
  *(v14 + 40) = v24;
  *(v14 + 16) = v18;

  sub_100007324();
  sub_1001BF354();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v25._countAndFlagsBits = 0xD00000000000001CLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
  *(v14 + 72) = sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
  *(v14 + 48) = v19;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v14 + 48, &qword_10026D350, &qword_1001E6050);
  sub_100012FBC();
  sub_100015B10();
  v26 = static os_log_type_t.info.getter();
  sub_1000091D0(v26);

  *(v14 + 360) = sub_100015E2C();
  sub_1000058A4(&dword_1001EBD70);
  v39 = v27;
  v28 = swift_task_alloc();
  *(v14 + 368) = v28;
  *v28 = v14;
  sub_10001CC4C(v28);
  sub_10000A820();

  return v29(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, a12, a13, a14);
}

uint64_t sub_10002E1E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100006CA4();
}

id sub_10002E1F4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 1);
  sub_100030F40(*(a3 + 1));
  v14 = type metadata accessor for JSStackContext(0);
  sub_1000310D0(v13, 0);
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v15 = *(v10 + 8);
  v15(v12, v9);
  sub_1000338E0(v13, a5 + v14[5]);
  sub_10001E78C(v13);
  URL.appendingPathComponent(_:)();
  v15(v12, v9);
  sub_10001DFD8(v13, 0x6B63617074656ALL, 0xE700000000000000);
  sub_10001EC70(a2, a5 + v14[8]);
  *(a5 + v14[11]) = a1 & 1;
  v16 = v19;
  *(a5 + v14[12]) = v19;

  return v16;
}

uint64_t sub_10002E3EC(char a1)
{
  sub_1000050F4();
  sub_100006B84();
  v2 = sub_100003040();

  CFPreferencesAppSynchronize(v2);

  sub_1000272C4(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100003040();

  v5 = sub_100003B80();
  CFPreferencesGetAppIntegerValue(v5, v6, v7);

  return 0;
}

uint64_t sub_10002E500(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v23 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_10026C898, &qword_1001EBD20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v6 + 16);
  v12(&v22 - v10, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v24 + v13, v11, v5);
  v12(v9, v23, v5);
  v15 = swift_allocObject();
  v14(v15 + v13, v9, v5);
  v16 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  (*(v26 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v27);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v18, v19);
  v29[3] = v16;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v29);
}

uint64_t sub_10002E810(char a1, uint64_t a2, double a3)
{
  v4 = type metadata accessor for JSRoute();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  JSRoute.init(service:function:)();
  v26 = v5;
  v11 = *(v5 + 16);
  v25 = v10;
  v27 = v4;
  v11(v8, v10, v4);
  result = JSRequest.init(route:timeoutInterval:version:)();
  v13 = 0;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;
  if (v16)
  {
    while (1)
    {
      v18 = v13;
LABEL_9:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(a2 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      sub_100011BAC(*(a2 + 56) + 32 * v20, v28);
      *&v29 = v23;
      *(&v29 + 1) = v22;
      sub_100002C4C(v28, &v30);

LABEL_10:
      v32 = v29;
      v33[0] = v30;
      v33[1] = v31;
      if (!*(&v29 + 1))
      {
        break;
      }

      sub_100002C4C(v33, &v29);
      JSRequest.addOption(_:withName:)();

      result = sub_100002C5C(&v29);
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return (*(v26 + 8))(v25, v27);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v18 >= v17)
      {
        v16 = 0;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        goto LABEL_10;
      }

      v16 = *(a2 + 64 + 8 * v18);
      ++v13;
      if (v16)
      {
        v13 = v18;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002EAD0()
{
  v0 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002F144();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v6 = [v4 isValidJSONObject:isa];

    if (v6)
    {
      v7 = Dictionary._bridgeToObjectiveC()().super.isa;
      v38[0] = 0;
      v8 = [v4 dataWithJSONObject:v7 options:2 error:v38];

      v9 = v38[0];
      if (v8)
      {

        v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        static String.Encoding.utf8.getter();
        v13 = String.init(data:encoding:)();
        sub_1000253FC(v10, v12);
        return v13;
      }

      v27 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v28 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v28);
      v15 = sub_1000032C0();
      *(v15 + 16) = xmmword_1001E5F70;
      v29 = type metadata accessor for JSONObject();
      sub_10000C070(v29);
      sub_100006DCC();
      sub_10000B9D4();
      v30();
      v31 = AMSLogKey();
      if (v31)
      {
        v32 = v31;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_10000B9D4();
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v38);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v34 = 0x80000001001F9C00;
      v33 = 0xD000000000000015;
    }

    else
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v20 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v20);
      v15 = sub_1000032C0();
      *(v15 + 16) = xmmword_1001E5F70;
      v21 = type metadata accessor for JSONObject();
      sub_10000C070(v21);
      sub_100006DCC();
      sub_10000B9D4();
      v22();
      v23 = AMSLogKey();
      if (v23)
      {
        v24 = v23;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_10000B9D4();
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v38);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v33 = 0xD00000000000002BLL;
      v34 = 0x80000001001FC9E0;
    }

    LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v33);
    v38[3] = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    v38[0] = v3;
    LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
    sub_100002C5C(v38);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v14);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001E5F70;
    v16 = type metadata accessor for JSONObject();
    sub_10000C070(v16);
    sub_100006DCC();
    sub_10000B9D4();
    v17();
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v38);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 0xD000000000000028;
    v25._object = 0x80000001001FC9B0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    JSONObject.untyped.getter();
    LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
    sub_100002C5C(v38);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  }

  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v36 = static os_log_type_t.error.getter();
  sub_1000036B0(v36, v15);

  return 0;
}

uint64_t sub_10002F144()
{
  JSONObject.untyped.getter();
  if (v3)
  {
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100002C5C(v2);
    return 0;
  }
}

id sub_10002F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 16);
  v11[0] = *(a4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
  v11[1] = v6;
  v7 = *(a4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48);
  v11[2] = *(a4 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 32);
  v11[3] = v7;
  v8 = objc_allocWithZone(type metadata accessor for AppURLSession());
  sub_10000F4A4(v11, &v10);
  return sub_100026AEC(v11);
}

uint64_t sub_10002F25C(uint64_t a1, uint64_t a2, void *a3)
{
  v10[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a3;
  v6 = a3;
  v7 = Promise.__allocating_init()();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v10);
  return v7;
}

uint64_t sub_10002F3C4()
{
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v1[1] = sub_100009CC8;
  sub_100005F88();
  sub_10000A820();

  return sub_10002F4A8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10002F4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v12;
  *(v8 + 224) = v11;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 200) = a6;
  type metadata accessor for LogInterpolation.StringInterpolation();
  *(v8 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10002F550, 0, 0);
}

uint64_t sub_10002F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  v16 = sub_1000116AC(v12[25]);
  v12[32] = v16;
  if (v16)
  {
    v17 = v12[25];
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
      v12[33] = v18;
      v12[34] = 1;
      sub_1000058A4(&unk_1001EBD18);
      v44 = v24;
      v25 = swift_task_alloc();
      v12[35] = v25;
      *v25 = v12;
      sub_100007FAC(v25);
      sub_10000481C();

      return v26(v26, v27, v28, v29, v30, v31, v32, v33, v44, a10, a11, a12);
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 32);

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_19;
  }

  sub_10001D730();

  v19 = Promise.isResolved.getter();

  if ((v19 & 1) == 0)
  {
    if (qword_1002686F0 == -1)
    {
LABEL_6:
      sub_10000F3F0();
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v20 = sub_10000C3AC();
      sub_100002CFC(v20);
      sub_1000056F8();
      v21 = sub_100015C9C();
      v12[5] = sub_1000F12D0(v21, xmmword_1001E5F70);
      v12[2] = v15;
      v22 = v15;
      sub_100015A84();
      sub_100002C00(v12 + 2);
      sub_10000DD34();
      v23 = static os_log_type_t.default.getter();
      sub_1000036B0(v23, v21);

      sub_10000602C(v13 + 16, (v12 + 17));
      if (v14)
      {
      }

      else
      {
        sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
        v35 = objc_allocWithZone(AMSEngagementEnqueueResult);

        v12[23] = [v35 init];
        Promise.__allocating_init(value:)();
      }

      sub_100019C18();
      sub_100061EDC();

      goto LABEL_15;
    }

LABEL_19:
    sub_100006C90();
    swift_once();
    goto LABEL_6;
  }

LABEL_15:

  sub_100002D8C();
  sub_10000481C();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_10002F804()
{
  sub_100004768();
  v1 = swift_task_alloc();
  sub_100061DE4(v1);
  sub_100002BC0(0, &qword_10026FEB0, AMSEngagementEnqueueResult_ptr);
  sub_10001CD6C();
  *v0 = v2;
  sub_100017EE4();
  sub_10000522C();
  v3 = sub_100004C68();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3);
}

double sub_10002F8B8(char a1)
{
  type metadata accessor for Defaults();
  v2 = sub_1000287B4(5);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = dbl_1001E7800[a1];
  }

  else
  {
    v3 = 600.0;
  }

  v4 = sub_10002E3EC(4);
  if (v5)
  {
    v4 = -0.0;
  }

  return v3 + v4;
}

uint64_t sub_10002F940()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002DEC();
  v7 = v6 - v5;
  v8 = sub_10007B9A4(&qword_10026D638, &qword_1001EC980);
  v9 = sub_100003D10(v8);
  v10 = __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  type metadata accessor for Date();
  sub_100002CC4();
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v22 = &v56 - v21;
  v23 = *(v0 + 16);
  if (v23)
  {
    sub_10007B9A4(&qword_10026D650, &qword_1001EC988);
    v80[0] = v23;

    return Promise.__allocating_init(value:)();
  }

  else
  {
    v56 = v20;
    v58 = v19;
    v61 = v18;
    v25 = *(v0 + 24);
    v63 = v17;
    v64 = v25;
    v67 = *(v25 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8);
    if (v67)
    {
      v69 = *(v25 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
    }

    else
    {
      v69 = 0;
    }

    v68 = v0;
    v59 = v7;
    v60 = v3;
    v62 = v1;
    v66 = v22;
    Date.init()();
    if (qword_1002686C0 != -1)
    {
      sub_1000031E0(&qword_1002686C0);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v26 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v26);
    sub_1000056F8();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1001E5F70;
    v81 = type metadata accessor for JSAppEngine();
    v80[0] = v68;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v80);
    LogInterpolation.init(stringLiteral:)();
    v28 = static os_log_type_t.info.getter();
    sub_1000036B0(v28, v27);

    v29 = objc_opt_self();
    v30 = &v64[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
    v31 = [*&v64[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 8] accountMediaType];
    v65 = [v29 ams_sharedAccountStoreForMediaType:v31];

    type metadata accessor for BaseObjectGraph();
    static BaseObjectGraph.build(withName:)();
    v32 = type metadata accessor for Bag();
    sub_10000A7C0(v14, 1, 1, v32);
    if (v30[48])
    {
      if (qword_1002685F8 != -1)
      {
        swift_once();
      }

      swift_unknownObjectRetain();
      Bag.init(from:)();
      sub_10000A064(v14, &qword_10026D638, &qword_1001EC980);
      sub_10000A7C0(v12, 0, 1, v32);
      sub_100101D8C(v12, v14);
    }

    sub_100003CA8(v80, v81);
    AsyncObjectGraphBuilder.withDependenciesSatisfied.getter();
    v33 = v78;
    v34 = v79;
    sub_100003CA8(v77, v78);
    sub_10003035C(v32, v14, v33, v32, v34, v76);
    sub_100003CA8(v76, v76[3]);
    sub_100002BC0(0, &qword_10026D640, AMSURLSession_ptr);
    v57 = v14;
    sub_100007A3C();
    v35 = swift_allocObject();
    v36 = v67;
    v35[2] = v69;
    v35[3] = v36;
    v37 = v64;
    v35[4] = v64;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_100026ABC;
    *(v38 + 24) = v35;

    v39 = v37;
    AsyncObjectGraphBuilder.satisfying<A>(_:with:)();

    sub_100003CA8(v75, v75[3]);
    v40 = sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
    v73[0] = *(v30 + 1);
    sub_10000C3DC(v40, v73);
    sub_100003CA8(v74, v74[3]);
    v41 = sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
    v72[0] = v65;
    sub_10000C3DC(v41, v72);
    sub_100003CA8(v73, v73[3]);
    AsyncObjectGraphBuilder.withDependenciesSatisfied.getter();
    sub_100003CA8(v72, v72[3]);
    type metadata accessor for JSStack();
    sub_100007A3C();
    v42 = swift_allocObject();
    v43 = v69;
    v42[2] = v69;
    v42[3] = v36;
    v42[4] = v39;

    v44 = v39;
    dispatch thunk of AsyncObjectGraphBuilder.satisfying<A>(_:with:)();

    sub_100003CA8(v71, v71[3]);
    AsyncObjectGraphBuilder.withDependenciesSatisfied.getter();
    sub_100003CA8(v70, v70[3]);
    v64 = dispatch thunk of AsyncObjectGraphBuilder.makeObjectGraph()();
    sub_100002C00(v70);
    sub_100002C00(v71);
    sub_100002C00(v72);
    sub_100002C00(v73);
    sub_100002C00(v74);
    sub_100002C00(v75);
    sub_100002C00(v76);
    sub_100002C00(v77);
    v45 = v61;
    v46 = v58;
    v47 = v63;
    (*(v61 + 16))(v58, v66, v63);
    v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v49 = (v56 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    *(v50 + 16) = v43;
    *(v50 + 24) = v36;
    (*(v45 + 32))(v50 + v48, v46, v47);
    *(v50 + v49) = v68;
    sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v51 = v59;
    v52 = v60;
    v53 = v62;
    (*(v60 + 104))(v59, enum case for DispatchQoS.QoSClass.default(_:), v62);

    v54 = static OS_dispatch_queue.global(qos:)();
    (*(v52 + 8))(v51, v53);
    v24 = sub_10010242C(sub_1000387C4, v50, v54, v64, &unk_10024BD58, &unk_10024BD80, sub_1001023F8, sub_100102404);

    sub_10000A064(v57, &qword_10026D638, &qword_1001EC980);
    (*(v45 + 8))(v66, v47);
    sub_100002C00(v80);
  }

  return v24;
}

uint64_t sub_100030264()
{

  v0 = sub_1000074E4();

  return _swift_deallocObject(v0);
}

uint64_t sub_100030294()
{
  type metadata accessor for Date();
  sub_100002CC4();

  v0 = sub_100008428();
  v1(v0);

  v2 = sub_100012C90();

  return _swift_deallocObject(v2);
}

uint64_t sub_10003035C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v21[0] = a1;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v21 - v14;
  v16 = *(a4 - 8);
  __chkstk_darwin(v13);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a2, v11);
  if (sub_100009F34(v15, 1, a4) == 1)
  {
    (*(v12 + 8))(v15, v11);
    a6[3] = a3;
    a6[4] = a5;
    v19 = sub_100017E64(a6);
    return (*(*(a3 - 8) + 16))(v19, v21[1], a3);
  }

  else
  {
    (*(v16 + 32))(v18, v15, a4);
    AsyncObjectGraphBuilder.satisfying<A>(_:with:)();
    return (*(v16 + 8))(v18, a4);
  }
}

id sub_100030580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithMemoryCapacity:a1 diskCapacity:a2 diskPath:v7];

  return v8;
}

uint64_t type metadata accessor for JSStackContext(uint64_t a1)
{
  result = qword_10026E148;
  if (!qword_10026E148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100030650(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  result = [objc_allocWithZone(JSVirtualMachine) init];
  if (result)
  {
    v8 = result;
    type metadata accessor for JSStackProvider();
    v9 = sub_100030C7C(a4, a1, v8);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100030730(uint64_t a1, void *a2)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_10007B9A4(&qword_10026E268, &qword_1001EDA10);
  __chkstk_darwin(v5);
  v7 = v32 - v6;
  v8 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v8 - 8);
  v10 = v32 - v9;
  v11 = type metadata accessor for URL();
  sub_100002CC4();
  v13 = v12;
  v15 = __chkstk_darwin(v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v32 - v18;
  sub_10001E78C(*(a1 + 1));
  URL.appendingPathComponent(_:)();
  v20 = *(v13 + 8);
  v20(v17, v11);
  if (*(a1 + 48) > 1u)
  {
    sub_1000FE50C(a1);
    v35[3] = type metadata accessor for SyncTaskScheduler();
    v35[4] = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v35);
    SyncTaskScheduler.init()();
    Promise.map<A>(on:_:)();

    sub_100002C00(v35);
  }

  else
  {
    v32[6] = v3;
    v33 = v10;
    v21 = sub_100031380();
    sub_10007B9A4(&qword_10026E270, &qword_1001EDA18);
    v22 = v33;
    sub_10000A7C0(v33, 1, 1, v11);
    v23 = *(v5 + 48);
    *v7 = v21 & 1;
    sub_10001EC00(v22, &v7[v23]);
    Promise.__allocating_init(value:)();
  }

  v24 = swift_allocObject();
  v25 = *(a1 + 16);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v25;
  v26 = *(a1 + 48);
  *(v24 + 48) = *(a1 + 32);
  *(v24 + 64) = v26;
  v27 = v34;
  *(v24 + 80) = v34;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10003164C;
  *(v28 + 24) = v24;
  v36[3] = type metadata accessor for SyncTaskScheduler();
  v36[4] = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v36);

  sub_10000F4A4(a1, v35);
  v29 = v27;
  SyncTaskScheduler.init()();
  type metadata accessor for JSStackContext(0);
  v30 = Promise.map<A>(on:_:)();

  v20(v19, v11);
  sub_100002C00(v36);
  return v30;
}

uint64_t sub_100030C30()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100030C7C(char *a1, uint64_t a2, void *a3)
{
  v7 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 16];
  v21[0] = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config];
  v21[1] = v7;
  v8 = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48];
  v21[2] = *&a1[OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 32];
  v21[3] = v8;
  sub_100030730(v21, a3);
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = a1;
  v9[4] = a2;
  v10 = type metadata accessor for SyncTaskScheduler();
  v19 = v10;
  v20 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v18);
  v11 = a1;

  SyncTaskScheduler.init()();
  sub_10007B9A4(&qword_10026E288, &unk_1001EDA28);
  sub_100031B04();
  Promise.flatMap<A>(on:_:)();

  sub_100002C00(v18);
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = v11;
  v12[4] = a3;
  v12[5] = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000383F0;
  *(v13 + 24) = v12;
  v19 = v10;
  v20 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v18);
  v14 = v11;

  v15 = a3;
  SyncTaskScheduler.init()();
  type metadata accessor for JSStack();
  v16 = Promise.map<A>(on:_:)();

  sub_100002C00(v18);
  return v16;
}

uint64_t sub_100030E80()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100030EC0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100030F08()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100030F40(char a1)
{
  v2 = type metadata accessor for URL();
  sub_100002CC4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = v7 - v6;
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100007B80();
  switch(a1)
  {
    case 1:
      sub_100006854();
      break;
    case 2:
      sub_1000058B4();
      break;
    case 3:
      sub_1000084E4();
      break;
    default:
      break;
  }

  URL.appendingPathComponent(_:)();

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1000310D0(char a1, char a2)
{
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for URL();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000056E8();
  v13 = v11 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v23 - v16;
  __chkstk_darwin(v15);
  v19 = &v23 - v18;
  if (a2)
  {
    sub_10001E78C(a1);
    URL.appendingPathComponent(_:)();
    return (*(v9 + 8))(v13, v7);
  }

  else
  {
    sub_10001E8B8();
    sub_10000330C(v6);
    if (v21)
    {
      sub_10001DCD4();
      sub_10000330C(v6);
      if (!v21)
      {
        sub_10000A064(v6, &unk_10026FEE0, &unk_1001E67C0);
      }
    }

    else
    {
      (*(v9 + 32))(v17, v6, v7);
    }

    sub_100007B80();
    switch(a1)
    {
      case 1:
        sub_100006854();
        break;
      case 2:
        sub_1000058B4();
        break;
      case 3:
        sub_100007638();
        sub_1000084E4();
        break;
      default:
        break;
    }

    URL.appendingPathComponent(_:isDirectory:)();

    v22 = *(v9 + 8);
    v22(v17, v7);
    URL.appendingPathComponent(_:isDirectory:)();
    return (v22)(v19, v7);
  }
}

uint64_t sub_100031380()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL();
  sub_100002CC4();
  __chkstk_darwin(v7);
  strcpy(v18, "metadata.plist");
  HIBYTE(v18[1]) = -18;
  (*(v3 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_10001ECE0();
  URL.appending<A>(path:directoryHint:)();
  (*(v3 + 8))(v6, v1);
  v8 = Data.init(contentsOf:options:)();
  if (v0)
  {
    v10 = sub_10000B9E0();
    return v11(v10);
  }

  else
  {
    v13 = v8;
    v14 = v9;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100033630();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v15 = sub_10000B9E0();
    v16(v15);

    sub_1000253FC(v13, v14);
    if (v18[0] == 1)
    {
      return 0;
    }

    else if (v18[0] == 2)
    {
      return 1;
    }

    else
    {
      sub_10013C144();
      swift_allocError();
      *v17 = 2;
      return swift_willThrow();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for JetpackMetadata.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1000316F8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}