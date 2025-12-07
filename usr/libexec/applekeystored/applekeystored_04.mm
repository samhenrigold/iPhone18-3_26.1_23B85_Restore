void *sub_10005D3A4()
{
  v1 = v0;
  sub_10000A0C8(&qword_1000A46F8, &qword_100078768);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

Swift::Int sub_10005D4E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000A0C8(&qword_1000A46F8, &qword_100078768);
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_10005D7E8()
{
  v0 = 0;
  v5 = &_swiftEmptySetSingleton;
  do
  {
    v1 = *(&off_100095C00 + v0++ + 32);
    v4 = 0;
    String.utf8CString.getter();

    v2 = os_parse_boot_arg_int();

    if ((v2 & 1) != 0 && v4)
    {
      sub_10005CAF0(&v4, v1);
    }
  }

  while (v0 != 7);
  return v5;
}

void *sub_10005D9AC@<X0>(void *a1@<X8>)
{
  v2 = objc_autoreleasePoolPush();
  sub_10005C6E0(v17);
  objc_autoreleasePoolPop(v2);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      v3 = v15;
      v4 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10005DBE8(v17);
  }

  v3 = 0;
  v4 = 0xE000000000000000;
LABEL_6:
  v5 = objc_autoreleasePoolPush();
  sub_10005C6E0(v17);
  objc_autoreleasePoolPop(v5);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      v6 = v15;
      v7 = v16;
      goto LABEL_11;
    }
  }

  else
  {
    sub_10005DBE8(v17);
  }

  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_11:
  v8 = objc_autoreleasePoolPush();
  sub_10005C6E0(v17);
  objc_autoreleasePoolPop(v8);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      v9 = v15;
      v10 = v16;
      goto LABEL_16;
    }
  }

  else
  {
    sub_10005DBE8(v17);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
LABEL_16:
  v11 = objc_autoreleasePoolPush();
  sub_10005C6E0(v17);
  objc_autoreleasePoolPop(v11);
  if (!v18)
  {
    sub_10005DBE8(v17);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v12 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_21;
  }

  v12 = v15;
  v13 = v16;
LABEL_21:
  result = sub_10005D7E8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v13;
  a1[8] = result;
  return result;
}

uint64_t sub_10005DBE8(uint64_t a1)
{
  v2 = sub_10000A0C8(&qword_1000A46F0, &qword_100078760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10005DC50(uint64_t a1, uint64_t a2)
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

uint64_t sub_10005DC74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005DCBC(uint64_t result, int a2, int a3)
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

unint64_t sub_10005DD30()
{
  result = qword_1000A4700;
  if (!qword_1000A4700)
  {
    sub_10000A738(&qword_1000A4708, qword_1000787E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4700);
  }

  return result;
}

unint64_t sub_10005DD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4710;
  if (!qword_1000A4710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4710);
  }

  return result;
}

unint64_t sub_10005DDEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100096010, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005DE38@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = sub_10000A0C8(&qword_1000A4728, &unk_1000788D0);
  __chkstk_darwin(v1 - 8);
  v60 = &v55 - v2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for URL();
  v68 = v10;
  v72 = *(v10 - 8);
  v11 = v72;
  v12 = __chkstk_darwin(v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v55 - v16;
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  URL.standardized.getter();
  v20 = *(v11 + 56);
  v70 = v11 + 56;
  v63 = v20;
  v20(v9, 1, 1, v10);
  v21 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v23 = v4 + 104;
  v22 = *(v4 + 104);
  v22(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  v71 = v9;
  v24 = v6;
  URL.init(filePath:directoryHint:relativeTo:)();
  strcpy(v74, "PersonaVolumes");
  HIBYTE(v74[1]) = -18;
  v64 = v21;
  v65 = v22;
  v25 = (v22)(v6, v21, v3);
  v28 = sub_10005E554(v25, v26, v27);
  URL.appending<A>(component:directoryHint:)();
  v29 = *(v4 + 8);
  v66 = v4 + 8;
  v67 = v3;
  v30 = v3;
  v31 = v29;
  v29(v6, v30);
  v32 = (v72 + 8);
  v33 = *(v72 + 8);
  v34 = v68;
  v33(v14, v68);
  v73 = v19;
  v35 = v34;
  LOBYTE(v34) = sub_10005E82C();
  v33(v17, v35);
  v62 = v31;
  if ((v34 & 1) == 0)
  {
    v63(v71, 1, 1, v35);
    v59 = v32;
    v36 = v64;
    v37 = v67;
    v61 = v28;
    v38 = v65;
    v65(v24, v64, v67);
    URL.init(filePath:directoryHint:relativeTo:)();
    v74[0] = 0x7372657355;
    v74[1] = 0xE500000000000000;
    v38(v24, v36, v37);
    v28 = v61;
    URL.appending<A>(component:directoryHint:)();
    v62(v24, v37);
    v33(v14, v35);
    v39 = sub_10005E82C();
    v33(v17, v35);
    if ((v39 & 1) == 0)
    {
      return (*(v72 + 32))(v69, v73, v35);
    }
  }

  v57 = v23;
  v58 = v33;
  v59 = v14;
  v56 = v17;
  v40 = v71;
  v41 = v73;
  v42 = URL.pathComponents.getter();
  if (*(v42 + 16) < 5uLL)
  {
    (*(v72 + 32))(v69, v41, v35);
  }

  else
  {
    v61 = v28;

    v43 = v60;
    UUID.init(uuidString:)();

    v44 = type metadata accessor for UUID();
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {

      sub_10005E9B8(v43);
      return (*(v72 + 32))(v69, v73, v35);
    }

    sub_10005E9B8(v43);
    v46 = v35;
    v63(v40, 1, 1, v35);
    v47 = v64;
    v48 = v67;
    v49 = v65;
    v65(v24, v64, v67);
    v50 = v59;
    URL.init(filePath:directoryHint:relativeTo:)();
    v74[0] = 0x656C69626F6DLL;
    v74[1] = 0xE600000000000000;
    v49(v24, v47, v48);
    v51 = v46;
    v52 = v56;
    URL.appending<A>(component:directoryHint:)();
    v62(v24, v48);
    v53 = v58;
    result = (v58)(v50, v51);
    v54 = *(v42 + 16);
    if (v54 < 5)
    {
      __break(1u);
    }

    else
    {
      sub_10005E5A8(v42 + 32, 5, (2 * v54) | 1, v69);

      v53(v52, v51);
      return (v53)(v73, v51);
    }
  }

  return result;
}

unint64_t sub_10005E554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4730;
  if (!qword_1000A4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4730);
  }

  return result;
}

uint64_t sub_10005E5A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v36 = type metadata accessor for URL.DirectoryHint();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v34 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v16;
  result = (*(v14 + 16))(a4, v5);
  v18 = a3 >> 1;
  v19 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    v33 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v31 = (v10 + 8);
    v32 = (v10 + 104);
    v30 = (v14 + 8);
    if (a2 > v18)
    {
      v18 = a2;
    }

    v20 = v18 - a2;
    v21 = (a1 + 16 * a2 + 8);
    while (v20)
    {
      v22 = *v21;
      v37 = *(v21 - 1);
      v38 = v22;
      v23 = v36;
      v24 = (*v32)(v12, v33, v36);
      sub_10005E554(v24, v25, v26);

      v27 = v34;
      URL.appending<A>(component:directoryHint:)();
      (*v31)(v12, v23);

      v28 = v35;
      (*v30)(a4, v35);
      result = (*(v14 + 32))(a4, v27, v28);
      --v20;
      v21 += 2;
      if (!--v19)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10005E82C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.standardized.getter();
  v4 = URL.pathComponents.getter();
  v5 = *(v1 + 8);
  v5(v3, v0);
  URL.standardized.getter();
  v6 = URL.pathComponents.getter();
  v5(v3, v0);
  v7 = *(v4 + 16);
  if (v7 >= *(v6 + 16))
  {
    v10 = 0;
  }

  else if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(v4 + v8 + 32) == *(v6 + v8 + 32) && *(v4 + v8 + 40) == *(v6 + v8 + 40);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v8 += 16;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }

    v10 = 0;
  }

  else
  {
LABEL_12:
    v10 = 1;
  }

  return v10;
}

uint64_t sub_10005E9B8(uint64_t a1)
{
  v2 = sub_10000A0C8(&qword_1000A4728, &unk_1000788D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

ProtectionDomainManager::SplunkLoggerConfig __swiftcall SplunkLoggerConfig.init(productionServer:targetMessageSize:)(Swift::Bool productionServer, Swift::Int targetMessageSize)
{
  v2 = productionServer;
  result.targetMessageSize = targetMessageSize;
  result.productionServer = v2;
  return result;
}

uint64_t sub_10005EA34()
{
  v1[8] = v0;
  v2 = type metadata accessor for URL();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  if (qword_1000A2190 != -1)
  {
    swift_once();
  }

  v4 = qword_1000B1990;
  v1[15] = qword_1000B1990;

  return _swift_task_switch(sub_10005EB88, v4, 0);
}

uint64_t sub_10005EB88()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2 && *(v2 + 16) != *(v2 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v4)
  {
    if (v2 != v2 >> 32)
    {
      goto LABEL_7;
    }

LABEL_12:

    v7 = *(v0 + 8);

    return v7(1);
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v5 = *(*(v0 + 64) + 16);
  *(v0 + 160) = v5;
  if (v5 == 1)
  {
    if (qword_1000A21D0 != -1)
    {
      swift_once();
    }

    v6 = qword_1000A4738;
  }

  else
  {
    if (qword_1000A21D8 != -1)
    {
      swift_once();
    }

    v6 = qword_1000A4750;
  }

  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 72);
  v12 = sub_100002DB8(v11, v6);
  (*(v10 + 16))(v9, v12, v11);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  sub_100011FAC(*(v1 + 40), *(v1 + 48));
  URLRequest.httpBody.setter();
  if (v5)
  {
    if (qword_1000A21E0 != -1)
    {
      swift_once();
    }

    v13 = &qword_1000A4768;
  }

  else
  {
    if (qword_1000A21E8 != -1)
    {
      swift_once();
    }

    v13 = &qword_1000A4778;
  }

  v14 = *v13;
  v15 = v13[1];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  v17.value._countAndFlagsBits = 0x206B6E756C7053;
  v18._countAndFlagsBits = 0x7A69726F68747541;
  v18._object = 0xED00006E6F697461;
  v17.value._object = 0xE700000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(v17, v18);

  v19 = [objc_opt_self() ephemeralSessionConfiguration];
  *(v0 + 128) = [objc_opt_self() sessionWithConfiguration:v19];

  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *v20 = v0;
  v20[1] = sub_10005EF30;
  v21 = *(v0 + 112);

  return NSURLSession.data(for:delegate:)(v21, 0);
}

uint64_t sub_10005EF30(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;
  *(v8 + 144) = a3;
  *(v8 + 152) = v3;

  v9 = *(v7 + 120);
  if (v3)
  {
    v10 = sub_10005F428;
  }

  else
  {
    sub_10000B068(a1, a2);
    v10 = sub_10005F07C;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10005F07C()
{
  v35 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && (v2 = v1, [v1 statusCode] != 200))
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 144);
    v16 = type metadata accessor for Logger();
    sub_100002DB8(v16, qword_1000B1908);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 144);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = [v2 statusCode];

      _os_log_impl(&_mh_execute_header, v18, v19, "failed to post telemetry: %ld", v22, 0xCu);
    }

    else
    {
    }

    v14 = 0;
  }

  else
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002DB8(v3, qword_1000B1908);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 144);
    if (v6)
    {
      v8 = *(v0 + 160);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315138;
      if (v8)
      {
        v11 = 0x69746375646F7270;
      }

      else
      {
        v11 = 24945;
      }

      if (v8)
      {
        v12 = 0xEA00000000006E6FLL;
      }

      else
      {
        v12 = 0xE200000000000000;
      }

      v13 = sub_100005C68(v11, v12, &v34);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "successfully posted telemetry to %s server", v9, 0xCu);
      sub_100005E9C(v10);
    }

    v14 = 1;
  }

  v23 = *(v0 + 64);
  swift_beginAccess();
  v24 = *(v23 + 40);
  v25 = *(v23 + 48) >> 62;
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_28;
    }

    v26 = *(v24 + 16);
    v27 = *(v24 + 24);
  }

  else
  {
    if (!v25)
    {
      goto LABEL_28;
    }

    v26 = v24;
    v27 = v24 >> 32;
  }

  if (v27 < v26)
  {
    __break(1u);
  }

LABEL_28:
  v28 = *(v0 + 128);
  v30 = *(v0 + 104);
  v29 = *(v0 + 112);
  v31 = *(v0 + 96);
  Data._Representation.replaceSubrange(_:with:count:)();
  swift_endAccess();

  (*(v30 + 8))(v29, v31);

  v32 = *(v0 + 8);

  return v32(v14);
}

uint64_t sub_10005F428()
{
  if (qword_1000A2178 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002DB8(v1, qword_1000B1908);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to post telemetry: %@", v4, 0xCu);
    sub_10000A50C(v5);
  }

  else
  {
  }

  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48) >> 62;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    v10 = *(v8 + 16);
    v11 = *(v8 + 24);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = v8;
    v11 = v8 >> 32;
  }

  if (v11 < v10)
  {
    __break(1u);
  }

LABEL_14:
  v12 = v0[16];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];
  Data._Representation.replaceSubrange(_:with:count:)();
  swift_endAccess();

  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16(0);
}

unint64_t sub_10005F688()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10005F6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000100083D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100083DA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10005F7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10005F9A4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10005F7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10005F9A4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t SplunkLoggerConfig.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000A0C8(&qword_1000A4788, &qword_1000788F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  v9 = sub_100006978(a1, a1[3]);
  sub_10005F9A4(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10005F9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4790;
  if (!qword_1000A4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4790);
  }

  return result;
}

uint64_t sub_10005FA14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974656372756F73 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10005FB78(unsigned __int8 a1)
{
  v1 = 1701669236;
  v2 = 0x7865646E69;
  if (a1 != 2)
  {
    v2 = 0x746E657665;
  }

  if (a1)
  {
    v1 = 0x7974656372756F73;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10005FBE8(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v12[0] = a2[4];
  v12[1] = v4;
  type metadata accessor for SplunkMessage.CodingKeys(255, v4, v5, v12[0]);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  sub_100006978(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v10 = v12[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v10)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10005FDCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v28 = *(a2 - 8);
  __chkstk_darwin(a1);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SplunkMessage.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v35 = type metadata accessor for KeyedDecodingContainer();
  v30 = *(v35 - 8);
  __chkstk_darwin(v35);
  v14 = &v27 - v13;
  v32 = a2;
  v33 = a3;
  v15 = type metadata accessor for SplunkMessage(0, a2, a3, a4);
  v27 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = (&v27 - v16);
  sub_100006978(a1, a1[3]);
  v34 = v14;
  v18 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100005E9C(a1);
  }

  v36 = v15;
  v19 = v30;
  v20 = v31;
  v21 = v32;
  v40 = 0;
  *v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = 1;
  v17[1] = KeyedDecodingContainer.decode(_:forKey:)();
  v17[2] = v22;
  v38 = 2;
  v17[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v17[4] = v23;
  v37 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 8))(v34, v35);
  v24 = v36;
  (*(v28 + 32))(v17 + *(v36 + 52), v20, v21);
  v25 = v27;
  (*(v27 + 16))(v29, v17, v24);
  sub_100005E9C(a1);
  return (*(v25 + 8))(v17, v24);
}

uint64_t sub_1000601A4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100060840(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
  }

  return result;
}

