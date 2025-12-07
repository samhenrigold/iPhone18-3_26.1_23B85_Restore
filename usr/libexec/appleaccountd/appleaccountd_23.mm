Swift::Int sub_1002B9748()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003490E8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1002B97D0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003490E8[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1002B981C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B9860(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002B9860(uint64_t a1)
{
  if (a1 > 10)
  {
    if (a1 <= 21)
    {
      if (a1 == 11)
      {
        return 5;
      }

      if (a1 == 12)
      {
        return 6;
      }
    }

    else
    {
      switch(a1)
      {
        case 22:
          return 7;
        case 210:
          return 8;
        case 241:
          return 9;
      }
    }
  }

  else if (a1 <= 3)
  {
    if (a1 == 2)
    {
      return 0;
    }

    if (a1 == 3)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return 2;
      case 7:
        return 3;
      case 9:
        return 4;
    }
  }

  return 10;
}

uint64_t sub_1002B9920(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1002B9860(a1);
  if (v6 <= 4)
  {
    v11 = 0xEB0000000072656ELL;
    v12 = 0x6E75726564616C42;
    v13 = 0xE90000000000006CLL;
    v14 = 0x6F6F70726576694CLL;
    v15 = 0xEA00000000007265;
    v16 = 0x766F4D6F6E616950;
    if (v6 != 3)
    {
      v16 = 0x7365746F4ELL;
      v15 = 0xE500000000000000;
    }

    if (v6 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (v6)
    {
      v12 = 0x6E6F697265707948;
      v11 = 0xE800000000000000;
    }

    if (v6 <= 1)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (v6 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else if (v6 > 7)
  {
    if (v6 == 8)
    {
      v9 = 0xD000000000000013;
      v10 = 0x8000000100333530;
    }

    else
    {
      if (v6 != 9)
      {
        goto LABEL_31;
      }

      v10 = 0x8000000100333510;
      v9 = 0xD000000000000017;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    v8 = 0x676E6972616853;
    if (v6 != 6)
    {
      v8 = 0x697261666153;
      v7 = 0xE600000000000000;
    }

    if (v6 == 5)
    {
      v9 = 0x72617073646C6546;
    }

    else
    {
      v9 = v8;
    }

    if (v6 == 5)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = v7;
    }
  }

  if (v9 == a2 && v10 == a3)
  {

    return 1;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    return 1;
  }

LABEL_31:
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA40);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v22 = 134218242;
    *(v22 + 4) = a1;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_10021145C(a2, a3, &v24);
    _os_log_impl(&_mh_execute_header, v20, v21, "Requested PCS identity (%ld, %s) is not allowed.", v22, 0x16u);
    sub_10000839C(v23);
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for PCSServiceIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PCSServiceIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002B9D88()
{
  result = qword_1003E6DD8;
  if (!qword_1003E6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DD8);
  }

  return result;
}

unint64_t sub_1002B9DE0()
{
  result = qword_1003E6DE0;
  if (!qword_1003E6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DE0);
  }

  return result;
}

unint64_t sub_1002B9E3C()
{
  result = qword_1003E6DE8;
  if (!qword_1003E6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DE8);
  }

  return result;
}

unint64_t sub_1002B9E94()
{
  result = qword_1003E6DF0;
  if (!qword_1003E6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DF0);
  }

  return result;
}

unint64_t sub_1002B9EEC()
{
  result = qword_1003E6DF8;
  if (!qword_1003E6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6DF8);
  }

  return result;
}

unint64_t sub_1002B9F58()
{
  result = qword_1003E6E00;
  if (!qword_1003E6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6E00);
  }

  return result;
}

uint64_t sub_1002B9FAC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for WalrusWebAccessInfo(0);
  __chkstk_darwin(v7);
  v60 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003E6FA0, &qword_1003492B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v57 - v11;
  v13 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  __chkstk_darwin(v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  if (*(*(a1 + 144) + 16))
  {
    v16 = *(v3 + 40);
    v58 = v3;
    v17 = *(*sub_1000080F8((v3 + 16), v16) + 16);
    v62[0] = 0;
    v18 = [v17 walrusStatus:v62];
    if (v62[0])
    {
      swift_willThrow();
      goto LABEL_13;
    }

    if (v18 != 1 || (sub_1002C0674() & 1) != 0)
    {
LABEL_13:
      sub_1002BC620(v61 + *(v7 + 60), v15, type metadata accessor for WalrusPCSEncryptionMaterial);
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      v59 = sub_100008D04(v26, qword_1003FAA40);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Validating encryption material.", v29, 2u);
      }

      v30 = sub_1002C0CD0();
      if (v31 >> 60 != 15)
      {
        v32 = v30;
        v33 = v31;
        (*(v10 + 16))(v12, v58 + OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__signatureValidator, v9);
        Dependency.wrappedValue.getter();
        (*(v10 + 8))(v12, v9);
        v34 = sub_1002B9014(v32, v33, *&v15[*(v13 + 60)]);
        sub_10000839C(v62);
        if (v34)
        {
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v35, v36, "Encryption material signature is valid!", v37, 2u);
          }

          v38 = v60;
          sub_1002BC620(v61, v60, type metadata accessor for WalrusWebAccessInfo);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v59 = a2;
            v43 = v42;
            v62[0] = v42;
            *v41 = 136315138;
            v57 = v32;
            v44 = *(v38 + 112);
            v45 = *(v38 + 120);

            sub_1002BC688(v38, type metadata accessor for WalrusWebAccessInfo);
            v46 = v44;
            v32 = v57;
            v47 = sub_10021145C(v46, v45, v62);

            *(v41 + 4) = v47;
            _os_log_impl(&_mh_execute_header, v39, v40, "Fetching PCS keys for web session consent uuid: %s", v41, 0xCu);
            sub_10000839C(v43);
            a2 = v59;
          }

          else
          {

            sub_1002BC688(v38, type metadata accessor for WalrusWebAccessInfo);
          }

          sub_1002BA81C(v61, a2, a3);
          sub_100015D58(v32, v33);
          return sub_1002BC688(v15, type metadata accessor for WalrusPCSEncryptionMaterial);
        }

        sub_100015D58(v32, v33);
      }

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Failed to validate encryption material!", v50, 2u);
      }

      sub_1002BC0A4();
      swift_allocError();
      *v51 = 1;
      a2();

      return sub_1002BC688(v15, type metadata accessor for WalrusPCSEncryptionMaterial);
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100008D04(v52, qword_1003FAA40);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Can't provide PCS auth request, webAccessInfo validation failed.", v55, 2u);
    }

    sub_1002BC0A4();
    swift_allocError();
    *v56 = 1;
    a2();
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA40);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "WebAccessInfo is invalid, no app identities provided.", v22, 2u);
    }

    sub_1002BC0A4();
    v23 = swift_allocError();
    *v24 = 1;
    (a2)(v23, 0, 1);
  }
}

uint64_t sub_1002BA81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v7 = type metadata accessor for WalrusWebAccessInfo(0);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003E6FB0, &qword_1003492B8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA40);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v8;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Generating URL configuration for PCS auth request.", v17, 2u);
    v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = v26;
  }

  (*(v11 + 16))(v13, v4 + OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__urlBagBuilder, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  sub_1002BC620(a1, v9, type metadata accessor for WalrusWebAccessInfo);
  v18 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  sub_1002BD0FC(v9, v19 + v18, type metadata accessor for WalrusWebAccessInfo);
  v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v28;
  v20[1] = a3;
  v21 = objc_opt_self();

  v22 = [v21 sharedServer];
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1002BC8C0;
  *(v23 + 24) = v19;
  aBlock[4] = sub_1002BC99C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E7C0;
  aBlock[3] = &unk_1003B2EB8;
  v24 = _Block_copy(aBlock);

  [v22 configurationWithCompletion:v24];
  _Block_release(v24);

  return sub_10000839C(v30);
}

uint64_t sub_1002BAC1C()
{
  sub_10000839C((v0 + 16));

  sub_10000839C((v0 + 64));
  v1 = OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__urlBagBuilder;
  v4 = sub_100005814(&qword_1003E6FB0, &qword_1003492B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__signatureValidator;
  v6 = sub_100005814(&qword_1003E6FA0, &qword_1003492B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_1002BAD9C(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003E6E58, &unk_1003DF628, &unk_100349290);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &unk_1003E6E60, &qword_1003DF660, &qword_1003436C0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1002BAF04(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  sub_100012D04(a1, v19, &qword_1003E6FB8, &qword_1003492C0);
  if (v20)
  {
    v9 = *&v19[0];
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA40);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = _convertErrorToNSError(_:)();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "No URL configuration, unable to build PCS auth request: %@", v13, 0xCu);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    (a4)(v9, 0, 1);
  }

  else
  {
    sub_10003E950(v19, v18);
    v17 = sub_1000080F8(v18, v18[3]);
    sub_1002BC0F8(a3, *v17, a4, a5, a2);
    return sub_10000839C(v18);
  }
}

uint64_t sub_1002BB0F4(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v73 = a4;
  v13 = type metadata accessor for WalrusWebAccessInfo(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v16 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v67 - v18;
  v20 = __chkstk_darwin(v17);
  v23 = &v67 - v22;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA40);
    sub_1002BC620(a2, v23, type metadata accessor for WalrusWebAccessInfo);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = a3;
      v29 = swift_slowAlloc();
      *&v74[0] = v29;
      *v27 = 136315138;
      v30 = *(v23 + 16);
      v31 = *(v23 + 17);

      sub_1002BC688(v23, type metadata accessor for WalrusWebAccessInfo);
      v32 = sub_10021145C(v30, v31, v74);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to verify arming for service %s abandoning key fetch", v27, 0xCu);
      sub_10000839C(v29);
      a3 = v28;
    }

    else
    {

      sub_1002BC688(v23, type metadata accessor for WalrusWebAccessInfo);
    }

    swift_errorRetain();
    a3(a1, 0, 1);
  }

  else
  {
    v68 = v20;
    v69 = v21;
    v70 = a6;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA40);
    sub_1002BC620(a2, v19, type metadata accessor for WalrusWebAccessInfo);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v71 = a5;
    v72 = a3;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v67 = a7;
      v39 = v38;
      *&v74[0] = v38;
      *v37 = 136315138;
      v40 = a2;
      v42 = *(v19 + 16);
      v41 = *(v19 + 17);

      sub_1002BC688(v19, type metadata accessor for WalrusWebAccessInfo);
      v43 = v42;
      a2 = v40;
      v44 = sub_10021145C(v43, v41, v74);

      *(v37 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "Service %s is armed, continue with PCS key fetch", v37, 0xCu);
      sub_10000839C(v39);
      a7 = v67;
    }

    else
    {

      sub_1002BC688(v19, type metadata accessor for WalrusWebAccessInfo);
    }

    v46 = *(a2 + 144);
    v47 = *(v46 + 16);
    v48 = _swiftEmptyArrayStorage;
    if (v47)
    {
      v67 = a2;
      *&v74[0] = _swiftEmptyArrayStorage;
      sub_1002E0224(0, v47, 0);
      v48 = *&v74[0];
      v49 = (v46 + 80);
      do
      {
        v50 = *v49;
        v49 += 72;
        v51 = sub_1002B93DC(v50);
        *&v74[0] = v48;
        v54 = v48[2];
        v53 = v48[3];
        if (v54 >= v53 >> 1)
        {
          v56 = a7;
          v57 = v51;
          v58 = v52;
          sub_1002E0224((v53 > 1), v54 + 1, 1);
          v52 = v58;
          v51 = v57;
          a7 = v56;
          v48 = *&v74[0];
        }

        v48[2] = v54 + 1;
        v55 = &v48[2 * v54];
        v55[4] = v51;
        v55[5] = v52;
        --v47;
      }

      while (v47);
      a2 = v67;
    }

    v59 = *(v68 + 60);
    sub_1002BC620(a2, v16, type metadata accessor for WalrusWebAccessInfo);
    sub_100040738(a7, v74);
    v60 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v61 = (v14 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v63 = v70;
    *(v62 + 16) = v71;
    *(v62 + 24) = v63;
    sub_1002BD0FC(v16, v62 + v60, type metadata accessor for WalrusWebAccessInfo);
    sub_10003E950(v74, v62 + v61);
    v64 = (v62 + ((v61 + 47) & 0xFFFFFFFFFFFFFFF8));
    v65 = v73;
    *v64 = v72;
    v64[1] = v65;

    v66 = v63;

    sub_1002BB8D8(v48, a2 + v59, sub_1002BCEE0, v62);
  }
}

uint64_t sub_1002BB700(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(uint64_t, uint64_t, BOOL), uint64_t a7)
{
  v24 = a7;
  v25 = a6;
  v11 = type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo(0);
  __chkstk_darwin(v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100005814(&qword_1003E6FC8, &qword_1003492D0);
  __chkstk_darwin(v14);
  v16 = (&v24 - v15);
  sub_100012D04(a1, &v24 - v15, &qword_1003E6FC8, &qword_1003492D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v18 = 0;
    v19 = *v16;
  }

  else
  {
    sub_1002BD0FC(v16, v13, type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo);
    v20 = *(v13 + *(v11 + 20));
    v21 = sub_1000080F8(a5, a5[3]);
    v19 = sub_1002BD1EC(a3, a4, v13, v20, *v21);
    v18 = v22;
    sub_1002BC688(v13, type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo);
  }

  v25(v19, v18, EnumCaseMultiPayload == 1);
  return sub_1002BEBB8(v19, v18, EnumCaseMultiPayload == 1);
}

void sub_1002BB8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = *(v4 + 56);
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_1002BC620(a2, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WalrusPCSEncryptionMaterial);
  v14 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = v4;
  sub_1002BD0FC(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for WalrusPCSEncryptionMaterial);
  aBlock[4] = sub_1002BD164;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002BBFE8;
  aBlock[3] = &unk_1003B2FA8;
  v16 = _Block_copy(aBlock);

  [v12 pcsKeysForServices:isa completion:v16];
  _Block_release(v16);
}

uint64_t sub_1002BBACC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100005814(&qword_1003E6FC8, &qword_1003492D0);
  __chkstk_darwin(v12);
  v14 = (&v39 - v13);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA40);
    swift_errorRetain();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = a4;
      v42 = v40;
      *v18 = 136315394;
      v20 = Array.description.getter();
      v22 = sub_10021145C(v20, v21, &v42);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v18 + 14) = v23;
      *v19 = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch encrypted keys for services %s with error: %@", v18, 0x16u);
      sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v40);
      a4 = v41;
    }

    *v14 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a4(v14);

    return sub_100008D3C(v14, &qword_1003E6FC8, &qword_1003492D0);
  }

  if (!*(a1 + 16))
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA40);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136315138;
      v34 = Array.description.getter();
      v36 = sub_10021145C(v34, v35, &v42);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "No keys found for any services %s.", v32, 0xCu);
      sub_10000839C(v33);
    }

    sub_1002BC0A4();
    v37 = swift_allocError();
    *v38 = 2;
    *v14 = v37;
    swift_storeEnumTagMultiPayload();
    a4(v14);
    return sub_100008D3C(v14, &qword_1003E6FC8, &qword_1003492D0);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAA40);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Successfully fetched keys, time for encryption.", v28, 2u);
  }

  return sub_1002BDF48(a1, a7, a4, a5);
}

void sub_1002BBFE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_100005814(&qword_1003E6FC0, &qword_1003492C8);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

unint64_t sub_1002BC0A4()
{
  result = qword_1003E6FA8;
  if (!qword_1003E6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6FA8);
  }

  return result;
}

uint64_t sub_1002BC0F8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for WalrusWebAccessInfo(0);
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v55[3] = type metadata accessor for DaemonSetupServiceURLBag();
  v55[4] = &off_1003B5708;
  v55[0] = a2;
  (*(v14 + 16))(v16, a5 + OBJC_IVAR____TtC13appleaccountd28WalrusPCSAuthRequestProvider__accountStore, v13);

  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v16, v13);
  v17 = [*(*sub_1000080F8(aBlock v51) + 16)];
  sub_10000839C(aBlock);
  if (v17)
  {
    v44 = sub_1000080F8((a5 + 64), *(a5 + 88));
    v18 = a1[15];
    v45 = a1[14];
    v46 = v18;
    v47 = a1[16];
    v43 = a4;
    v48 = a1[17];
    sub_1002BC620(a1, &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WalrusWebAccessInfo);
    sub_100040738(v55, v54);
    v19 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v20 = a3;
    v21 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    sub_1002BD0FC(v12, v24 + v19, type metadata accessor for WalrusWebAccessInfo);
    v25 = (v24 + v21);
    v26 = v43;
    *v25 = v20;
    v25[1] = v26;
    *(v24 + v22) = a5;
    *(v24 + v23) = v17;
    sub_10003E950(v54, v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
    v27 = *(*v44 + 16);

    v28 = v17;
    v30 = v45;
    v29 = v46;
    v31 = String._bridgeToObjectiveC()();
    v33 = v47;
    v32 = v48;
    v34 = String._bridgeToObjectiveC()();
    v35 = swift_allocObject();
    v35[2] = v33;
    v35[3] = v32;
    v35[4] = sub_1002BCBCC;
    v35[5] = v24;
    v35[6] = v30;
    v35[7] = v29;
    v52 = sub_1002BCCD8;
    v53 = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E7C0;
    v51 = &unk_1003B2F30;
    v36 = _Block_copy(aBlock);

    [v27 PCSAuthContextForWebSessionIdentifier:v31 serviceName:v34 completion:v36];
    _Block_release(v36);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAA40);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "No primary account found, abandoning key fetch.", v40, 2u);
    }

    sub_1002BC0A4();
    swift_allocError();
    *v41 = 6;
    a3();
  }

  return sub_10000839C(v55);
}

