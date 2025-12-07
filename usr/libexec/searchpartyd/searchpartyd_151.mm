uint64_t sub_1010A3C88()
{
  v1 = *(type metadata accessor for SystemVersionNumber() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v1 + 64) + v2 + v3) & ~v2);

  return sub_1010A2594(v4, v0 + v3, v5);
}

uint64_t sub_1010A3D30()
{
  v1 = *(type metadata accessor for ContinuousClock() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1010A2C04(v2, v3);
}

uint64_t sub_1010A3DD0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C5D8);
  sub_1000076D4(v0, qword_10177C5D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010A3E44(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  swift_getDynamicType();
  sub_1000BC4D4(&qword_1016C63A0, &qword_101401668);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  v5 = a1[3];
  v6 = a1[4];
  sub_1000035D0(a1, v5);
  if ((*(v6 + 8))(v5, v6) == v2 && v7 == v4)
  {

LABEL_8:

    v10 = a1[3];
    v11 = a1[4];
    sub_1000035D0(a1, v10);
    return (*(v11 + 8))(v10, v11);
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_8;
  }

  v13 = a1[3];
  v14 = a1[4];
  sub_1000035D0(a1, v13);
  v18 = (*(v14 + 8))(v13, v14);
  v15._countAndFlagsBits = 23328;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v2;
  v16._object = v4;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 93;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return v18;
}

uint64_t sub_1010A3FE4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1010A403C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v81 = a3;
  v4 = type metadata accessor for URL.DirectoryHint();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  v7 = __chkstk_darwin(v6 - 8);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v68 - v10;
  __chkstk_darwin(v9);
  v13 = &v68 - v12;
  v14 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v75 = &v68 - v19;
  __chkstk_darwin(v18);
  v21 = &v68 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v72 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v73 = &v68 - v27;
  v28 = __chkstk_darwin(v26);
  v69 = &v68 - v29;
  v30 = __chkstk_darwin(v28);
  v70 = &v68 - v31;
  __chkstk_darwin(v30);
  v33 = &v68 - v32;
  v83 = type metadata accessor for URLComponents();
  v34 = *(v83 - 8);
  __chkstk_darwin(v83);
  v36 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  v37 = *(type metadata accessor for SearchpartyAccount(0) + 32);
  v80 = a1;
  sub_1000D5660(a1 + v37, v21);
  v82 = *(v23 + 48);
  if (v82(v21, 1, v22) == 1)
  {
    v71 = v34;
    sub_10000B3A8(v21, &unk_101696AC0, &qword_101390A60);
    v38 = v23;
  }

  else
  {
    (*(v23 + 32))(v33, v21, v22);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    (*(v23 + 8))(v33, v22);
    v38 = v23;
    if ((*(v34 + 48))(v13, 1, v83) != 1)
    {
      v57 = v83;
      (*(v34 + 8))(v36, v83);
      sub_1001322A0(v79);
      (*(v34 + 32))(v36, v13, v57);
      goto LABEL_16;
    }

    v71 = v34;
    sub_10000B3A8(v13, &qword_101699BA8, &unk_1013926B0);
  }

  if (qword_101694848 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177B078);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Missing device url bag entry!", v42, 2u);
  }

  URLComponents.scheme.setter();
  v43 = v79;

  URLComponents.host.setter();
  sub_1001322A0(v43);
  v44 = v75;
  URLComponents.url.getter();
  if (v82(v44, 1, v22) == 1)
  {
    sub_10000B3A8(v44, &unk_101696AC0, &qword_101390A60);
    v34 = v71;
  }

  else
  {
    v79 = v17;
    v84[0] = 0xD00000000000001BLL;
    v84[1] = 0x800000010137A2F0;
    v45 = v38;
    v47 = v77;
    v46 = v78;
    v48 = *(v77 + 104);
    v68 = v11;
    v49 = v76;
    v48(v76, enum case for URL.DirectoryHint.inferFromPath(_:), v78);
    sub_1000DF96C();
    v50 = v69;
    URL.appending<A>(path:directoryHint:)();
    v51 = v47;
    v38 = v45;
    v52 = v49;
    v53 = v68;
    v54 = v83;
    (*(v51 + 8))(v52, v46);
    v55 = *(v38 + 8);
    v55(v44, v22);
    v56 = v70;
    (*(v38 + 32))(v70, v50, v22);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v55(v56, v22);
    v34 = v71;
    if ((*(v71 + 48))(v53, 1, v54) == 1)
    {
      sub_10000B3A8(v53, &qword_101699BA8, &unk_1013926B0);
    }

    else
    {
      v58 = v83;
      (*(v34 + 8))(v36, v83);
      (*(v34 + 32))(v36, v53, v58);
    }

    v17 = v79;
  }

LABEL_16:
  URLComponents.url.getter();
  if (v82(v17, 1, v22) == 1)
  {
    sub_1010A49D4(v80);
    sub_10000B3A8(v17, &unk_101696AC0, &qword_101390A60);
  }

  else
  {
    strcpy(v84, "fetchDevices");
    BYTE5(v84[1]) = 0;
    HIWORD(v84[1]) = -5120;
    v60 = v76;
    v59 = v77;
    v61 = v78;
    (*(v77 + 104))(v76, enum case for URL.DirectoryHint.inferFromPath(_:), v78);
    sub_1000DF96C();
    v62 = v72;
    URL.appending<A>(path:directoryHint:)();
    (*(v59 + 8))(v60, v61);
    v63 = *(v38 + 8);
    v63(v17, v22);
    v64 = v73;
    (*(v38 + 32))(v73, v62, v22);
    v65 = v74;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    sub_1010A49D4(v80);
    v63(v64, v22);
    if ((*(v34 + 48))(v65, 1, v83) == 1)
    {
      sub_10000B3A8(v65, &qword_101699BA8, &unk_1013926B0);
    }

    else
    {
      v66 = v83;
      (*(v34 + 8))(v36, v83);
      (*(v34 + 32))(v36, v65, v66);
    }
  }

  return (*(v34 + 32))(v81, v36, v83);
}