Swift::Int sub_100060230(uint64_t a1)
{
  Hasher.init(_seed:)();
  ProtectionClassJanitor.Client.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_10006028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005FA14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000602C0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1000610D8();
  *a2 = result;
  return result;
}

uint64_t sub_1000602F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100060348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1000603D8()
{
  v0 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_10000A574(v3, qword_1000A4738);
  v4 = sub_100002DB8(v3, qword_1000A4738);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100060508()
{
  v0 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_10000A574(v3, qword_1000A4750);
  v4 = sub_100002DB8(v3, qword_1000A4750);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100060638()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  result = Data.init(base64Encoded:options:)();
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = v2;
    static String.Encoding.utf8.getter();
    v5 = String.init(data:encoding:)();
    v7 = v6;
    result = sub_10003FDF8(v3, v4);
    if (v7)
    {
      qword_1000A4768 = v5;
      unk_1000A4770 = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006071C()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  result = Data.init(base64Encoded:options:)();
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = v2;
    static String.Encoding.utf8.getter();
    v5 = String.init(data:encoding:)();
    v7 = v6;
    result = sub_10003FDF8(v3, v4);
    if (v7)
    {
      qword_1000A4778 = v5;
      unk_1000A4780 = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100060800()
{

  sub_10000B068(*(v0 + 40), *(v0 + 48));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100060840(void *a1)
{
  v2 = sub_10000A0C8(qword_1000A4860, &qword_100078AE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = sub_100006978(a1, a1[3]);
  sub_10005F9A4(v6, v7, v8);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11[15] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005E9C(a1);
  return v9 & 1;
}

uint64_t getEnumTagSinglePayload for SplunkLoggerConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SplunkLoggerConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100060AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4848;
  if (!qword_1000A4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4848);
  }

  return result;
}

unint64_t sub_100060B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4850;
  if (!qword_1000A4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4850);
  }

  return result;
}

unint64_t sub_100060B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4858;
  if (!qword_1000A4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4858);
  }

  return result;
}

uint64_t sub_100060BD0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100060C60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100060DF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v19 = a2 & 0x7FFFFFFF;
    v19[1] = 0;
  }

  else
  {
    v19[1] = a2 - 1;
  }
}

uint64_t sub_1000610E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *path)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *name = a1;
      v13 = a2 & 0xFFFFFFFFFFFFFFLL;
      sub_10001147C(name, path, a5, a6, v14);
      if (!v7)
      {
        v8 = v14[0];
        goto LABEL_10;
      }

LABEL_7:

      sub_10000B068(a5, a6);
      return v8;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      sub_10001147C(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), path, a5, a6, name);
      if (!v7)
      {
        v8 = *name;
LABEL_10:

        sub_10000B068(a5, a6);
        return v8;
      }

      goto LABEL_7;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();

  sub_10000B068(a5, a6);
  if (!v7)
  {
    return v14[1];
  }

  return v8;
}

uint64_t sub_100061228(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x6946657461657263;
  v4 = a1;
  v5 = 0x656C694665766F6DLL;
  v6 = 0x6C6946656E6F6C63;
  v7 = 0xE900000000000065;
  if (a1 != 4)
  {
    v6 = 0x656C694670617773;
    v7 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v5 = v6;
    v8 = v7;
  }

  v9 = 0xD000000000000012;
  v10 = 0x8000000100082AF0;
  if (a1 != 1)
  {
    v9 = 0x656C69466B6E696CLL;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x6946657461657263;
    v10 = 0xEA0000000000656CLL;
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
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x8000000100082AF0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      v2 = 0xE800000000000000;
      v3 = 0x656C69466B6E696CLL;
    }

    if (v11 != v3)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2 == 3)
  {
    v2 = 0xE800000000000000;
    v13 = 1702260589;
  }

  else
  {
    if (a2 == 4)
    {
      v2 = 0xE900000000000065;
      if (v11 != 0x6C6946656E6F6C63)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v2 = 0xE800000000000000;
    v13 = 1885435763;
  }

  if (v11 != (v13 | 0x656C694600000000))
  {
LABEL_33:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

LABEL_31:
  if (v12 != v2)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_1000613F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000656E6F4ELL;
  v3 = 0x7269447373616C63;
  if (a1 <= 3u)
  {
    v4 = 0xE600000000000000;
    v5 = 0x427373616C63;
    v8 = 0xE600000000000000;
    if (a1 != 2)
    {
      v5 = 0x437373616C63;
      v4 = 0xE600000000000000;
    }

    v9 = 0x417373616C63;
    if (!a1)
    {
      v9 = 0x7269447373616C63;
      v8 = 0xEC000000656E6F4ELL;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x467373616C63;
    v6 = 0xE700000000000000;
    v7 = 0x58437373616C63;
    if (a1 != 7)
    {
      v7 = 0x6365746F72506F6ELL;
      v6 = 0xEC0000006E6F6974;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE600000000000000;
    v9 = 0x447373616C63;
    if (a1 != 4)
    {
      v9 = 0x457373616C63;
      v8 = 0xE600000000000000;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v2 = 0xE600000000000000;
      if (a2 == 2)
      {
        if (v11 != 0x427373616C63)
        {
          goto LABEL_45;
        }
      }

      else if (v11 != 0x437373616C63)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (a2)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x417373616C63)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      v2 = 0xE600000000000000;
      if (a2 == 4)
      {
        if (v11 != 0x447373616C63)
        {
          goto LABEL_45;
        }
      }

      else if (v11 != 0x457373616C63)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (a2 == 6)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x467373616C63)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (a2 == 7)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x58437373616C63)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v3 = 0x6365746F72506F6ELL;
    v2 = 0xEC0000006E6F6974;
  }

  if (v11 != v3)
  {
LABEL_45:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_46;
  }

LABEL_42:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_100061678(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x74616964656D6D69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F6974617267696DLL;
    }

    else
    {
      v5 = 0x726F74696E616ALL;
    }

    if (v4 == 2)
    {
      v6 = 0xE90000000000006ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465727265666564;
    }

    else
    {
      v5 = 0x74616964656D6D69;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  v7 = 0x6F6974617267696DLL;
  v8 = 0xE90000000000006ELL;
  if (a2 != 2)
  {
    v7 = 0x726F74696E616ALL;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6465727265666564;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1000617BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x8000000100082AF0;
  v6 = 0xE400000000000000;
  v7 = 1802398060;
  if (a1 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6574697277;
  if (a1 != 1)
  {
    v9 = 0x657461657263;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1684104562;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x8000000100082AF0;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1802398060)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6574697277)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x657461657263)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1684104562)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100061978(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6465776F6C6C61;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x50676E697373696DLL;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000100082BF0;
    }

    else
    {
      v5 = 0xED00007963696C6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6465696E6564;
    }

    else
    {
      v4 = 0x6465776F6C6C61;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000010;
  v8 = 0x8000000100082BF0;
  if (a2 != 2)
  {
    v7 = 0x50676E697373696DLL;
    v8 = 0xED00007963696C6FLL;
  }

  if (a2)
  {
    v2 = 0x6465696E6564;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100061ACC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = "untDirectory";
  if (a1 == 5)
  {
    v4 = 0xD000000000000025;
  }

  else
  {
    v4 = 0xD00000000000001ELL;
  }

  if (a1 == 5)
  {
    v5 = "ritance_enforcement";
  }

  else
  {
    v5 = "rce_disabled_policies";
  }

  v6 = 0xD000000000000023;
  if (a1 == 3)
  {
    v6 = 0xD00000000000001CLL;
    v7 = "dataprotect_policy_logging";
  }

  else
  {
    v7 = "dataprotect_policy_analytics";
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  if (a1 == 1)
  {
    v9 = 0xD00000000000001ELL;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a1 == 1)
  {
    v10 = "dataprotect_policy_enable";
  }

  else
  {
    v10 = "dataprotect_policy_enforcement";
  }

  if (!a1)
  {
    v9 = 0xD000000000000019;
    v10 = "untDirectory";
  }

  v11 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    v7 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "dataprotect_policy_enable";
      }

      else
      {
        v2 = 0xD00000000000001ALL;
        v3 = "dataprotect_policy_enforcement";
      }
    }

    else
    {
      v2 = 0xD000000000000019;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000025;
      v3 = "ritance_enforcement";
    }

    else
    {
      v3 = "rce_disabled_policies";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD00000000000001CLL;
    v3 = "dataprotect_policy_logging";
  }

  else
  {
    v2 = 0xD000000000000023;
    v3 = "dataprotect_policy_analytics";
  }

  if (v12 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

Swift::Int sub_100061C68(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100061D70(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100061E60(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t *RapidRepair.shared.unsafeMutableAddressor()
{
  if (qword_1000A21F8 != -1)
  {
    swift_once();
  }

  return &static RapidRepair.shared;
}

uint64_t RapidRepair.run()()
{
  v1[9] = v0;
  v2 = type metadata accessor for String.Encoding();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = type metadata accessor for SHA384Digest();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100062140, 0, 0);
}

uint64_t sub_100062140(uint64_t a1)
{
  v59 = v1;
  v2 = sub_10006DCE4(v1 + 16);
  if ((*(v1 + 16) & 1) == 0)
  {
    sub_10006AEE0(v2, v3, v4);
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    v20 = *(v1 + 8);
LABEL_9:

    return v20();
  }

  v5 = 0;
  atomic_compare_exchange_strong((*(v1 + 72) + 16), &v5, 1u);
  if (v5)
  {
LABEL_35:

    v20 = *(v1 + 8);
    goto LABEL_9;
  }

  v7 = *(v1 + 144);
  v6 = *(v1 + 152);
  v8 = *(v1 + 136);
  v9 = *(*(v1 + 72) + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_rules);
  v58[0] = 3813750;
  v58[1] = 0xE300000000000000;
  sub_1000664F0(v9);
  v10 = sub_1000666D8();
  v12 = v11;
  (*(v7 + 8))(v6, v8);
  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  *(v1 + 160) = 3813750;
  *(v1 + 168) = 0xE300000000000000;
  if (qword_1000A21F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002DB8(v14, qword_1000B1A60);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v58[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_100005C68(3813750, 0xE300000000000000, v58);
    _os_log_impl(&_mh_execute_header, v15, v16, "Current rules fingerprint: %{public}s", v17, 0xCu);
    sub_100005E9C(v18);
  }

  sub_10006303C(*(v1 + 128));
  if (qword_1000A21C8 != -1)
  {
    swift_once();
  }

  v57 = v9;
  v22 = qword_1000B1A58;
  if (!*(qword_1000B1A58 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v23 = Hasher._finalize()(), v24 = -1 << *(v22 + 32), v25 = v23 & ~v24, ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0))
  {
LABEL_26:
    static String.Encoding.utf8.getter();
    v30 = v57;
    v31 = String.init(contentsOf:encoding:)();
    v33 = v32;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_100005C68(v31, v33, v58);
      _os_log_impl(&_mh_execute_header, v34, v35, "Found previously applied rules fingerprint: %{public}s", v36, 0xCu);
      sub_100005E9C(v37);

      v30 = v57;
    }

    if (v31 == 3813750 && v33 == 0xE300000000000000)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Repair rules have changed since last run", v47, 2u);
        }

        goto LABEL_43;
      }
    }

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "No repairs needed", v41, 2u);
    }

    v43 = *(v1 + 120);
    v42 = *(v1 + 128);
    v44 = *(v1 + 112);

    (*(v43 + 8))(v42, v44);
    atomic_store(0, (*(v1 + 72) + 16));
    goto LABEL_35;
  }

  v26 = ~v24;
  while (1)
  {
    v27 = *(*(v22 + 48) + v25);
    if (v27 <= 2)
    {
      break;
    }

    if (*(*(v22 + 48) + v25) > 4u)
    {
      v28 = 0x8000000100082D30;
      if (v27 != 5)
      {
        goto LABEL_23;
      }
    }

LABEL_24:
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_40;
    }

    v25 = (v25 + 1) & v26;
    if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v27 != 1)
  {
    goto LABEL_24;
  }

  v28 = 0x8000000100082C70;
LABEL_23:
  if (0x8000000100082D30 != v28)
  {
    goto LABEL_24;
  }

LABEL_40:
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v58[0] = v51;
    *v50 = 136446210;
    *(v50 + 4) = sub_100005C68(0xD00000000000001ELL, 0x8000000100082D30, v58);
    _os_log_impl(&_mh_execute_header, v48, v49, "BootArg '%{public}s' is set, forcing repairs", v50, 0xCu);
    sub_100005E9C(v51);
  }

  v30 = v57;
LABEL_43:
  *(v1 + 176) = 0;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58[0] = v55;
    *v54 = 136446210;
    *(v54 + 4) = sub_100005C68(3813750, 0xE300000000000000, v58);
    _os_log_impl(&_mh_execute_header, v52, v53, "Applying repairs: %{public}s", v54, 0xCu);
    sub_100005E9C(v55);
  }

  v56 = swift_task_alloc();
  *(v1 + 184) = v56;
  *v56 = v1;
  v56[1] = sub_100062B18;

  return sub_1000636F4(v30);
}

uint64_t sub_100062B18(char a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100062C18, 0, 0);
}

uint64_t sub_100062C18(uint64_t a1)
{
  if (*(v1 + 192) != 1)
  {
    v16 = *(v1 + 120);
    v15 = *(v1 + 128);
    v17 = *(v1 + 112);
    v14 = *(v1 + 72);

    sub_10006AEE0(v18, v19, v20);
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
    goto LABEL_5;
  }

  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  *(v1 + 56) = *(v1 + 160);
  *(v1 + 64) = v2;
  v4 = static String.Encoding.utf8.getter();
  sub_10005E554(v4, v5, v6);
  StringProtocol.write(to:atomically:encoding:)();
  v7 = v3;
  v9 = *(v1 + 120);
  v8 = *(v1 + 128);
  v10 = *(v1 + 112);
  v12 = *(v1 + 88);
  v11 = *(v1 + 96);
  v13 = *(v1 + 80);
  if (v7)
  {
    v14 = *(v1 + 72);
    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);

LABEL_5:
    atomic_store(0, (v14 + 16));

    v22 = *(v1 + 8);
    goto LABEL_6;
  }

  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);

  atomic_store(0, (*(v1 + 72) + 16));

  v22 = *(v1 + 8);
LABEL_6:

  return v22();
}