uint64_t sub_1002BC620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002BC688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002BC6E8()
{
  v1 = (type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2 + v1[17];

  sub_100012324(*(v4 + 96), *(v4 + 104));

  v5 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v6 = *(v5 + 52);
  v7 = type metadata accessor for P384.KeyAgreement.PublicKey();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  sub_100012324(*(v4 + *(v5 + 56)), *(v4 + *(v5 + 56) + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1002BC8C0(uint64_t a1)
{
  v3 = *(type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1002BAF04(a1, v5, (v1 + v4), v7, v8);
}

uint64_t sub_1002BC964()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002BC9A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BC9BC()
{
  v1 = (type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;

  v6 = v5 + v1[17];

  sub_100012324(*(v6 + 96), *(v6 + 104));

  v7 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v8 = *(v7 + 52);
  v9 = type metadata accessor for P384.KeyAgreement.PublicKey();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  sub_100012324(*(v6 + *(v7 + 56)), *(v6 + *(v7 + 56) + 8));

  sub_10000839C((v0 + v4));

  return _swift_deallocObject(v0, v4 + 40);
}

uint64_t sub_1002BCBCC(uint64_t a1)
{
  v3 = *(type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);

  return sub_1002BB0F4(a1, v1 + v4, v9, v10, v11, v12, v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1002BCC90()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1002BCCE8()
{
  v1 = (type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2 + v1[17];

  sub_100012324(*(v4 + 96), *(v4 + 104));

  v5 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v6 = *(v5 + 52);
  v7 = type metadata accessor for P384.KeyAgreement.PublicKey();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  sub_100012324(*(v4 + *(v5 + 56)), *(v4 + *(v5 + 56) + 8));

  sub_10000839C((v0 + v3));

  return _swift_deallocObject(v0, ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1002BCEE0(uint64_t a1)
{
  v3 = *(type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1002BB700(a1, v6, v7, (v1 + v4), (v1 + v5), v9, v10);
}

uint64_t sub_1002BCF90()
{
  v1 = (type metadata accessor for WalrusPCSEncryptionMaterial(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v2;

  sub_100012324(*(v4 + 96), *(v4 + 104));

  v5 = v1[15];
  v6 = type metadata accessor for P384.KeyAgreement.PublicKey();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  sub_100012324(*(v4 + v1[16]), *(v4 + v1[16] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002BD0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002BD164(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WalrusPCSEncryptionMaterial(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1002BBACC(a1, a2, v6, v7, v8, v9, v10);
}

unint64_t sub_1002BD1EC(uint64_t a1, void *a2, uint64_t *a3, char *a4, uint64_t a5)
{
  v120 = a3;
  v121 = a4;
  v118 = a2;
  v109 = a1;
  v7 = type metadata accessor for SHA256Digest();
  v119 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256();
  v117 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v115 = &v102 - v14;
  v141 = type metadata accessor for DaemonSetupServiceURLBag();
  v142 = &off_1003B5708;
  v140[0] = a5;
  v15 = a2 + *(type metadata accessor for WalrusWebAccessInfo(0) + 60);
  v17 = *(v15 + 12);
  v16 = *(v15 + 13);

  SHA256.init()();
  sub_10001607C(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100015D6C(v17, v16);
  v18 = 0;
  sub_10018F16C(v17, v16, v13);
  sub_100012324(v17, v16);
  dispatch thunk of HashFunction.finalize()();
  v19 = *(v117 + 8);
  v19(v13, v10);
  *(&v136 + 1) = v7;
  *&v137 = sub_10001607C(&qword_1003D8D70, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v20 = sub_10000DBEC(&v135);
  v21 = v119;
  (v119[2])(v20, v9, v7);
  sub_1000080F8(&v135, *(&v136 + 1));
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (v21[1])(v9, v7);
  v116 = v133;
  v117 = v134;
  sub_10000839C(&v135);
  v19(v115, v10);
  v22 = *v120;
  v23 = v120[1];
  type metadata accessor for HPKEEnvelope(0);
  v114 = v22;
  v115 = v23;
  sub_100015D6C(v22, v23);
  result = P384.KeyAgreement.PublicKey.derRepresentation.getter();
  v112 = result;
  v113 = v25;
  v26 = v118[18];
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = 0;
    v29 = (v26 + 32);
    v111 = v27 - 1;
    v30 = _swiftEmptyArrayStorage;
    v120 = (v26 + 32);
    do
    {
      v119 = v30;
      v31 = &v29[9 * v28];
      v32 = v28;
      while (1)
      {
        if (v32 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v33 = *(v31 + 1);
        v34 = *(v31 + 2);
        v35 = v31[8];
        v138 = *(v31 + 3);
        v36 = *v31;
        v139 = v35;
        v136 = v33;
        v137 = v34;
        v135 = v36;
        v28 = v32 + 1;
        v37 = v138;
        sub_1002BEC04(&v135, &v133);
        v133 = sub_1002B93DC(v37);
        v134 = v38;
        __chkstk_darwin(v133);
        v101 = &v133;
        v39 = sub_1002D9820(sub_1002BEC60, (&v102 - 4), v121);

        if (v39)
        {
          break;
        }

        result = sub_1002BEC80(&v135);
        v31 += 9;
        ++v32;
        if (v27 == v28)
        {
          v30 = v119;
          goto LABEL_15;
        }
      }

      v30 = v119;
      result = swift_isUniquelyReferenced_nonNull_native();
      v122 = v30;
      v40 = v18;
      if ((result & 1) == 0)
      {
        result = sub_1002E0540(0, v30[2] + 1, 1);
        v30 = v122;
      }

      v42 = v30[2];
      v41 = v30[3];
      if (v42 >= v41 >> 1)
      {
        result = sub_1002E0540((v41 > 1), v42 + 1, 1);
        v30 = v122;
      }

      v30[2] = v42 + 1;
      v43 = &v30[9 * v42];
      *(v43 + 2) = v135;
      v44 = v136;
      v45 = v137;
      v46 = v138;
      v43[12] = v139;
      *(v43 + 4) = v45;
      *(v43 + 5) = v46;
      *(v43 + 3) = v44;
      v18 = v40;
      v29 = v120;
    }

    while (v111 != v32);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  v107 = v18;
  v47 = v30[2];
  v119 = v30;
  v108 = v47;
  if (v47)
  {
    v132 = _swiftEmptyArrayStorage;
    sub_1002E0500(0, v47, 0);
    v48 = v132;
    v49 = (v30 + 4);
    v120 = sub_100005814(&qword_1003E3460, qword_1003469E0);
    v110 = 0x8000000100333530;
    v111 = 0x8000000100333510;
    while (1)
    {
      v50 = *(v49 + 8);
      v52 = *(v49 + 1);
      v51 = *(v49 + 2);
      v138 = *(v49 + 3);
      v136 = v52;
      v53 = *v49;
      v139 = v50;
      v135 = v53;
      v137 = v51;
      v125 = v53;
      v127 = &type metadata for Int;
      v121 = v49;
      if (v138 > 4u)
      {
        if (v138 <= 6u)
        {
          if (v138 == 5)
          {
            v54 = 0xE800000000000000;
            v55 = 11;
            v56 = 0x72617073646C6546;
          }

          else
          {
            v54 = 0xE700000000000000;
            v55 = 12;
            v56 = 0x676E6972616853;
          }
        }

        else if (v138 == 7)
        {
          v54 = 0xE600000000000000;
          v55 = 22;
          v56 = 0x697261666153;
        }

        else if (v138 == 8)
        {
          v56 = 0xD000000000000013;
          v55 = 210;
          v54 = v110;
        }

        else
        {
          v56 = 0xD000000000000017;
          v55 = 241;
          v54 = v111;
        }
      }

      else if (v138 <= 1u)
      {
        if (v138)
        {
          v54 = 0xE800000000000000;
          v55 = 3;
          v56 = 0x6E6F697265707948;
        }

        else
        {
          v55 = 2;
          v56 = 0x6E75726564616C42;
          v54 = 0xEB0000000072656ELL;
        }
      }

      else if (v138 == 2)
      {
        v54 = 0xE90000000000006CLL;
        v55 = 4;
        v56 = 0x6F6F70726576694CLL;
      }

      else if (v138 == 3)
      {
        v54 = 0xEA00000000007265;
        v55 = 7;
        v56 = 0x766F4D6F6E616950;
      }

      else
      {
        v54 = 0xE500000000000000;
        v55 = 9;
        v56 = 0x7365746F4ELL;
      }

      v126 = v55;
      v128 = v136;
      v129 = v56;
      v131 = &type metadata for String;
      v130 = v54;
      v57 = static _DictionaryStorage.allocate(capacity:)();
      sub_100012D04(&v125, &v122, &qword_1003DB0B0, &unk_10033E710);
      v59 = v122;
      v58 = v123;
      sub_1002BEC04(&v135, &v133);

      result = sub_1003084DC(v59, v58);
      if (v60)
      {
        break;
      }

      *(v57 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v61 = (v57[6] + 16 * result);
      *v61 = v59;
      v61[1] = v58;
      result = sub_100070AF0(v124, (v57[7] + 32 * result));
      v62 = v57[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        goto LABEL_57;
      }

      v57[2] = v64;
      sub_100012D04(&v128, &v122, &qword_1003DB0B0, &unk_10033E710);
      v65 = v122;
      v66 = v123;
      result = sub_1003084DC(v122, v123);
      if (v67)
      {
        goto LABEL_58;
      }

      *(v57 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v68 = (v57[6] + 16 * result);
      *v68 = v65;
      v68[1] = v66;
      result = sub_100070AF0(v124, (v57[7] + 32 * result));
      v69 = v57[2];
      v63 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v63)
      {
        goto LABEL_59;
      }

      v57[2] = v70;

      sub_100005814(&qword_1003DB0B0, &unk_10033E710);
      swift_arrayDestroy();
      sub_1002BEC80(&v135);
      v132 = v48;
      v72 = v48[2];
      v71 = v48[3];
      if (v72 >= v71 >> 1)
      {
        sub_1002E0500((v71 > 1), v72 + 1, 1);
        v48 = v132;
      }

      v48[2] = v72 + 1;
      v48[v72 + 4] = v57;
      v49 = v121 + 72;
      if (!--v47)
      {
        goto LABEL_43;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {
LABEL_43:
    v73 = [*(*sub_1000080F8(v140 v141) + 16)];
    if (v73)
    {
      v74 = v73;
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v75;
    }

    else
    {
      v103 = 0;
      v120 = 0;
    }

    v76 = v118[13];
    v121 = v118[12];
    v106 = v76;
    v77 = v118[14];
    v110 = v118[15];
    v111 = v77;
    sub_100005814(&unk_1003E7730, &unk_1003492E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033F070;
    *(inited + 32) = 0x6554726568706963;
    *(inited + 40) = 0xEA00000000007478;
    *(inited + 48) = Data.base64EncodedString(options:)(0);
    *(inited + 64) = 0xD000000000000010;
    *(inited + 72) = 0x8000000100333800;
    v105 = 0x8000000100333800;
    *(inited + 80) = Data.base64EncodedString(options:)(0);
    *(inited + 96) = 0xD000000000000015;
    *(inited + 104) = 0x8000000100333820;
    v104 = 0x8000000100333820;
    *&v135 = sub_100166018(v116, v117);
    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    sub_10005A668();
    v79 = BidirectionalCollection<>.joined(separator:)();
    v81 = v80;

    *(inited + 112) = v79;
    *(inited + 120) = v81;
    v82 = sub_100308864(inited);
    swift_setDeallocating();
    sub_100005814(&qword_1003DDEC0, &unk_10033E630);
    swift_arrayDestroy();
    sub_1002D2BD0(v82);

    v121 = String._bridgeToObjectiveC()();
    v83 = String._bridgeToObjectiveC()();
    v84.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v85 = String._bridgeToObjectiveC()();
    sub_100005814(&unk_1003DABD0, &qword_10033E720);
    v86.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v87 = String._bridgeToObjectiveC()();
    if (v120)
    {
      v88 = String._bridgeToObjectiveC()();
    }

    else
    {
      v88 = 0;
    }

    v89 = objc_allocWithZone(AAWalrusPCSAuthRequest);
    v90 = v121;
    v91 = [v89 initWithAccount:v109 WebSessionID:v121 webSessionConsentUUID:v83 encryptionEnvelope:v84.super.isa appName:v85 responseIdentities:v86.super.isa serverInfo:v87 urlString:v88];

    v92 = v108;
    if (v108)
    {
      *&v135 = _swiftEmptyArrayStorage;
      sub_1002E04E0(0, v108, 0);
      v93 = v135;
      v94 = *(v135 + 16);
      v95 = 10;
      v96 = v119;
      do
      {
        v97 = v96[v95];
        *&v135 = v93;
        v98 = *(v93 + 24);
        if (v94 >= v98 >> 1)
        {
          v99 = v92;
          v100 = v96;
          sub_1002E04E0((v98 > 1), v94 + 1, 1);
          v96 = v100;
          v92 = v99;
          v93 = v135;
        }

        *(v93 + 16) = v94 + 1;
        *(v93 + v94 + 32) = v97;
        v95 += 9;
        ++v94;
        --v92;
      }

      while (v92);
    }

    sub_100012324(v114, v115);
    sub_100012324(v112, v113);
    sub_100012324(v116, v117);
    sub_10000839C(v140);
    return v91;
  }

  return result;
}

uint64_t sub_1002BDF48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v74 = a4;
  v75 = a3;
  v73 = sub_100005814(&qword_1003E6FC8, &qword_1003492D0);
  __chkstk_darwin(v73);
  v76 = &v56 - v6;
  v62 = type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo(0);
  __chkstk_darwin(v62);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for HPKE.Sender();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v72 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HPKE.Ciphersuite();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = __chkstk_darwin(v9);
  v68 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v56 - v12;
  v13 = type metadata accessor for HPKEEnvelope(0);
  __chkstk_darwin(v13);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for P384.KeyAgreement.PublicKey();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v67 = &v56 - v21;
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  v78 = sub_100170228(0xD000000000000018, 0x80000001003337E0);
  v25 = v24;
  v26 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v27 = *(v16 + 16);
  v27(v23, a2 + *(v26 + 52), v15);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v77 = a1;
  v79 = a1;
  sub_100005814(&qword_1003E6FD0, &qword_1003492D8);
  sub_1002BEA54();
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v58 = v19;
  v57 = v13;
  v61 = v28;
  v60 = v29;
  v59 = v16;

  v30 = v71;
  static HPKE.Ciphersuite.P384_SHA384_AES_GCM_256.getter();
  v27(v67, v23, v15);
  v31 = v69;
  v32 = v70;
  (*(v69 + 16))(v68, v30, v70);
  sub_100015D6C(v78, v25);
  HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
  v33 = v15;
  v34 = v32;
  v35 = v31;
  v79 = HPKE.Sender.encapsulatedKey.getter();
  v80 = v36;
  P384.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  v37 = v59;
  v68 = v25;
  v79 = v61;
  v80 = v60;
  v81 = xmmword_10033F8D0;
  sub_1002BEB64();
  v38 = HPKE.Sender.seal<A, B>(_:authenticating:)();
  v39 = v66;
  v40 = v38;
  v42 = v41;
  sub_100012324(v81, *(&v81 + 1));
  (*(v65 + 8))(v72, v39);
  (*(v35 + 8))(v71, v34);
  v43 = v64;
  (*(v37 + 32))(&v64[*(v57 + 20)], v58, v33);
  *v43 = v40;
  v43[1] = v42;
  v44 = v77;
  v45 = *(v77 + 16);
  if (!v45)
  {
    v47 = _swiftEmptyArrayStorage;
    v51 = v63;
    v52 = v62;
    goto LABEL_5;
  }

  v46 = v23;
  v47 = sub_100306D64(*(v77 + 16), 0);
  v48 = sub_1002FD4DC(&v79, (v47 + 4), v45, v44);
  v49 = v79;

  result = sub_10005A1DC(v49);
  if (v48 == v45)
  {
    v51 = v63;
    v52 = v62;
    v23 = v46;
    v37 = v59;
    v43 = v64;
LABEL_5:
    v53 = v68;
    v54 = v78;
    sub_1002BC620(v43, v51, type metadata accessor for HPKEEnvelope);
    *(v51 + *(v52 + 20)) = v47;
    v55 = v76;
    sub_1002BC620(v51, v76, type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo);
    swift_storeEnumTagMultiPayload();
    v75(v55);
    sub_100012324(v61, v60);
    sub_100012324(v54, v53);
    sub_100008D3C(v55, &qword_1003E6FC8, &qword_1003492D0);
    sub_1002BC688(v51, type metadata accessor for WalrusPCSAuthRequestProvider.EncryptionInfo);
    sub_1002BC688(v43, type metadata accessor for HPKEEnvelope);
    return (*(v37 + 8))(v23, v33);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002BEA54()
{
  result = qword_1003E6FD8;
  if (!qword_1003E6FD8)
  {
    sub_100008CBC(&qword_1003E6FD0, &qword_1003492D8);
    sub_1002BEAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6FD8);
  }

  return result;
}

unint64_t sub_1002BEAE0()
{
  result = qword_1003E6FE0;
  if (!qword_1003E6FE0)
  {
    sub_100008CBC(&qword_1003E6FC0, &qword_1003492C8);
    sub_1000EE774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6FE0);
  }

  return result;
}

unint64_t sub_1002BEB64()
{
  result = qword_1003E6FE8;
  if (!qword_1003E6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6FE8);
  }

  return result;
}

uint64_t sub_1002BEBB8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1002BECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HPKEEnvelope(0);
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

uint64_t sub_1002BEDB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HPKEEnvelope(0);
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

void sub_1002BEE70(uint64_t a1)
{
  type metadata accessor for HPKEEnvelope(319);
  if (v1 <= 0x3F)
  {
    sub_1001E8B7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002BEF04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003E7148, &unk_100349380);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - v5;
  v7 = type metadata accessor for WalrusWebAccessInfo(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v52 = &v51 - v13;
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v53 = sub_100008D04(v16, qword_1003FAA40);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v51 = v9;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Walrus push received. Processing message.", v19, 2u);
  }

  v20 = *(a1 + 32);
  if (v20 && (sub_1002B816C(*(a1 + 24), v20) & 1) != 0)
  {
    v21 = type metadata accessor for PushMessage(0);
    sub_1002C0274(a1 + *(v21 + 56), v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_100008D3C(v6, &qword_1003E7148, &unk_100349380);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Can't process this push, it does not contain required walrus web access info.", v24, 2u);
      }

      return;
    }

    v28 = v8;
    sub_1002C02E4(v6, v15);
    sub_1000080F8(v2 + 2, v2[5]);
    v29 = sub_10015B718();
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      v33 = &v15[*(v7 + 60)];
      v34 = v29 == *(v33 + 10) && v30 == *(v33 + 11);
      if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_1000080F8(v2 + 7, v2[10]);
        v35 = v52;
        sub_1002C03A4(v15, v52);
        v36 = (*(v28 + 80) + 24) & ~*(v28 + 80);
        v37 = v15;
        v38 = swift_allocObject();
        *(v38 + 16) = v2;
        sub_1002C02E4(v35, v38 + v36);

        sub_1002B9FAC(v37, sub_1002C05D0, v38);

        v39 = v37;
LABEL_30:
        sub_1002C0348(v39);
        return;
      }

      sub_1002C03A4(v15, v11);
      v40 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v40, v43))
      {

        sub_1002C0348(v11);
        goto LABEL_29;
      }

      v44 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v44 = 136315394;
      v45 = &v11[*(v7 + 60)];
      v46 = v15;
      v47 = *(v45 + 10);
      v48 = *(v45 + 11);

      sub_1002C0348(&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v49 = sub_10021145C(v47, v48, &v54);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      v50 = sub_10021145C(v31, v32, &v54);

      *(v44 + 14) = v50;
      v15 = v46;
      _os_log_impl(&_mh_execute_header, v40, v43, "Can't process this message, encryption material DSID %s doesn't match with primary account %s.", v44, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v40, v41))
      {
LABEL_28:

LABEL_29:
        v39 = v15;
        goto LABEL_30;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Can't process this message, no primary idMS account found.", v42, 2u);
    }

    goto LABEL_28;
  }

  v53 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v53, v25, "Can't process this message, missing altDSID or doesn't match with primary account.", v26, 2u);
  }

  v27 = v53;
}

void sub_1002BF580(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA40);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    sub_1002BEBB8(a1, a2, 1);
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = _convertErrorToNSError(_:)();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Failed to fetch PCS auth request with error: %@", v9, 0xCu);
      sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);
    }
  }

  else
  {
    sub_1002BFA60(a2, *(a5 + 96), *(a5 + 104));
    aBlock[4] = sub_1002BF78C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001641BC;
    aBlock[3] = &unk_1003B3010;
    v12 = _Block_copy(aBlock);
    [a1 performPinnedRequestWithHandler:v12];
    _Block_release(v12);
  }
}

void sub_1002BF78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "PCS keys upload completed successfully.", v10, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA40);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v4, "PCS keys upload failed with error: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

LABEL_10:

    return;
  }
}

uint64_t sub_1002BF9D8()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  sub_10000839C(v0 + 17);

  return swift_deallocClassInstance();
}

void sub_1002BFA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      while (1)
      {
        v6 = *v4++;
        v5 = v6;
        v7 = sub_1002B9540(v6);
        if (!v8)
        {
          break;
        }

        v9 = v7;
        v10 = v8;
        v47 = v4;
        sub_100005814(&unk_1003E7730, &unk_1003492E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033EB30;
        *(inited + 32) = 0xD000000000000010;
        *(inited + 40) = 0x800000010032C670;
        *(inited + 48) = a2;
        *(inited + 56) = a3;

        v12 = sub_100308864(inited);
        swift_setDeallocating();
        sub_100008D3C(inited + 32, &qword_1003DDEC0, &unk_10033E630);
        v13 = objc_opt_self();
        v48 = v3;
        v22 = String._bridgeToObjectiveC()();
        v23 = [v13 webAccessNotificationTextForKey:v22];

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v51 = v24;
        v52 = v26;
        v53 = v9;
        v54 = v10;
        v55 = v12;
        v56 = 2;
        v50 = 1;
        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100008D04(v27, qword_1003FAA40);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();
        v46 = v9;
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v49 = v31;
          *v30 = 136315138;
          v32 = sub_1002B93DC(v5);
          v34 = sub_10021145C(v32, v33, &v49);

          *(v30 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v28, v29, "Posting %s FYI notification.", v30, 0xCu);
          sub_10000839C(v31);
        }

        v35 = *sub_1000080F8((v45 + 96), *(v45 + 120));

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v49 = v39;
          *v38 = 136315138;
          v40 = sub_1002D4614();
          v42 = sub_10021145C(v40, v41, &v49);

          *(v38 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v36, v37, "Posting User notification : %s", v38, 0xCu);
          sub_10000839C(v39);
        }

        sub_1000080F8((v35 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController), *(v35 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController + 24));
        sub_1002C4C2C(v24, v26, v46, v10, v12, sub_1002C00CC, 0);

        v4 = v47;
        v3 = v48 - 1;
        if (v48 == 1)
        {
          goto LABEL_18;
        }
      }

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAA40);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v49 = v18;
        *v17 = 136315138;
        v19 = sub_1002B93DC(v5);
        v21 = sub_10021145C(v19, v20, &v49);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "No FYI message for %s.", v17, 0xCu);
        sub_10000839C(v18);
      }

      --v3;
    }

    while (v3);
  }

LABEL_18:
  sub_1002BFFD8(&v50);
}

void sub_1002BFFD8(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Uploading PCS keys without any FYI notification.", v4, 2u);
    }
  }
}

void sub_1002C00CC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAA40);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      v5 = _convertErrorToNSError(_:)();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to post FYI notification with error %@", v3, 0xCu);
      sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }
}