uint64_t sub_1010A49D4(uint64_t a1)
{
  v2 = type metadata accessor for SearchpartyAccount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FindMyServiceDeviceListEndpoint(uint64_t a1)
{
  result = qword_1016C6400;
  if (!qword_1016C6400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1010A4AA4@<Q0>(uint64_t a1@<X8>)
{
  sub_100A22048(v8);
  v2 = v8[11];
  *(a1 + 160) = v8[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v9;
  v3 = v8[7];
  *(a1 + 96) = v8[6];
  *(a1 + 112) = v3;
  v4 = v8[9];
  *(a1 + 128) = v8[8];
  *(a1 + 144) = v4;
  v5 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v5;
  v6 = v8[5];
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v6;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1010A4B54@<Q0>(uint64_t a1@<X8>)
{
  sub_100A22ACC(v8);
  v2 = v8[11];
  *(a1 + 160) = v8[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v9;
  v3 = v8[7];
  *(a1 + 96) = v8[6];
  *(a1 + 112) = v3;
  v4 = v8[9];
  *(a1 + 128) = v8[8];
  *(a1 + 144) = v4;
  v5 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v5;
  v6 = v8[5];
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v6;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1010A4BEC@<X0>(__int128 *a1@<X0>, void (*a2)(__int128 *)@<X3>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v17 = a1[2];
  v18 = v5;
  v19 = a1[4];
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  a2(&v15);
  v7 = v26;
  *(a3 + 160) = v25;
  *(a3 + 176) = v7;
  *(a3 + 192) = v27;
  v8 = v22;
  *(a3 + 96) = v21;
  *(a3 + 112) = v8;
  v9 = v24;
  *(a3 + 128) = v23;
  *(a3 + 144) = v9;
  v10 = v18;
  *(a3 + 32) = v17;
  *(a3 + 48) = v10;
  v11 = v20;
  *(a3 + 64) = v19;
  *(a3 + 80) = v11;
  v12 = v16;
  *a3 = v15;
  *(a3 + 16) = v12;
  return sub_1010A4E44(a1, &v14);
}

uint64_t sub_1010A4CA0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(_OWORD *)@<X4>, uint64_t a4@<X8>)
{
  *&v14[0] = a1;
  *(&v14[0] + 1) = a2;
  a3(v14);
  v7 = v14[11];
  *(a4 + 160) = v14[10];
  *(a4 + 176) = v7;
  *(a4 + 192) = v15;
  v8 = v14[7];
  *(a4 + 96) = v14[6];
  *(a4 + 112) = v8;
  v9 = v14[9];
  *(a4 + 128) = v14[8];
  *(a4 + 144) = v9;
  v10 = v14[3];
  *(a4 + 32) = v14[2];
  *(a4 + 48) = v10;
  v11 = v14[5];
  *(a4 + 64) = v14[4];
  *(a4 + 80) = v11;
  v12 = v14[1];
  *a4 = v14[0];
  *(a4 + 16) = v12;
  return sub_100017D5C(a1, a2);
}

uint64_t sub_1010A4D44(unsigned __int16 a1)
{
  if (a1 > 0x107u)
  {
    if (a1 > 0x10Au)
    {
      switch(a1)
      {
        case 0x10Bu:
          return 0;
        case 0x10Cu:
          return 1;
        case 0x204u:
          return 11;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x108u:
          return 10;
        case 0x109u:
          return 4;
        case 0x10Au:
          return 5;
      }
    }
  }

  else if (a1 > 0x102u)
  {
    switch(a1)
    {
      case 0x103u:
        return 7;
      case 0x104u:
        return 8;
      case 0x107u:
        return 9;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x100u:
        return 2;
      case 0x101u:
        return 3;
      case 0x102u:
        return 6;
    }
  }

  return 12;
}

unint64_t sub_1010A4EB4()
{
  result = qword_1016C6438;
  if (!qword_1016C6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6438);
  }

  return result;
}

uint64_t sub_1010A4F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_101124390(0, v1, 0);
  v3 = v2 + 56;
  result = _HashTable.startBucket.getter();
  if (result < 0 || result >= 1 << *(v2 + 32))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v25 = v2 + 64;
    v26 = v1;
    v5 = *(v2 + 36);
    v6 = 1;
    v27 = v2 + 56;
    v28 = v2;
    while ((*(v3 + 8 * (result >> 6)) & (1 << result)) != 0)
    {
      v31 = result >> 6;
      v32 = 1 << result;
      v29 = v6;
      v30 = v5;
      v7 = *(v2 + 48) + 160 * result;
      v8 = *(v7 + 24);
      v47 = *(v7 + 16);
      v48 = *v7;
      v46 = *(v7 + 32);
      v33 = *(v7 + 40);
      v9 = *(v7 + 56);
      v10 = *(v7 + 72);
      v44 = *(v7 + 64);
      v45 = *(v7 + 48);
      v11 = *(v7 + 88);
      v12 = *(v7 + 104);
      v42 = *(v7 + 96);
      v43 = *(v7 + 80);
      v13 = *(v7 + 120);
      v41 = *(v7 + 112);
      v39 = *(v7 + 129);
      v40 = *(v7 + 128);
      v37 = *(v7 + 131);
      v38 = *(v7 + 130);
      v36 = *(v7 + 136);
      v14 = *(v7 + 152);
      v50 = *(v7 + 144);
      v15 = _swiftEmptyArrayStorage[2];
      v34 = _swiftEmptyArrayStorage[3];
      v49 = result;
      v35 = *(v7 + 8);

      if (v15 >= v34 >> 1)
      {
        sub_101124390((v34 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[20 * v15];
      v16[4] = v48;
      v16[5] = v35;
      v16[6] = v47;
      v16[7] = v8;
      v16[8] = v46;
      v16[9] = v33;
      v16[10] = v45;
      v16[11] = v9;
      v16[12] = v44;
      v16[13] = v10;
      v16[14] = v43;
      v16[15] = v11;
      v16[16] = v42;
      v16[17] = v12;
      v16[18] = v41;
      v16[19] = v13;
      *(v16 + 160) = v40;
      *(v16 + 161) = v39;
      *(v16 + 162) = v38;
      *(v16 + 163) = v37;
      *(v16 + 168) = v36;
      *(v16 + 43) = *&v51[3];
      *(v16 + 169) = *v51;
      v16[22] = v50;
      v16[23] = v14;
      v2 = v28;
      v17 = 1 << *(v28 + 32);
      result = v49;
      if (v49 >= v17)
      {
        goto LABEL_25;
      }

      v3 = v27;
      v18 = *(v27 + 8 * v31);
      if ((v18 & v32) == 0)
      {
        goto LABEL_26;
      }

      if (v30 != *(v28 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v49 & 0x3F));
      if (v19)
      {
        result = __clz(__rbit64(v19)) | v49 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v31 << 6;
        v21 = v31 + 1;
        v22 = (v25 + 8 * v31);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1000BB408(v49, v30, 0);
            result = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        sub_1000BB408(v49, v30, 0);
        result = v17;
      }

LABEL_18:
      if (v29 == v26)
      {
        return _swiftEmptyArrayStorage;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v5 = *(v28 + 36);
        v6 = v29 + 1;
        if (result < 1 << *(v28 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1010A528C()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocationsRelayAction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  v9 = sub_1000BC4D4(&qword_1016C6520, &qword_101401A20);
  __chkstk_darwin(v9 - 8);
  v11 = &v16[-v10];
  swift_storeEnumTagMultiPayload();
  sub_1010AB93C(v8, v6, type metadata accessor for SecureLocationsRelayAction);
  v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  sub_1010AC370(v6, v13 + v12, type metadata accessor for SecureLocationsRelayAction);
  v14 = type metadata accessor for SecureLocationsRelayAction.Response(0);

  unsafeFromAsyncTask<A>(_:)();
  sub_1010A7CB8(v8, type metadata accessor for SecureLocationsRelayAction);

  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  return sub_10000B3A8(v11, &qword_1016C6520, &qword_101401A20);
}

void *sub_1010A5510()
{
  v1 = type metadata accessor for SecureLocationsRelayAction(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v15[-v6];
  v8 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  __chkstk_darwin(v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_storeEnumTagMultiPayload();
  sub_1010AB93C(v7, v5, type metadata accessor for SecureLocationsRelayAction);
  v11 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  sub_1010AC370(v5, v12 + v11, type metadata accessor for SecureLocationsRelayAction);

  unsafeFromAsyncTask<A>(_:)();
  sub_1010A7CB8(v7, type metadata accessor for SecureLocationsRelayAction);

  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = sub_1010A4F08(*v10);

    return v13;
  }

  else
  {
    sub_1010A7CB8(v10, type metadata accessor for SecureLocationsRelayAction.Response);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1010A58A4()
{
  sub_1000BB27C(v0[5], v0[6]);
  sub_1000BB27C(v0[7], v0[8]);
  sub_1000BB27C(v0[9], v0[10]);
  sub_1000BB27C(v0[11], v0[12]);
  sub_1000BB27C(v0[13], v0[14]);
  sub_1000BB27C(v0[15], v0[16]);

  return swift_deallocClassInstance();
}

uint64_t sub_1010A5928(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a3;
  v23 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v22;
  *(v16 + 24) = a4;
  *(v16 + 32) = v17;
  v18 = v23 & 1;
  *(v16 + 40) = v23 & 1;
  aBlock[4] = sub_10040817C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016645B0;
  v19 = _Block_copy(aBlock);

  sub_1001DB9A4(v17, v18);
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1010A7C70(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v7, v5);
  (*(v8 + 8))(v10, v24);
}

uint64_t sub_1010A5CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 104) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  *(v8 + 48) = type metadata accessor for SecureLocationsRelayAction(0);
  *(v8 + 56) = swift_task_alloc();
  *(v8 + 64) = type metadata accessor for SecureLocationsRelayAction.Response(0);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1010A5DC8, 0, 0);
}

uint64_t sub_1010A5DC8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 104);
  *(v1 + 8) = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1010A5E8C;
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);

  return sub_1010A6200(v4, v5);
}

uint64_t sub_1010A5E8C()
{
  v2 = *(*v1 + 56);
  *(*v1 + 96) = v0;

  sub_1010A7CB8(v2, type metadata accessor for SecureLocationsRelayAction);
  if (v0)
  {
    v3 = sub_1010A6150;
  }

  else
  {
    v3 = sub_1010A5FD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010A5FD0()
{
  sub_1010AB93C(v0[10], v0[9], type metadata accessor for SecureLocationsRelayAction.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  v3 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1010A5928(*v2, 0, v0[4], v0[5]);

    sub_1010A7CB8(v3, type metadata accessor for SecureLocationsRelayAction.Response);
  }

  else
  {
    sub_1010A7CB8(v2, type metadata accessor for SecureLocationsRelayAction.Response);
    sub_10057C844();
    v4 = swift_allocError();
    swift_willThrow();
    sub_1010A7CB8(v3, type metadata accessor for SecureLocationsRelayAction.Response);
    v5 = v0[4];
    v6 = v0[5];
    swift_errorRetain();
    sub_1010A5928(v4, 1, v5, v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010A6150()
{
  v1 = v0[12];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  sub_1010A5928(v1, 1, v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1010A6200(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for ClientOrigin();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1010A62C0, 0, 0);
}

uint64_t sub_1010A62C0()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v0[7] = PropertyListEncoder.init()();
  type metadata accessor for SecureLocationsRelayAction(0);
  sub_1010A7C70(&qword_1016C6510, type metadata accessor for SecureLocationsRelayAction, &unk_101401DF0);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[8] = v1;
  v0[9] = v2;
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v1;
  v7 = v2;
  type metadata accessor for Session();
  (*(v4 + 104))(v3, enum case for ClientOrigin.other(_:), v5);
  v0[10] = static Session.sharedSession(origin:)();
  (*(v4 + 8))(v3, v5);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1010A64B0;

  return Session.processIDSServiceMessage(_:)(v6, v7);
}

uint64_t sub_1010A64B0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_1010A6738;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_1010A65E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1010A65E4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];
  v4 = v0[8];
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for SecureLocationsRelayAction.Response(0);
  sub_1010A7C70(&qword_1016C6518, type metadata accessor for SecureLocationsRelayAction.Response, &unk_101401DC8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100016590(v1, v2);

  sub_100016590(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1010A6738()
{
  v1 = v0[9];
  v2 = v0[8];

  sub_100016590(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1010A67BC(int a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC488();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = v20;
  aBlock[4] = sub_1002FB50C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016644C0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1010A7C70(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_1010A6B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v11;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 104) = a5;
  *(v8 + 16) = a4;
  *(v8 + 56) = type metadata accessor for SecureLocationsRelayAction(0);
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 72) = type metadata accessor for SecureLocationsRelayAction.Response(0);
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1010A6C40, 0, 0);
}

uint64_t sub_1010A6C40()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 104);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  swift_storeEnumTagMultiPayload();

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1010A6D04;
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  return sub_1010A6200(v5, v6);
}

uint64_t sub_1010A6D04()
{
  v2 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  sub_1010A7CB8(v2, type metadata accessor for SecureLocationsRelayAction);
  if (v0)
  {
    v3 = sub_1010A6F04;
  }

  else
  {
    v3 = sub_1010A6E48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010A6E48()
{
  v1 = v0[10];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[5];
  v4 = v0[6];
  if (EnumCaseMultiPayload)
  {
    sub_1010A7CB8(v1, type metadata accessor for SecureLocationsRelayAction.Response);
    v5 = 0;
  }

  else
  {
    v5 = *v1;
  }

  sub_1010A67BC(v5, v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1010A6F04()
{
  sub_1010A67BC(0, v0[5], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1010A6F88@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a2;
  v32 = a4;
  v29 = a6;
  v9 = type metadata accessor for SecureLocationsRelayAction(0);
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  v11 = __chkstk_darwin(v9);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v15 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v16 = __chkstk_darwin(v15);
  v30 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v29 - v18;
  v20 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
  sub_1010AB93C(a5, &v14[*(v20 + 24)], type metadata accessor for MessagingOptions);
  *v14 = a1;
  v21 = v32;
  *(v14 + 1) = v31;
  *(v14 + 2) = a3;
  *(v14 + 3) = v21;
  *(v14 + 2) = xmmword_10138BBF0;
  swift_storeEnumTagMultiPayload();
  sub_1010AB93C(v14, v12, type metadata accessor for SecureLocationsRelayAction);
  v22 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v34;
  sub_1010AC370(v12, v23 + v22, type metadata accessor for SecureLocationsRelayAction);
  sub_100017D5C(a3, v21);

  v24 = v35;
  unsafeFromAsyncTask<A>(_:)();
  sub_1010A7CB8(v14, type metadata accessor for SecureLocationsRelayAction);

  if (!v24)
  {
    v26 = v29;
    v27 = v30;
    sub_1010AB93C(v19, v30, type metadata accessor for SecureLocationsRelayAction.Response);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1010A7CB8(v19, type metadata accessor for SecureLocationsRelayAction.Response);
      v28 = type metadata accessor for UUID();
      return (*(*(v28 - 8) + 32))(v26, v27, v28);
    }

    else
    {
      sub_1010A7CB8(v27, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      swift_allocError();
      swift_willThrow();
      return sub_1010A7CB8(v19, type metadata accessor for SecureLocationsRelayAction.Response);
    }
  }

  return result;
}

uint64_t sub_1010A730C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v16 = swift_allocObject();
  v16[2] = v20;
  v16[3] = a3;
  v16[4] = a1;
  aBlock[4] = sub_1008909DC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101664538;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1010A7C70(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_1010A76C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v11;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 112) = a5;
  *(v8 + 16) = a4;
  *(v8 + 56) = type metadata accessor for SecureLocationsRelayAction(0);
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 72) = type metadata accessor for SecureLocationsRelayAction.Response(0);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1010A77A4, 0, 0);
}

uint64_t sub_1010A77A4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 112);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  swift_storeEnumTagMultiPayload();

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1010A7868;
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);

  return sub_1010A6200(v5, v6);
}

uint64_t sub_1010A7868()
{
  v2 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  sub_1010A7CB8(v2, type metadata accessor for SecureLocationsRelayAction);
  if (v0)
  {
    v3 = sub_1010A7AD0;
  }

  else
  {
    v3 = sub_1010A79AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010A79AC()
{
  sub_1010AB93C(v0[11], v0[10], type metadata accessor for SecureLocationsRelayAction.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[5];
  v4 = v0[6];
  if (EnumCaseMultiPayload == 2)
  {
    v6 = *v2;
  }

  else
  {
    sub_1010A7CB8(v2, type metadata accessor for SecureLocationsRelayAction.Response);
    v6 = sub_10090BE98(_swiftEmptyArrayStorage);
  }

  sub_1010A730C(v6, v5, v4);

  sub_1010A7CB8(v3, type metadata accessor for SecureLocationsRelayAction.Response);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010A7AD0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_10090BE98(_swiftEmptyArrayStorage);
  sub_1010A730C(v3, v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1010A7B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_1010A6200(a1, a3);
}

uint64_t sub_1010A7C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1010A7CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1010A7D58(void *a1, char a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016C6A10, &qword_101401F38);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_1010AE560();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_1010AD50C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_1000BC4D4(&qword_1016A4958, &qword_1013B1330);
    sub_1010AD404();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1010A7F04(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C6980, &qword_101401EF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1010ACA84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v3 + 8);
  v9 = *(v3 + 16);
  v11 = *(v3 + 24);
  LOBYTE(v16) = *v3;
  v17 = v10;
  v18 = v9;
  v19 = v11;
  v15 = 0;
  sub_100017D5C(v9, v11);
  sub_1000BC4D4(&qword_1016C6990, &qword_101401F00);
  sub_1000041A4(&qword_1016C6998, &qword_1016C6990, &qword_101401F00, &protocol conformance descriptor for Message<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v18, v19);
  if (!v2)
  {
    v12 = *(v3 + 40);
    v16 = *(v3 + 32);
    v17 = v12;
    v15 = 1;
    sub_10002E98C(v16, v12);
    sub_1010ACAD8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v16, v17);
    type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    LOBYTE(v16) = 2;
    type metadata accessor for MessagingOptions(0);
    sub_1010A7C70(&qword_1016C69A8, type metadata accessor for MessagingOptions, &unk_101401C98);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1010A817C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_1000BC4D4(&qword_1016C68C8, &qword_101401EA0);
  v4 = *(v3 - 8);
  v85 = v3;
  v86 = v4;
  __chkstk_darwin(v3);
  v95 = &v70 - v5;
  v6 = sub_1000BC4D4(&qword_1016C68D0, &qword_101401EA8);
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v89 = &v70 - v7;
  v82 = sub_1000BC4D4(&qword_1016C68D8, &qword_101401EB0);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v94 = &v70 - v8;
  v80 = sub_1000BC4D4(&qword_1016C68E0, &qword_101401EB8);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v88 = &v70 - v9;
  v74 = sub_1000BC4D4(&qword_1016C68E8, &qword_101401EC0);
  v78 = *(v74 - 8);
  __chkstk_darwin(v74);
  v87 = &v70 - v10;
  v76 = sub_1000BC4D4(&qword_1016C68F0, &qword_101401EC8);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v92 = &v70 - v11;
  v93 = sub_1000BC4D4(&qword_1016C68F8, &unk_101401ED0);
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v13 = &v70 - v12;
  v91 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v14 = __chkstk_darwin(v91);
  v77 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v70 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v70 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v70 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v70 - v26;
  __chkstk_darwin(v25);
  v29 = &v70 - v28;
  v30 = a1[3];
  v98 = a1;
  sub_1000035D0(a1, v30);
  sub_1010AC5D0();
  v31 = v97;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v31)
  {
    v70 = v27;
    v71 = v24;
    v72 = v21;
    v32 = v92;
    v73 = v18;
    v33 = v94;
    v34 = v95;
    v97 = v29;
    v35 = v93;
    v36 = KeyedDecodingContainer.allKeys.getter();
    v37 = (2 * *(v36 + 16)) | 1;
    v99 = v36;
    v100 = v36 + 32;
    v101 = 0;
    v102 = v37;
    v38 = sub_1002E2814();
    if (v38 != 6 && v101 == v102 >> 1)
    {
      if (v38 <= 2u)
      {
        if (v38)
        {
          v39 = v13;
          v40 = v35;
          v41 = v90;
          if (v38 == 1)
          {
            LOBYTE(v103) = 1;
            sub_1010AC9DC();
            v42 = v87;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v43 = v96;
            v44 = v74;
            v45 = KeyedDecodingContainer.decode(_:forKey:)();
            (*(v78 + 8))(v42, v44);
            (*(v43 + 8))(v39, v40);
            swift_unknownObjectRelease();
            v63 = v45 & 1;
            v64 = v70;
            *v70 = v63;
            swift_storeEnumTagMultiPayload();
            v65 = v97;
            sub_1010AC370(v64, v97, type metadata accessor for SecureLocationsRelayAction.Response);
          }

          else
          {
            LOBYTE(v103) = 2;
            sub_1010AC8FC();
            v57 = v88;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v58 = v96;
            sub_1000BC4D4(&qword_1016C6960, &qword_101401EF0);
            sub_1010AC950();
            v62 = v80;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v79 + 8))(v57, v62);
            (*(v58 + 8))(v39, v40);
            swift_unknownObjectRelease();
            v68 = v71;
            *v71 = v103;
            swift_storeEnumTagMultiPayload();
            v69 = v68;
            v65 = v97;
            sub_1010AC370(v69, v97, type metadata accessor for SecureLocationsRelayAction.Response);
          }
        }

        else
        {
          LOBYTE(v103) = 0;
          sub_1010ACA30();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v53 = v35;
          v41 = v90;
          (*(v75 + 8))(v32, v76);
          (*(v96 + 8))(v13, v53);
          swift_unknownObjectRelease();
          v65 = v97;
          swift_storeEnumTagMultiPayload();
        }

        goto LABEL_19;
      }

      if (v38 == 3)
      {
        LOBYTE(v103) = 3;
        sub_1010AC720();
        v54 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v55 = v96;
        sub_1000BC4D4(&qword_1016C6938, &qword_101401EE8);
        sub_1010AC774();
        v56 = v82;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v81 + 8))(v54, v56);
        (*(v55 + 8))(v13, v35);
        swift_unknownObjectRelease();
        v66 = v72;
        *v72 = v103;
      }

      else
      {
        v50 = v96;
        if (v38 != 4)
        {
          LOBYTE(v103) = 5;
          sub_1010AC624();
          v59 = v34;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for UUID();
          sub_1010A7C70(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v60 = v77;
          v61 = v85;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v86 + 8))(v59, v61);
          (*(v50 + 8))(v13, v35);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v67 = v60;
LABEL_18:
          v65 = v97;
          sub_1010AC370(v67, v97, type metadata accessor for SecureLocationsRelayAction.Response);
          v41 = v90;
LABEL_19:
          sub_1010AC370(v65, v41, type metadata accessor for SecureLocationsRelayAction.Response);
          return sub_100007BAC(v98);
        }

        LOBYTE(v103) = 4;
        sub_1010AC678();
        v51 = v89;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1000BC4D4(&qword_1016C6918, &qword_101401EE0);
        sub_1010AC82C(&qword_1016C6920, &qword_1016C6918, &qword_101401EE0, sub_1010AC6CC);
        v52 = v84;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v83 + 8))(v51, v52);
        (*(v50 + 8))(v13, v35);
        swift_unknownObjectRelease();
        v66 = v73;
        *v73 = v103;
      }

      swift_storeEnumTagMultiPayload();
      v67 = v66;
      goto LABEL_18;
    }

    v46 = type metadata accessor for DecodingError();
    swift_allocError();
    v48 = v47;
    sub_1000BC4D4(&qword_10169C868, &qword_101398420);
    *v48 = v91;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v46 - 8) + 104))(v48, enum case for DecodingError.typeMismatch(_:), v46);
    swift_willThrow();
    (*(v96 + 8))(v13, v35);
    swift_unknownObjectRelease();
  }

  return sub_100007BAC(v98);
}

uint64_t sub_1010A8F3C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016C6828, &qword_101401E58);
  v73 = *(v2 - 8);
  v74 = v2;
  __chkstk_darwin(v2);
  v71 = &v52 - v3;
  v4 = sub_1000BC4D4(&qword_1016C6830, &qword_101401E60);
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4);
  v72 = &v52 - v5;
  v6 = sub_1000BC4D4(&qword_1016C6838, &qword_101401E68);
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v68 = &v52 - v7;
  v8 = sub_1000BC4D4(&qword_1016C6840, &qword_101401E70);
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v65 = &v52 - v9;
  v63 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
  __chkstk_darwin(v63);
  v64 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000BC4D4(&qword_1016C6848, &qword_101401E78);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v52 - v11;
  v59 = sub_1000BC4D4(&qword_1016C6850, &qword_101401E80);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v52 - v12;
  v56 = sub_1000BC4D4(&qword_1016C6858, &qword_101401E88);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v14 = &v52 - v13;
  v54 = sub_1000BC4D4(&qword_1016C6860, &qword_101401E90);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v16 = &v52 - v15;
  v17 = type metadata accessor for SecureLocationsRelayAction(0);
  __chkstk_darwin(v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_1016C6868, &qword_101401E98);
  v79 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  sub_1000035D0(a1, a1[3]);
  sub_1010AC220();
  v78 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1010AB93C(v77, v19, type metadata accessor for SecureLocationsRelayAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v24 = v78;
      if (EnumCaseMultiPayload == 2)
      {
        v35 = v19;
        v36 = v64;
        sub_1010AC370(v35, v64, type metadata accessor for SecureLocationsRelayAction.SendMessage);
        v80[0] = 4;
        sub_1010AC3D8();
        v37 = v65;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1010A7C70(&qword_1016C6898, type metadata accessor for SecureLocationsRelayAction.SendMessage, &unk_101401D38);
        v38 = v67;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v66 + 8))(v37, v38);
        sub_1010A7CB8(v36, type metadata accessor for SecureLocationsRelayAction.SendMessage);
        return (*(v79 + 8))(v24, v20);
      }

      v48 = *v19;
      v50 = *(v19 + 1);
      v49 = *(v19 + 2);
      v80[0] = 5;
      sub_1010AC31C();
      v32 = v68;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v80[0] = v48;
      v81 = v50;
      v82 = v49;
      sub_100157F84();
      v33 = v70;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v34 = v69;
    }

    else
    {
      v24 = v78;
      if (!EnumCaseMultiPayload)
      {
        v25 = *v19;
        v26 = *(v19 + 1);
        v80[0] = 2;
        sub_1010AC480();
        v27 = v57;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v80[0] = v25;
        v81 = v26;
        sub_1010AC4D4();
        v28 = v59;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v58 + 8))(v27, v28);
LABEL_17:
        (*(v79 + 8))(v24, v20);
      }

      v44 = *v19;
      v46 = *(v19 + 1);
      v45 = *(v19 + 2);
      v80[0] = 3;
      sub_1010AC42C();
      v32 = v60;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v80[0] = v44;
      v81 = v46;
      v82 = v45;
      sub_100157F84();
      v33 = v62;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v34 = v61;
    }

LABEL_16:
    (*(v34 + 8))(v32, v33);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v80[0] = 7;
      sub_1010AC274();
      v51 = v71;
      v40 = v78;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v74;
      v41 = *(v73 + 8);
      v42 = v51;
      goto LABEL_19;
    }

    v80[0] = 1;
    sub_1010AC528();
    v40 = v78;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = *(v55 + 8);
    v42 = v14;
    v43 = &v84;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v29 = *v19;
      v31 = *(v19 + 1);
      v30 = *(v19 + 2);
      v80[0] = 6;
      sub_1010AC2C8();
      v32 = v72;
      v24 = v78;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v80[0] = v29;
      v81 = v31;
      v82 = v30;
      sub_100157F84();
      v33 = v76;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v34 = v75;
      goto LABEL_16;
    }

    v80[0] = 0;
    sub_1010AC57C();
    v40 = v78;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = *(v53 + 8);
    v42 = v16;
    v43 = &v83;
  }

  v47 = *(v43 - 32);
LABEL_19:
  v41(v42, v47);
  return (*(v79 + 8))(v40, v20);
}

uint64_t sub_1010A99C0()
{
  if (*v0)
  {
    return 0x74616E6974736564;
  }

  else
  {
    return 0x696C696261706163;
  }
}

uint64_t sub_1010A9A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696C696261706163 && a2 == 0xEA00000000007974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69)
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