uint64_t sub_100062E28()
{
  v0 = type metadata accessor for Logger();
  sub_10000A574(v0, qword_1000B1A60);
  sub_100002DB8(v0, qword_1000B1A60);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100062EA8()
{
  v0 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  if (qword_1000A2200 != -1)
  {
    swift_once();
  }

  v4 = qword_1000B1A80;
  type metadata accessor for RapidRepair(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_baseURL;

  result = sub_10006C1DC(v2, v5 + v6);
  *(v5 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_rules) = v4;
  static RapidRepair.shared = v5;
  return result;
}

uint64_t static RapidRepair.shared.getter()
{
  if (qword_1000A21F8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006303C@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for URLResourceValues();
  v55 = *(v2 - 8);
  v56 = v2;
  __chkstk_darwin(v2);
  v54 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL.DirectoryHint();
  v66 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v54 - v14;
  v16 = v1 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_baseURL;
  v18 = v17;
  sub_10006C0D0(v16, v9);
  v19 = *(v11 + 48);
  v20 = v19(v9, 1, v18);
  v63 = v4;
  v65 = v18;
  if (v20 == 1)
  {
    v21 = [objc_opt_self() defaultManager];
    v67[0] = 0;
    v22 = [v21 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v67];

    v23 = v67[0];
    if (!v22)
    {
      v53 = v67[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      result = v19(v9, 1, v65);
      if (result != 1)
      {
        return sub_100002CF0(v9, &qword_1000A2CD8, &qword_1000763D0);
      }

      return result;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = v19(v9, 1, v65);
    v4 = v63;
    v26 = v11;
    if (v25 != 1)
    {
      sub_100002CF0(v9, &qword_1000A2CD8, &qword_1000763D0);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v9, v18);
    v26 = v11;
  }

  strcpy(v67, "AKSAnalytics");
  BYTE5(v67[1]) = 0;
  HIWORD(v67[1]) = -5120;
  v27 = v66;
  v59 = *(v66 + 104);
  v28 = v59(v6, enum case for URL.DirectoryHint.isDirectory(_:), v4);
  v31 = sub_10005E554(v28, v29, v30);
  v32 = v64;
  v58 = v31;
  v61 = v15;
  URL.appending<A>(path:directoryHint:)();
  v33 = *(v27 + 8);
  v66 = v27 + 8;
  v57 = v33;
  v33(v6, v4);
  v34 = objc_opt_self();
  v35 = [v34 defaultManager];
  URL.path(percentEncoded:)(0);
  v36 = String._bridgeToObjectiveC()();

  v37 = [v35 fileExistsAtPath:v36];

  if (v37)
  {
LABEL_7:
    v67[0] = 0xD000000000000014;
    v67[1] = 0x8000000100083F10;
    v38 = v63;
    v59(v6, enum case for URL.DirectoryHint.notDirectory(_:), v63);
    URL.appending<A>(path:directoryHint:)();
    v57(v6, v38);
    v39 = *(v26 + 8);
    v40 = v65;
    v39(v32, v65);
    return (v39)(v61, v40);
  }

  v42 = [v34 defaultManager];
  URL._bridgeToObjectiveC()(v43);
  v45 = v44;
  v67[0] = 0;
  v46 = [v42 createDirectoryAtURL:v44 withIntermediateDirectories:1 attributes:0 error:v67];

  if (v46)
  {
    v47 = v67[0];
    v48 = v54;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    v49 = v62;
    URL.setResourceValues(_:)();
    if (!v49)
    {
      v62 = 0;
      (*(v55 + 8))(v48, v56);
      goto LABEL_7;
    }

    (*(v55 + 8))(v48, v56);
  }

  else
  {
    v50 = v67[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v51 = *(v26 + 8);
  v52 = v65;
  v51(v32, v65);
  return (v51)(v61, v52);
}

uint64_t sub_100063714()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    *(v0 + 89) = 1;
    *(v0 + 16) = *(v1 + 32);
    v3 = *(v1 + 48);
    v4 = *(v1 + 64);
    v5 = *(v1 + 80);
    *(v0 + 73) = *(v1 + 89);
    *(v0 + 48) = v4;
    *(v0 + 64) = v5;
    *(v0 + 32) = v3;
    *(v0 + 192) = 1;
    sub_10006B5BC(v0 + 16, v0 + 96);
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    v6[1] = sub_100063820;

    return sub_100063C44();
  }

  else
  {
    v8 = *(v0 + 8);

    return v8(1);
  }
}

uint64_t sub_100063820(char a1)
{
  v2 = *v1;
  *(v2 + 90) = a1;

  sub_10006B5F4(v2 + 16);

  return _swift_task_switch(sub_100063928, 0, 0);
}

void sub_100063928()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  if (*(v0 + 90))
  {
    if (v1 == v2)
    {
      v3 = *(v0 + 89);
LABEL_7:
      v4 = *(v0 + 8);

      v4(v3);
      return;
    }
  }

  else
  {
    if (v1 == v2)
    {
      v3 = 0;
      goto LABEL_7;
    }

    *(v0 + 89) = 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = (*(v0 + 176) + 80 * v1);
  *(v0 + 16) = v5[2];
  v6 = v5[3];
  v7 = v5[4];
  v8 = v5[5];
  *(v0 + 73) = *(v5 + 89);
  *(v0 + 48) = v7;
  *(v0 + 64) = v8;
  *(v0 + 32) = v6;
  *(v0 + 192) = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_16:
    __break(1u);
    return;
  }

  sub_10006B5BC(v0 + 16, v0 + 96);
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  *v9 = v0;
  v9[1] = sub_100063820;

  sub_100063C44();
}

uint64_t RapidRepair.fingerprint.getter()
{
  v1 = type metadata accessor for SHA384Digest();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_rules);
  v11[0] = 3813750;
  v11[1] = 0xE300000000000000;
  sub_1000664F0(v5);
  v6 = sub_1000666D8();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return v11[0];
}

uint64_t RapidRepair.deinit()
{
  sub_100002CF0(v0 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_baseURL, &qword_1000A2CD8, &qword_1000763D0);

  return v0;
}

uint64_t RapidRepair.__deallocating_deinit()
{
  sub_100002CF0(v0 + OBJC_IVAR____TtC23ProtectionDomainManager11RapidRepair_baseURL, &qword_1000A2CD8, &qword_1000763D0);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100063C64()
{
  v38 = v0;
  v1 = *(v0 + 464);
  if ((*v1 & 1) == 0)
  {
    if (qword_1000A21F0 != -1)
    {
      swift_once();
      v1 = *(v0 + 464);
    }

    v19 = type metadata accessor for Logger();
    sub_100002DB8(v19, qword_1000B1A60);
    sub_10006B5BC(v1, v0 + 16);
    v14 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    sub_10006B5F4(v1);
    if (!os_log_type_enabled(v14, v20))
    {
      goto LABEL_16;
    }

    v21 = *(v0 + 464);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37[0] = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_100005C68(*(v21 + 8), *(v21 + 16), v37);
    _os_log_impl(&_mh_execute_header, v14, v20, "Repair Rule '%{public}s' is disabled", v22, 0xCu);
    sub_100005E9C(v23);

    goto LABEL_15;
  }

  if (qword_1000A21F0 != -1)
  {
    swift_once();
    v1 = *(v0 + 464);
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 472) = sub_100002DB8(v2, qword_1000B1A60);
  sub_10006B5BC(v1, v0 + 96);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_10006B5F4(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 464);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100005C68(*(v5 + 8), *(v5 + 16), v37);
    _os_log_impl(&_mh_execute_header, v3, v4, "Applying repair rule: '%{public}s'", v6, 0xCu);
    sub_100005E9C(v7);
  }

  v8 = *(v0 + 464);
  v10 = *(v8 + 24);
  v9 = *(v8 + 32);
  v11 = *(v8 + 48);
  if (!(v11 >> 62))
  {
    if (sub_10006B728(*(v8 + 24), *(v8 + 32), *(v8 + 72)))
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v11 >> 62 == 1)
  {
    v12 = *(v8 + 72);
    LOBYTE(v37[0]) = 1;
    sub_10006B5BC(v8, v0 + 336);
    sub_10003187C(v10, v9, v12, v37);
    sub_10006B5F4(v8);
    if (v37[0])
    {
LABEL_9:
      v13 = *(v0 + 464);
      sub_10006B5BC(v13, v0 + 256);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      sub_10006B5F4(v13);
      if (!os_log_type_enabled(v14, v15))
      {
LABEL_16:

        v24 = 1;
LABEL_17:
        v25 = *(v0 + 8);

        return v25(v24);
      }

      v16 = *(v0 + 464);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100005C68(*(v16 + 8), *(v16 + 16), v37);
      _os_log_impl(&_mh_execute_header, v14, v15, "Application of repair rule '%s' succeeded", v17, 0xCu);
      sub_100005E9C(v18);

LABEL_15:

      goto LABEL_16;
    }

LABEL_21:
    v27 = *(v0 + 464);
    sub_10006B5BC(v27, v0 + 176);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    sub_10006B5F4(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 464);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100005C68(*(v30 + 8), *(v30 + 16), v37);
      _os_log_impl(&_mh_execute_header, v28, v29, "Application of repair rule '%s' failed", v31, 0xCu);
      sub_100005E9C(v32);
    }

    v24 = 0;
    goto LABEL_17;
  }

  v33 = *(v8 + 40);
  v34 = *(v8 + 56);
  *(v0 + 416) = v10;
  *(v0 + 424) = v9;
  *(v0 + 432) = v33;
  *(v0 + 440) = v11 & 0x3FFFFFFFFFFFFFFFLL;
  *(v0 + 448) = v34;
  v35 = *(v8 + 72);
  v36 = swift_task_alloc();
  *(v0 + 480) = v36;
  *v36 = v0;
  v36[1] = sub_100064198;

  return sub_10006446C(v0 + 416, v35);
}

uint64_t sub_100064198(char a1)
{
  *(*v1 + 89) = a1;

  return _swift_task_switch(sub_100064298, 0, 0);
}

uint64_t sub_100064298()
{
  v13 = v0;
  v1 = *(v0 + 89);
  v2 = *(v0 + 464);
  if (v1)
  {
    sub_10006B5BC(*(v0 + 464), v0 + 256);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    sub_10006B5F4(v2);
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = *(v0 + 464);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100005C68(*(v5 + 8), *(v5 + 16), &v12);
    v8 = "Application of repair rule '%s' succeeded";
  }

  else
  {
    sub_10006B5BC(*(v0 + 464), v0 + 176);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_10006B5F4(v2);
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v9 = *(v0 + 464);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100005C68(*(v9 + 8), *(v9 + 16), &v12);
    v8 = "Application of repair rule '%s' failed";
  }

  _os_log_impl(&_mh_execute_header, v3, v4, v8, v6, 0xCu);
  sub_100005E9C(v7);

LABEL_7:

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_10006446C(uint64_t a1, char a2)
{
  *(v3 + 153) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = type metadata accessor for URL.DirectoryHint();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  *(v3 + 88) = swift_task_alloc();
  v5 = type metadata accessor for URL();
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();
  sub_10000A0C8(&qword_1000A4AD0, &qword_100079100);
  *(v3 + 120) = swift_task_alloc();
  v6 = sub_10000A0C8(&qword_1000A4AD8, &qword_100079108);
  *(v3 + 128) = v6;
  *(v3 + 136) = *(v6 - 8);
  *(v3 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100064664, 0, 0);
}

uint64_t sub_100064664()
{
  *(v0 + 152) = 1;

  Regex<A>.init(_:)();
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v22 = *(v0 + 96);
  v13 = *(v0 + 88);
  v5 = *(v0 + 72);
  v16 = *(v0 + 80);
  v17 = *(v0 + 64);
  v18 = *(v0 + 112);
  v20 = *(v0 + 153);
  v6 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 136);
  (*(v21 + 56))(v2, 0, 1, v3);
  (*(v21 + 32))(v1, v2, v3);
  v15 = *(v6 + 16);
  v14 = *(v6 + 24);
  v8 = *v6;
  v7 = *(v6 + 8);
  (*(v4 + 56))(v13, 1, 1, v22);
  (*(v5 + 104))(v16, enum case for URL.DirectoryHint.inferFromPath(_:), v17);

  URL.init(filePath:directoryHint:relativeTo:)();
  v9 = swift_task_alloc();
  *(v9 + 16) = v15;
  *(v9 + 24) = v14;
  *(v9 + 32) = v18;
  *(v9 + 40) = v1;
  *(v9 + 48) = v19;
  *(v9 + 56) = v20;
  *(v9 + 64) = v0 + 152;
  sub_10002FE64(v8, v7, sub_10006C090);

  v10 = *(v0 + 152);
  (*(v4 + 8))(v18, v22);
  (*(v21 + 8))(v1, v3);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_100064A68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  v45 = a4;
  v46 = a7;
  v44 = a6;
  LODWORD(v50) = a5;
  v13 = sub_10000A0C8(&qword_1000A4AD8, &qword_100079108);
  v47 = *(v13 - 8);
  v48 = v13;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  v16 = sub_10000A0C8(&qword_1000A4AE0, &qword_100079110);
  __chkstk_darwin(v16 - 8);
  v49 = &v41 - v17;
  v18 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v41 - v19;
  v21 = type metadata accessor for URL.DirectoryHint();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for URL();
  result = __chkstk_darwin(v25);
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v30 = result;
    v31 = v21;
    v32 = v27;
    (*(v22 + 104))(v24, enum case for URL.DirectoryHint.notDirectory(_:), v31);
    v42 = v32;
    v43 = v30;
    (*(v32 + 56))(v20, 1, 1, v30);

    URL.init(filePath:directoryHint:relativeTo:)();
    URL.lastPathComponent.getter();
    if ((v50 & 1) == 0)
    {
      v33 = *(URL.pathComponents.getter() + 16);

      v34 = *(URL.pathComponents.getter() + 16);

      if (v33 - v34 > v45)
      {
        (*(v42 + 8))(v29, v43);
      }
    }

    v50 = a2;
    sub_100059EE0(&qword_1000A4AE8, &qword_1000A4AD8, &qword_100079108, &protocol conformance descriptor for Regex<A>);
    v35 = v48;
    dispatch thunk of RegexComponent.regex.getter();
    String.subscript.getter();

    v36 = v49;
    v37 = v51;
    Regex.wholeMatch(in:)();
    if (v37)
    {

      (*(v47 + 8))(v15, v35);
      v38 = sub_10000A0C8(&qword_1000A4AF0, &qword_100079118);
      (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
LABEL_8:
      (*(v42 + 8))(v29, v43);
      return sub_100002CF0(v36, &qword_1000A4AE0, &qword_100079110);
    }

    (*(v47 + 8))(v15, v35);

    v39 = sub_10000A0C8(&qword_1000A4AF0, &qword_100079118);
    if ((*(*(v39 - 8) + 48))(v36, 1, v39) == 1)
    {
      goto LABEL_8;
    }

    sub_100002CF0(v36, &qword_1000A4AE0, &qword_100079110);
    v40 = sub_10006B728(a1, v50, a9);
    result = (*(v42 + 8))(v29, v43);
    if ((v40 & 1) == 0)
    {
      *a10 = 0;
    }
  }

  return result;
}

uint64_t sub_10006500C(void *a1)
{
  v3 = v1;
  v5 = sub_10000A0C8(&qword_1000A4B48, &qword_100079590);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = sub_100006978(a1, a1[3]);
  sub_10006C624(v9, v10, v11);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v22) = 1;
    v13 = KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 40);
    v22 = *(v3 + 24);
    v23 = v14;
    v24 = *(v3 + 56);
    v21 = 2;
    sub_10006C678(v13, v15, v16);
    v17 = KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = *(v3 + 72);
    v21 = 3;
    sub_10002AC9C(v17, v18, v19);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100065238(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2 & 1);
  String.hash(into:)();
  v4 = *(v2 + 48);
  if (!(v4 >> 62))
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (v4 >> 62 == 1)
  {
    v5 = 1;
LABEL_5:
    Hasher._combine(_:)(v5);
    goto LABEL_9;
  }

  v6 = *(v2 + 40);
  Hasher._combine(_:)(2uLL);
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
  }

LABEL_9:
  String.hash(into:)();
  v7 = *(v2 + 72);

  return sub_10003173C(a1, v7);
}