uint64_t sub_1002C0274(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E7148, &unk_100349380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C02E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalrusWebAccessInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C0348(uint64_t a1)
{
  v2 = type metadata accessor for WalrusWebAccessInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C03A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalrusWebAccessInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C0408()
{
  v1 = (type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v2 + v1[17];

  sub_100012324(*(v4 + 96), *(v4 + 104));

  v5 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v6 = *(v5 + 52);
  v7 = type metadata accessor for P384.KeyAgreement.PublicKey();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  sub_100012324(*(v4 + *(v5 + 56)), *(v4 + *(v5 + 56) + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_1002C05D0(void *a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for WalrusWebAccessInfo(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_1002BF580(a1, a2, a3 & 1, v8, v9);
}

uint64_t sub_1002C065C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002C0674()
{
  v1 = v0;
  v2 = type metadata accessor for WalrusWebAccessInfo(0);
  __chkstk_darwin(v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = __chkstk_darwin(v5);
  v7 = __chkstk_darwin(v6);
  v11 = *(v0 + 144);
  v12 = *(v11 + 16);
  if (v12)
  {
    v52 = v10;
    v53 = &v49 - v8;
    v50 = v7;
    v51 = v9;
    v54 = _swiftEmptyArrayStorage;
    sub_1002E04C0(0, v12, 0);
    v13 = v54;
    v14 = (v11 + 80);
    do
    {
      v15 = *v14;
      v14 += 72;
      v16 = qword_100349478[v15];
      v54 = v13;
      v18 = v13[2];
      v17 = v13[3];
      if (v18 >= v17 >> 1)
      {
        sub_1002E04C0((v17 > 1), v18 + 1, 1);
        v13 = v54;
      }

      v13[2] = v18 + 1;
      v13[v18 + 4] = v16;
      --v12;
    }

    while (v12);
    v19 = 0;
    v20 = v18 + 1;
    v21 = 4;
    do
    {
      v22 = v13[v21];
      if ((v22 & ~v19) == 0)
      {
        v22 = 0;
      }

      v19 |= v22;
      ++v21;
      --v20;
    }

    while (v20);

    v24 = v52;
    v23 = v53;
    if (qword_1003D7EA0 != -1)
    {
      swift_once();
    }

    if (sub_100120C74(v19, qword_1003E7150))
    {
      Date.init()();
      Date.init(timeIntervalSince1970:)();
      Date.timeIntervalSince(_:)();
      if (v25 <= 300.0)
      {
        if (v25 > 0.0)
        {
          v43 = *(v51 + 8);
          v44 = v50;
          v43(v24, v50);
          v43(v23, v44);
          return 1;
        }

        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_100008D04(v46, qword_1003FAA40);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_36;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "WebAccessInfo is invalid, encryption material is invalid.";
      }

      else
      {
        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100008D04(v26, qword_1003FAA40);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_36;
        }

        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "WebAccessInfo is invalid, encryption material has expired.";
      }

      _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

LABEL_36:

      v47 = v50;
      v48 = *(v51 + 8);
      v48(v24, v50);
      v48(v23, v47);
      return 0;
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA40);
    sub_1002C29C4(v1, v4, type metadata accessor for WalrusWebAccessInfo);
    v32 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v32, v36))
    {

      sub_1002C2910(v4, type metadata accessor for WalrusWebAccessInfo);
      return 0;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136315138;
    v39 = Array.description.getter();
    v41 = v40;
    sub_1002C2910(v4, type metadata accessor for WalrusWebAccessInfo);
    v42 = sub_10021145C(v39, v41, &v54);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v32, v36, "WebAccessInfo is invalid, unexpected combination of PCS keys: %s.", v37, 0xCu);
    sub_10000839C(v38);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA40);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_27;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "WebAccessInfo is invalid, no app identities provided.", v34, 2u);
  }

LABEL_27:

  return 0;
}

uint64_t sub_1002C0CD0()
{
  v30 = type metadata accessor for String.Encoding();
  v1 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 8827;
  v32 = 0xE200000000000000;
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 2243106;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  String.append(_:)(v0[5]);
  v5._countAndFlagsBits = 34;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = v31;
  v7 = v32;
  v31 = 8748;
  v32 = 0xE200000000000000;
  String.append(_:)(v0[1]);
  v8._countAndFlagsBits = 2243106;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9 = *(v0 + *(type metadata accessor for WalrusPCSEncryptionMaterial(0) + 64));
  String.append(_:)(v9);
  v10._countAndFlagsBits = 34;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = v31;
  v12 = v32;
  v31 = v6;
  v32 = v7;

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14 = v31;
  v15 = v32;
  v31 = 8748;
  v32 = 0xE200000000000000;
  String.append(_:)(v0[2]);
  v16._countAndFlagsBits = 2243106;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  String.append(_:)(v0[7]);
  v17._countAndFlagsBits = 32034;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = v31;
  v19 = v32;
  v31 = v14;
  v32 = v15;

  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  static String.Encoding.utf8.getter();
  v21 = String.data(using:allowLossyConversion:)();
  v23 = v22;

  (*(v1 + 8))(v3, v30);
  if (v23 >> 60 == 15)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA40);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to create signed JSON data.", v27, 2u);
    }

    return 0;
  }

  return v21;
}

uint64_t sub_1002C0FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for P384.KeyAgreement.PublicKey();
  v85 = *(v3 - 8);
  v86 = v3;
  __chkstk_darwin(v3);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v6 = *(v88 - 1);
  __chkstk_darwin(v88);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 1684632420;
  *(v8 + 1) = 0xE400000000000000;
  *(v8 + 2) = 0xD000000000000011;
  *(v8 + 3) = 0x8000000100333940;
  *(v8 + 4) = 0x6D617473656D6974;
  *(v8 + 5) = 0xE900000000000070;
  *(v8 + 6) = 0x727574616E676973;
  *(v8 + 7) = 0xE900000000000065;
  *(v8 + 8) = 0xD000000000000010;
  *(v8 + 9) = 0x8000000100333960;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v9 = sub_1003084DC(1684632420, 0xE400000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v9, &v91);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v84 = v90;
  if (!*(a1 + 16) || (v83 = v89, v11 = sub_1003084DC(0xD000000000000011, 0x8000000100333940), (v12 & 1) == 0) || (sub_10000DB1C(*(a1 + 56) + 32 * v11, &v91), (swift_dynamicCast() & 1) == 0))
  {
LABEL_15:

LABEL_16:

    v22 = v87;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA40);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v88;
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to create encryption material.", v28, 2u);
    }

    return (*(v6 + 56))(v22, 1, 1, v27);
  }

  v13 = v90;
  if (!*(a1 + 16) || (v82 = v89, v14 = sub_1003084DC(0x6D617473656D6974, 0xE900000000000070), (v15 & 1) == 0) || (sub_10000DB1C(*(a1 + 56) + 32 * v14, &v91), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_15;
  }

  v17 = v89;
  v16 = v90;
  v91 = 0;
  if (!sub_1002C2530(v89, v90, &v91) || (v81 = v16, v18 = v91, v19 = v82, v20 = Data.init(base64Encoded:options:)(), v21 >> 60 == 15))
  {

    goto LABEL_15;
  }

  v30 = v84;
  *(v8 + 10) = v83;
  *(v8 + 11) = v30;
  *(v8 + 12) = v20;
  *(v8 + 13) = v21;
  v31 = v13;
  v27 = v88;
  v32 = &v8[v88[16]];
  *v32 = v19;
  v32[1] = v31;
  v83 = v31;
  *(v8 + 14) = v17;
  *(v8 + 15) = v81;
  *(v8 + 16) = v18;
  if (!*(a1 + 16))
  {
    goto LABEL_33;
  }

  v33 = v20;
  v82 = v21;
  sub_100015D6C(v20, v21);
  v34 = sub_1003084DC(0x727574616E676973, 0xE900000000000065);
  if ((v35 & 1) == 0 || (sub_10000DB1C(*(a1 + 56) + 32 * v34, &v91), (swift_dynamicCast() & 1) == 0))
  {
    sub_100015D58(v33, v82);
LABEL_33:

LABEL_34:
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100008D04(v43, qword_1003FAA40);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Unable to create signing material.", v46, 2u);
    }

    v47 = 0;
    v48 = 0;
    v22 = v87;
    goto LABEL_39;
  }

  if (!*(a1 + 16) || (v36 = sub_1003084DC(0xD000000000000010, 0x8000000100333960), (v37 & 1) == 0))
  {
    sub_100015D58(v33, v82);

    goto LABEL_34;
  }

  v79 = 0;
  v80 = v33;
  sub_10000DB1C(*(a1 + 56) + 32 * v36, &v91);

  if ((swift_dynamicCast() & 1) == 0 || (v38 = v89, v39 = v90, v40 = Data.init(base64Encoded:options:)(), v42 = v41, , v42 >> 60 == 15))
  {
    sub_100015D58(v80, v82);

    v27 = v88;
    goto LABEL_34;
  }

  v49 = &v8[v88[14]];
  *v49 = v40;
  v49[1] = v42;
  v91 = v38;
  v92 = v39;
  sub_1000709A0();
  v50 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v78 = v50;
  v51 = *(v50 + 16);
  if (v51)
  {
    v91 = _swiftEmptyArrayStorage;
    sub_1002E0224(0, v51, 0);
    v52 = v91;
    v53 = v78 + 56;
    do
    {

      v54 = static String._fromSubstring(_:)();
      v56 = v55;

      v91 = v52;
      v58 = v52[2];
      v57 = v52[3];
      if (v58 >= v57 >> 1)
      {
        sub_1002E0224((v57 > 1), v58 + 1, 1);
        v52 = v91;
      }

      v52[2] = v58 + 1;
      v59 = &v52[2 * v58];
      v59[4] = v54;
      v59[5] = v56;
      v53 += 32;
      --v51;
    }

    while (v51);
  }

  else
  {

    v52 = _swiftEmptyArrayStorage;
  }

  if (v52[2] != 3 || (, v60 = Data.init(base64Encoded:options:)(), v62 = v61, result = , v62 >> 60 == 15))
  {
    sub_100015D58(v80, v82);

LABEL_56:
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100008D04(v63, qword_1003FAA40);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Unable to create certificate chain data.", v66, 2u);
    }

    v48 = 0;
    v47 = 1;
    goto LABEL_61;
  }

  if (v52[2] < 2uLL)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v67 = Data.init(base64Encoded:options:)();
  v69 = v68;

  if (v69 >> 60 == 15)
  {
    sub_100015D58(v80, v82);

LABEL_68:
    sub_100015D58(v60, v62);
    goto LABEL_56;
  }

  if (v52[2] < 3uLL)
  {
    goto LABEL_73;
  }

  v70 = Data.init(base64Encoded:options:)();
  v72 = v71;

  if (v72 >> 60 == 15)
  {
    sub_100015D58(v80, v82);
    sub_100015D58(v67, v69);
    goto LABEL_68;
  }

  sub_100005814(&qword_1003E7168, &qword_1003493C8);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_10033F070;
  *(v73 + 32) = v60;
  *(v73 + 40) = v62;
  *(v73 + 48) = v67;
  *(v73 + 56) = v69;
  *(v73 + 64) = v70;
  *(v73 + 72) = v72;
  *&v8[v88[15]] = v73;
  v91 = v80;
  v92 = v82;
  sub_1002C2970();
  v74 = v79;
  P384.KeyAgreement.PublicKey.init<A>(derRepresentation:)();
  if (v74)
  {

    v47 = 1;
    v48 = 1;
LABEL_61:
    v22 = v87;
    v27 = v88;
LABEL_39:
    sub_100012324(*(v8 + 12), *(v8 + 13));

    if (v47)
    {
      sub_100012324(*&v8[v27[14]], *&v8[v27[14] + 8]);
    }

    if (v48)
    {
    }

    return (*(v6 + 56))(v22, 1, 1, v27);
  }

  v75 = v88;
  (*(v85 + 32))(&v8[v88[13]], v5, v86);
  v76 = v87;
  sub_1002C29C4(v8, v87, type metadata accessor for WalrusPCSEncryptionMaterial);
  (*(v6 + 56))(v76, 0, 1, v75);
  return sub_1002C2910(v8, type metadata accessor for WalrusPCSEncryptionMaterial);
}