uint64_t sub_1010A9AF0(uint64_t a1)
{
  v2 = sub_1010AE560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9B2C(uint64_t a1)
{
  v2 = sub_1010AE560();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9B88()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_1010A9BE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1010ACB2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1010A9C0C(uint64_t a1)
{
  v2 = sub_1010ACA84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9C48(uint64_t a1)
{
  v2 = sub_1010ACA84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9C9C(uint64_t a1)
{
  v2 = sub_1010AC8FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9CD8(uint64_t a1)
{
  v2 = sub_1010AC8FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9D14(uint64_t a1)
{
  v2 = sub_1010AC9DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9D50(uint64_t a1)
{
  v2 = sub_1010AC9DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1010A9D8C()
{
  v1 = 1684631414;
  v2 = *v0;
  v3 = 0xD000000000000013;
  v4 = 0x73656369766564;
  if (v2 != 4)
  {
    v4 = 1684632949;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 1819242338;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1010A9E38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1010ACC44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1010A9E60(uint64_t a1)
{
  v2 = sub_1010AC5D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9E9C(uint64_t a1)
{
  v2 = sub_1010AC5D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9ED8(uint64_t a1)
{
  v2 = sub_1010AC720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9F14(uint64_t a1)
{
  v2 = sub_1010AC720();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9F50(uint64_t a1)
{
  v2 = sub_1010AC678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A9F8C(uint64_t a1)
{
  v2 = sub_1010AC678();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010A9FC8(uint64_t a1)
{
  v2 = sub_1010AC624();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA004(uint64_t a1)
{
  v2 = sub_1010AC624();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA040(uint64_t a1)
{
  v2 = sub_1010ACA30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA07C(uint64_t a1)
{
  v2 = sub_1010ACA30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA0D0(uint64_t a1)
{
  v2 = sub_1010AC274();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA10C(uint64_t a1)
{
  v2 = sub_1010AC274();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1010AA148()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 0x63697665446C6C61;
  if (v1 == 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v4 = 0x7373654D646E6573;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x6261706143736168;
  if (v1 != 2)
  {
    v5 = 0x7473696765527369;
  }

  if (*v0)
  {
    v2 = 1886352499;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1010AA25C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1010ACE40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1010AA284(uint64_t a1)
{
  v2 = sub_1010AC220();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA2C0(uint64_t a1)
{
  v2 = sub_1010AC220();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA2FC(uint64_t a1)
{
  v2 = sub_1010AC480();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA338(uint64_t a1)
{
  v2 = sub_1010AC480();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA374(uint64_t a1)
{
  v2 = sub_1010AC31C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA3B0(uint64_t a1)
{
  v2 = sub_1010AC31C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA3EC(uint64_t a1)
{
  v2 = sub_1010AC42C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA428(uint64_t a1)
{
  v2 = sub_1010AC42C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA464(uint64_t a1)
{
  v2 = sub_1010AC2C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA4A0(uint64_t a1)
{
  v2 = sub_1010AC2C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA4DC(uint64_t a1)
{
  v2 = sub_1010AC3D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA518(uint64_t a1)
{
  v2 = sub_1010AC3D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA554(uint64_t a1)
{
  v2 = sub_1010AC57C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA590(uint64_t a1)
{
  v2 = sub_1010AC57C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA5CC(uint64_t a1)
{
  v2 = sub_1010AC528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA608(uint64_t a1)
{
  v2 = sub_1010AC528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AA65C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016C69C0, &qword_101401F10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_1010AD268();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1010AA7C4(uint64_t a1)
{
  v2 = sub_1010AD268();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AA800(uint64_t a1)
{
  v2 = sub_1010AD268();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1010AA83C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1010AD0F4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1010AA884(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x74756F656D6974;
    if (a1 == 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 == 5)
    {
      v7 = 0x46646E4165726966;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0x694C6F54656D6974;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74616E6974736564;
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
}

uint64_t sub_1010AA9F0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C69E0, &qword_101401F28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1010AD2BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  type metadata accessor for UUID();
  sub_1010A7C70(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for MessagingOptions(0);
    *&v11 = *(v3 + v9[5]);
    v12 = 1;
    sub_1000BC4D4(&qword_1016A4958, &qword_1013B1330);
    sub_1010AD404();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v11 = *(v3 + v9[10]);
    v12 = 6;
    sub_1000BC4D4(&qword_1016C6728, &qword_101401B00);
    sub_1010AD488();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11 = *(v3 + v9[11]);
    v12 = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + v9[13]);
    v12 = 9;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1010AADB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v38 = &v31 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000BC4D4(&qword_1016C69C8, &unk_101401F18);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v31 - v8;
  v10 = type metadata accessor for MessagingOptions(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 28);
  v36 = v6;
  (*(v6 + 56))(&v13[v14], 1, 1, v5);
  sub_1000035D0(a1, a1[3]);
  sub_1010AD2BC();
  v41 = v9;
  v15 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    sub_100007BAC(a1);
    return sub_10000B3A8(&v13[v14], &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v16 = v37;
    v17 = v38;
    v42 = v14;
    v33 = v13;
    v34 = a1;
    v32 = v10;
    LOBYTE(v43) = 0;
    v18 = sub_1010A7C70(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v18;
    v19 = v33;
    (*(v36 + 32))(v33, v39, v5);
    sub_1000BC4D4(&qword_1016A4958, &qword_1013B1330);
    v44 = 1;
    sub_1010AD310();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v32;
    *&v19[v32[5]] = v43;
    LOBYTE(v43) = 2;
    v39 = 0;
    v19[v20[6]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v43) = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1010AD394(v17, &v19[v42]);
    LOBYTE(v43) = 4;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v32;
    v23 = &v19[v32[8]];
    *v23 = v21;
    v23[8] = v24 & 1;
    LOBYTE(v43) = 5;
    v19[v22[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1000BC4D4(&qword_1016C6728, &qword_101401B00);
    v44 = 6;
    sub_1010AC82C(&qword_1016C6948, &qword_1016C6728, &qword_101401B00, sub_1010AC8A8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v19[v22[10]] = v43;
    v44 = 7;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v33;
    *&v33[v32[11]] = v43;
    LOBYTE(v43) = 8;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27 = &v25[v32[12]];
    *v27 = v26;
    v27[1] = v28;
    v44 = 9;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v41, v40);
    v29 = v33;
    *&v33[v32[13]] = v43;
    sub_1010AB93C(v29, v35, type metadata accessor for MessagingOptions);
    sub_100007BAC(v34);
    return sub_1010A7CB8(v29, type metadata accessor for MessagingOptions);
  }
}

unint64_t sub_1010AB5CC(char a1)
{
  result = 0x4449657571696E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6564496C65646F6DLL;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x56746375646F7270;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x65636976726573;
      break;
    case 8:
      result = 0x6C6C61636F4C7369;
      break;
    case 9:
      result = 0x6576697463417369;
      break;
    case 10:
      result = 0x79627261654E7369;
      break;
    case 11:
      result = 0x63656E6E6F437369;
      break;
    case 12:
      result = 0x74616E6974736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1010AB768@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1010AD560(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1010AB790(uint64_t a1)
{
  v2 = sub_1010AD2BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AB7CC(uint64_t a1)
{
  v2 = sub_1010AD2BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1010AB840@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1010AD8B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1010AB868(uint64_t a1)
{
  v2 = sub_1010AE4A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010AB8A4(uint64_t a1)
{
  v2 = sub_1010AE4A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1010AB8E0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1010ADCF0(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_1010AB93C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1010AB9A4(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsRelayAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1010A7B80(a1, v6, v1 + v5);
}

void sub_1010ABAC0(uint64_t a1)
{
  sub_1010AC01C(319, &qword_1016C6590, sub_10108ACCC, &type metadata for BeaconSharingMessageType, type metadata accessor for Message);
  if (v1 <= 0x3F)
  {
    sub_1010ABDDC(319, &unk_1016C6598, &type metadata for RelayedMetadata, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MessagingOptions(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1010ABBF0(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1010ABDDC(319, &qword_1016C6638, &type metadata for MessagingDestination, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100395648(319);
      if (v3 <= 0x3F)
      {
        sub_1010ABDDC(319, &unk_1016A0CD8, &type metadata for Double, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1010AC01C(319, &qword_1016C6640, sub_1010ABD88, &type metadata for MessagingCapability, &type metadata accessor for Set);
          if (v5 <= 0x3F)
          {
            sub_1010ABDDC(319, &qword_1016BD350, &type metadata for String, &type metadata accessor for Optional);
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

unint64_t sub_1010ABD88()
{
  result = qword_1016C6648;
  if (!qword_1016C6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6648);
  }

  return result;
}

void sub_1010ABDDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1010ABE2C(uint64_t a1)
{
  sub_1010ABF0C(319);
  if (v1 <= 0x3F)
  {
    sub_1010ABF70(319);
    if (v2 <= 0x3F)
    {
      sub_1010AC01C(319, &qword_1016C6738, sub_1010AC084, &type metadata for RelayMessagingDevice, &type metadata accessor for Set);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1010ABF0C(uint64_t a1)
{
  if (!qword_1016C6718)
  {
    sub_100589064();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016C6718);
    }
  }
}

void sub_1010ABF70(uint64_t a1)
{
  if (!qword_1016C6720)
  {
    sub_1000BC580(&qword_1016C6728, &qword_101401B00);
    sub_1000041A4(&qword_1016C6730, &qword_1016C6728, &qword_101401B00, &protocol conformance descriptor for Set<A>);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016C6720);
    }
  }
}

void sub_1010AC01C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1010AC084()
{
  result = qword_1016C6740;
  if (!qword_1016C6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6740);
  }

  return result;
}

uint64_t sub_1010AC0E8(uint64_t a1)
{
  result = type metadata accessor for SecureLocationsRelayAction.SendMessage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1010AC174()
{
  result = qword_1016C6818;
  if (!qword_1016C6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6818);
  }

  return result;
}

unint64_t sub_1010AC1CC()
{
  result = qword_1016C6820;
  if (!qword_1016C6820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6820);
  }

  return result;
}

unint64_t sub_1010AC220()
{
  result = qword_1016C6870;
  if (!qword_1016C6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6870);
  }

  return result;
}

unint64_t sub_1010AC274()
{
  result = qword_1016C6878;
  if (!qword_1016C6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6878);
  }

  return result;
}

unint64_t sub_1010AC2C8()
{
  result = qword_1016C6880;
  if (!qword_1016C6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6880);
  }

  return result;
}

unint64_t sub_1010AC31C()
{
  result = qword_1016C6888;
  if (!qword_1016C6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6888);
  }

  return result;
}

uint64_t sub_1010AC370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1010AC3D8()
{
  result = qword_1016C6890;
  if (!qword_1016C6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6890);
  }

  return result;
}

unint64_t sub_1010AC42C()
{
  result = qword_1016C68A0;
  if (!qword_1016C68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C68A0);
  }

  return result;
}

unint64_t sub_1010AC480()
{
  result = qword_1016C68A8;
  if (!qword_1016C68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C68A8);
  }

  return result;
}

unint64_t sub_1010AC4D4()
{
  result = qword_1016C68B0;
  if (!qword_1016C68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C68B0);
  }

  return result;
}

unint64_t sub_1010AC528()
{
  result = qword_1016C68B8;
  if (!qword_1016C68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C68B8);
  }

  return result;
}

unint64_t sub_1010AC57C()
{
  result = qword_1016C68C0;
  if (!qword_1016C68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C68C0);
  }

  return result;
}

unint64_t sub_1010AC5D0()
{
  result = qword_1016C6900;
  if (!qword_1016C6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6900);
  }

  return result;
}

unint64_t sub_1010AC624()
{
  result = qword_1016C6908;
  if (!qword_1016C6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6908);
  }

  return result;
}

unint64_t sub_1010AC678()
{
  result = qword_1016C6910;
  if (!qword_1016C6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6910);
  }

  return result;
}

unint64_t sub_1010AC6CC()
{
  result = qword_1016C6928;
  if (!qword_1016C6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6928);
  }

  return result;
}

unint64_t sub_1010AC720()
{
  result = qword_1016C6930;
  if (!qword_1016C6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6930);
  }

  return result;
}

unint64_t sub_1010AC774()
{
  result = qword_1016C6940;
  if (!qword_1016C6940)
  {
    sub_1000BC580(&qword_1016C6938, &qword_101401EE8);
    sub_1010AC82C(&qword_1016C6948, &qword_1016C6728, &qword_101401B00, sub_1010AC8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6940);
  }

  return result;
}

uint64_t sub_1010AC82C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1010AC8A8()
{
  result = qword_1016C6950;
  if (!qword_1016C6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6950);
  }

  return result;
}

unint64_t sub_1010AC8FC()
{
  result = qword_1016C6958;
  if (!qword_1016C6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6958);
  }

  return result;
}

unint64_t sub_1010AC950()
{
  result = qword_1016C6968;
  if (!qword_1016C6968)
  {
    sub_1000BC580(&qword_1016C6960, &qword_101401EF0);
    sub_100157E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6968);
  }

  return result;
}

unint64_t sub_1010AC9DC()
{
  result = qword_1016C6970;
  if (!qword_1016C6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6970);
  }

  return result;
}

unint64_t sub_1010ACA30()
{
  result = qword_1016C6978;
  if (!qword_1016C6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6978);
  }

  return result;
}

unint64_t sub_1010ACA84()
{
  result = qword_1016C6988;
  if (!qword_1016C6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6988);
  }

  return result;
}

unint64_t sub_1010ACAD8()
{
  result = qword_1016C69A0;
  if (!qword_1016C69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69A0);
  }

  return result;
}

uint64_t sub_1010ACB2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t sub_1010ACC44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684631414 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010137A3B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010137A3D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1010ACE40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6261706143736168 && a2 == 0xED00007974696C69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473696765527369 && a2 == 0xEC00000064657265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7373654D646E6573 && a2 == 0xEB00000000656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000010137A370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010137A390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x63697665446C6C61 && a2 == 0xEA00000000007365)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void *sub_1010AD0F4(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C69B0, &qword_101401F08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1010AD268();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_1010AD268()
{
  result = qword_1016C69B8;
  if (!qword_1016C69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69B8);
  }

  return result;
}

unint64_t sub_1010AD2BC()
{
  result = qword_1016C69D0;
  if (!qword_1016C69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69D0);
  }

  return result;
}

unint64_t sub_1010AD310()
{
  result = qword_1016C69D8;
  if (!qword_1016C69D8)
  {
    sub_1000BC580(&qword_1016A4958, &qword_1013B1330);
    sub_100157E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69D8);
  }

  return result;
}

uint64_t sub_1010AD394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1010AD404()
{
  result = qword_1016C69E8;
  if (!qword_1016C69E8)
  {
    sub_1000BC580(&qword_1016A4958, &qword_1013B1330);
    sub_100157F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69E8);
  }

  return result;
}

unint64_t sub_1010AD488()
{
  result = qword_1016C69F0;
  if (!qword_1016C69F0)
  {
    sub_1000BC580(&qword_1016C6728, &qword_101401B00);
    sub_1010AD50C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69F0);
  }

  return result;
}

unint64_t sub_1010AD50C()
{
  result = qword_1016C69F8;
  if (!qword_1016C69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C69F8);
  }

  return result;
}

uint64_t sub_1010AD560(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101374A00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010137A3F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694C6F54656D6974 && a2 == 0xEA00000000006576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x46646E4165726966 && a2 == 0xED0000746567726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010137A410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010137A430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010137A450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1010AD8B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001013723F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564496C65646F6DLL && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x56746375646F7270 && a2 == 0xEE006E6F69737265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101372410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6C61636F4C7369 && a2 == 0xEF64657269615079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x79627261654E7369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x63656E6E6F437369 && a2 == 0xEB00000000646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1010ADCF0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v76 = sub_1000BC4D4(&qword_1016C6A00, &qword_101401F30);
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v7 = &v32 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_1010AE4A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v8 = v5;
  v52 = a2;
  LOBYTE(v63[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v51 = v10;
  LOBYTE(v63[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v50 = v12;
  v43 = v11;
  LOBYTE(v63[0]) = 2;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v13;
  LOBYTE(v63[0]) = 3;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v14;
  LOBYTE(v63[0]) = 4;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v15;
  LOBYTE(v63[0]) = 5;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v16;
  LOBYTE(v63[0]) = 6;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v17;
  LOBYTE(v63[0]) = 7;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v18;
  LOBYTE(v63[0]) = 8;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63[0]) = 9;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63[0]) = 10;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63[0]) = 11;
  LODWORD(v35) = KeyedDecodingContainer.decode(_:forKey:)();
  v72 = 12;
  sub_100157E1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 &= 1u;
  v34 = v19 & 1;
  v21 = v20 & 1;
  HIDWORD(v32) = v35 & 1;
  (*(v8 + 8))(v7, v76);
  v33 = v73;
  v35 = *(&v74 + 1);
  v76 = v74;
  v22 = v50;
  *&v53 = v9;
  *(&v53 + 1) = v51;
  *&v54 = v43;
  *(&v54 + 1) = v50;
  v24 = v48;
  v23 = v49;
  *&v55 = v42;
  *(&v55 + 1) = v49;
  *&v56 = v41;
  *(&v56 + 1) = v48;
  *&v57 = v40;
  *(&v57 + 1) = v47;
  *&v58 = v39;
  *(&v58 + 1) = v46;
  *&v59 = v38;
  *(&v59 + 1) = v45;
  *&v60 = v37;
  *(&v60 + 1) = v44;
  LOBYTE(v61) = v36;
  BYTE1(v61) = v34;
  BYTE2(v61) = v21;
  LOBYTE(v8) = BYTE4(v32);
  BYTE3(v61) = BYTE4(v32);
  BYTE8(v61) = v73;
  v62 = v74;
  sub_1010AE4F8(&v53, v63);
  sub_100007BAC(a1);
  v63[0] = v9;
  v63[1] = v51;
  v63[2] = v43;
  v63[3] = v22;
  v63[4] = v42;
  v63[5] = v23;
  v63[6] = v41;
  v63[7] = v24;
  v63[8] = v40;
  v63[9] = v47;
  v63[10] = v39;
  v63[11] = v46;
  v63[12] = v38;
  v63[13] = v45;
  v63[14] = v37;
  v63[15] = v44;
  v64 = v36;
  v65 = v34;
  v66 = v21;
  v67 = v8;
  v68 = v33;
  *v69 = v75[0];
  *&v69[3] = *(v75 + 3);
  v70 = v76;
  v71 = v35;
  result = sub_1010AE530(v63);
  v26 = v60;
  v27 = v52;
  v52[6] = v59;
  v27[7] = v26;
  v28 = v62;
  v27[8] = v61;
  v27[9] = v28;
  v29 = v56;
  v27[2] = v55;
  v27[3] = v29;
  v30 = v58;
  v27[4] = v57;
  v27[5] = v30;
  v31 = v54;
  *v27 = v53;
  v27[1] = v31;
  return result;
}

unint64_t sub_1010AE4A4()
{
  result = qword_1016C6A08;
  if (!qword_1016C6A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A08);
  }

  return result;
}

unint64_t sub_1010AE560()
{
  result = qword_1016C6A18;
  if (!qword_1016C6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A18);
  }

  return result;
}

unint64_t sub_1010AE708()
{
  result = qword_1016C6A20;
  if (!qword_1016C6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A20);
  }

  return result;
}

unint64_t sub_1010AE760()
{
  result = qword_1016C6A28;
  if (!qword_1016C6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A28);
  }

  return result;
}

unint64_t sub_1010AE7B8()
{
  result = qword_1016C6A30;
  if (!qword_1016C6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A30);
  }

  return result;
}

unint64_t sub_1010AE810()
{
  result = qword_1016C6A38;
  if (!qword_1016C6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A38);
  }

  return result;
}

unint64_t sub_1010AE868()
{
  result = qword_1016C6A40;
  if (!qword_1016C6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A40);
  }

  return result;
}

unint64_t sub_1010AE8C0()
{
  result = qword_1016C6A48;
  if (!qword_1016C6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A48);
  }

  return result;
}

unint64_t sub_1010AE918()
{
  result = qword_1016C6A50;
  if (!qword_1016C6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A50);
  }

  return result;
}

unint64_t sub_1010AE970()
{
  result = qword_1016C6A58;
  if (!qword_1016C6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A58);
  }

  return result;
}

unint64_t sub_1010AE9C8()
{
  result = qword_1016C6A60;
  if (!qword_1016C6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A60);
  }

  return result;
}

unint64_t sub_1010AEA20()
{
  result = qword_1016C6A68;
  if (!qword_1016C6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A68);
  }

  return result;
}

unint64_t sub_1010AEA78()
{
  result = qword_1016C6A70;
  if (!qword_1016C6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A70);
  }

  return result;
}

unint64_t sub_1010AEAD0()
{
  result = qword_1016C6A78;
  if (!qword_1016C6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A78);
  }

  return result;
}

unint64_t sub_1010AEB28()
{
  result = qword_1016C6A80;
  if (!qword_1016C6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A80);
  }

  return result;
}

unint64_t sub_1010AEB80()
{
  result = qword_1016C6A88;
  if (!qword_1016C6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A88);
  }

  return result;
}

unint64_t sub_1010AEBD8()
{
  result = qword_1016C6A90;
  if (!qword_1016C6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A90);
  }

  return result;
}

unint64_t sub_1010AEC30()
{
  result = qword_1016C6A98;
  if (!qword_1016C6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6A98);
  }

  return result;
}

unint64_t sub_1010AEC88()
{
  result = qword_1016C6AA0;
  if (!qword_1016C6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AA0);
  }

  return result;
}

unint64_t sub_1010AECE0()
{
  result = qword_1016C6AA8;
  if (!qword_1016C6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AA8);
  }

  return result;
}

unint64_t sub_1010AED38()
{
  result = qword_1016C6AB0;
  if (!qword_1016C6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AB0);
  }

  return result;
}

unint64_t sub_1010AED90()
{
  result = qword_1016C6AB8;
  if (!qword_1016C6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AB8);
  }

  return result;
}

unint64_t sub_1010AEDE8()
{
  result = qword_1016C6AC0;
  if (!qword_1016C6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AC0);
  }

  return result;
}

unint64_t sub_1010AEE40()
{
  result = qword_1016C6AC8;
  if (!qword_1016C6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AC8);
  }

  return result;
}

unint64_t sub_1010AEE98()
{
  result = qword_1016C6AD0;
  if (!qword_1016C6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AD0);
  }

  return result;
}

unint64_t sub_1010AEEF0()
{
  result = qword_1016C6AD8;
  if (!qword_1016C6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AD8);
  }

  return result;
}

unint64_t sub_1010AEF48()
{
  result = qword_1016C6AE0;
  if (!qword_1016C6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AE0);
  }

  return result;
}

unint64_t sub_1010AEFA0()
{
  result = qword_1016C6AE8;
  if (!qword_1016C6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AE8);
  }

  return result;
}

unint64_t sub_1010AEFF8()
{
  result = qword_1016C6AF0;
  if (!qword_1016C6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AF0);
  }

  return result;
}

unint64_t sub_1010AF050()
{
  result = qword_1016C6AF8;
  if (!qword_1016C6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6AF8);
  }

  return result;
}