uint64_t sub_10006532C()
{
  v1 = 0x64656C62616E65;
  v2 = 0x746567726174;
  if (*v0 != 2)
  {
    v2 = 0x69746365746F7270;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000653A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10006BA04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000653DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C624(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100065418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C624(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

Swift::Int sub_10006546C()
{
  Hasher.init(_seed:)();
  sub_100065238(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000654B0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100065238(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000654EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10006A6AC(v7, v9) & 1;
}

uint64_t sub_100065548(void *a1)
{
  v3 = sub_10000A0C8(&qword_1000A4BA8, &qword_1000795B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  v7 = sub_100006978(a1, a1[3]);
  sub_10006C870(v7, v8, v9);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000656EC()
{
  v1 = 0x687470654478616DLL;
  if (*v0 != 1)
  {
    v1 = 0x7865676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_10006573C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10006BB6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100065764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C870(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000657A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C870(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

Swift::Int sub_1000657F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000658A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  return String.hash(into:)();
}

Swift::Int sub_10006592C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000659D4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v6)
    {
      v11 = v7;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100065AB8(void *a1)
{
  v2 = v1;
  v4 = sub_10000A0C8(&qword_1000A4B60, &qword_100079598);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v36 - v5;
  v6 = sub_10000A0C8(&qword_1000A4B68, &qword_1000795A0);
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_10000A0C8(&qword_1000A4B70, &qword_1000795A8);
  v37 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v43 = sub_10000A0C8(&qword_1000A4B78, &qword_1000795B0);
  v12 = *(v43 - 8);
  __chkstk_darwin(v43);
  v14 = &v36 - v13;
  v15 = sub_100006978(a1, a1[3]);
  sub_10006C6CC(v15, v16, v17);
  v18 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *v2;
  v21 = v2[1];
  v23 = v2[3];
  if (v23 >> 62)
  {
    if (v23 >> 62 == 1)
    {
      LOBYTE(v44) = 1;
      sub_10006C7C8(v18, v19, v20);
      v24 = v43;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v39;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v38 + 8))(v8, v25);
    }

    else
    {
      v28 = v2[5];
      v38 = v2[4];
      v39 = v28;
      v29 = v2[2];
      v30 = v23 & 0x3FFFFFFFFFFFFFFFLL;
      LOBYTE(v44) = 2;
      sub_10006C720(v18, v19, v20);
      v31 = v40;
      v24 = v43;
      v32 = KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = v22;
      v45 = v21;
      v46 = v29;
      v47 = v30;
      v48 = v38;
      v49 = v39;
      sub_10006C774(v32, v33, v34);
      v35 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v41 + 8))(v31, v35);
    }

    return (*(v12 + 8))(v14, v24);
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_10006C81C(v18, v19, v20);
    v26 = v43;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v37 + 8))(v11, v9);
    return (*(v12 + 8))(v14, v26);
  }
}

Swift::Int sub_100065EFC()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 24);
  if (!(v1 >> 62))
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 >> 62 == 1)
  {
    v2 = 1;
LABEL_5:
    Hasher._combine(_:)(v2);
    goto LABEL_9;
  }

  v3 = *(v0 + 16);
  Hasher._combine(_:)(2uLL);
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
  }

LABEL_9:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100065FE8()
{
  v1 = 0x726F746365726964;
  if (*v0 != 1)
  {
    v1 = 0x6E726574746170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_100066040@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10006BC80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100066068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C6CC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000660A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C6CC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1000660EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C7C8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100066128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C7C8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100066164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C81C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000661A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C81C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1000661DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10006625C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C720(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100066298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006C720(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1000662F0(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!(v2 >> 62))
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (v2 >> 62 == 1)
  {
    v3 = 1;
LABEL_5:
    Hasher._combine(_:)(v3);
    goto LABEL_9;
  }

  v4 = *(v1 + 16);
  Hasher._combine(_:)(2uLL);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

LABEL_9:

  return String.hash(into:)();
}

Swift::Int sub_1000663CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  if (!(v3 >> 62))
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 >> 62 == 1)
  {
    v4 = 1;
LABEL_5:
    Hasher._combine(_:)(v4);
    goto LABEL_9;
  }

  Hasher._combine(_:)(2uLL);
  String.hash(into:)();
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

LABEL_9:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000664A8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_10006A890(v7, v8) & 1;
}

uint64_t sub_1000664F0(uint64_t a1)
{
  v2 = type metadata accessor for SHA384();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006C140(&qword_1000A4B18, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  dispatch thunk of HashFunction.init()();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v6 = dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v13[1] = a1;
  sub_10006C188(v6, v7, v8);
  v9 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v11 = v10;
  sub_100011FAC(v9, v10);
  sub_100068068(v9, v11, v5);
  sub_10000B068(v9, v11);
  sub_10000B068(v9, v11);
  dispatch thunk of HashFunction.finalize()();

  return (*(v3 + 8))(v5, v2);
}

char *sub_1000666D8()
{
  v1 = type metadata accessor for SHA384Digest();
  __chkstk_darwin(v1);
  (*(v3 + 16))(&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  sub_10006C140(&qword_1000A4AF8, &type metadata accessor for SHA384Digest, &protocol conformance descriptor for SHA384Digest);
  result = dispatch thunk of Sequence.makeIterator()();
  v5 = v20;
  v6 = v21;
  v7 = *(v20 + 2);
  v8 = _swiftEmptyArrayStorage;
  if (v21 == v7)
  {
LABEL_2:

    v20 = v8;
    sub_10000A0C8(&qword_1000A4B08, &qword_100079128);
    sub_100059EE0(&qword_1000A4B10, &qword_1000A4B08, &qword_100079128, &protocol conformance descriptor for [A]);
    v9 = BidirectionalCollection<>.joined(separator:)();

    return v9;
  }

  else
  {
    v19 = xmmword_100076380;
    v10 = v21;
    while ((v6 & 0x8000000000000000) == 0)
    {
      if (v10 >= *(v5 + 2))
      {
        goto LABEL_13;
      }

      v11 = v5[v10 + 32];
      sub_10000A0C8(&qword_1000A4B00, &qword_100079120);
      v12 = swift_allocObject();
      *(v12 + 16) = v19;
      *(v12 + 56) = &type metadata for UInt8;
      *(v12 + 64) = &protocol witness table for UInt8;
      *(v12 + 32) = v11;
      v13 = String.init(format:_:)();
      v15 = v14;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10002834C(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      if (v17 >= v16 >> 1)
      {
        result = sub_10002834C((v16 > 1), v17 + 1, 1, v8);
        v8 = result;
      }

      ++v10;
      *(v8 + 2) = v17 + 1;
      v18 = &v8[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      if (v7 == v10)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006699C(void *a1, uint64_t a2)
{
  v5 = sub_10000A0C8(&qword_1000A4A90, &qword_1000790D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  v9 = sub_100006978(a1, a1[3]);
  sub_10006B36C(v9, v10, v11);
  v12 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  sub_10006B3C0(v12, v13, v14);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = a2;
    v16[15] = 1;
    sub_10000A0C8(&qword_1000A4AA8, &qword_1000790D8);
    sub_10006B414();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100066B34()
{
  if (*v0)
  {
    return 0x73656C7572;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_100066B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100066C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006B36C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100066C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10006B36C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

Swift::Int sub_100066CD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);
  sub_10006A404(v3, v1);
  return Hasher._finalize()();
}

void sub_100066D2C(uint64_t a1)
{
  v3 = *v1;
  Hasher._combine(_:)(1uLL);

  sub_10006A404(a1, v3);
}

Swift::Int sub_100066D7C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(1uLL);
  sub_10006A404(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_100066DCC@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;

  sub_100068550(&v4);

  *a2 = v4;
  return result;
}

void *sub_100066E58()
{
  v1 = sub_10006BDA0(*v0);

  return v1;
}

Swift::Int sub_100066F40(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_100066FB8(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

Swift::Int RapidRepair.Error.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10006707C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  if (v6 >> 62)
  {
    if (v6 >> 62 != 1)
    {
      v13 = a2[2];
      v15 = a2[4];
      v14 = a2[5];
      v17 = a1[4];
      v16 = a1[5];
      v18 = a1[2];
      v20[0] = v4;
      v20[1] = v5;
      v20[2] = v18;
      v21 = v6 & 1;
      v22 = v17;
      v23 = v16;
      if (v9 >> 62 != 2)
      {
        v10 = 3;
        goto LABEL_18;
      }

      v24[0] = v7;
      v24[1] = v8;
      v24[2] = v13;
      v25 = v9 & 1;
      v26 = v15;
      v27 = v14;
      v19 = sub_10006A9D8(v20, v24);
      return v19 & 1;
    }

    if (v9 >> 62 != 1)
    {
      v10 = 2;
LABEL_18:
      v19 = v10 <= v9 >> 62;
      return v19 & 1;
    }
  }

  else if (v9 >> 62)
  {
    v10 = 1;
    goto LABEL_18;
  }

  if (v4 == v7 && v5 == v8)
  {
    v19 = 0;
    return v19 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL sub_100067180(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  if (!(v9 >> 62))
  {
    if (v6 >> 62)
    {
      v10 = 1;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (v9 >> 62 == 1)
  {
    if (v6 >> 62 != 1)
    {
      v10 = 2;
LABEL_16:
      v12 = v10 <= v6 >> 62;
      return (v12 & 1) == 0;
    }

LABEL_6:
    if (v7 == v4 && v8 == v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return (v12 & 1) == 0;
  }

  v13 = a1[2];
  v15 = a1[4];
  v14 = a1[5];
  v17 = a2[4];
  v16 = a2[5];
  v18 = a2[2];
  v20[0] = v7;
  v20[1] = v8;
  v20[2] = v18;
  v21 = v9 & 1;
  v22 = v17;
  v23 = v16;
  if (v6 >> 62 != 2)
  {
    v10 = 3;
    goto LABEL_16;
  }

  v24[0] = v4;
  v24[1] = v5;
  v24[2] = v13;
  v25 = v6 & 1;
  v26 = v15;
  v27 = v14;
  v12 = sub_10006A9D8(v20, v24);
  return (v12 & 1) == 0;
}

BOOL sub_100067270(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = a1[2];
  if (a2[3])
  {
    if ((a1[3] & 1) == 0)
    {
      v6 = 0x8000000000000000;
LABEL_16:
      v7 = v6 < v5;
      return (v7 & 1) == 0;
    }
  }

  else
  {
    v6 = a2[2];
    if (a1[3])
    {
      v5 = 0x8000000000000000;
      goto LABEL_16;
    }

    if (v6 != v5)
    {
      goto LABEL_16;
    }
  }

  if (a2[4] != a1[4] || a2[5] != a1[5])
  {
LABEL_17:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    return (v7 & 1) == 0;
  }

  v7 = 0;
  return (v7 & 1) == 0;
}

BOOL sub_100067358(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  if (!(v6 >> 62))
  {
    if (v9 >> 62)
    {
      v10 = 1;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (v6 >> 62 == 1)
  {
    if (v9 >> 62 != 1)
    {
      v10 = 2;
LABEL_16:
      v12 = v10 <= v9 >> 62;
      return (v12 & 1) == 0;
    }

LABEL_6:
    if (v4 == v7 && v5 == v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return (v12 & 1) == 0;
  }

  v13 = a2[2];
  v15 = a2[4];
  v14 = a2[5];
  v17 = a1[4];
  v16 = a1[5];
  v18 = a1[2];
  v20[0] = v4;
  v20[1] = v5;
  v20[2] = v18;
  v21 = v6 & 1;
  v22 = v17;
  v23 = v16;
  if (v9 >> 62 != 2)
  {
    v10 = 3;
    goto LABEL_16;
  }

  v24[0] = v7;
  v24[1] = v8;
  v24[2] = v13;
  v25 = v9 & 1;
  v26 = v15;
  v27 = v14;
  v12 = sub_10006A9D8(v20, v24);
  return (v12 & 1) == 0;
}

BOOL sub_10006744C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = a2[2];
  if (a1[3])
  {
    if ((a2[3] & 1) == 0)
    {
      v6 = 0x8000000000000000;
LABEL_16:
      v7 = v6 < v5;
      return (v7 & 1) == 0;
    }
  }

  else
  {
    v6 = a1[2];
    if (a2[3])
    {
      v5 = 0x8000000000000000;
      goto LABEL_16;
    }

    if (v6 != v5)
    {
      goto LABEL_16;
    }
  }

  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
LABEL_17:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    return (v7 & 1) == 0;
  }

  v7 = 0;
  return (v7 & 1) == 0;
}

uint64_t sub_100067534(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  if (v9 >> 62)
  {
    if (v9 >> 62 != 1)
    {
      v13 = a1[2];
      v15 = a1[4];
      v14 = a1[5];
      v17 = a2[4];
      v16 = a2[5];
      v18 = a2[2];
      v20[0] = v7;
      v20[1] = v8;
      v20[2] = v18;
      v21 = v9 & 1;
      v22 = v17;
      v23 = v16;
      if (v6 >> 62 != 2)
      {
        v10 = 3;
        goto LABEL_18;
      }

      v24[0] = v4;
      v24[1] = v5;
      v24[2] = v13;
      v25 = v6 & 1;
      v26 = v15;
      v27 = v14;
      v19 = sub_10006A9D8(v20, v24);
      return v19 & 1;
    }

    if (v6 >> 62 != 1)
    {
      v10 = 2;
LABEL_18:
      v19 = v10 <= v6 >> 62;
      return v19 & 1;
    }
  }

  else if (v6 >> 62)
  {
    v10 = 1;
    goto LABEL_18;
  }

  if (v7 == v4 && v8 == v5)
  {
    v19 = 0;
    return v19 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100067634(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2];
    if (a2[3])
    {
      if ((a1[3] & 1) == 0)
      {
        v6 = 0x8000000000000000;
        return v6 < v5;
      }
    }

    else
    {
      v6 = a2[2];
      if (a1[3])
      {
        v5 = 0x8000000000000000;
        return v6 < v5;
      }

      if (v6 != v5)
      {
        return v6 < v5;
      }
    }

    if (a2[4] == a1[4] && a2[5] == a1[5])
    {
      return 0;
    }
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100067730(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_10006A9D8(v7, v8) & 1;
}

BOOL sub_100067778(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_100067270(v7, v8);
}

BOOL sub_1000677C0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_10006744C(v7, v8);
}

uint64_t sub_100067808(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_100067634(v7, v8) & 1;
}

uint64_t sub_100067850(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10006AAD4(v7, v9) & 1;
}

BOOL sub_1000678AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v10[0] = v2;
  *(v10 + 9) = *(a1 + 57);
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v8[0] = v4;
  *(v8 + 9) = *(a2 + 57);
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return (sub_10006AAD4(v7, v9) & 1) == 0;
}

BOOL sub_10006790C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return (sub_10006AAD4(v7, v9) & 1) == 0;
}

uint64_t sub_10006796C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v10[0] = v2;
  *(v10 + 9) = *(a1 + 57);
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a2[3];
  v7[2] = a2[2];
  v8[0] = v4;
  *(v8 + 9) = *(a2 + 57);
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return sub_10006AAD4(v7, v9) & 1;
}

uint64_t sub_1000679C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v32 = *(a1 + 32);
    *v33 = v3;
    v4 = *(a1 + 80);
    *&v33[16] = *(a1 + 64);
    *v34 = v4;
    *&v34[9] = *(a1 + 89);
    v5 = *(a2 + 80);
    *&v36[16] = *(a2 + 64);
    *v37 = v5;
    *&v37[9] = *(a2 + 89);
    v6 = *(a2 + 48);
    v35 = *(a2 + 32);
    *v36 = v6;
    if (v32 != v35)
    {
      return 0;
    }

    v8 = (a2 + 112);
    v9 = (a1 + 112);
    while (1)
    {
      v10 = *(&v32 + 1) == *(&v35 + 1) && *v33 == *v36;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v11 = v34[0];
      v12 = v37[0];
      if (!(*v34 >> 62))
      {
        break;
      }

      if (*v34 >> 62 == 1)
      {
        if (*v37 >> 62 != 1)
        {
          return 0;
        }

        goto LABEL_17;
      }

      if (*v37 >> 62 != 2)
      {
        return 0;
      }

      v13 = *&v33[24];
      v14 = *&v34[8];
      v15 = *&v34[16];
      v16 = *&v36[24];
      v18 = *&v37[8];
      v17 = *&v37[16];
      if (*&v33[8] != *&v36[8])
      {
        v30 = *&v34[8];
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v14 = v30;
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      if (v11)
      {
        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v12 & 1) != 0 || v13 != v16)
      {
        return 0;
      }

      if (v14 != v18 || v15 != v17)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (v34[24] <= 3u)
      {
        if (v34[24] > 1u)
        {
          v20 = 0xE600000000000000;
          if (v34[24] == 2)
          {
            v21 = 0x427373616C63;
          }

          else
          {
            v21 = 0x437373616C63;
          }
        }

        else
        {
          v21 = 0x7269447373616C63;
          v20 = 0xEC000000656E6F4ELL;
          if (v34[24])
          {
            v20 = 0xE600000000000000;
            v21 = 0x417373616C63;
          }
        }
      }

      else if (v34[24] <= 5u)
      {
        v20 = 0xE600000000000000;
        if (v34[24] == 4)
        {
          v21 = 0x447373616C63;
        }

        else
        {
          v21 = 0x457373616C63;
        }
      }

      else if (v34[24] == 6)
      {
        v20 = 0xE600000000000000;
        v21 = 0x467373616C63;
      }

      else if (v34[24] == 7)
      {
        v20 = 0xE700000000000000;
        v21 = 0x58437373616C63;
      }

      else
      {
        v21 = 0x6365746F72506F6ELL;
        v20 = 0xEC0000006E6F6974;
      }

      if (v37[24] <= 3u)
      {
        if (v37[24] > 1u)
        {
          v22 = 0xE600000000000000;
          if (v37[24] == 2)
          {
            if (v21 != 0x427373616C63)
            {
              goto LABEL_71;
            }
          }

          else if (v21 != 0x437373616C63)
          {
            goto LABEL_71;
          }

          goto LABEL_68;
        }

        v23 = 0x7269447373616C63;
        v22 = 0xEC000000656E6F4ELL;
        if (v37[24])
        {
          v22 = 0xE600000000000000;
          if (v21 != 0x417373616C63)
          {
            goto LABEL_71;
          }

          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v37[24] > 5u)
      {
        if (v37[24] == 6)
        {
          v22 = 0xE600000000000000;
          if (v21 != 0x467373616C63)
          {
            goto LABEL_71;
          }

          goto LABEL_68;
        }

        if (v37[24] == 7)
        {
          v22 = 0xE700000000000000;
          if (v21 != 0x58437373616C63)
          {
            goto LABEL_71;
          }

          goto LABEL_68;
        }

        v23 = 0x6365746F72506F6ELL;
        v22 = 0xEC0000006E6F6974;
LABEL_67:
        if (v21 != v23)
        {
          goto LABEL_71;
        }

        goto LABEL_68;
      }

      v22 = 0xE600000000000000;
      if (v37[24] == 4)
      {
        if (v21 != 0x447373616C63)
        {
          goto LABEL_71;
        }
      }

      else if (v21 != 0x457373616C63)
      {
LABEL_71:
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10006B5BC(&v32, v31);
        sub_10006B5BC(&v35, v31);

        sub_10006B5F4(&v35);
        sub_10006B5F4(&v32);
        if ((v24 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_72;
      }

LABEL_68:
      if (v20 != v22)
      {
        goto LABEL_71;
      }

      sub_10006B5BC(&v32, v31);
      sub_10006B5BC(&v35, v31);

      sub_10006B5F4(&v35);
      sub_10006B5F4(&v32);
LABEL_72:
      if (!--v2)
      {
        return 1;
      }

      v25 = v9[1];
      v32 = *v9;
      *v33 = v25;
      v26 = v9[3];
      *&v33[16] = v9[2];
      *v34 = v26;
      *&v34[9] = *(v9 + 57);
      v27 = v8[3];
      *&v36[16] = v8[2];
      *v37 = v27;
      *&v37[9] = *(v8 + 57);
      v29 = *v8;
      v28 = v8[1];
      v8 += 5;
      v9 += 5;
      v35 = v29;
      *v36 = v28;
      if (v32 != v29)
      {
        return 0;
      }
    }

    if (*v37 >> 62)
    {
      return 0;
    }

LABEL_17:
    if (*&v33[8] == *&v36[8])
    {
      goto LABEL_30;
    }

LABEL_29:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_30;
  }

  return 1;
}

uint64_t sub_100067E94(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100067F08(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100005C68(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_100067F64(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A0C8(&qword_1000A4AC8, &qword_100079CE0);
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

_BYTE **sub_100068058(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100068068(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA384();
      sub_10006C140(&qword_1000A4B18, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100068248(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_100068248(v5, v6);
  }

  type metadata accessor for SHA384();
  sub_10006C140(&qword_1000A4B18, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100068248(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA384();
      sub_10006C140(&qword_1000A4B18, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100068328(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A0C8(&qword_1000A4AC0, &qword_1000790E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100068444(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A0C8(&qword_1000A2B50, &qword_100075A20);
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

Swift::Int sub_100068550(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10006A698(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000685BC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000685BC(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100068D38(v7, v8, a1, v4);
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
    return sub_1000686B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000686B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 80 * a3);
    v6 = result - a3 + 1;
    v33 = *a4;
LABEL_6:
    v53 = a3;
    v41 = v6;
    v42 = v5;
    while (1)
    {
      *v47 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      *&v48[9] = *(v5 + 57);
      *&v47[32] = v8;
      *v48 = v9;
      *&v47[16] = v7;
      v11 = *(v5 - 3);
      v10 = *(v5 - 2);
      v12 = *(v5 - 4);
      *&v52[9] = *(v5 - 23);
      v51 = v11;
      *v52 = v10;
      v50 = v12;
      v49 = *(v5 - 5);
      if (v47[0] != v49)
      {
        if ((v49 & (v47[0] ^ 1) & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_96;
      }

      if (*&v47[8] != __PAIR128__(v50, *(&v49 + 1)))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v13 = v48[0];
      v14 = v52[0];
      if (!(*v48 >> 62))
      {
        if (*v52 >> 62)
        {
          v16 = 1;
          goto LABEL_36;
        }

LABEL_17:
        if (*&v47[24] != __PAIR128__(v51, *(&v50 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_55:
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_96;
        }

LABEL_42:
        if (v48[24] <= 3u)
        {
          if (v48[24] > 1u)
          {
            v20 = 0xE600000000000000;
            if (v48[24] == 2)
            {
              v21 = 0x427373616C63;
            }

            else
            {
              v21 = 0x437373616C63;
            }
          }

          else
          {
            v21 = 0x7269447373616C63;
            v20 = 0xEC000000656E6F4ELL;
            if (v48[24])
            {
              v20 = 0xE600000000000000;
              v21 = 0x417373616C63;
            }
          }
        }

        else if (v48[24] <= 5u)
        {
          v20 = 0xE600000000000000;
          if (v48[24] == 4)
          {
            v21 = 0x447373616C63;
          }

          else
          {
            v21 = 0x457373616C63;
          }
        }

        else if (v48[24] == 6)
        {
          v20 = 0xE600000000000000;
          v21 = 0x467373616C63;
        }

        else if (v48[24] == 7)
        {
          v20 = 0xE700000000000000;
          v21 = 0x58437373616C63;
        }

        else
        {
          v21 = 0x6365746F72506F6ELL;
          v20 = 0xEC0000006E6F6974;
        }

        if (v52[24] <= 3u)
        {
          if (v52[24] > 1u)
          {
            v23 = 0xE600000000000000;
            if (v52[24] == 2)
            {
              if (v21 == 0x427373616C63)
              {
                goto LABEL_94;
              }
            }

            else if (v21 == 0x437373616C63)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v24 = 0x7269447373616C63;
            v23 = 0xEC000000656E6F4ELL;
            if (!v52[24])
            {
              goto LABEL_93;
            }

            v23 = 0xE600000000000000;
            if (v21 == 0x417373616C63)
            {
              goto LABEL_94;
            }
          }
        }

        else if (v52[24] <= 5u)
        {
          v23 = 0xE600000000000000;
          if (v52[24] == 4)
          {
            if (v21 == 0x447373616C63)
            {
              goto LABEL_94;
            }
          }

          else if (v21 == 0x457373616C63)
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (v52[24] != 6)
          {
            if (v52[24] == 7)
            {
              v23 = 0xE700000000000000;
              if (v21 != 0x58437373616C63)
              {
                goto LABEL_95;
              }

LABEL_94:
              if (v20 == v23)
              {
                sub_10006B5BC(v47, &v43);
                sub_10006B5BC(&v49, &v43);

                sub_10006B5F4(&v49);
                result = sub_10006B5F4(v47);
LABEL_5:
                a3 = v53 + 1;
                v5 = v42 + 5;
                v6 = v41 - 1;
                if (v53 + 1 == a2)
                {
                  return result;
                }

                goto LABEL_6;
              }

              goto LABEL_95;
            }

            v24 = 0x6365746F72506F6ELL;
            v23 = 0xEC0000006E6F6974;
LABEL_93:
            if (v21 != v24)
            {
              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v23 = 0xE600000000000000;
          if (v21 == 0x467373616C63)
          {
            goto LABEL_94;
          }
        }

LABEL_95:
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10006B5BC(v47, &v43);
        sub_10006B5BC(&v49, &v43);

        sub_10006B5F4(&v49);
        result = sub_10006B5F4(v47);
        if ((v25 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_96;
      }

      v15 = *v52 >> 62;
      if (*v48 >> 62 == 1)
      {
        if (v15 != 1)
        {
          v16 = 2;
          goto LABEL_36;
        }

        goto LABEL_17;
      }

      if (v15 != 2)
      {
        v16 = 3;
LABEL_36:
        if (v16 > *v52 >> 62)
        {
          goto LABEL_5;
        }

        goto LABEL_96;
      }

      v37 = *&v48[16];
      v38 = *(&v51 + 1);
      v39 = *&v52[8];
      v40 = *&v48[8];
      v35 = *&v47[40];
      v36 = *&v52[16];
      v17 = *&v47[24] == *(&v50 + 1) && *&v47[32] == v51;
      v18 = v17;
      if (!v17)
      {
        v19 = v18;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v19;
        v4 = v33;
        if ((result & 1) == 0)
        {
LABEL_51:
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_52;
        }
      }

      if (v13)
      {
        if ((v14 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (v14 & 1 | (v35 != v38))
      {
        goto LABEL_50;
      }

      if (v40 == v39 && v37 == v36)
      {
        goto LABEL_42;
      }

      v32 = v18;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v32;
      if (result)
      {
        goto LABEL_42;
      }

LABEL_50:
      if ((v18 & 1) == 0)
      {
        goto LABEL_51;
      }

LABEL_52:
      if (v13)
      {
        if (v14)
        {
          goto LABEL_63;
        }

        v22 = 0x8000000000000000;
      }

      else
      {
        if (v14)
        {
          goto LABEL_5;
        }

        v22 = v35;
        if (v35 == v38)
        {
LABEL_63:
          if (v40 == v39 && v37 == v36)
          {
            goto LABEL_5;
          }

LABEL_20:
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_96;
        }
      }

      if (v22 >= v38)
      {
        goto LABEL_5;
      }

LABEL_96:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v26 = v5 - 5;
      v44 = v5[1];
      v45 = v5[2];
      v46[0] = v5[3];
      *(v46 + 9) = *(v5 + 57);
      v43 = *v5;
      v27 = *(v5 - 2);
      v5[2] = *(v5 - 3);
      v5[3] = v27;
      v5[4] = *(v5 - 1);
      v28 = *(v5 - 4);
      *v5 = *(v5 - 5);
      v5[1] = v28;
      *v26 = v43;
      v29 = v44;
      v30 = v45;
      v31 = v46[0];
      *(v26 + 57) = *(v46 + 9);
      v26[2] = v30;
      v26[3] = v31;
      v26[1] = v29;
      if (!v6)
      {
        goto LABEL_5;
      }

      ++v6;
      v5 -= 5;
    }
  }

  return result;
}

uint64_t sub_100068D38(int64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    result = _swiftEmptyArrayStorage;
LABEL_278:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_317;
    }

    v4 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_311:
      result = sub_10006A2FC(v4);
    }

    v156 = result;
    v116 = *(result + 16);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v4 = v116 - 1;
        v117 = *(result + 16 * v116);
        v118 = result;
        v119 = *(result + 16 * (v116 - 1) + 40);
        v120 = v161;
        sub_100069F64((*a3 + 80 * v117), (*a3 + 80 * *(result + 16 * (v116 - 1) + 32)), (*a3 + 80 * v119), v6);
        v161 = v120;
        if (v120)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_304;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_10006A2FC(v118);
        }

        if (v116 - 2 >= *(v118 + 2))
        {
          goto LABEL_305;
        }

        v121 = &v118[16 * v116];
        *v121 = v117;
        *(v121 + 1) = v119;
        v156 = v118;
        sub_10006A270(v4);
        result = v156;
        v116 = *(v156 + 16);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_315;
    }
  }

  v6 = 0;
  result = _swiftEmptyArrayStorage;
LABEL_4:
  v8 = v6;
  v9 = v6 + 1;
  v130 = result;
  if (v6 + 1 >= v5)
  {
    v37 = a4;
    goto LABEL_116;
  }

  v4 = *a3;
  v10 = (*a3 + 80 * v9);
  v157[0] = *v10;
  v12 = v10[2];
  v11 = v10[3];
  v13 = v10[1];
  *(v158 + 9) = *(v10 + 57);
  v157[2] = v12;
  v158[0] = v11;
  v157[1] = v13;
  v14 = (v4 + 80 * v6);
  v16 = v14[2];
  v15 = v14[3];
  v17 = v14[1];
  *&v160[9] = *(v14 + 57);
  v159[2] = v16;
  *v160 = v15;
  v159[1] = v17;
  v159[0] = *v14;
  sub_10006B5BC(v157, v154);
  sub_10006B5BC(v159, v154);
  v18 = sub_10006AAD4(v157, v159);
  sub_10006B5F4(v159);
  sub_10006B5F4(v157);
  v9 = v6 + 2;
  v122 = v6;
  if (v6 + 2 < v5)
  {
    v19 = (v4 + 80 * v6 + 160);
    result = v130;
    v145 = v5;
    v143 = v18;
    while (1)
    {
      *v152 = *v19;
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      *&v153[9] = *(v19 + 57);
      *&v152[32] = v21;
      *v153 = v22;
      *&v152[16] = v20;
      v24 = *(v19 - 3);
      v23 = *(v19 - 2);
      v25 = *(v19 - 4);
      *&v155[9] = *(v19 - 23);
      *&v154[32] = v24;
      *v155 = v23;
      *&v154[16] = v25;
      *v154 = *(v19 - 5);
      if (v152[0] == v154[0])
      {
        break;
      }

      if ((v18 ^ v154[0] & (v152[0] ^ 1)))
      {
        goto LABEL_106;
      }

LABEL_94:
      v19 += 5;
      if (v5 == ++v9)
      {
        v9 = v5;
        v8 = v122;
        v37 = a4;
        if (v18)
        {
          goto LABEL_107;
        }

        goto LABEL_116;
      }
    }

    v4 = *&v152[8];
    v6 = *&v154[8];
    if (*&v152[8] != *&v154[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_20:
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = v130;
      if ((v18 ^ v28))
      {
        goto LABEL_106;
      }

      goto LABEL_94;
    }

    v6 = *v153;
    v4 = *v155;
    v26 = *v155 >> 62;
    if (!(*v153 >> 62))
    {
      if (v26)
      {
        v27 = 1;
        goto LABEL_36;
      }

      goto LABEL_17;
    }

    if (*v153 >> 62 == 1)
    {
      if (v26 != 1)
      {
        v27 = 2;
        goto LABEL_36;
      }

LABEL_17:
      if (*&v152[24] == *&v154[24] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_43;
      }

LABEL_56:
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = v130;
      goto LABEL_37;
    }

    if (v26 != 2)
    {
      v27 = 3;
LABEL_36:
      result = v130;
      v31 = v27 <= *v155 >> 62;
LABEL_37:
      v5 = v145;
      v18 = v143;
      if ((v143 ^ v31))
      {
        goto LABEL_106;
      }

      goto LABEL_94;
    }

    v139 = *&v153[8];
    v141 = *&v154[40];
    v135 = *&v153[16];
    v137 = *&v155[8];
    v131 = *&v152[40];
    v133 = *&v155[16];
    v29 = *&v152[24] == *&v154[24] && *&v152[32] == *&v154[32];
    v30 = v29;
    if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_52;
    }

    if (v6)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v4 & 1 | (v131 != v141))
    {
      goto LABEL_51;
    }

    if (v139 == v137 && v135 == v133 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_43:
      if (v153[24] <= 3u)
      {
        v18 = v143;
        if (v153[24] > 1u)
        {
          v32 = 0xE600000000000000;
          if (v153[24] == 2)
          {
            v33 = 0x427373616C63;
          }

          else
          {
            v33 = 0x437373616C63;
          }
        }

        else
        {
          v33 = 0x7269447373616C63;
          v32 = 0xEC000000656E6F4ELL;
          if (v153[24])
          {
            v32 = 0xE600000000000000;
            v33 = 0x417373616C63;
          }
        }
      }

      else
      {
        v18 = v143;
        if (v153[24] <= 5u)
        {
          v32 = 0xE600000000000000;
          if (v153[24] == 4)
          {
            v33 = 0x447373616C63;
          }

          else
          {
            v33 = 0x457373616C63;
          }
        }

        else if (v153[24] == 6)
        {
          v32 = 0xE600000000000000;
          v33 = 0x467373616C63;
        }

        else if (v153[24] == 7)
        {
          v32 = 0xE700000000000000;
          v33 = 0x58437373616C63;
        }

        else
        {
          v33 = 0x6365746F72506F6ELL;
          v32 = 0xEC0000006E6F6974;
        }
      }

      if (v155[24] <= 3u)
      {
        if (v155[24] > 1u)
        {
          v4 = 0xE600000000000000;
          if (v155[24] == 2)
          {
            if (v33 == 0x427373616C63)
            {
              goto LABEL_89;
            }
          }

          else if (v33 == 0x437373616C63)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v35 = 0x7269447373616C63;
          v4 = 0xEC000000656E6F4ELL;
          if (!v155[24])
          {
            goto LABEL_88;
          }

          v4 = 0xE600000000000000;
          if (v33 == 0x417373616C63)
          {
            goto LABEL_89;
          }
        }
      }

      else if (v155[24] <= 5u)
      {
        v4 = 0xE600000000000000;
        if (v155[24] != 4)
        {
          if (v33 != 0x457373616C63)
          {
            goto LABEL_92;
          }

          goto LABEL_89;
        }

        if (v33 == 0x447373616C63)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v155[24] != 6)
        {
          if (v155[24] == 7)
          {
            v4 = 0xE700000000000000;
            if (v33 != 0x58437373616C63)
            {
              goto LABEL_92;
            }

LABEL_89:
            if (v32 != v4)
            {
              goto LABEL_92;
            }

            v36 = 0;
LABEL_93:
            sub_10006B5BC(v152, &v148);
            sub_10006B5BC(v154, &v148);

            sub_10006B5F4(v154);
            sub_10006B5F4(v152);
            result = v130;
            v5 = v145;
            if ((v18 ^ v36))
            {
              goto LABEL_106;
            }

            goto LABEL_94;
          }

          v35 = 0x6365746F72506F6ELL;
          v4 = 0xEC0000006E6F6974;
LABEL_88:
          if (v33 != v35)
          {
            goto LABEL_92;
          }

          goto LABEL_89;
        }

        v4 = 0xE600000000000000;
        if (v33 == 0x467373616C63)
        {
          goto LABEL_89;
        }
      }

LABEL_92:
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_93;
    }

LABEL_51:
    if (v30)
    {
LABEL_53:
      if (v6)
      {
        result = v130;
        v5 = v145;
        v18 = v143;
        if ((v4 & 1) == 0)
        {
          v34 = 0x8000000000000000;
          goto LABEL_101;
        }
      }

      else
      {
        result = v130;
        v5 = v145;
        v18 = v143;
        if (v4)
        {
          v141 = 0x8000000000000000;
          v34 = v131;
LABEL_101:
          if ((v18 ^ (v34 < v141)))
          {
            goto LABEL_106;
          }

          goto LABEL_94;
        }

        v34 = v131;
        if (v131 != v141)
        {
          goto LABEL_101;
        }
      }

      if (v139 == v137 && v135 == v133)
      {
        if (v18)
        {
          v8 = v122;
          v37 = a4;
          if (v9 < v122)
          {
            goto LABEL_308;
          }

          goto LABEL_108;
        }

        goto LABEL_94;
      }

      goto LABEL_20;
    }

LABEL_52:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  result = v130;
LABEL_106:
  v8 = v122;
  v37 = a4;
  if (v18)
  {
LABEL_107:
    if (v9 < v8)
    {
      goto LABEL_308;
    }

LABEL_108:
    v6 = v9;
    if (v8 < v9)
    {
      v38 = v8;
      v39 = 80 * v9 - 80;
      v40 = 80 * v38;
      v41 = v38;
      do
      {
        if (v38 != --v6)
        {
          v42 = *a3;
          if (!*a3)
          {
            goto LABEL_314;
          }

          v4 = v42 + v39;
          *&v154[16] = *(v42 + v40 + 16);
          *&v154[32] = *(v42 + v40 + 32);
          *v155 = *(v42 + v40 + 48);
          *&v155[9] = *(v42 + v40 + 57);
          *v154 = *(v42 + v40);
          memmove((v42 + v40), (v42 + v39), 0x50uLL);
          *(v4 + 16) = *&v154[16];
          *(v4 + 32) = *&v154[32];
          *(v4 + 48) = *v155;
          *(v4 + 57) = *&v155[9];
          *v4 = *v154;
          result = v130;
        }

        ++v38;
        v39 -= 80;
        v40 += 80;
      }

      while (v38 < v6);
      v8 = v41;
    }
  }

LABEL_116:
  v43 = a3[1];
  if (v9 >= v43)
  {
    goto LABEL_125;
  }

  if (__OFSUB__(v9, v8))
  {
    goto LABEL_307;
  }

  if (v9 - v8 >= v37)
  {
LABEL_125:
    if (v9 < v8)
    {
      goto LABEL_306;
    }

    goto LABEL_126;
  }

  v44 = v8 + v37;
  if (__OFADD__(v8, v37))
  {
    goto LABEL_309;
  }

  if (v44 >= v43)
  {
    v44 = a3[1];
  }

  if (v44 < v8)
  {
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  if (v9 == v44)
  {
    goto LABEL_125;
  }

  v45 = *a3;
  v46 = *a3 + 80 * v9;
  v123 = v8;
  v47 = v8 - v9 + 1;
  v126 = v44;
LABEL_177:
  v144 = v46;
  v146 = v9;
  v142 = v47;
  for (i = v46; ; i -= 5)
  {
    *v152 = *i;
    v96 = i[1];
    v97 = i[2];
    v98 = i[3];
    *&v153[9] = *(i + 57);
    *&v152[32] = v97;
    *v153 = v98;
    *&v152[16] = v96;
    v100 = *(i - 3);
    v99 = *(i - 2);
    v101 = *(i - 4);
    *&v155[9] = *(i - 23);
    *&v154[32] = v100;
    *v155 = v99;
    *&v154[16] = v101;
    *v154 = *(i - 5);
    if (v152[0] != v154[0])
    {
      if ((v154[0] & (v152[0] ^ 1) & 1) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_267;
    }

    v4 = *&v152[8];
    v6 = *&v154[8];
    if (*&v152[8] != *&v154[8])
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    v6 = *v153;
    v4 = *v155;
    if (!(*v153 >> 62))
    {
      if (!(*v155 >> 62))
      {
        goto LABEL_188;
      }

      v103 = 1;
LABEL_207:
      if (v103 > *v155 >> 62)
      {
        goto LABEL_176;
      }

      goto LABEL_267;
    }

    v102 = *v155 >> 62;
    if (*v153 >> 62 == 1)
    {
      if (v102 != 1)
      {
        v103 = 2;
        goto LABEL_207;
      }

LABEL_188:
      if (*&v152[24] != *&v154[24] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_226:
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_176;
        }

        goto LABEL_267;
      }

LABEL_213:
      if (v153[24] <= 3u)
      {
        if (v153[24] > 1u)
        {
          v6 = 0xE600000000000000;
          if (v153[24] == 2)
          {
            v106 = 0x427373616C63;
          }

          else
          {
            v106 = 0x437373616C63;
          }
        }

        else
        {
          v106 = 0x7269447373616C63;
          v6 = 0xEC000000656E6F4ELL;
          if (v153[24])
          {
            v6 = 0xE600000000000000;
            v106 = 0x417373616C63;
          }
        }
      }

      else if (v153[24] <= 5u)
      {
        v6 = 0xE600000000000000;
        if (v153[24] == 4)
        {
          v106 = 0x447373616C63;
        }

        else
        {
          v106 = 0x457373616C63;
        }
      }

      else if (v153[24] == 6)
      {
        v6 = 0xE600000000000000;
        v106 = 0x467373616C63;
      }

      else if (v153[24] == 7)
      {
        v6 = 0xE700000000000000;
        v106 = 0x58437373616C63;
      }

      else
      {
        v106 = 0x6365746F72506F6ELL;
        v6 = 0xEC0000006E6F6974;
      }

      if (v155[24] <= 3u)
      {
        if (v155[24] > 1u)
        {
          v4 = 0xE600000000000000;
          if (v155[24] == 2)
          {
            if (v106 == 0x427373616C63)
            {
              goto LABEL_265;
            }
          }

          else if (v106 == 0x437373616C63)
          {
            goto LABEL_265;
          }
        }

        else
        {
          v108 = 0x7269447373616C63;
          v4 = 0xEC000000656E6F4ELL;
          if (!v155[24])
          {
            goto LABEL_264;
          }

          v4 = 0xE600000000000000;
          if (v106 == 0x417373616C63)
          {
            goto LABEL_265;
          }
        }
      }

      else if (v155[24] <= 5u)
      {
        v4 = 0xE600000000000000;
        if (v155[24] == 4)
        {
          if (v106 == 0x447373616C63)
          {
            goto LABEL_265;
          }
        }

        else if (v106 == 0x457373616C63)
        {
          goto LABEL_265;
        }
      }

      else
      {
        if (v155[24] != 6)
        {
          if (v155[24] == 7)
          {
            v4 = 0xE700000000000000;
            if (v106 != 0x58437373616C63)
            {
              goto LABEL_266;
            }

LABEL_265:
            if (v6 == v4)
            {
              sub_10006B5BC(v152, &v148);
              sub_10006B5BC(v154, &v148);

              sub_10006B5F4(v154);
              result = sub_10006B5F4(v152);
LABEL_176:
              v9 = v146 + 1;
              v46 = v144 + 80;
              v47 = v142 - 1;
              if (v146 + 1 == v126)
              {
                v9 = v126;
                v8 = v123;
                if (v126 < v123)
                {
                  goto LABEL_306;
                }

LABEL_126:
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  result = v130;
                }

                else
                {
                  result = sub_100028248(0, *(v130 + 16) + 1, 1, v130);
                }

                v4 = *(result + 16);
                v48 = *(result + 24);
                v49 = v4 + 1;
                if (v4 >= v48 >> 1)
                {
                  result = sub_100028248((v48 > 1), v4 + 1, 1, result);
                }

                *(result + 16) = v49;
                v50 = result + 16 * v4;
                *(v50 + 32) = v8;
                *(v50 + 40) = v9;
                v6 = v9;
                v51 = *a1;
                if (!*a1)
                {
                  goto LABEL_316;
                }

                if (v4)
                {
                  while (2)
                  {
                    v52 = v49 - 1;
                    if (v49 >= 4)
                    {
                      v57 = result + 32 + 16 * v49;
                      v58 = *(v57 - 64);
                      v59 = *(v57 - 56);
                      v63 = __OFSUB__(v59, v58);
                      v60 = v59 - v58;
                      if (v63)
                      {
                        goto LABEL_293;
                      }

                      v62 = *(v57 - 48);
                      v61 = *(v57 - 40);
                      v63 = __OFSUB__(v61, v62);
                      v55 = v61 - v62;
                      v56 = v63;
                      if (v63)
                      {
                        goto LABEL_294;
                      }

                      v64 = (result + 16 * v49);
                      v66 = *v64;
                      v65 = v64[1];
                      v63 = __OFSUB__(v65, v66);
                      v67 = v65 - v66;
                      if (v63)
                      {
                        goto LABEL_296;
                      }

                      v63 = __OFADD__(v55, v67);
                      v68 = v55 + v67;
                      if (v63)
                      {
                        goto LABEL_299;
                      }

                      if (v68 >= v60)
                      {
                        v86 = (result + 32 + 16 * v52);
                        v88 = *v86;
                        v87 = v86[1];
                        v63 = __OFSUB__(v87, v88);
                        v89 = v87 - v88;
                        if (v63)
                        {
                          goto LABEL_303;
                        }

                        if (v55 < v89)
                        {
                          v52 = v49 - 2;
                        }
                      }

                      else
                      {
LABEL_145:
                        if (v56)
                        {
                          goto LABEL_295;
                        }

                        v69 = (result + 16 * v49);
                        v71 = *v69;
                        v70 = v69[1];
                        v72 = __OFSUB__(v70, v71);
                        v73 = v70 - v71;
                        v74 = v72;
                        if (v72)
                        {
                          goto LABEL_298;
                        }

                        v75 = (result + 32 + 16 * v52);
                        v77 = *v75;
                        v76 = v75[1];
                        v63 = __OFSUB__(v76, v77);
                        v78 = v76 - v77;
                        if (v63)
                        {
                          goto LABEL_301;
                        }

                        if (__OFADD__(v73, v78))
                        {
                          goto LABEL_302;
                        }

                        if (v73 + v78 < v55)
                        {
                          goto LABEL_159;
                        }

                        if (v55 < v78)
                        {
                          v52 = v49 - 2;
                        }
                      }
                    }

                    else
                    {
                      if (v49 == 3)
                      {
                        v53 = *(result + 32);
                        v54 = *(result + 40);
                        v63 = __OFSUB__(v54, v53);
                        v55 = v54 - v53;
                        v56 = v63;
                        goto LABEL_145;
                      }

                      v79 = (result + 16 * v49);
                      v81 = *v79;
                      v80 = v79[1];
                      v63 = __OFSUB__(v80, v81);
                      v73 = v80 - v81;
                      v74 = v63;
LABEL_159:
                      if (v74)
                      {
                        goto LABEL_297;
                      }

                      v82 = result + 16 * v52;
                      v84 = *(v82 + 32);
                      v83 = *(v82 + 40);
                      v63 = __OFSUB__(v83, v84);
                      v85 = v83 - v84;
                      if (v63)
                      {
                        goto LABEL_300;
                      }

                      if (v85 < v73)
                      {
                        break;
                      }
                    }

                    v4 = v52 - 1;
                    if (v52 - 1 >= v49)
                    {
                      __break(1u);
LABEL_291:
                      __break(1u);
LABEL_292:
                      __break(1u);
LABEL_293:
                      __break(1u);
LABEL_294:
                      __break(1u);
LABEL_295:
                      __break(1u);
LABEL_296:
                      __break(1u);
LABEL_297:
                      __break(1u);
LABEL_298:
                      __break(1u);
LABEL_299:
                      __break(1u);
LABEL_300:
                      __break(1u);
LABEL_301:
                      __break(1u);
LABEL_302:
                      __break(1u);
LABEL_303:
                      __break(1u);
LABEL_304:
                      __break(1u);
LABEL_305:
                      __break(1u);
LABEL_306:
                      __break(1u);
LABEL_307:
                      __break(1u);
LABEL_308:
                      __break(1u);
LABEL_309:
                      __break(1u);
                      goto LABEL_310;
                    }

                    if (!*a3)
                    {
                      goto LABEL_313;
                    }

                    v90 = result;
                    v91 = *(result + 32 + 16 * v4);
                    v92 = *(result + 32 + 16 * v52 + 8);
                    v93 = v161;
                    sub_100069F64((*a3 + 80 * v91), (*a3 + 80 * *(result + 32 + 16 * v52)), (*a3 + 80 * v92), v51);
                    v161 = v93;
                    if (v93)
                    {
                    }

                    if (v92 < v91)
                    {
                      goto LABEL_291;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v90 = sub_10006A2FC(v90);
                    }

                    if (v4 >= *(v90 + 2))
                    {
                      goto LABEL_292;
                    }

                    v94 = &v90[16 * v4];
                    *(v94 + 4) = v91;
                    *(v94 + 5) = v92;
                    v156 = v90;
                    sub_10006A270(v52);
                    result = v156;
                    v49 = *(v156 + 16);
                    if (v49 <= 1)
                    {
                      break;
                    }

                    continue;
                  }
                }

                v5 = a3[1];
                if (v6 >= v5)
                {
                  goto LABEL_278;
                }

                goto LABEL_4;
              }

              goto LABEL_177;
            }

            goto LABEL_266;
          }

          v108 = 0x6365746F72506F6ELL;
          v4 = 0xEC0000006E6F6974;
LABEL_264:
          if (v106 != v108)
          {
            goto LABEL_266;
          }

          goto LABEL_265;
        }

        v4 = 0xE600000000000000;
        if (v106 == 0x467373616C63)
        {
          goto LABEL_265;
        }
      }

LABEL_266:
      v109 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10006B5BC(v152, &v148);
      sub_10006B5BC(v154, &v148);

      sub_10006B5F4(v154);
      result = sub_10006B5F4(v152);
      if ((v109 & 1) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_267;
    }

    if (v102 != 2)
    {
      v103 = 3;
      goto LABEL_207;
    }

    v129 = *&v152[40];
    v134 = *&v153[16];
    v136 = *&v154[40];
    v138 = *&v155[8];
    v140 = *&v153[8];
    v132 = *&v155[16];
    v104 = *&v152[24] == *&v154[24] && *&v152[32] == *&v154[32];
    v105 = v104;
    if (!v104)
    {
      v127 = v105;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v105 = v127;
      if ((result & 1) == 0)
      {
LABEL_222:
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_226;
        }

        goto LABEL_223;
      }
    }

    if (v6)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_221;
      }
    }

    else if (v4 & 1 | (v129 != v136))
    {
      goto LABEL_221;
    }

    if (v140 == v138 && v134 == v132)
    {
      goto LABEL_213;
    }

    v128 = v105;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    v105 = v128;
    if (result)
    {
      goto LABEL_213;
    }

LABEL_221:
    if ((v105 & 1) == 0)
    {
      goto LABEL_222;
    }

LABEL_223:
    if (v6)
    {
      if (v4)
      {
        goto LABEL_234;
      }

      v107 = 0x8000000000000000;
    }

    else
    {
      if (v4)
      {
        goto LABEL_176;
      }

      v107 = v129;
      if (v129 == v136)
      {
LABEL_234:
        if (v140 == v138 && v134 == v132)
        {
          goto LABEL_176;
        }

LABEL_191:
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_176;
        }

        goto LABEL_267;
      }
    }

    if (v107 >= v136)
    {
      goto LABEL_176;
    }

LABEL_267:
    if (!v45)
    {
      break;
    }

    v110 = i - 5;
    v149 = i[1];
    v150 = i[2];
    v151[0] = i[3];
    *(v151 + 9) = *(i + 57);
    v148 = *i;
    v111 = *(i - 2);
    i[2] = *(i - 3);
    i[3] = v111;
    i[4] = *(i - 1);
    v112 = *(i - 4);
    *i = *(i - 5);
    i[1] = v112;
    *v110 = v148;
    v113 = v149;
    v114 = v150;
    v115 = v151[0];
    *(v110 + 57) = *(v151 + 9);
    v110[2] = v114;
    v110[3] = v115;
    v110[1] = v113;
    if (!v47)
    {
      goto LABEL_176;
    }

    ++v47;
  }

  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
  return result;
}

uint64_t sub_100069F64(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    v12 = 80 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v36 = *v6;
      v16 = *(v6 + 1);
      v17 = *(v6 + 2);
      v18 = *(v6 + 3);
      *(v39 + 9) = *(v6 + 57);
      v38 = v17;
      v39[0] = v18;
      v37 = v16;
      v20 = *(v4 + 2);
      v19 = *(v4 + 3);
      v21 = *(v4 + 1);
      *(v43 + 9) = *(v4 + 57);
      v42 = v20;
      v43[0] = v19;
      v41 = v21;
      v40 = *v4;
      sub_10006B5BC(&v36, v35);
      sub_10006B5BC(&v40, v35);
      v22 = sub_10006AAD4(&v36, &v40);
      sub_10006B5F4(&v40);
      sub_10006B5F4(&v36);
      if (v22)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 80;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 80;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 80;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x50uLL);
    goto LABEL_9;
  }

  v23 = 80 * v11;
  if (a4 != __src || &__src[v23] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v13 = &v4[v23];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_20:
    v24 = v6 - 80;
    v5 -= 80;
    do
    {
      v25 = v5 + 80;
      v36 = *(v13 - 5);
      v26 = *(v13 - 4);
      v27 = *(v13 - 3);
      v28 = *(v13 - 2);
      *(v39 + 9) = *(v13 - 23);
      v38 = v27;
      v39[0] = v28;
      v37 = v26;
      v29 = *(v6 - 2);
      v42 = *(v6 - 3);
      v43[0] = v29;
      *(v43 + 9) = *(v6 - 23);
      v30 = *(v6 - 4);
      v40 = *v24;
      v41 = v30;
      sub_10006B5BC(&v36, v35);
      sub_10006B5BC(&v40, v35);
      v31 = sub_10006AAD4(&v36, &v40);
      sub_10006B5F4(&v40);
      sub_10006B5F4(&v36);
      if (v31)
      {
        if (v25 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v13 <= v4 || (v6 -= 80, v24 <= v7))
        {
          v6 = v24;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v32 = (v13 - 80);
      if (v25 != v13)
      {
        memmove(v5, v13 - 80, 0x50uLL);
      }

      v5 -= 80;
      v13 -= 80;
    }

    while (v32 > v4);
    v13 = v32;
  }

LABEL_31:
  v33 = 80 * ((v13 - v4) / 80);
  if (v6 != v4 || v6 >= &v4[v33])
  {
    memmove(v6, v4, v33);
  }

  return 1;
}

uint64_t sub_10006A270(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10006A2FC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_10006A310(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!__dst)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = __dst;
      v9 = 0;
      v10 = (a4 + 32);
      v11 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        v12 = v10[3];
        v15[2] = v10[2];
        v16[0] = v12;
        *(v16 + 9) = *(v10 + 57);
        v13 = v10[1];
        v15[0] = *v10;
        v15[1] = v13;
        memmove(v8, v10, 0x49uLL);
        if (v11 == v9)
        {
          sub_10006B5BC(v15, v14);
          goto LABEL_12;
        }

        v8 += 80;
        result = sub_10006B5BC(v15, v14);
        ++v9;
        v10 += 5;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_10006A404(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v16 = v3;
      v6 = *v4;
      v5 = v4[1];
      v8 = v4[2];
      v7 = v4[3];
      v9 = v4[4];
      v10 = v4[5];
      Hasher._combine(_:)(*(v4 - 24));

      v17 = v6;
      v11 = v6;
      v12 = v5;
      v18 = v9;
      sub_10006B4EC(v11, v5, v8, v7, v9, v10);
      String.hash(into:)();
      if (v7 >> 62)
      {
        if (v7 >> 62 != 1)
        {
          Hasher._combine(_:)(2uLL);
          v14 = v17;
          String.hash(into:)();
          if (v7)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            Hasher._combine(_:)(v8);
          }

          v15 = v16;
          String.hash(into:)();
          goto LABEL_3;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      Hasher._combine(_:)(v13);
      v14 = v17;
      String.hash(into:)();
      v15 = v16;
LABEL_3:
      v4 += 10;
      String.hash(into:)();

      sub_10006B554(v14, v12, v8, v7, v18, v10);
      v3 = v15 - 1;
    }

    while (v3);
  }
}

uint64_t sub_10006A6AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v4 = a1;
    v5 = a2;
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 3);
  v8 = *(a1 + 4);
  v10 = *(a1 + 6);
  v11 = *(a2 + 3);
  v12 = *(a2 + 4);
  v13 = *(a2 + 6);
  if (!(v10 >> 62))
  {
    if (!(v13 >> 62))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v10 >> 62 != 1)
  {
    if (v13 >> 62 != 2)
    {
      return 0;
    }

    v18 = *(a1 + 5);
    v19 = *(a1 + 7);
    v20 = *(a1 + 8);
    v21 = *(a2 + 5);
    v22 = *(a2 + 7);
    v23 = *(a2 + 8);
    if (__PAIR128__(v8, v9) != __PAIR128__(v12, v11))
    {
      v24 = a1;
      v25 = a2;
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v25;
      v27 = v26;
      a1 = v24;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    if (v10)
    {
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v13 & 1 | (v18 != v21))
    {
      return 0;
    }

    if (v19 == v22 && v20 == v23)
    {
      goto LABEL_27;
    }

    v28 = a1;
    v29 = a2;
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v29;
    v31 = v30;
    a1 = v28;
    if (v31)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v13 >> 62 != 1)
  {
    return 0;
  }

LABEL_13:
  if (v9 != v11 || v8 != v12)
  {
    v14 = a1;
    v15 = a2;
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v15;
    v17 = v16;
    a1 = v14;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_27:
  v32 = a2[72];
  v33 = a1[72];

  return sub_1000613F8(v33, v32);
}

uint64_t sub_10006A890(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  if (!(v6 >> 62))
  {
    if (!(a2[3] >> 62))
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (v6 >> 62 != 1)
  {
    v9 = a2[3];
    if (v9 >> 62 != 2)
    {
      return 0;
    }

    v10 = a1[2];
    v11 = a1[4];
    v12 = a1[5];
    v13 = a2[2];
    v14 = a2[4];
    v15 = a2[5];
    if ((v4 != *a2 || v5 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v6)
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }

      return v11 == v14 && v12 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    if (!(v9 & 1 | (v10 != v13)))
    {
      return v11 == v14 && v12 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    return 0;
  }

  if (a2[3] >> 62 != 1)
  {
    return 0;
  }

LABEL_6:
  if (v4 == *a2 && v5 == a2[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10006A9D8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a2[2];
    if (a1[3])
    {
      if ((a2[3] & 1) == 0)
      {
        v6 = 0x8000000000000000;
        return v6 < v5;
      }
    }

    else
    {
      v6 = a1[2];
      if (a2[3])
      {
        v5 = 0x8000000000000000;
        return v6 < v5;
      }

      if (v6 != v5)
      {
        return v6 < v5;
      }
    }

    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 0;
    }
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10006AAD4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) != (*a2 & 1))
  {
    v2 = *a2 & (*a1 ^ 1);
    return v2 & 1;
  }

  v6 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_19:

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v7 = *(a1 + 40);
  v21 = *(a1 + 24);
  v22 = v7;
  v23 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = *(a2 + 40);
  v18 = *(a2 + 24);
  v19 = v9;
  v20 = *(a2 + 56);
  v10 = *(a2 + 48);
  if ((sub_10006A890(&v21, &v18) & 1) == 0)
  {
    if (*(&v22 + 1) >> 62)
    {
      if (*(&v22 + 1) >> 62 == 1)
      {
        if (*(&v19 + 1) >> 62 != 1)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      v24 = v21;
      v25 = v22;
      v26 = *(&v22 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      v27 = v23;
      if (*(&v19 + 1) >> 62 == 2)
      {
        v28 = v18;
        v29 = v19;
        v30 = *(&v19 + 1) & 0x3FFFFFFFFFFFFFFFLL;
        v31 = v20;
        v2 = sub_10006A9D8(&v24, &v28);
        return v2 & 1;
      }
    }

    else if (!(*(&v19 + 1) >> 62))
    {
LABEL_26:
      if (v21 == v18)
      {
        goto LABEL_58;
      }

      goto LABEL_19;
    }

LABEL_30:
    v2 = v8 >> 62 < v10 >> 62;
    return v2 & 1;
  }

  v11 = 0xEC000000656E6F4ELL;
  v12 = 0x7269447373616C63;
  v13 = *(a1 + 72);
  if (v13 <= 3)
  {
    if (*(a1 + 72) > 1u)
    {
      v14 = 0xE600000000000000;
      if (v13 == 2)
      {
        v15 = 0x427373616C63;
      }

      else
      {
        v15 = 0x437373616C63;
      }
    }

    else
    {
      v15 = 0x7269447373616C63;
      v14 = 0xEC000000656E6F4ELL;
      if (v13)
      {
        v14 = 0xE600000000000000;
        v15 = 0x417373616C63;
      }
    }
  }

  else if (*(a1 + 72) <= 5u)
  {
    v14 = 0xE600000000000000;
    if (v13 == 4)
    {
      v15 = 0x447373616C63;
    }

    else
    {
      v15 = 0x457373616C63;
    }
  }

  else if (v13 == 6)
  {
    v14 = 0xE600000000000000;
    v15 = 0x467373616C63;
  }

  else if (v13 == 7)
  {
    v14 = 0xE700000000000000;
    v15 = 0x58437373616C63;
  }

  else
  {
    v15 = 0x6365746F72506F6ELL;
    v14 = 0xEC0000006E6F6974;
  }

  v16 = *(a2 + 72);
  if (v16 <= 3)
  {
    if (*(a2 + 72) > 1u)
    {
      v11 = 0xE600000000000000;
      if (v16 == 2)
      {
        v12 = 0x427373616C63;
      }

      else
      {
        v12 = 0x437373616C63;
      }
    }

    else if (*(a2 + 72))
    {
      v11 = 0xE600000000000000;
      v12 = 0x417373616C63;
    }
  }

  else if (*(a2 + 72) <= 5u)
  {
    v11 = 0xE600000000000000;
    if (v16 == 4)
    {
      v12 = 0x447373616C63;
    }

    else
    {
      v12 = 0x457373616C63;
    }
  }

  else if (v16 == 6)
  {
    v11 = 0xE600000000000000;
    v12 = 0x467373616C63;
  }

  else if (v16 == 7)
  {
    v11 = 0xE700000000000000;
    v12 = 0x58437373616C63;
  }

  else
  {
    v12 = 0x6365746F72506F6ELL;
    v11 = 0xEC0000006E6F6974;
  }

  if (v15 == v12 && v14 == v11)
  {

LABEL_58:
    v2 = 0;
    return v2 & 1;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v17 & 1;
}

unint64_t sub_10006AEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4968;
  if (!qword_1000A4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4968);
  }

  return result;
}

unint64_t sub_10006AF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4980;
  if (!qword_1000A4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4980);
  }

  return result;
}

uint64_t type metadata accessor for RapidRepair(uint64_t a1)
{
  result = qword_1000A49B0;
  if (!qword_1000A49B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006AFE0(uint64_t a1)
{
  sub_10006B084(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10006B084(uint64_t a1)
{
  if (!qword_1000A49C0)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A49C0);
    }
  }
}

uint64_t sub_10006B0EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_10006B134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006B1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4A68;
  if (!qword_1000A4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A68);
  }

  return result;
}

unint64_t sub_10006B21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4A70;
  if (!qword_1000A4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A70);
  }

  return result;
}

unint64_t sub_10006B270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4A78;
  if (!qword_1000A4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A78);
  }

  return result;
}

unint64_t sub_10006B2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4A80;
  if (!qword_1000A4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A80);
  }

  return result;
}

unint64_t sub_10006B318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4A88;
  if (!qword_1000A4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A88);
  }

  return result;
}

unint64_t sub_10006B36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4A98;
  if (!qword_1000A4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4A98);
  }

  return result;
}

unint64_t sub_10006B3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4AA0;
  if (!qword_1000A4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4AA0);
  }

  return result;
}

unint64_t sub_10006B414()
{
  result = qword_1000A4AB0;
  if (!qword_1000A4AB0)
  {
    v1 = sub_10000A738(&qword_1000A4AA8, &qword_1000790D8);
    sub_10006B498(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4AB0);
  }

  return result;
}

unint64_t sub_10006B498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4AB8;
  if (!qword_1000A4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4AB8);
  }

  return result;
}

void sub_10006B4EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a4 >> 62) < 2)
  {

LABEL_4:

    return;
  }

  if (a4 >> 62 != 3)
  {

    goto LABEL_4;
  }
}

void sub_10006B554(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a4 >> 62) < 2)
  {

LABEL_4:

    return;
  }

  if (a4 >> 62 != 3)
  {

    goto LABEL_4;
  }
}

void *sub_10006B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *path = a1;
      v15 = a2 & 0xFFFFFFFFFFFFFFLL;
      v11 = a4;

      sub_100011FAC(a5, a6);
      v12 = path;
      return sub_1000610E0(a3, v11, a3, v11, a5, a6, v12);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v11 = a4;

      sub_100011FAC(a5, a6);
      v12 = (v10 + 32);
      return sub_1000610E0(a3, v11, a3, v11, a5, a6, v12);
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v6)
  {
    return v16;
  }

  return result;
}

uint64_t sub_10006B728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = SecTaskCreateFromSelf(0);
  if (v10)
  {
    v11 = v10;
    v12 = SecTaskCopySigningIdentifier(v10, 0);
    if (v12)
    {
      v13 = v12;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v29 = 0;
        v30 = 0;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        goto LABEL_8;
      }
    }

    else
    {
      v13 = v11;
    }
  }

LABEL_8:
  v14 = objc_opt_self();

  if (sub_10005A5A4(a1, a2, a3))
  {

    v15 = errno.getter();
    v16 = v15;
    LODWORD(v29) = v15;
    sub_100033644(v15, v17, v18);
    swift_willThrowTypedImpl();
  }

  else
  {
    v19 = [v14 defaultManager];
    static String.Encoding.utf8.getter();
    v20 = String.data(using:allowLossyConversion:)();
    v22 = v21;
    result = (*(v7 + 8))(v9, v6);
    if (v22 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    sub_100011FAC(v20, v22);
    v24 = sub_10006B624(a1, a2, 0xD000000000000034, 0x8000000100083890, v20, v22);

    sub_10000B068(v20, v22);
    if (!v24)
    {
      sub_10003FDF8(v20, v22);
      return 1;
    }

    v25 = errno.getter();
    v16 = v25;
    LODWORD(v29) = v25;
    sub_100033644(v25, v26, v27);
    swift_willThrowTypedImpl();
    sub_10003FDF8(v20, v22);
  }

  return v16 == 2;
}

uint64_t sub_10006BA04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF7373616C436E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10006BB6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x687470654478616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865676572 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10006BC80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F746365726964 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E726574746170 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_10006BDA0(void *result)
{
  v1 = result[2];
  v2 = _swiftEmptyArrayStorage;
  v3 = 0;
  if (v1)
  {
    v4 = &_swiftEmptyArrayStorage[4];
    v5 = (result + 4);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v5[3];
      v28 = v5[2];
      v29[0] = v7;
      *(v29 + 9) = *(v5 + 57);
      v8 = v5[1];
      v26 = *v5;
      v27 = v8;
      if (v3)
      {
        result = sub_10006B5BC(&v26, v25);
        v2 = v6;
        v9 = __OFSUB__(v3--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v6[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        sub_10000A0C8(&qword_1000A4AC0, &qword_1000790E8);
        v2 = swift_allocObject();
        v13 = (j__malloc_size(v2) - 32) / 80;
        v2[2] = v12;
        v2[3] = 2 * v13;
        v14 = v6[3] >> 1;
        v15 = 10 * v14;
        v16 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v14;
        v4 = &v2[10 * v14 + 4];
        if (v6[2])
        {
          v17 = v2 < v6 || v2 + 4 >= &v6[v15 + 4];
          if (!v17 && v2 == v6)
          {
            sub_10006B5BC(&v26, v25);
          }

          else
          {
            sub_10006B5BC(&v26, v25);
            memmove(v2 + 4, v6 + 4, v15 * 8);
          }

          v6[2] = 0;
        }

        else
        {
          sub_10006B5BC(&v26, v25);
        }

        v9 = __OFSUB__(v16, 1);
        v3 = v16 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      v18 = v26;
      v19 = v27;
      v20 = v28;
      v21 = v29[0];
      *(v4 + 57) = *(v29 + 9);
      v4[2] = v20;
      v4[3] = v21;
      *v4 = v18;
      v4[1] = v19;
      v4 += 5;
      v5 += 5;
      v6 = v2;
      --v1;
    }

    while (v1);
  }

  v22 = v2[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v9 = __OFSUB__(v23, v3);
    v24 = v23 - v3;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v24;
  }

  return v2;
}

uint64_t sub_10006C0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10006C188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B20;
  if (!qword_1000A4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B20);
  }

  return result;
}

uint64_t sub_10006C1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_10006C2B8(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
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

uint64_t sub_10006C344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006C38C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10006C3E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10006C40C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006C454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006C4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B28;
  if (!qword_1000A4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B28);
  }

  return result;
}

unint64_t sub_10006C524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B30;
  if (!qword_1000A4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B30);
  }

  return result;
}

unint64_t sub_10006C57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B38;
  if (!qword_1000A4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B38);
  }

  return result;
}

unint64_t sub_10006C5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B40;
  if (!qword_1000A4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B40);
  }

  return result;
}

unint64_t sub_10006C624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B50;
  if (!qword_1000A4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B50);
  }

  return result;
}

unint64_t sub_10006C678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B58;
  if (!qword_1000A4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B58);
  }

  return result;
}