Swift::Int sub_1002C1AE4()
{
  result = sub_10013AAB0(&off_1003A3CD0);
  qword_1003E7150 = result;
  return result;
}

uint64_t sub_1002C1B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_100005814(&qword_1003E7158, &qword_1003493C0);
  __chkstk_darwin(v3 - 8);
  v56 = &v47 - v4;
  v53 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WalrusWebAccessInfo(0);
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v8, "webSessionID");
  v8[13] = 0;
  *(v8 + 7) = -5120;
  *(v8 + 2) = 0xD000000000000015;
  *(v8 + 3) = 0x8000000100333900;
  *(v8 + 4) = 0x656D614E707061;
  *(v8 + 5) = 0xE700000000000000;
  *(v8 + 6) = 0x65746E6F43707061;
  *(v8 + 7) = 0xEA00000000007478;
  *(v8 + 8) = 0x6E49726576726573;
  *(v8 + 9) = 0xEA00000000006F66;
  *(v8 + 10) = 0xD000000000000012;
  *(v8 + 11) = 0x8000000100333920;
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v9 = sub_1003084DC(0x6973736553626577, 0xEC00000044496E6FLL);
  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v9, &v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v52 = *(&v66 + 1);
  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v11 = v66;
  v12 = sub_1003084DC(0xD000000000000015, 0x8000000100333900);
  if ((v13 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v12, &v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v14 = *(&v66 + 1);
  if (!*(a1 + 16) || (v15 = v66, v16 = sub_1003084DC(0x656D614E707061, 0xE700000000000000), (v17 & 1) == 0))
  {

LABEL_23:

LABEL_24:
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA40);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to create web access info.", v29, 2u);
    }

    return (*(v57 + 56))(v59, 1, 1, v58);
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v16, &v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v51 = *(&v66 + 1);
  if (!*(a1 + 16) || (v50 = v66, v18 = sub_1003084DC(0x65746E6F43707061, 0xEA00000000007478), (v19 & 1) == 0))
  {

LABEL_32:

    goto LABEL_23;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v18, &v60);
  sub_100005814(&qword_1003E7160, qword_1003495C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v20 = v66;
  if (!*(a1 + 16) || (v21 = sub_1003084DC(0x6E49726576726573, 0xEA00000000006F66), (v22 & 1) == 0))
  {

    goto LABEL_35;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v21, &v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v49 = *(&v66 + 1);
  if (!*(a1 + 16) || (v47 = v66, v23 = sub_1003084DC(0xD000000000000012, 0x8000000100333920), (v24 & 1) == 0))
  {

    goto LABEL_35;
  }

  v48 = v20;
  sub_10000DB1C(*(a1 + 56) + 32 * v23, &v60);

  sub_100005814(&unk_1003DABD0, &qword_10033E720);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:

LABEL_33:

LABEL_35:

    goto LABEL_32;
  }

  v25 = v56;
  sub_1002C0FB8(v66, v56);
  if ((*(v54 + 48))(v25, 1, v53) == 1)
  {

    sub_1002C2464(v56);
    goto LABEL_24;
  }

  result = sub_1002C24CC(v56, v55);
  v56 = *(v48 + 16);
  if (v56)
  {
    v31 = 0;
    v32 = _swiftEmptyArrayStorage;
    while (v31 < *(v48 + 16))
    {

      sub_1002C2628(v33, &v60);
      v34 = v61;
      if (!v61)
      {
        sub_1002C2910(v55, type metadata accessor for WalrusPCSEncryptionMaterial);

        return (*(v57 + 56))(v59, 1, 1, v58);
      }

      v35 = v60;
      v66 = v62;
      v67 = v63;
      v68 = v64;
      v69 = v65;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100306558(0, *(v32 + 2) + 1, 1, v32);
        v32 = result;
      }

      v37 = *(v32 + 2);
      v36 = *(v32 + 3);
      if (v37 >= v36 >> 1)
      {
        result = sub_100306558((v36 > 1), v37 + 1, 1, v32);
        v32 = result;
      }

      ++v31;
      *(v32 + 2) = v37 + 1;
      v38 = &v32[72 * v37];
      *(v38 + 4) = v35;
      *(v38 + 5) = v34;
      v39 = v66;
      v40 = v67;
      v41 = v68;
      *(v38 + 12) = v69;
      *(v38 + 4) = v40;
      *(v38 + 5) = v41;
      *(v38 + 3) = v39;
      if (v56 == v31)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
LABEL_50:

    v42 = v52;
    *(v8 + 12) = v11;
    *(v8 + 13) = v42;
    *(v8 + 14) = v15;
    *(v8 + 15) = v14;
    v43 = v51;
    *(v8 + 16) = v50;
    *(v8 + 17) = v43;
    v44 = v47;
    *(v8 + 18) = v32;
    *(v8 + 19) = v44;
    *(v8 + 20) = v49;
    v45 = v58;
    sub_1002C24CC(v55, &v8[*(v58 + 60)]);
    v46 = v59;
    sub_1002C29C4(v8, v59, type metadata accessor for WalrusWebAccessInfo);
    (*(v57 + 56))(v46, 0, 1, v45);
    return sub_1002C2910(v8, type metadata accessor for WalrusWebAccessInfo);
  }

  return result;
}

uint64_t sub_1002C2464(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E7158, &qword_1003493C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C24CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1002C2530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

void sub_1002C2628(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1003084DC(25705, 0xE200000000000000), (v5 & 1) != 0) && (sub_10000DB1C(*(a1 + 56) + 32 * v4, v33), (swift_dynamicCast() & 1) != 0) && *(a1 + 16) && (v6 = sub_1003084DC(1701667182, 0xE400000000000000), (v7 & 1) != 0) && (sub_10000DB1C(*(a1 + 56) + 32 * v6, v33), (swift_dynamicCast() & 1) != 0) && (v8 = sub_1002B9920(v24, v24, v25), , (v8 & 1) != 0) && (v9 = sub_1002B9860(v24), v9 != 10) && *(a1 + 16) && (v10 = v9, v11 = sub_1003084DC(0x4E79616C70736964, 0xEB00000000656D61), (v12 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v11, v39);

    if (swift_dynamicCast())
    {
      v13 = v37;
      v14 = v38;
      v24 = 25705;
      v25 = 0xE200000000000000;
      v26 = 1701667182;
      v27 = 0xE400000000000000;
      v28 = 0x4E79616C70736964;
      v29 = 0xEB00000000656D61;
      LOBYTE(v30) = v10;
      v31 = v37;
      v32 = v38;
      v15 = v30;
      v33[0] = 25705;
      v33[1] = 0xE200000000000000;
      v33[2] = 1701667182;
      v33[3] = 0xE400000000000000;
      v33[4] = 0x4E79616C70736964;
      v33[5] = 0xEB00000000656D61;
      v34 = v10;
      v35 = v37;
      v36 = v38;
      sub_1002BEC04(&v24, v23);
      sub_1002BEC80(v33);
      v16 = xmmword_100349390;
      v17 = xmmword_1003493A0;
      v18 = xmmword_1003493B0;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA40);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Unable to create app identity.", v22, 2u);
  }

  v15 = 0;
  v13 = 0;
  v14 = 0;
  v18 = 0uLL;
  v17 = 0uLL;
  v16 = 0uLL;
LABEL_19:
  *a2 = v18;
  *(a2 + 16) = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v15;
  *(a2 + 56) = v13;
  *(a2 + 64) = v14;
}

uint64_t sub_1002C2910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002C2970()
{
  result = qword_1003E7170;
  if (!qword_1003E7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E7170);
  }

  return result;
}

uint64_t sub_1002C29C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_BYTE *sub_1002C2A2C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

__n128 sub_1002C2AAC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1002C2AD0(uint64_t a1, int a2)
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

uint64_t sub_1002C2B18(uint64_t result, int a2, int a3)
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

