unint64_t sub_100110B08()
{
  result = qword_1003DDF98;
  if (!qword_1003DDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDF98);
  }

  return result;
}

uint64_t sub_100110B5C(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoveryData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100110BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100110C1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100110C74()
{
  result = qword_1003DDFA8;
  if (!qword_1003DDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDFA8);
  }

  return result;
}

unint64_t sub_100110CCC()
{
  result = qword_1003DDFB0;
  if (!qword_1003DDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDFB0);
  }

  return result;
}

unint64_t sub_100110D24()
{
  result = qword_1003DDFB8;
  if (!qword_1003DDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDFB8);
  }

  return result;
}

uint64_t sub_100110D78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010032E8F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736553656B617073 && a2 == 0xEE0044496E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797265766F636572 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xED0000444955556ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70704172656E776FLL && a2 == 0xEC0000004449656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010032E8D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED0000434B525064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461446161 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x61746144736D6469 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6973736553696C63 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7374706D65747461 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032D430 == a2)
  {

    return 12;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void sub_1001111C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA88);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v13 = 136315650;
    v14 = Dictionary.description.getter();
    v16 = sub_10021145C(v14, v15, v41);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10021145C(a2, a3, v41);
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_10021145C(a4, a5, v41);
    _os_log_impl(&_mh_execute_header, v11, v12, "Asked to verify CFU item: %s \n with IdMS Info: %s altDISD: %s", v13, 0x20u);
    swift_arrayDestroy();

    v6 = v5;
  }

  v36 = [objc_allocWithZone(ACAccountStore) init];
  v17 = [v36 aa_primaryAppleAccount];
  if (v17)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "There is already a primary account on this device, ignoring Notification", v20, 2u);
    }

    v21 = [objc_allocWithZone(AKCustodianContext) init];
    if (*(a1 + 16))
    {
      v22 = sub_1003084DC(0x6E6F697373657372, 0xEA00000000006449);
      if (v23)
      {
        sub_10000DB1C(*(a1 + 56) + 32 * v22, v41);
        if (swift_dynamicCast())
        {
          v24 = String._bridgeToObjectiveC()();

          [v21 setRecoverySessionID:v24];
        }
      }
    }

    v25 = String._bridgeToObjectiveC()();
    [v21 setTransactionID:v25];

    v26 = String._bridgeToObjectiveC()();
    [v21 setAltDSID:v26];

    [v21 setNotificationAction:0];
    if (*(a1 + 16) && (v27 = sub_1003084DC(0x79654B6C72556266, 0xE800000000000000), (v28 & 1) != 0))
    {
      sub_10000DB1C(*(a1 + 56) + 32 * v27, v41);
      v29 = swift_dynamicCast();
      if (v29)
      {
        v30 = v39;
      }

      else
      {
        v30 = 0;
      }

      if (v29)
      {
        v31 = v40;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    sub_1000080F8((v6 + 56), *(v6 + 80));
    sub_10011B6B0(v21, v30, v31, sub_100112D08, 0);
  }

  else
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "We don't have an account, Looking for custodian information ", v34, 2u);
    }

    v35 = swift_allocObject();
    swift_weakInit();

    sub_100112FE4(a1, v6, v35, a1, a2, a3, a4, a5);
  }
}

void *sub_100111760(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_10010C038(a1, a2, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Ignoring CFU Item as we failed to get CRToken with error: %@", v17, 0xCu);
      sub_100083380(v18);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = [objc_allocWithZone(AKCustodianContext) init];
      if (*(a5 + 16))
      {
        v23 = sub_1003084DC(0x6E6F697373657372, 0xEA00000000006449);
        if (v24)
        {
          sub_10000DB1C(*(a5 + 56) + 32 * v23, &v53);
          if (swift_dynamicCast())
          {
            v25 = String._bridgeToObjectiveC()();

            [v22 setRecoverySessionID:v25];
          }
        }
      }

      v26 = String._bridgeToObjectiveC()();
      [v22 setTransactionID:v26];

      v27 = String._bridgeToObjectiveC()();
      [v22 setAltDSID:v27];

      [v22 setNotificationAction:0];
      if (*(a5 + 16) && (v28 = sub_1003084DC(0x79654B6C72556266, 0xE800000000000000), (v29 & 1) != 0))
      {
        sub_10000DB1C(*(a5 + 56) + 32 * v28, &v53);
        v30 = swift_dynamicCast();
        if (v30)
        {
          v31 = v51;
        }

        else
        {
          v31 = 0;
        }

        if (v30)
        {
          v32 = v52;
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      sub_1000080F8((v21 + 56), *(v21 + 80));
      sub_10011B6B0(v22, v31, v32, sub_100112D08, 0);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "We have a CRT stored. Posting CFU... ", v36, 2u);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v37 = result;
      v54 = &type metadata for String;
      *&v53 = a8;
      *(&v53 + 1) = a9;
      sub_100070AF0(&v53, v50);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1002CF8B4(v50, 0x44495344746C61, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v48 = v37[15];
      v39 = a1;
      v40 = v37[16];
      sub_1000080F8(v37 + 12, v48);
      v47 = AAFollowUpIdentifierCustodianEmbargo;
      v46 = sub_1002D2194(a5);

      v41 = swift_allocObject();
      swift_weakInit();
      v42 = swift_allocObject();
      v43 = a8;
      v44 = v42;
      v42[2] = a5;
      v42[3] = v41;
      v42[4] = a6;
      v42[5] = a7;
      v42[6] = v43;
      v42[7] = a9;
      v42[8] = v39;
      v42[9] = a2;
      v45 = *(v40 + 8);

      sub_100113704(v39, a2, 0);
      v45(v47, v46, sub_1001136D0, v44, v48, v40);
    }
  }

  return result;
}

void sub_100111D30(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Successfully dismissed followups for custodian emabrgo", v4, 2u);
    }

    goto LABEL_13;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to dismiss followups for custodian embargo", v9, 2u);
  }

  if (a2)
  {
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = _convertErrorToNSError(_:)();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Failed to dismiss CFU with error: %@", v11, 0xCu);
      sub_100083380(v12);

LABEL_13:

      return;
    }
  }
}

uint64_t sub_100111FE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48[0] = v44;
      *v7 = 136315138;
      v8 = Dictionary.description.getter();
      v10 = sub_10021145C(v8, v9, v48);

      *(v7 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "Successfully posted CFU for Item: %s", v7, 0xCu);
      sub_10000839C(v44);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v12 = result;
      v13 = [objc_allocWithZone(AKCustodianContext) init];
      if (*(a3 + 16))
      {
        v14 = sub_1003084DC(0x6E6F697373657372, 0xEA00000000006449);
        if (v15)
        {
          sub_10000DB1C(*(a3 + 56) + 32 * v14, v48);
          if (swift_dynamicCast())
          {
            v16 = String._bridgeToObjectiveC()();

            [v13 setRecoverySessionID:v16];
          }
        }
      }

      v17 = String._bridgeToObjectiveC()();
      [v13 setCustodianRecoveryToken:v17];

      v18 = String._bridgeToObjectiveC()();
      [v13 setTransactionID:v18];

      v19 = String._bridgeToObjectiveC()();
      [v13 setAltDSID:v19];

      [v13 setNotificationAction:1];
LABEL_28:
      if (*(a3 + 16) && (v39 = sub_1003084DC(0x79654B6C72556266, 0xE800000000000000), (v40 & 1) != 0))
      {
        sub_10000DB1C(*(a3 + 56) + 32 * v39, v48);
        v41 = swift_dynamicCast();
        if (v41)
        {
          v42 = v46;
        }

        else
        {
          v42 = 0;
        }

        if (v41)
        {
          v43 = v47;
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      sub_1000080F8((v12 + 56), *(v12 + 80));
      sub_10011B6B0(v13, v42, v43, sub_100112D08, 0);
    }
  }

  else
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100008D04(v20, qword_1003FAA88);
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = _convertErrorToNSError(_:)();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to post CFU with error: %@", v23, 0xCu);
        sub_100083380(v24);
      }

      else
      {
      }
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48[0] = v30;
      *v29 = 136315138;
      v31 = Dictionary.description.getter();
      v33 = sub_10021145C(v31, v32, v48);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to post CFU item %s", v29, 0xCu);
      sub_10000839C(v30);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v12 = result;
      v13 = [objc_allocWithZone(AKCustodianContext) init];
      if (*(a3 + 16))
      {
        v34 = sub_1003084DC(0x6E6F697373657372, 0xEA00000000006449);
        if (v35)
        {
          sub_10000DB1C(*(a3 + 56) + 32 * v34, v48);
          if (swift_dynamicCast())
          {
            v36 = String._bridgeToObjectiveC()();

            [v13 setRecoverySessionID:v36];
          }
        }
      }

      v37 = String._bridgeToObjectiveC()();
      [v13 setTransactionID:v37];

      v38 = String._bridgeToObjectiveC()();
      [v13 setAltDSID:v38];

      [v13 setNotificationAction:0];
      goto LABEL_28;
    }
  }

  return result;
}

uint64_t sub_1001127F0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for CustodianRecoverySessionRecord(0);
  __chkstk_darwin(v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  __chkstk_darwin(v13);
  v15 = (v40 - v14);
  sub_100113548(a1, v40 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA88);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = _convertErrorToNSError(_:)();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get recovery record with error: %@", v20, 0xCu);
      sub_100083380(v21);
    }

    swift_errorRetain();
    a4(v16, 0, 1);
  }

  else
  {
    sub_1001135B8(v15, v12);
    v24 = &v12[*(v10 + 44)];
    v25 = v24[1];
    if (v25)
    {
      v26 = *v24;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008D04(v27, qword_1003FAA88);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v40[1] = a5;
        v31 = a4;
        v32 = v30;
        v33 = swift_slowAlloc();
        v41 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_10021145C(a2, a3, &v41);
        _os_log_impl(&_mh_execute_header, v28, v29, "Found recovery record for sessionID: %s, posting CFU", v32, 0xCu);
        sub_10000839C(v33);

        a4 = v31;
      }

      a4(v26, v25, 0);
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100008D04(v34, qword_1003FAA88);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v41 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_10021145C(a2, a3, &v41);
        _os_log_impl(&_mh_execute_header, v35, v36, "Found recovery record for sessionID: %s, but does not contain recovery token, failing...", v37, 0xCu);
        sub_10000839C(v38);
      }

      type metadata accessor for AACustodianError(0);
      v40[2] = -7005;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10003A9C0();
      _BridgedStoredNSError.init(_:userInfo:)();
      v39 = v41;
      a4(v41, 0, 1);
    }

    return sub_10011361C(v12);
  }
}

void sub_100112D08(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Successfully sent cfu feedback to IdMS", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
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
    _os_log_impl(&_mh_execute_header, oslog, v2, "Encountered error while sending cfu feedback to IdMS: %@", v3, 0xCu);
    sub_100083380(v4);

LABEL_10:

    return;
  }
}

uint64_t sub_100112F40()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_100112FAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