unint64_t sub_10006C6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B80;
  if (!qword_1000A4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B80);
  }

  return result;
}

unint64_t sub_10006C720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B88;
  if (!qword_1000A4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B88);
  }

  return result;
}

unint64_t sub_10006C774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B90;
  if (!qword_1000A4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B90);
  }

  return result;
}

unint64_t sub_10006C7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4B98;
  if (!qword_1000A4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B98);
  }

  return result;
}

unint64_t sub_10006C81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BA0;
  if (!qword_1000A4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BA0);
  }

  return result;
}

unint64_t sub_10006C870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BB0;
  if (!qword_1000A4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BB0);
  }

  return result;
}

unint64_t sub_10006C928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BB8;
  if (!qword_1000A4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BB8);
  }

  return result;
}

unint64_t sub_10006C980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BC0;
  if (!qword_1000A4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BC0);
  }

  return result;
}

unint64_t sub_10006C9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BC8;
  if (!qword_1000A4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BC8);
  }

  return result;
}

unint64_t sub_10006CA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BD0;
  if (!qword_1000A4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BD0);
  }

  return result;
}

unint64_t sub_10006CA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BD8;
  if (!qword_1000A4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BD8);
  }

  return result;
}

unint64_t sub_10006CAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BE0;
  if (!qword_1000A4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BE0);
  }

  return result;
}