unint64_t sub_1010AF0A8()
{
  result = qword_1016C6B00;
  if (!qword_1016C6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B00);
  }

  return result;
}

unint64_t sub_1010AF100()
{
  result = qword_1016C6B08;
  if (!qword_1016C6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B08);
  }

  return result;
}

unint64_t sub_1010AF158()
{
  result = qword_1016C6B10;
  if (!qword_1016C6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B10);
  }

  return result;
}

unint64_t sub_1010AF1B0()
{
  result = qword_1016C6B18;
  if (!qword_1016C6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B18);
  }

  return result;
}

unint64_t sub_1010AF208()
{
  result = qword_1016C6B20;
  if (!qword_1016C6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B20);
  }

  return result;
}

unint64_t sub_1010AF260()
{
  result = qword_1016C6B28;
  if (!qword_1016C6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B28);
  }

  return result;
}

unint64_t sub_1010AF2B8()
{
  result = qword_1016C6B30;
  if (!qword_1016C6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B30);
  }

  return result;
}

unint64_t sub_1010AF310()
{
  result = qword_1016C6B38;
  if (!qword_1016C6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B38);
  }

  return result;
}

unint64_t sub_1010AF368()
{
  result = qword_1016C6B40;
  if (!qword_1016C6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B40);
  }

  return result;
}

unint64_t sub_1010AF3C0()
{
  result = qword_1016C6B48;
  if (!qword_1016C6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B48);
  }

  return result;
}

unint64_t sub_1010AF418()
{
  result = qword_1016C6B50;
  if (!qword_1016C6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B50);
  }

  return result;
}

unint64_t sub_1010AF470()
{
  result = qword_1016C6B58;
  if (!qword_1016C6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B58);
  }

  return result;
}

unint64_t sub_1010AF4C8()
{
  result = qword_1016C6B60;
  if (!qword_1016C6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B60);
  }

  return result;
}

unint64_t sub_1010AF520()
{
  result = qword_1016C6B68;
  if (!qword_1016C6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B68);
  }

  return result;
}

unint64_t sub_1010AF578()
{
  result = qword_1016C6B70;
  if (!qword_1016C6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B70);
  }

  return result;
}

unint64_t sub_1010AF5D0()
{
  result = qword_1016C6B78;
  if (!qword_1016C6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B78);
  }

  return result;
}

unint64_t sub_1010AF628()
{
  result = qword_1016C6B80;
  if (!qword_1016C6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B80);
  }

  return result;
}

unint64_t sub_1010AF680()
{
  result = qword_1016C6B88;
  if (!qword_1016C6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B88);
  }

  return result;
}

unint64_t sub_1010AF6D8()
{
  result = qword_1016C6B90;
  if (!qword_1016C6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B90);
  }

  return result;
}

unint64_t sub_1010AF730()
{
  result = qword_1016C6B98;
  if (!qword_1016C6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6B98);
  }

  return result;
}

unint64_t sub_1010AF788()
{
  result = qword_1016C6BA0;
  if (!qword_1016C6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BA0);
  }

  return result;
}

unint64_t sub_1010AF7E0()
{
  result = qword_1016C6BA8;
  if (!qword_1016C6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BA8);
  }

  return result;
}

unint64_t sub_1010AF838()
{
  result = qword_1016C6BB0;
  if (!qword_1016C6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BB0);
  }

  return result;
}

unint64_t sub_1010AF890()
{
  result = qword_1016C6BB8;
  if (!qword_1016C6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BB8);
  }

  return result;
}

unint64_t sub_1010AF8E8()
{
  result = qword_1016C6BC0;
  if (!qword_1016C6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BC0);
  }

  return result;
}

unint64_t sub_1010AF940()
{
  result = qword_1016C6BC8;
  if (!qword_1016C6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BC8);
  }

  return result;
}

unint64_t sub_1010AF998()
{
  result = qword_1016C6BD0;
  if (!qword_1016C6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BD0);
  }

  return result;
}

unint64_t sub_1010AF9F0()
{
  result = qword_1016C6BD8;
  if (!qword_1016C6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BD8);
  }

  return result;
}

unint64_t sub_1010AFA48()
{
  result = qword_1016C6BE0;
  if (!qword_1016C6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BE0);
  }

  return result;
}

unint64_t sub_1010AFAA0()
{
  result = qword_1016C6BE8;
  if (!qword_1016C6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BE8);
  }

  return result;
}

unint64_t sub_1010AFAF8()
{
  result = qword_1016C6BF0;
  if (!qword_1016C6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6BF0);
  }

  return result;
}

uint64_t sub_1010AFB60(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C6E48, &qword_1014035F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1010B306C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1008CDBB0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for ShareAttemptTracker.AttemptKey(0);
    v10[13] = 1;
    type metadata accessor for UUID();
    sub_10000984C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1010AFD30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for UUID();
  v20 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016C6E58, &qword_1014035F8);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1010B306C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = v10;
    v19 = v8;
    v12 = v22;
    v13 = v23;
    v26 = 0;
    sub_1008CDB5C();
    v14 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v11;
    *v11 = v27;
    v25 = 1;
    sub_10000984C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v7, v14);
    v15 = v18;
    (*(v20 + 32))(&v18[*(v19 + 20)], v5, v13);
    sub_1010B30C0(v15, v21);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_1010B0038()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 0x546567617373656DLL;
  }
}

uint64_t sub_1010B0080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_1010B0168(uint64_t a1)
{
  v2 = sub_1010B306C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010B01A4(uint64_t a1)
{
  v2 = sub_1010B306C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1010B0210()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_101403718[*v0]);
  type metadata accessor for UUID();
  sub_10000984C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1010B02C8(uint64_t a1)
{
  Hasher._combine(_:)(dword_101403718[*v1]);
  type metadata accessor for UUID();
  sub_10000984C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1010B0368(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_101403718[*v1]);
  type metadata accessor for UUID();
  sub_10000984C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1010B041C(char *a1, char *a2, uint64_t a3)
{
  if (dword_101403718[*a1] == dword_101403718[*a2])
  {
    return static UUID.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1010B0454()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_1016C6BF8);
  sub_1000076D4(v0, qword_1016C6BF8);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

void *sub_1010B05B0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + 24);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_5;
  }

  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_attemptsURL, v1);
  v11 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 fileExistsAtPath:v12];

  if (v13)
  {
    v14 = Data.init(contentsOf:options:)();
    v16 = v15;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000BC4D4(&qword_1016C6D88, &unk_101403518);
    sub_1010B2E20();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v2 + 8))(v4, v1);

    sub_100016590(v14, v16);
    return v23[2];
  }

  v5 = static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v17 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  v19 = URL.path.getter();
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100008C00();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v17, "First read of the share attempts %@.", 36, 2, v18);

  (*(v2 + 8))(v4, v1);
  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1010B0AC0(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - v8;
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + 24);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
    v18 = *(v4 + 16);
    v47 = OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_attemptsURL;
    v48 = v1;
    v50 = v18;
    v18(v9, v1 + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_attemptsURL, v3);
    URL.deletingLastPathComponent()();
    v19 = v3;
    v20 = *(v4 + 8);
    v20(v9, v3);
    static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
    v20(v11, v3);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    v21 = PropertyListEncoder.init()();
    v51 = a1;
    sub_1000BC4D4(&qword_1016C6D88, &unk_101403518);
    sub_1010B2D34();
    v22 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v24 = v23;

    v45 = v11;
    v46 = v21;
    v25 = v24;
    v27 = v47;
    v26 = v48;
    v28 = v49;
    v50(v49, v48 + v47, v19);
    Data.write(to:excludeFromBackup:options:)();
    v43 = v22;
    v44 = v25;
    v34 = v20;
    v20(v28, v19);
    LODWORD(v49) = static os_log_type_t.info.getter();
    v35 = v19;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v36 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = v45;
    v50(v45, v26 + v27, v19);
    sub_10000984C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v34(v38, v35);
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100008C00();
    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v36, "Saved share attempts file, url %@", 33, 2, v37);

    sub_100016590(v43, v44);
  }

  else
  {
    __break(1u);
    swift_once();
    v29 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    v51 = v12;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v29, "Error saving share attempts: %@", 31, 2, v30);
  }
}

uint64_t sub_1010B1080(uint64_t a1)
{
  v44 = a1;
  v2 = type metadata accessor for URL();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v37 = v3;
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - v5;
  v6 = sub_1000BC4D4(&qword_1016C2F20, &qword_1013F7790);
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v38 = &v32 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v12 = sub_101074748(v46);

  *(v1 + 16) = v12 * 60.0;
  v13 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_10000984C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  v14 = v1;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v33, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  v34 = v13;
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v35 = OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_systemClockChangedSubscription;
  *(v1 + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_systemClockChangedSubscription) = 0;
  v15 = OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_automaticTimeEnabled;
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  AnyCurrentValuePublisher.value.getter();

  *(v1 + v15) = v46;
  v17 = v42;
  v16 = v43;
  v33 = *(v42 + 16);
  (v33)(v1 + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_attemptsURL, v44, v43);

  v18 = AnyCurrentValuePublisher.publisher.getter();

  v46 = v18;
  v45 = *(v1 + 24);
  v19 = v45;
  v20 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v21 = v36;
  (*(*(v20 - 8) + 56))(v36, 1, 1, v20);
  v32 = v19;
  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  v22 = v14;
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1004682F0();
  v23 = v38;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v21, &unk_1016B0FE0, &unk_101391980);

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v39;
  v26 = v44;
  (v33)(v39, v44, v16);
  v27 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  (*(v17 + 32))(v28 + v27, v25, v16);
  sub_1000041A4(&unk_1016B1070, &qword_1016C2F20, &qword_1013F7790, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v29 = v41;
  v30 = Publisher<>.sink(receiveValue:)();

  (*(v17 + 8))(v26, v16);
  (*(v40 + 8))(v23, v29);
  *(v22 + v35) = v30;

  return v22;
}

uint64_t sub_1010B17E4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2 == *(result + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_automaticTimeEnabled))
    {
    }

    else
    {
      *(result + OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_automaticTimeEnabled) = v2;
      v4 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v5);
      v7 = v6;
      v17 = 0;
      v8 = [v4 removeItemAtURL:v6 error:&v17];

      if (v8)
      {
        v9 = v17;
      }

      else
      {
        v10 = v17;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v11 = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v12 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_101385D80;
      type metadata accessor for URL();
      sub_10000984C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_100008C00();
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Deleted share attempts file due to clock change, url %@", 55, 2, v13);
    }
  }

  return result;
}

uint64_t sub_1010B1A34@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 28);
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 16))(&v12[v13], a2, v14);
  *v12 = a1;
  v15 = sub_1010B05B0();
  if (v15[2] && (v16 = sub_100772DDC(v12), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = v15[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v8, v19 + *(v21 + 72) * v18, v20);
    sub_1010B2B9C(v12);

    (*(v21 + 56))(v8, 0, 1, v20);
    return (*(v21 + 32))(a3, v8, v20);
  }

  else
  {

    sub_1010B2B9C(v12);
    v23 = type metadata accessor for Date();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v8, 1, 1, v23);
    static Date.distantPast.getter();
    result = (*(v24 + 48))(v8, 1, v23);
    if (result != 1)
    {
      return sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
    }
  }

  return result;
}

uint64_t sub_1010B1D04(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v20 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + 24);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, v20, v5);
  v13 = (*(v10 + 80) + 25) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  *(v15 + 24) = v21;
  (*(v10 + 32))(v15 + v13, v12, v9);
  (*(v6 + 32))(v15 + v14, v8, v5);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1010B2C60;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101665318;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v22, v17);
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010B2004(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 28);
  v21 = type metadata accessor for UUID();
  (*(*(v21 - 8) + 16))(&v19[v20], a3, v21);
  *v19 = a2;
  (*(v7 + 16))(v15, v27, v6);
  (*(v7 + 56))(v15, 0, 1, v6);
  v29 = sub_1010B05B0();
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    sub_10000B3A8(v15, &unk_101696900, &unk_10138B1E0);
    sub_1001E6014(v13, v19);
    sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
    sub_1010B2B9C(v19);
    v22 = v29;
  }

  else
  {
    (*(v7 + 32))(v9, v15, v6);
    v23 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v23;
    sub_101002A7C(v9, v19, isUniquelyReferenced_nonNull_native);
    sub_1010B2B9C(v19);
    v22 = v28;
  }

  return sub_1010B0AC0(v22);
}

uint64_t sub_1010B22E4(uint64_t a1, char a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = *(v2 + 24);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 25) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = a2;
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1010B2BF8;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_1016652A0;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1010B2510(uint64_t a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  v12 = *(v6 + 28);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 16))(&v8[v12], a3, v13);
  *v8 = a2;
  v16 = sub_1010B05B0();
  sub_1007AA39C(v8, v11);
  sub_1010B2B9C(v8);
  sub_10000B3A8(v11, &unk_101696900, &unk_10138B1E0);
  return sub_1010B0AC0(v16);
}

uint64_t sub_1010B2678(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v7);
  Date.timeIntervalSince(_:)();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (a2 > 5u)
  {
    if (a2 - 10 >= 4 && a2 != 6)
    {
      goto LABEL_17;
    }

LABEL_11:

    v14 = *(v2 + 16);
    goto LABEL_12;
  }

  if (a2 < 2u)
  {
    goto LABEL_11;
  }

  if (a2 != 5)
  {
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v10 = v26;
  v11 = sub_101073EC0(v26);
  v12 = sub_101073EDC(v10);

  v13 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v13 * 60) >> 64 != (60 * v13) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = (60 * v13);
LABEL_12:
  v15 = static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10138BBE0;
  v18 = Double.description.getter();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  v21 = sub_100008C00();
  *(v17 + 64) = v21;
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v22 = Double.description.getter();
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v21;
  *(v17 + 72) = v22;
  *(v17 + 80) = v23;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Share Attempt: Comparing %@ > %@", 32, 2, v17);

  return v14 < v9;
}

uint64_t sub_1010B29E0()
{
  v1 = OBJC_IVAR____TtC12searchpartyd19ShareAttemptTracker_attemptsURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1010B2ABC(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_1010B2B9C(uint64_t a1)
{
  v2 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1010B2BF8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  return sub_1010B2510(v2, v3, v4);
}

uint64_t sub_1010B2C60()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1010B2004(v5, v6, v0 + v2, v7);
}

unint64_t sub_1010B2D34()
{
  result = qword_1016C6D90;
  if (!qword_1016C6D90)
  {
    sub_1000BC580(&qword_1016C6D88, &unk_101403518);
    sub_10000984C(&qword_1016C6D98, type metadata accessor for ShareAttemptTracker.AttemptKey, &unk_1014035C4);
    sub_10000984C(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6D90);
  }

  return result;
}

unint64_t sub_1010B2E20()
{
  result = qword_1016C6DA0;
  if (!qword_1016C6DA0)
  {
    sub_1000BC580(&qword_1016C6D88, &unk_101403518);
    sub_10000984C(&qword_1016C6DA8, type metadata accessor for ShareAttemptTracker.AttemptKey, &unk_10140359C);
    sub_10000984C(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6DA0);
  }

  return result;
}

uint64_t sub_1010B2F0C(unsigned __int8 *a1)
{
  type metadata accessor for URL();
  v3 = *(v1 + 16);

  return sub_1010B17E4(a1, v3);
}

uint64_t sub_1010B2FA8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1010B306C()
{
  result = qword_1016C6E50;
  if (!qword_1016C6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6E50);
  }

  return result;
}

uint64_t sub_1010B30C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1010B3138()
{
  result = qword_1016C6E60;
  if (!qword_1016C6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6E60);
  }

  return result;
}

unint64_t sub_1010B3190()
{
  result = qword_1016C6E68;
  if (!qword_1016C6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6E68);
  }

  return result;
}

unint64_t sub_1010B31E8()
{
  result = qword_1016C6E70;
  if (!qword_1016C6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6E70);
  }

  return result;
}

uint64_t sub_1010B3244()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C5F8);
  sub_1000076D4(v0, qword_10177C5F8);
  return Logger.init(subsystem:category:)();
}