void sub_100112FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = a8;
  v17 = *(a1 + 16);

  if (v17 && (v18 = sub_1003084DC(0x6E6F697373657372, 0xEA00000000006449), (v19 & 1) != 0) && (sub_10000DB1C(*(a1 + 56) + 32 * v18, v42), swift_dynamicCast()))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10021145C(v40, v41, v42);
      _os_log_impl(&_mh_execute_header, v21, v22, "Asked to post CFU for sessionID: %s, fetching session data", v23, 0xCu);
      sub_10000839C(v24);
    }

    sub_1000080F8((a2 + 16), *(a2 + 40));
    v25 = swift_allocObject();
    v25[2] = v40;
    v25[3] = v41;
    v25[4] = sub_1001134C8;
    v25[5] = v16;

    sub_10002CD28(v40, v41, sub_10011353C, v25);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v39 = a3;
    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42[0] = v38;
      *v29 = 136315138;
      v30 = Dictionary.description.getter();
      v32 = a8;
      v33 = a4;
      v34 = a5;
      v35 = a7;
      v36 = sub_10021145C(v30, v31, v42);

      *(v29 + 4) = v36;
      a7 = v35;
      a5 = v34;
      a4 = v33;
      a8 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to find sessionID on CFU Item: %s", v29, 0xCu);
      sub_10000839C(v38);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = v42[0];
    sub_100111760(v42[0], 0, 1, v39, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100113478()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1001134FC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100113548(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001135B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoverySessionRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011361C(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoverySessionRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100113678()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100113704(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100113728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100113804(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CustodianRecoveryKeys(uint64_t a1)
{
  result = qword_1003DE0F0;
  if (!qword_1003DE0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100113900(uint64_t a1)
{
  sub_1000EEDD4(319, &qword_1003DD7C0, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    sub_1000EEDD4(319, &qword_1003DB130, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_1000F2A94(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001139C8(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003DE148, &qword_100342B50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_100114218();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_100015D6C(v14, v9);
  sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100012324(v14, v15);
  }

  else
  {
    sub_100012324(v14, v15);
    v10 = v3[3];
    v14 = v3[2];
    v15 = v10;
    v13 = 1;
    sub_100052704(v14, v10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v14, v15);
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for CustodianRecoveryKeys(0);
    LOBYTE(v14) = 3;
    type metadata accessor for UUID();
    sub_100110C1C(&unk_1003DDA80, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100113C44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_100005814(&qword_1003DE138, &qword_100342B48);
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for CustodianRecoveryKeys(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 1) = xmmword_10033F590;
  v13 = *(v10 + 28);
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v33 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v32 = a1;
  sub_1000080F8(a1, v16);
  sub_100114218();
  v17 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_10000839C(v32);
    sub_100015D58(*(v12 + 2), *(v12 + 3));

    return sub_1000F76CC(&v12[v33]);
  }

  else
  {
    v31 = v5;
    v35 = 0;
    sub_1000EE61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v12 = v34;
    v35 = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18 = v34;
    sub_100015D58(*(v12 + 2), *(v12 + 3));
    *(v12 + 1) = v18;
    v19 = v30;
    LOBYTE(v34) = 2;
    *(v12 + 4) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v12 + 5) = v20;
    LOBYTE(v34) = 3;
    sub_100110C1C(&unk_1003DD720, &protocol conformance descriptor for UUID);
    v21 = v31;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000F244C(v21, &v12[v33]);
    LOBYTE(v34) = 4;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24 = v23;
    v25 = v19;
    v26 = &v12[*(v9 + 32)];
    (*(v29 + 8))(v8, v25);
    *v26 = v22;
    v26[1] = v24;
    sub_10011426C(v12, v28);
    sub_10000839C(v32);
    return sub_1001142D0(v12);
  }
}

unint64_t sub_100114088()
{
  v1 = *v0;
  v2 = 0x5064657070617277;
  v3 = 0xD000000000000016;
  v4 = 0x646F74737543746FLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5264657070617277;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100114148@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100114444(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100114170(uint64_t a1)
{
  v2 = sub_100114218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001141AC(uint64_t a1)
{
  v2 = sub_100114218();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100114218()
{
  result = qword_1003DE140;
  if (!qword_1003DE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DE140);
  }

  return result;
}

uint64_t sub_10011426C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryKeys(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001142D0(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoveryKeys(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100114340()
{
  result = qword_1003DE150;
  if (!qword_1003DE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DE150);
  }

  return result;
}

unint64_t sub_100114398()
{
  result = qword_1003DE158;
  if (!qword_1003DE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DE158);
  }

  return result;
}

unint64_t sub_1001143F0()
{
  result = qword_1003DE160;
  if (!qword_1003DE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DE160);
  }

  return result;
}

uint64_t sub_100114444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5064657070617277 && a2 == 0xEB00000000434B52;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5264657070617277 && a2 == 0xEA0000000000434BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010032E910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F74737543746FLL && a2 == 0xED000044496E6169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032D430 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100114618(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask) = 0;
  v7 = (v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion);
  *v7 = 0;
  v7[1] = 0;
  v8 = v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  v9 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_lock;
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v1 + v9) = v10;
  *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction) = 0;
  UUID.init()();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v6, v3);
  sub_100114F50(a1, v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData);
  return v1;
}

uint64_t sub_100114764(uint64_t result)
{
  v1 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction;
  if (*(result + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    _StringGuts.grow(_:)(34);

    v3._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v3);

    String.utf8CString.getter();

    v4 = os_transaction_create();

    *(v2 + v1) = v4;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100114848()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v31[-v7];
  v9 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
  v10 = *(v3 + 16);
  v10(&v31[-v7], v0 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v2);
  v11 = (v0 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData);
  swift_beginAccess();
  v12 = v11[1];
  v38 = v11;
  if (v12)
  {
    v37 = *v11;
    v13 = v12;
  }

  else
  {
    v13 = 0xE500000000000000;
    v37 = 0x3E6C696E3CLL;
  }

  v14 = qword_1003D7F38;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAA88);
  v10(v6, v8, v2);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = v8;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v36 = v9;
    v20 = v19;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v20 = 136315394;
    sub_10011501C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v35 = v8;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v16;
    v23 = v22;
    v24 = *(v3 + 8);
    v32 = v17;
    v24(v6, v2);
    v25 = sub_10021145C(v21, v23, &v39);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = sub_10021145C(v37, v13, &v39);

    *(v20 + 14) = v26;
    v27 = v33;
    _os_log_impl(&_mh_execute_header, v33, v32, "Custodian recovery session object destroyed, sessionID: %s, recoverySessionID: %s", v20, 0x16u);
    swift_arrayDestroy();

    v9 = v36;

    v28 = v35;
  }

  else
  {

    v24 = *(v3 + 8);
    v24(v6, v2);
    v28 = v18;
  }

  v24(v28, v2);
  v29 = v38;
  v24((v1 + v9), v2);
  sub_100110B5C(v29);

  sub_100083B0C(*(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion), *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion + 8));
  sub_100114FB4(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100114C44()
{
  sub_100114848();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianRecoverySession(uint64_t a1)
{
  result = qword_1003DE1A8;
  if (!qword_1003DE1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100114CF0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CustodianRecoveryData(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

Swift::Int sub_100114E90()
{
  Hasher.init(_seed:)();
  v0 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_100114F0C(uint64_t a1)
{
  Hasher.init(_seed:)();
  v1 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100114F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100114FB4(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DE300, &qword_100342838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011501C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_100115064(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10011518C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001152C4(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1001153DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001154EC(*a1);
  *a2 = result;
  return result;
}

void sub_10011540C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E69;
  v4 = 0x676542656B617073;
  v5 = 0x6E6946656B617073;
  v6 = 0xED00006574656C70;
  v7 = 0x6D6F43656B617073;
  if (v2 != 4)
  {
    v7 = 0x727245656B617073;
    v6 = 0xEA0000000000726FLL;
  }

  if (v2 == 3)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x800000010032C1A0;
  v9 = 0xD000000000000015;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x800000010032C1C0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  *a1 = v10;
  a1[1] = v11;
}

unint64_t sub_1001154EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3808, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10011554C()
{
  result = qword_1003DE308;
  if (!qword_1003DE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DE308);
  }

  return result;
}

uint64_t sub_1001155A0()
{
  type metadata accessor for CustodianSessionManager(0);
  v0 = swift_allocObject();
  result = sub_1001171C4();
  qword_1003FA820 = v0;
  return result;
}

uint64_t sub_1001155E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v85 = a5;
  v86 = a3;
  v87 = a4;
  v8 = type metadata accessor for DispatchTime();
  v91 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v88 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = &v77 - v11;
  v83 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v83);
  v84 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for UUID();
  v96 = *(v89 - 8);
  v13 = __chkstk_darwin(v89);
  v95 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v14;
  __chkstk_darwin(v13);
  v16 = &v77 - v15;
  v17 = type metadata accessor for CustodianRecoveryData(0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v77 - v21;
  v94 = v5;
  v80 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
  os_unfair_lock_lock(*(v5 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock));
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAA88);
  sub_100110BB8(a2, v22);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v92 = v8;
  v82 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v93 = a2;
    v29 = a1;
    v30 = v28;
    aBlock[0] = v28;
    *v27 = 136315138;
    v31 = sub_10011038C();
    v33 = v32;
    sub_100110B5C(v22);
    v34 = sub_10021145C(v31, v33, aBlock);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "Generating recovery session with data: %s", v27, 0xCu);
    sub_10000839C(v30);
    a1 = v29;
    a2 = v93;
  }

  else
  {

    sub_100110B5C(v22);
  }

  sub_100110BB8(a2, v20);
  type metadata accessor for CustodianRecoverySession(0);
  swift_allocObject();
  v35 = sub_100114618(v20);
  v36 = *(v35 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_lock);
  os_unfair_lock_lock(v36);
  sub_100114764(v35);
  os_unfair_lock_unlock(v36);
  v37 = v94;
  swift_beginAccess();

  sub_1002FACD8(&v98, v35);
  swift_endAccess();

  if (a1)
  {
    v38 = a1;
    if ([v38 maxSessionTime] < 1 || objc_msgSend(v38, "maxSessionTime") > 7199)
    {
      v39 = 900;
    }

    else
    {
      v39 = [v38 maxSessionTime];
    }

    v93 = v39;
  }

  else
  {
    v93 = 900;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    aBlock[0] = v79;
    *v42 = 136315394;
    v43 = v96;
    v44 = *(v96 + 16);
    v45 = v82;
    v78 = v41;
    v46 = v89;
    v44(v82, v35 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v89);
    sub_100117F5C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v40;
    v48 = v47;
    v50 = v49;
    v51 = v46;
    v52 = v46;
    v53 = v44;
    (*(v43 + 8))(v45, v52);
    v54 = sub_10021145C(v48, v50, aBlock);

    *(v42 + 4) = v54;
    *(v42 + 12) = 2048;
    *(v42 + 14) = v93;
    v55 = v77;
    _os_log_impl(&_mh_execute_header, v77, v78, "Starting countdown for session with Id: %s of %ld seconds", v42, 0x16u);
    sub_10000839C(v79);

    v37 = v94;

    v56 = v95;
  }

  else
  {

    v56 = v95;
    v43 = v96;
    v53 = *(v96 + 16);
    v51 = v89;
    v45 = v82;
  }

  v57 = v51;
  v53(v56, v35 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v51);
  v58 = swift_allocObject();
  swift_weakInit();
  v53(v45, v56, v57);
  v59 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v60 = (v81 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  *(v61 + 16) = v58;
  (*(v43 + 32))(v61 + v59, v45, v57);
  v62 = v85;
  *(v61 + v60) = v85;
  aBlock[4] = sub_100117EB4;
  aBlock[5] = v61;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AA0A0;
  _Block_copy(aBlock);
  v98 = _swiftEmptyArrayStorage;
  sub_100117F5C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  v63 = v62;
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v64 = DispatchWorkItem.init(flags:block:)();

  v65 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask;
  *(v35 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask) = v64;

  v66 = (v35 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion);
  v67 = *(v35 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion);
  v68 = *(v35 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion + 8);
  v69 = v86;
  v70 = v87;
  *v66 = v86;
  v66[1] = v70;
  sub_100083AA0(v69, v70);
  sub_100083B0C(v67, v68);
  v71 = *(v37 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_managerQueue);
  v72 = v88;
  static DispatchTime.now()();
  v73 = v90;
  + infix(_:_:)();
  v74 = v92;
  v75 = *(v91 + 8);
  result = v75(v72, v92);
  if (*(v35 + v65))
  {

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v75(v73, v74);
    os_unfair_lock_unlock(*(v37 + v80));
    (*(v96 + 8))(v95, v57);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100115F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100116210(a2, a3, 1);
  }

  return result;
}

uint64_t sub_100116014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100005814(&qword_1003DE4C8, qword_100342EA8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = [objc_allocWithZone(AACustodianRecoveryConfiguration) init];
  (*(v9 + 16))(v11, v4 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager__constants, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  [v12 setMaxSessionTime:v18];
  type metadata accessor for AACustodianRecoveryError(0);
  v17 = -9002;
  v13 = v12;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100117F5C(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
  _BridgedStoredNSError.init(_:userInfo:)();
  v14 = v18;
  v15 = sub_1001155E0(v12, a1, a2, a3, v18);

  return v15;
}

void sub_100116210(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v43 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
  os_unfair_lock_lock(*(v4 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock));
  v15 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions;
  swift_beginAccess();
  v44 = v15;
  v16 = *(v4 + v15);
  v46 = a1;

  v17 = sub_10021418C(sub_100117D60, v45, v16);

  os_unfair_lock_unlock(*(v4 + v14));
  if (v17)
  {
    v42 = v14;
    os_unfair_lock_lock(*(v4 + v14));
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA88);
    (*(v8 + 16))(v13, a1, v7);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = v5;
      v22 = v21;
      v40 = swift_slowAlloc();
      v47[0] = v40;
      *v22 = 136315138;
      sub_100117F5C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v5 = v24;
      (*(v8 + 8))(v13, v7);
      v25 = sub_10021145C(v23, v5, v47);

      *(v22 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Terminating session with ID: %s", v22, 0xCu);
      sub_10000839C(v40);

      LOBYTE(v5) = v41;
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    v35 = *(v17 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_lock);
    os_unfair_lock_lock(v35);
    v36 = v42;
    if (*(v17 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction))
    {
      *(v17 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction) = 0;
      swift_unknownObjectRelease();
      os_unfair_lock_unlock(v35);
      if (*(v17 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask))
      {

        dispatch thunk of DispatchWorkItem.cancel()();
      }

      v37 = *(v17 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion);
      if (v37)
      {
        v38 = *(v17 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion + 8);

        v37(v43, v5 & 1);
        sub_100083B0C(v37, v38);
      }

      swift_beginAccess();
      sub_100117900(v17);
      swift_endAccess();

      os_unfair_lock_unlock(*(v4 + v36));
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA88);
    (*(v8 + 16))(v11, a1, v7);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47[0] = v30;
      *v29 = 136315138;
      sub_100117F5C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v8 + 8))(v11, v7);
      v34 = sub_10021145C(v31, v33, v47);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Asked to terminate a session that was already terminated or not found: %s", v29, 0xCu);
      sub_10000839C(v30);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }
}

void *sub_100116820(uint64_t a1, uint64_t a2)
{
  v25 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
  os_unfair_lock_lock(*(v2 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock));
  v4 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions;
  swift_beginAccess();
  v26 = v2;
  v5 = *(v2 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CustodianRecoverySession(0);
    sub_100117F5C(&qword_1003DE4B8, type metadata accessor for CustodianRecoverySession, &unk_100342D00);
    result = Set.Iterator.init(_cocoa:)();
    v8 = v29;
    v7 = v30;
    v9 = v31;
    v10 = v32;
    v11 = v33;
  }

  else
  {
    v12 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v13 = ~v12;
    v14 = -v12;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v5 + 56);
    v8 = v5;
    result = swift_bridgeObjectRetain_n();
    v9 = v13;
    v10 = 0;
  }

  v16 = (v9 + 64) >> 6;
  while (v8 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_25:
      v21 = 0;
LABEL_26:
      sub_10005A1DC(v8);

      os_unfair_lock_unlock(*(v26 + v25));
      return v21;
    }

    type metadata accessor for CustodianRecoverySession(0);
    swift_dynamicCast();
    v21 = v28;
    v19 = v10;
    v20 = v11;
    if (!v28)
    {
      goto LABEL_26;
    }

LABEL_18:
    v22 = v21 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
    swift_beginAccess();
    v23 = *(v22 + 24);
    if (v23)
    {
      v24 = *(v22 + 16) == a1 && v23 == a2;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v10 = v19;
    v11 = v20;
  }

  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_14:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_25;
    }

    v18 = *(v7 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_100116ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
  os_unfair_lock_lock(*(v2 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock));
  if (qword_1003D7F38 != -1)
  {
LABEL_38:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA88);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v32 = v4;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions;
    swift_beginAccess();
    v10 = *(v3 + v9);
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *(v10 + 16);
    }

    *(v8 + 4) = v11;

    _os_log_impl(&_mh_execute_header, v6, v7, "Active sessions count %ld", v8, 0xCu);
  }

  else
  {
  }

  v12 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions;
  swift_beginAccess();
  v33 = v3;
  v13 = *(v3 + v12);
  if ((v13 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CustodianRecoverySession(0);
    sub_100117F5C(&qword_1003DE4B8, type metadata accessor for CustodianRecoverySession, &unk_100342D00);
    Set.Iterator.init(_cocoa:)();
    v13 = v37;
    v14 = v38;
    v4 = v39;
    v3 = v40;
    v15 = v41;
  }

  else
  {
    v16 = -1 << *(v13 + 32);
    v14 = v13 + 56;
    v4 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v13 + 56);

    v3 = 0;
  }

  v19 = (v4 + 64) >> 6;
  while ((v13 & 0x8000000000000000) == 0)
  {
    v20 = v3;
    v21 = v15;
    v22 = v3;
    if (!v15)
    {
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {
          goto LABEL_33;
        }

        v21 = *(v14 + 8 * v22);
        ++v20;
        if (v21)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_22:
    v4 = (v21 - 1) & v21;
    v23 = *(*(v13 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v23)
    {
      goto LABEL_33;
    }

LABEL_26:
    v24 = (v23 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData);
    swift_beginAccess();
    v25 = v24[1];
    if (v25 && (*v24 == a1 ? (v26 = v25 == a2) : (v26 = 0), v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v3 = v22;
    v15 = v4;
  }

  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for CustodianRecoverySession(0);
    swift_dynamicCast();
    v23 = v36;
    v22 = v3;
    v4 = v15;
    if (v36)
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  sub_10005A1DC(v13);
  v27 = sub_100256D5C(_swiftEmptyArrayStorage);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = v27[2];

    _os_log_impl(&_mh_execute_header, v28, v29, "Filtered sessions count %ld", v30, 0xCu);
  }

  else
  {
  }

  os_unfair_lock_unlock(*(v33 + v32));
  return v27;
}

uint64_t sub_100116FA0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager__constants;
  v2 = sub_100005814(&qword_1003DE4C8, qword_100342EA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianSessionManager(uint64_t a1)
{
  result = qword_1003DE358;
  if (!qword_1003DE358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001170BC(uint64_t a1)
{
  sub_100117174();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100117174()
{
  if (!qword_1003DE368)
  {
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DE368);
    }
  }
}

uint64_t sub_1001171C4()
{
  v1 = v0;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  Dependency.init(dependencyId:config:)();
  *(v0 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions) = &_swiftEmptySetSingleton;
  v12 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_managerQueue;
  v7 = sub_100071C74();
  v11[1] = "essions";
  v11[2] = v7;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100117F5C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v0 + v12) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v1 + v8) = v9;
  return v1;
}

uint64_t sub_10011747C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AACustodianRecoveryError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100117F5C(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
  _BridgedStoredNSError.init(_:userInfo:)();
  v8 = sub_1001155E0(a1, a2, a3, a4, v10);

  return v8;
}

uint64_t sub_100117570(void *a1, uint64_t a2)
{
  type metadata accessor for AACustodianRecoveryError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100117F5C(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError, &unk_10033E000);
  _BridgedStoredNSError.init(_:userInfo:)();
  v4 = sub_1001155E0(a1, a2, 0, 0, v6);

  return v4;
}

Swift::Int sub_100117654(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100005814(&qword_1003DE4C0, &qword_100342EA0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CustodianRecoverySession(0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1002FB534(v10 + 1);
        }

        v2 = v16;
        Hasher.init(_seed:)();
        v3 = ObjectIdentifier.hashValue.getter();
        Hasher._combine(_:)(v3);
        result = Hasher._finalize()();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_100117858(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v4);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100117900(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100117A74(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  v8 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v8);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (*(*(v3 + 48) + 8 * v11) != a1)
  {
    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1002FC538();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v11);
  sub_100117BA4(v11);
  result = v15;
  *v1 = v16;
  return result;
}

unint64_t sub_100117A74(uint64_t a1, uint64_t a2)
{

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100117654(v5, v4);
  v14 = v6;
  Hasher.init(_seed:)();

  v7 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v7);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v6 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v6 + 48) + 8 * v10);
  result = sub_100117BA4(v10);
  if (v12 == a2)
  {
    *v2 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100117BA4(unint64_t result)
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

        v10 = ObjectIdentifier.hashValue.getter();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = (v13 + 8 * v2);
          v15 = (v13 + 8 * v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
            v2 = v6;
          }
        }

LABEL_5:
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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100117DA4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100117DDC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100117EB4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100115F9C(v3, v0 + v2, v4);
}

uint64_t sub_100117F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100117F5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100117FA4(void *a1@<X8>)
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Initializing verifier", v4, 2u);
  }

  v17 = 0;
  v5 = objc_allocWithZone(SPAKE2Verifier);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithSalt:isa code:v7 error:&v17];

  v9 = v17;
  if (v17)
  {
    v10 = v17;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v9;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "SPAKE verifier creation failed with error: %@", v13, 0xCu);
      sub_100083380(v14);
    }

    swift_willThrow();
  }

  else
  {
    a1[3] = sub_100016034(0, &qword_1003DE588, SPAKE2Verifier_ptr);
    a1[4] = &off_1003AA0C8;
    a1[5] = &off_1003AA108;
    *a1 = v8;
  }
}

void sub_100118250(void *a1@<X8>)
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Initializing prover", v4, 2u);
  }

  v17 = 0;
  v5 = objc_allocWithZone(SPAKE2Prover);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithSalt:isa code:v7 error:&v17];

  v9 = v17;
  if (v17)
  {
    v10 = v17;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v9;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "SPAKE prover creation failed with error: %@", v13, 0xCu);
      sub_100083380(v14);
    }

    swift_willThrow();
  }

  else
  {
    a1[3] = sub_100016034(0, &qword_1003DE580, SPAKE2Prover_ptr);
    a1[4] = &off_1003AA120;
    *a1 = v8;
  }
}

void *sub_100118574(SEL *a1)
{
  v6 = 0;
  v2 = [v1 *a1];
  v3 = v6;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id sub_100118664(uint64_t a1, uint64_t a2, SEL *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = 0;
  LODWORD(a3) = [v3 *a3];

  if (a3)
  {
    return v8;
  }

  v7 = v8;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void *sub_1001187C0(uint64_t a1, uint64_t a2, SEL *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = 0;
  v6 = [v3 *a3];

  v7 = v10;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_100118898()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008D04(v0, qword_1003FAA88);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Generating code", v3, 2u);
  }

  v15 = 0;
  v4 = [objc_opt_self() generateCodeWithError:&v15];
  v5 = v15;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v5;

  if (v7)
  {

    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v5;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "SPAKE verifier code creation failed with error: %@", v11, 0xCu);
      sub_100083380(v12);
    }

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100118B70(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  sub_1002DBEF4(sub_1001190D0, v5);
}

uint64_t sub_100118BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - v9;
  v11 = type metadata accessor for URL();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd22CustodianFamilyManager_custodianStorage), *(v4 + OBJC_IVAR____TtC13appleaccountd22CustodianFamilyManager_custodianStorage + 24));
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v19 = sub_1000080F8((*v17 + 16), *(*v17 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v20 = *(v25 + 8);
  v21 = v14;
  v22 = v26;
  v20(v21, v26);
  v23 = v27;
  (*(v8 + 16))(v10, *v19 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v27);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v23);
  sub_1000080F8(v28, v28[3]);
  sub_1000324D8(v16, sub_100119384, v18);

  v20(v16, v22);
  return sub_10000839C(v28);
}

uint64_t sub_100118EEC()
{
  sub_10000839C((v0 + 16));
  v1 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd22CustodianFamilyManager_custodianStorage));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianFamilyManager(uint64_t a1)
{
  result = qword_1003DE5C0;
  if (!qword_1003DE5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100119090()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001190D0(uint64_t a1, char a2)
{
  v3 = *(v2 + 24);
  if (a2)
  {
    return v3(a1, 1);
  }

  else
  {
    return sub_100118BFC(a1, v3, *(v2 + 32));
  }
}

uint64_t sub_100119114(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), unint64_t a6)
{
  v11 = type metadata accessor for CustodianRecord(0);
  v12 = __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v17 = v28 - v16;
  if (a2)
  {
    return a5(a1, 1);
  }

  v28[0] = a4;
  v28[1] = a6;
  v29 = a5;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v21 = *(v15 + 72);
    v22 = a1 + v20;
    v23 = _swiftEmptyArrayStorage;
    do
    {
      sub_100012050(v22, v17);
      if ((*&v17[*(v11 + 36)] - 1) > 2)
      {
        sub_1000120B4(v17);
      }

      else
      {
        sub_100012378(v17, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E0288(0, v23[2] + 1, 1);
          v23 = v30;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_1002E0288((v25 > 1), v26 + 1, 1);
          v23 = v30;
        }

        v23[2] = v26 + 1;
        sub_100012378(v14, v23 + v20 + v26 * v21);
      }

      v22 += v21;
      --v19;
    }

    while (v19);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v27 = sub_100119394(v28[0], v23);

  v29(v27, 0);
}

uint64_t sub_10011933C()
{

  return _swift_deallocObject(v0, 48);
}

void *sub_100119394(unint64_t a1, uint64_t a2)
{
  v33 = a2;
  v32 = type metadata accessor for CustodianRecord(0);
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = a1 & 0xC000000000000001;
    v26 = a1 + 32;
    v27 = i;
    v28 = a1;
    while (1)
    {
LABEL_6:
      if (v30)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v29 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v26 + 8 * v7);
      }

      v9 = v8;
      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      if (v10)
      {
        break;
      }

      v31 = v11;
      v12 = 0;
      v13 = *(v33 + 16);
      while (v13 != v12)
      {
        sub_100012050(v33 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5);
        v14 = &v5[*(v32 + 24)];
        v15 = *v14;
        v16 = *(v14 + 1);
        v17 = [v9 handle];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v15 == v18 && v16 == v20)
        {

          sub_1000120B4(v5);
LABEL_5:

          a1 = v28;
          v7 = v31;
          if (v31 != v27)
          {
            goto LABEL_6;
          }

          return v34;
        }

        ++v12;
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_1000120B4(v5);
        if (v22)
        {
          goto LABEL_5;
        }
      }

      v23 = [v9 isChild];
      v7 = v31;
      if (v23)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      a1 = v28;
      if (v7 == v27)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_100119640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Setting up custodian with idMS", v11, 2u);
  }

  v12 = *v4;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_10011BA9C;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100015858;
  v15[3] = &unk_1003AA338;
  v14 = _Block_copy(v15);

  [v12 initiateCustodianSetupWithContext:a1 completion:v14];
  _Block_release(v14);
}