uint64_t sub_1002C2B8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for P384.KeyAgreement.PublicKey();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002C2C4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for P384.KeyAgreement.PublicKey();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002C2CF0(uint64_t a1)
{
  type metadata accessor for P384.KeyAgreement.PublicKey();
  if (v1 <= 0x3F)
  {
    sub_1002C2FF4(319, &unk_1003E71E0, &type metadata for Data);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002C2DD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002C2E94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002C2F38(uint64_t a1)
{
  sub_1002C2FF4(319, &unk_1003E72A8, &type metadata for WalrusAppIdentity);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WalrusPCSEncryptionMaterial(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002C2FF4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1002C3040(uint64_t a1)
{
  v3 = type metadata accessor for PushMessage(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = (v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v10 = (v47 - v9);
  __chkstk_darwin(v8);
  v12 = v47 - v11;
  v13 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v13 - 8);
  v15 = v47 - v14;
  if (*(a1 + 8))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);
    sub_1002B8794(a1, v7);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v48 = v20;
      *v19 = 136315138;
      *&v47[0] = 0;
      *(&v47[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      *&v47[0] = 0xD000000000000025;
      *(&v47[0] + 1) = 0x8000000100333440;
      v21 = [*v7 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);

      v26 = v47[0];
      sub_1002C43F0(v7, type metadata accessor for PushMessage);
      v27 = sub_10021145C(v26, *(&v26 + 1), &v48);

      *(v19 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Asked to process incoming message not meant for custodian, ignoring message: %s", v19, 0xCu);
      sub_10000839C(v20);

      return;
    }

    v41 = v7;
  }

  else
  {
    v28 = *(a1 + 121);
    if (v28 != 6)
    {
      v42 = type metadata accessor for TaskPriority();
      (*(*(v42 - 8) + 56))(v15, 1, 1, v42);
      v43 = *(v1 + 56);
      sub_1002B8794(a1, v12);
      sub_100040738(v1 + 16, v47);
      v44 = (*(v4 + 80) + 40) & ~*(v4 + 80);
      v45 = (v5 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v46[4] = v43;
      sub_1002C3ED4(v12, v46 + v44);
      sub_10003E950(v47, v46 + v45);
      *(v46 + v45 + 40) = v28;

      sub_1000BD04C(0, 0, v15, &unk_100349550, v46);

      return;
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);
    sub_1002B8794(a1, v10);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48 = v33;
      *v32 = 136315138;
      *&v47[0] = 0;
      *(&v47[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      *&v47[0] = 0xD000000000000025;
      *(&v47[0] + 1) = 0x8000000100333440;
      v34 = [*v10 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39 = v47[0];
      sub_1002C43F0(v10, type metadata accessor for PushMessage);
      v40 = sub_10021145C(v39, *(&v39 + 1), &v48);

      *(v32 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v30, v31, "Custodian push message did not contain recoveryStep, ignoring message: %s", v32, 0xCu);
      sub_10000839C(v33);

      return;
    }

    v41 = v10;
  }

  sub_1002C43F0(v41, type metadata accessor for PushMessage);
}

uint64_t sub_1002C362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 128) = a7;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6;
  *(v7 + 56) = a1;
  *(v7 + 64) = a4;
  v8 = *(type metadata accessor for PushMessage(0) - 8);
  *(v7 + 88) = v8;
  *(v7 + 96) = *(v8 + 64);
  *(v7 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1002C36F8, 0, 0);
}

uint64_t sub_1002C36F8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 128);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  sub_1002B8794(*(v0 + 72), v1);
  sub_100040738(v4, v0 + 16);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 112) = v8;
  sub_1002C3ED4(v1, v8 + v7);
  v9 = v8 + ((v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_10003E950((v0 + 16), v9);
  *(v9 + 40) = v3;

  return _swift_task_switch(sub_1002C37E0, v6, 0);
}

uint64_t sub_1002C37E0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[8];
  v5 = *(v4 + 128);
  v6 = v5 + 1;
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = v3[14];
    *(v4 + 128) = v6;

    v3[15] = sub_10031FFE8(v6, &unk_100349560, v7);

    a1 = sub_1002C389C;
    a2 = 0;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1002C389C()
{
  **(v0 + 56) = *(v0 + 120);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C3908(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 48) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for CustodianRecoveryData(0);
  *(v3 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_1002C399C, 0, 0);
}

uint64_t sub_1002C399C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_10010EE1C(v3, v2);
  sub_1000080F8(v1, v1[3]);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1002C3A5C;
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);

  return sub_1000FAE30(v6, v5);
}

uint64_t sub_1002C3A5C()
{

  return _swift_task_switch(sub_1002C3B58, 0, 0);
}

uint64_t sub_1002C3B58()
{
  sub_1002C43F0(*(v0 + 32), type metadata accessor for CustodianRecoveryData);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C3BDC()
{
  sub_10000839C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1002C3C50()
{
  v1 = type metadata accessor for PushMessage(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  if (*(v0 + v2 + 96) != 1)
  {
  }

  v4 = v0 + v2 + *(v1 + 56);
  v5 = type metadata accessor for WalrusWebAccessInfo(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = v4 + *(v5 + 60);

    sub_100012324(*(v6 + 96), *(v6 + 104));

    v7 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
    v8 = *(v7 + 52);
    v9 = type metadata accessor for P384.KeyAgreement.PublicKey();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
    sub_100012324(*(v6 + *(v7 + 56)), *(v6 + *(v7 + 56) + 8));
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10000839C((v0 + v10));

  return _swift_deallocObject(v0, v10 + 41);
}

uint64_t sub_1002C3ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C3F38(uint64_t a1)
{
  v4 = *(type metadata accessor for PushMessage(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_1002C362C(a1, v6, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1002C4070()
{
  v1 = type metadata accessor for PushMessage(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  if (*(v0 + v2 + 96) != 1)
  {
  }

  v4 = v0 + v2 + *(v1 + 56);
  v5 = type metadata accessor for WalrusWebAccessInfo(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = v4 + *(v5 + 60);

    sub_100012324(*(v6 + 96), *(v6 + 104));

    v7 = type metadata accessor for WalrusPCSEncryptionMaterial(0);
    v8 = *(v7 + 52);
    v9 = type metadata accessor for P384.KeyAgreement.PublicKey();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
    sub_100012324(*(v6 + *(v7 + 56)), *(v6 + *(v7 + 56) + 8));
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10000839C((v0 + v10));

  return _swift_deallocObject(v0, v10 + 41);
}

uint64_t sub_1002C42E4()
{
  v2 = *(type metadata accessor for PushMessage(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *(v4 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000082A8;

  return sub_1002C3908(v0 + v3, v4, v5);
}

uint64_t sub_1002C43F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002C4450(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 128);
  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v4 = a1;
  v5 = sub_1003084DC(0x736D657469, 0xE500000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10000DB1C(*(v3 + 56) + 32 * v5, v37);
  sub_100005814(&qword_1003E7160, qword_1003495C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = v36;
  v8 = *(v4 + 32);
  if (!v8)
  {

LABEL_12:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_17;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "CFU Data did not contain any items to process or IdMS information";
    goto LABEL_16;
  }

  v9 = *(v4 + 24);
  if (qword_1003D7F20 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA40);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v35 = v9;
      v13 = swift_slowAlloc();
      v34 = v10;
      v14 = swift_slowAlloc();
      v37[0] = v14;
      *v13 = 136315138;
      sub_100005814(&unk_1003DABD0, &qword_10033E720);
      v15 = Array.description.getter();
      v17 = sub_10021145C(v15, v16, v37);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Embargo delegate service asked to process push with items: %s", v13, 0xCu);
      sub_10000839C(v14);
      v10 = v34;

      v9 = v35;
    }

    v19 = *(v4 + 8);
    if (v19 != 2)
    {
      break;
    }

    v35 = *(v7 + 16);
    if (!v35)
    {
LABEL_22:

      return;
    }

    v25 = 0;
    v34 = v7 + 32;
    while (v25 < *(v7 + 16))
    {
      v26 = v25 + 1;
      v4 = *(v34 + 8 * v25);
      v27 = sub_1000080F8((v2 + 16), *(v2 + 40));
      v28 = v7;
      v8 = *(*v27 + 120);
      v29 = *(*v27 + 128);
      sub_1000080F8((*v27 + 96), v8);
      v9 = AAFollowUpIdentifierCustodianEmbargo;
      v30 = v2;
      v31 = *(v29 + 32);

      v32 = v29;
      v7 = v28;
      v31(v9, sub_100111D30, 0, v8, v32);
      v2 = v30;

      v25 = v26;
      if (v35 == v26)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  if (v19 == 1)
  {
    __chkstk_darwin(v18);
    v33[2] = v4;
    v33[3] = v9;
    v33[4] = v8;
    v33[5] = v2;
    sub_10001D098(sub_1002C4930, v33, v7);

    return;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  sub_100008D04(v10, qword_1003FAA88);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Unknown command send to Embargo push delegate";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v21, v22, v24, v23, 2u);
  }

LABEL_17:
}

void sub_1002C4930(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *a1;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  sub_1000080F8((v1[5] + 16), *(v1[5] + 40));
  sub_1001111C0(v5, v6, v7, v3, v4);
}

char *sub_1002C49A4()
{
  ObjectType = swift_getObjectType();
  v2 = objc_allocWithZone(UNUserNotificationCenter);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithBundleIdentifier:v3];

  *&v0[OBJC_IVAR____TtC13appleaccountd22NotificationController_notificationCenter] = v4;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v17, "init");
  v6 = String._bridgeToObjectiveC()();
  sub_100016034(0, &qword_1003E7518, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = Array._bridgeToObjectiveC()().super.isa;
  v9 = [objc_opt_self() categoryWithIdentifier:v6 actions:isa intentIdentifiers:v8 options:1];

  v10 = OBJC_IVAR____TtC13appleaccountd22NotificationController_notificationCenter;
  v11 = *&v5[OBJC_IVAR____TtC13appleaccountd22NotificationController_notificationCenter];
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003431D0;
  *(inited + 32) = v9;
  v13 = v11;
  v14 = v9;
  sub_10013ABEC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100016034(0, &qword_1003DEC30, UNNotificationCategory_ptr);
  sub_1002C5980();
  v15 = Set._bridgeToObjectiveC()().super.isa;

  [v13 setNotificationCategories:v15];

  [*&v5[v10] setDelegate:v5];
  [*&v5[v10] setWantsNotificationResponsesDelivered];

  return v5;
}

void sub_1002C4C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a6;
  v52 = a7;
  v8 = type metadata accessor for UUID();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v11 - 8);
  v45 = &v43 - v12;
  v13 = type metadata accessor for URL();
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v20 = String._bridgeToObjectiveC()();
  [v19 setTitle:v20];

  v21 = String._bridgeToObjectiveC()();
  [v19 setBody:v21];

  v22 = String._bridgeToObjectiveC()();
  [v19 setCategoryIdentifier:v22];

  v23 = [objc_opt_self() defaultSound];
  [v19 setSound:v23];

  [v19 setInterruptionLevel:1];
  [v19 setShouldBackgroundDefaultAction:1];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v16 + 8))(v18, v15);
  [v19 setDate:isa];

  sub_1002D1BFC(a5);
  v25 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v19 setUserInfo:v25];

  if (!*(a5 + 16))
  {
    goto LABEL_9;
  }

  sub_1003084DC(0xD000000000000010, 0x800000010032C690);
  if (v26)
  {

    v27 = v45;
    URL.init(string:)();

    v29 = v46;
    v28 = v47;
    if ((*(v46 + 48))(v27, 1, v47) != 1)
    {
      v31 = v44;
      (*(v29 + 32))(v44, v27, v28);
      URL._bridgeToObjectiveC()(v32);
      v34 = v33;
      [v19 setDefaultActionURL:v33];

      (*(v29 + 8))(v31, v28);
      if (!*(a5 + 16))
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    sub_100008D3C(v27, &qword_1003E7500, &qword_10033EC30);
  }

  if (!*(a5 + 16))
  {
LABEL_9:
    UUID.init()();
    UUID.uuidString.getter();
    (*(v48 + 8))(v10, v49);
    goto LABEL_10;
  }

LABEL_6:
  sub_1003084DC(0xD000000000000010, 0x800000010032C670);
  if ((v30 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v35 = v19;
  v36 = String._bridgeToObjectiveC()();

  v37 = [objc_opt_self() requestWithIdentifier:v36 content:v35 trigger:0];

  v38 = *(v50 + OBJC_IVAR____TtC13appleaccountd22NotificationController_notificationCenter);
  v39 = swift_allocObject();
  v41 = v51;
  v40 = v52;
  *(v39 + 16) = v51;
  *(v39 + 24) = v40;
  aBlock[4] = sub_1002C5664;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003B3188;
  v42 = _Block_copy(aBlock);
  sub_100083AA0(v41, v40);

  [v38 addNotificationRequest:v37 withCompletionHandler:v42];
  _Block_release(v42);
}

void sub_1002C527C(uint64_t a1, void (*a2)(uint64_t))
{
  if (!a1)
  {
LABEL_6:
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  swift_errorRetain();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    type metadata accessor for NotificationController();
    sub_100005814(&unk_1003E7508, qword_100349630);
    v8 = String.init<A>(describing:)();
    v10 = sub_10021145C(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v11 = String.init<A>(describing:)();
    v13 = sub_10021145C(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s - Error posting notification: %s", v7, 0x16u);
    swift_arrayDestroy();

    goto LABEL_6;
  }

  if (!a2)
  {
    return;
  }

LABEL_7:
  a2(a1);
}

void sub_1002C54D8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC13appleaccountd22NotificationController_notificationCenter);
  sub_100005814(&qword_1003E3908, &qword_100346C60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10033EB30;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 removePendingNotificationRequestsWithIdentifiers:isa];
}

uint64_t sub_1002C5624()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002C566C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002C5684(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA40);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received notification response: %@", v10, 0xCu);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);
  }

  v13 = [v7 notification];
  v14 = [v13 request];

  v15 = [v14 content];
  v16 = [v15 defaultActionURL];

  if (v16)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [objc_opt_self() defaultWorkspace];
    if (v17)
    {
      v19 = v17;
      URL._bridgeToObjectiveC()(v18);
      v21 = v20;
      sub_100308978(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 openSensitiveURL:v21 withOptions:isa];
    }

    (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_1002C5980()
{
  result = qword_1003E7520;
  if (!qword_1003E7520)
  {
    sub_100016034(255, &qword_1003DEC30, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E7520);
  }

  return result;
}

id sub_1002C59E8()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = OBJC_IVAR____TtC13appleaccountd17PushHelperService____lazy_storage___localQueue;
  v9 = *(v0 + OBJC_IVAR____TtC13appleaccountd17PushHelperService____lazy_storage___localQueue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC13appleaccountd17PushHelperService____lazy_storage___localQueue);
  }

  else
  {
    v11 = sub_100071C74();
    v18 = "com.apple.aps.aa";
    v19 = v11;
    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    v16[1] = sub_100163F0C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100005814(&unk_1003E6290, &qword_10033F570);
    v17 = v2;
    sub_1000D10EC(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
    v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

id sub_1002C5C84(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for PushHelperService()) init];
  qword_1003FA9B0 = result;
  return result;
}

uint64_t sub_1002C5CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a2 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    sub_1002E0224(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v8 = (a2 + 32);
    v9 = _swiftEmptyArrayStorage[2];
    v10 = 2 * v9;
    do
    {
      if (*v8)
      {
        v11 = 0xD000000000000019;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (*v8)
      {
        v12 = "4";
      }

      else
      {
        v12 = "com.apple.aa.setupservice";
      }

      v22 = v6;
      v13 = v6[3];
      v14 = v9 + 1;
      if (v9 >= v13 >> 1)
      {
        sub_1002E0224((v13 > 1), v9 + 1, 1);
        v6 = v22;
      }

      v6[2] = v14;
      v15 = &v6[v10];
      v15[4] = v11;
      v15[5] = v12 | 0x8000000000000000;
      v10 += 2;
      ++v8;
      v9 = v14;
      --v5;
    }

    while (v5);
    v4 = a1;
    v3 = v2;
  }

  *(v3 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_topics) = v6;

  if (!*(v3 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection))
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA40);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Starting a new APS Connection", v19, 2u);
    }

    sub_1002C7020();
  }

  return sub_1002C5EC8(v4);
}

uint64_t sub_1002C5EC8(uint64_t a1)
{
  v2 = v1;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    sub_100005814(&qword_1003E7608, qword_100349688);
    v9 = Array.description.getter();
    v11 = sub_10021145C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting Push delegates to: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_delegates) = a1;
}

void sub_1002C6068(void (*a1)(uint64_t, unint64_t, uint64_t), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection);
  if (v14)
  {
    v34 = v11;
    v35 = v7;
    v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
    v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken + 8);
    v36 = v14;
    if (v16 >> 60 == 15)
    {
      v33 = sub_1002C59E8();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v36;
      v18[3] = v17;
      v18[4] = a1;
      v18[5] = a2;
      v18[6] = ObjectType;
      aBlock[4] = sub_1002C872C;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031EF0;
      aBlock[3] = &unk_1003B3248;
      v19 = _Block_copy(aBlock);
      v36 = v36;

      static DispatchQoS.unspecified.getter();
      v37 = _swiftEmptyArrayStorage;
      sub_100163F0C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100005814(&unk_1003DABE0, &unk_10033EC20);
      sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v20 = v33;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v19);

      (*(v35 + 8))(v9, v6);
      (*(v34 + 8))(v13, v10);
    }

    else
    {
      sub_100052704(v15, v16);
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008D04(v27, qword_1003FAA40);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "We already had a public token from this connection, no need to fetch a new one", v30, 2u);
      }

      sub_100052704(v15, v16);
      a1(v15, v16, 0);
      sub_100015D58(v15, v16);
      sub_100015D58(v15, v16);
      v31 = v36;
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA40);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Public token was requested but there was no active APSConnection", v24, 2u);
    }

    sub_1002C8690();
    v25 = swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 1;
    a1(v25, 0, 1);
  }
}

uint64_t sub_1002C663C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v93 = a4;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v86[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v86[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v86[-v15];
  v17 = [a1 publicToken];
  if (v17)
  {
    v18 = v17;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = (Strong + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
      v24 = *(Strong + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
      v25 = *(Strong + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken + 8);
      *v23 = v19;
      v23[1] = v21;
      v26 = Strong;
      sub_100015D6C(v19, v21);
      sub_100015D58(v24, v25);
    }

    sub_100015D6C(v19, v21);
    (a3)(v19, v21, 0);
    sub_100012324(v19, v21);
    return sub_100012324(v19, v21);
  }

  else
  {
    v91 = v10;
    v92 = v16;
    v88 = a3;
    v89 = v11;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v90 = sub_100008D04(v28, qword_1003FAA40);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "No public APS token for the current connection, waiting for a new token", v31, 2u);
    }

    static DispatchTime.now()();
    *v9 = 30;
    (*(v7 + 104))(v9, enum case for DispatchTimeInterval.seconds(_:), v6);
    + infix(_:_:)();
    (*(v7 + 8))(v9, v6);
    v33 = v89 + 2;
    v32 = *(v89 + 1);
    v32(v14, v91);
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      v36 = dispatch_semaphore_create(0);
      v37 = *&v35[OBJC_IVAR____TtC13appleaccountd17PushHelperService_tokenSemaphore];
      *&v35[OBJC_IVAR____TtC13appleaccountd17PushHelperService_tokenSemaphore] = v36;
    }

    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = *(v38 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_tokenSemaphore);
      v40 = v38;
      v41 = v39;

      if (v39)
      {
        OS_dispatch_semaphore.wait(timeout:)();
      }
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Wait time for APS Token is done", v44, 2u);
    }

    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45 && (v46 = *(v45 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken), v47 = *(v45 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken + 8), v48 = v45, sub_100052704(v46, v47), v48, v47 >> 60 != 15))
    {
      sub_100015D6C(v46, v47);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      sub_100015D58(v46, v47);
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v89 = v33;
        v71 = v70;
        v90 = swift_slowAlloc();
        v95[0] = v90;
        *v71 = 136315138;
        v94 = sub_100166018(v46, v47);
        sub_100005814(&qword_1003DA1E0, &qword_100345E50);
        sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50, &protocol conformance descriptor for [A]);
        v72 = BidirectionalCollection<>.joined(separator:)();
        v74 = v73;

        v75 = sub_10021145C(v72, v74, v95);

        *(v71 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v68, v69, "Obtained public token %s via delegate", v71, 0xCu);
        sub_10000839C(v90);
      }

      v76 = v88;
      v77 = v92;
      sub_100015D6C(v46, v47);
      (v76)(v46, v47, 0);
      sub_100015D58(v46, v47);
      sub_100015D58(v46, v47);
      v78 = v77;
    }

    else
    {
      v49 = [a1 publicToken];
      if (v49)
      {
        v50 = v49;
        v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        sub_100015D6C(v51, v53);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        sub_100012324(v51, v53);
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v89 = v56;
          v90 = swift_slowAlloc();
          v95[0] = v90;
          *v56 = 136315138;
          v94 = sub_100166018(v51, v53);
          v87 = v55;
          sub_100005814(&qword_1003DA1E0, &qword_100345E50);
          sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50, &protocol conformance descriptor for [A]);
          v57 = BidirectionalCollection<>.joined(separator:)();
          v59 = v58;

          v60 = sub_10021145C(v57, v59, v95);

          v61 = v89;
          *(v89 + 1) = v60;
          _os_log_impl(&_mh_execute_header, v54, v87, "Obtained public token %s", v61, 0xCu);
          sub_10000839C(v90);
        }

        v62 = v88;
        swift_beginAccess();
        v63 = swift_unknownObjectWeakLoadStrong();
        if (v63)
        {
          v64 = (v63 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
          v65 = *(v63 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
          v66 = *(v63 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken + 8);
          *v64 = v51;
          v64[1] = v53;
          v67 = v63;
          sub_100015D6C(v51, v53);
          sub_100015D58(v65, v66);
        }

        sub_100015D6C(v51, v53);
        (v62)(v51, v53, 0);
        sub_100012324(v51, v53);
        sub_100012324(v51, v53);
      }

      else
      {
        v79 = a1;
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *v82 = 138412290;
          *(v82 + 4) = v79;
          *v83 = v79;
          v84 = v79;
          _os_log_impl(&_mh_execute_header, v80, v81, "Failed to obtain a public token for connection: %@", v82, 0xCu);
          sub_100008D3C(v83, &unk_1003D9140, &qword_10033E640);
        }

        sub_1002C8690();
        swift_allocError();
        *v85 = 30;
        *(v85 + 8) = 0;
        v88();
      }

      v78 = v92;
    }

    return (v32)(v78, v91);
  }
}

uint64_t sub_1002C7020()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v3 = *(v11 - 8);
  __chkstk_darwin(v11);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1002C59E8();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1002C8670;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B31F8;
  v7 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100163F0C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = v10;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v12 + 8))(v2, v0);
  (*(v3 + 8))(v5, v11);
}