void *sub_1010B32C8(uint64_t a1)
{
  v12 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = sub_1000BC488();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1010B4310(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[3] = 0xD000000000000012;
  v1[4] = 0x8000000101351C20;
  v1[5] = 47;
  v1[6] = 0xE100000000000000;
  v8 = v12;
  sub_1010B358C(v12);
  v9 = type metadata accessor for FMNAccountType();
  (*(*(v9 - 8) + 8))(v8, v9);
  return v1;
}

uint64_t sub_1010B358C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMNAccountType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v18[1] = *(v2 + 16);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v11 + 32))(v15 + v14, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1010B39F4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101665470;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1010B4310(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

void *sub_1010B3940(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1010B3A58(a2);
    v7 = v6;
    v9 = v8;
    v4[3] = v5;
    v4[4] = v10;

    v4[5] = v7;
    v4[6] = v9;
  }

  return result;
}

void *sub_1010B39F4()
{
  v1 = *(type metadata accessor for FMNAccountType() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1010B3940(v2, v3);
}

unint64_t sub_1010B3A58(uint64_t a1)
{
  v2 = type metadata accessor for FMNAccountType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v74 = &v64[-v8];
  __chkstk_darwin(v7);
  v10 = &v64[-v9];
  v11 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v11 - 8);
  v13 = &v64[-v12];
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v75 = &v64[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v64[-v18];
  type metadata accessor for FMNAuthenticationProvider();
  static FMNAuthenticationProvider.configurationURL(accountType:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1002815B4(v13);
LABEL_9:
    if (qword_101695220 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C5F8);
    (*(v3 + 16))(v6, a1, v2);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v3;
      v41 = swift_slowAlloc();
      v76 = v41;
      *v39 = 136446210;
      sub_1010B4310(&qword_1016C6F68, &type metadata accessor for FMNAccountType, &protocol conformance descriptor for FMNAccountType);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v40 + 8))(v6, v2);
      v45 = sub_1000136BC(v42, v44, &v76);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "AccountURL[%{public}s]: Fallback to hard-coded host name.", v39, 0xCu);
      sub_100007BAC(v41);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return 0xD000000000000012;
  }

  (*(v15 + 32))(v19, v13, v14);
  v20 = URL.host.getter();
  if (!v21)
  {
    (*(v15 + 8))(v19, v14);
    goto LABEL_9;
  }

  v72 = v20;
  v73 = v21;
  if (qword_101695220 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_1000076D4(v22, qword_10177C5F8);
  v68 = *(v3 + 16);
  v68(v10, a1, v2);
  v69 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v71 = v3;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v66 = v24;
    v28 = v27;
    v67 = swift_slowAlloc();
    v76 = v67;
    *v28 = 136446210;
    sub_1010B4310(&qword_1016C6F68, &type metadata accessor for FMNAccountType, &protocol conformance descriptor for FMNAccountType);
    v65 = v25;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v3;
    v32 = v31;
    v70 = *(v30 + 8);
    v70(v10, v2);
    v33 = sub_1000136BC(v29, v32, &v76);

    v34 = v28;
    *(v28 + 4) = v33;
    v35 = v66;
    _os_log_impl(&_mh_execute_header, v66, v65, "AccountURL[%{public}s]: Using host name and path from authenticated setup bag.", v34, 0xCu);
    sub_100007BAC(v67);
  }

  else
  {

    v70 = *(v3 + 8);
    v70(v10, v2);
  }

  v47 = v74;
  v68(v74, a1, v2);
  v48 = v75;
  (*(v15 + 16))(v75, v19, v14);
  v49 = v73;

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = v47;
    v53 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v76 = v69;
    *v53 = 136446722;
    sub_1010B4310(&qword_1016C6F68, &type metadata accessor for FMNAccountType, &protocol conformance descriptor for FMNAccountType);
    LODWORD(v68) = v51;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v70(v52, v2);
    v57 = sub_1000136BC(v54, v56, &v76);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_1000136BC(v72, v49, &v76);
    *(v53 + 22) = 2080;
    v58 = v75;
    v59 = URL.path.getter();
    v61 = v60;
    v62 = *(v15 + 8);
    v62(v58, v14);
    v63 = sub_1000136BC(v59, v61, &v76);

    *(v53 + 24) = v63;
    _os_log_impl(&_mh_execute_header, v50, v68, "AccountURL[%{public}s]: hostName: [%s] path: [%s].", v53, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v62 = *(v15 + 8);
    v62(v48, v14);
    v70(v47, v2);
  }

  URL.path.getter();
  v62(v19, v14);
  return v72;
}

uint64_t sub_1010B4310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1010B4358()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12searchpartyd14NetworkMonitor____lazy_storage___callbackQueue;
  v9 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor____lazy_storage___callbackQueue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor____lazy_storage___callbackQueue);
  }

  else
  {
    v11 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v16[1] = "$__lazy_storage_$_callbackQueue";
    v16[2] = v11;
    (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
    static DispatchQoS.unspecified.getter();
    v16[3] = _swiftEmptyArrayStorage;
    sub_100003D24(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

uint64_t NetworkMonitor.startMonitoring(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v3 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock);
  v13 = *(v3 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock);
  v14 = *(v3 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock + 8);
  *v12 = a1;
  v12[1] = a2;

  sub_1000BB27C(v13, v14);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1010B4AAC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016654C0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

char *sub_1010B4900(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() sharedDefaultEvaluator];
    v4 = *&v2[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator];
    *&v2[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator] = v3;

    if (v3)
    {
      v5 = v3;
      v6 = String._bridgeToObjectiveC()();
      v7 = swift_allocObject();
      *(v7 + 16) = v2;
      v13 = sub_1010B5364;
      v14 = v7;
      *&v11 = _NSConcreteStackBlock;
      *(&v11 + 1) = 1107296256;
      *&v12 = sub_1010B5064;
      *(&v12 + 1) = &unk_101665510;
      v8 = _Block_copy(&v11);
      v9 = v2;

      v10 = [v5 addKVOBlockForKeyPath:v6 options:5 handler:v8];

      _Block_release(v8);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    return sub_1004AB638(&v11);
  }

  return result;
}

void sub_1010B4AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v38 = *(v39 - 8);
  v16 = __chkstk_darwin(a1);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16 == 1752457584 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v36 = v9;
    v37 = v8;
    v19 = *&a5[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator];
    v35 = v13;
    if (v19)
    {
      v20 = [v19 path];
      v21 = [v20 status];

      v22 = v21 == 1;
    }

    else
    {
      v22 = 0;
    }

    v23 = static os_log_type_t.info.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    v25 = sub_100008C00();
    v26 = 1314344772;
    if (v22)
    {
      v26 = 20565;
    }

    v27 = 0xE400000000000000;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v25;
    if (v22)
    {
      v27 = 0xE200000000000000;
    }

    *(v24 + 32) = v26;
    *(v24 + 40) = v27;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v28 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v28, "Network state changed: %@", 25, 2, v24);

    v29 = sub_1010B4358();
    v30 = swift_allocObject();
    *(v30 + 16) = a5;
    *(v30 + 24) = v22;
    v43 = sub_1010B536C;
    v44 = v30;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v42 = sub_100006684;
    *(&v42 + 1) = &unk_101665560;
    v31 = _Block_copy(&aBlock);
    v32 = a5;
    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v35 + 8))(v15, v12);
    (*(v38 + 8))(v18, v39);

    v33 = [objc_opt_self() defaultCenter];
    String._bridgeToObjectiveC()();
    aBlock = 0u;
    v42 = 0u;
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v36 + 8))(v11, v37);
    [v33 postNotification:isa];
  }
}

uint64_t sub_1010B4FE8(uint64_t result, char a2)
{
  v2 = *(result + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock);
  if (v2)
  {
    v4 = *(result + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock + 8);

    v2(a2 & 1);

    return sub_1000BB27C(v2, v4);
  }

  return result;
}

uint64_t sub_1010B5064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v11[3] = swift_getObjectType();
  v11[0] = a3;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v5(v6, v8, v11, v9);

  return sub_100007BAC(v11);
}

Swift::Void __swiftcall NetworkMonitor.stopMonitoring()()
{
  v1 = (v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock);
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_1000BB27C(v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator);
  *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator) = 0;
}

Swift::Bool __swiftcall NetworkMonitor.isNetworkUp()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator);
  if (v1)
  {
    v2 = [v1 path];
    v3 = [v2 status];

    LOBYTE(v1) = ((v3 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  return v1;
}

id NetworkMonitor.init()(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_monitorBlock];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor_evaluator] = 0;
  *&v1[OBJC_IVAR____TtC12searchpartyd14NetworkMonitor____lazy_storage___callbackQueue] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for NetworkMonitor();
  return objc_msgSendSuper2(&v4, "init");
}

id NetworkMonitor.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NetworkMonitor();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1010B5388()
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C610 = result;
  return result;
}

uint64_t sub_1010B53F8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1010B7964;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_100012908(v3, v4);
}

uint64_t sub_1010B5474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_100012908(a2, a3);
  return sub_1000BB27C(v3, v4);
}

void *sub_1010B54C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v24[2] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v4[6] = v12;
  v35 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v36 = v4;
  v25 = "Removing key a: %@ s: %@";
  v4[7] = 0;
  v4[8] = 0;
  v13 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v33 = *(v9 + 104);
  v26 = v9 + 104;
  v34 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v33(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  v31 = sub_1010B79B8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v14 = sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36[9] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = "com.apple.searchpartyd.cryptor";
  v15 = v13;
  v17 = v32;
  v16 = v33;
  v33(v11, v15, v32);
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  v24[0] = v5;
  v24[1] = v14;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36[10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = "partyd.cryptor.purge";
  v16(v11, v34, v17);
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v11;
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = v36;
  v36[11] = v19;
  v33(v18, v34, v32);
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20[12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v20[13] = PropertyListEncoder.init()();
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v20[14] = PropertyListDecoder.init()();
  *(v20 + 15) = xmmword_10138BBF0;
  v21 = v28;
  v20[2] = v27;
  v20[3] = v21;
  v22 = v30;
  v20[4] = v29;
  v20[5] = v22;
  return v20;
}

uint64_t sub_1010B59A4(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_101695228 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10177C610, "Asking client to purge.", 23, 2, _swiftEmptyArrayStorage);
  sub_1000BC4D4(&qword_1016C7138, &qword_101403808);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v4)
  {
    v4(result);
    return sub_1000BB27C(v4, v5);
  }

  return result;
}

void sub_1010B5B7C(void *a1)
{
  v2 = type metadata accessor for SystemInfo.DeviceLockState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &aBlock - v7;
  if (a1[16] >> 60 == 15)
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v25 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v30)
    {
      v9 = a1[10];
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1010B7A78;
      *(v10 + 24) = a1;
      v28 = sub_10040B9F8;
      v29 = v10;
      aBlock = _NSConcreteStackBlock;
      v25 = 1107296256;
      v26 = sub_10013FE14;
      v27 = &unk_101665600;
      v11 = _Block_copy(&aBlock);

      dispatch_sync(v9, v11);
      _Block_release(v11);
      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if ((v9 & 1) == 0)
      {
        sub_1010B6ADC();
        return;
      }

      __break(1u);
      goto LABEL_17;
    }

    static SystemInfo.lockState.getter();
    (*(v3 + 104))(v6, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v2);
    sub_1010B79B8(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v13 = *(v3 + 8);
    v13(v6, v2);
    v13(v8, v2);
    if (aBlock == v30)
    {
      v12 = static os_log_type_t.default.getter();
      if (qword_101695228 == -1)
      {
LABEL_9:
        os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177C610, "Short-circuiting validateEncryptionState because before first unlock", 68, 2, _swiftEmptyArrayStorage);
        return;
      }

LABEL_17:
      v22 = v12;
      swift_once();
      v12 = v22;
      goto LABEL_9;
    }

    v14 = static Keychain.data(account:service:)();
    if (v15 >> 60 == 15)
    {
      v16 = a1[10];
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1010B7940;
      *(v17 + 24) = a1;
      v28 = sub_1000D2FB0;
      v29 = v17;
      aBlock = _NSConcreteStackBlock;
      v25 = 1107296256;
      v26 = sub_10013FE14;
      v27 = &unk_1016655B0;
      v18 = _Block_copy(&aBlock);

      dispatch_sync(v16, v18);
      _Block_release(v18);
      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if (v16)
      {
        __break(1u);
      }

      else
      {
        sub_1010B6ADC();
        v19 = static os_log_type_t.default.getter();
        if (qword_101695228 == -1)
        {
LABEL_13:
          os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, qword_10177C610, "New encryption key generated", 28, 2, _swiftEmptyArrayStorage);
          return;
        }
      }

      v23 = v19;
      swift_once();
      v19 = v23;
      goto LABEL_13;
    }

    v20 = a1[15];
    v21 = a1[16];
    a1[15] = v14;
    a1[16] = v15;
    sub_100006654(v20, v21);
  }
}

uint64_t sub_1010B621C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  aBlock[4] = sub_1010B798C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101665678;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1010B79B8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_1010B64F4(uint64_t a1, uint64_t a2)
{
  Transaction.capture()();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1010B6ADC();
  }

  return result;
}

uint64_t sub_1010B6554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1010B79B0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101665718;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1010B79B8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);
}

void *sub_1010B682C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    Transaction.capture()();
    if ((static SystemInfo.underTest.getter() & 1) == 0)
    {

      static Keychain.deleteData(account:service:)();
    }

    v3 = v2[15];
    v4 = v2[16];
    *(v2 + 15) = xmmword_10138BBF0;
    sub_100006654(v3, v4);
    v5 = static os_log_type_t.default.getter();
    if (qword_101695228 != -1)
    {
      swift_once();
    }

    v6 = qword_10177C610;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10138BBE0;
    v9 = v2[2];
    v8 = v2[3];
    *(v7 + 56) = &type metadata for String;
    v10 = sub_100008C00();
    *(v7 + 64) = v10;
    *(v7 + 32) = v9;
    *(v7 + 40) = v8;
    v11 = v2[4];
    v12 = v2[5];
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v10;
    *(v7 + 72) = v11;
    *(v7 + 80) = v12;

    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Removing key a: %@ s: %@", 24, 2, v7);

    v13 = v2[10];
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1010B7A78;
    *(v14 + 24) = v2;
    v16[4] = sub_10040B9F8;
    v16[5] = v14;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10013FE14;
    v16[3] = &unk_101665768;
    v15 = _Block_copy(v16);

    dispatch_sync(v13, v15);
    _Block_release(v15);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1010B6ADC()
{
  v1 = type metadata accessor for HashAlgorithm();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0[9];
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (static SystemInfo.underTest.getter())
    {
      v11 = String.utf8Data.getter();
      v13 = v12;
      (*(v2 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v1);
      v14 = Data.hash(algorithm:)();
      v16 = v15;
      sub_100016590(v11, v13);
      (*(v2 + 8))(v4, v1);
      v17 = v0[15];
      v18 = v0[16];
      v0[15] = v14;
      v0[16] = v16;
      sub_100006654(v17, v18);
    }

    else if (v0[16] >> 60 == 15)
    {
      v19 = objc_autoreleasePoolPush();
      sub_1010B6D28(v0);
      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1010B6D28(void *a1)
{
  v3 = type metadata accessor for Keychain.DataProtectionClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[2];
  v16[0] = a1[5];
  v16[1] = v7;
  v8 = static Keychain.data(account:service:)();
  if (v1)
  {
  }

  else
  {
    v10 = v9;
    if (v9 >> 60 != 15)
    {
      v11 = v8;
      goto LABEL_5;
    }
  }

  v11 = static Data.random(bytes:)();
  v10 = v12;
  v16[2] = v11;
  v16[3] = v12;
  (*(v4 + 104))(v6, enum case for Keychain.DataProtectionClass.c(_:), v3);
  sub_1000E0A3C();
  static Keychain.set<A>(data:account:service:dataProtectionClass:)();
  (*(v4 + 8))(v6, v3);
LABEL_5:
  v13 = a1[15];
  v14 = a1[16];
  a1[15] = v11;
  a1[16] = v10;
  return sub_100006654(v13, v14);
}

NSObject *sub_1010B6FB0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v7 = type metadata accessor for EncryptedData();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a3 & 1) == 0)
  {
    v11 = *(v5 + 48);
    sub_1000BC4D4(&qword_1016C7138, &qword_101403808);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    if (aBlock)
    {
      sub_1000BB27C(aBlock, v21);
      sub_1010B78EC();
      swift_allocError();
      v13 = 1;
      goto LABEL_7;
    }
  }

  v26 = v8;
  v11 = *(v5 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10088FFBC;
  *(v14 + 24) = v5;
  v24 = sub_10040B9F8;
  v25 = v14;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10013FE14;
  v23 = &unk_1016656C8;
  v15 = _Block_copy(&aBlock);

  dispatch_sync(v11, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if ((v15 & 1) == 0)
  {
    sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
    OS_dispatch_queue.sync<A>(execute:)();
    v17 = v21;
    if (v21 >> 60 != 15)
    {
      v18 = aBlock;
      v19 = Data.spEncrypt(key:ivLength:)();
      if (v4)
      {
        sub_100006654(v18, v17);
      }

      else
      {
        __chkstk_darwin(v19);
        *(&aBlock - 2) = v5;
        *(&aBlock - 1) = v10;
        OS_dispatch_queue.sync<A>(execute:)();
        sub_100006654(v18, v17);
        v11 = aBlock;
        (*(v26 + 8))(v10, v7);
      }

      return v11;
    }

    sub_1010B78EC();
    swift_allocError();
    v13 = 3;
LABEL_7:
    *v12 = v13;
    swift_willThrow();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1010B738C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for EncryptedData();
  sub_1010B79B8(&qword_1016B9AF0, &type metadata accessor for EncryptedData, &protocol conformance descriptor for EncryptedData);
  result = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_1010B7424(uint64_t *x8_0@<X8>)
{
  v5 = objc_autoreleasePoolPush();
  sub_1010B74AC(&v6, x8_0);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1010B74AC@<X0>(uint64_t *a3@<X3>, uint64_t *a4@<X8>)
{
  v25 = a4;
  v6 = type metadata accessor for EncryptedData();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
  OS_dispatch_queue.sync<A>(execute:)();
  v9 = v27;
  if (v27 >> 60 == 15)
  {
    sub_1010B78EC();
    v10 = swift_allocError();
    *v11 = 3;
    swift_willThrow();
  }

  else
  {
    v24 = a3;
    v12 = v26;
    sub_1010B79B8(&qword_10169C990, &type metadata accessor for EncryptedData, &protocol conformance descriptor for EncryptedData);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v10 = v4;
    if (!v4)
    {
      v19 = EncryptedData.decrypt(key:)();
      v21 = v20;
      (*(v28 + 8))(v8, v6);
      result = sub_100006654(v12, v9);
      v23 = v25;
      *v25 = v19;
      v23[1] = v21;
      return result;
    }

    sub_100006654(v12, v9);
    a3 = v24;
  }

  v13 = static os_log_type_t.error.getter();
  if (qword_101695228 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C610;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v26 = v10;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Error decoding EncryptedData: %@", 32, 2, v15);

  result = swift_willThrow();
  *a3 = v10;
  return result;
}

uint64_t sub_1010B77F4()
{

  sub_1000BB27C(*(v0 + 56), *(v0 + 64));

  sub_100006654(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t sub_1010B7864()
{
  sub_1010B77F4();

  return swift_deallocClassInstance();
}

uint64_t sub_1010B78BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = v2;
  a1[1] = v3;
  return sub_10002E98C(v2, v3);
}

unint64_t sub_1010B78EC()
{
  result = qword_1016C7130;
  if (!qword_1016C7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7130);
  }

  return result;
}

uint64_t sub_1010B79B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1010B7A14()
{
  result = qword_1016C7140;
  if (!qword_1016C7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7140);
  }

  return result;
}

uint64_t sub_1010B7ABC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v18 - v9;
  __chkstk_darwin(v8);
  v11 = *(v4 + 16);
  v11(v18 - v12, v2, a1);
  if (swift_dynamicCast())
  {
    v13 = 0x7972616D6972702ELL;
    v14 = 0xE900000000000028;
  }

  else
  {
    v11(v10, v2, a1);
    if (swift_dynamicCast())
    {
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v19, ".primaryWild(");
      HIWORD(v19[1]) = -4864;
      goto LABEL_6;
    }

    v11(v7, v2, a1);
    if (!swift_dynamicCast())
    {
      return 7104878;
    }

    v13 = 0x61646E6F6365732ELL;
    v14 = 0xEB00000000287972;
  }

  v19[0] = v13;
  v19[1] = v14;
LABEL_6:
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18[0] = v18[1];
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return v19[0];
}

uint64_t sub_1010B7D4C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = a4;
  *(v4 + 256) = a3;
  *(v4 + 72) = a1;
  *(v4 + 96) = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  *(v4 + 104) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v4 + 112) = v5;
  *(v4 + 120) = *(v5 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = type metadata accessor for KeySyncMetadata(0);
  *(v4 + 144) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 152) = v6;
  *(v4 + 160) = *(v6 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1010B7EDC, 0, 0);
}

uint64_t sub_1010B7EDC()
{
  v27 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  static Date.trustedNow.getter(v1);
  sub_1010BD720(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v4 = dispatch thunk of static Comparable.< infix(_:_:)();
  v5 = *(v3 + 8);
  v5(v1, v2);
  if (v4)
  {
    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[19];
    v9 = v0[10];
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C618);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[21];
    v15 = v0[19];
    if (v13)
    {
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v16 = 136446210;
      sub_1010BD720(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v5(v14, v15);
      v20 = sub_1000136BC(v17, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Incoming date %{public}s is in the future. Ignoring it.", v16, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {

      v5(v14, v15);
    }

    sub_1010BD6AC();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }

  else
  {
    v21 = swift_task_alloc();
    v0[23] = v21;
    *v21 = v0;
    v21[1] = sub_1010B8260;

    return daemon.getter();
  }
}

uint64_t sub_1010B8260(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 192) = a1;

  v3 = swift_task_alloc();
  *(v2 + 200) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1010BD720(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1010BD720(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1010B843C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1010B843C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_1010B8C40;
  }

  else
  {

    v4 = sub_1010B8558;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1010B8558()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 256);
  v3 = v1[3];
  v4 = v1[4];
  sub_1000035D0(v1, v3);
  v5 = (*(v4 + 88))(v3, v4);
  v6 = *(v0 + 96);
  if (v2 & 0x100) != 0 || (v5)
  {
    v14 = (*(v0 + 72) + *(v6 + 20));
    v15 = v14[3];
    v16 = v14[4];
    sub_1000035D0(v14, v15);
    if (sub_10002BD40(v15, v16))
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        v18 = 5;
      }

      else
      {
        v18 = 6;
      }
    }

    else
    {

      v18 = 5;
    }

    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 80);
    (*(*(v0 + 120) + 16))(v21, *(v0 + 72), *(v0 + 112));
    sub_10001F280(v14, v21 + v22[6]);
    (*(v20 + 16))(v21 + v22[7], v23, v19);
    *(v21 + v22[5]) = v18;
    v24 = swift_task_alloc();
    *(v0 + 240) = v24;
    *v24 = v0;
    v24[1] = sub_1010B8A6C;
    v25 = *(v0 + 144);

    return sub_1010CDAC4(v25);
  }

  else
  {
    v7 = *(v0 + 72);
    v8 = *(v6 + 20);
    v9 = *(v0 + 256);
    v10 = swift_task_alloc();
    *(v0 + 224) = v10;
    *v10 = v0;
    v10[1] = sub_1010B87BC;
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);

    return sub_1010B950C(v7 + v8, v9, v11, v12);
  }
}