void sub_1001197F4(void *a1, uint64_t a2, void (*a3)(uint64_t *))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error during idMS custodian setup: %@", v8, 0xCu);
      sub_100083380(v9);
    }

    v50 = a2;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 1;
    swift_errorRetain();
    a3(&v50);

    return;
  }

  if (a1)
  {
    v47 = a1;
    v11 = [v47 encryptedPRKC];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = [v47 ownerCustodianAltDSID];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100008D04(v21, qword_1003FAA88);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "idMS custodian setup was successful", v24, 2u);
        }

        v50 = v13;
        v51 = v15;
        v52 = v18;
        v53 = v20;
        v54 = 0;
        sub_100015D6C(v13, v15);
        a3(&v50);
        sub_100012324(v13, v15);

        sub_100012324(v13, v15);

        return;
      }

      sub_100012324(v13, v15);
    }

    v29 = 0xD000000000000018;
    v30 = [v47 encryptedPRKC];
    if (v30)
    {
      v31 = v30;
      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      sub_100012324(v32, v34);
      v35 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      v36 = 0x800000010032EE60;
      v35 = 0xD000000000000019;
    }

    v37 = v36;
    String.append(_:)(*&v35);

    v38 = [v47 ownerCustodianAltDSID];
    if (v38)
    {

      v29 = 0;
      v39 = 0xE000000000000000;
    }

    else
    {
      v39 = 0x800000010032EE80;
    }

    v40._countAndFlagsBits = v29;
    v40._object = v39;
    String.append(_:)(v40);

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAA88);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v44 = 136315138;
      v46 = sub_10021145C(0xD00000000000002ELL, 0x800000010032EE30, &v50);

      *(v44 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s", v44, 0xCu);
      sub_10000839C(v45);
    }

    else
    {
    }

    type metadata accessor for AACustodianError(0);
    v50 = -7009;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v50 = v48;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 1;
    a3(&v50);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "idMS custodian setup did not return results.", v28, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v50 = v49;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 1;
    a3(&v50);
  }
}

void sub_100119EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Finalizing custodianship with idMS", v11, 2u);
  }

  v12 = *v4;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_10011BA54;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10020E828;
  v15[3] = &unk_1003AA298;
  v14 = _Block_copy(v15);

  [v12 finalizeCustodianSetupWithContext:a1 completion:v14];
  _Block_release(v14);
}

void sub_10011A0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Revoking custodianship with idMS", v11, 2u);
  }

  v12 = *v4;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_10011BAA4;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10020E828;
  v15[3] = &unk_1003AA388;
  v14 = _Block_copy(v15);

  [v12 revokeCustodianWithContext:a1 completion:v14];
  _Block_release(v14);
}

void sub_10011A258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating recovery key with idMS", v11, 2u);
  }

  v12 = *v4;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_10011BA78;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10020E828;
  v15[3] = &unk_1003AA2E8;
  v14 = _Block_copy(v15);

  [v12 updateCustodianRecoveryKeyWithContext:a1 completion:v14];
  _Block_release(v14);
}

uint64_t sub_10011A43C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_10011A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_100012004();
  v14 = kAAAnalyticsEventCustodianFetchRecoveryConfiguration;

  v15 = v14;

  v16 = sub_100245D38(v15, a3, a4, a1, a2);
  v17 = *v7;
  type metadata accessor for CustodianIDMSRequestManager(0);
  sub_100005814(&unk_1003D8B50, &unk_10033F600);
  Dependency.wrappedValue.getter();
  v18 = v22[0];
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = v18;
  v19[4] = a5;
  v19[5] = a6;
  v22[4] = sub_10011BA48;
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10011A43C;
  v22[3] = &unk_1003AA248;
  v20 = _Block_copy(v22);
  v21 = v16;

  [v17 fetchCustodianRecoveryCodeConfigurationWithCompletion:v20];
  _Block_release(v20);
}

void sub_10011A688(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void, void))
{
  if (a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA88);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = a5;
      v13 = swift_slowAlloc();
      v32 = v13;
      *v11 = 136315138;
      v14 = Dictionary.description.getter();
      v16 = sub_10021145C(v14, v15, &v32);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Call to IdMS to fetch recovery configuration completed with result: %s", v11, 0xCu);
      sub_10000839C(v13);
      a5 = v12;
    }

    if (a3)
    {
      [a3 updateTaskResultWithError:0];
    }

    swift_getObjectType();
    sub_100246FA8(a3);
    a5(a1, 0);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA88);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Call to IdMS to fetch recovery configuration failed with error: %@", v21, 0xCu);
      sub_100083380(v22);
    }

    if (a3)
    {
      v24 = _convertErrorToNSError(_:)();
      [a3 updateTaskResultWithError:v24];
    }

    swift_getObjectType();
    sub_100246FA8(a3);
    swift_errorRetain();
    a5(a2, 1);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No Response was obtained from startCustodianRecoveryRequest", v28, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    if (a3)
    {
      v29 = v32;
      v30 = _convertErrorToNSError(_:)();

      [a3 updateTaskResultWithError:v30];
    }

    swift_getObjectType();
    sub_100246FA8(a3);
    v31 = v32;
    a5(v32, 1);
  }
}

void sub_10011AB94(char a1, void *a2, void (*a3)())
{
  if (a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Call to IdMS for recovery transaction completed with success!", v7, 2u);
    }

    (a3)(0);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA88);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = _convertErrorToNSError(_:)();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Call to IdMS for recovery transaction completed with error: %@", v12, 0xCu);
      sub_100083380(v13);
    }

    swift_errorRetain();
    (a3)(a2);
  }

  else
  {
    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    a3();
  }
}

void sub_10011AE60(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA88);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10021145C(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v8, v9, "Spake flow verified successfully! obtained new token: %s", v10, 0xCu);
      sub_10000839C(v11);
    }

    a4(a1, a2, 0);
  }

  else if (a3)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = _convertErrorToNSError(_:)();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Call to IdMS to verify Spake and fetch new token failed with error: %@", v16, 0xCu);
      sub_100083380(v17);
    }

    swift_errorRetain();
    a4(a3, 0, 1);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA88);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No Response was obtained from verifyRecoveryTransaction", v22, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    a4(v23, 0, 1);
  }
}

void sub_10011B288(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(void), const char *a6, const char *a7, const char *a8, ...)
{
  if (a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA88);

    v13 = Logger.logObject.getter();
    v14 = a5();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 136315138;
      v17 = Dictionary.description.getter();
      v19 = sub_10021145C(v17, v18, &v33);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, a6, v15, 0xCu);
      sub_10000839C(v16);
    }

    a3(a1, 0);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = _convertErrorToNSError(_:)();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, a7, v25, 0xCu);
      sub_100083380(v26);
    }

    swift_errorRetain();
    a3(a2, 1);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, a8, v32, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    a3(v33, 1);
  }
}

void sub_10011B6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_10011B978;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10020E828;
  v13[3] = &unk_1003AA1F8;
  v12 = _Block_copy(v13);

  [v9 sendEmbargoEndNotificationFeedbackWithContext:a1 urlKey:v10 completion:v12];
  _Block_release(v12);
}

uint64_t sub_10011B7C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t (*)(uint64_t), uint64_t, const char *), uint64_t a3, const char *a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA88);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 0xCu);
      sub_100083380(v11);
    }

    else
    {
    }
  }

  return a2(a1, a2, a3, a4);
}