unint64_t sub_10006CB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BE8;
  if (!qword_1000A4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BE8);
  }

  return result;
}

unint64_t sub_10006CB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BF0;
  if (!qword_1000A4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BF0);
  }

  return result;
}

unint64_t sub_10006CBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4BF8;
  if (!qword_1000A4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BF8);
  }

  return result;
}

unint64_t sub_10006CC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4C00;
  if (!qword_1000A4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C00);
  }

  return result;
}

unint64_t sub_10006CC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4C08;
  if (!qword_1000A4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C08);
  }

  return result;
}

unint64_t sub_10006CCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4C10;
  if (!qword_1000A4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C10);
  }

  return result;
}

unint64_t sub_10006CD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4C18;
  if (!qword_1000A4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C18);
  }

  return result;
}

unint64_t sub_10006CDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4C20;
  if (!qword_1000A4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C20);
  }

  return result;
}

unint64_t sub_10006CDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4C28;
  if (!qword_1000A4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C28);
  }

  return result;
}

unint64_t sub_10006CE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4C30;
  if (!qword_1000A4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C30);
  }

  return result;
}

unint64_t sub_10006CEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4C38;
  if (!qword_1000A4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C38);
  }

  return result;
}

unint64_t sub_10006CF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000A4C40;
  if (!qword_1000A4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C40);
  }

  return result;
}