uint64_t sub_1010B87BC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1010B8CE8;
  }

  else
  {
    v2 = sub_1010B88D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010B88D0()
{
  v1 = (v0[9] + *(v0[12] + 20));
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  if (sub_10002BD40(v2, v3))
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      v5 = 5;
    }

    else
    {
      v5 = 6;
    }
  }

  else
  {

    v5 = 5;
  }

  v6 = v0[19];
  v7 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[10];
  (*(v0[15] + 16))(v8, v0[9], v0[14]);
  sub_10001F280(v1, v8 + v9[6]);
  (*(v7 + 16))(v8 + v9[7], v10, v6);
  *(v8 + v9[5]) = v5;
  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_1010B8A6C;
  v12 = v0[18];

  return sub_1010CDAC4(v12);
}

uint64_t sub_1010B8A6C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1010B911C;
  }

  else
  {
    v2 = sub_1010B8B80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010B8B80()
{
  v1 = *(v0 + 144);

  sub_1010BD64C(v1, type metadata accessor for KeySyncMetadata);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010B8C40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010B8CE8()
{
  v32 = v0;
  *(v0 + 64) = *(v0 + 232);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 259) == 1)
  {
  }

  else
  {
    v1 = (v0 + 16);

    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 88);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C618);
    sub_10001F280(v2, v1);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 120);
      v6 = *(v0 + 128);
      v8 = *(v0 + 112);
      v30 = *(v0 + 256);
      v9 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v9 = 141558531;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v11 = *(v0 + 40);
      v10 = *(v0 + 48);
      sub_1000035D0(v1, v11);
      (*(*(*(v10 + 8) + 8) + 32))(v11);
      sub_1010BD720(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v7 + 8))(v6, v8);
      sub_100007BAC(v1);
      v15 = sub_1000136BC(v12, v14, &v31);

      *(v9 + 14) = v15;
      *(v9 + 22) = 258;
      *(v9 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update metadata for: %{private,mask.hash}s, hint: %{public}hhu.", v9, 0x19u);
      sub_100007BAC(v29);
    }

    else
    {

      sub_100007BAC(v1);
    }
  }

  v16 = (*(v0 + 72) + *(*(v0 + 96) + 20));
  v17 = v16[3];
  v18 = v16[4];
  sub_1000035D0(v16, v17);
  if (sub_10002BD40(v17, v18))
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      v20 = 5;
    }

    else
    {
      v20 = 6;
    }
  }

  else
  {

    v20 = 5;
  }

  v21 = *(v0 + 152);
  v22 = *(v0 + 160);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 80);
  (*(*(v0 + 120) + 16))(v23, *(v0 + 72), *(v0 + 112));
  sub_10001F280(v16, v23 + v24[6]);
  (*(v22 + 16))(v23 + v24[7], v25, v21);
  *(v23 + v24[5]) = v20;
  v26 = swift_task_alloc();
  *(v0 + 240) = v26;
  *v26 = v0;
  v26[1] = sub_1010B8A6C;
  v27 = *(v0 + 144);

  return sub_1010CDAC4(v27);
}

uint64_t sub_1010B911C()
{
  v23 = v0;
  *(v0 + 56) = *(v0 + 248);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 258) == 1)
  {
    sub_1010BD64C(*(v0 + 144), type metadata accessor for KeySyncMetadata);
  }

  else
  {

    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 104);
    v2 = *(v0 + 72);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C618);
    sub_1010BD810(v2, v1, type metadata accessor for BeaconKeyManager.IndexInformation);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 144);
    if (v6)
    {
      v21 = *(v0 + 144);
      v8 = *(v0 + 104);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v9 = 141558531;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_1010BD720(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      sub_1010BD64C(v8, type metadata accessor for BeaconKeyManager.IndexInformation);
      v15 = sub_1000136BC(v12, v14, &v22);

      *(v9 + 14) = v15;
      *(v9 + 22) = 2112;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 24) = v16;
      *v10 = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update metadata for: %{private,mask.hash}s, error: %@.", v9, 0x20u);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v11);

      v17 = v21;
    }

    else
    {
      v18 = *(v0 + 104);

      sub_1010BD64C(v18, type metadata accessor for BeaconKeyManager.IndexInformation);
      v17 = v7;
    }

    sub_1010BD64C(v17, type metadata accessor for KeySyncMetadata);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1010B950C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 256) = a3;
  *(v4 + 264) = a4;
  *(v4 + 561) = a2;
  *(v4 + 248) = a1;
  *(v4 + 272) = type metadata accessor for KeySyncMetadata(0);
  *(v4 + 280) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016C7150, &qword_1014038E0);
  *(v4 + 288) = swift_task_alloc();
  updated = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
  *(v4 + 296) = updated;
  *(v4 + 304) = *(updated - 8);
  *(v4 + 312) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v4 + 320) = v6;
  *(v4 + 328) = *(v6 - 8);
  *(v4 + 336) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  *(v4 + 344) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v4 + 352) = v7;
  *(v4 + 360) = *(v7 - 8);
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();

  return _swift_task_switch(sub_1010B9738, 0, 0);
}

uint64_t sub_1010B9738()
{
  v27 = v0;
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  static Date.trustedNow.getter(v1);
  sub_1010BD720(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v4 = dispatch thunk of static Comparable.< infix(_:_:)();
  v5 = *(v3 + 8);
  v0[48] = v5;
  v0[49] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (v4)
  {
    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v7 = v0[45];
    v6 = v0[46];
    v8 = v0[44];
    v9 = v0[32];
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C618);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[46];
    v15 = v0[44];
    if (v13)
    {
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v16 = 136446210;
      sub_1010BD720(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v5(v14, v15);
      v20 = sub_1000136BC(v17, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Incoming date %{public}s is in the future. Ignoring it.", v16, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {

      v5(v14, v15);
    }

    sub_1010BD6AC();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }

  else
  {
    v21 = swift_task_alloc();
    v0[50] = v21;
    *v21 = v0;
    v21[1] = sub_1010B9AD8;

    return daemon.getter();
  }
}

uint64_t sub_1010B9AD8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[51] = a1;

  v3 = swift_task_alloc();
  v2[52] = v3;
  v4 = type metadata accessor for Daemon();
  v2[53] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1010BD720(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[54] = v6;
  v7 = sub_1010BD720(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1010B9CB8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1010B9CB8(uint64_t a1)
{
  v3 = *v2;
  v3[55] = a1;
  v3[56] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1010BB53C, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[57] = v4;
    *v4 = v3;
    v4[1] = sub_1010B9E2C;

    return daemon.getter();
  }
}

uint64_t sub_1010B9E2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 464) = a1;

  v5 = swift_task_alloc();
  *(v3 + 472) = v5;
  v6 = type metadata accessor for ObservationStoreService();
  v7 = sub_1010BD720(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v5 = v4;
  v5[1] = sub_1010B9FE0;
  v8 = *(v2 + 432);
  v9 = *(v2 + 424);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1010B9FE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 488) = v1;

  if (v1)
  {
    v4 = sub_1010BB5FC;
  }

  else
  {

    v4 = sub_1010BA0FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1010BA0FC()
{
  v1 = v0[33];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = v1[3];
  v5 = v1[4];
  sub_1000035D0(v1, v4);
  (*(v5 + 192))(v4, v5);
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_1010BA220;
  v7 = v0[47];
  v9 = v0[42];
  v8 = v0[43];

  return sub_1010CD424(v8, v9, v7);
}

uint64_t sub_1010BA220()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 376);
  v4 = *(*v0 + 352);
  v5 = *(*v0 + 336);
  v6 = *(*v0 + 328);
  v7 = *(*v0 + 320);

  v2(v3, v4);
  v8 = *(v6 + 8);
  *(v1 + 504) = v8;
  *(v1 + 512) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);

  return _swift_task_switch(sub_1010BA3F0, 0, 0);
}

uint64_t sub_1010BA3F0()
{
  v42 = v0;
  sub_10001F280(*(v0 + 248), v0 + 16);
  sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  if ((swift_dynamicCast() & 1) != 0 || (sub_10001F280(*(v0 + 248), v0 + 56), swift_dynamicCast()))
  {
    v1 = *(v0 + 440);

    return _swift_task_switch(sub_1010BAA80, v1, 0);
  }

  else
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 304);
    v4 = *(v0 + 288);
    sub_1010BBB98(*(v0 + 264), *(v0 + 344), *(v0 + 256), *(v0 + 248), _swiftEmptyArrayStorage, v4);

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v5 = *(v0 + 344);
      sub_10000B3A8(*(v0 + 288), &qword_1016C7150, &qword_1014038E0);
      sub_1010BD6AC();
      v6 = swift_allocError();
      *v7 = 5;
      swift_willThrow();
      sub_10000B3A8(v5, &unk_1016C8FC0, &unk_10139D7D0);
      *(v0 + 232) = v6;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      if (swift_dynamicCast() && *(v0 + 560) == 1)
      {

        sub_10022A59C();
        swift_allocError();
        *v8 = 1;
        swift_willThrow();
      }

      else
      {

        if (qword_101695230 != -1)
        {
          swift_once();
        }

        v22 = *(v0 + 264);
        v23 = type metadata accessor for Logger();
        sub_1000076D4(v23, qword_10177C618);
        sub_10001F280(v22, v0 + 96);
        swift_errorRetain();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v39 = *(v0 + 504);
          v26 = *(v0 + 336);
          v27 = *(v0 + 320);
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v41 = v40;
          *v28 = 141558531;
          *(v28 + 4) = 1752392040;
          *(v28 + 12) = 2081;
          v31 = *(v0 + 120);
          v30 = *(v0 + 128);
          sub_1000035D0((v0 + 96), v31);
          (*(*(*(v30 + 8) + 8) + 32))(v31);
          sub_1010BD720(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v32 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v33;
          v39(v26, v27);
          sub_100007BAC((v0 + 96));
          v35 = sub_1000136BC(v32, v34, &v41);

          *(v28 + 14) = v35;
          *(v28 + 22) = 2114;
          swift_errorRetain();
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v28 + 24) = v36;
          *v29 = v36;
          _os_log_impl(&_mh_execute_header, v24, v25, "Failed to update key sync with hint for beacon %{private,mask.hash}s %{public}@.", v28, 0x20u);
          sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

          sub_100007BAC(v40);
        }

        else
        {

          sub_100007BAC((v0 + 96));
        }

        swift_willThrow();
      }

      v37 = *(v0 + 8);

      return v37();
    }

    else
    {
      v9 = *(v0 + 352);
      v10 = *(v0 + 360);
      v11 = *(v0 + 312);
      v12 = *(v0 + 296);
      v14 = *(v0 + 272);
      v13 = *(v0 + 280);
      v15 = *(v0 + 264);
      sub_1010BE08C(*(v0 + 288), v11, type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate);
      v16 = v15[3];
      v17 = v15[4];
      sub_1000035D0(v15, v16);
      (*(*(*(v17 + 8) + 8) + 32))(v16);
      v18 = *(v11 + *(v12 + 20));
      v19 = (v13 + v14[6]);
      v19[3] = &type metadata for PrimaryIndex;
      v19[4] = sub_10002A2B8();
      *v19 = v18;
      (*(v10 + 16))(v13 + v14[7], v11, v9);
      *(v13 + v14[5]) = 7;
      v20 = swift_task_alloc();
      *(v0 + 544) = v20;
      *v20 = v0;
      v20[1] = sub_1010BB308;
      v21 = *(v0 + 280);

      return sub_1010CDAC4(v21);
    }
  }
}

uint64_t sub_1010BAA80()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 561);
  v3 = *(v0 + 248);
  sub_10001F280(*(v0 + 264), v0 + 136);
  sub_10001F280(v3, v0 + 176);
  v4 = swift_allocObject();
  *(v0 + 520) = v4;
  *(v4 + 16) = v1;
  sub_10000A748((v0 + 136), v4 + 24);
  sub_10000A748((v0 + 176), v4 + 64);
  *(v4 + 104) = v2;

  v5 = swift_task_alloc();
  *(v0 + 528) = v5;
  v6 = sub_1000BC4D4(&qword_1016C7158, &qword_1014038E8);
  *v5 = v0;
  v5[1] = sub_1010BABD4;

  return unsafeBlocking<A>(context:_:)(v0 + 240, 0xD000000000000010, 0x800000010134A8C0, sub_1010BD768, v4, v6);
}

uint64_t sub_1010BABD4()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_1010BAD00, v1, 0);
}

uint64_t sub_1010BAD24(uint64_t a1)
{
  v43 = v1;
  if (!*(v1 + 536))
  {
    v5 = *(v1 + 344);
    v6 = 4;
LABEL_5:
    sub_1010BD6AC();
    v7 = swift_allocError();
    *v8 = v6;
    swift_willThrow();
    sub_10000B3A8(v5, &unk_1016C8FC0, &unk_10139D7D0);
    *(v1 + 232) = v7;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast() && *(v1 + 560) == 1)
    {

      sub_10022A59C();
      swift_allocError();
      *v9 = 1;
      swift_willThrow();
    }

    else
    {

      if (qword_101695230 != -1)
      {
        swift_once();
      }

      v10 = *(v1 + 264);
      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177C618);
      sub_10001F280(v10, v1 + 96);
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v40 = *(v1 + 504);
        v14 = *(v1 + 336);
        v15 = *(v1 + 320);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = v41;
        *v16 = 141558531;
        *(v16 + 4) = 1752392040;
        *(v16 + 12) = 2081;
        v19 = *(v1 + 120);
        v18 = *(v1 + 128);
        sub_1000035D0((v1 + 96), v19);
        (*(*(*(v18 + 8) + 8) + 32))(v19);
        sub_1010BD720(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        v40(v14, v15);
        sub_100007BAC((v1 + 96));
        v23 = sub_1000136BC(v20, v22, &v42);

        *(v16 + 14) = v23;
        *(v16 + 22) = 2114;
        swift_errorRetain();
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 24) = v24;
        *v17 = v24;
        _os_log_impl(&_mh_execute_header, v12, v13, "Failed to update key sync with hint for beacon %{private,mask.hash}s %{public}@.", v16, 0x20u);
        sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v41);
      }

      else
      {

        sub_100007BAC((v1 + 96));
      }

      swift_willThrow();
    }

    v39 = *(v1 + 8);

    return v39();
  }

  v2 = *(v1 + 296);
  v3 = *(v1 + 304);
  v4 = *(v1 + 288);
  sub_1010BBB98(*(v1 + 264), *(v1 + 344), *(v1 + 256), *(v1 + 248), *(v1 + 536), v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = *(v1 + 344);
    sub_10000B3A8(*(v1 + 288), &qword_1016C7150, &qword_1014038E0);
    v6 = 5;
    goto LABEL_5;
  }

  v25 = *(v1 + 352);
  v26 = *(v1 + 360);
  v27 = *(v1 + 312);
  v28 = *(v1 + 296);
  v30 = *(v1 + 272);
  v29 = *(v1 + 280);
  v31 = *(v1 + 264);
  sub_1010BE08C(*(v1 + 288), v27, type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate);
  v32 = v31[3];
  v33 = v31[4];
  sub_1000035D0(v31, v32);
  (*(*(*(v33 + 8) + 8) + 32))(v32);
  v34 = *(v27 + *(v28 + 20));
  v35 = (v29 + v30[6]);
  v35[3] = &type metadata for PrimaryIndex;
  v35[4] = sub_10002A2B8();
  *v35 = v34;
  (*(v26 + 16))(v29 + v30[7], v27, v25);
  *(v29 + v30[5]) = 7;
  v36 = swift_task_alloc();
  *(v1 + 544) = v36;
  *v36 = v1;
  v36[1] = sub_1010BB308;
  v37 = *(v1 + 280);

  return sub_1010CDAC4(v37);
}