uint64_t sub_10011B940()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10011B99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CustodianIDMSRequestManager(uint64_t a1)
{
  result = qword_1003DE748;
  if (!qword_1003DE748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011BA00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10011BAC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10011BB10(uint64_t result, int a2, int a3)
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

uint64_t sub_10011BB74(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10011BC44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10011BCF4(uint64_t a1)
{
  sub_10011BD78();
  if (v1 <= 0x3F)
  {
    sub_10000F7D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10011BD78()
{
  result = qword_1003DE758;
  if (!qword_1003DE758)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1003DE758);
  }

  return result;
}

uint64_t sub_10011BE14(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v5 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  __chkstk_darwin(v5);
  v7 = (&v29 - v6);
  v8 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianshipRecordBuilder.Components(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&unk_1003DE910, &unk_100343190);
  __chkstk_darwin(v14);
  v16 = (&v29 - v15);
  sub_100012D04(a1, &v29 - v15, &unk_1003DE910, &unk_100343190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA88);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error building custodian record: %@", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    }

    *v7 = v17;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v30(v7);

    return sub_100008D3C(v7, &unk_1003D91C0, &unk_10033FA50);
  }

  else
  {
    sub_100120820(v16, v13, type metadata accessor for CustodianshipRecordBuilder.Components);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Custodian components fetched, building record...", v28, 2u);
    }

    sub_10011C294(v13, v10);
    sub_100120458(v10, v7, type metadata accessor for CustodianshipRecords);
    swift_storeEnumTagMultiPayload();
    v30(v7);
    sub_100008D3C(v7, &unk_1003D91C0, &unk_10033FA50);
    sub_1001204C0(v10, type metadata accessor for CustodianshipRecords);
    return sub_1001204C0(v13, type metadata accessor for CustodianshipRecordBuilder.Components);
  }
}

id sub_10011C294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a1;
  v140 = a2;
  v153 = type metadata accessor for CustodianshipRecordBuilder.Components(0);
  __chkstk_darwin(v153);
  v138 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for CustodianHealthRecord(0);
  __chkstk_darwin(v137);
  v139 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for SHA256();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for SHA256Digest();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  __chkstk_darwin(v135);
  v156 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  v9 = __chkstk_darwin(v8 - 8);
  v136 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v134 = &v120 - v12;
  __chkstk_darwin(v11);
  v14 = (&v120 - v13);
  v15 = type metadata accessor for UUID();
  v157 = *(v15 - 8);
  v158 = v15;
  v16 = __chkstk_darwin(v15);
  v152 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v151 = &v120 - v19;
  v20 = __chkstk_darwin(v18);
  *&v150 = &v120 - v21;
  __chkstk_darwin(v20);
  v149 = &v120 - v22;
  v23 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v23);
  v154 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactsHelper(0);
  v25 = swift_allocObject();
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  v26 = *(v2 + 176);
  v27 = [v26 handle];
  v28 = v27;
  v29 = v27;
  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  v30 = v27;
  v31 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v32 = [v160 contactForHandle:v29];

  swift_unknownObjectRelease();
  if (v32)
  {
    v33 = [objc_allocWithZone(AALocalContactInfo) initWithHandle:v28 contact:v32];
  }

  else
  {

    v33 = 0;
  }

  swift_setDeallocating();
  (*(*(v31 - 8) + 8))(v25 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v31);
  swift_deallocClassInstance();
  result = [objc_opt_self() currentInfo];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v35 = result;
  v36 = [result qualifiedBuildVersion];

  v37 = v155;
  if (v36)
  {
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v145 = v39;
    v146 = v38;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  UUID.init()();
  v147 = *(v157 + 16);
  v148 = v157 + 16;
  v147(v150, v37, v158);
  v40 = [v26 handle];
  v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v131 = v41;

  v133 = v33;
  if (!v33)
  {
    v127 = 0;
    v126 = 0;
    v130 = 0;
    v45 = &v159;
LABEL_18:
    *(v45 - 32) = 0;
    goto LABEL_19;
  }

  v42 = [v33 firstName];
  if (v42)
  {
    v43 = v42;
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v129 = v44;
  }

  else
  {
    v130 = 0;
    v129 = 0;
  }

  v46 = [v33 lastName];
  if (!v46)
  {
    v127 = 0;
    v45 = &v156;
    goto LABEL_18;
  }

  v47 = v46;
  v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v126 = v48;

LABEL_19:
  v49 = v153;
  v144 = v37 + *(v153 + 28);
  sub_100012D04(v144, v14, &unk_1003DE920, &unk_10033F9A8);
  v50 = type metadata accessor for RecoveryKeys(0);
  v51 = *(v50 - 8);
  v142 = *(v51 + 48);
  v143 = v50;
  v141 = v51 + 48;
  if (v142(v14, 1) == 1)
  {
    sub_100008D3C(v14, &unk_1003DE920, &unk_10033F9A8);
    v52 = 0;
    v53 = 0xF000000000000000;
  }

  else
  {
    v52 = *v14;
    v53 = v14[1];
    sub_100015D6C(*v14, v53);
    sub_1001204C0(v14, type metadata accessor for RecoveryKeys);
  }

  v54 = *(v37 + *(v49 + 32));
  v56 = v157;
  v55 = v158;
  v57 = v154;
  v58 = v154 + v23[16];
  v128 = *(v157 + 56);
  v128(v58, 1, 1, v158);
  v59 = *(v56 + 32);
  v59(v57, v149, v55);
  v60 = v57 + v23[5];
  v157 = v56 + 32;
  v59(v60, v150, v55);
  v61 = (v57 + v23[6]);
  v62 = v131;
  *v61 = v132;
  v61[1] = v62;
  v63 = (v57 + v23[7]);
  v64 = v129;
  *v63 = v130;
  v63[1] = v64;
  v65 = (v57 + v23[8]);
  v66 = v126;
  *v65 = v127;
  v65[1] = v66;
  *(v57 + v23[9]) = 1;
  v67 = (v57 + v23[10]);
  *v67 = v52;
  v67[1] = v53;
  v68 = v23[11];
  v150 = xmmword_10033F8D0;
  *(v57 + v68) = xmmword_10033F8D0;
  v69 = v23[12];
  LODWORD(v149) = v54;
  *(v57 + v69) = v54;
  v70 = (v57 + v23[13]);
  v71 = v145;
  *v70 = v146;
  v70[1] = v71;
  v72 = (v57 + v23[14]);
  *v72 = 0;
  v72[1] = 0;
  v73 = v57 + v23[15];
  *v73 = 0;
  *(v73 + 8) = 1;

  UUID.init()();
  v147(v152, v37, v55);
  v74 = (v37 + *(v153 + 24));
  v75 = v74[3];
  v153 = v74[2];
  v76 = *v74;
  v77 = v74[1];
  v78 = v134;
  sub_100012D04(v144, v134, &unk_1003DE920, &unk_10033F9A8);
  if ((v142)(v78, 1, v143) == 1)
  {

    sub_100015D6C(v76, v77);
    sub_100008D3C(v78, &unk_1003DE920, &unk_10033F9A8);
    v79 = 0;
    v80 = 0xF000000000000000;
  }

  else
  {
    v79 = *(v78 + 16);
    v80 = *(v78 + 24);

    sub_100015D6C(v76, v77);
    sub_100015D6C(v79, v80);
    sub_1001204C0(v78, type metadata accessor for RecoveryKeys);
  }

  v81 = v135;
  v82 = v156;
  v83 = v158;
  v128(v156 + *(v135 + 44), 1, 1, v158);
  v59(v82, v151, v83);
  v59(v82 + v81[5], v152, v83);
  v84 = (v82 + v81[6]);
  *v84 = v153;
  v84[1] = v75;
  v85 = (v82 + v81[7]);
  *v85 = v76;
  v85[1] = v77;
  v86 = (v82 + v81[8]);
  *v86 = v79;
  v86[1] = v80;
  *(v82 + v81[9]) = v150;
  v87 = v149;
  *(v82 + v81[10]) = v149;
  v88 = (v82 + v81[12]);
  v89 = v145;
  *v88 = v146;
  v88[1] = v89;
  v90 = v136;
  sub_100012D04(v144, v136, &unk_1003DE920, &unk_10033F9A8);
  if ((v142)(v90, 1, v143) == 1)
  {
    sub_100008D3C(v90, &unk_1003DE920, &unk_10033F9A8);
    v91 = 0;
    v92 = 0xF000000000000000;
  }

  else
  {
    v93 = *(v90 + 16);
    v94 = *(v90 + 24);
    sub_100015D6C(v93, v94);
    sub_1001204C0(v90, type metadata accessor for RecoveryKeys);
    sub_100120888(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v95 = v120;
    v96 = v122;
    dispatch thunk of HashFunction.init()();
    sub_100015D6C(v93, v94);
    sub_10018F16C(v93, v94, v95);
    sub_100012324(v93, v94);
    v97 = v123;
    dispatch thunk of HashFunction.finalize()();
    (*(v121 + 8))(v95, v96);
    sub_100120888(&qword_1003DE938, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v98 = v125;
    v99 = Digest.makeIterator()();
    v101 = sub_10018F47C(v99, v100);

    v91 = sub_10018F97C(v101);
    v92 = v102;

    sub_100012324(v93, v94);
    (*(v124 + 8))(v97, v98);
  }

  v103 = v139;
  v104 = v138;
  v105 = v155;
  UUID.init()();
  v106 = v137;
  v147((v103 + *(v137 + 20)), v105, v158);
  Date.init(timeIntervalSince1970:)();
  v107 = (v103 + v106[7]);
  *v107 = v91;
  v107[1] = v92;
  *(v103 + v106[8]) = v150;
  *(v103 + v106[9]) = v87;
  v108 = v103 + v106[10];
  *v108 = 0;
  *(v108 + 8) = 1;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  sub_100008D04(v109, qword_1003FAA88);
  sub_100120458(v105, v104, type metadata accessor for CustodianshipRecordBuilder.Components);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v160 = v113;
    *v112 = 136315138;
    sub_100120888(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v114 = dispatch thunk of CustomStringConvertible.description.getter();
    v116 = v115;
    sub_1001204C0(v104, type metadata accessor for CustodianshipRecordBuilder.Components);
    v117 = sub_10021145C(v114, v116, &v160);

    *(v112 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v110, v111, "Custodianship records %s built successfully.", v112, 0xCu);
    sub_10000839C(v113);
  }

  else
  {

    sub_1001204C0(v104, type metadata accessor for CustodianshipRecordBuilder.Components);
  }

  v118 = v140;
  sub_100120820(v154, v140, type metadata accessor for CustodianRecord);
  v119 = type metadata accessor for CustodianshipRecords(0);
  sub_100120820(v156, v118 + *(v119 + 20), type metadata accessor for CustodianRecoveryInfoRecord);
  return sub_100120820(v103, v118 + *(v119 + 24), type metadata accessor for CustodianHealthRecord);
}

uint64_t sub_10011D29C()
{
  sub_10000839C((v0 + 16));
  sub_10000839C((v0 + 56));
  sub_10000839C((v0 + 96));
  sub_10000839C((v0 + 136));

  v1 = OBJC_IVAR____TtC13appleaccountd26CustodianshipRecordBuilder__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10011D394(uint64_t a1)
{
  sub_10000F7D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10011D444(uint64_t a1, char a2, void (*a3)(uint64_t), void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v13 = sub_100005814(&unk_1003DE910, &unk_100343190);
  __chkstk_darwin(v13);
  v15 = (&v23 - v14);
  if ((a2 & 1) == 0)
  {
    return sub_10011D670(a6, a7, a1 & 1, a3, a4);
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA88);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  sub_1000A6B60(a1, 1);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = _convertErrorToNSError(_:)();
    *(v19 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "Error fetching manatee status: %@", v19, 0xCu);
    sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);
  }

  *v15 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a3(v15);
  return sub_100008D3C(v15, &unk_1003DE910, &unk_100343190);
}

uint64_t sub_10011D670(uint64_t a1, void (**a2)(void, void), int a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v6 = v5;
  v125 = a4;
  v119 = a3;
  v120 = a2;
  v9 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  v117 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v121 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v11;
  __chkstk_darwin(v10);
  v124 = &v103 - v12;
  v106 = sub_100005814(&unk_1003DE910, &unk_100343190);
  __chkstk_darwin(v106);
  v107 = (&v103 - v13);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v116 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v103 - v19;
  __chkstk_darwin(v18);
  v22 = &v103 - v21;
  v23 = *(v15 + 16);
  v108 = a1;
  v23(&v103 - v21, a1, v14);
  v110 = v23;
  v111 = v15 + 16;
  v23(v20, v22, v14);
  v24 = *(v15 + 80);
  v25 = (v24 + 24) & ~v24;
  v115 = v16;
  v109 = v24;
  v26 = (v25 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v25 + v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v114 = v24 | 7;
  v28 = swift_allocObject();
  *(v28 + 16) = v6;
  v29 = v28 + v25;
  v30 = v14;
  v31 = v119;
  v112 = *(v15 + 32);
  v113 = v15 + 32;
  v112(v29, v22, v30);
  v32 = v28 + v26;
  v33 = v120;
  *v32 = v120;
  *(v32 + 8) = v31;
  v122 = v28;
  v34 = (v28 + v27);
  *v34 = v125;
  v34[1] = a5;
  v35 = objc_opt_self();
  v123 = a5;

  v36 = v33;

  if ([v35 simulate2FAFA])
  {
    v120 = v15;
    v119 = v31 & 1;
    v37 = type metadata accessor for RecoveryKeys(0);
    (*(*(v37 - 8) + 56))(v124, 1, 1, v37);
    v38 = v6[22];
    v107 = kAAAnalyticsEventCustodianSetupOwnerGenerateEncryptedCPRK;
    v39 = [v38 altDSID];
    v105 = v30;
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v60 = v20;
    v61 = v109;
    v108 = ~v109;
    v62 = [v38 telemetryFlowID];
    if (v62)
    {
      v63 = v62;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;
    }

    else
    {
      v64 = 0;
      v66 = 0;
    }

    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v107 = sub_100245D38(v107, v41, v43, v64, v66);
    v67 = [objc_allocWithZone(AKCustodianContext) init];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v67 setCustodianUUID:isa];

    v104 = v36;
    v69 = [v36 aa_altDSID];
    v106 = v67;
    [v67 setAltDSID:v69];

    v70 = [v38 custodianSetupToken];
    [v67 setCustodianSetupToken:v70];

    v103 = sub_1000080F8(v6 + 2, v6[5]);
    v71 = swift_allocObject();
    swift_weakInit();
    v72 = v116;
    v73 = v105;
    v110(v116, v60, v105);
    sub_100012D04(v124, v121, &unk_1003DE920, &unk_10033F9A8);
    v74 = (v61 + 32) & v108;
    v75 = (v115 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = v117[80];
    v117 = v60;
    v77 = (v75 + v76 + 8) & ~v76;
    v78 = v77 + v118;
    v79 = swift_allocObject();
    v80 = v107;
    *(v79 + 16) = v107;
    *(v79 + 24) = v71;
    v112(v79 + v74, v72, v73);
    v81 = v104;
    *(v79 + v75) = v104;
    sub_1001203C4(v121, v79 + v77);
    *(v79 + v78) = v119;
    v82 = v79 + (v78 & 0xFFFFFFFFFFFFFFF8);
    v83 = v123;
    *(v82 + 8) = v125;
    *(v82 + 16) = v83;
    v84 = v80;

    v85 = v81;
    v86 = v106;
    sub_100119640(v106, sub_100120434, v79);

    sub_100008D3C(v124, &unk_1003DE920, &unk_10033F9A8);
    (v120)[1](v117, v73);
  }

  (*(v15 + 8))(v20, v30);
  if (v31)
  {
    v44 = v6[22];
    v45 = kAAAnalyticsEventCustodianSetupOwnerGenerateCustodianRecoveryKey;
    v46 = [v44 altDSID];
    if (v46)
    {
      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    v87 = [v44 telemetryFlowID];
    if (v87)
    {
      v88 = v87;
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;
    }

    else
    {
      v89 = 0;
      v91 = 0;
    }

    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v92 = sub_100245D38(v45, v48, v50, v89, v91);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_100008D04(v93, qword_1003FAA88);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Manatee available. Creating Custodian Recovery Keys in OctagonTrust.", v96, 2u);
    }

    v97 = sub_1000080F8(v6 + 12, v6[15]);
    v98 = swift_allocObject();
    swift_weakInit();
    v99 = *v97;
    v100 = v92;
    v101 = v122;

    v102 = v123;

    sub_10001ADDC(v108, v99, v92, v98, sub_1001202D0, v101, v125, v102);
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100008D04(v51, qword_1003FAA88);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Manatee unavailable. Not creating Custodian Recovery Keys in OctagonTrust.", v54, 2u);
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Not proceeding with IdMS Setup without recovery keys.", v57, 2u);
  }

  type metadata accessor for AACustodianError(0);
  v126 = -7023;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100120888(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  v58 = v107;
  *v107 = v127;
  swift_storeEnumTagMultiPayload();
  v125(v58);

  return sub_100008D3C(v58, &unk_1003DE910, &unk_100343190);
}

void sub_10011E184(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v55 = a6;
  v56 = a7;
  v54 = a5;
  v59 = a4;
  v52 = a1;
  v9 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  v50 = *(v9 - 8);
  v53 = *(v50 + 64);
  __chkstk_darwin(v9 - 8);
  v58 = &v46 - v10;
  v51 = type metadata accessor for UUID();
  v49 = *(v51 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v51);
  v57 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[22];
  v13 = kAAAnalyticsEventCustodianSetupOwnerGenerateEncryptedCPRK;
  v14 = [v12 altDSID];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [v12 telemetryFlowID];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v48 = sub_100245D38(v13, v16, v18, v21, v23);
  v24 = [objc_allocWithZone(AKCustodianContext) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v24 setCustodianUUID:isa];

  v26 = [v59 aa_altDSID];
  v47 = v24;
  [v24 setAltDSID:v26];

  v27 = [v12 custodianSetupToken];
  [v24 setCustodianSetupToken:v27];

  v46 = sub_1000080F8(a2 + 2, a2[5]);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v49;
  v30 = a3;
  v31 = v51;
  (*(v49 + 16))(v57, v30, v51);
  sub_100012D04(v52, v58, &unk_1003DE920, &unk_10033F9A8);
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v50 + 80) + v33 + 8) & ~*(v50 + 80);
  v35 = v34 + v53;
  v36 = (v34 + v53) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v48;
  *(v37 + 16) = v48;
  *(v37 + 24) = v28;
  (*(v29 + 32))(v37 + v32, v57, v31);
  v39 = v58;
  v40 = v59;
  *(v37 + v33) = v59;
  sub_1001203C4(v39, v37 + v34);
  *(v37 + v35) = v54 & 1;
  v41 = v37 + v36;
  v42 = v56;
  *(v41 + 8) = v55;
  *(v41 + 16) = v42;
  v43 = v38;

  v44 = v40;

  v45 = v47;
  sub_100119640(v47, sub_100120C70, v37);
}

uint64_t sub_10011E5C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v33[1] = a7;
  v34 = a6;
  v37 = a5;
  v38 = a4;
  v39 = a3;
  v33[0] = sub_100005814(&unk_1003DE910, &unk_100343190);
  __chkstk_darwin(v33[0]);
  v10 = (v33 - v9);
  v11 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  __chkstk_darwin(v11 - 8);
  v13 = v33 - v12;
  v14 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v33 - v16;
  v18 = type metadata accessor for RecoveryKeys(0);
  v35 = *(v18 - 8);
  v36 = v18;
  __chkstk_darwin(v18);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  __chkstk_darwin(v21);
  v23 = (v33 - v22);
  if (a2)
  {
    sub_1000D2954(a1);
  }

  sub_100012D04(a1, v23, &qword_1003D8EF8, &qword_10033EB18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v15 + 16))(v17, Strong + OBJC_IVAR____TtC13appleaccountd26CustodianshipRecordBuilder__analyticsReporter, v14);
      Dependency.wrappedValue.getter();

      (*(v15 + 8))(v17, v14);
      swift_getObjectType();
      sub_100246FA8(a2);
      swift_unknownObjectRelease();
    }

    *v10 = v24;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v34(v10);

    return sub_100008D3C(v10, &unk_1003DE910, &unk_100343190);
  }

  else
  {
    v27 = a2;
    sub_100120820(v23, v20, type metadata accessor for RecoveryKeys);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Created Custodian Recovery Keys in OctagonTrust. Proceeding to IdMS Setup.", v31, 2u);
    }

    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    if (v32)
    {
      (*(v15 + 16))(v17, v32 + OBJC_IVAR____TtC13appleaccountd26CustodianshipRecordBuilder__analyticsReporter, v14);
      Dependency.wrappedValue.getter();

      (*(v15 + 8))(v17, v14);
      swift_getObjectType();
      sub_100246FA8(v27);
      swift_unknownObjectRelease();
    }

    sub_100120458(v20, v13, type metadata accessor for RecoveryKeys);
    (*(v35 + 56))(v13, 0, 1, v36);
    v38(v13);
    sub_100008D3C(v13, &unk_1003DE920, &unk_10033F9A8);
    return sub_1001204C0(v20, type metadata accessor for RecoveryKeys);
  }
}

uint64_t sub_10011EB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, void (*a8)(uint64_t), uint64_t a9)
{
  v34 = a7;
  v32 = a4;
  v33 = a6;
  v35 = a5;
  v39 = a9;
  v40 = a8;
  v12 = (a1 + 8);
  v11 = *a1;
  v38 = sub_100005814(&unk_1003DE910, &unk_100343190);
  __chkstk_darwin(v38);
  v37 = (&v31 - v13);
  v14 = type metadata accessor for CustodianshipRecordBuilder.Components(0);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v31 - v19;
  v36 = a2;
  if (a2)
  {
    sub_1000D2968(a1);
    v21 = *a1;
    if (*(a1 + 32))
    {
LABEL_3:
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        (*(v18 + 16))(v20, Strong + OBJC_IVAR____TtC13appleaccountd26CustodianshipRecordBuilder__analyticsReporter, v17);
        Dependency.wrappedValue.getter();

        (*(v18 + 8))(v20, v17);
        swift_getObjectType();
        sub_100246FA8(v36);
        swift_unknownObjectRelease();
      }

      v23 = v37;
      *v37 = v21;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v40(v23);
      return sub_100008D3C(v23, &unk_1003DE910, &unk_100343190);
    }
  }

  else
  {
    v21 = v11;
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v31 = v21;
  v42 = *v12;
  v43 = *(v12 + 2);
  swift_beginAccess();
  v25 = swift_weakLoadStrong();
  if (v25)
  {
    (*(v18 + 16))(v20, v25 + OBJC_IVAR____TtC13appleaccountd26CustodianshipRecordBuilder__analyticsReporter, v17);
    Dependency.wrappedValue.getter();

    (*(v18 + 8))(v20, v17);
    swift_getObjectType();
    sub_100246FA8(v36);
    swift_unknownObjectRelease();
  }

  v26 = type metadata accessor for UUID();
  (*(*(v26 - 8) + 16))(v16, v32, v26);
  sub_100012D04(v33, &v16[v14[7]], &unk_1003DE920, &unk_10033F9A8);
  v27 = v35;
  *&v16[v14[5]] = v35;
  v28 = &v16[v14[6]];
  *v28 = v31;
  *(v28 + 8) = v42;
  *(v28 + 3) = v43;
  v16[v14[8]] = v34 & 1;
  v29 = v37;
  sub_100120458(v16, v37, type metadata accessor for CustodianshipRecordBuilder.Components);
  swift_storeEnumTagMultiPayload();
  sub_100012D04(a1, v41, &qword_1003DE930, &unk_1003431A0);
  v30 = v27;
  v40(v29);
  sub_100008D3C(v29, &unk_1003DE910, &unk_100343190);
  return sub_1001204C0(v16, type metadata accessor for CustodianshipRecordBuilder.Components);
}

uint64_t sub_10011EFA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void *), uint64_t a5, void *a6)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v7 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  __chkstk_darwin(v7);
  v9 = (&v31 - v8);
  v10 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianshipRecordBuilder.Components(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&unk_1003DE910, &unk_100343190);
  __chkstk_darwin(v16);
  v18 = (&v31 - v17);
  sub_100012D04(a1, &v31 - v17, &unk_1003DE910, &unk_100343190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error building custodian record: %@", v23, 0xCu);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);
    }

    *v9 = v19;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_100041854(v9, v31, v32, v33, v34);

    return sub_100008D3C(v9, &unk_1003D91C0, &unk_10033FA50);
  }

  else
  {
    sub_100120820(v18, v15, type metadata accessor for CustodianshipRecordBuilder.Components);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Custodian components fetched, building record...", v30, 2u);
    }

    sub_10011C294(v15, v12);
    sub_100120458(v12, v9, type metadata accessor for CustodianshipRecords);
    swift_storeEnumTagMultiPayload();
    sub_100041854(v9, v31, v32, v33, v34);
    sub_100008D3C(v9, &unk_1003D91C0, &unk_10033FA50);
    sub_1001204C0(v12, type metadata accessor for CustodianshipRecords);
    return sub_1001204C0(v15, type metadata accessor for CustodianshipRecordBuilder.Components);
  }
}

void sub_10011F428(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void *), uint64_t a5, void *a6)
{
  v74 = sub_100005814(&unk_1003DE910, &unk_100343190);
  __chkstk_darwin(v74);
  v13 = (&v65 - v12);
  v68 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v65 - v14;
  v15 = type metadata accessor for UUID();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v65 - v19;
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v75 = a4;
  v20[4] = a5;
  v20[5] = a6;
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = sub_10011FFA0;
  v77 = v21;
  v21[4] = v20;
  v22 = *(*sub_1000080F8(a1 + 7, a1[10]) + 16);
  swift_retain_n();
  v78 = a5;
  swift_retain_n();
  v76 = a6;

  v23 = [v22 aa_primaryAppleAccount];
  if (!v23)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100008D04(v59, qword_1003FAA88);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Not logged in to AppleAccount, unable to complete setup", v62, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v80[0] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100120888(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v13 = aBlock[0];
    swift_storeEnumTagMultiPayload();

    v63 = v78;

    v49 = v76;
    v64 = v76;
    sub_10011EFA4(v13, a2, a3, v75, v63, v64);

    sub_100008D3C(v13, &unk_1003DE910, &unk_100343190);

    goto LABEL_20;
  }

  v24 = v23;
  v72 = a3;
  v73 = a2;
  v25 = sub_1000080F8(a1 + 7, a1[10]);
  v26 = *v25;
  v27 = [*(*v25 + 16) aa_primaryAppleAccount];
  if (!v27 || (v28 = v27, v29 = *(v26 + 16), v30 = [v27 aa_altDSID], v31 = objc_msgSend(v29, "aa_authKitAccountForAltDSID:", v30), v28, v30, !v31) || (v32 = objc_msgSend(*(v26 + 24), "canHaveCustodianForAccount:", v31), v31, !v32))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100008D04(v50, qword_1003FAA88);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = os_log_type_enabled(v51, v52);
    v55 = v72;
    v54 = v73;
    if (v53)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Account is ineligible to have a custodian, unable to complete setup", v56, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v80[0] = -7012;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100120888(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v13 = aBlock[0];
    swift_storeEnumTagMultiPayload();

    v57 = v78;

    v49 = v76;
    v58 = v76;
    sub_10011EFA4(v13, v54, v55, v75, v57, v58);

    sub_100008D3C(v13, &unk_1003DE910, &unk_100343190);

LABEL_20:

    goto LABEL_21;
  }

  v33 = v69;
  UUID.init()();
  v34 = sub_1000080F8(a1 + 17, a1[20]);
  v36 = v70;
  v35 = v71;
  (*(v70 + 16))(v18, v33, v71);
  v37 = (*(v36 + 80) + 40) & ~*(v36 + 80);
  v38 = (v16 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v77;
  *(v39 + 2) = sub_10011FFEC;
  *(v39 + 3) = v40;
  *(v39 + 4) = a1;
  (*(v36 + 32))(&v39[v37], v18, v35);
  *&v39[v38] = v24;
  v41 = v67;
  v42 = *v34 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage;
  v43 = v66;
  v44 = v68;
  (*(v67 + 16))(v66, v42, v68);

  v45 = v24;
  Dependency.wrappedValue.getter();
  (*(v41 + 8))(v43, v44);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (qword_1003D7EC0 != -1)
  {
    swift_once();
  }

  v46 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1001200D8;
  *(v47 + 24) = v39;
  aBlock[4] = sub_100016014;
  aBlock[5] = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003AA538;
  v48 = _Block_copy(aBlock);

  [v46 accountInfoWithCompletionHandler:v48];
  _Block_release(v48);

  sub_10000839C(v80);
  (*(v70 + 8))(v69, v71);

  v49 = v76;
LABEL_21:
}

void sub_10011FDD0(uint64_t a1, uint64_t a2, void (*a3)(char *, void *), uint64_t a4, void *a5)
{
  v10 = qword_1003D7F38;

  v11 = a5;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA88);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Begin building custodianship records.", v15, 2u);
  }

  v17 = v11;

  sub_10011F428(v16, a1, a2, a3, a4, v17);
}