void sub_1002C730C(uint64_t a1)
{
  v1 = [objc_allocWithZone(AKURLBag) init];
  v2 = [v1 APSEnvironment];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    v6 = [objc_opt_self() isValidEnvironment:v2];

    if (v6)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = &Strong[OBJC_IVAR____TtC13appleaccountd17PushHelperService_apsEnvironment];
        *v8 = v3;
        v8[1] = v5;
      }
    }

    else
    {

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100008D04(v9, qword_1003FAA40);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Server did not provide a valid APS environment. Staying in prod.", v12, 2u);
      }
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v15 = *(v13 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_apsEnvironment);
    v14 = *(v13 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_apsEnvironment + 8);
    v16 = v13;
  }

  else
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v17;
  }

  sub_100071C74();
  v18 = static OS_dispatch_queue.main.getter();
  v19 = objc_allocWithZone(APSConnection);
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 initWithEnvironmentName:v20 namedDelegatePort:v21 queue:v18];

  if (v22)
  {
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    [v22 setDelegate:v23];

    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;

      v26.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v26.super.isa = 0;
    }

    [v22 _setEnabledTopics:v26.super.isa];

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA40);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35[0] = v31;
      *v30 = 136315138;
      v32 = sub_10021145C(v15, v14, v35);

      *(v30 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Push service started with environment: %s", v30, 0xCu);
      sub_10000839C(v31);
    }

    else
    {
    }

    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = *&v33[OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection];
      *&v33[OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection] = v22;
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1002C77C4(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003E75F0, &qword_100349680);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = type metadata accessor for PushMessage(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002C87F4(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100008D3C(v6, &qword_1003E75F0, &qword_100349680);
  }

  sub_1002C3ED4(v6, v10);
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA40);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Informing delegates of incoming message", v15, 2u);
  }

  v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_delegates);
  __chkstk_darwin(v17);
  *&v18[-16] = v10;

  sub_10003A4CC(sub_1002C861C, &v18[-32], v16);

  return sub_1002B87F8(v10);
}

uint64_t sub_1002C7A44(void *a1, uint64_t a2)
{
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 16))(*(a2 + 8), ObjectType, v3);
  if (result)
  {
    return (*(v3 + 8))(a2, ObjectType, v3);
  }

  return result;
}

id sub_1002C7AD0(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection;
  v4 = *&v1[OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection];
  if (v4)
  {
    v5 = qword_1003D7F20;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA40);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Shutting down APS connection...", v10, 2u);
    }

    [v6 shutdown];
    [v6 setDelegate:0];

    v11 = *&v2[v3];
    *&v2[v3] = 0;
  }

  v13.receiver = v2;
  v13.super_class = type metadata accessor for PushHelperService();
  return objc_msgSendSuper2(&v13, "dealloc");
}

id sub_1002C7CEC()
{
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService____lazy_storage___localQueue] = 0;
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_connection] = 0;
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_delegates] = _swiftEmptyArrayStorage;
  v1 = &v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_apsEnvironment];
  *v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1[1] = v2;
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken] = xmmword_10033F590;
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_tokenSemaphore] = 0;
  *&v0[OBJC_IVAR____TtC13appleaccountd17PushHelperService_topics] = _swiftEmptyArrayStorage;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PushHelperService();
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1002C7DF0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 && a3 >> 60 != 15)
  {
    v5 = v3;
    sub_100015D6C(a2, a3);
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA40);
    sub_100015D6C(a2, a3);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    sub_100015D58(a2, a3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      sub_100166018(a2, a3);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      v21 = v3;
      sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50, &protocol conformance descriptor for [A]);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;

      v15 = sub_10021145C(v12, v14, &v22);
      v5 = v21;

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "We received a new APS Token: %s", v10, 0xCu);
      sub_10000839C(v11);
    }

    v16 = (v5 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
    v17 = *(v5 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken);
    v18 = *(v5 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_publicToken + 8);
    *v16 = a2;
    v16[1] = a3;
    sub_100015D6C(a2, a3);
    sub_100015D58(v17, v18);
    v19 = *(v5 + OBJC_IVAR____TtC13appleaccountd17PushHelperService_tokenSemaphore);
    if (v19)
    {
      v20 = v19;
      OS_dispatch_semaphore.signal()();
      sub_100015D58(a2, a3);
    }

    else
    {
      sub_100015D58(a2, a3);
    }
  }
}

void sub_1002C8130(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v7 = a2;
    if (sub_1002C82F8(v7))
    {
      sub_1002C77C4(v7);
      v2 = v7;
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100008D04(v3, qword_1003FAA40);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Incoming message is for an unknown topic", v6, 2u);
      }

      v2 = v4;
    }
  }
}

uint64_t sub_1002C82F8(void *a1)
{
  v2 = [a1 topic];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == 0xD000000000000011 && 0x8000000100333B90 == v6)
  {
    goto LABEL_14;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
LABEL_8:
    v10 = [a1 topic];
    if (!v10)
    {
      v9 = 0;
      return v9 & 1;
    }

    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v12 != 0xD000000000000019 || 0x8000000100333B70 != v14)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_15:

      return v9 & 1;
    }

LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  v9 = 1;
  return v9 & 1;
}

void sub_1002C8430(char a1)
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA40);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "APNS status changed: %{BOOL}d", v4, 8u);
  }
}

uint64_t sub_1002C8638()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002C8678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1002C8690()
{
  result = qword_1003E75F8;
  if (!qword_1003E75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E75F8);
  }

  return result;
}

uint64_t sub_1002C86E4()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t initializeBufferWithCopyOfBuffer for PushHelperServiceError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PushHelperServiceError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PushHelperServiceError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1002C87A8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002C87C4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1002C87F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005814(&qword_1003E7148, &unk_100349380);
  __chkstk_darwin(v4 - 8);
  v100 = v95 - v5;
  v6 = type metadata accessor for PushMessage(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100308978(_swiftEmptyArrayStorage);
  *(v9 + 16) = v10;
  *v9 = a1;
  v11 = a1;
  v12 = [v11 userInfo];
  if (v12)
  {
    v13 = v12;
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(v9 + 2) = v14;
    v15 = qword_1003D7F20;
    v102 = v14;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v17 = sub_100008D04(v16, qword_1003FAA40);
    v18 = v11;
    v101 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v19, v20))
    {

      goto LABEL_8;
    }

    v95[1] = v10;
    v96 = v9;
    v99 = v7;
    v97 = v6;
    v98 = a2;
    v21 = v18;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v106[0] = v23;
    *v22 = 136315138;
    v24 = [v21 userInfo];

    if (v24)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = Dictionary.description.getter();
      v27 = v26;

      v28 = sub_10021145C(v25, v27, v106);

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Received push message with userInfo: %s", v22, 0xCu);
      sub_10000839C(v23);

      a2 = v98;
      v7 = v99;
      v6 = v97;
      v9 = v96;
      v18 = v21;
LABEL_8:
      *&v107[0] = 6581603;
      *(&v107[0] + 1) = 0xE300000000000000;
      AnyHashable.init<A>(_:)();
      v29 = v102;
      if (*(v102 + 16) && (v30 = sub_10031B060(v106), (v31 & 1) != 0))
      {
        sub_10000DB1C(*(v29 + 56) + 32 * v30, v107);
        sub_1000526B0(v106);

        v32 = swift_dynamicCast();
        if (v32)
        {
          v33 = v104;
        }

        else
        {
          v33 = 0;
        }

        v34 = v32 ^ 1;
      }

      else
      {

        sub_1000526B0(v106);
        v33 = 0;
        v34 = 1;
      }

      v35 = sub_1002C97F0(v33, v34);
      if (v35 == 6)
      {
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Push Message has invalid command. Ignoring", v38, 2u);
        }