uint64_t sub_1010BB308()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1010BB6C8;
  }

  else
  {
    v2 = sub_1010BB41C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010BB41C()
{
  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[35];

  sub_1010BD64C(v2, type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate);
  sub_10000B3A8(v1, &unk_1016C8FC0, &unk_10139D7D0);
  sub_1010BD64C(v3, type metadata accessor for KeySyncMetadata);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1010BB53C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010BB5FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010BB6C8()
{
  v25 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 280);
  sub_1010BD64C(*(v0 + 312), type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate);
  sub_10000B3A8(v1, &unk_1016C8FC0, &unk_10139D7D0);
  sub_1010BD64C(v2, type metadata accessor for KeySyncMetadata);
  *(v0 + 232) = *(v0 + 552);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 560) == 1)
  {

    sub_10022A59C();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  else
  {
    v4 = (v0 + 96);

    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 264);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C618);
    sub_10001F280(v5, v4);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v21 = *(v0 + 504);
      v9 = *(v0 + 336);
      v10 = *(v0 + 320);
      v11 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v11 = 141558531;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v13 = *(v0 + 120);
      v12 = *(v0 + 128);
      sub_1000035D0(v4, v13);
      (*(*(*(v12 + 8) + 8) + 32))(v13);
      sub_1010BD720(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v21(v9, v10);
      sub_100007BAC(v4);
      v17 = sub_1000136BC(v14, v16, &v24);

      *(v11 + 14) = v17;
      *(v11 + 22) = 2114;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v18;
      *v22 = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update key sync with hint for beacon %{private,mask.hash}s %{public}@.", v11, 0x20u);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v23);
    }

    else
    {

      sub_100007BAC(v4);
    }

    swift_willThrow();
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1010BBB14()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C618);
  sub_1000076D4(v0, qword_10177C618);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010BBB98@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a2;
  v90 = a1;
  v10 = sub_1000BC4D4(&qword_1016C7150, &qword_1014038E0);
  __chkstk_darwin(v10 - 8);
  v12 = v80 - v11;
  v13 = type metadata accessor for UUID();
  v87 = *(v13 - 8);
  v88 = v13;
  __chkstk_darwin(v13);
  v86 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for RecordUpdateMaker.RecordUpdateContext(0);
  __chkstk_darwin(updated);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a4;
  sub_10001F280(a4, v96);
  sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  if (swift_dynamicCast())
  {
    v22 = v93[0];
    v23 = *(sub_1000BC4D4(&qword_1016C7168, &qword_1014038F8) + 48);
    *v21 = v22;
    (*(v16 + 16))(&v21[v23], a3, v15);
    swift_storeEnumTagMultiPayload();
    sub_100007BAC(v96);
    goto LABEL_21;
  }

  v83 = v15;
  if ((swift_dynamicCast() & 1) == 0 && !swift_dynamicCast())
  {
    v25 = a6;
    if (qword_101695230 == -1)
    {
LABEL_30:
      v68 = type metadata accessor for Logger();
      sub_1000076D4(v68, qword_10177C618);
      sub_10001F280(v89, v93);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v92 = v72;
        *v71 = 136446210;
        v73 = v94;
        v74 = v95;
        sub_1000035D0(v93, v94);
        v75 = sub_1010B7ABC(v73, v74);
        v77 = v76;
        sub_100007BAC(v93);
        v78 = sub_1000136BC(v75, v77, &v92);

        *(v71 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v69, v70, "Unsupported index type for KeySyncRecord change!\nReceived %{public}s", v71, 0xCu);
        sub_100007BAC(v72);
      }

      else
      {

        sub_100007BAC(v93);
      }

      v79 = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
      (*(*(v79 - 8) + 56))(v25, 1, 1, v79);
      return sub_100007BAC(v96);
    }

LABEL_43:
    swift_once();
    goto LABEL_30;
  }

  v80[1] = updated;
  v81 = a5;
  v84 = a6;
  sub_100007BAC(v96);
  v82 = *v85;
  sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v24 = a3;
  v25 = v90[3];
  v26 = v90[4];
  sub_1000035D0(v90, v25);
  v27 = *(v26 + 112);
  v28 = v26;
  v29 = v24;
  v30 = 0.0;
  if (v27(v25, v28))
  {
    Date.timeIntervalSince(_:)();
  }

  Date.timeIntervalSince(_:)();
  if (v31 >= 0.0)
  {
    v30 = v31;
  }

  v32 = v83;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v33 = sub_101073524(v96[0]);

  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (!is_mul_ok(v33, 0x3CuLL))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v34 = v30 / (60 * v33);
  if (COERCE__INT64(fabs(v34)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v34 <= -1.0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v34 >= 1.84467441e19)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v25 = v82 + v34;
  if (__CFADD__(v82, v34))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  Date.addingTimeInterval(_:)();
  v36 = v90[3];
  v35 = v90[4];
  sub_1000035D0(v90, v36);
  v37 = v86;
  (*(*(*(v35 + 8) + 8) + 32))(v36);
  v38 = sub_10088756C(v37, v18, v29, 0);
  (*(v87 + 8))(v37, v88);
  (*(v16 + 8))(v18, v32);
  v39 = v25 - v38;
  if (v25 < v38)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v40 = __CFADD__(v25, v38);
  v41 = v25 + v38;
  if (v40)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v41 < v39)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v42 = sub_1000BC4D4(&qword_1016C7160, &qword_1014038F0);
  v43 = v42[12];
  v44 = &v21[v42[16]];
  v45 = v42[20];
  sub_10001F280(v89, v21);
  (*(v16 + 16))(&v21[v43], v29, v32);
  *v44 = v39;
  *(v44 + 1) = v41;
  v44[16] = 0;
  *&v21[v45] = v81;
  swift_storeEnumTagMultiPayload();

  a6 = v84;
LABEL_21:
  sub_1010BCDB4(v21, v12);
  v46 = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v12, 1, v46) == 1)
  {
    sub_10000B3A8(v12, &qword_1016C7150, &qword_1014038E0);
    if (qword_101695230 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177C618);
    sub_10001F280(v90, v96);
    sub_10001F280(v89, v93);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      LODWORD(v89) = v50;
      v52 = a6;
      v53 = v51;
      v90 = swift_slowAlloc();
      v92 = v90;
      *v53 = 141558787;
      *(v53 + 4) = 1752392040;
      *(v53 + 12) = 2081;
      v84 = v52;
      v55 = v97;
      v54 = v98;
      sub_1000035D0(v96, v97);
      v56 = v86;
      (*(*(*(v54 + 8) + 8) + 32))(v55);
      sub_1010BD720(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = v88;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v87 + 8))(v56, v57);
      sub_100007BAC(v96);
      v61 = sub_1000136BC(v58, v60, &v92);

      *(v53 + 14) = v61;
      *(v53 + 22) = 2048;
      sub_1000035D0(v93, v94);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v62 = v91;
      sub_100007BAC(v93);
      *(v53 + 24) = v62;
      *(v53 + 32) = 2082;
      v63 = Array.description.getter();
      v65 = sub_1000136BC(v63, v64, &v92);

      *(v53 + 34) = v65;
      v66 = v84;
      _os_log_impl(&_mh_execute_header, v49, v89, "Ignore updateKeySyncRecord for %{private,mask.hash}s.\nindexObserved %llu,\nhintBasedIndexes = %{public}s.", v53, 0x2Au);
      swift_arrayDestroy();

      a6 = v66;

      sub_1010BD64C(v21, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
    }

    else
    {
      sub_100007BAC(v93);

      sub_1010BD64C(v21, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
      sub_100007BAC(v96);
    }

    return (*(v47 + 56))(a6, 1, 1, v46);
  }

  else
  {
    sub_1010BD64C(v21, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
    sub_1010BE08C(v12, a6, type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate);
    return (*(v47 + 56))(a6, 0, 1, v46);
  }
}

uint64_t sub_1010BC708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeySyncMetadata(0);
  v5 = (a2 + *(v4 + 24));
  sub_1000035D0(v5, v5[3]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v6 = (a1 + *(v4 + 24));
  sub_1000035D0(v6, v6[3]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10 >= v11)
  {
    sub_1000035D0(v5, v5[3]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    sub_1000035D0(v6, v6[3]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v11 == v10)
    {
      Date.timeIntervalSince(_:)();
      v7 = v8 >= 900.0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    type metadata accessor for Date();
    sub_1010BD720(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v7 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1010BC8AC()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  updated = type metadata accessor for RecordUpdateMaker.RecordUpdateContext(0);
  __chkstk_darwin(updated);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1010BD810(v1, v11, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1000BC4D4(&qword_1016C7160, &qword_1014038F0);
    v13 = *(v12 + 48);
    v14 = v11 + *(v12 + 64);
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = v14[16];
    sub_10000A748(v11, &v48);
    (*(v3 + 32))(v6, v11 + v13, v2);
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v47._countAndFlagsBits = 0x28646C6977;
    v47._object = 0xE500000000000000;
    v18 = v50;
    v19 = v51;
    sub_1000035D0(&v48, v50);
    v20._countAndFlagsBits = sub_1010B7ABC(v18, v19);
    String.append(_:)(v20);

    v21._countAndFlagsBits = 8236;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    sub_1010BD720(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 8236;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    if (v17)
    {
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      v45 = v16;
      v46 = v15;
      v43 = 0;
      v44 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v33._countAndFlagsBits = 3026478;
      v33._object = 0xE300000000000000;
      String.append(_:)(v33);
      _print_unlocked<A, B>(_:_:)();
      v25 = v43;
      v24 = v44;
    }

    v34 = v24;
    String.append(_:)(*&v25);

    v35._countAndFlagsBits = 8236;
    v35._object = 0xE200000000000000;
    String.append(_:)(v35);
    v36 = Array.description.getter();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 41;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    countAndFlagsBits = v47._countAndFlagsBits;
    (*(v3 + 8))(v6, v2);
    sub_100007BAC(&v48);
  }

  else
  {
    v26 = *v11;
    v27 = sub_1000BC4D4(&qword_1016C7168, &qword_1014038F8);
    (*(v3 + 32))(v8, v11 + *(v27 + 48), v2);
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    v48 = 0x656E774F7261656ELL;
    v49 = 0xEA00000000002872;
    v47._countAndFlagsBits = 0x7972616D6972702ELL;
    v47._object = 0xE900000000000028;
    v43 = v26;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 41;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    String.append(_:)(v47);

    v30._countAndFlagsBits = 8236;
    v30._object = 0xE200000000000000;
    String.append(_:)(v30);
    sub_1010BD720(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    countAndFlagsBits = v48;
    (*(v3 + 8))(v8, v2);
  }

  return countAndFlagsBits;
}

uint64_t sub_1010BCDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for RecordUpdateMaker.RecordUpdateContext(0);
  v9 = __chkstk_darwin(updated);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v73 - v12);
  sub_1010BD810(a1, &v73 - v12, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = *v13;
    v30 = sub_1000BC4D4(&qword_1016C7168, &qword_1014038F8);
    (*(v5 + 32))(a2, v13 + *(v30 + 48), v4);
    v31 = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
    *(a2 + *(v31 + 20)) = v29;
    return (*(*(v31 - 8) + 56))(a2, 0, 1, v31);
  }

  v75 = updated;
  v76 = v11;
  v14 = sub_1000BC4D4(&qword_1016C7160, &qword_1014038F0);
  v15 = v14[12];
  v16 = v13 + v14[16];
  v18 = *v16;
  v17 = *(v16 + 1);
  v19 = v16[16];
  v20 = *(v13 + v14[20]);
  sub_10000A748(v13, v86);
  v77 = v7;
  v78 = v5;
  v21 = *(v5 + 32);
  v79 = v4;
  v21(v7, v13 + v15, v4);
  v22 = *(v20 + 16);
  if (v22)
  {
    v74 = a2;
    v23 = _swiftEmptyArrayStorage;
    v24 = 32;
    do
    {
      if ((v19 & 1) == 0)
      {
        v4 = *(v20 + v24);
        if (v4 >= v18 && v17 >= v4)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83[0] = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1011246BC(0, v23[2] + 1, 1);
            v23 = v83[0];
          }

          v26 = v23[2];
          v25 = v23[3];
          if (v26 >= v25 >> 1)
          {
            sub_1011246BC((v25 > 1), v26 + 1, 1);
            v23 = v83[0];
          }

          v23[2] = v26 + 1;
          v23[v26 + 4] = v4;
        }
      }

      v24 += 8;
      --v22;
    }

    while (v22);
    v33 = *(v20 + 16);
    if (v33 == 1)
    {

      a2 = v74;
      if (*(v20 + 16))
      {
        v34 = *(v20 + 32);

LABEL_27:
        v47 = v78;
        v46 = v79;
        v48 = v77;
        v49 = *(sub_1000BC4D4(&qword_1016C7168, &qword_1014038F8) + 48);
        v50 = v76;
        *v76 = v34;
        (*(v47 + 16))(v50 + v49, v48, v46);
        swift_storeEnumTagMultiPayload();
        sub_1010BCDB4(v50, a2);
        sub_1010BD64C(v50, type metadata accessor for RecordUpdateMaker.RecordUpdateContext);
        (*(v47 + 8))(v48, v46);
        return sub_100007BAC(v86);
      }

      __break(1u);
    }

    else
    {
      a2 = v74;
      if (v23[2] != 1)
      {

        if (v33)
        {
          v83[0] = _swiftEmptyArrayStorage;
          sub_101123BF8(0, v33, 0);
          v51 = v83[0];
          v52 = *(v83[0] + 16);
          v53 = 32;
          do
          {
            v54 = *(v20 + v53);
            v83[0] = v51;
            v55 = *(v51 + 24);
            if (v52 >= v55 >> 1)
            {
              sub_101123BF8((v55 > 1), v52 + 1, 1);
              v51 = v83[0];
            }

            *(v51 + 16) = v52 + 1;
            *(v51 + 8 * v52 + 32) = v54;
            v53 += 8;
            ++v52;
            --v33;
          }

          while (v33);

          a2 = v74;
        }

        else
        {
        }

        v22 = Array.description.getter();
        v4 = v56;

        if (qword_101695230 == -1)
        {
          goto LABEL_37;
        }

        goto LABEL_45;
      }

      if (v23[2])
      {
        v34 = v23[4];

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
LABEL_37:
    v57 = type metadata accessor for Logger();
    sub_1000076D4(v57, qword_10177C618);
    sub_10001F280(v86, v83);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v82 = v76;
      *v60 = 136446722;
      LODWORD(v75) = v59;
      v61 = v84;
      v62 = v85;
      sub_1000035D0(v83, v84);
      v63 = sub_1010B7ABC(v61, v62);
      v65 = v64;
      sub_100007BAC(v83);
      v66 = sub_1000136BC(v63, v65, &v82);

      *(v60 + 4) = v66;
      *(v60 + 12) = 2082;
      v80[0] = v18;
      v80[1] = v17;
      v81 = v19;
      sub_1000BC4D4(&qword_1016C7170, &unk_101403900);
      v67 = String.init<A>(describing:)();
      v69 = sub_1000136BC(v67, v68, &v82);

      *(v60 + 14) = v69;
      *(v60 + 22) = 2082;
      v70 = sub_1000136BC(v22, v4, &v82);

      *(v60 + 24) = v70;
      _os_log_impl(&_mh_execute_header, v58, v75, "Ambiguous primary index for %{public}s\nmodelIndexRange = %{public}s,\nhintBasedIndexes = %{public}s.", v60, 0x20u);
      swift_arrayDestroy();

      goto LABEL_39;
    }

LABEL_41:
    (*(v78 + 8))(v77, v79);
    sub_100007BAC(v86);
    v71 = v83;
    goto LABEL_42;
  }

  if (qword_101695230 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177C618);
  sub_10001F280(v86, v83);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v36, v37))
  {

    goto LABEL_41;
  }

  v38 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v80[0] = v39;
  *v38 = 136446210;
  v40 = v84;
  v41 = v85;
  sub_1000035D0(v83, v84);
  v42 = sub_1010B7ABC(v40, v41);
  v44 = v43;
  sub_100007BAC(v83);
  v45 = sub_1000136BC(v42, v44, v80);

  *(v38 + 4) = v45;
  _os_log_impl(&_mh_execute_header, v36, v37, "Empty hintBasedIndexes array for %{public}s", v38, 0xCu);
  sub_100007BAC(v39);

LABEL_39:
  (*(v78 + 8))(v77, v79);
  v71 = v86;
LABEL_42:
  sub_100007BAC(v71);
  v72 = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
  return (*(*(v72 - 8) + 56))(a2, 1, 1, v72);
}

uint64_t sub_1010BD64C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1010BD6AC()
{
  result = qword_1016C7148;
  if (!qword_1016C7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7148);
  }

  return result;
}