void *sub_10006CF8C(int a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 88) = 256;
  *(v1 + 32) = a1;
  *(v1 + 64) = xmmword_100079C40;
  result = calloc(1uLL, 0x20uLL);
  if (result)
  {
    *(v1 + 80) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006CFE0()
{
  free(*(v0 + 80));
  sub_1000021A0(*(v0 + 16), *(v0 + 24));

  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_10006D054()
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v55 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v54 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  v10 = __chkstk_darwin(v9);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 56))
  {
    __break(1u);
    goto LABEL_17;
  }

  v52 = v11;
  v53 = v10;
  NotificationPort = IODataQueueAllocateNotificationPort();
  *(v0 + 56) = NotificationPort;
  if (!NotificationPort)
  {
    if (qword_1000A2178 == -1)
    {
LABEL_6:
      v22 = type metadata accessor for Logger();
      sub_100002DB8(v22, qword_1000B1908);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "failed to allocate mach port", v25, 2u);
      }

      sub_10000EEA4(v26, v27, v28);
      swift_allocError();
      *v20 = 1;
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      v21 = 22;
      goto LABEL_9;
    }

LABEL_17:
    swift_once();
    goto LABEL_6;
  }

  v15 = *(v0 + 32);
  atAddress[0] = 0;
  ofSize = 0;
  v16 = IOConnectMapMemory64(v15, 0, mach_task_self_, atAddress, &ofSize, 1u);
  if (v16)
  {
    v19 = v16;
    sub_10000EEA4(v16, v17, v18);
    swift_allocError();
    *v20 = v19;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v21 = 2;
LABEL_9:
    *(v20 + 32) = v21;
    return swift_willThrow();
  }

  v49[0] = v1;
  *(v0 + 40) = atAddress[0];
  v30 = sub_10006D730(0, &qword_1000A2110, OS_dispatch_queue_ptr);
  v49[2] = "achMsg";
  v49[3] = v30;
  static DispatchQoS.unspecified.getter();
  atAddress[0] = _swiftEmptyArrayStorage;
  v49[1] = sub_10006DAC0(&unk_1000A4E70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v50 = v3;
  v51 = v2;
  sub_10000A0C8(&qword_1000A3570, &unk_100076E90);
  sub_10006DB08(&qword_1000A4E80, &qword_1000A3570, &unk_100076E90);
  v31 = v0;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v54 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v33 = *(v0 + 48);
  *(v31 + 48) = v32;
  v34 = v32;

  sub_10006D730(0, &qword_1000A4E88, OS_dispatch_source_ptr);
  v35 = static OS_dispatch_source.makeMachReceiveSource(port:queue:)();

  *(v31 + 64) = v35;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  atAddress[4] = sub_100001D34;
  atAddress[5] = v31;
  atAddress[0] = _NSConcreteStackBlock;
  atAddress[1] = 1107296256;
  atAddress[2] = sub_100001840;
  atAddress[3] = &unk_100098F10;
  v36 = _Block_copy(atAddress);

  static DispatchQoS.unspecified.getter();
  v37 = v55;
  sub_10006D778();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v36);
  (*(v50 + 8))(v37, v51);
  (*(v52 + 8))(v13, v53);

  OS_dispatch_source.activate()();
  v38 = IOConnectSetNotificationPort(*(v31 + 32), 0, *(v31 + 56), 0);
  if (v38)
  {
    v41 = v38;
    sub_10000EEA4(v38, v39, v40);
    swift_allocError();
    *v42 = v41;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    v43 = 3;
LABEL_14:
    *(v42 + 32) = v43;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v44 = *(v31 + 32);
  atAddress[0] = 1;
  v45 = IOConnectCallScalarMethod(v44, 0, atAddress, 1u, 0, 0);
  if (v45)
  {
    v48 = v45;
    sub_10000EEA4(v45, v46, v47);
    swift_allocError();
    *v42 = v48;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    v43 = 4;
    goto LABEL_14;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10006D730(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10006D778()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10006DAC0(&qword_1000A4E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A0C8(&qword_1000A4E98, &qword_100079CD8);
  sub_10006DB08(&unk_1000A4EA0, &qword_1000A4E98, &qword_100079CD8);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}