LABEL_36:
        (*(v7 + 56))(a2, 1, 1, v6);
        return;
      }

      v39 = v18;
      v9[8] = v35;
      *&v107[0] = 0x6469736461;
      *(&v107[0] + 1) = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v29 + 16) && (v40 = sub_10031B060(v106), (v41 & 1) != 0))
      {
        sub_10000DB1C(*(v29 + 56) + 32 * v40, v107);
        sub_1000526B0(v106);
        v42 = swift_dynamicCast();
        v43 = v104;
        if (v42)
        {
          v44 = v105;
        }

        else
        {
          v43 = 0;
          v44 = 0;
        }
      }

      else
      {
        sub_1000526B0(v106);
        v43 = 0;
        v44 = 0;
      }

      *(v9 + 3) = v43;
      *(v9 + 4) = v44;
      v104 = 0x64696E7874;
      v105 = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v29 + 16) && (v45 = sub_10031B060(v106), (v46 & 1) != 0))
      {
        sub_10000DB1C(*(v29 + 56) + 32 * v45, v107);
        sub_1000526B0(v106);
        if (swift_dynamicCast())
        {
          v47 = v105;
          *(v9 + 5) = v104;
          *(v9 + 6) = v47;
          *&v107[0] = 0x79656B6C7275;
          *(&v107[0] + 1) = 0xE600000000000000;
          AnyHashable.init<A>(_:)();
          if (*(v29 + 16) && (v48 = sub_10031B060(v106), (v49 & 1) != 0))
          {
            sub_10000DB1C(*(v29 + 56) + 32 * v48, v107);
            sub_1000526B0(v106);
            v50 = swift_dynamicCast();
            v51 = v104;
            v52 = v105;
            if (!v50)
            {
              v51 = 0;
              v52 = 0;
            }
          }

          else
          {
            sub_1000526B0(v106);
            v51 = 0;
            v52 = 0;
          }

          *(v9 + 7) = v51;
          *(v9 + 8) = v52;
          *&v107[0] = 6580589;
          *(&v107[0] + 1) = 0xE300000000000000;
          AnyHashable.init<A>(_:)();
          if (*(v29 + 16) && (v56 = sub_10031B060(v106), (v57 & 1) != 0))
          {
            sub_10000DB1C(*(v29 + 56) + 32 * v56, v107);
            sub_1000526B0(v106);
            v58 = swift_dynamicCast();
            v59 = v104;
            v60 = v105;
            if (!v58)
            {
              v59 = 0;
              v60 = 0;
            }
          }

          else
          {
            sub_1000526B0(v106);
            v59 = 0;
            v60 = 0;
          }

          *(v9 + 9) = v59;
          *(v9 + 10) = v60;
          v104 = 7565409;
          v105 = 0xE300000000000000;
          AnyHashable.init<A>(_:)();
          if (*(v29 + 16) && (v61 = sub_10031B060(v106), (v62 & 1) != 0))
          {
            sub_10000DB1C(*(v29 + 56) + 32 * v61, v107);
            sub_1000526B0(v106);
            sub_100005814(&unk_1003DABD0, &qword_10033E720);
            if (swift_dynamicCast())
            {
              v63 = v104;
              if (v104)
              {
                if (*(v104 + 16) && (v64 = sub_1003084DC(0x7472656C61, 0xE500000000000000), (v65 & 1) != 0))
                {
                  sub_10000DB1C(*(v63 + 56) + 32 * v64, v106);

                  sub_100005814(&unk_1003DABD0, &qword_10033E720);
                  if (swift_dynamicCast())
                  {
                    v66 = *&v107[0];
LABEL_53:
                    sub_1002C9EB4(v66, v107);
                    v67 = v108;
                    v68 = v107[1];
                    *(v9 + 88) = v107[0];
                    *(v9 + 104) = v68;
                    v9[120] = v67;
                    v103._countAndFlagsBits = 0x706574537478656ELL;
                    v103._object = 0xE800000000000000;
                    AnyHashable.init<A>(_:)();
                    if (*(v29 + 16) && (v69 = sub_10031B060(v106), (v70 & 1) != 0))
                    {
                      sub_10000DB1C(*(v29 + 56) + 32 * v69, &v104);
                      sub_1000526B0(v106);
                      if (swift_dynamicCast())
                      {
                        v71 = sub_1001154EC(v103);
LABEL_59:
                        v9[121] = v71;
                        v103._countAndFlagsBits = 0x61746164756663;
                        v103._object = 0xE700000000000000;
                        AnyHashable.init<A>(_:)();
                        if (*(v29 + 16) && (v72 = sub_10031B060(v106), (v73 & 1) != 0))
                        {
                          sub_10000DB1C(*(v29 + 56) + 32 * v72, &v104);
                          sub_1000526B0(v106);
                          sub_100005814(&unk_1003DABD0, &qword_10033E720);
                          if (swift_dynamicCast())
                          {
                            countAndFlagsBits = v103._countAndFlagsBits;

                            *(v9 + 16) = countAndFlagsBits;
                          }
                        }

                        else
                        {
                          sub_1000526B0(v106);
                        }

                        v103._countAndFlagsBits = 0x6177647273;
                        v103._object = 0xE500000000000000;
                        AnyHashable.init<A>(_:)();
                        if (*(v29 + 16) && (v75 = sub_10031B060(v106), (v76 & 1) != 0))
                        {
                          sub_10000DB1C(*(v29 + 56) + 32 * v75, &v104);
                          sub_1000526B0(v106);
                          sub_100005814(&unk_1003DABD0, &qword_10033E720);
                          if (swift_dynamicCast())
                          {
                            v77 = *(v6 + 56);

                            sub_1002C1B0C(v78, &v9[v77]);
                            v79 = &v9[v77];
                            v80 = v100;
                            sub_1002C0274(v79, v100);
                            v81 = type metadata accessor for WalrusWebAccessInfo(0);
                            if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
                            {
                              sub_1002C9958(v80);

                              v82 = Logger.logObject.getter();
                              v83 = static os_log_type_t.error.getter();

                              if (os_log_type_enabled(v82, v83))
                              {
                                v84 = swift_slowAlloc();
                                v99 = v7;
                                v85 = v84;
                                v86 = swift_slowAlloc();
                                v106[0] = v86;
                                *v85 = 136315138;
                                v87 = v6;
                                v88 = Dictionary.description.getter();
                                v89 = v9;
                                v91 = v90;

                                v92 = sub_10021145C(v88, v91, v106);
                                v9 = v89;

                                *(v85 + 4) = v92;
                                v6 = v87;
                                _os_log_impl(&_mh_execute_header, v82, v83, "Push message has invalid web access info: %s", v85, 0xCu);
                                sub_10000839C(v86);

                                v7 = v99;
                              }

                              else
                              {
                              }
                            }

                            else
                            {

                              sub_1002C9958(v80);
                            }

                            goto LABEL_73;
                          }
                        }

                        else
                        {
                          sub_1000526B0(v106);
                        }

                        v93 = *(v6 + 56);
                        v94 = type metadata accessor for WalrusWebAccessInfo(0);
                        (*(*(v94 - 8) + 56))(&v9[v93], 1, 1, v94);
LABEL_73:
                        sub_1002B8794(v9, a2);
                        (*(v7 + 56))(a2, 0, 1, v6);
                        sub_1002B87F8(v9);
                        return;
                      }
                    }

                    else
                    {
                      sub_1000526B0(v106);
                    }

                    v71 = 6;
                    goto LABEL_59;
                  }
                }

                else
                {
                }
              }
            }
          }

          else
          {
            sub_1000526B0(v106);
          }

          v66 = sub_100308978(_swiftEmptyArrayStorage);
          goto LABEL_53;
        }
      }

      else
      {
        sub_1000526B0(v106);
      }

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Push Message has invalid message ID. Ignoring", v55, 2u);
      }

      goto LABEL_36;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Int sub_1002C95D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100349818[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1002C9660(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100349818[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1002C96AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002C9E28(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1002C96F0()
{
  _StringGuts.grow(_:)(39);

  v1 = [*v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD000000000000025;
}

uint64_t type metadata accessor for PushMessage(uint64_t a1)
{
  result = qword_1003E7668;
  if (!qword_1003E7668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C97F0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Push with empty command sent to topic", v5, 2u);
    }

    return 6;
  }

  if (a1 > 5199)
  {
    switch(a1)
    {
      case 5200:
        return 5;
      case 6000:
        return 3;
      case 6001:
        return 4;
      default:
        return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 5000:
        return 0;
      case 5100:
        return 1;
      case 5101:
        return 2;
      default:
        return 6;
    }
  }
}

uint64_t sub_1002C9958(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E7148, &unk_100349380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C99D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005814(&qword_1003E7148, &unk_100349380);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_1002C9AA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100005814(&qword_1003E7148, &unk_100349380);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002C9B54(uint64_t a1)
{
  sub_1002C9CC0();
  if (v1 <= 0x3F)
  {
    sub_1002C9D0C(319, &qword_1003E7680, &type metadata for AnyHashable, &protocol witness table for AnyHashable);
    if (v2 <= 0x3F)
    {
      sub_1000EEDD4(319, &qword_1003DB130, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1000EEDD4(319, &qword_1003E7688, &type metadata for PushMessageAlert);
        if (v4 <= 0x3F)
        {
          sub_1000EEDD4(319, &qword_1003E7690, &type metadata for CustodianRecoveryStep);
          if (v5 <= 0x3F)
          {
            sub_1002C9D0C(319, &qword_1003E7698, &type metadata for String, &protocol witness table for String);
            if (v6 <= 0x3F)
            {
              sub_1002C9D68(319);
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

unint64_t sub_1002C9CC0()
{
  result = qword_1003E7678;
  if (!qword_1003E7678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E7678);
  }

  return result;
}

void sub_1002C9D0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for Dictionary();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1002C9D68(uint64_t a1)
{
  if (!qword_1003E76A0)
  {
    type metadata accessor for WalrusWebAccessInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003E76A0);
    }
  }
}

unint64_t sub_1002C9DD4()
{
  result = qword_1003E76F8;
  if (!qword_1003E76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E76F8);
  }

  return result;
}

uint64_t sub_1002C9E28(uint64_t a1)
{
  if (a1 > 5199)
  {
    if (a1 == 5200)
    {
      return 5;
    }

    if (a1 != 6000)
    {
      if (a1 == 6001)
      {
        return 4;
      }

      return 6;
    }

    return 3;
  }

  else
  {
    if (a1 == 5000)
    {
      return 0;
    }

    if (a1 != 5100)
    {
      if (a1 == 5101)
      {
        return 2;
      }

      return 6;
    }

    return 1;
  }
}

uint64_t sub_1002C9EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_22;
  }

  v4 = sub_1003084DC(0x656C746974, 0xE500000000000000);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_13;
    }

LABEL_22:
    v13 = 0;
    v12 = 0;
LABEL_23:

    goto LABEL_24;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v4, v20);
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v18;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

LABEL_13:
  v9 = sub_1003084DC(2036625250, 0xE400000000000000);
  if (v10)
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v9, v20);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_23;
    }
  }

  v16 = sub_1003084DC(0x746E656C6973, 0xE600000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10000DB1C(*(a1 + 56) + 32 * v16, v20);

  result = swift_dynamicCast();
  if (result)
  {
    v15 = v18 != 0;
    goto LABEL_25;
  }

LABEL_24:
  v15 = 1;
LABEL_25:
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  return result;
}

__n128 sub_1002CA078(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002CA08C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_1002CA0E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1002CA150(char **a1@<X8>)
{
  v342 = a1;
  v2 = type metadata accessor for PersonNameComponents();
  v338 = *(v2 - 1);
  v339 = v2;
  v3 = __chkstk_darwin(v2);
  v331 = &v328 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v330 = &v328 - v6;
  v7 = __chkstk_darwin(v5);
  v329 = &v328 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v328 - v10;
  __chkstk_darwin(v9);
  v13 = &v328 - v12;
  v343 = type metadata accessor for CustodianRecord(0);
  v328 = *(v343 - 8);
  v14 = __chkstk_darwin(v343);
  v16 = &v328 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v337 = &v328 - v18;
  v19 = __chkstk_darwin(v17);
  v333 = &v328 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v328 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v328 - v25;
  __chkstk_darwin(v24);
  v28 = &v328 - v27;
  v29 = type metadata accessor for UUID();
  v340 = *(v29 - 8);
  v341 = v29;
  v30 = __chkstk_darwin(v29);
  v332 = &v328 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v336 = &v328 - v33;
  v34 = __chkstk_darwin(v32);
  v334 = &v328 - v35;
  __chkstk_darwin(v34);
  v335 = &v328 - v36;
  v37 = type metadata accessor for TrustedContactUserNotification(0);
  __chkstk_darwin(v37);
  v39 = &v328 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002D17D8(v1, v39, type metadata accessor for TrustedContactUserNotification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v133 = v26;
        sub_1002D1840(v39, v26, type metadata accessor for CustodianRecord);
        PersonNameComponents.init()();
        v134 = v343;
        v135 = &v26[*(v343 + 28)];
        v136 = v135[1];
        if (v136)
        {
          sub_1002576F0(*v135, v136);
        }

        PersonNameComponents.givenName.setter();
        v137 = &v26[*(v134 + 32)];
        v138 = v137[1];
        if (v138)
        {
          sub_1002576F0(*v137, v138);
        }

        PersonNameComponents.familyName.setter();
        v139 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v141 = [v139 localizedStringFromPersonNameComponents:isa style:0 options:0];

        v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v144 = v143;

        (*(v338 + 8))(v11, v339);
        v145 = sub_1002576F0(v142, v144);
        v147 = v146;

        if (!v147)
        {
          v148 = &v133[*(v134 + 24)];
          v145 = *v148;
          v147 = v148[1];
        }

        sub_100005814(&qword_1003E7740, &qword_1003498E8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033F070;
        v150 = AAFollowUpTrustedContactID;
        *(inited + 32) = AAFollowUpTrustedContactID;
        v151 = v150;
        *(inited + 40) = UUID.uuidString.getter();
        *(inited + 48) = v152;
        v153 = AAFollowUpTrustedContactHandle;
        *(inited + 56) = AAFollowUpTrustedContactHandle;
        v154 = &v133[*(v134 + 24)];
        v155 = *(v154 + 1);
        *(inited + 64) = *v154;
        *(inited + 72) = v155;
        v156 = AAFollowUpTrustedContactName;
        *(inited + 80) = AAFollowUpTrustedContactName;
        *(inited + 88) = v145;
        *(inited + 96) = v147;
        v157 = v153;

        v158 = v156;
        v62 = sub_1003090E8(inited);
        swift_setDeallocating();
        sub_100005814(&qword_1003E7748, &unk_1003498F0);
        swift_arrayDestroy();
        v74 = AAFollowUpIdentifierCustodianWalrusRemoved;
        v159 = v133;
LABEL_72:
        sub_1000120B4(v159);
LABEL_94:
        v65 = 0;
        v67 = 0;
        v72 = 0;
        v73 = 0;
        goto LABEL_95;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v75 = *v39;
        v76 = v39[1];
        v77 = v39[2];
        sub_100005814(&qword_1003E7710, &qword_1003498D0);
        v78 = swift_initStackObject();
        *(v78 + 16) = xmmword_10033E5C0;
        v79 = AAFollowUpUserInfoHasWalrusEnabled;
        *(v78 + 32) = AAFollowUpUserInfoHasWalrusEnabled;
        *(v78 + 40) = v75;
        v80 = AAFollowUpUserInfoHasRecoveryContact;
        *(v78 + 48) = AAFollowUpUserInfoHasRecoveryContact;
        *(v78 + 56) = v76;
        v81 = v79;
        v82 = v80;
        v83 = sub_1003091E8(v78);
        swift_setDeallocating();
        sub_100005814(&qword_1003E7718, &unk_1003498D8);
        swift_arrayDestroy();
        v84 = AAFollowUpUserInfoHasDistrustedRK;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v344 = v83;
        sub_1002CF758(v77, v84, isUniquelyReferenced_nonNull_native);
        v86 = v344;
        v74 = AAFollowUpIdentifierRecoveryKeyMismatch;
        v62 = sub_1002D263C(v86);

LABEL_82:
        v65 = 0;
        v67 = 0;
        v72 = 0;
        v73 = 1;
        goto LABEL_95;
      }

      v228 = &v39[*(sub_100005814(&qword_1003E2030, qword_100344D60) + 48)];
      v229 = *v228;
      v230 = v228[1];
      (*(v340 + 32))(v334, v39, v341);
      type metadata accessor for ContactsHelper(0);
      v231 = swift_allocObject();
      sub_100005814(&unk_1003D9820, &unk_10033EFD0);
      Dependency.init(dependencyId:config:)();
      v232 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
      Dependency.wrappedValue.getter();
      v233 = v344;
      v234 = String._bridgeToObjectiveC()();
      v235 = [v233 contactForHandle:v234];

      swift_unknownObjectRelease();
      if (v235)
      {
        v236 = objc_allocWithZone(AALocalContactInfo);
        v237 = v235;
        v238 = String._bridgeToObjectiveC()();
        v239 = [v236 initWithHandle:v238 contact:v237];

        swift_setDeallocating();
        (*(*(v232 - 8) + 8))(v231 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v232);
        swift_deallocClassInstance();
        if (v239)
        {
          v240 = [v239 displayName];

          if (v240)
          {
            v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v243 = v242;

LABEL_85:
            sub_100005814(&qword_1003E7740, &qword_1003498E8);
            v287 = swift_initStackObject();
            *(v287 + 16) = xmmword_10033F070;
            v288 = AAFollowUpTrustedContactID;
            *(v287 + 32) = AAFollowUpTrustedContactID;
            v289 = v288;
            v290 = v334;
            *(v287 + 40) = UUID.uuidString.getter();
            *(v287 + 48) = v291;
            v292 = AAFollowUpTrustedContactHandle;
            *(v287 + 56) = AAFollowUpTrustedContactHandle;
            *(v287 + 64) = v229;
            v293 = AAFollowUpTrustedContactName;
            *(v287 + 72) = v230;
            *(v287 + 80) = v293;
            *(v287 + 88) = v241;
            *(v287 + 96) = v243;
            v294 = v292;
            v295 = v293;
            v62 = sub_1003090E8(v287);
            swift_setDeallocating();
            sub_100005814(&qword_1003E7748, &unk_1003498F0);
            swift_arrayDestroy();
            v281 = *(v340 + 8);
            v74 = AAFollowUpIdentifierBeneficiaryRemoved;
            v282 = v290;
            goto LABEL_86;
          }
        }
      }

      else
      {
        swift_setDeallocating();
        (*(*(v232 - 8) + 8))(v231 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v232);
        swift_deallocClassInstance();
      }

      v241 = v229;
      v243 = v230;
      goto LABEL_85;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload != 10)
      {
        v74 = AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing;
        v62 = sub_1003090E8(_swiftEmptyArrayStorage);
        goto LABEL_94;
      }

      v104 = *v39;
      v105 = [v104 handle];
      if (v105)
      {
        v106 = v105;
        type metadata accessor for ContactsHelper(0);
        v107 = swift_allocObject();
        v108 = v106;
        sub_100005814(&unk_1003D9820, &unk_10033EFD0);
        Dependency.init(dependencyId:config:)();
        v109 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
        Dependency.wrappedValue.getter();
        v110 = [v344 contactForHandle:v108];

        swift_unknownObjectRelease();
        if (v110)
        {
          v111 = [objc_allocWithZone(AALocalContactInfo) initWithHandle:v108 contact:v110];

          swift_setDeallocating();
          (*(*(v109 - 8) + 8))(v107 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v109);
          swift_deallocClassInstance();
          if (v111)
          {
            v112 = [v111 firstName];

            if (v112)
            {
              goto LABEL_89;
            }
          }
        }

        else
        {

          swift_setDeallocating();
          (*(*(v109 - 8) + 8))(v107 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v109);
          swift_deallocClassInstance();
        }
      }

      v112 = [objc_opt_self() BenefactorUnknownName];
LABEL_89:
      v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v298 = v297;

      v299 = objc_opt_self();
      v300 = [v299 BenefactorAccessKeyChangedNotificationTitle];
      v339 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v343 = v301;

      v302 = [v299 BenefactorAccessKeyChangedNotificationBody];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100005814(&unk_1003E7720, &qword_100346B60);
      v303 = swift_allocObject();
      *(v303 + 16) = xmmword_10033EB30;
      *(v303 + 56) = &type metadata for String;
      *(v303 + 64) = sub_100242A70();
      *(v303 + 32) = v296;
      *(v303 + 40) = v298;
      v65 = String.init(format:_:)();
      v67 = v304;

      v338 = 0x8000000100333BF0;
      sub_100005814(&unk_1003E7730, &unk_1003492E0);
      v305 = swift_initStackObject();
      *(v305 + 16) = xmmword_10033E5C0;
      *(v305 + 32) = 0xD000000000000010;
      *(v305 + 40) = 0x800000010032C670;
      v344 = 0xD000000000000034;
      v345 = 0x8000000100333C20;
      v306 = [v104 beneficiaryID];
      v307 = v332;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100110C1C(&qword_1003D9150, &protocol conformance descriptor for UUID);
      v337 = v104;
      v308 = v341;
      v309._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v309);

      (*(v340 + 8))(v307, v308);
      v310 = v345;
      *(v305 + 48) = v344;
      *(v305 + 56) = v310;
      *(v305 + 64) = 0xD000000000000010;
      *(v305 + 72) = 0x800000010032C690;
      v62 = v343;
      v311 = v338;
      *(v305 + 80) = 0xD00000000000002ELL;
      *(v305 + 88) = v311;
      v72 = sub_100308864(v305);
      swift_setDeallocating();
      sub_100005814(&qword_1003DDEC0, &unk_10033E630);
      v74 = v339;
      swift_arrayDestroy();

      v73 = 2;
      goto LABEL_95;
    }

    v185 = &v39[*(sub_100005814(&qword_1003E2030, qword_100344D60) + 48)];
    v187 = *v185;
    v186 = v185[1];
    (*(v340 + 32))(v336, v39, v341);
    type metadata accessor for ContactsHelper(0);
    v188 = swift_allocObject();
    sub_100005814(&unk_1003D9820, &unk_10033EFD0);
    Dependency.init(dependencyId:config:)();
    v189 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
    Dependency.wrappedValue.getter();
    v190 = v344;
    v191 = String._bridgeToObjectiveC()();
    v192 = [v190 contactForHandle:v191];

    swift_unknownObjectRelease();
    if (v192)
    {
      v193 = objc_allocWithZone(AALocalContactInfo);
      v194 = v192;
      v195 = String._bridgeToObjectiveC()();
      v196 = [v193 initWithHandle:v195 contact:v194];

      swift_setDeallocating();
      (*(*(v189 - 8) + 8))(v188 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v189);
      swift_deallocClassInstance();
      if (v196)
      {
        v197 = [v196 displayName];
        if (v197)
        {
          v198 = v197;
          v343 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v200 = v199;
        }

        else
        {

          v343 = v187;
          v200 = v186;
        }

        v312 = [v196 firstName];
        v339 = v196;
        if (v312)
        {
          v313 = v312;
          v283 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v284 = v314;

          goto LABEL_93;
        }

LABEL_79:

        v283 = v187;
        v284 = v186;
LABEL_93:
        v315 = v187;
        sub_100005814(&qword_1003E7740, &qword_1003498E8);
        v316 = swift_initStackObject();
        *(v316 + 16) = xmmword_1003498B0;
        v317 = AAFollowUpTrustedContactID;
        *(v316 + 32) = AAFollowUpTrustedContactID;
        v318 = v317;
        v319 = v336;
        *(v316 + 40) = UUID.uuidString.getter();
        *(v316 + 48) = v320;
        v321 = AAFollowUpTrustedContactHandle;
        *(v316 + 56) = AAFollowUpTrustedContactHandle;
        *(v316 + 64) = v315;
        v322 = AAFollowUpTrustedContactName;
        *(v316 + 72) = v186;
        *(v316 + 80) = v322;
        *(v316 + 88) = v343;
        *(v316 + 96) = v200;
        v323 = AAFollowUpTrustedContactFirstName;
        *(v316 + 104) = AAFollowUpTrustedContactFirstName;
        *(v316 + 112) = v283;
        *(v316 + 120) = v284;
        v324 = v321;
        v325 = v322;
        v326 = v323;
        v62 = sub_1003090E8(v316);
        swift_setDeallocating();
        sub_100005814(&qword_1003E7748, &unk_1003498F0);
        swift_arrayDestroy();
        v74 = AAFollowUpIdentifierBeneficiaryIneligible;

        (*(v340 + 8))(v319, v341);
        goto LABEL_94;
      }
    }

    else
    {
      swift_setDeallocating();
      (*(*(v189 - 8) + 8))(v188 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v189);
      swift_deallocClassInstance();
    }

    v339 = 0;
    v343 = v187;
    v200 = v186;
    goto LABEL_79;
  }

  if (EnumCaseMultiPayload > 2)
  {
    v87 = v343;
    if (EnumCaseMultiPayload == 3)
    {
      sub_1002D1840(v39, v28, type metadata accessor for CustodianRecord);
      PersonNameComponents.init()();
      v160 = &v28[v87[7]];
      v161 = v160[1];
      if (v161)
      {
        sub_1002576F0(*v160, v161);
      }

      PersonNameComponents.givenName.setter();
      v162 = &v28[v87[8]];
      v163 = v162[1];
      if (v163)
      {
        sub_1002576F0(*v162, v163);
      }

      PersonNameComponents.familyName.setter();
      v164 = objc_opt_self();
      v165 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v166 = [v164 localizedStringFromPersonNameComponents:v165 style:0 options:0];

      v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v169 = v168;

      (*(v338 + 8))(v13, v339);
      v170 = sub_1002576F0(v167, v169);
      v172 = v171;

      if (!v172)
      {
        v173 = &v28[v87[6]];
        v170 = *v173;
        v172 = v173[1];
      }

      sub_100005814(&qword_1003E7740, &qword_1003498E8);
      v174 = swift_allocObject();
      *(v174 + 16) = xmmword_10033F070;
      v175 = AAFollowUpTrustedContactID;
      *(v174 + 32) = AAFollowUpTrustedContactID;
      v176 = v175;
      *(v174 + 40) = UUID.uuidString.getter();
      *(v174 + 48) = v177;
      v178 = AAFollowUpTrustedContactHandle;
      *(v174 + 56) = AAFollowUpTrustedContactHandle;
      v179 = &v28[v87[6]];
      v180 = *(v179 + 1);
      *(v174 + 64) = *v179;
      *(v174 + 72) = v180;
      v181 = AAFollowUpTrustedContactName;
      *(v174 + 80) = AAFollowUpTrustedContactName;
      *(v174 + 88) = v170;
      *(v174 + 96) = v172;
      v182 = v178;

      v183 = v181;
      v62 = sub_1003090E8(v174);
      swift_setDeallocating();
      sub_100005814(&qword_1003E7748, &unk_1003498F0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v184 = &AAFollowUpIdentifierCustodianRemoved;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v88 = *v39;
        sub_100005814(&qword_1003E7700, &qword_1003498C0);
        v89 = swift_initStackObject();
        v90 = v89;
        *(v89 + 16) = xmmword_10033EB30;
        v91 = AAFollowUpTrustedContactIDs;
        *(v89 + 32) = AAFollowUpTrustedContactIDs;
        v92 = v89 + 32;
        v93 = *(v88 + 2);
        if (v93)
        {
          v338 = v89 + 32;
          v340 = v89;
          v344 = _swiftEmptyArrayStorage;
          v94 = v91;
          sub_1002E0224(0, v93, 0);
          v95 = v344;
          v96 = *(v328 + 80);
          v339 = v88;
          v97 = &v88[(v96 + 32) & ~v96];
          v341 = *(v328 + 72);
          do
          {
            sub_1002D17D8(v97, v16, type metadata accessor for CustodianRecord);
            v98 = UUID.uuidString.getter();
            v100 = v99;
            sub_1000120B4(v16);
            v344 = v95;
            v102 = v95[2];
            v101 = v95[3];
            if (v102 >= v101 >> 1)
            {
              sub_1002E0224((v101 > 1), v102 + 1, 1);
              v95 = v344;
            }

            v95[2] = v102 + 1;
            v103 = &v95[2 * v102];
            v103[4] = v98;
            v103[5] = v100;
            v97 += v341;
            --v93;
          }

          while (v93);

          v90 = v340;
          v92 = v338;
        }

        else
        {
          v285 = v91;

          v95 = _swiftEmptyArrayStorage;
        }

        *(v90 + 40) = v95;
        v286 = sub_1003092D8(v90);
        swift_setDeallocating();
        sub_1002D170C(v92);
        v74 = AAFollowUpIdentifierCustodianReview;
        v62 = sub_1002D28F8(v286);

        goto LABEL_82;
      }

      v28 = v23;
      sub_1002D1840(v39, v23, type metadata accessor for CustodianRecord);
      v244 = v329;
      PersonNameComponents.init()();
      v245 = &v23[v87[7]];
      v246 = v245[1];
      if (v246)
      {
        sub_1002576F0(*v245, v246);
      }

      PersonNameComponents.givenName.setter();
      v247 = &v23[v87[8]];
      v248 = v247[1];
      if (v248)
      {
        sub_1002576F0(*v247, v248);
      }

      PersonNameComponents.familyName.setter();
      v249 = objc_opt_self();
      v250 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v251 = [v249 localizedStringFromPersonNameComponents:v250 style:0 options:0];

      v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v254 = v253;

      (*(v338 + 8))(v244, v339);
      v255 = sub_1002576F0(v252, v254);
      v257 = v256;

      if (!v257)
      {
        v258 = &v23[v87[6]];
        v255 = *v258;
        v257 = v258[1];
      }

      sub_100005814(&qword_1003E7740, &qword_1003498E8);
      v259 = swift_initStackObject();
      *(v259 + 16) = xmmword_10033F070;
      v260 = AAFollowUpTrustedContactID;
      *(v259 + 32) = AAFollowUpTrustedContactID;
      v261 = v260;
      *(v259 + 40) = UUID.uuidString.getter();
      *(v259 + 48) = v262;
      v263 = AAFollowUpTrustedContactHandle;
      *(v259 + 56) = AAFollowUpTrustedContactHandle;
      v264 = &v23[v87[6]];
      v265 = *(v264 + 1);
      *(v259 + 64) = *v264;
      *(v259 + 72) = v265;
      v266 = AAFollowUpTrustedContactName;
      *(v259 + 80) = AAFollowUpTrustedContactName;
      *(v259 + 88) = v255;
      *(v259 + 96) = v257;
      v267 = v263;

      v268 = v266;
      v62 = sub_1003090E8(v259);
      swift_setDeallocating();
      sub_100005814(&qword_1003E7748, &unk_1003498F0);
      swift_arrayDestroy();
      v184 = &AAFollowUpIdentifierCustodianWalrusNoLiveness;
    }

    v74 = *v184;
    v159 = v28;
    goto LABEL_72;
  }

  v41 = v343;
  if (!EnumCaseMultiPayload)
  {
    v113 = &v39[*(sub_100005814(&qword_1003E7750, qword_100340600) + 48)];
    v114 = *v113;
    v115 = v113[1];
    (*(v340 + 32))(v335, v39, v341);
    v116 = objc_opt_self();
    v117 = UUID._bridgeToObjectiveC()().super.isa;
    v118 = [v116 stringForCustodianMessagesURLWithUUID:v117];

    v343 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v339 = v119;

    type metadata accessor for ContactsHelper(0);
    v120 = swift_allocObject();
    sub_100005814(&unk_1003D9820, &unk_10033EFD0);
    Dependency.init(dependencyId:config:)();
    v121 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
    Dependency.wrappedValue.getter();
    v122 = v344;
    v123 = String._bridgeToObjectiveC()();
    v124 = [v122 contactForHandle:v123];

    swift_unknownObjectRelease();
    if (v124)
    {
      v125 = objc_allocWithZone(AALocalContactInfo);
      v126 = v124;
      v127 = String._bridgeToObjectiveC()();
      v128 = [v125 initWithHandle:v127 contact:v126];

      swift_setDeallocating();
      (*(*(v121 - 8) + 8))(v120 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v121);
      swift_deallocClassInstance();
      if (v128)
      {
        v129 = [v128 displayName];

        if (v129)
        {
          v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v132 = v131;

LABEL_76:
          sub_100005814(&qword_1003E7740, &qword_1003498E8);
          v269 = swift_allocObject();
          *(v269 + 16) = xmmword_1003498B0;
          v270 = AAFollowUpTrustedContactID;
          *(v269 + 32) = AAFollowUpTrustedContactID;
          v271 = v270;
          v272 = v335;
          *(v269 + 40) = UUID.uuidString.getter();
          *(v269 + 48) = v273;
          v274 = AAFollowUpTrustedContactHandle;
          *(v269 + 56) = AAFollowUpTrustedContactHandle;
          *(v269 + 64) = v114;
          v275 = AAFollowUpTrustedContactName;
          *(v269 + 72) = v115;
          *(v269 + 80) = v275;
          *(v269 + 88) = v130;
          *(v269 + 96) = v132;
          v276 = AAFollowUpTrustedContactInvitationURL;
          v277 = v343;
          *(v269 + 104) = AAFollowUpTrustedContactInvitationURL;
          *(v269 + 112) = v277;
          *(v269 + 120) = v339;
          v278 = v274;
          v279 = v275;
          v280 = v276;
          v62 = sub_1003090E8(v269);
          swift_setDeallocating();
          sub_100005814(&qword_1003E7748, &unk_1003498F0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v281 = *(v340 + 8);
          v74 = AAFollowUpIdentifierCustodianInvitationReminder;
          v282 = v272;
LABEL_86:
          v281(v282, v341);
          goto LABEL_94;
        }
      }
    }

    else
    {
      swift_setDeallocating();
      (*(*(v121 - 8) + 8))(v120 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v121);
      swift_deallocClassInstance();
    }

    v130 = v114;
    v132 = v115;
    goto LABEL_76;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v42 = v39;
    v43 = v333;
    sub_1002D1840(v42, v333, type metadata accessor for CustodianRecord);
    v44 = v330;
    PersonNameComponents.init()();
    v45 = (v43 + v41[7]);
    v46 = v45[1];
    if (v46)
    {
      sub_1002576F0(*v45, v46);
    }

    PersonNameComponents.givenName.setter();
    v47 = (v43 + v41[8]);
    v48 = v47[1];
    if (v48)
    {
      sub_1002576F0(*v47, v48);
    }

    PersonNameComponents.familyName.setter();
    v49 = objc_opt_self();
    v50 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v51 = [v49 localizedStringFromPersonNameComponents:v50 style:0 options:0];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    (*(v338 + 8))(v44, v339);
    v55 = sub_1002576F0(v52, v54);
    v57 = v56;

    if (!v57)
    {
      v58 = (v43 + v41[6]);
      v55 = *v58;
      v57 = v58[1];
    }

    v59 = objc_opt_self();
    v60 = [v59 custodianAcceptedNotificationTitle];
    v339 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    v63 = [v59 custodianAcceptedNotificationBody];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100005814(&unk_1003E7720, &qword_100346B60);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_10033EB30;
    *(v64 + 56) = &type metadata for String;
    *(v64 + 64) = sub_100242A70();
    *(v64 + 32) = v55;
    *(v64 + 40) = v57;
    v65 = String.init(format:_:)();
    v67 = v66;

    sub_100005814(&unk_1003E7730, &unk_1003492E0);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_10033E5C0;
    *(v68 + 32) = 0xD000000000000010;
    *(v68 + 40) = 0x800000010032C670;
    v344 = 0xD00000000000002ALL;
    v345 = 0x8000000100333CD0;
    sub_100110C1C(&qword_1003D9150, &protocol conformance descriptor for UUID);
    v69 = v333;
    v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v70);

    v71 = v345;
    *(v68 + 48) = v344;
    *(v68 + 56) = v71;
    *(v68 + 64) = 0xD000000000000010;
    *(v68 + 72) = 0x800000010032C690;
    *(v68 + 80) = 0xD000000000000031;
    *(v68 + 88) = 0x8000000100333C90;
    v72 = sub_100308864(v68);
    swift_setDeallocating();
    sub_100005814(&qword_1003DDEC0, &unk_10033E630);
    v73 = 2;
    v74 = v339;
    swift_arrayDestroy();
    sub_1000120B4(v69);
  }

  else
  {
    v201 = v39;
    v202 = v337;
    sub_1002D1840(v201, v337, type metadata accessor for CustodianRecord);
    v203 = v331;
    PersonNameComponents.init()();
    v204 = &v202[v41[7]];
    v205 = v204[1];
    if (v205)
    {
      sub_1002576F0(*v204, v205);
    }

    PersonNameComponents.givenName.setter();
    v206 = &v202[v41[8]];
    v207 = v206[1];
    if (v207)
    {
      sub_1002576F0(*v206, v207);
    }

    PersonNameComponents.familyName.setter();
    v208 = objc_opt_self();
    v209 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v210 = [v208 localizedStringFromPersonNameComponents:v209 style:0 options:0];

    v211 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v213 = v212;

    (*(v338 + 8))(v203, v339);
    v214 = sub_1002576F0(v211, v213);
    v216 = v215;

    if (!v216)
    {
      v217 = &v202[v41[6]];
      v214 = *v217;
      v216 = v217[1];
    }

    v218 = objc_opt_self();
    v219 = [v218 custodianDeclinedNotificationTitle];
    v339 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v220;

    v221 = [v218 custodianDeclinedNotificationBody];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100005814(&unk_1003E7720, &qword_100346B60);
    v222 = swift_allocObject();
    *(v222 + 16) = xmmword_10033EB30;
    *(v222 + 56) = &type metadata for String;
    *(v222 + 64) = sub_100242A70();
    *(v222 + 32) = v214;
    *(v222 + 40) = v216;
    v65 = String.init(format:_:)();
    v67 = v223;

    sub_100005814(&unk_1003E7730, &unk_1003492E0);
    v224 = swift_initStackObject();
    *(v224 + 16) = xmmword_10033E5C0;
    *(v224 + 32) = 0xD000000000000010;
    *(v224 + 40) = 0x800000010032C670;
    v344 = 0xD00000000000002ALL;
    v345 = 0x8000000100333C60;
    sub_100110C1C(&qword_1003D9150, &protocol conformance descriptor for UUID);
    v225 = v337;
    v226._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v226);

    v227 = v345;
    *(v224 + 48) = v344;
    *(v224 + 56) = v227;
    *(v224 + 64) = 0xD000000000000010;
    *(v224 + 72) = 0x800000010032C690;
    *(v224 + 80) = 0xD000000000000031;
    *(v224 + 88) = 0x8000000100333C90;
    v72 = sub_100308864(v224);
    swift_setDeallocating();
    sub_100005814(&qword_1003DDEC0, &unk_10033E630);
    v73 = 2;
    v74 = v339;
    swift_arrayDestroy();
    sub_1000120B4(v225);
  }