uint64_t sub_1010BD720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1010BD79C(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = type metadata accessor for RecordUpdateMaker.KeySyncRecordUpdate(0);
  v5 = *(result + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  v8 = v7 - v6;
  if (v7 >= v6)
  {
    if ((v7 - v6) >= 0)
    {
      return v8 == 0;
    }
  }

  else
  {
    if ((v6 - v7) >= 0)
    {
      v8 = v7 - v6;
      return v8 == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1010BD810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1010BD878(uint64_t a1)
{
  v2 = type metadata accessor for KeySyncMetadata(0);
  if (*(a1 + *(v2 + 20)) > 3u || *(a1 + *(v2 + 20)) - 1 < 2)
  {
    sub_10001F280(a1 + *(v2 + 24), v7);
    sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
LABEL_4:
    result = swift_dynamicCast();
    if (result)
    {
      return result;
    }

    sub_1010BD6AC();
    swift_allocError();
    v5 = 2;
    goto LABEL_8;
  }

  if (!*(a1 + *(v2 + 20)))
  {
    sub_1010BD6AC();
    swift_allocError();
    v5 = 0;
LABEL_8:
    *v4 = v5;
    return swift_willThrow();
  }

  v6 = *(v2 + 24);
  sub_10001F280(a1 + v6, v7);
  sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_10001F280(a1 + v6, v7);
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1010BDA5C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_1016C8FF0, &qword_101393148);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for KeySyncMetadata(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + *(v10 + 20)))
  {
    sub_1010BD6AC();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return v7 & 1;
  }

  sub_1010BD878(a1);
  if (v2)
  {
    return v7 & 1;
  }

  sub_1010BE01C(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000B3A8(v7, &unk_1016C8FF0, &qword_101393148);
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  sub_1010BE08C(v7, v12, type metadata accessor for KeySyncMetadata);
  v7 = *(v8 + 24);
  sub_10001F280(&v12[v7], v24);
  sub_10001F280(a1 + v7, v25);
  LOBYTE(v7) = sub_1000BC4D4(&qword_1016C7178, &qword_101403910);
  sub_1000BC4D4(&qword_1016C7180, &qword_101403918);
  if (swift_dynamicCast() || (sub_1000BC4D4(&qword_1016C7188, &qword_101403920), swift_dynamicCast()) || (sub_1000BC4D4(&qword_1016C7190, &qword_101403928), swift_dynamicCast()) || (sub_1000BC4D4(&qword_1016C7198, &qword_101403930), swift_dynamicCast()) || (sub_1000BC4D4(&qword_1016C71A0, &qword_101403938), swift_dynamicCast()))
  {
    LOBYTE(v7) = sub_1010BC708(v12, a1);
LABEL_13:
    sub_1010BD64C(v12, type metadata accessor for KeySyncMetadata);
LABEL_14:
    sub_10000B3A8(v24, &qword_1016C7178, &qword_101403910);
    return v7 & 1;
  }

  sub_1000BC4D4(&qword_1016C71A8, &qword_101403940);
  result = swift_dynamicCast();
  if (!result)
  {
    sub_1000BC4D4(&qword_1016C71B0, &qword_101403948);
    if (!swift_dynamicCast())
    {
      sub_1010BD6AC();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      sub_1010BD64C(v12, type metadata accessor for KeySyncMetadata);
      sub_100007BAC(v25);
      sub_100007BAC(v24);
      return v7 & 1;
    }

    v16 = v23;
    if (v22)
    {
      v17 = v22 / 0x60 + 1;
      if (v17 >= v23)
      {
LABEL_27:
        v18 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v17 = 0;
      if (!v23)
      {
        goto LABEL_27;
      }
    }

    type metadata accessor for Date();
    sub_1010BD720(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v18 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
LABEL_32:
    v20 = static Date.> infix(_:_:)();
    result = sub_1010BD64C(v12, type metadata accessor for KeySyncMetadata);
    if (v20)
    {
      v21 = v17 - v16;
      if (v17 >= v16)
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if ((v16 - v17) < 0)
        {
          goto LABEL_44;
        }

        if ((v18 & 1) == 0)
        {
          v21 = v17 - v16;
LABEL_41:
          LOBYTE(v7) = v21 == 0;
          goto LABEL_14;
        }
      }
    }

    else if ((v18 & 1) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_14;
    }

    LOBYTE(v7) = 1;
    goto LABEL_14;
  }

  if (!v22)
  {
    goto LABEL_28;
  }

  if (is_mul_ok(v22, 0x60uLL))
  {
    v15 = 96 * v22 - 96;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    if (96 * v22 - 1 >= v15)
    {
      if (v23 < v15)
      {
        LOBYTE(v7) = 0;
        goto LABEL_13;
      }

LABEL_28:
      type metadata accessor for Date();
      sub_1010BD720(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LOBYTE(v7) = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1010BE01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016C8FF0, &qword_101393148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1010BE08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1010BE0F4(uint64_t a1)
{
  sub_1010BE168(319);
  if (v1 <= 0x3F)
  {
    sub_1010BE1D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1010BE168(uint64_t a1)
{
  if (!qword_1016C7238)
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016C7238);
    }
  }
}

void sub_1010BE1D4(uint64_t a1)
{
  if (!qword_1016C7240)
  {
    __chkstk_darwin(a1);
    sub_1000BC580(&qword_1016A5938, &qword_1013B3440);
    type metadata accessor for Date();
    sub_1000BC580(&qword_1016C7170, &unk_101403900);
    sub_1000BC580(&unk_1016C7248, &qword_101403968);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016C7240);
    }
  }
}

uint64_t sub_1010BE34C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1010BE3D4()
{
  result = qword_1016C7308;
  if (!qword_1016C7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7308);
  }

  return result;
}

uint64_t sub_1010BE428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 65))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1010BE484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1010BE4F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 0:
      v3 = *(v2 + 16);
      goto LABEL_21;
    case 1:
      v4 = *(v2 + 16);
      v5 = 1;
      goto LABEL_17;
    case 2:
      v4 = *(v2 + 16);
      v5 = 2;
      goto LABEL_17;
    case 3:
      v4 = *(v2 + 16);
      v5 = 3;
      goto LABEL_17;
    case 4:
      v4 = *(v2 + 16);
      v5 = 4;
      goto LABEL_17;
    case 5:
      v4 = *(v2 + 16);
      v5 = 5;
      goto LABEL_17;
    case 6:
      v4 = *(v2 + 16);
      v5 = 6;
LABEL_17:
      result = sub_1010BE640(v5, v4);
      *a2 = result & 1;
      *(a2 + 40) = 0;
      return result;
    case 7:
      v3 = *(v2 + 18);
      goto LABEL_21;
    case 8:
      goto LABEL_20;
    case 9:
      v3 = *(v2 + 32);
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_20:
      v3 = *(v2 + 24);
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
      break;
    case 10:
      v3 = *(v2 + 40);
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_6:
      v3 = *(v2 + 52);
LABEL_21:
      *a2 = v3;
      *(a2 + 41) = 1;
      break;
    case 11:
      v3 = *(v2 + 48);
      goto LABEL_21;
    case 12:
      goto LABEL_6;
    case 13:
      v3 = *(v2 + 56);
      goto LABEL_21;
    case 14:
      v3 = *(v2 + 60);
      goto LABEL_21;
    case 16:
      v3 = *(v2 + 64);
      goto LABEL_21;
    default:
      sub_1010BF130();
      swift_allocError();
      return swift_willThrow();
  }

  return result;
}

uint64_t sub_1010BE640(unsigned __int8 a1, char a2)
{
  v4 = type metadata accessor for Bit();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v14[-v9];
  v14[15] = a2;
  sub_1000198E8();
  result = FixedWidthInteger.bits()();
  v12 = 7 - a1;
  if (v12 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 16))(v10, result + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v4);

    (*(v5 + 104))(v8, enum case for Bit.one(_:), v4);
    sub_100019DF0();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v10, v4);
    return v14[14] == v14[13];
  }

  return result;
}

void *sub_1010BE81C(char a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Endianness();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = qword_101403E80[a1];
  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
LABEL_12:
      sub_1010BF0DC();
      swift_allocError();
      *v18 = 0;
      return swift_willThrow();
    }

    v14 = *(a2 + 16);
    v13 = *(a2 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (!v15)
    {
      if (v16 <= v11)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (!v12)
  {
    if (BYTE6(a3) <= v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    goto LABEL_15;
  }

  if (HIDWORD(a2) - a2 <= v11)
  {
    goto LABEL_12;
  }

LABEL_11:
  v17 = result;
  Data._Representation.subscript.getter();
  (*(v7 + 104))(v10, enum case for Endianness.little(_:), v17);
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v19[15])
  {
    goto LABEL_12;
  }

  return v19[14];
}

void *sub_1010BE9F0(char a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Endianness();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_101403E80[a1];
  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
LABEL_12:
      sub_1010BF0DC();
      swift_allocError();
      *v18 = 0;
      return swift_willThrow();
    }

    v15 = *(a2 + 16);
    v14 = *(a2 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v16)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(a3);
    goto LABEL_10;
  }

  LODWORD(v13) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    return result;
  }

  v13 = v13;
LABEL_10:
  if (v13 < v11 + 2)
  {
    goto LABEL_12;
  }

  v17 = result;
  Data._Representation.subscript.getter();
  (*(v7 + 104))(v10, enum case for Endianness.little(_:), v17);
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v20)
  {
    goto LABEL_12;
  }

  return v19[6];
}

void *sub_1010BEBB0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  result = __chkstk_darwin(v4 - 8);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
LABEL_12:
      sub_1010BED08();
      swift_allocError();
      return swift_willThrow();
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (!v6)
  {
    if (BYTE6(a2) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_15;
  }

  if (HIDWORD(a1) - a1 != 1)
  {
    goto LABEL_12;
  }

LABEL_11:
  sub_100017D5C(a1, a2);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v12 == 1)
  {
    goto LABEL_12;
  }

  return v11;
}

unint64_t sub_1010BED08()
{
  result = qword_1016C7310;
  if (!qword_1016C7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7310);
  }

  return result;
}

uint64_t sub_1010BED5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v14 = *(a1 + 16);
      v13 = *(a1 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v16 == 19)
      {
        goto LABEL_8;
      }
    }

LABEL_13:
    sub_1010BF0DC();
    swift_allocError();
    *v21 = 0;
LABEL_14:
    swift_willThrow();
    return sub_100016590(a1, a2);
  }

  if (!v12)
  {
    if (BYTE6(a2) != 19)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(a1) - a1 != 19)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = a3;
  v17 = sub_1010BE81C(0, a1, a2);
  if (v4)
  {
    return sub_100016590(a1, a2);
  }

  if (v17 != 18)
  {
    sub_1010BF0DC();
    swift_allocError();
    *v23 = 1;
    goto LABEL_14;
  }

  LOBYTE(v34[0]) = sub_1010BE81C(1, a1, a2);
  sub_1000198E8();
  v18 = FixedWidthInteger.data.getter();
  v20 = v19;
  v3 = sub_1010BEBB0(v18, v19);
  sub_100016590(v18, v20);
  sub_100017D5C(a1, a2);
  v8 = sub_1010BE81C(3, a1, a2);
  v5 = sub_1010BE9F0(4, a1, a2);
  v6 = sub_1010BE9F0(5, a1, a2);
  v7 = sub_1010BE9F0(6, a1, a2);
  v46 = sub_1010BE9F0(7, a1, a2);
  v45 = sub_1010BE9F0(8, a1, a2);
  v27 = sub_1010BE9F0(9, a1, a2);
  v26 = sub_1010BE9F0(10, a1, a2);
LABEL_19:
  sub_100016590(a1, a2);
  *&v29 = a1;
  *(&v29 + 1) = a2;
  LOBYTE(v30) = v3;
  WORD1(v30) = v8;
  *(&v30 + 1) = v5;
  *&v31 = v6;
  *(&v31 + 1) = v7;
  LODWORD(v32) = v46;
  DWORD1(v32) = v45;
  DWORD2(v32) = v27;
  HIDWORD(v32) = v26;
  v33 = 1;
  v34[0] = a1;
  v34[1] = a2;
  v35 = v3;
  v36 = v8;
  v37 = v5;
  v38 = v6;
  v39 = v7;
  v40 = v46;
  v41 = v45;
  v42 = v27;
  v43 = v26;
  v44 = 1;
  sub_100766AC0(&v29, v28);
  result = sub_100766C08(v34);
  v24 = v32;
  *(v9 + 32) = v31;
  *(v9 + 48) = v24;
  *(v9 + 64) = v33;
  v25 = v30;
  *v9 = v29;
  *(v9 + 16) = v25;
  return result;
}

unint64_t sub_1010BF0DC()
{
  result = qword_1016C7318;
  if (!qword_1016C7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7318);
  }

  return result;
}

unint64_t sub_1010BF130()
{
  result = qword_1016C7320;
  if (!qword_1016C7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7320);
  }

  return result;
}

unint64_t sub_1010BF1C8()
{
  result = qword_1016C7328;
  if (!qword_1016C7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7328);
  }

  return result;
}

unint64_t sub_1010BF220()
{
  result = qword_1016C7330;
  if (!qword_1016C7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7330);
  }

  return result;
}

unint64_t sub_1010BF278()
{
  result = qword_1016C7338;
  if (!qword_1016C7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7338);
  }

  return result;
}

uint64_t sub_1010BF2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessoryCommand(0);
  v4 = (v1 + *(v3 + 24));
  v5 = v4[1];
  v6 = v4[4];
  v7 = (v6 >> 59) & 6 | ((v5 & 0x2000000000000000) != 0);
  if (v7 <= 1)
  {
    if (!v7)
    {
      v12 = *(v1 + *(v3 + 28));
      v9 = type metadata accessor for ConnectUseCase();
      v10 = *(*(v9 - 8) + 104);
      if (v12 == 1)
      {
        v11 = &enum case for ConnectUseCase.unpairHELE(_:);
      }

      else
      {
        v11 = &enum case for ConnectUseCase.unpair(_:);
      }

      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if ((v7 - 2) >= 2)
  {
    if (v7 == 4)
    {
      goto LABEL_9;
    }

    v17 = *v4;
    v18 = v4[5];
    v19 = v4[2] | v4[3];
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v6 == 0x2000000000000000;
    }

    if (!v20 || v5 != 0x2000000000000000 || (v19 | v17) != 0)
    {
      v23 = !v18 && v6 == 0x2000000000000000;
      v24 = v23 && v5 == 0x2000000000000000;
      v25 = v24 && v17 == 1;
      if (!v25 || v19 != 0)
      {
        if (!v18 && v6 == 0x2000000000000000 && v5 == 0x2000000000000000 && v17 == 2 && !v19 || !v18 && v6 == 0x2000000000000000 && v5 == 0x2000000000000000 && v17 == 3 && !v19 || !v18 && v6 == 0x2000000000000000 && v5 == 0x2000000000000000 && v17 == 4 && !v19)
        {
          goto LABEL_3;
        }

LABEL_9:
        v13 = enum case for ConnectUseCase.findMyUTTransient(_:);
        v14 = type metadata accessor for ConnectUseCase();
        v10 = *(*(v14 - 8) + 104);
        v9 = v14;
        v15 = a1;
        v16 = v13;
        goto LABEL_40;
      }
    }

LABEL_35:
    v27 = *(v1 + *(v3 + 28));
    v9 = type metadata accessor for ConnectUseCase();
    v10 = *(*(v9 - 8) + 104);
    if (v27 == 1)
    {
      v11 = &enum case for ConnectUseCase.playSoundHELE(_:);
    }

    else
    {
      v11 = &enum case for ConnectUseCase.playSound(_:);
    }

    goto LABEL_39;
  }

LABEL_3:
  v8 = *(v1 + *(v3 + 28));
  v9 = type metadata accessor for ConnectUseCase();
  v10 = *(*(v9 - 8) + 104);
  if (v8 == 1)
  {
    v11 = &enum case for ConnectUseCase.findMyActionHELETransient(_:);
  }

  else
  {
    v11 = &enum case for ConnectUseCase.findMyActionTransient(_:);
  }

LABEL_39:
  v16 = *v11;
  v15 = a1;
LABEL_40:

  return v10(v15, v16, v9);
}

void sub_1010BF57C(unint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AccessoryCommand(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[4];
  v7 = (v6 >> 59) & 6 | ((v4 & 0x2000000000000000) != 0);
  if (v7 > 2)
  {
    v8 = v3[2];
    v9 = v3[3];
    v10 = v3[5];
    if (v7 == 3)
    {
      v21 = v6 & 0xCFFFFFFFFFFFFFFFLL;
      v11 = v4 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
      v12 = v6 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
      sub_100017D5C(*v3, v4 & 0xDFFFFFFFFFFFFFFFLL);
      sub_100017D5C(v9, v21);
      goto LABEL_44;
    }

    if (v7 != 4)
    {
      v13 = v9 | v8;
      v14 = !v10 && v6 == 0x2000000000000000;
      v15 = v14 && v4 == 0x2000000000000000;
      if (!v15 || (v9 | v8 | v5) != 0)
      {
        v11 = 0x2000000000000000;
        if (v10)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 == 0x2000000000000000;
        }

        if (v17 && v4 == 0x2000000000000000 && v5 == 1 && v13 == 0)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v5 = 1;
          v12 = 0x2000000000000000;
          goto LABEL_44;
        }

        if (!v10 && v6 == 0x2000000000000000 && v4 == 0x2000000000000000 && v5 == 2 && !v13)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v5 = 4;
          v12 = 0x2000000000000000;
          goto LABEL_44;
        }

        if (!v10 && v6 == 0x2000000000000000 && v4 == 0x2000000000000000 && v5 == 3 && !v13)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v5 = 5;
          v12 = 0x2000000000000000;
          goto LABEL_44;
        }

        if (!v10 && v6 == 0x2000000000000000 && v4 == 0x2000000000000000 && v5 == 4 && !v13)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v5 = 7;
          v12 = 0x2000000000000000;
          goto LABEL_44;
        }
      }
    }

    goto LABEL_43;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      v8 = 0;
      v9 = 0;
      v12 = 0;
      v10 = 0;
      v5 = v5;
      v11 = 0x2000000000000000;
      goto LABEL_44;
    }

    if (v5 < 6)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = qword_101404140[v5];
      v5 = qword_101404110[v5];
      v12 = v11;
      goto LABEL_44;
    }

    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177B048);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unexpected play sound context %ld", v25, 0xCu);
    }

LABEL_43:
    v5 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0x3000000000000000;
    v12 = 0x3000000000000000;
    goto LABEL_44;
  }

  if (v5)
  {
    v11 = 0;
    v8 = 0;
    v9 = 0;
    v12 = 0;
    v10 = 0;
    v5 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0x2000000000000000;
    v5 = 2;
    v12 = 0x2000000000000000;
  }

LABEL_44:
  *a1 = v5;
  a1[1] = v11;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v12;
  a1[5] = v10;
}

uint64_t sub_1010BF910()
{
  v1 = 65560;
  v2 = type metadata accessor for AccessoryCommand(0);
  v3 = (v0 + *(v2 + 24));
  v4 = v3[1];
  v5 = v3[4];
  v6 = (v5 >> 59) & 6 | ((v4 & 0x2000000000000000) != 0);
  if (v6 <= 1)
  {
    if (!v6)
    {
      v8 = *(v0 + *(v2 + 28)) == 0;
      v7 = -5;
      goto LABEL_34;
    }

LABEL_33:
    v8 = *(v0 + *(v2 + 28)) == 0;
    v7 = -3;
LABEL_34:
    if (!v8)
    {
      ++v7;
    }

    return (v7 + 65560);
  }

  if ((v6 - 2) < 2)
  {
LABEL_3:
    if (*(v0 + *(v2 + 28)))
    {
      v7 = -18;
    }

    else
    {
      v7 = -20;
    }

    return (v7 + 65560);
  }

  if (v6 != 4)
  {
    v9 = *v3;
    v10 = v3[5];
    v11 = v3[2] | v3[3];
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v5 == 0x2000000000000000;
    }

    if (!v12 || v4 != 0x2000000000000000 || (v11 | v9) != 0)
    {
      v15 = !v10 && v5 == 0x2000000000000000;
      v16 = v15 && v4 == 0x2000000000000000;
      v17 = v16 && v9 == 1;
      if (!v17 || v11 != 0)
      {
        if (!v10 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v9 == 2 && !v11 || !v10 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v9 == 3 && !v11 || !v10 && v5 == 0x2000000000000000 && v4 == 0x2000000000000000 && v9 == 4 && !v11)
        {
          goto LABEL_3;
        }

        return v1;
      }
    }

    goto LABEL_33;
  }

  return v1;
}