uint64_t sub_10011FF58()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10011FFAC()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10011FFF8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1001200D8(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10011D444(a1, a2 & 1, v7, v8, v9, v2 + v6, v10);
}

uint64_t sub_10012018C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001201C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001201DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v6 + 16);
}

void sub_1001202D0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = (v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_10011E184(a1, v6, v1 + v4, v8, v9, v11, v12);
}

uint64_t sub_100120388()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001203C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100120458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001204C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100120520()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_100005814(&unk_1003DE920, &unk_10033F9A8) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v5 + 64);

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);

  v9 = v0 + v6;
  v10 = type metadata accessor for RecoveryKeys(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v6, 1, v10))
  {
    sub_100012324(*v9, *(v9 + 8));
    sub_100012324(*(v9 + 16), *(v9 + 24));
    v8(v9 + *(v10 + 24), v1);
  }

  return _swift_deallocObject(v0, ((v6 + v7) & 0xFFFFFFFFFFFFFFF8) + 24);
}

uint64_t sub_1001206FC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100005814(&unk_1003DE920, &unk_10033F9A8) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_10011EB2C(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), v1 + v7, *(v1 + v7 + *(v6 + 64)), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_100120820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100120888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001208E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100120A28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100120B58(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100016034(319, &qword_1003DE9A8, ACAccount_ptr);
    if (v2 <= 0x3F)
    {
      sub_100120C14(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100120C14(uint64_t a1)
{
  if (!qword_1003DE9B0)
  {
    type metadata accessor for RecoveryKeys(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003DE9B0);
    }
  }
}

BOOL sub_100120C74(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_100120D40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 72) = a7;
  *(v9 + 80) = v8;
  *(v9 + 285) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 284) = a4;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 32) = a1;
  *(v9 + 88) = type metadata accessor for ShareMessageContext(0);
  *(v9 + 96) = swift_task_alloc();
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v9 + 104) = v10;
  *(v9 + 112) = *(v10 - 8);
  *(v9 + 120) = swift_task_alloc();
  *(v9 + 128) = type metadata accessor for CloudShareInfo(0);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = type metadata accessor for CustodianRecoveryInfoRecord(0);
  *(v9 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100120EB0, 0, 0);
}

uint64_t sub_100120EB0()
{
  v44 = v0;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for Logger();
  *(v0 + 160) = sub_100008D04(v3, qword_1003FAA88);
  sub_10013AEFC(v2, v1, type metadata accessor for CustodianRecoveryInfoRecord);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v10 = 136315394;
    type metadata accessor for UUID();
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10013AF64(v7, type metadata accessor for CustodianRecoveryInfoRecord);
    v14 = sub_10021145C(v11, v13, &v42);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10021145C(v9, v8, &v42);
    _os_log_impl(&_mh_execute_header, v4, v5, "Sharing custodianship %s records with: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10013AF64(v7, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v15 = *(v0 + 144);
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 104);
  v38 = *(v0 + 285);
  v19 = *(v0 + 80);
  v37 = *(v0 + 72);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v39 = *(v0 + 40);
  v40 = *(v0 + 48);
  v22 = *(v0 + 32);
  (*(v17 + 16))(v16, v19 + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__analyticsReporter, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  v41 = *(v0 + 16);
  v42 = 0;
  *(v0 + 168) = v41;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v42 = 0xD000000000000013;
  v43 = 0x800000010032EF20;
  *(v0 + 280) = *(v15 + 20);
  *(v0 + 176) = type metadata accessor for UUID();
  *(v0 + 184) = sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v25 = v42;
  v24 = v43;
  *(v0 + 192) = v43;
  v26 = swift_allocObject();
  *(v0 + 200) = v26;
  *(v26 + 16) = v19;
  *(v26 + 24) = v21;
  *(v26 + 32) = v20;
  *(v26 + 40) = v37;
  *(v26 + 48) = v38 & 1;
  v27 = swift_task_alloc();
  *(v0 + 208) = v27;
  v27[2] = v19;
  v27[3] = v22;
  v27[4] = v39;
  v27[5] = v40;
  v28 = type metadata accessor for ExponentialRetryScheduler();

  v29 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  *(v0 + 216) = v29;
  v30 = swift_allocObject();
  *(v0 + 224) = v30;
  *(v30 + 16) = 0;
  *(v0 + 24) = v29;
  v31 = swift_task_alloc();
  *(v0 + 232) = v31;
  v31[2] = v30;
  v31[3] = sub_100133A10;
  v31[4] = v26;
  v31[5] = v25;
  v31[6] = v24;
  v31[7] = &unk_100343270;
  v31[8] = v27;
  v31[9] = v41;
  v31[10] = 1;
  v32 = swift_allocObject();
  *(v0 + 240) = v32;
  *(v32 + 16) = sub_100122764;
  *(v32 + 24) = 0;
  v33 = swift_task_alloc();
  *(v0 + 248) = v33;
  *v33 = v0;
  v33[1] = sub_100121420;
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v34, &unk_100343280, v31, sub_10005237C, v32, v28, v35, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_100121420()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1001217DC;
  }

  else
  {

    v2 = sub_100121550;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100121550()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 280);
  v3 = *(v0 + 176);
  v15 = *(v0 + 136);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v16 = *(v0 + 284);
  v17 = *(v0 + 285);
  v6 = *(v0 + 32);

  swift_unknownObjectRelease();

  (*(*(v3 - 8) + 16))(v4, v6 + v2, v3);
  sub_10013AEFC(v15, v4 + *(v5 + 20), type metadata accessor for CloudShareInfo);
  *(v4 + *(v5 + 24)) = v16;
  v7 = swift_task_alloc();
  *(v0 + 264) = v7;
  *v7 = v0;
  v7[1] = sub_1001216C8;
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);

  return sub_100122864(v8, v12, v13, v10, v11, v9, v17 & 1);
}

uint64_t sub_1001216C8()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_100121B88;
  }

  else
  {
    v2 = sub_100121ABC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001217DC()
{
  v18 = v0;
  v1 = *(v0 + 216);

  swift_unknownObjectRelease();

  _StringGuts.grow(_:)(46);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v17[0] = 0x7272652068746977;
  v17[1] = 0xEB0000000020726FLL;
  v3 = _convertErrorToNSError(_:)();
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x7272652068746977;
  v9._object = 0xEB0000000020726FLL;
  String.append(_:)(v9);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    v14 = sub_10021145C(0xD00000000000002CLL, 0x800000010032EF40, v17);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000839C(v13);
  }

  else
  {
  }

  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100121ABC()
{
  v1 = v0[17];
  sub_10013AF64(v0[12], type metadata accessor for ShareMessageContext);
  sub_10013AF64(v1, type metadata accessor for CloudShareInfo);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100121B88()
{
  v18 = v0;
  v1 = v0[17];
  sub_10013AF64(v0[12], type metadata accessor for ShareMessageContext);
  sub_10013AF64(v1, type metadata accessor for CloudShareInfo);
  _StringGuts.grow(_:)(46);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v17[0] = 0x7272652068746977;
  v17[1] = 0xEB0000000020726FLL;
  v3 = _convertErrorToNSError(_:)();
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x7272652068746977;
  v9._object = 0xEB0000000020726FLL;
  String.append(_:)(v9);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136315138;
    v14 = sub_10021145C(0xD00000000000002CLL, 0x800000010032EF40, v17);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000839C(v13);
  }

  else
  {
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100121E58()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  v1 = OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__notificationManager;
  v4 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__analyticsReporter;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AcceptedStatusHandler(uint64_t a1)
{
  result = qword_1003DEA30;
  if (!qword_1003DEA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100122004(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100122160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1000082A8;

  return sub_100132C10(a1, a2, a4, a5, a6, a7 & 1);
}

id sub_100122250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-1] - v12;
  v14 = kAAAnalyticsEventCustodianSetupProcessAcceptCreateRecoveryInfoShare;
  (*(v11 + 16))(&v26[-1] - v12, a1 + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__accountStore, v10);
  v15 = v14;
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  v16 = [*(*sub_1000080F8(v26 v26[3]) + 16)];
  if (v16 && (v17 = v16, v18 = [v16 aa_altDSID], v17, v18))
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);

  v22 = sub_100245D38(v15, v19, v21, a2, a3);
  sub_10000839C(v26);
  if (v22)
  {
    v23 = v22;
    sub_100245E08(a4, a5 & 1);
  }

  return v22;
}

uint64_t sub_100122468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_100122490, 0, 0);
}

uint64_t sub_100122490()
{
  v1 = *(v0 + 56);
  v7 = *(v0 + 40);
  *(v0 + 16) = *sub_1000080F8((*(v0 + 32) + 96), *(*(v0 + 32) + 120));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v7;
  *(v2 + 40) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = type metadata accessor for CloudShareInfo(0);
  *v3 = v0;
  v3[1] = sub_1001225C4;
  v5 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000014, 0x800000010032DA40, sub_100094870, v2, v4);
}

uint64_t sub_1001225C4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100122700, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100122700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100122764(void *a1)
{
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v1 = sub_100133C24(&off_1003A38B8);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.code.getter();
    v2 = sub_100120C74(v5, v1);

    v3 = !v2;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_100122864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 144) = a6;
  *(v8 + 152) = v7;
  *(v8 + 264) = a7;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  *(v8 + 112) = a2;
  *(v8 + 120) = a3;
  *(v8 + 104) = a1;
  *(v8 + 160) = type metadata accessor for ShareMessageContext(0);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1001229E4, 0, 0);
}

uint64_t sub_1001229E4()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  (*(v2 + 16))(v1, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v12 = *(v0 + 184);
  v13 = *(v0 + 152);
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  sub_10000839C((v0 + 16));
  v16 = kAAAnalyticsEventCustodianSetupProcessAcceptSendRecoveryInfoMessage;
  (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__analyticsReporter, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  *(v0 + 232) = *(v0 + 80);
  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);

  v17 = v16;
  v18 = sub_100245D38(v17, v7, v9, v15, v14);
  *(v0 + 240) = v18;
  if (v18)
  {
    v19 = *(v0 + 264);
    v20 = *(v0 + 144);
    v21 = v18;
    sub_100245E08(v20, v19 & 1);
  }

  sub_100257274(v17);
  v22 = *(v0 + 264);
  sub_1000080F8((*(v0 + 152) + 16), *(*(v0 + 152) + 40));
  v23 = swift_task_alloc();
  *(v0 + 248) = v23;
  *v23 = v0;
  v23[1] = sub_100122ED4;
  v24 = *(v0 + 144);
  v25 = *(v0 + 112);
  v26 = *(v0 + 120);
  v27 = *(v0 + 104);

  return sub_1000E9600(v27, v25, v26, v24, v22 & 1);
}

uint64_t sub_100122ED4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_10012337C;
  }

  else
  {
    v2 = sub_100122FE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100122FE8()
{
  v28 = v0;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[13];
  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA88);
  sub_10013AEFC(v3, v2, type metadata accessor for ShareMessageContext);
  sub_10013AEFC(v3, v1, type metadata accessor for ShareMessageContext);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[22];
  if (!v7)
  {

    sub_10013AF64(v8, type metadata accessor for ShareMessageContext);
    sub_10013AF64(v9, type metadata accessor for ShareMessageContext);
    v23 = v0[30];
    if (!v23)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = v0[20];
  v11 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *v11 = 136315394;
  type metadata accessor for URL();
  sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;
  sub_10013AF64(v9, type metadata accessor for ShareMessageContext);
  v15 = sub_10021145C(v12, v14, &v27);

  *(v11 + 4) = v15;
  *(v11 + 12) = 2080;
  v16 = v8 + *(v10 + 20);
  v17 = *(v16 + *(type metadata accessor for CloudShareInfo(0) + 24));
  v0[12] = v17;
  v18 = v17;
  sub_100005814(&qword_1003DEBC0, &unk_100343298);
  v19 = String.init<A>(describing:)();
  v21 = v20;
  sub_10013AF64(v8, type metadata accessor for ShareMessageContext);
  v22 = sub_10021145C(v19, v21, &v27);

  *(v11 + 14) = v22;
  _os_log_impl(&_mh_execute_header, v5, v6, "CKShare sent with url: %s and token: %s", v11, 0x16u);
  swift_arrayDestroy();

  v23 = v0[30];
  if (v23)
  {
LABEL_7:
    [v23 updateTaskResultWithError:0];
    swift_getObjectType();
    v24 = v23;
    sub_100246FA8(v23);
  }

LABEL_8:
  swift_unknownObjectRelease();

  v25 = v0[1];

  return v25();
}

uint64_t sub_10012337C()
{
  v1 = v0[30];
  swift_getErrorValue();
  sub_1002DEA80(v0[8], v0[9]);
  if (v1)
  {
    v2 = v0[30];
    v3 = v2;
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    [v3 updateTaskResultWithError:v4];

    swift_getObjectType();
    v5 = v3;
    sub_100246FA8(v2);
  }

  else
  {
    swift_errorRetain();
    v5 = 0;
  }

  swift_willThrow();

  swift_unknownObjectRelease();
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA88);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to send CKShare message: %@", v9, 0xCu);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100123608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v5[23] = type metadata accessor for CloudShareInfo(0);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_10012384C, 0, 0);
}

uint64_t sub_10012384C()
{
  v18 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 392) = sub_100008D04(v1, qword_1003FAA58);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10021145C(v5, v4, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching the cloudkit participant information, handle: %s", v6, 0xCu);
    sub_10000839C(v7);
  }

  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v8 = *(*(v0 + 152) + *(*(v0 + 272) + 40));
  *(v0 + 496) = v8;
  if (v8 == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9C0;
  }

  v10 = *v9;
  v11 = v9[1];

  v12 = sub_1002E2BC4(v10, v11);
  *(v0 + 400) = v12;

  v13 = swift_task_alloc();
  *(v0 + 408) = v13;
  *v13 = v0;
  v13[1] = sub_100123B04;
  v15 = *(v0 + 160);
  v14 = *(v0 + 168);

  return sub_100253614(v15, v14, v12);
}