LABEL_95:
  v327 = v342;
  *v342 = v74;
  v327[1] = v62;
  v327[2] = v65;
  v327[3] = v67;
  v327[4] = v72;
  *(v327 + 40) = v73;
}

uint64_t type metadata accessor for TrustedContactUserNotification(uint64_t a1)
{
  result = qword_1003E7848;
  if (!qword_1003E7848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_1002CC470(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005814(&unk_1003E7770, &unk_100349910);
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

        swift_errorRetain();
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

uint64_t sub_1002CC718(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100005814(&qword_1003E77D0, qword_100349980);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1002D1840(v27 + v28 * v24, v47, type metadata accessor for CustodianRecoveryInfoRecord);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1002D17D8(v29 + v28 * v24, v47, type metadata accessor for CustodianRecoveryInfoRecord);
      }

      sub_100110C1C(&qword_1003DB0B8, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1002D1840(v47, *(v12 + 56) + v28 * v20, type metadata accessor for CustodianRecoveryInfoRecord);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1002CCBA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005814(&qword_1003E8C20, &qword_10034A850);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100070AF0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1000D1064(v23, &v36);
        sub_10000DB1C(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100070AF0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_1002CCE5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005814(&qword_1003E8C70, &qword_10034A8B0);
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
      v24 = *(*(v5 + 56) + v20);
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
      *(*(v7 + 56) + v15) = v24;
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

Swift::Int sub_1002CD0FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005814(&unk_1003DBB70, &unk_100349970);
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
      v24 = *(*(v5 + 56) + v20);
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_1002CD39C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005814(&qword_1003E7758, &unk_100349900);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v35 = *(v20 + v19);
      if ((v34 & 1) == 0)
      {
        v22 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v23 = Hasher._finalize()();

      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1002CD658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005814(&qword_1003E3460, qword_1003469E0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100070AF0(v24, v34);
      }

      else
      {
        sub_10000DB1C(v24, v34);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100070AF0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1002CD910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005814(&qword_1003E7790, &qword_100349930);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1002CDBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100005814(&unk_1003E7760, &unk_10034A870);
  v46 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v53 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v8;
    v45 = v6;
    v48 = (v6 + 32);
    v17 = result + 64;
    v18 = v47;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v23 = (v15 - 1) & v15;
LABEL_15:
      v26 = v22 | (v11 << 6);
      v27 = *(v8 + 48) + *(v45 + 72) * v26;
      v51 = *(v45 + 72);
      v52 = v23;
      if (v46)
      {
        (*v48)(v18, v27, v53);
        v28 = (*(v8 + 56) + 32 * v26);
        v29 = *v28;
        v30 = v28[1];
        v31 = v28[3];
        v49 = v28[2];
        v50 = v29;
      }

      else
      {
        (*v43)(v18, v27, v53);
        v32 = (*(v8 + 56) + 32 * v26);
        v33 = *v32;
        v30 = v32[1];
        v31 = v32[3];
        v49 = v32[2];
        v50 = v33;
      }

      sub_100110C1C(&qword_1003DB0B8, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v10 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v17 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v18 = v47;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v17 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v17 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v18 = v47;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v48)(*(v10 + 48) + v51 * v19, v18, v53);
      v20 = (*(v10 + 56) + 32 * v19);
      v21 = v49;
      *v20 = v50;
      v20[1] = v30;
      v20[2] = v21;
      v20[3] = v31;
      ++*(v10 + 16);
      v8 = v44;
      v15 = v52;
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v8 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v12, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v41;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

Swift::Int sub_1002CDFC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005814(&qword_1003E7780, &qword_100349920);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_100015D6C(v34, *(&v34 + 1));
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1002CE280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100005814(&qword_1003E8C60, &qword_10034A8A0);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v48 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v6 + 16);
    v41 = v8;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = result + 64;
    v18 = v44;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v42 + 72) * v25;
      v46 = *(v42 + 72);
      v47 = v22;
      if (v43)
      {
        (*v45)(v18, v26, v48);
        v27 = (*(v8 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v18, v26, v48);
        v30 = (*(v8 + 56) + 16 * v25);
        v29 = *v30;
        v28 = v30[1];
        sub_100015D6C(*v30, v28);
      }

      sub_100110C1C(&qword_1003DB0B8, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v18 = v44;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v10 + 48) + v46 * v19, v18, v48);
      v20 = (*(v10 + 56) + 16 * v19);
      *v20 = v29;
      v20[1] = v28;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v47;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

Swift::Int sub_1002CE654(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100005814(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_1002CE8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005814(&unk_1003E77C0, &unk_100349960);
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

        swift_errorRetain();
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

Swift::Int sub_1002CEB98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005814(&qword_1003E7788, &qword_100349928);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1002CEE28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1003084DC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1002CE654(v20, a4 & 1, a5, a6);
      v15 = sub_1003084DC(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_1002D12E0(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

uint64_t sub_1002CEFC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1003084DC(a2, a3);
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
      sub_1002CC470(v16, a4 & 1);
      v11 = sub_1003084DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1002CFE94();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1002CF140(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10031AF8C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002D0004();
      goto LABEL_7;
    }

    sub_1002CC718(v17, a3 & 1);
    v24 = sub_10031AF8C(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1002CFBE8(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for CustodianRecoveryInfoRecord(0) - 8) + 72) * v14;

  return sub_1002D1774(a1, v22);
}