uint64_t sub_100123B04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v4 = sub_100123F60;
  }

  else
  {
    v4 = sub_100123C18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100123C18()
{
  v29 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 376);
  v3 = *(v0 + 152);
  [*(v0 + 416) setPermission:*(v0 + 176)];
  sub_10013AEFC(v3, v1, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v3, v2, type metadata accessor for CustodianRecoveryInfoRecord);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);
  if (v6)
  {
    v27 = v5;
    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 248);
    v26 = *(v0 + 168);
    v25 = *(v0 + 160);
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136315650;
    (*(v10 + 16))(v9, v8, v11);
    sub_10013AF64(v8, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10021145C(v13, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    sub_10013AF64(v7, type metadata accessor for CustodianRecoveryInfoRecord);
    v20 = sub_10021145C(v17, v19, &v28);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_10021145C(v25, v26, &v28);
    _os_log_impl(&_mh_execute_header, v4, v27, "Creating new share, recordID: %s, zone: %s, participant: %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 384), type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10013AF64(v7, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v21 = swift_task_alloc();
  *(v0 + 432) = v21;
  *v21 = v0;
  v21[1] = sub_100124854;
  v22 = *(v0 + 416);
  v23 = *(v0 + 152);

  return sub_100134490(v23, v22);
}

uint64_t sub_100123F60()
{
  v62 = v0;
  v1 = *(v0 + 424);
  *(v0 + 456) = v1;
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 152);

  sub_10013AEFC(v4, v2, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v4, v3, type metadata accessor for CustodianRecoveryInfoRecord);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 328);
  v8 = *(v0 + 336);
  if (v7)
  {
    v58 = v6;
    log = v5;
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 248);
    v54 = *(v0 + 160);
    v55 = *(v0 + 168);
    v13 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v13 = 138413058;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v14;
    *v53 = v14;
    *(v13 + 12) = 2080;
    (*(v11 + 16))(v10, v8, v12);
    sub_10013AF64(v8, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_10021145C(v15, v17, v61);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2080;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    sub_10013AF64(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    v22 = sub_10021145C(v19, v21, v61);

    *(v13 + 24) = v22;
    *(v13 + 32) = 2080;
    *(v13 + 34) = sub_10021145C(v54, v55, v61);
    _os_log_impl(&_mh_execute_header, log, v58, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v13, 0x2Au);
    sub_100008D3C(v53, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 336), type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10013AF64(v9, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v23 = *(v0 + 72);
    *(v0 + 464) = v23;
    *(v0 + 96) = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
    _BridgedStoredNSError.init(_:userInfo:)();
    v24 = *(v0 + 88);
    *(v0 + 104) = v24;
    _BridgedStoredNSError.code.getter();

    v25 = sub_1002DF114(*(v0 + 112), v23);
    if (v25)
    {
      v27 = *(v0 + 312);
      v26 = *(v0 + 320);
      v28 = *(v0 + 152);

      sub_10013AEFC(v28, v26, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AEFC(v28, v27, type metadata accessor for CustodianRecoveryInfoRecord);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 312);
      v33 = *(v0 + 320);
      if (v31)
      {
        loga = v30;
        v35 = *(v0 + 256);
        v34 = *(v0 + 264);
        v36 = *(v0 + 248);
        v57 = *(v0 + 168);
        v56 = *(v0 + 160);
        v37 = swift_slowAlloc();
        v61[0] = swift_slowAlloc();
        *v37 = 136315650;
        (*(v35 + 16))(v34, v33, v36);
        sub_10013AF64(v33, type metadata accessor for CustodianRecoveryInfoRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        (*(v35 + 8))(v34, v36);
        v41 = sub_10021145C(v38, v40, v61);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v42 = UUID.uuidString.getter();
        v44 = v43;
        sub_10013AF64(v32, type metadata accessor for CustodianRecoveryInfoRecord);
        v45 = sub_10021145C(v42, v44, v61);

        *(v37 + 14) = v45;
        *(v37 + 22) = 2080;
        *(v37 + 24) = sub_10021145C(v56, v57, v61);
        _os_log_impl(&_mh_execute_header, v29, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v37, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 320), type metadata accessor for CustodianRecoveryInfoRecord);

        sub_10013AF64(v32, type metadata accessor for CustodianRecoveryInfoRecord);
      }

      v51 = swift_task_alloc();
      *(v0 + 472) = v51;
      *v51 = v0;
      v51[1] = sub_100126044;
      v52 = *(v0 + 152);

      return sub_1001326E8(v52);
    }
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Error is not of client-server conflict, so not fetching the existing share from server", v48, 2u);
  }

  swift_getErrorValue();
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_100124854(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v4 = sub_100125744;
  }

  else
  {
    v4 = sub_100124968;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100124968()
{
  v121 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 360);
  v3 = *(v0 + 152);
  sub_10013AEFC(v3, *(v0 + 368), type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v3, v2, type metadata accessor for CustodianRecoveryInfoRecord);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 360);
  v9 = *(v0 + 368);
  v118 = v0;
  if (v7)
  {
    v115 = v6;
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 248);
    v109 = *(v0 + 168);
    v107 = *(v0 + 160);
    v13 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v13 = 136315650;
    (*(v11 + 16))(v10, v9, v12);
    sub_10013AF64(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_10021145C(v14, v16, v120);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    sub_10013AF64(v8, type metadata accessor for CustodianRecoveryInfoRecord);
    v21 = sub_10021145C(v18, v20, v120);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_10021145C(v107, v109, v120);
    _os_log_impl(&_mh_execute_header, v5, v115, "CKShare created successfully for recordID: %s, zone: %s, participant: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(v9, type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10013AF64(v8, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v22 = [*(v0 + 440) participants];
  sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = CKShareParticipant.participantID.getter();
      v31 = v30;
      if (v29 == CKShareParticipant.participantID.getter() && v31 == v32)
      {
        v0 = v118;
        v35 = *(v118 + 416);
        v36 = *(v118 + 400);

        goto LABEL_25;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        v0 = v118;
        v37 = *(v118 + 416);

        goto LABEL_25;
      }

      ++v25;
      v0 = v118;
      if (v28 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
  v38 = *(v0 + 416);

  v27 = 0;
LABEL_25:

  v40 = *(v0 + 440);
  v39 = *(v0 + 448);
  v41 = v27;
  v42 = sub_100253D68(v27);

  if (v39)
  {

LABEL_27:

    v43 = *(v0 + 8);
    goto LABEL_42;
  }

  v44 = [v40 URL];
  if (!v44)
  {
    v52 = *(v0 + 344);
    v53 = *(v0 + 152);
    sub_10013AEFC(v53, *(v0 + 352), type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AEFC(v53, v52, type metadata accessor for CustodianRecoveryInfoRecord);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    v56 = os_log_type_enabled(v54, v55);
    v58 = *(v0 + 344);
    v57 = *(v0 + 352);
    if (v56)
    {
      v111 = v55;
      v60 = *(v0 + 256);
      v59 = *(v0 + 264);
      v117 = v40;
      v61 = *(v0 + 248);
      v104 = *(v0 + 168);
      v101 = *(v0 + 160);
      v113 = v42;
      v62 = swift_slowAlloc();
      v120[0] = swift_slowAlloc();
      *v62 = 136315650;
      (*(v60 + 16))(v59, v57, v61);
      sub_10013AF64(v57, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v66 = v61;
      v40 = v117;
      (*(v60 + 8))(v59, v66);
      v67 = sub_10021145C(v63, v65, v120);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      v68 = UUID.uuidString.getter();
      v70 = v69;
      v0 = v118;
      sub_10013AF64(v58, type metadata accessor for CustodianRecoveryInfoRecord);
      v71 = sub_10021145C(v68, v70, v120);

      *(v62 + 14) = v71;
      *(v62 + 22) = 2080;
      *(v62 + 24) = sub_10021145C(v101, v104, v120);
      _os_log_impl(&_mh_execute_header, v54, v111, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v62, 0x20u);
      swift_arrayDestroy();

      v42 = v113;
    }

    else
    {
      sub_10013AF64(*(v0 + 352), type metadata accessor for CustodianRecoveryInfoRecord);

      sub_10013AF64(v58, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 136) = -7067;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    goto LABEL_27;
  }

  v110 = v41;
  v112 = v42;
  v45 = *(v0 + 496);
  v47 = *(v0 + 232);
  v46 = *(v0 + 240);
  v49 = *(v0 + 216);
  v48 = *(v0 + 224);
  v50 = v44;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v48 + 16))(v47, v46, v49);
  v116 = v40;
  if (v45 == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v51 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v51 = &qword_1003FA9C0;
  }

  v72 = v118;
  v73 = *(v118 + 232);
  v74 = *(v118 + 216);
  v102 = *(v118 + 208);
  v105 = *(v118 + 200);
  v108 = *(v118 + 192);
  v75 = *(v118 + 184);
  v76 = *(v118 + 144);
  v78 = *v51;
  v77 = v51[1];
  v79 = *(*(v118 + 224) + 32);

  v79(v76, v73, v74);
  v80 = (v76 + *(v75 + 20));
  *v80 = v78;
  v80[1] = v77;
  v100 = v75;
  *(v76 + *(v75 + 24)) = v112;
  sub_10013AEFC(v76, v102, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v76, v105, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v76, v108, type metadata accessor for CloudShareInfo);

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  v83 = os_log_type_enabled(v81, v82);
  v119 = *(v118 + 240);
  v85 = v72[27];
  v84 = v72[28];
  v87 = v72[25];
  v86 = v72[26];
  v88 = v72[24];
  if (v83)
  {
    v103 = v72[20];
    v106 = v72[21];
    v89 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v89 = 136315906;
    sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v99 = v82;
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v114 = v85;
    v92 = v91;
    sub_10013AF64(v86, type metadata accessor for CloudShareInfo);
    v93 = sub_10021145C(v90, v92, v120);

    *(v89 + 4) = v93;
    *(v89 + 12) = 2080;
    v94 = (v87 + *(v100 + 20));
    v96 = *v94;
    v95 = v94[1];

    sub_10013AF64(v87, type metadata accessor for CloudShareInfo);
    v97 = sub_10021145C(v96, v95, v120);

    *(v89 + 14) = v97;
    *(v89 + 22) = 2080;
    *(v89 + 24) = sub_10021145C(v103, v106, v120);
    *(v89 + 32) = 1024;
    LODWORD(v97) = *(v88 + *(v100 + 24)) != 0;
    sub_10013AF64(v88, type metadata accessor for CloudShareInfo);
    *(v89 + 34) = v97;
    _os_log_impl(&_mh_execute_header, v81, v99, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v89, 0x26u);
    swift_arrayDestroy();

    (*(v84 + 8))(v119, v114);
  }

  else
  {
    sub_10013AF64(v72[24], type metadata accessor for CloudShareInfo);

    sub_10013AF64(v87, type metadata accessor for CloudShareInfo);
    sub_10013AF64(v86, type metadata accessor for CloudShareInfo);
    (*(v84 + 8))(v119, v85);
  }

  v43 = v72[1];
LABEL_42:

  return v43();
}

uint64_t sub_100125744()
{
  v63 = v0;

  v1 = *(v0 + 448);
  v2 = *(v0 + 416);
  *(v0 + 456) = v1;
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 152);

  sub_10013AEFC(v5, v3, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v5, v4, type metadata accessor for CustodianRecoveryInfoRecord);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  if (v8)
  {
    v59 = v7;
    log = v6;
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 248);
    v55 = *(v0 + 160);
    v56 = *(v0 + 168);
    v14 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v14 = 138413058;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v15;
    *v54 = v15;
    *(v14 + 12) = 2080;
    (*(v12 + 16))(v11, v9, v13);
    sub_10013AF64(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_10021145C(v16, v18, v62);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2080;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    sub_10013AF64(v10, type metadata accessor for CustodianRecoveryInfoRecord);
    v23 = sub_10021145C(v20, v22, v62);

    *(v14 + 24) = v23;
    *(v14 + 32) = 2080;
    *(v14 + 34) = sub_10021145C(v55, v56, v62);
    _os_log_impl(&_mh_execute_header, log, v59, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v14, 0x2Au);
    sub_100008D3C(v54, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 336), type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10013AF64(v10, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 72);
    *(v0 + 464) = v24;
    *(v0 + 96) = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = *(v0 + 88);
    *(v0 + 104) = v25;
    _BridgedStoredNSError.code.getter();

    v26 = sub_1002DF114(*(v0 + 112), v24);
    if (v26)
    {
      v28 = *(v0 + 312);
      v27 = *(v0 + 320);
      v29 = *(v0 + 152);

      sub_10013AEFC(v29, v27, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AEFC(v29, v28, type metadata accessor for CustodianRecoveryInfoRecord);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 312);
      v34 = *(v0 + 320);
      if (v32)
      {
        loga = v31;
        v36 = *(v0 + 256);
        v35 = *(v0 + 264);
        v37 = *(v0 + 248);
        v58 = *(v0 + 168);
        v57 = *(v0 + 160);
        v38 = swift_slowAlloc();
        v62[0] = swift_slowAlloc();
        *v38 = 136315650;
        (*(v36 + 16))(v35, v34, v37);
        sub_10013AF64(v34, type metadata accessor for CustodianRecoveryInfoRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        (*(v36 + 8))(v35, v37);
        v42 = sub_10021145C(v39, v41, v62);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        v43 = UUID.uuidString.getter();
        v45 = v44;
        sub_10013AF64(v33, type metadata accessor for CustodianRecoveryInfoRecord);
        v46 = sub_10021145C(v43, v45, v62);

        *(v38 + 14) = v46;
        *(v38 + 22) = 2080;
        *(v38 + 24) = sub_10021145C(v57, v58, v62);
        _os_log_impl(&_mh_execute_header, v30, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v38, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 320), type metadata accessor for CustodianRecoveryInfoRecord);

        sub_10013AF64(v33, type metadata accessor for CustodianRecoveryInfoRecord);
      }

      v52 = swift_task_alloc();
      *(v0 + 472) = v52;
      *v52 = v0;
      v52[1] = sub_100126044;
      v53 = *(v0 + 152);

      return sub_1001326E8(v53);
    }
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Error is not of client-server conflict, so not fetching the existing share from server", v49, 2u);
  }

  swift_getErrorValue();
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_100126044(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 488) = v1;

  if (v1)
  {
    v4 = sub_1001271D0;
  }

  else
  {
    v4 = sub_100126158;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100126158()
{
  v132 = v0;
  v1 = *(v0 + 480);
  if (v1)
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 152);
    sub_10013AEFC(v3, *(v0 + 304), type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AEFC(v3, v2, type metadata accessor for CustodianRecoveryInfoRecord);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    if (v6)
    {
      v125 = v5;
      v10 = *(v0 + 256);
      v9 = *(v0 + 264);
      v11 = *(v0 + 248);
      v118 = *(v0 + 168);
      v115 = *(v0 + 160);
      v12 = swift_slowAlloc();
      v131[0] = swift_slowAlloc();
      *v12 = 136315650;
      (*(v10 + 16))(v9, v8, v11);
      sub_10013AF64(v8, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v10 + 8))(v9, v11);
      v16 = sub_10021145C(v13, v15, v131);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = UUID.uuidString.getter();
      v19 = v18;
      sub_10013AF64(v7, type metadata accessor for CustodianRecoveryInfoRecord);
      v20 = sub_10021145C(v17, v19, v131);

      *(v12 + 14) = v20;
      *(v12 + 22) = 2080;
      *(v12 + 24) = sub_10021145C(v115, v118, v131);
      _os_log_impl(&_mh_execute_header, v4, v125, "Found existing CKShare, recordID: %s, zone: %s, participant: %s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10013AF64(*(v0 + 304), type metadata accessor for CustodianRecoveryInfoRecord);

      sub_10013AF64(v7, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v39 = v1;
    v40 = [v39 participants];
    sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v41 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v43 = 0;
      while (1)
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (([v44 isCurrentUser] & 1) == 0)
        {

          goto LABEL_25;
        }

        ++v43;
        if (v46 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    v45 = 0;
LABEL_25:

    v49 = *(v0 + 488);
    v50 = v45;
    v51 = sub_100253D68(v45);

    if (v49)
    {
    }

    else
    {

      v54 = [v39 URL];
      if (v54)
      {
        v123 = v51;
        v55 = *(v0 + 496);
        v57 = *(v0 + 232);
        v56 = *(v0 + 240);
        v59 = *(v0 + 216);
        v58 = *(v0 + 224);
        v60 = v54;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v58 + 16))(v57, v56, v59);
        if (v55 == 1)
        {
          v127 = v39;
          v129 = v50;
          if (qword_1003D7EC0 != -1)
          {
            swift_once();
          }

          v61 = &qword_1003FA9D0;
        }

        else
        {
          v127 = v39;
          v129 = v50;
          if (qword_1003D7EB8 != -1)
          {
            swift_once();
          }

          v61 = &qword_1003FA9C0;
        }

        v82 = *(v0 + 232);
        v83 = *(v0 + 216);
        v110 = *(v0 + 208);
        v113 = *(v0 + 200);
        v84 = *(v0 + 184);
        v117 = *(v0 + 192);
        v85 = *(v0 + 144);
        v87 = *v61;
        v86 = v61[1];
        v88 = *(*(v0 + 224) + 32);

        v88(v85, v82, v83);
        v89 = (v85 + *(v84 + 20));
        *v89 = v87;
        v89[1] = v86;
        v108 = v84;
        *(v85 + *(v84 + 24)) = v123;
        sub_10013AEFC(v85, v110, type metadata accessor for CloudShareInfo);
        sub_10013AEFC(v85, v113, type metadata accessor for CloudShareInfo);
        sub_10013AEFC(v85, v117, type metadata accessor for CloudShareInfo);

        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();

        v92 = os_log_type_enabled(v90, v91);
        v124 = *(v0 + 240);
        v93 = *(v0 + 216);
        v94 = *(v0 + 224);
        v96 = *(v0 + 200);
        v95 = *(v0 + 208);
        v97 = *(v0 + 192);
        if (v92)
        {
          v111 = *(v0 + 160);
          v114 = *(v0 + 168);
          v98 = swift_slowAlloc();
          v131[0] = swift_slowAlloc();
          *v98 = 136315906;
          sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v107 = v91;
          v99 = dispatch thunk of CustomStringConvertible.description.getter();
          v121 = v93;
          v101 = v100;
          sub_10013AF64(v95, type metadata accessor for CloudShareInfo);
          v102 = sub_10021145C(v99, v101, v131);

          *(v98 + 4) = v102;
          *(v98 + 12) = 2080;
          v103 = (v96 + *(v108 + 20));
          v105 = *v103;
          v104 = v103[1];

          sub_10013AF64(v96, type metadata accessor for CloudShareInfo);
          v106 = sub_10021145C(v105, v104, v131);

          *(v98 + 14) = v106;
          *(v98 + 22) = 2080;
          *(v98 + 24) = sub_10021145C(v111, v114, v131);
          *(v98 + 32) = 1024;
          LODWORD(v106) = *(v97 + *(v108 + 24)) != 0;
          sub_10013AF64(v97, type metadata accessor for CloudShareInfo);
          *(v98 + 34) = v106;
          _os_log_impl(&_mh_execute_header, v90, v107, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v98, 0x26u);
          swift_arrayDestroy();

          (*(v94 + 8))(v124, v121);
        }

        else
        {
          sub_10013AF64(*(v0 + 192), type metadata accessor for CloudShareInfo);

          sub_10013AF64(v96, type metadata accessor for CloudShareInfo);
          sub_10013AF64(v95, type metadata accessor for CloudShareInfo);
          (*(v94 + 8))(v124, v93);
        }
      }

      else
      {
        v128 = v39;
        v62 = *(v0 + 344);
        v63 = *(v0 + 152);
        sub_10013AEFC(v63, *(v0 + 352), type metadata accessor for CustodianRecoveryInfoRecord);
        sub_10013AEFC(v63, v62, type metadata accessor for CustodianRecoveryInfoRecord);

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();

        v66 = os_log_type_enabled(v64, v65);
        v68 = *(v0 + 344);
        v67 = *(v0 + 352);
        if (v66)
        {
          v120 = v65;
          v70 = *(v0 + 256);
          v69 = *(v0 + 264);
          v130 = v50;
          v71 = *(v0 + 248);
          v112 = *(v0 + 168);
          v109 = *(v0 + 160);
          v72 = swift_slowAlloc();
          v131[0] = swift_slowAlloc();
          *v72 = 136315650;
          (*(v70 + 16))(v69, v67, v71);
          sub_10013AF64(v67, type metadata accessor for CustodianRecoveryInfoRecord);
          sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v74;
          v76 = v71;
          v50 = v130;
          (*(v70 + 8))(v69, v76);
          v77 = sub_10021145C(v73, v75, v131);

          *(v72 + 4) = v77;
          *(v72 + 12) = 2080;
          v78 = UUID.uuidString.getter();
          v80 = v79;
          sub_10013AF64(v68, type metadata accessor for CustodianRecoveryInfoRecord);
          v81 = sub_10021145C(v78, v80, v131);

          *(v72 + 14) = v81;
          *(v72 + 22) = 2080;
          *(v72 + 24) = sub_10021145C(v109, v112, v131);
          _os_log_impl(&_mh_execute_header, v64, v120, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v72, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          sub_10013AF64(*(v0 + 352), type metadata accessor for CustodianRecoveryInfoRecord);

          sub_10013AF64(v68, type metadata accessor for CustodianRecoveryInfoRecord);
        }

        type metadata accessor for AACustodianError(0);
        *(v0 + 136) = -7067;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
      }
    }
  }

  else
  {
    v21 = *(v0 + 280);
    v22 = *(v0 + 152);
    sub_10013AEFC(v22, *(v0 + 288), type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AEFC(v22, v21, type metadata accessor for CustodianRecoveryInfoRecord);

    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 288);
      v26 = *(v0 + 264);
      v116 = *(v0 + 280);
      v28 = *(v0 + 248);
      v27 = *(v0 + 256);
      v122 = *(v0 + 160);
      v126 = *(v0 + 168);
      v29 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v131[0] = swift_slowAlloc();
      *v29 = 138413058;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v30;
      *v119 = v30;
      *(v29 + 12) = 2080;
      (*(v27 + 16))(v26, v25, v28);
      sub_10013AF64(v25, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v27 + 8))(v26, v28);
      v34 = sub_10021145C(v31, v33, v131);

      *(v29 + 14) = v34;
      *(v29 + 22) = 2080;
      v35 = UUID.uuidString.getter();
      v37 = v36;
      sub_10013AF64(v116, type metadata accessor for CustodianRecoveryInfoRecord);
      v38 = sub_10021145C(v35, v37, v131);

      *(v29 + 24) = v38;
      *(v29 + 32) = 2080;
      *(v29 + 34) = sub_10021145C(v122, v126, v131);
      _os_log_impl(&_mh_execute_header, v23, v24, "Couldn't find existing share, so throwing the same error %@, recordID: %s, zone: %s, participant: %s", v29, 0x2Au);
      sub_100008D3C(v119, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      v47 = *(v0 + 280);
      sub_10013AF64(*(v0 + 288), type metadata accessor for CustodianRecoveryInfoRecord);

      sub_10013AF64(v47, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v48 = *(v0 + 464);
    swift_getErrorValue();
    sub_100255F6C(-7065, *(v0 + 48), *(v0 + 56));
    swift_willThrow();
  }

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1001271D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100127340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v5[19] = type metadata accessor for CloudShareInfo(0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for BeneficiaryInfoRecord(0);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return _swift_task_switch(sub_100127584, 0, 0);
}

uint64_t sub_100127584()
{
  v18 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 360) = sub_100008D04(v1, qword_1003FAA58);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10021145C(v5, v4, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching the cloudkit participant information, handle: %s", v6, 0xCu);
    sub_10000839C(v7);
  }

  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v8 = *(*(v0 + 120) + *(*(v0 + 240) + 40));
  *(v0 + 464) = v8;
  if (v8 == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9F0;
  }

  v10 = *v9;
  v11 = v9[1];

  v12 = sub_1002E2BC4(v10, v11);
  *(v0 + 368) = v12;

  v13 = swift_task_alloc();
  *(v0 + 376) = v13;
  *v13 = v0;
  v13[1] = sub_10012783C;
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);

  return sub_100253614(v15, v14, v12);
}

uint64_t sub_10012783C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v4 = sub_100127C8C;
  }

  else
  {
    v4 = sub_100127950;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100127950()
{
  v30 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 120);
  [*(v0 + 384) setPermission:*(v0 + 144)];
  sub_10013AEFC(v3, v1, type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v3, v2, type metadata accessor for BeneficiaryInfoRecord);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  if (v6)
  {
    v28 = v5;
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315650;
    (*(v11 + 16))(v9, v8 + *(v10 + 32), v12);
    sub_10013AF64(v8, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v12);
    v17 = sub_10021145C(v14, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    sub_10013AF64(v7, type metadata accessor for BeneficiaryInfoRecord);
    v21 = sub_10021145C(v18, v20, &v29);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_10021145C(v26, v27, &v29);
    _os_log_impl(&_mh_execute_header, v4, v28, "Creating new share, recordID: %s, zone: %s, participant: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 352), type metadata accessor for BeneficiaryInfoRecord);

    sub_10013AF64(v7, type metadata accessor for BeneficiaryInfoRecord);
  }

  v22 = swift_task_alloc();
  *(v0 + 400) = v22;
  *v22 = v0;
  v22[1] = sub_1001284CC;
  v23 = *(v0 + 384);
  v24 = *(v0 + 120);

  return sub_100135E88(v24, v23);
}

uint64_t sub_100127C8C()
{
  v61 = v0;
  v1 = *(v0 + 392);
  *(v0 + 424) = v1;
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 120);

  sub_10013AEFC(v4, v2, type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v4, v3, type metadata accessor for BeneficiaryInfoRecord);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 296);
  v8 = *(v0 + 304);
  if (v7)
  {
    v57 = v6;
    v10 = *(v0 + 232);
    v11 = *(v0 + 240);
    log = v5;
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v53 = *(v0 + 128);
    v54 = *(v0 + 136);
    v14 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v14 = 138413058;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v15;
    *v52 = v15;
    *(v14 + 12) = 2080;
    (*(v12 + 16))(v10, v8 + *(v11 + 32), v13);
    sub_10013AF64(v8, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v10, v13);
    v19 = sub_10021145C(v16, v18, v60);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2080;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    sub_10013AF64(v9, type metadata accessor for BeneficiaryInfoRecord);
    v23 = sub_10021145C(v20, v22, v60);

    *(v14 + 24) = v23;
    *(v14 + 32) = 2080;
    *(v14 + 34) = sub_10021145C(v53, v54, v60);
    _os_log_impl(&_mh_execute_header, log, v57, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v14, 0x2Au);
    sub_100008D3C(v52, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 304), type metadata accessor for BeneficiaryInfoRecord);

    sub_10013AF64(v9, type metadata accessor for BeneficiaryInfoRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 72);
    *(v0 + 432) = v24;
    if (sub_1002DECC8(v24))
    {
      v25 = *(v0 + 280);
      v26 = *(v0 + 120);
      sub_10013AEFC(v26, *(v0 + 288), type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AEFC(v26, v25, type metadata accessor for BeneficiaryInfoRecord);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 280);
      v31 = *(v0 + 288);
      if (v29)
      {
        loga = v28;
        v32 = *(v0 + 232);
        v33 = *(v0 + 240);
        v35 = *(v0 + 216);
        v34 = *(v0 + 224);
        v55 = *(v0 + 128);
        v56 = *(v0 + 136);
        v36 = swift_slowAlloc();
        v60[0] = swift_slowAlloc();
        *v36 = 136315650;
        (*(v34 + 16))(v32, v31 + *(v33 + 32), v35);
        sub_10013AF64(v31, type metadata accessor for BeneficiaryInfoRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        (*(v34 + 8))(v32, v35);
        v40 = sub_10021145C(v37, v39, v60);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        v41 = UUID.uuidString.getter();
        v43 = v42;
        sub_10013AF64(v30, type metadata accessor for BeneficiaryInfoRecord);
        v44 = sub_10021145C(v41, v43, v60);

        *(v36 + 14) = v44;
        *(v36 + 22) = 2080;
        *(v36 + 24) = sub_10021145C(v55, v56, v60);
        _os_log_impl(&_mh_execute_header, v27, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v36, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 288), type metadata accessor for BeneficiaryInfoRecord);

        sub_10013AF64(v30, type metadata accessor for BeneficiaryInfoRecord);
      }

      v50 = swift_task_alloc();
      *(v0 + 440) = v50;
      *v50 = v0;
      v50[1] = sub_100129BF8;
      v51 = *(v0 + 120);

      return sub_1001376F4(v51);
    }
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Error is not of client-server conflict, so not fetching the existing share from server", v47, 2u);
  }

  swift_getErrorValue();
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1001284CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v4 = sub_1001293AC;
  }

  else
  {
    v4 = sub_1001285E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001285E0()
{
  v124 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  v3 = *(v0 + 120);
  sub_10013AEFC(v3, *(v0 + 336), type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v3, v2, type metadata accessor for BeneficiaryInfoRecord);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 328);
  v9 = *(v0 + 336);
  v121 = v0;
  if (v7)
  {
    v117 = v6;
    v10 = *(v0 + 232);
    v11 = *(v0 + 240);
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v110 = *(v0 + 128);
    loga = *(v0 + 136);
    v14 = swift_slowAlloc();
    v123[0] = swift_slowAlloc();
    *v14 = 136315650;
    (*(v12 + 16))(v10, v9 + *(v11 + 32), v13);
    sub_10013AF64(v9, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_10021145C(v15, v17, v123);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    sub_10013AF64(v8, type metadata accessor for BeneficiaryInfoRecord);
    v22 = sub_10021145C(v19, v21, v123);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_10021145C(v110, loga, v123);
    _os_log_impl(&_mh_execute_header, v5, v117, "CKShare created successfully for recordID: %s, zone: %s, participant: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(v9, type metadata accessor for BeneficiaryInfoRecord);

    sub_10013AF64(v8, type metadata accessor for BeneficiaryInfoRecord);
  }

  v23 = [*(v0 + 408) participants];
  sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v30 = CKShareParticipant.participantID.getter();
      v32 = v31;
      if (v30 == CKShareParticipant.participantID.getter() && v32 == v33)
      {
        v0 = v121;
        v36 = *(v121 + 384);
        v37 = *(v121 + 368);

        goto LABEL_25;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        v0 = v121;
        v38 = *(v121 + 384);

        goto LABEL_25;
      }

      ++v26;
      v0 = v121;
      if (v29 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
  v39 = *(v0 + 384);

  v28 = 0;
LABEL_25:

  v41 = *(v0 + 408);
  v40 = *(v0 + 416);
  v42 = v28;
  v43 = sub_100253D68(v28);

  if (v40)
  {

LABEL_27:

    v44 = *(v0 + 8);
    goto LABEL_42;
  }

  v45 = [v41 URL];
  if (!v45)
  {
    v53 = *(v0 + 312);
    v54 = *(v0 + 120);
    sub_10013AEFC(v54, *(v0 + 320), type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AEFC(v54, v53, type metadata accessor for BeneficiaryInfoRecord);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    v57 = os_log_type_enabled(v55, v56);
    v59 = *(v0 + 312);
    v58 = *(v0 + 320);
    if (v57)
    {
      logb = v55;
      v111 = v56;
      v61 = *(v0 + 232);
      v60 = *(v0 + 240);
      v62 = v41;
      v64 = *(v0 + 216);
      v63 = *(v0 + 224);
      v103 = *(v0 + 128);
      v105 = *(v0 + 136);
      v119 = v43;
      v65 = swift_slowAlloc();
      v123[0] = swift_slowAlloc();
      *v65 = 136315650;
      (*(v63 + 16))(v61, v58 + *(v60 + 32), v64);
      sub_10013AF64(v58, type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = v64;
      v41 = v62;
      (*(v63 + 8))(v61, v69);
      v70 = sub_10021145C(v66, v68, v123);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v71 = UUID.uuidString.getter();
      v73 = v72;
      v0 = v121;
      sub_10013AF64(v59, type metadata accessor for BeneficiaryInfoRecord);
      v74 = sub_10021145C(v71, v73, v123);

      *(v65 + 14) = v74;
      *(v65 + 22) = 2080;
      *(v65 + 24) = sub_10021145C(v103, v105, v123);
      _os_log_impl(&_mh_execute_header, logb, v111, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v65, 0x20u);
      swift_arrayDestroy();

      v43 = v119;
    }

    else
    {
      sub_10013AF64(*(v0 + 320), type metadata accessor for BeneficiaryInfoRecord);

      sub_10013AF64(v59, type metadata accessor for BeneficiaryInfoRecord);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 104) = -7067;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    goto LABEL_27;
  }

  v118 = v43;
  log = v42;
  v46 = *(v0 + 464);
  v48 = *(v0 + 200);
  v47 = *(v0 + 208);
  v50 = *(v0 + 184);
  v49 = *(v0 + 192);
  v51 = v45;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v49 + 16))(v48, v47, v50);
  v116 = v41;
  if (v46 == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v52 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v52 = &qword_1003FA9F0;
  }

  v75 = v121;
  v76 = *(v121 + 200);
  v77 = *(v121 + 184);
  v106 = *(v121 + 176);
  v108 = *(v121 + 168);
  v112 = *(v121 + 160);
  v78 = *(v121 + 152);
  v79 = *(v121 + 112);
  v81 = *v52;
  v80 = v52[1];
  v82 = *(*(v121 + 192) + 32);

  v82(v79, v76, v77);
  v83 = (v79 + *(v78 + 20));
  *v83 = v81;
  v83[1] = v80;
  v104 = v78;
  *(v79 + *(v78 + 24)) = v118;
  sub_10013AEFC(v79, v106, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v79, v108, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v79, v112, type metadata accessor for CloudShareInfo);

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();

  v86 = os_log_type_enabled(v84, v85);
  v122 = *(v121 + 208);
  v88 = v75[23];
  v87 = v75[24];
  v90 = v75[21];
  v89 = v75[22];
  v91 = v75[20];
  if (v86)
  {
    v107 = v75[16];
    v109 = v75[17];
    v92 = swift_slowAlloc();
    v123[0] = swift_slowAlloc();
    *v92 = 136315906;
    sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v102 = v85;
    v93 = dispatch thunk of CustomStringConvertible.description.getter();
    v120 = v88;
    v95 = v94;
    sub_10013AF64(v89, type metadata accessor for CloudShareInfo);
    v96 = sub_10021145C(v93, v95, v123);

    *(v92 + 4) = v96;
    *(v92 + 12) = 2080;
    v97 = (v90 + *(v104 + 20));
    v99 = *v97;
    v98 = v97[1];

    sub_10013AF64(v90, type metadata accessor for CloudShareInfo);
    v100 = sub_10021145C(v99, v98, v123);

    *(v92 + 14) = v100;
    *(v92 + 22) = 2080;
    *(v92 + 24) = sub_10021145C(v107, v109, v123);
    *(v92 + 32) = 1024;
    LODWORD(v100) = *(v91 + *(v104 + 24)) != 0;
    sub_10013AF64(v91, type metadata accessor for CloudShareInfo);
    *(v92 + 34) = v100;
    _os_log_impl(&_mh_execute_header, v84, v102, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v92, 0x26u);
    swift_arrayDestroy();

    (*(v87 + 8))(v122, v120);
  }

  else
  {
    sub_10013AF64(v75[20], type metadata accessor for CloudShareInfo);

    sub_10013AF64(v90, type metadata accessor for CloudShareInfo);
    sub_10013AF64(v89, type metadata accessor for CloudShareInfo);
    (*(v87 + 8))(v122, v88);
  }

  v44 = v75[1];
LABEL_42:

  return v44();
}

uint64_t sub_1001293AC()
{
  v62 = v0;

  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  *(v0 + 424) = v1;
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 120);

  sub_10013AEFC(v5, v3, type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v5, v4, type metadata accessor for BeneficiaryInfoRecord);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  if (v8)
  {
    v58 = v7;
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    log = v6;
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v54 = *(v0 + 128);
    v55 = *(v0 + 136);
    v15 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v15 = 138413058;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v16;
    *v53 = v16;
    *(v15 + 12) = 2080;
    (*(v13 + 16))(v11, v9 + *(v12 + 32), v14);
    sub_10013AF64(v9, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_10021145C(v17, v19, v61);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    sub_10013AF64(v10, type metadata accessor for BeneficiaryInfoRecord);
    v24 = sub_10021145C(v21, v23, v61);

    *(v15 + 24) = v24;
    *(v15 + 32) = 2080;
    *(v15 + 34) = sub_10021145C(v54, v55, v61);
    _os_log_impl(&_mh_execute_header, log, v58, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v15, 0x2Au);
    sub_100008D3C(v53, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 304), type metadata accessor for BeneficiaryInfoRecord);

    sub_10013AF64(v10, type metadata accessor for BeneficiaryInfoRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v25 = *(v0 + 72);
    *(v0 + 432) = v25;
    if (sub_1002DECC8(v25))
    {
      v26 = *(v0 + 280);
      v27 = *(v0 + 120);
      sub_10013AEFC(v27, *(v0 + 288), type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AEFC(v27, v26, type metadata accessor for BeneficiaryInfoRecord);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 280);
      v32 = *(v0 + 288);
      if (v30)
      {
        loga = v29;
        v33 = *(v0 + 232);
        v34 = *(v0 + 240);
        v36 = *(v0 + 216);
        v35 = *(v0 + 224);
        v56 = *(v0 + 128);
        v57 = *(v0 + 136);
        v37 = swift_slowAlloc();
        v61[0] = swift_slowAlloc();
        *v37 = 136315650;
        (*(v35 + 16))(v33, v32 + *(v34 + 32), v36);
        sub_10013AF64(v32, type metadata accessor for BeneficiaryInfoRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        (*(v35 + 8))(v33, v36);
        v41 = sub_10021145C(v38, v40, v61);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v42 = UUID.uuidString.getter();
        v44 = v43;
        sub_10013AF64(v31, type metadata accessor for BeneficiaryInfoRecord);
        v45 = sub_10021145C(v42, v44, v61);

        *(v37 + 14) = v45;
        *(v37 + 22) = 2080;
        *(v37 + 24) = sub_10021145C(v56, v57, v61);
        _os_log_impl(&_mh_execute_header, v28, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v37, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 288), type metadata accessor for BeneficiaryInfoRecord);

        sub_10013AF64(v31, type metadata accessor for BeneficiaryInfoRecord);
      }

      v51 = swift_task_alloc();
      *(v0 + 440) = v51;
      *v51 = v0;
      v51[1] = sub_100129BF8;
      v52 = *(v0 + 120);

      return sub_1001376F4(v52);
    }
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Error is not of client-server conflict, so not fetching the existing share from server", v48, 2u);
  }

  swift_getErrorValue();
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_100129BF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_10012AD7C;
  }

  else
  {
    v4 = sub_100129D0C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100129D0C()
{
  v137 = v0;
  v1 = *(v0 + 448);
  if (v1)
  {
    v2 = *(v0 + 264);
    v3 = *(v0 + 120);
    sub_10013AEFC(v3, *(v0 + 272), type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AEFC(v3, v2, type metadata accessor for BeneficiaryInfoRecord);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 264);
    v8 = *(v0 + 272);
    if (v6)
    {
      v130 = v5;
      v9 = *(v0 + 232);
      v10 = *(v0 + 240);
      v12 = *(v0 + 216);
      v11 = *(v0 + 224);
      v119 = *(v0 + 128);
      v122 = *(v0 + 136);
      v13 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v13 = 136315650;
      (*(v11 + 16))(v9, v8 + *(v10 + 32), v12);
      sub_10013AF64(v8, type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v9, v12);
      v17 = sub_10021145C(v14, v16, v136);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = UUID.uuidString.getter();
      v20 = v19;
      sub_10013AF64(v7, type metadata accessor for BeneficiaryInfoRecord);
      v21 = sub_10021145C(v18, v20, v136);

      *(v13 + 14) = v21;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_10021145C(v119, v122, v136);
      _os_log_impl(&_mh_execute_header, v4, v130, "Found existing CKShare, recordID: %s, zone: %s, participant: %s", v13, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10013AF64(*(v0 + 272), type metadata accessor for BeneficiaryInfoRecord);

      sub_10013AF64(v7, type metadata accessor for BeneficiaryInfoRecord);
    }

    v41 = v1;
    v42 = [v41 participants];
    sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v43 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v45 = 0;
      while (1)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v46 = *(v43 + 8 * v45 + 32);
        }

        v47 = v46;
        v48 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (([v46 isCurrentUser] & 1) == 0)
        {

          goto LABEL_25;
        }

        ++v45;
        if (v48 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    v47 = 0;
LABEL_25:

    v51 = *(v0 + 456);
    v52 = v47;
    v53 = sub_100253D68(v47);

    if (v51)
    {
    }

    else
    {

      v56 = [v41 URL];
      if (v56)
      {
        log = v53;
        v57 = *(v0 + 464);
        v59 = *(v0 + 200);
        v58 = *(v0 + 208);
        v61 = *(v0 + 184);
        v60 = *(v0 + 192);
        v62 = v56;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v60 + 16))(v59, v58, v61);
        if (v57 == 1)
        {
          v132 = v41;
          v134 = v52;
          if (qword_1003D7ED8 != -1)
          {
            swift_once();
          }

          v63 = &qword_1003FAA00;
        }

        else
        {
          v132 = v41;
          v134 = v52;
          if (qword_1003D7ED0 != -1)
          {
            swift_once();
          }

          v63 = &qword_1003FA9F0;
        }

        v85 = *(v0 + 200);
        v86 = *(v0 + 184);
        v113 = *(v0 + 176);
        v117 = *(v0 + 168);
        v87 = *(v0 + 152);
        v121 = *(v0 + 160);
        v88 = *(v0 + 112);
        v90 = *v63;
        v89 = v63[1];
        v91 = *(*(v0 + 192) + 32);

        v91(v88, v85, v86);
        v92 = (v88 + *(v87 + 20));
        *v92 = v90;
        v92[1] = v89;
        v111 = v87;
        *(v88 + *(v87 + 24)) = log;
        sub_10013AEFC(v88, v113, type metadata accessor for CloudShareInfo);
        sub_10013AEFC(v88, v117, type metadata accessor for CloudShareInfo);
        sub_10013AEFC(v88, v121, type metadata accessor for CloudShareInfo);

        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();

        v95 = os_log_type_enabled(v93, v94);
        loga = *(v0 + 208);
        v96 = *(v0 + 184);
        v97 = *(v0 + 192);
        v99 = *(v0 + 168);
        v98 = *(v0 + 176);
        v100 = *(v0 + 160);
        if (v95)
        {
          v114 = *(v0 + 128);
          v118 = *(v0 + 136);
          v101 = swift_slowAlloc();
          v136[0] = swift_slowAlloc();
          *v101 = 136315906;
          sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v110 = v94;
          v102 = dispatch thunk of CustomStringConvertible.description.getter();
          v125 = v96;
          v104 = v103;
          sub_10013AF64(v98, type metadata accessor for CloudShareInfo);
          v105 = sub_10021145C(v102, v104, v136);

          *(v101 + 4) = v105;
          *(v101 + 12) = 2080;
          v106 = (v99 + *(v111 + 20));
          v108 = *v106;
          v107 = v106[1];

          sub_10013AF64(v99, type metadata accessor for CloudShareInfo);
          v109 = sub_10021145C(v108, v107, v136);

          *(v101 + 14) = v109;
          *(v101 + 22) = 2080;
          *(v101 + 24) = sub_10021145C(v114, v118, v136);
          *(v101 + 32) = 1024;
          LODWORD(v109) = *(v100 + *(v111 + 24)) != 0;
          sub_10013AF64(v100, type metadata accessor for CloudShareInfo);
          *(v101 + 34) = v109;
          _os_log_impl(&_mh_execute_header, v93, v110, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v101, 0x26u);
          swift_arrayDestroy();

          (*(v97 + 8))(loga, v125);
        }

        else
        {
          sub_10013AF64(*(v0 + 160), type metadata accessor for CloudShareInfo);

          sub_10013AF64(v99, type metadata accessor for CloudShareInfo);
          sub_10013AF64(v98, type metadata accessor for CloudShareInfo);
          (*(v97 + 8))(loga, v96);
        }
      }

      else
      {
        v133 = v41;
        v64 = *(v0 + 312);
        v65 = *(v0 + 120);
        sub_10013AEFC(v65, *(v0 + 320), type metadata accessor for BeneficiaryInfoRecord);
        sub_10013AEFC(v65, v64, type metadata accessor for BeneficiaryInfoRecord);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();

        v68 = os_log_type_enabled(v66, v67);
        v70 = *(v0 + 312);
        v69 = *(v0 + 320);
        if (v68)
        {
          logc = v66;
          v124 = v67;
          v72 = *(v0 + 232);
          v71 = *(v0 + 240);
          v135 = v52;
          v74 = *(v0 + 216);
          v73 = *(v0 + 224);
          v112 = *(v0 + 128);
          v116 = *(v0 + 136);
          v75 = swift_slowAlloc();
          v136[0] = swift_slowAlloc();
          *v75 = 136315650;
          (*(v73 + 16))(v72, v69 + *(v71 + 32), v74);
          sub_10013AF64(v69, type metadata accessor for BeneficiaryInfoRecord);
          sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          v78 = v77;
          v79 = v74;
          v52 = v135;
          (*(v73 + 8))(v72, v79);
          v80 = sub_10021145C(v76, v78, v136);

          *(v75 + 4) = v80;
          *(v75 + 12) = 2080;
          v81 = UUID.uuidString.getter();
          v83 = v82;
          sub_10013AF64(v70, type metadata accessor for BeneficiaryInfoRecord);
          v84 = sub_10021145C(v81, v83, v136);

          *(v75 + 14) = v84;
          *(v75 + 22) = 2080;
          *(v75 + 24) = sub_10021145C(v112, v116, v136);
          _os_log_impl(&_mh_execute_header, logc, v124, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v75, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          sub_10013AF64(*(v0 + 320), type metadata accessor for BeneficiaryInfoRecord);

          sub_10013AF64(v70, type metadata accessor for BeneficiaryInfoRecord);
        }

        type metadata accessor for AACustodianError(0);
        *(v0 + 104) = -7067;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
      }
    }
  }

  else
  {
    v22 = *(v0 + 248);
    v23 = *(v0 + 120);
    sub_10013AEFC(v23, *(v0 + 256), type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AEFC(v23, v22, type metadata accessor for BeneficiaryInfoRecord);

    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 256);
      v115 = *(v0 + 248);
      v131 = v25;
      v27 = *(v0 + 232);
      v28 = *(v0 + 240);
      v30 = *(v0 + 216);
      v29 = *(v0 + 224);
      v123 = *(v0 + 128);
      logb = *(v0 + 136);
      v31 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v31 = 138413058;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v32;
      *v120 = v32;
      *(v31 + 12) = 2080;
      (*(v29 + 16))(v27, v26 + *(v28 + 32), v30);
      sub_10013AF64(v26, type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v29 + 8))(v27, v30);
      v36 = sub_10021145C(v33, v35, v136);

      *(v31 + 14) = v36;
      *(v31 + 22) = 2080;
      v37 = UUID.uuidString.getter();
      v39 = v38;
      sub_10013AF64(v115, type metadata accessor for BeneficiaryInfoRecord);
      v40 = sub_10021145C(v37, v39, v136);

      *(v31 + 24) = v40;
      *(v31 + 32) = 2080;
      *(v31 + 34) = sub_10021145C(v123, logb, v136);
      _os_log_impl(&_mh_execute_header, v24, v131, "Couldn't find existing share, so throwing the same error %@, recordID: %s, zone: %s, participant: %s", v31, 0x2Au);
      sub_100008D3C(v120, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      v49 = *(v0 + 248);
      sub_10013AF64(*(v0 + 256), type metadata accessor for BeneficiaryInfoRecord);

      sub_10013AF64(v49, type metadata accessor for BeneficiaryInfoRecord);
    }

    v50 = *(v0 + 432);
    swift_getErrorValue();
    sub_100255F6C(-7065, *(v0 + 48), *(v0 + 56));
    swift_willThrow();
  }

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10012AD7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012AEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v5[19] = type metadata accessor for CloudShareInfo(0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for InheritanceHealthRecord(0);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return _swift_task_switch(sub_10012B130, 0, 0);
}

uint64_t sub_10012B130()
{
  v18 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 360) = sub_100008D04(v1, qword_1003FAA58);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10021145C(v5, v4, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching the cloudkit participant information, handle: %s", v6, 0xCu);
    sub_10000839C(v7);
  }

  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v8 = *(*(v0 + 120) + *(*(v0 + 240) + 36));
  *(v0 + 464) = v8;
  if (v8 == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9F0;
  }

  v10 = *v9;
  v11 = v9[1];

  v12 = sub_1002E2BC4(v10, v11);
  *(v0 + 368) = v12;

  v13 = swift_task_alloc();
  *(v0 + 376) = v13;
  *v13 = v0;
  v13[1] = sub_10012B3E8;
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);

  return sub_100253614(v15, v14, v12);
}

uint64_t sub_10012B3E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v4 = sub_10012B838;
  }

  else
  {
    v4 = sub_10012B4FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012B4FC()
{
  v30 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 120);
  [*(v0 + 384) setPermission:*(v0 + 144)];
  sub_10013AEFC(v3, v1, type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v3, v2, type metadata accessor for InheritanceHealthRecord);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  if (v6)
  {
    v28 = v5;
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315650;
    (*(v11 + 16))(v9, v8 + *(v10 + 28), v12);
    sub_10013AF64(v8, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v12);
    v17 = sub_10021145C(v14, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    sub_10013AF64(v7, type metadata accessor for InheritanceHealthRecord);
    v21 = sub_10021145C(v18, v20, &v29);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_10021145C(v26, v27, &v29);
    _os_log_impl(&_mh_execute_header, v4, v28, "Creating new share, recordID: %s, zone: %s, participant: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 352), type metadata accessor for InheritanceHealthRecord);

    sub_10013AF64(v7, type metadata accessor for InheritanceHealthRecord);
  }

  v22 = swift_task_alloc();
  *(v0 + 400) = v22;
  *v22 = v0;
  v22[1] = sub_10012C078;
  v23 = *(v0 + 384);
  v24 = *(v0 + 120);

  return sub_100138A0C(v24, v23);
}

uint64_t sub_10012B838()
{
  v61 = v0;
  v1 = *(v0 + 392);
  *(v0 + 424) = v1;
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 120);

  sub_10013AEFC(v4, v2, type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v4, v3, type metadata accessor for InheritanceHealthRecord);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 296);
  v8 = *(v0 + 304);
  if (v7)
  {
    v57 = v6;
    v10 = *(v0 + 232);
    v11 = *(v0 + 240);
    log = v5;
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v53 = *(v0 + 128);
    v54 = *(v0 + 136);
    v14 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v14 = 138413058;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v15;
    *v52 = v15;
    *(v14 + 12) = 2080;
    (*(v12 + 16))(v10, v8 + *(v11 + 28), v13);
    sub_10013AF64(v8, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v10, v13);
    v19 = sub_10021145C(v16, v18, v60);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2080;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    sub_10013AF64(v9, type metadata accessor for InheritanceHealthRecord);
    v23 = sub_10021145C(v20, v22, v60);

    *(v14 + 24) = v23;
    *(v14 + 32) = 2080;
    *(v14 + 34) = sub_10021145C(v53, v54, v60);
    _os_log_impl(&_mh_execute_header, log, v57, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v14, 0x2Au);
    sub_100008D3C(v52, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 304), type metadata accessor for InheritanceHealthRecord);

    sub_10013AF64(v9, type metadata accessor for InheritanceHealthRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 72);
    *(v0 + 432) = v24;
    if (sub_1002DECC8(v24))
    {
      v25 = *(v0 + 280);
      v26 = *(v0 + 120);
      sub_10013AEFC(v26, *(v0 + 288), type metadata accessor for InheritanceHealthRecord);
      sub_10013AEFC(v26, v25, type metadata accessor for InheritanceHealthRecord);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 280);
      v31 = *(v0 + 288);
      if (v29)
      {
        loga = v28;
        v32 = *(v0 + 232);
        v33 = *(v0 + 240);
        v35 = *(v0 + 216);
        v34 = *(v0 + 224);
        v55 = *(v0 + 128);
        v56 = *(v0 + 136);
        v36 = swift_slowAlloc();
        v60[0] = swift_slowAlloc();
        *v36 = 136315650;
        (*(v34 + 16))(v32, v31 + *(v33 + 28), v35);
        sub_10013AF64(v31, type metadata accessor for InheritanceHealthRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        (*(v34 + 8))(v32, v35);
        v40 = sub_10021145C(v37, v39, v60);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        v41 = UUID.uuidString.getter();
        v43 = v42;
        sub_10013AF64(v30, type metadata accessor for InheritanceHealthRecord);
        v44 = sub_10021145C(v41, v43, v60);

        *(v36 + 14) = v44;
        *(v36 + 22) = 2080;
        *(v36 + 24) = sub_10021145C(v55, v56, v60);
        _os_log_impl(&_mh_execute_header, v27, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v36, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 288), type metadata accessor for InheritanceHealthRecord);

        sub_10013AF64(v30, type metadata accessor for InheritanceHealthRecord);
      }

      v50 = swift_task_alloc();
      *(v0 + 440) = v50;
      *v50 = v0;
      v50[1] = sub_10012D7A4;
      v51 = *(v0 + 120);

      return sub_10013A278(v51);
    }
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Error is not of client-server conflict, so not fetching the existing share from server", v47, 2u);
  }

  swift_getErrorValue();
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_10012C078(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v4 = sub_10012CF58;
  }

  else
  {
    v4 = sub_10012C18C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012C18C()
{
  v124 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  v3 = *(v0 + 120);
  sub_10013AEFC(v3, *(v0 + 336), type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v3, v2, type metadata accessor for InheritanceHealthRecord);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 328);
  v9 = *(v0 + 336);
  v121 = v0;
  if (v7)
  {
    v117 = v6;
    v10 = *(v0 + 232);
    v11 = *(v0 + 240);
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v110 = *(v0 + 128);
    loga = *(v0 + 136);
    v14 = swift_slowAlloc();
    v123[0] = swift_slowAlloc();
    *v14 = 136315650;
    (*(v12 + 16))(v10, v9 + *(v11 + 28), v13);
    sub_10013AF64(v9, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_10021145C(v15, v17, v123);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    sub_10013AF64(v8, type metadata accessor for InheritanceHealthRecord);
    v22 = sub_10021145C(v19, v21, v123);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_10021145C(v110, loga, v123);
    _os_log_impl(&_mh_execute_header, v5, v117, "CKShare created successfully for recordID: %s, zone: %s, participant: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(v9, type metadata accessor for InheritanceHealthRecord);

    sub_10013AF64(v8, type metadata accessor for InheritanceHealthRecord);
  }

  v23 = [*(v0 + 408) participants];
  sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v30 = CKShareParticipant.participantID.getter();
      v32 = v31;
      if (v30 == CKShareParticipant.participantID.getter() && v32 == v33)
      {
        v0 = v121;
        v36 = *(v121 + 384);
        v37 = *(v121 + 368);

        goto LABEL_25;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        v0 = v121;
        v38 = *(v121 + 384);

        goto LABEL_25;
      }

      ++v26;
      v0 = v121;
      if (v29 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
  v39 = *(v0 + 384);

  v28 = 0;
LABEL_25:

  v41 = *(v0 + 408);
  v40 = *(v0 + 416);
  v42 = v28;
  v43 = sub_100253D68(v28);

  if (v40)
  {

LABEL_27:

    v44 = *(v0 + 8);
    goto LABEL_42;
  }

  v45 = [v41 URL];
  if (!v45)
  {
    v53 = *(v0 + 312);
    v54 = *(v0 + 120);
    sub_10013AEFC(v54, *(v0 + 320), type metadata accessor for InheritanceHealthRecord);
    sub_10013AEFC(v54, v53, type metadata accessor for InheritanceHealthRecord);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    v57 = os_log_type_enabled(v55, v56);
    v59 = *(v0 + 312);
    v58 = *(v0 + 320);
    if (v57)
    {
      logb = v55;
      v111 = v56;
      v61 = *(v0 + 232);
      v60 = *(v0 + 240);
      v62 = v41;
      v64 = *(v0 + 216);
      v63 = *(v0 + 224);
      v103 = *(v0 + 128);
      v105 = *(v0 + 136);
      v119 = v43;
      v65 = swift_slowAlloc();
      v123[0] = swift_slowAlloc();
      *v65 = 136315650;
      (*(v63 + 16))(v61, v58 + *(v60 + 28), v64);
      sub_10013AF64(v58, type metadata accessor for InheritanceHealthRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = v64;
      v41 = v62;
      (*(v63 + 8))(v61, v69);
      v70 = sub_10021145C(v66, v68, v123);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v71 = UUID.uuidString.getter();
      v73 = v72;
      v0 = v121;
      sub_10013AF64(v59, type metadata accessor for InheritanceHealthRecord);
      v74 = sub_10021145C(v71, v73, v123);

      *(v65 + 14) = v74;
      *(v65 + 22) = 2080;
      *(v65 + 24) = sub_10021145C(v103, v105, v123);
      _os_log_impl(&_mh_execute_header, logb, v111, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v65, 0x20u);
      swift_arrayDestroy();

      v43 = v119;
    }

    else
    {
      sub_10013AF64(*(v0 + 320), type metadata accessor for InheritanceHealthRecord);

      sub_10013AF64(v59, type metadata accessor for InheritanceHealthRecord);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 104) = -7067;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    goto LABEL_27;
  }

  v118 = v43;
  log = v42;
  v46 = *(v0 + 464);
  v48 = *(v0 + 200);
  v47 = *(v0 + 208);
  v50 = *(v0 + 184);
  v49 = *(v0 + 192);
  v51 = v45;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v49 + 16))(v48, v47, v50);
  v116 = v41;
  if (v46 == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v52 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v52 = &qword_1003FA9F0;
  }

  v75 = v121;
  v76 = *(v121 + 200);
  v77 = *(v121 + 184);
  v106 = *(v121 + 176);
  v108 = *(v121 + 168);
  v112 = *(v121 + 160);
  v78 = *(v121 + 152);
  v79 = *(v121 + 112);
  v81 = *v52;
  v80 = v52[1];
  v82 = *(*(v121 + 192) + 32);

  v82(v79, v76, v77);
  v83 = (v79 + *(v78 + 20));
  *v83 = v81;
  v83[1] = v80;
  v104 = v78;
  *(v79 + *(v78 + 24)) = v118;
  sub_10013AEFC(v79, v106, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v79, v108, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v79, v112, type metadata accessor for CloudShareInfo);

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();

  v86 = os_log_type_enabled(v84, v85);
  v122 = *(v121 + 208);
  v88 = v75[23];
  v87 = v75[24];
  v90 = v75[21];
  v89 = v75[22];
  v91 = v75[20];
  if (v86)
  {
    v107 = v75[16];
    v109 = v75[17];
    v92 = swift_slowAlloc();
    v123[0] = swift_slowAlloc();
    *v92 = 136315906;
    sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v102 = v85;
    v93 = dispatch thunk of CustomStringConvertible.description.getter();
    v120 = v88;
    v95 = v94;
    sub_10013AF64(v89, type metadata accessor for CloudShareInfo);
    v96 = sub_10021145C(v93, v95, v123);

    *(v92 + 4) = v96;
    *(v92 + 12) = 2080;
    v97 = (v90 + *(v104 + 20));
    v99 = *v97;
    v98 = v97[1];

    sub_10013AF64(v90, type metadata accessor for CloudShareInfo);
    v100 = sub_10021145C(v99, v98, v123);

    *(v92 + 14) = v100;
    *(v92 + 22) = 2080;
    *(v92 + 24) = sub_10021145C(v107, v109, v123);
    *(v92 + 32) = 1024;
    LODWORD(v100) = *(v91 + *(v104 + 24)) != 0;
    sub_10013AF64(v91, type metadata accessor for CloudShareInfo);
    *(v92 + 34) = v100;
    _os_log_impl(&_mh_execute_header, v84, v102, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v92, 0x26u);
    swift_arrayDestroy();

    (*(v87 + 8))(v122, v120);
  }

  else
  {
    sub_10013AF64(v75[20], type metadata accessor for CloudShareInfo);

    sub_10013AF64(v90, type metadata accessor for CloudShareInfo);
    sub_10013AF64(v89, type metadata accessor for CloudShareInfo);
    (*(v87 + 8))(v122, v88);
  }

  v44 = v75[1];
LABEL_42:

  return v44();
}