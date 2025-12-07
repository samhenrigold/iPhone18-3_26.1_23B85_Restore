unint64_t sub_10108A890()
{
  result = qword_1016C5658;
  if (!qword_1016C5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5658);
  }

  return result;
}

uint64_t sub_10108A94C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10108A9A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10108AA28()
{
  result = qword_1016C5668;
  if (!qword_1016C5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5668);
  }

  return result;
}

unint64_t sub_10108AA90()
{
  result = qword_1016C5670;
  if (!qword_1016C5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5670);
  }

  return result;
}

unint64_t sub_10108AAE8()
{
  result = qword_1016C5678;
  if (!qword_1016C5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5678);
  }

  return result;
}

unint64_t sub_10108AB40()
{
  result = qword_1016C5680;
  if (!qword_1016C5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5680);
  }

  return result;
}

uint64_t sub_10108AB94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
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

unint64_t sub_10108ACCC()
{
  result = qword_1016C5688;
  if (!qword_1016C5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5688);
  }

  return result;
}

uint64_t sub_10108AD20(uint64_t a1, int *a2, uint64_t *a3, void (**a4)(uint64_t, char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v130 = a5;
  v134 = a3;
  v135 = a4;
  v136 = a1;
  v9 = type metadata accessor for MessagingMessageContext(0);
  __chkstk_darwin(v9);
  v133 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BeaconObservation(0);
  v122 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v127 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for KeyRequestEnvelope(0);
  __chkstk_darwin(v13);
  v125 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v15 - 8);
  v126 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyAccessoryFamilyShareResponseEnvelope = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0);
  v18 = __chkstk_darwin(MyAccessoryFamilyShareResponseEnvelope - 8);
  v124 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v120 - v20;
  v22 = type metadata accessor for UUID();
  v128 = *(v22 - 8);
  v129 = v22;
  v23 = __chkstk_darwin(v22);
  v25 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v120 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v120 - v30;
  __chkstk_darwin(v29);
  v33 = &v120 - v32;
  v131 = v6;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v120 = v9;
    v121 = a2;
    v132 = Strong;
    v35 = *(v9 + 24);
    v123 = a6;
    v36 = (a6 + v35);
    v37 = *v36;
    v39 = *(v36 + 1);
    v38 = *(v36 + 2);
    if (sub_100580650(v37, v39, v38))
    {
      switch(v136)
      {
        case 1:
          v59 = v121;
          if (v121 != 1)
          {
            v86 = static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            v87 = qword_10177C378;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v88 = swift_allocObject();
            *(v88 + 16) = xmmword_10138BBE0;
            v94 = 1;
            goto LABEL_89;
          }

          sub_1005934C8(v33);
          v74 = v132;
          v75 = type metadata accessor for Transaction();
          __chkstk_darwin(v75);
          *(&v120 - 4) = v123;
          *(&v120 - 3) = v33;
          *(&v120 - 2) = v74;
          static Transaction.named<A>(_:with:)();

          return (*(v128 + 8))(v33, v129);
        case 2:
          v69 = v121;
          if (v121 == 2)
          {
            sub_100593770(v21);
            v100 = type metadata accessor for Transaction();
            __chkstk_darwin(v100);
            v101 = v132;
            *(&v120 - 4) = v21;
            *(&v120 - 3) = v101;
            *(&v120 - 2) = v123;
            static Transaction.named<A>(_:with:)();

            v57 = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope;
            v58 = v21;
            return sub_10108FCC4(v58, v57);
          }

          if (v121 != 1)
          {
            v86 = static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            v87 = qword_10177C378;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v88 = swift_allocObject();
            *(v88 + 16) = xmmword_10138BBE0;
            LOBYTE(v137) = 2;
            v106 = String.init<A>(describing:)();
            v108 = v107;
            *(v88 + 56) = &type metadata for String;
            v109 = sub_100008C00();
            *(v88 + 32) = v106;
            *(v88 + 40) = v108;
            *(v88 + 96) = &type metadata for Int;
            *(v88 + 104) = &protocol witness table for Int;
            *(v88 + 64) = v109;
            *(v88 + 72) = v69;
            goto LABEL_90;
          }

          sub_1005934C8(v31);
          v70 = v132;
          v71 = type metadata accessor for Transaction();
          __chkstk_darwin(v71);
          *(&v120 - 4) = v70;
          *(&v120 - 3) = v31;
          *(&v120 - 2) = v123;
          static Transaction.named<A>(_:with:)();

          return (*(v128 + 8))(v31, v129);
        case 3:
          v59 = v121;
          if (v121 == 2)
          {
            v102 = v124;
            sub_100593770(v124);
            v103 = type metadata accessor for Transaction();
            __chkstk_darwin(v103);
            v104 = v132;
            *(&v120 - 4) = v102;
            *(&v120 - 3) = v104;
            *(&v120 - 2) = v123;
            static Transaction.named<A>(_:with:)();

            v57 = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope;
            v58 = v102;
            return sub_10108FCC4(v58, v57);
          }

          if (v121 != 1)
          {
            v86 = static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            v87 = qword_10177C378;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v88 = swift_allocObject();
            *(v88 + 16) = xmmword_10138BBE0;
            v94 = 3;
            goto LABEL_89;
          }

          sub_1005934C8(v28);
          v72 = v132;
          v73 = type metadata accessor for Transaction();
          __chkstk_darwin(v73);
          *(&v120 - 4) = v72;
          *(&v120 - 3) = v28;
          *(&v120 - 2) = v123;
          static Transaction.named<A>(_:with:)();

          return (*(v128 + 8))(v28, v129);
        case 4:
          v59 = v121;
          if (v121 == 1)
          {
            v60 = v126;
            sub_100593A28(v126);
            v61 = v132;
            v62 = type metadata accessor for Transaction();
            __chkstk_darwin(v62);
            *(&v120 - 2) = v60;
            *(&v120 - 1) = v61;
            static Transaction.named<A>(_:with:)();

            v57 = type metadata accessor for SharedBeaconRecord;
            v58 = v60;
            return sub_10108FCC4(v58, v57);
          }

          v86 = static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v87 = qword_10177C378;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_10138BBE0;
          v94 = 4;
          goto LABEL_89;
        case 5:
          sub_10108EAA4(v132, 5, v121, v134, v135, v123);
          goto LABEL_50;
        case 6:
          v59 = v121;
          if (v121 == 2)
          {
            v105 = v125;
            sub_100594508(v125);
            v114 = (v105 + *(v13 + 20));
            v115 = *v114;
            v116 = *(v114 + 1);
            v117 = *(v114 + 2);
            v118 = type metadata accessor for Transaction();
            __chkstk_darwin(v118);
            *(&v120 - 6) = v132;
            *(&v120 - 5) = v105;
            *(&v120 - 4) = v123;
            *(&v120 - 3) = v115;
            *(&v120 - 2) = v116;
            *(&v120 - 1) = v117;
            static Transaction.named<A>(_:with:)();

            v57 = type metadata accessor for KeyRequestEnvelope;
            v58 = v105;
            return sub_10108FCC4(v58, v57);
          }

          if (v121 == 1)
          {
            sub_1005934C8(v25);
            v79 = v132;
            v80 = type metadata accessor for Transaction();
            __chkstk_darwin(v80);
            *(&v120 - 6) = v79;
            *(&v120 - 5) = v25;
            *(&v120 - 4) = v123;
            *(&v120 - 3) = 0;
            *(&v120 - 2) = 0;
            *(&v120 - 1) = 0;
            static Transaction.named<A>(_:with:)();

            return (*(v128 + 8))(v25, v129);
          }

          v86 = static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v87 = qword_10177C378;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_10138BBE0;
          v94 = 6;
          goto LABEL_89;
        case 7:
          v65 = static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v66 = qword_10177C378;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_10138BBE0;
          LOBYTE(v137) = 7;
          goto LABEL_57;
        case 8:
          v65 = static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v66 = qword_10177C378;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_10138BBE0;
          v68 = 8;
          goto LABEL_56;
        case 9:
          v65 = static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v66 = qword_10177C378;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_10138BBE0;
          v68 = 9;
LABEL_56:
          LOBYTE(v137) = v68;
LABEL_57:
          v81 = String.init<A>(describing:)();
          v83 = v82;
          *(v67 + 56) = &type metadata for String;
          v84 = sub_100008C00();
          *(v67 + 32) = v81;
          *(v67 + 40) = v83;
          *(v67 + 96) = &type metadata for Int;
          *(v67 + 104) = &protocol witness table for Int;
          v85 = v121;
          *(v67 + 64) = v84;
          *(v67 + 72) = v85;
          os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v66, "Unsupported version of %{public}@: %d", 37, 2, v67);

        case 10:
          v59 = v121;
          if (v121 == 1)
          {
            PassthroughSubject.send(_:)();
            goto LABEL_50;
          }

          v86 = static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v87 = qword_10177C378;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_10138BBE0;
          v94 = 10;
LABEL_89:
          LOBYTE(v137) = v94;
          v110 = String.init<A>(describing:)();
          v112 = v111;
          *(v88 + 56) = &type metadata for String;
          v113 = sub_100008C00();
          *(v88 + 32) = v110;
          *(v88 + 40) = v112;
          *(v88 + 96) = &type metadata for Int;
          *(v88 + 104) = &protocol witness table for Int;
          *(v88 + 64) = v113;
          *(v88 + 72) = v59;
          goto LABEL_90;
        case 11:
          if (v121 == 1)
          {
            if (swift_weakLoadStrong())
            {
              sub_100B3B2A4(v37, v39, v38);
            }

            goto LABEL_50;
          }

          v86 = static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v87 = qword_10177C378;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_10138BBE0;
          LOBYTE(v137) = 11;
          v89 = String.init<A>(describing:)();
          v91 = v90;
          *(v88 + 56) = &type metadata for String;
          v92 = sub_100008C00();
          *(v88 + 32) = v89;
          *(v88 + 40) = v91;
          *(v88 + 96) = &type metadata for Int;
          *(v88 + 104) = &protocol witness table for Int;
          v93 = v121;
          *(v88 + 64) = v92;
          *(v88 + 72) = v93;
          goto LABEL_90;
        case 12:
          v63 = v121;
          if (v121 != 1)
          {
            v86 = static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            v87 = qword_10177C378;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v88 = swift_allocObject();
            *(v88 + 16) = xmmword_10138BBE0;
            v95 = 12;
            goto LABEL_73;
          }

          v64 = sub_100594A78(12, 1, v134, v135);
          if (swift_weakLoadStrong())
          {
            sub_100B3BDC0(v64);
          }

LABEL_50:

        case 13:
          v63 = v121;
          if (v121 == 1)
          {
            v76 = v127;
            sub_1005947C0(v127);
            if (swift_weakLoadStrong())
            {
              sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
              v77 = (*(v122 + 80) + 32) & ~*(v122 + 80);
              v78 = swift_allocObject();
              *(v78 + 16) = xmmword_101385D80;
              sub_10108FC3C(v76, v78 + v77, type metadata accessor for BeaconObservation);
              sub_100B3BDC0(v78);

              swift_setDeallocating();
              sub_10108FCC4(v78 + v77, type metadata accessor for BeaconObservation);
              swift_deallocClassInstance();
              v58 = v76;
              v57 = type metadata accessor for BeaconObservation;
              return sub_10108FCC4(v58, v57);
            }

            sub_10108FCC4(v76, type metadata accessor for BeaconObservation);
          }

          else
          {
            v86 = static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            v87 = qword_10177C378;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v88 = swift_allocObject();
            *(v88 + 16) = xmmword_10138BBE0;
            v95 = 13;
LABEL_73:
            LOBYTE(v137) = v95;
            v96 = String.init<A>(describing:)();
            v98 = v97;
            *(v88 + 56) = &type metadata for String;
            v99 = sub_100008C00();
            *(v88 + 32) = v96;
            *(v88 + 40) = v98;
            *(v88 + 96) = &type metadata for Int;
            *(v88 + 104) = &protocol witness table for Int;
            *(v88 + 64) = v99;
            *(v88 + 72) = v63;
LABEL_90:
            os_log(_:dso:log:_:_:)(v86, &_mh_execute_header, v87, "Unsupported version of %{public}@: %d", 37, 2, v88);
          }

          break;
        default:
          sub_10108C448(v132, 0, v121, v134, v135, v130, v123);
          goto LABEL_50;
      }
    }

    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000076D4(v43, qword_10177A560);
    v44 = v133;
    sub_10108FC3C(v123, v133, type metadata accessor for MessagingMessageContext);
    v46 = v134;
    v45 = v135;
    sub_100017D5C(v134, v135);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v120;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v137 = v52;
      *v51 = 67109378;
      *(v51 + 4) = dword_101400A4C[v136];
      sub_100016590(v46, v45);
      *(v51 + 8) = 2080;
      v53 = v44 + *(v50 + 24);
      v54 = *(v53 + 8);
      v55 = *(v53 + 16);

      sub_10108FCC4(v44, type metadata accessor for MessagingMessageContext);
      v56 = sub_1000136BC(v54, v55, &v137);

      *(v51 + 10) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "Not allowing message of type %d, from non-family member %s.", v51, 0x12u);
      sub_100007BAC(v52);
    }

    sub_100016590(v46, v45);

    v57 = type metadata accessor for MessagingMessageContext;
    v58 = v44;
    return sub_10108FCC4(v58, v57);
  }

  else
  {
    v40 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      v119 = v40;
      swift_once();
      v40 = v119;
    }

    v41 = qword_10177C378;

    return os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "Ignoring incoming message because there is no manager", 53, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10108C448(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v346 = a7;
  v351 = a6;
  *(&v355 + 1) = a5;
  v353 = a4;
  v354 = a3;
  LODWORD(v355) = a2;
  v338 = a1;
  MyAirPodsFamilyShareEnvelope = type metadata accessor for FindMyAirPodsFamilyShareEnvelope(0);
  __chkstk_darwin(MyAirPodsFamilyShareEnvelope);
  v342 = &v320 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = type metadata accessor for UUID();
  v347 = *(v348 - 8);
  v8 = __chkstk_darwin(v348);
  v334 = &v320 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v333 = &v320 - v10;
  MyAccessoryFamilyShareEnvelope = type metadata accessor for FindMyAccessoryFamilyShareEnvelope(0);
  __chkstk_darwin(MyAccessoryFamilyShareEnvelope);
  v341 = (&v320 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v330 = type metadata accessor for FamilyCryptoKeysV1(0);
  v343 = *(v330 - 8);
  __chkstk_darwin(v330);
  v350 = &v320 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FamilyShareEnvelopeV1(0);
  __chkstk_darwin(v13);
  v340 = (&v320 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v321 = type metadata accessor for CryptoKeys(0);
  v328 = *(v321 - 8);
  __chkstk_darwin(v321);
  v352 = (&v320 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v16 - 8);
  v339 = &v320 - v17;
  v337 = type metadata accessor for DateInterval();
  v336 = *(v337 - 8);
  __chkstk_darwin(v337);
  v335 = &v320 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = type metadata accessor for Date();
  v345 = *(v349 - 8);
  v19 = __chkstk_darwin(v349);
  v323 = &v320 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v332 = &v320 - v22;
  v23 = __chkstk_darwin(v21);
  v322 = &v320 - v24;
  v25 = __chkstk_darwin(v23);
  v329 = &v320 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v320 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v320 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v320 - v34;
  __chkstk_darwin(v33);
  v37 = &v320 - v36;
  v344 = type metadata accessor for SharedBeaconRecord(0);
  v38 = __chkstk_darwin(v344);
  v327 = &v320 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v331 = (&v320 - v41);
  v42 = __chkstk_darwin(v40);
  v324 = (&v320 - v43);
  v44 = __chkstk_darwin(v42);
  v46 = &v320 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v320 - v48;
  v50 = __chkstk_darwin(v47);
  v52 = &v320 - v51;
  __chkstk_darwin(v50);
  v54 = &v320 - v53;
  v55 = type metadata accessor for LegacyShareEnvelope(0);
  v56 = __chkstk_darwin(v55);
  v59 = &v320 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v57 <= 2)
  {
    v64 = v13;
    v65 = v29;
    v342 = v64;
    v329 = v52;
    v332 = v37;
    v331 = v46;
    v333 = v54;
    v66 = v350;
    v334 = v32;
    v341 = v49;
    if (v57 == 1)
    {
      v167 = v56;
      v168 = v59;
      v169 = v355;
      v170 = v360;
      result = sub_100592778(v59);
      if (v170)
      {
        return result;
      }

      v171 = v333;
      sub_10108FC3C(v168, v333, type metadata accessor for SharedBeaconRecord);
      v172 = *(v167 + 20);
      v351 = v168;
      v173 = *(v168 + v172);
      if (*(v173 + 16))
      {
        v360 = 0;
        v174 = v336;
        v175 = v336[2];
        v176 = v335;
        MyAirPodsFamilyShareEnvelope = v173 + ((*(v328 + 80) + 32) & ~*(v328 + 80));
        v177 = v337;
        *(&v355 + 1) = v173;
        v175(v335);
        DateInterval.start.getter();
        (v174[1])(v176, v177);
        v178 = v345;
        v179 = v332;
        v180 = v349;
        (*(v345 + 32))(v332, v35, v349);
        v181 = (v346 + *(type metadata accessor for MessagingMessageContext(0) + 48));
        v182 = *v181;
        v354 = v181[1];
        *&v355 = v182;
        v183 = *(v171 + 8);
        v353 = *v171;
        v350 = v183;
        v184 = v171;
        v185 = v344;
        v186 = *(v347 + 16);
        v187 = v329;
        v188 = v348;
        v186(&v329[*(v344 + 20)], v184 + *(v344 + 20), v348);
        v186(v187 + v185[6], v184 + v185[6], v188);
        v189 = (v184 + v185[7]);
        LODWORD(v343) = *v189;
        v191 = *(v189 + 1);
        v190 = *(v189 + 2);
        v342 = v191;
        v337 = v190;
        v192 = v185[10];
        v193 = (v184 + v185[9]);
        v194 = v193[1];
        v341 = *v193;
        v195 = *(v184 + v192 + 8);
        v348 = *(v184 + v192);
        v347 = v195;
        v196 = v185[12];
        v336 = *(v184 + v185[11]);
        v340 = *(v184 + v196);
        v197 = v185[14];
        LODWORD(v335) = *(v184 + v185[13]);
        LODWORD(v334) = *(v184 + v197);
        v198 = v185[16];
        v330 = *(v184 + v185[15]);
        LODWORD(v331) = *(v184 + v198);
        (*(v178 + 16))(v187 + v185[18], v179, v180);
        sub_1000D2A70(v184 + v185[19], v187 + v185[19], &qword_1016980D0, &unk_10138F3B0);
        v199 = v339;
        sub_1000D2A70(v184 + v185[20], v339, &unk_1016AF890, &qword_1013926D0);
        v200 = v185[15];
        v327 = v185[14];
        v201 = v185[20];
        v202 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
        (*(*(v202 - 8) + 56))(v187 + v201, 1, 1, v202);
        v203 = v353;
        v204 = v354;
        v205 = v350;
        *v187 = v353;
        v187[1] = v205;
        v206 = v187 + v185[7];
        *v206 = v343;
        v207 = v337;
        *(v206 + 1) = v342;
        *(v206 + 2) = v207;
        v208 = (v187 + v185[8]);
        *v208 = v355;
        v208[1] = v204;
        v209 = (v187 + v185[9]);
        *v209 = v341;
        v209[1] = v194;
        v210 = (v187 + v185[10]);
        v211 = v347;
        *v210 = v348;
        v210[1] = v211;
        *(v187 + v185[11]) = v336;
        *(v187 + v185[12]) = v340;
        *(v187 + v185[13]) = v335;
        *(v187 + v327) = v334;
        *(v187 + v200) = v330;
        *(v187 + v185[16]) = v331;
        *(v187 + v185[17]) = 1;
        sub_100017D5C(v203, v205);

        sub_10108FB0C(v199, v187 + v201);
        v212 = *(*(&v355 + 1) + 16);
        v213 = _swiftEmptyArrayStorage;
        if (v212)
        {
          v358 = _swiftEmptyArrayStorage;
          sub_101124C34(0, v212, 0);
          v214 = v358;
          v354 = *(v328 + 72);
          v215 = v321;
          v216 = v352;
          v217 = MyAirPodsFamilyShareEnvelope;
          do
          {
            v218 = v214;
            sub_10108FC3C(v217, v216, type metadata accessor for CryptoKeys);
            v219 = (v216 + v215[9]);
            v220 = *v219;
            v221 = v219[1];
            v222 = v215[5];
            v223 = (v216 + v215[6]);
            v224 = *v223;
            v225 = v223[1];
            v227 = *(v216 + v222);
            v226 = *(v216 + v222 + 8);
            *&v355 = v220;
            *(&v355 + 1) = v221;
            sub_100017D5C(v220, v221);
            sub_100017D5C(v224, v225);
            sub_1002DBC68(v227, v226);
            sub_10108FCC4(v216, type metadata accessor for CryptoKeys);
            v214 = v218;
            v358 = v218;
            v228 = v218[2];
            v229 = v214[3];
            if (v228 >= v229 >> 1)
            {
              sub_101124C34((v229 > 1), v228 + 1, 1);
              v215 = v321;
              v214 = v358;
            }

            v214[2] = v228 + 1;
            v230 = &v214[6 * v228];
            *&v231 = v224;
            *(&v231 + 1) = v225;
            *(v230 + 2) = v355;
            *(v230 + 3) = v231;
            v230[8] = v227;
            v230[9] = v226;
            v217 += v354;
            --v212;
            v216 = v352;
          }

          while (v212);
          v213 = v214;
          v187 = v329;
        }

        v287 = type metadata accessor for Transaction();
        __chkstk_darwin(v287);
        *(&v320 - 6) = v346;
        *(&v320 - 5) = v187;
        *(&v320 - 4) = v338;
        *(&v320 - 3) = 0;
        *(&v320 - 2) = 0;
        *(&v320 - 1) = v213;
        static Transaction.named<A>(_:with:)();

        (*(v345 + 8))(v332, v349);
        sub_10108FCC4(v333, type metadata accessor for SharedBeaconRecord);
        sub_10108FCC4(v187, type metadata accessor for SharedBeaconRecord);
        v120 = type metadata accessor for LegacyShareEnvelope;
        v288 = v351;
      }

      else
      {
        v305 = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v306 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v307 = swift_allocObject();
        *(v307 + 16) = xmmword_101385D80;
        sub_100D47A50(v169, 1, v353, *(&v355 + 1));
        v309 = v308;
        v311 = v310;
        *(v307 + 56) = &type metadata for String;
        *(v307 + 64) = sub_100008C00();
        *(v307 + 32) = v309;
        *(v307 + 40) = v311;
        os_log(_:dso:log:_:_:)(v305, &_mh_execute_header, v306, "Ignoring incoming shareMessage without keys: %@", 47, 2, v307);

        sub_10108FCC4(v171, type metadata accessor for SharedBeaconRecord);
        v120 = type metadata accessor for LegacyShareEnvelope;
        v288 = v351;
      }

      return sub_10108FCC4(v288, v120);
    }

    v60 = v355;
    if (v57 != 2)
    {
LABEL_33:
      v232 = v57;
      v233 = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v234 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v235 = swift_allocObject();
      *(v235 + 16) = xmmword_10138BBE0;
      LOBYTE(v358) = v60;
      v236 = String.init<A>(describing:)();
      v238 = v237;
      *(v235 + 56) = &type metadata for String;
      v239 = sub_100008C00();
      *(v235 + 32) = v236;
      *(v235 + 40) = v238;
      *(v235 + 96) = &type metadata for Int;
      *(v235 + 104) = &protocol witness table for Int;
      *(v235 + 64) = v239;
      *(v235 + 72) = v232;
      os_log(_:dso:log:_:_:)(v233, &_mh_execute_header, v234, "Unsupported version of %{public}@: %d", 37, 2, v235);
    }

    if (*(v351 + 16))
    {
      v67 = v351;
      v68 = sub_100771D58(0x44495344746C41, 0xE700000000000000);
      v69 = v340;
      v70 = v66;
      if (v71)
      {
        sub_100013894(*(v67 + 56) + 32 * v68, &v358);
        sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
        v72 = swift_dynamicCast();
        if (v72)
        {
          v73 = v356;
        }

        else
        {
          v73 = 0;
        }

        if (v72)
        {
          v74 = v357;
        }

        else
        {
          v74 = 0;
        }
      }

      else
      {
        v73 = 0;
        v74 = 0;
      }

      v240 = v343;
    }

    else
    {
      v73 = 0;
      v74 = 0;
      v69 = v340;
      v240 = v343;
      v70 = v350;
    }

    v241 = v342;
    v242 = v360;
    sub_100592A30(v69);
    v360 = v242;
    if (v242)
    {
    }

    v243 = v341;
    sub_10108FC3C(v69, v341, type metadata accessor for SharedBeaconRecord);
    v244 = *(v69 + *(v241 + 20));
    if (*(v244 + 16))
    {
      *&v355 = v73;
      *(&v355 + 1) = v74;
      v245 = v65;
      v246 = v244 + ((*(v240 + 80) + 32) & ~*(v240 + 80));
      v247 = *(v330 + 20);
      v248 = v336;
      v354 = v244;
      v249 = v335;
      v250 = v337;
      (v336[2])(v335, v246 + v247, v337);
      DateInterval.start.getter();
      (v248[1])(v249, v250);
      v251 = v345;
      (*(v345 + 32))(v334, v245, v349);
      v252 = (v346 + *(type metadata accessor for MessagingMessageContext(0) + 48));
      v253 = *v252;
      v352 = v252[1];
      v353 = v253;
      v254 = *v243;
      v350 = v243[1];
      v351 = v254;
      v255 = v344;
      v256 = *(v347 + 16);
      v257 = v331;
      v258 = v348;
      v256(v331 + *(v344 + 20), v243 + *(v344 + 20), v348);
      v256(v257 + v255[6], v243 + v255[6], v258);
      v259 = v243 + v255[7];
      LODWORD(v342) = *v259;
      v260 = *(v259 + 2);
      v337 = *(v259 + 1);
      v261 = v255[10];
      v262 = (v243 + v255[9]);
      v263 = v262[1];
      v336 = *v262;
      v264 = *(v243 + v261 + 8);
      v348 = *(v243 + v261);
      v347 = v264;
      v265 = v255[12];
      v333 = *(v243 + v255[11]);
      v335 = *(v243 + v265);
      v266 = v255[14];
      LODWORD(v332) = *(v243 + v255[13]);
      LODWORD(v330) = *(v243 + v266);
      v267 = v255[16];
      v328 = *(v243 + v255[15]);
      LODWORD(v329) = *(v243 + v267);
      (*(v251 + 16))(v257 + v255[18], v334, v349);
      sub_1000D2A70(v243 + v255[19], v257 + v255[19], &qword_1016980D0, &unk_10138F3B0);
      sub_1000D2A70(v243 + v255[20], v339, &unk_1016AF890, &qword_1013926D0);
      v268 = v255[15];
      v327 = v255[14];
      MyAirPodsFamilyShareEnvelope = v268;
      v269 = v255[20];
      v270 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
      (*(*(v270 - 8) + 56))(v257 + v269, 1, 1, v270);
      v272 = v350;
      v271 = v351;
      *v257 = v351;
      v257[1] = v272;
      v273 = v257 + v255[7];
      *v273 = v342;
      *(v273 + 1) = v337;
      *(v273 + 2) = v260;
      v274 = (v257 + v255[8]);
      v275 = v352;
      *v274 = v353;
      v274[1] = v275;
      v276 = (v257 + v255[9]);
      *v276 = v336;
      v276[1] = v263;
      v277 = (v257 + v255[10]);
      v278 = v347;
      *v277 = v348;
      v277[1] = v278;
      *(v257 + v255[11]) = v333;
      *(v257 + v255[12]) = v335;
      *(v257 + v255[13]) = v332;
      *(v257 + v327) = v330;
      *(v257 + MyAirPodsFamilyShareEnvelope) = v328;
      *(v257 + v255[16]) = v329;
      *(v257 + v255[17]) = 1;
      sub_100017D5C(v271, v272);

      sub_10108FB0C(v339, v257 + v269);
      v279 = *(v354 + 16);
      v280 = _swiftEmptyArrayStorage;
      if (v279)
      {
        v358 = _swiftEmptyArrayStorage;
        sub_101124C34(0, v279, 0);
        v280 = v358;
        v281 = *(v343 + 72);
        do
        {
          sub_10108FC3C(v246, v70, type metadata accessor for FamilyCryptoKeysV1);
          sub_100DE5F74(v359);
          sub_10108FCC4(v70, type metadata accessor for FamilyCryptoKeysV1);
          v358 = v280;
          v283 = v280[2];
          v282 = v280[3];
          if (v283 >= v282 >> 1)
          {
            sub_101124C34((v282 > 1), v283 + 1, 1);
            v280 = v358;
          }

          v280[2] = v283 + 1;
          v284 = &v280[6 * v283];
          v285 = v359[0];
          v286 = v359[2];
          v284[3] = v359[1];
          v284[4] = v286;
          v284[2] = v285;
          v246 += v281;
          --v279;
        }

        while (v279);
        v257 = v331;
      }

      v289 = type metadata accessor for Transaction();
      __chkstk_darwin(v289);
      *(&v320 - 6) = v346;
      *(&v320 - 5) = v257;
      v290 = v355;
      *(&v320 - 4) = v338;
      *(&v320 - 3) = v290;
      *(&v320 - 1) = v280;
      static Transaction.named<A>(_:with:)();

      (*(v345 + 8))(v334, v349);
      sub_10108FCC4(v341, type metadata accessor for SharedBeaconRecord);
      sub_10108FCC4(v257, type metadata accessor for SharedBeaconRecord);
      v120 = type metadata accessor for FamilyShareEnvelopeV1;
      v121 = &v361;
      goto LABEL_50;
    }

    v312 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v313 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v314 = swift_allocObject();
    *(v314 + 16) = xmmword_101385D80;
    sub_100D47A50(v60, 2, v353, *(&v355 + 1));
    v316 = v315;
    v318 = v317;
    *(v314 + 56) = &type metadata for String;
    *(v314 + 64) = sub_100008C00();
    *(v314 + 32) = v316;
    *(v314 + 40) = v318;
    os_log(_:dso:log:_:_:)(v312, &_mh_execute_header, v313, "Ignoring incoming shareMessage without keys: %@", 47, 2, v314);

    sub_10108FCC4(v341, type metadata accessor for SharedBeaconRecord);
    return sub_10108FCC4(v69, type metadata accessor for FamilyShareEnvelopeV1);
  }

  else
  {
    if (v57 != 3)
    {
      if (v57 != 4)
      {
        LOBYTE(v60) = v355;
        if (v57 == 5)
        {
          v61 = v360;
          result = sub_100593258(v355, 5, v353, *(&v355 + 1));
          if (!v61)
          {
            v63 = static os_log_type_t.debug.getter();
            if (qword_101695030 != -1)
            {
              v319 = v63;
              swift_once();
              v63 = v319;
            }

            return os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, qword_10177C378, "PLACEHOLDER: Handle incoming KeyDrop share.", 43, 2, _swiftEmptyArrayStorage);
          }

          return result;
        }

        goto LABEL_33;
      }

      v122 = v342;
      v123 = v360;
      result = sub_100592FA0(v342);
      if (v123)
      {
        return result;
      }

      v124 = v327;
      sub_10108FC3C(v122, v327, type metadata accessor for SharedBeaconRecord);
      v125 = v344;
      v126 = v124 + *(v344 + 24);
      v127 = v348;
      v354 = *(v347 + 16);
      (v354)(v334, v126, v348);
      v128 = *(v122 + *(MyAirPodsFamilyShareEnvelope + 20));
      if (!*(v128 + 16))
      {
        v298 = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v299 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v300 = swift_allocObject();
        *(v300 + 16) = xmmword_101385D80;
        sub_100D47A50(v355, 4, v353, *(&v355 + 1));
        v302 = v301;
        v304 = v303;
        *(v300 + 56) = &type metadata for String;
        *(v300 + 64) = sub_100008C00();
        *(v300 + 32) = v302;
        *(v300 + 40) = v304;
        os_log(_:dso:log:_:_:)(v298, &_mh_execute_header, v299, "Ignoring incoming shareMessage without primaryKeys: %@", 54, 2, v300);

        sub_10108FCC4(v124, type metadata accessor for SharedBeaconRecord);
        (*(v347 + 8))(v334, v348);
        v120 = type metadata accessor for FindMyAirPodsFamilyShareEnvelope;
        v288 = v342;
        return sub_10108FCC4(v288, v120);
      }

      *(&v355 + 1) = *(v122 + *(MyAirPodsFamilyShareEnvelope + 24));
      v129 = *(v343 + 80);
      v360 = 0;
      v353 = (v128 + ((v129 + 32) & ~v129));
      v130 = *(v330 + 20);
      v341 = v126;
      v131 = v336;
      *&v355 = v128;
      v132 = v335;
      v133 = v337;
      (v336[2])(v335, v353 + v130, v337);
      v134 = v323;
      DateInterval.start.getter();
      (v131[1])(v132, v133);
      v135 = v345;
      v136 = v349;
      (*(v345 + 32))(v332, v134, v349);
      v353 = *v353;
      v137 = (v346 + *(type metadata accessor for MessagingMessageContext(0) + 48));
      v138 = *v137;
      v351 = v137[1];
      v352 = v138;
      v139 = v124[1];
      v350 = *v124;
      v343 = v139;
      v140 = v331;
      v141 = v354;
      (v354)(v331 + v125[5], v124 + v125[5], v127);
      v141(&v140[v125[6]], v341, v127);
      v142 = v124 + v125[7];
      v143 = *v142;
      v144 = *(v142 + 2);
      v340 = *(v142 + 1);
      v145 = v125[10];
      v146 = (v124 + v125[9]);
      v147 = v146[1];
      v337 = *v146;
      v148 = *(v124 + v145 + 8);
      v354 = *(v124 + v145);
      v341 = v148;
      v149 = v125[12];
      v335 = *(v124 + v125[11]);
      v336 = *(v124 + v149);
      v150 = v125[14];
      LODWORD(v333) = *(v124 + v125[13]);
      LODWORD(v330) = *(v124 + v150);
      v151 = v125[16];
      v328 = *(v124 + v125[15]);
      LODWORD(v329) = *(v124 + v151);
      (*(v135 + 16))(&v140[v125[18]], v332, v136);
      sub_1000D2A70(v124 + v125[19], &v140[v125[19]], &qword_1016980D0, &unk_10138F3B0);
      v152 = v339;
      sub_1000D2A70(v124 + v125[20], v339, &unk_1016AF890, &qword_1013926D0);
      v153 = v125[15];
      MyAirPodsFamilyShareEnvelope = v125[14];
      MyAccessoryFamilyShareEnvelope = v153;
      v154 = v125[20];
      v155 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
      (*(*(v155 - 8) + 56))(&v140[v154], 1, 1, v155);
      v156 = v350;
      v157 = v343;
      *v140 = v350;
      *(v140 + 1) = v157;
      v158 = &v140[v125[7]];
      *v158 = v143;
      *(v158 + 1) = v340;
      *(v158 + 2) = v144;
      v159 = &v140[v125[8]];
      v160 = v351;
      *v159 = v352;
      v159[1] = v160;
      v161 = &v140[v125[9]];
      *v161 = v337;
      v161[1] = v147;
      v162 = &v140[v125[10]];
      v163 = v341;
      *v162 = v354;
      v162[1] = v163;
      *&v140[v125[11]] = v335;
      *&v140[v125[12]] = v336;
      v140[v125[13]] = v333;
      v140[MyAirPodsFamilyShareEnvelope] = v330;
      *&v140[MyAccessoryFamilyShareEnvelope] = v328;
      v140[v125[16]] = v329;
      *&v140[v125[17]] = v353;
      sub_100017D5C(v156, v157);

      sub_10108FB0C(v152, &v140[v154]);
      v164 = type metadata accessor for Transaction();
      __chkstk_darwin(v164);
      *(&v320 - 6) = v346;
      *(&v320 - 5) = v140;
      v165 = v334;
      *(&v320 - 4) = v338;
      *(&v320 - 3) = v165;
      v166 = *(&v355 + 1);
      *(&v320 - 2) = v355;
      *(&v320 - 1) = v166;
      static Transaction.named<A>(_:with:)();
      (*(v345 + 8))(v332, v349);
      sub_10108FCC4(v124, type metadata accessor for SharedBeaconRecord);
      sub_10108FCC4(v140, type metadata accessor for SharedBeaconRecord);
      (*(v347 + 8))(v165, v348);
      v120 = type metadata accessor for FindMyAirPodsFamilyShareEnvelope;
      v121 = &v363;
LABEL_50:
      v288 = *(v121 - 32);
      return sub_10108FCC4(v288, v120);
    }

    v75 = v341;
    v76 = v360;
    result = sub_100592CE8(v341);
    v77 = v344;
    if (v76)
    {
      return result;
    }

    v360 = 0;
    v78 = v324;
    sub_10108FC3C(v75, v324, type metadata accessor for SharedBeaconRecord);
    v79 = v78 + v77[6];
    v80 = v348;
    v354 = *(v347 + 16);
    (v354)(v333, v79, v348);
    v81 = *(v75 + *(MyAccessoryFamilyShareEnvelope + 20));
    if (*(v81 + 16))
    {
      *(&v355 + 1) = *(v75 + *(MyAccessoryFamilyShareEnvelope + 24));
      v82 = type metadata accessor for FamilyCryptoKeysV2(0);
      v353 = (v81 + ((*(*(v82 - 8) + 80) + 32) & ~*(*(v82 - 8) + 80)));
      v83 = *(v82 + 20);
      v342 = v79;
      v84 = v336;
      v85 = v336[2];
      v86 = v335;
      *&v355 = v81;
      v87 = v337;
      v85(v335, v353 + v83, v337);
      v88 = v322;
      DateInterval.start.getter();
      (v84[1])(v86, v87);
      v89 = v345;
      v90 = v329;
      (*(v345 + 32))(v329, v88, v349);
      v353 = *v353;
      v91 = (v346 + *(type metadata accessor for MessagingMessageContext(0) + 48));
      v92 = *v91;
      v351 = v91[1];
      v352 = v92;
      v93 = v78[1];
      v350 = *v78;
      v343 = v93;
      v94 = v331;
      v95 = v354;
      (v354)(v331 + v77[5], v78 + v77[5], v80);
      v95(&v94[v77[6]], v342, v80);
      v96 = v78 + v77[7];
      LODWORD(v340) = *v96;
      v97 = *(v96 + 2);
      v337 = *(v96 + 1);
      v98 = v77[10];
      v99 = (v78 + v77[9]);
      v100 = v99[1];
      v336 = *v99;
      v101 = *(v78 + v98 + 8);
      v354 = *(v78 + v98);
      v342 = v101;
      v102 = v77[12];
      v334 = *(v78 + v77[11]);
      v335 = *(v78 + v102);
      v103 = v77[14];
      LODWORD(v332) = *(v78 + v77[13]);
      LODWORD(v330) = *(v78 + v103);
      v104 = v77[16];
      v327 = *(v78 + v77[15]);
      LODWORD(v328) = *(v78 + v104);
      (*(v89 + 16))(&v94[v77[18]], v90, v349);
      sub_1000D2A70(v78 + v77[19], &v94[v77[19]], &qword_1016980D0, &unk_10138F3B0);
      v105 = v339;
      sub_1000D2A70(v78 + v77[20], v339, &unk_1016AF890, &qword_1013926D0);
      v106 = v77[15];
      MyAirPodsFamilyShareEnvelope = v77[14];
      MyAccessoryFamilyShareEnvelope = v106;
      v107 = v77[20];
      v108 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
      (*(*(v108 - 8) + 56))(&v94[v107], 1, 1, v108);
      v109 = v350;
      v110 = v351;
      v111 = v343;
      *v94 = v350;
      *(v94 + 1) = v111;
      v112 = &v94[v77[7]];
      *v112 = v340;
      *(v112 + 1) = v337;
      *(v112 + 2) = v97;
      v113 = &v94[v77[8]];
      *v113 = v352;
      v113[1] = v110;
      v114 = &v94[v77[9]];
      *v114 = v336;
      v114[1] = v100;
      v115 = &v94[v77[10]];
      v116 = v342;
      *v115 = v354;
      v115[1] = v116;
      *&v94[v77[11]] = v334;
      *&v94[v77[12]] = v335;
      v94[v77[13]] = v332;
      v94[MyAirPodsFamilyShareEnvelope] = v330;
      *&v94[MyAccessoryFamilyShareEnvelope] = v327;
      v94[v77[16]] = v328;
      *&v94[v77[17]] = v353;
      sub_100017D5C(v109, v111);

      sub_10108FB0C(v105, &v94[v107]);
      v117 = type metadata accessor for Transaction();
      __chkstk_darwin(v117);
      *(&v320 - 6) = v346;
      *(&v320 - 5) = v94;
      v118 = v333;
      *(&v320 - 4) = v338;
      *(&v320 - 3) = v118;
      v119 = *(&v355 + 1);
      *(&v320 - 2) = v355;
      *(&v320 - 1) = v119;
      static Transaction.named<A>(_:with:)();
      (*(v345 + 8))(v329, v349);
      sub_10108FCC4(v78, type metadata accessor for SharedBeaconRecord);
      sub_10108FCC4(v94, type metadata accessor for SharedBeaconRecord);
      (*(v347 + 8))(v118, v348);
      v120 = type metadata accessor for FindMyAccessoryFamilyShareEnvelope;
      v121 = &v362;
      goto LABEL_50;
    }

    v291 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v292 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v293 = swift_allocObject();
    *(v293 + 16) = xmmword_101385D80;
    sub_100D47A50(v355, 3, v353, *(&v355 + 1));
    v295 = v294;
    v297 = v296;
    *(v293 + 56) = &type metadata for String;
    *(v293 + 64) = sub_100008C00();
    *(v293 + 32) = v295;
    *(v293 + 40) = v297;
    os_log(_:dso:log:_:_:)(v291, &_mh_execute_header, v292, "Ignoring incoming shareMessage without primaryKeys: %@", 54, 2, v293);

    sub_10108FCC4(v78, type metadata accessor for SharedBeaconRecord);
    (*(v347 + 8))(v333, v348);
    return sub_10108FCC4(v341, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
  }
}

uint64_t sub_10108EAA4(uint64_t a1, int a2, int *a3, void (**a4)(uint64_t, char *, uint64_t), void (**a5)(uint64_t, char *, uint64_t), uint64_t a6)
{
  *&v113 = a6;
  v116 = a4;
  v117 = a5;
  LODWORD(v118) = a2;
  v109 = a1;
  v129 = type metadata accessor for DateInterval();
  v108 = *(v129 - 8);
  v7 = __chkstk_darwin(v129);
  v123 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v126 = &v105 - v9;
  v10 = type metadata accessor for FamilyCryptoKeysV2(0);
  v124 = *(v10 - 8);
  v125 = v10;
  v11 = __chkstk_darwin(v10);
  v122 = (&v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v14 = (&v105 - v13);
  MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope(0);
  __chkstk_darwin(MyAccessoryFamilyKeyEnvelope);
  v112 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for FamilyCryptoKeysV1(0);
  v106 = *(v121 - 1);
  __chkstk_darwin(v121);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimeBasedKey(0);
  v127 = *(v18 - 8);
  v128 = v18;
  v19 = __chkstk_darwin(v18);
  v120 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v105 - v22;
  __chkstk_darwin(v21);
  v25 = &v105 - v24;
  v111 = type metadata accessor for UUID();
  v110 = *(v111 - 8);
  v26 = __chkstk_darwin(v111);
  v28 = (&v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  *&v114 = &v105 - v29;
  v30 = type metadata accessor for SelfBeaconingKeyEnvelope(0);
  __chkstk_darwin(v30);
  v115 = (&v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for LegacySelfBeaconingKeyEnvelope(0);
  __chkstk_darwin(v32);
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v105 - v34;
  if (a3 == 3)
  {
    v121 = v28;
    v52 = v112;
    v53 = v119;
    result = sub_100594250(v112);
    if (v53)
    {
      return result;
    }

    (*(v110 + 16))(v121, v52, v111);
    v61 = MyAccessoryFamilyKeyEnvelope;
    v62 = *(v52 + *(MyAccessoryFamilyKeyEnvelope + 20));
    v63 = *(v62 + 16);
    v64 = _swiftEmptyArrayStorage;
    a3 = &unk_10138B000;
    v119 = 0;
    if (!v63)
    {
      v66 = v124;
      v67 = v125;
LABEL_36:
      v82 = *(v52 + *(v61 + 24));
      v83 = *(v82 + 2);
      v84 = _swiftEmptyArrayStorage;
      a3 = v121;
      if (!v83)
      {
LABEL_51:
        v104 = type metadata accessor for Transaction();
        __chkstk_darwin(v104);
        *(&v105 - 4) = v109;
        *(&v105 - 3) = a3;
        *(&v105 - 2) = v64;
        *(&v105 - 1) = v84;
        static Transaction.named<A>(_:with:)();

        sub_10108FCC4(v112, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
        return (*(v110 + 8))(a3, v111);
      }

      v131 = _swiftEmptyArrayStorage;
      v116 = v83;
      sub_101124028(0, v83, 0);
      v85 = 0;
      v84 = v131;
      v86 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v126 = v82;
      v118 = &v82[v86];
      v117 = (v108 + 16);
      v115 = (v108 + 32);
      v114 = xmmword_10138BBF0;
      v87 = v122;
      v54 = v123;
      while (v85 < *(v126 + 16))
      {
        sub_10108FC3C(&v118[*(v66 + 72) * v85], v87, type metadata accessor for FamilyCryptoKeysV2);
        a3 = *v87;
        (*v117)(v54, v87 + *(v67 + 20), v129);
        v54 = type metadata accessor for __DataStorage();
        swift_allocObject();
        v88 = __DataStorage.init(length:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
          {
            goto LABEL_58;
          }

          swift_allocObject();
          v89 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v88 = v89;
        }

        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_61;
        }

        v54 = result;
        v90 = __DataStorage._offset.getter();
        v91 = -v90;
        if (__OFSUB__(0, v90))
        {
          goto LABEL_56;
        }

        v92 = __DataStorage._length.getter();
        if (v92 >= 32)
        {
          v93 = 32;
        }

        else
        {
          v93 = v92;
        }

        bzero((v54 + v91), v93);

        v67 = v125;
        v94 = v122;
        v95 = (v122 + *(v125 + 24));
        v96 = *v95;
        v97 = v95[1];
        sub_100017D5C(*v95, v97);
        v98 = v94;
        v99 = v120;
        sub_10108FCC4(v98, type metadata accessor for FamilyCryptoKeysV2);
        *v99 = a3;
        v100 = v128;
        (*v115)(&v99[v128[5]], v123, v129);
        v101 = &v99[v100[6]];
        *v101 = 0x2000000000;
        *(v101 + 1) = v88 | 0x4000000000000000;
        *(v101 + 2) = v96;
        *(v101 + 3) = v97;
        *(v101 + 2) = v114;
        v131 = v84;
        v103 = v84[2];
        v102 = v84[3];
        if (v103 >= v102 >> 1)
        {
          sub_101124028((v102 > 1), v103 + 1, 1);
          v84 = v131;
        }

        v85 = (v85 + 1);
        v84[2] = v103 + 1;
        sub_10025DC70(v99, v84 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v103);
        v54 = v123;
        v66 = v124;
        a3 = v121;
        v87 = v122;
        if (v116 == v85)
        {
          goto LABEL_51;
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v131 = _swiftEmptyArrayStorage;
    v115 = v63;
    sub_101124028(0, v63, 0);
    v65 = 0;
    v64 = v131;
    v66 = v124;
    v117 = (v62 + ((*(v66 + 80) + 32) & ~*(v66 + 80)));
    v118 = v62;
    v116 = (v108 + 16);
    *&v114 = v108 + 32;
    v113 = xmmword_10138BBF0;
    v67 = v125;
    v54 = v126;
    while (1)
    {
      if (v65 >= *(v118 + 2))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_10108FC3C(v117 + *(v66 + 72) * v65, v14, type metadata accessor for FamilyCryptoKeysV2);
      a3 = *v14;
      (*v116)(v54, v14 + *(v67 + 20), v129);
      v54 = type metadata accessor for __DataStorage();
      swift_allocObject();
      v68 = __DataStorage.init(length:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
        {
          goto LABEL_57;
        }

        swift_allocObject();
        v69 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v68 = v69;
      }

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        break;
      }

      v54 = result;
      v70 = __DataStorage._offset.getter();
      v71 = -v70;
      if (__OFSUB__(0, v70))
      {
        goto LABEL_54;
      }

      v72 = __DataStorage._length.getter();
      if (v72 >= 32)
      {
        v73 = 32;
      }

      else
      {
        v73 = v72;
      }

      bzero((v54 + v71), v73);

      v67 = v125;
      v74 = (v14 + *(v125 + 24));
      v75 = *v74;
      v76 = v74[1];
      sub_100017D5C(*v74, v76);
      sub_10108FCC4(v14, type metadata accessor for FamilyCryptoKeysV2);
      *v23 = a3;
      a3 = v128;
      (*v114)(&v23[v128[5]], v126, v129);
      v77 = &v23[a3[6]];
      *v77 = 0x2000000000;
      *(v77 + 1) = v68 | 0x4000000000000000;
      *(v77 + 2) = v75;
      *(v77 + 3) = v76;
      *(v77 + 2) = v113;
      v131 = v64;
      v79 = v64[2];
      v78 = v64[3];
      if (v79 >= v78 >> 1)
      {
        sub_101124028((v78 > 1), v79 + 1, 1);
        v64 = v131;
      }

      ++v65;
      v64[2] = v79 + 1;
      sub_10025DC70(v23, v64 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v79);
      v66 = v124;
      v54 = v126;
      if (v115 == v65)
      {
        v52 = v112;
        v61 = MyAccessoryFamilyKeyEnvelope;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    if (a3 != 2)
    {
      v36 = v119;
      if (a3 == 1)
      {
        result = sub_100593CE0(&v105 - v34);
        if (!v36)
        {
          sub_101136210(v113, v35, *&v35[*(v32 + 20)]);
          return sub_10108FCC4(v35, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
        }

        return result;
      }

      v54 = static os_log_type_t.default.getter();
      if (qword_101695030 == -1)
      {
LABEL_16:
        v55 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_10138BBE0;
        LOBYTE(v131) = v118;
        v57 = String.init<A>(describing:)();
        v59 = v58;
        *(v56 + 56) = &type metadata for String;
        v60 = sub_100008C00();
        *(v56 + 32) = v57;
        *(v56 + 40) = v59;
        *(v56 + 96) = &type metadata for Int;
        *(v56 + 104) = &protocol witness table for Int;
        *(v56 + 64) = v60;
        *(v56 + 72) = a3;
        os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v55, "Unsupported version of %{public}@: %d", 37, 2, v56);
      }

LABEL_59:
      swift_once();
      goto LABEL_16;
    }

    v38 = v115;
    v39 = v119;
    result = sub_100593F98(v115);
    if (!v39)
    {
      (*(v110 + 16))(v114, v38, v111);
      v40 = *&v38[*(v30 + 20)];
      v41 = *(v40 + 16);
      if (v41)
      {
        v119 = 0;
        v131 = _swiftEmptyArrayStorage;
        sub_101124028(0, v41, 0);
        v42 = v131;
        v43 = v40 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v126 = *(v106 + 72);
        v44 = (v108 + 16);
        do
        {
          sub_10108FC3C(v43, v17, type metadata accessor for FamilyCryptoKeysV1);
          v45 = *v17;
          v46 = v128;
          (*v44)(&v25[v128[5]], &v17[v121[5]], v129);
          sub_100DE5F74(v130);
          sub_10108FCC4(v17, type metadata accessor for FamilyCryptoKeysV1);
          *v25 = v45;
          v47 = &v25[v46[6]];
          v48 = v130[2];
          v49 = v130[0];
          *(v47 + 1) = v130[1];
          *(v47 + 2) = v48;
          *v47 = v49;
          v131 = v42;
          v51 = v42[2];
          v50 = v42[3];
          if (v51 >= v50 >> 1)
          {
            sub_101124028((v50 > 1), v51 + 1, 1);
            v42 = v131;
          }

          v42[2] = v51 + 1;
          sub_10025DC70(v25, v42 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v51);
          v43 += v126;
          --v41;
        }

        while (v41);
        v38 = v115;
      }

      else
      {
        v42 = _swiftEmptyArrayStorage;
      }

      v80 = type metadata accessor for Transaction();
      __chkstk_darwin(v80);
      v81 = v114;
      *(&v105 - 4) = v109;
      *(&v105 - 3) = v81;
      *(&v105 - 2) = v42;
      *(&v105 - 1) = _swiftEmptyArrayStorage;
      static Transaction.named<A>(_:with:)();

      sub_10108FCC4(v38, type metadata accessor for SelfBeaconingKeyEnvelope);
      return (*(v110 + 8))(v81, v111);
    }
  }

  return result;
}

uint64_t sub_10108FB0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10108FC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10108FCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10108FD6C(uint64_t a1)
{
  sub_1000198E8();
  scale<A, B>(_:_:)();
  return v2;
}

uint64_t sub_10108FDDC(uint64_t a1)
{
  sub_1000198E8();
  scale<A, B>(_:_:)();
  return v2;
}

uint64_t sub_10108FE4C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BeaconStoreFileRecord(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10108FEC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(type metadata accessor for URL() - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + *(v6 + 80)) & ~*(v6 + 80);
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v9 = v7 + v8;
  if (v9 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v15 < 2)
    {
LABEL_28:
      v17 = *(a1 + v10);
      if (v17 >= 2)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_28;
  }

LABEL_17:
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

  return (v11 | v16) + 255;
}

void sub_101090064(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = *(v8 + 64);
  v10 = (v9 + *(v8 + 80)) & ~*(v8 + 80);
  if (!*(v8 + 84))
  {
    ++v9;
  }

  v11 = v9 + v10;
  if (v11 <= v7)
  {
    v11 = v7;
  }

  v12 = v11 + 1;
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 254) >> (8 * v12)) + 1;
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

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v12 >= 4)
    {
      bzero(a1, v11 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v11 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_41:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v11] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_26;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t type metadata accessor for BeaconStoreFileRecord(uint64_t a1)
{
  result = qword_1016C5788;
  if (!qword_1016C5788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101090310(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10073FACC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t (*sub_101090394(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10109BBF4(v3, v8);
  return sub_1010904AC;
}

uint64_t (*sub_1010904B0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10109BD34(v3, v8);
  return sub_10109C944;
}

void sub_1010905C8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_101090640()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C578);
  sub_1000076D4(v0, qword_10177C578);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010906C0()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v4, qword_1016C57C0);
  sub_1000076D4(v4, qword_1016C57C0);
  *v3 = 60;
  (*(v1 + 104))(v3, enum case for DispatchTimeInterval.seconds(_:), v0);
  return OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)();
}

uint64_t sub_1010907CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C57D8);
  v1 = sub_1000076D4(v0, qword_1016C57D8);
  if (qword_1016951D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C578);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1010908E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    v8 = type metadata accessor for Date();
    v9 = swift_dynamicCast();
    v10 = *(v8 - 8);
    (*(v10 + 56))(v4, v9 ^ 1u, 1, v8);
    if ((*(v10 + 48))(v4, 1, v8) != 1)
    {
      return (*(v10 + 32))(a1, v4, v8);
    }
  }

  else
  {
    sub_10000B3A8(v15, &unk_1016A0B10, &qword_10139BF40);
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  }

  sub_10000B3A8(v4, &unk_101696900, &unk_10138B1E0);
  return static Date.distantPast.getter();
}

id sub_101090B40()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 BOOLForKey:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_101090CA8(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    [v9 setBool:a1 & 1 forKey:v10];
  }

  else
  {
    __break(1u);
  }
}

void *sub_101090E18(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC488();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000BC4D4(&unk_1016AA5C8, &qword_1013BD248);
  swift_allocObject();
  v2[5] = AsyncStreamProvider.init()();
  v2[6] = _swiftEmptyDictionarySingleton;
  v2[8] = 0;
  v2[9] = 0;
  v2[7] = &_swiftEmptySetSingleton;
  v9 = v13;
  v2[3] = v12;
  v2[4] = v9;
  return v2;
}

uint64_t sub_1010910D0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_1000BC4D4(&qword_1016AA780, &qword_1013BD3D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = (&v45 - v8);
  v9 = sub_1000BC4D4(&qword_1016A8E88, &qword_1013BA3F8);
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = sub_1000BC4D4(&qword_1016A8E90, &unk_1013BA400);
  v13 = *(v12 - 8);
  v55 = v12;
  v56 = v13;
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  v16 = sub_1000BC4D4(&qword_1016C59F0, &qword_101400B98);
  v58 = *(v16 - 8);
  v59 = v16;
  __chkstk_darwin(v16);
  v57 = &v45 - v17;

  unsafeFromAsyncTask<A>(_:)();

  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  v18 = qword_101698690;
  v19 = qword_101698690 + 1;
  if (qword_101698690 == -1)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v51 = v2;
  if (v19 >= 0x3E8)
  {
    v19 = 1;
  }

  qword_101698690 = v19;
  if (qword_1016951E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v48 = v7;
  v49 = v6;
  v50 = v5;
  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_1016C57D8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v47 = v18;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v60 = v18;
    v61 = v25;
    *v24 = 136315138;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = sub_1000136BC(v26, v27, &v61);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s Setting up beacon record subscription", v24, 0xCu);
    sub_100007BAC(v25);
  }

  v46 = v0[3];
  v61 = sub_100A96C40();
  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.compactMap<A>(_:)();

  sub_1000041A4(&qword_1016A8E98, &qword_1016A8E88, &qword_1013BA3F8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v29 = v53;
  Publisher.filter(_:)();
  (*(v52 + 8))(v11, v29);
  sub_1000BC4D4(&qword_1016AA798, &qword_101400BB0);
  v30 = v0[2];
  v31 = v54;
  *v54 = v30;
  v32 = v30;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v34 = v48;
  v33 = v49;
  (*(v48 + 104))(v31, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v49);
  v35 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v36 = v50;
  (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
  sub_1000BC488();
  sub_1000041A4(&qword_1016A8EA0, &qword_1016A8E90, &unk_1013BA400, &protocol conformance descriptor for Publishers.Filter<A>);
  sub_10109C768(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v37 = v57;
  v38 = v55;
  Publisher.collect<A>(_:options:)();
  sub_10000B3A8(v36, &unk_1016B0FE0, &unk_101391980);
  (*(v34 + 8))(v31, v33);
  (*(v56 + 8))(v15, v38);
  v39 = swift_allocObject();
  v41 = v46;
  v40 = v47;
  *(v39 + 16) = v0;
  *(v39 + 24) = v41;
  *(v39 + 32) = v40;
  *(v39 + 40) = 0;
  *(v39 + 48) = v51;
  sub_1000041A4(&qword_1016C59F8, &qword_1016C59F0, &qword_101400B98, &protocol conformance descriptor for Publishers.CollectByTime<A, B>);

  v42 = v59;
  v43 = Publisher<>.sink(receiveValue:)();

  (*(v58 + 8))(v37, v42);
  v1[9] = v43;
}

uint64_t sub_1010918DC(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1010919A8;

  return daemon.getter();
}

uint64_t sub_1010919A8(uint64_t a1)
{
  *(*v1 + 40) = a1;

  type metadata accessor for Daemon();
  sub_10109C768(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101091B00, v3, v2);
}

uint64_t sub_101091B00()
{
  *(v0 + 48) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_101091B74, 0, 0);
}

uint64_t sub_101091B74()
{
  if (qword_101694AD0 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B730;
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  swift_weakInit();
  v5 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_101091CAC;

  return v5(v1, &unk_101400BC0, v2);
}

uint64_t sub_101091CAC(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_101091DD0, 0, 0);
}

uint64_t sub_101091DD0()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_101400BD0, v4);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v5 = v0[1];

  return v5();
}

uint64_t sub_101091F20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_100E28A94;

    return sub_1010927EC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_101092008(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 112))(v1, v2) & 1;
}

void sub_10109205C(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v61 = a5;
  v60 = a4;
  v65 = type metadata accessor for UUID();
  v8 = *(v65 - 8);
  __chkstk_darwin(v65);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v59 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v20 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v18 = a2[2];
  *v16 = v18;
  (*(v20 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v21 = *(v20 + 8);
  LOBYTE(v20) = v20 + 8;
  v21(v16, v14);
  if ((v18 & 1) == 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v59 = a2;
  v20 = v17[2];
  v16 = v17;
  if (v20)
  {
    v22 = 0;
    v23 = (v16 + 4);
    v64 = (v8 + 8);
    a2 = _swiftEmptyArrayStorage;
    v62 = v10;
    v63 = a3;
    while (v22 < v16[2])
    {
      sub_10001F280(v23, &v69);
      v25 = v70;
      v24 = v71;
      sub_1000035D0(&v69, v70);
      (*(*(*(v24 + 8) + 8) + 32))(v25);
      sub_100AC1584(v10, v13);
      (*v64)(v10, v65);
      v26 = type metadata accessor for BeaconProductInfoRecord(0);
      LODWORD(v24) = (*(*(v26 - 8) + 48))(v13, 1, v26);
      sub_10000B3A8(v13, &unk_1016AF8C0, &unk_1013A07A0);
      if (v24 == 1)
      {
        sub_100031694(&v69, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, a2[2] + 1, 1);
          a2 = v72;
        }

        v28 = v16;
        v30 = a2[2];
        v29 = a2[3];
        if (v30 >= v29 >> 1)
        {
          sub_100025B1C((v29 > 1), v30 + 1, 1);
        }

        v31 = v67;
        v32 = v68;
        v33 = sub_10015049C(v66, v67);
        __chkstk_darwin(v33);
        v35 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v36 + 16))(v35);
        sub_1006252D4(v30, v35, &v72, v31, v32);
        sub_100007BAC(v66);
        a2 = v72;
        v16 = v28;
        v10 = v62;
      }

      else
      {
        sub_100007BAC(&v69);
      }

      ++v22;
      v23 += 40;
      if (v20 == v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  a2 = _swiftEmptyArrayStorage;
LABEL_14:
  if (a2[2])
  {
    LOBYTE(v20) = v61;
    if (qword_1016951E8 == -1)
    {
LABEL_16:
      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_1016C57D8);
      swift_bridgeObjectRetain_n();
      v38 = Logger.logObject.getter();
      v39 = v16;
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v40))
      {
        v41 = v39;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v69 = v43;
        *v42 = 136315394;
        if (v20)
        {
          v44 = 0;
          v45 = 0xE000000000000000;
        }

        else
        {
          v66[0] = v60;
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = v54;
        }

        v55 = sub_1000136BC(v44, v45, &v69);

        *(v42 + 4) = v55;
        *(v42 + 12) = 2048;
        v56 = v41[2];

        *(v42 + 14) = v56;

        _os_log_impl(&_mh_execute_header, v38, v40, "%s beaconRecordSubscription: Fetching product info for %ld eligible accessories", v42, 0x16u);
        sub_100007BAC(v43);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_101095D74(a2, 0, 0, 0xF000000000000000, v60, v20 & 1, 0, 0);

      return;
    }

LABEL_33:
    swift_once();
    goto LABEL_16;
  }

  v46 = v61;
  if (qword_1016951E8 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_1000076D4(v47, qword_1016C57D8);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v69 = v51;
    *v50 = 136315138;
    if (v46)
    {
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    else
    {
      v66[0] = v60;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v57;
    }

    v58 = sub_1000136BC(v52, v53, &v69);

    *(v50 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v48, v49, "%s beaconRecordSubscription: No eligible accessory to fetch!", v50, 0xCu);
    sub_100007BAC(v51);
  }
}

uint64_t sub_1010927EC()
{
  v1[22] = v0;
  v1[23] = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_10109298C, 0, 0);
}

uint64_t sub_10109298C()
{
  v14 = v0;
  v1 = qword_101698690;
  v0[33] = qword_101698690;
  v2 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  if (v2 >= 0x3E8)
  {
    v2 = 1;
  }

  qword_101698690 = v2;
  if (qword_1016951D8 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v3 = type metadata accessor for Logger();
  v0[34] = sub_1000076D4(v3, qword_10177C578);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[21] = v1;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Received config changed notification. Forcing product info fetch", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = sub_101092B7C;

  return daemon.getter();
}

uint64_t sub_101092B7C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 288) = a1;

  v3 = swift_task_alloc();
  *(v2 + 296) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10109C768(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10109C768(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_101092D58;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_101092D58(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_101093768;
  }

  else
  {

    *(v4 + 304) = a1;
    v5 = sub_101092EAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101092EAC()
{
  v1 = *(v0 + 304);

  return _swift_task_switch(sub_101092F1C, v1, 0);
}

uint64_t sub_101092F1C()
{

  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_101093008;
  v3 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v0 + 160, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v3, v2);
}

uint64_t sub_101093008()
{
  v1 = *(*v0 + 304);

  return _swift_task_switch(sub_101093120, v1, 0);
}

uint64_t sub_101093120()
{

  *(v0 + 320) = *(v0 + 160);

  return _swift_task_switch(sub_101093190, 0, 0);
}

void sub_101093190()
{
  v45 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 32;
    v42 = *(v0 + 40);
    while (v4 < *(v1 + 16))
    {
      sub_10001F280(v5, (v0 + 4));
      v6 = *(v0 + 11);
      v7 = *(v0 + 12);
      sub_1000035D0(v0 + 8, v6);
      if ((*(v7 + 112))(v6, v7))
      {
        sub_100031694(v0 + 4, v0 + 104);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v3[2] + 1, 1);
          v3 = v44;
        }

        v9 = v2;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100025B1C((v10 > 1), v11 + 1, 1);
        }

        v12 = *(v0 + 16);
        v13 = *(v0 + 17);
        v14 = sub_10015049C(v0 + 104, v12);
        v15 = *(v12 - 8);
        v16 = swift_task_alloc();
        (*(v15 + 16))(v16, v14, v12);
        sub_1006252D4(v11, v16, &v44, v12, v13);
        sub_100007BAC(v0 + 13);

        v2 = v9;
        v1 = v42;
        v3 = v44;
      }

      else
      {
        sub_100007BAC(v0 + 8);
      }

      ++v4;
      v5 += 40;
      if (v2 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    if (v3[2])
    {
      v17 = *(v0 + 32);
      v18 = *(v0 + 30);
      v19 = *(v0 + 31);
      v41 = *(v0 + 28);
      v43 = *(v0 + 27);
      v38 = *(v0 + 29);
      v39 = *(v0 + 26);
      v40 = *(v0 + 25);
      v20 = *(v0 + 24);
      v36 = *(v0 + 33);
      v37 = *(v0 + 23);
      v21 = *(v0 + 22);
      v22 = [objc_opt_self() standardUserDefaults];
      static Date.trustedNow.getter(v17);
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v19 + 8))(v17, v18);
      v24 = String._bridgeToObjectiveC()();
      [v22 setObject:isa forKey:v24];

      v25 = swift_allocObject();
      *(v25 + 16) = v3;
      *(v25 + 24) = v21;
      *(v25 + 32) = v36;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 1;
      *(v25 + 72) = xmmword_10138BBF0;
      *(v25 + 88) = v37;
      *(v0 + 6) = sub_10109C920;
      *(v0 + 7) = v25;
      *(v0 + 2) = _NSConcreteStackBlock;
      *(v0 + 3) = 1107296256;
      *(v0 + 4) = sub_100006684;
      *(v0 + 5) = &unk_101663F78;
      v26 = _Block_copy(v0 + 1);

      static DispatchQoS.unspecified.getter();
      *(v0 + 18) = _swiftEmptyArrayStorage;
      sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v40 + 8))(v39, v20);
      (*(v41 + 8))(v38, v43);
    }

    else
    {

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = *(v0 + 33);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v44 = v31;
        *v30 = 136315138;
        *(v0 + 19) = v29;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = sub_1000136BC(v32, v33, &v44);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s No eligible accessory to fetch!", v30, 0xCu);
        sub_100007BAC(v31);
      }
    }

    v35 = *(v0 + 1);

    v35();
  }
}

uint64_t sub_101093768()
{
  v29 = v0;
  if (_swiftEmptyArrayStorage[2])
  {
    v1 = v0[32];
    v3 = v0[30];
    v2 = v0[31];
    v4 = v0[26];
    v26 = v0[28];
    v27 = v0[27];
    v5 = v0[24];
    v24 = v0[29];
    v25 = v0[25];
    v6 = v0[22];
    v22 = v0[33];
    v23 = v0[23];
    v7 = [objc_opt_self() standardUserDefaults];
    static Date.trustedNow.getter(v1);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v1, v3);
    v9 = String._bridgeToObjectiveC()();
    [v7 setObject:isa forKey:v9];

    v10 = swift_allocObject();
    *(v10 + 16) = _swiftEmptyArrayStorage;
    *(v10 + 24) = v6;
    *(v10 + 32) = v22;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 1;
    *(v10 + 72) = xmmword_10138BBF0;
    *(v10 + 88) = v23;
    v0[6] = sub_10109C920;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_101663F78;
    v11 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[18] = _swiftEmptyArrayStorage;
    sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);
    (*(v25 + 8))(v4, v5);
    (*(v26 + 8))(v24, v27);
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[33];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      v0[19] = v14;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = sub_1000136BC(v17, v18, &v28);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s No eligible accessory to fetch!", v15, 0xCu);
      sub_100007BAC(v16);
    }
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_101093B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  aBlock[4] = sub_10109C738;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101663FF0;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v6, v4);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_101093E6C()
{
  v31 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v31);
  v32 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v30 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v4 = *(v34 - 8);
  v5 = __chkstk_darwin(v34);
  v33 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v26 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v0;
  v14 = *(v0 + 16);
  *v12 = v14;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = qword_101698690;
  v19 = qword_101698690 + 1;
  if (qword_101698690 == -1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v19 >= 0x3E8)
  {
    v19 = 1;
  }

  qword_101698690 = v19;
  v27 = v8;
  v28 = 0x8000000101379D50;
  v20 = v8;
  static DispatchQoS.background.getter();
  v21 = swift_allocObject();
  v22 = v13;
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v18;
  v26[1] = v21;
  *(v23 + 32) = 0;
  type metadata accessor for XPCActivity();
  v24 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v24 + 40) = v25;
  swift_unknownObjectWeakInit();
  *(v24 + 88) = 0;
  v26[2] = sub_1000BC488();
  v26[0] = "oductInfoManager";
  *(v24 + 96) = 0;
  *(v24 + 104) = 0;
  (*(v4 + 16))(v33, v20, v34);
  (*(v2 + 104))(v30, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v29);
  v35 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v24 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v24 + 24) = 0xD000000000000030;
  *(v24 + 32) = v28;
  *(v24 + 48) = sub_10109C5A0;
  *(v24 + 56) = 0;
  *(v24 + 64) = sub_10109C5C0;
  *(v24 + 72) = v23;

  sub_100997398();

  (*(v4 + 8))(v27, v34);

  *(v22 + 64) = v24;
}

uint64_t sub_101094394(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      if (qword_1016951D8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177C578);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        if (a6)
        {
          v16 = 0;
          v17 = 0xE000000000000000;
        }

        else
        {
          v16 = dispatch thunk of CustomStringConvertible.description.getter();
          v17 = v18;
        }

        v19 = sub_1000136BC(v16, v17, &v20);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s Running ProductInfoManager scheduled activities.", v14, 0xCu);
        sub_100007BAC(v15);
      }

      sub_1010945AC(a5, a6 & 1, sub_10109C5CC, a1);
    }
  }

  return result;
}

void sub_1010945AC(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v74 = a4;
  v75 = a3;
  v73 = a2;
  v72 = a1;
  v69 = *v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v70 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v61 - v17;
  static Date.trustedNow.getter(&v61 - v17);
  sub_1010908E4(v16);
  Date.timeIntervalSince(_:)();
  v20 = v19;
  v21 = *(v13 + 8);
  v21(v16, v12);
  v66 = v18;
  v68 = v12;
  v67 = v13 + 8;
  v65 = v21;
  v21(v18, v12);
  if (v20 > 604800.0)
  {
    v61 = v10;
    v62 = v8;
    v63 = v9;
    v64 = v6;
    v22 = sub_100007F54();
    v23 = v22;
    v24 = v22[2];
    v25 = _swiftEmptyArrayStorage;
    v26 = v5;
    if (!v24)
    {
LABEL_17:

      if (v25[2])
      {
        v47 = [objc_opt_self() standardUserDefaults];
        v48 = v66;
        static Date.trustedNow.getter(v66);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v65(v48, v68);
        v50 = String._bridgeToObjectiveC()();
        [v47 setObject:isa forKey:v50];

        v51 = swift_allocObject();
        *(v51 + 16) = v25;
        *(v51 + 24) = v5;
        *(v51 + 32) = v72;
        *(v51 + 40) = v73 & 1;
        v53 = v74;
        v52 = v75;
        *(v51 + 48) = v75;
        *(v51 + 56) = v53;
        *(v51 + 64) = 0;
        *(v51 + 72) = xmmword_10138BBF0;
        *(v51 + 88) = v69;
        v79 = sub_10109C920;
        v80 = v51;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v77 = sub_100006684;
        v78 = &unk_101663F00;
        v54 = _Block_copy(&aBlock);

        sub_100012908(v52, v53);
        v55 = v70;
        static DispatchQoS.unspecified.getter();
        v81[0] = _swiftEmptyArrayStorage;
        sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v56 = v62;
        v57 = v64;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v54);
        (*(v71 + 8))(v56, v57);
        (*(v61 + 8))(v55, v63);
      }

      else
      {

        if (v75)
        {
          (v75)(v58);
        }
      }

      return;
    }

    v27 = 0;
    v28 = (v22 + 4);
    while (v27 < v23[2])
    {
      sub_10001F280(v28, &aBlock);
      v29 = v78;
      v30 = v79;
      sub_1000035D0(&aBlock, v78);
      if ((*(v30 + 14))(v29, v30))
      {
        sub_100031694(&aBlock, v81);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v25[2] + 1, 1);
          v25 = v84;
        }

        v33 = v25[2];
        v32 = v25[3];
        if (v33 >= v32 >> 1)
        {
          sub_100025B1C((v32 > 1), v33 + 1, 1);
        }

        v34 = v82;
        v35 = v83;
        v36 = sub_10015049C(v81, v82);
        __chkstk_darwin(v36);
        v38 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v39 + 16))(v38);
        sub_1006252D4(v33, v38, &v84, v34, v35);
        sub_100007BAC(v81);
        v25 = v84;
      }

      else
      {
        sub_100007BAC(&aBlock);
      }

      ++v27;
      v28 += 40;
      if (v24 == v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v26 = v75;
  if (qword_1016951D8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_1000076D4(v40, qword_10177C578);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&aBlock = v44;
    *v43 = 136315650;
    if (v73)
    {
      v45 = 0;
      v46 = 0xE000000000000000;
    }

    else
    {
      v81[0] = v72;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v59;
    }

    v60 = sub_1000136BC(v45, v46, &aBlock);

    *(v43 + 4) = v60;
    *(v43 + 12) = 2050;
    *(v43 + 14) = v20;
    *(v43 + 22) = 2050;
    *(v43 + 24) = 0x4122750000000000;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s Time since last attempt %{public}f. Threshold %{public}f. Not refreshing.", v43, 0x20u);
    sub_100007BAC(v44);
  }

  if (v26)
  {
    v26();
  }
}

uint64_t sub_101094E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 16);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10109C57C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101663E60;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_101095138(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v84 = a2;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  v9 = Locale.identifier.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = objc_opt_self();
  v13 = [v12 standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 stringForKey:v14];

  v85 = v11;
  v83 = v9;
  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v9 == v16 && v11 == v18)
    {
      LOBYTE(v15) = 1;
    }

    else
    {
      LOBYTE(v15) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v20 = sub_101090B40();
  v21 = qword_101698690;
  v22 = qword_101698690 + 1;
  if (qword_101698690 == -1)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v22 >= 0x3E8)
  {
    v22 = 1;
  }

  qword_101698690 = v22;
  if (v20 & v15)
  {

    if (qword_1016951D8 == -1)
    {
LABEL_14:
      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177C578);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = v21;
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v89 = v28;
        *v27 = 136315138;
        v86[0] = v26;
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = sub_1000136BC(v29, v30, &v89);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s Migration has already been completed.", v27, 0xCu);
        sub_100007BAC(v28);
      }

      v32 = v84;
      return v32();
    }

LABEL_49:
    swift_once();
    goto LABEL_14;
  }

  v81 = v21;
  v82 = a3;
  if (v15)
  {
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177C578);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v89 = v37;
      *v36 = 136315138;
      v86[0] = v81;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = sub_1000136BC(v38, v39, &v89);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s Forcing product info fetch as a one time migration.", v36, 0xCu);
      sub_100007BAC(v37);
    }
  }

  else
  {
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177C578);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v21;
      v45 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86[0] = v80;
      *v45 = 136315650;
      *&v89 = v44;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = sub_1000136BC(v46, v47, v86);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2082;
      v49 = [v12 standardUserDefaults];
      v50 = String._bridgeToObjectiveC()();
      v51 = [v49 stringForKey:v50];

      if (v51)
      {
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
      }

      else
      {
        v52 = 0;
        v54 = 0;
      }

      *&v89 = v52;
      *(&v89 + 1) = v54;
      sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
      v55 = String.init<A>(describing:)();
      v57 = sub_1000136BC(v55, v56, v86);

      *(v45 + 14) = v57;
      *(v45 + 22) = 2082;
      *(v45 + 24) = sub_1000136BC(v83, v85, v86);
      _os_log_impl(&_mh_execute_header, v42, v43, "%s Forcing product info fetch due to locale change. Previous: [%{public}s], new: [%{public}s].", v45, 0x20u);
      swift_arrayDestroy();
    }
  }

  v58 = sub_100007F54();
  v21 = v58;
  v59 = v58[2];
  if (v59)
  {
    v60 = 0;
    v61 = (v58 + 4);
    v62 = _swiftEmptyArrayStorage;
    while (v60 < *(v21 + 16))
    {
      sub_10001F280(v61, &v89);
      v63 = v90;
      v64 = v91;
      sub_1000035D0(&v89, v90);
      if ((*(v64 + 112))(v63, v64))
      {
        sub_100031694(&v89, v86);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v62[2] + 1, 1);
          v62 = v92;
        }

        v67 = v62[2];
        v66 = v62[3];
        if (v67 >= v66 >> 1)
        {
          sub_100025B1C((v66 > 1), v67 + 1, 1);
        }

        v68 = v87;
        v69 = v88;
        v70 = sub_10015049C(v86, v87);
        __chkstk_darwin(v70);
        v72 = &v79 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v73 + 16))(v72);
        sub_1006252D4(v67, v72, &v92, v68, v69);
        sub_100007BAC(v86);
        v62 = v92;
      }

      else
      {
        sub_100007BAC(&v89);
      }

      ++v60;
      v61 += 40;
      if (v59 == v60)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v62 = _swiftEmptyArrayStorage;
LABEL_43:

  if (v62[2])
  {
    v74 = swift_allocObject();
    v76 = v82;
    v75 = v83;
    v74[2] = a1;
    v74[3] = v75;
    v77 = v84;
    v74[4] = v85;
    v74[5] = v77;
    v74[6] = v76;

    sub_101095D74(v62, 1, 0, 0xF000000000000000, v81, 0, sub_10109C588, v74);
  }

  v32 = v84;
  return v32();
}

uint64_t sub_101095A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v21 = a5;
  v22 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  [v12 setObject:v13 forKey:v14];

  aBlock[4] = sub_10109C598;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101663EB0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v11, v19);

  return v22(v16);
}

uint64_t sub_101095D74(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v27 = a5;
  v29 = a4;
  v28 = a2;
  v15 = *v9;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v9[2];
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v9;
  *(v21 + 32) = v27;
  *(v21 + 40) = a6 & 1;
  *(v21 + 48) = a7;
  *(v21 + 56) = a8;
  v22 = a7;
  v23 = a8;
  *(v21 + 64) = v28;
  v24 = v29;
  *(v21 + 72) = a3;
  *(v21 + 80) = v24;
  *(v21 + 88) = v15;
  aBlock[4] = sub_10109BBF0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101663CA8;
  v25 = _Block_copy(aBlock);

  sub_100012908(v22, v23);
  sub_10002E98C(a3, v24);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v33 + 8))(v18, v16);
  (*(v30 + 8))(v20, v32);
}

void sub_1010960E4(void *a1, void *a2, void *a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v233 = a8;
  v223 = a7;
  v222 = a6;
  v226 = a5;
  v218 = a4;
  v228 = a3;
  v213 = type metadata accessor for DispatchWorkItemFlags();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v210 = v203 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for DispatchQoS();
  v209 = *(v211 - 8);
  __chkstk_darwin(v211);
  v208 = v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for DispatchQoS.QoSClass();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v15 - 8);
  v221 = v203 - v16;
  v220 = type metadata accessor for BeaconProductInfoRecord(0);
  v216 = *(v220 - 8);
  __chkstk_darwin(v220);
  v215 = v203 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v19 = __chkstk_darwin(v18 - 8);
  v229 = v203 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v234 = v203 - v21;
  v22 = type metadata accessor for AccessoryMetadata(0);
  v224 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v227 = v203 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v232 = v203 - v25;
  v242 = type metadata accessor for UUID();
  v26 = *(v242 - 8);
  v27 = __chkstk_darwin(v242);
  v217 = (v203 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v225 = v203 - v30;
  v31 = __chkstk_darwin(v29);
  v235 = v203 - v32;
  v33 = __chkstk_darwin(v31);
  v236 = v203 - v34;
  v35 = __chkstk_darwin(v33);
  v219 = v203 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = v203 - v38;
  __chkstk_darwin(v37);
  v41 = v203 - v40;
  v42 = a1[2];
  swift_beginAccess();
  v43 = _swiftEmptyArrayStorage;
  v240 = a2;
  v241 = v26;
  v237 = v42;
  v231 = a1;
  v214 = v22;
  if (v42)
  {
    v44 = a1 + 4;
    *&v238 = v26 + 8;
    v239 = v39;
    while (1)
    {
      sub_10001F280(v44, &aBlock);
      v45 = a2[6];
      v47 = v245;
      v46 = v246;
      sub_1000035D0(&aBlock, v245);
      v48 = *(*(v46 + 1) + 8);
      v49 = *(v48 + 32);

      v49(v47, v48);
      if (!*(v45 + 16))
      {
        break;
      }

      sub_1000210EC(v41);
      v51 = v50;
      (*v238)(v41, v242);

      if ((v51 & 1) == 0)
      {
        goto LABEL_9;
      }

      sub_100007BAC(&aBlock);
LABEL_4:
      v39 = v239;
      a2 = v240;
      v44 += 5;
      if (!--v42)
      {
        goto LABEL_14;
      }
    }

    (*v238)(v41, v242);

LABEL_9:
    sub_100031694(&aBlock, &v248);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v252 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100025B1C(0, v43[2] + 1, 1);
      v43 = v252;
    }

    v54 = v43[2];
    v53 = v43[3];
    if (v54 >= v53 >> 1)
    {
      sub_100025B1C((v53 > 1), v54 + 1, 1);
    }

    v55 = v249;
    v56 = v250;
    v57 = sub_10015049C(&v248, v249);
    __chkstk_darwin(v57);
    v59 = v203 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v59);
    sub_1006252D4(v54, v59, &v252, v55, v56);
    sub_100007BAC(&v248);
    v43 = v252;
    goto LABEL_4;
  }

LABEL_14:
  v61 = v43[2];
  v62 = &qword_101695000;
  if (!v61)
  {

    v84 = v237;
LABEL_27:

    v85 = v222;
    if (v62[59] != -1)
    {
LABEL_104:
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_1000076D4(v86, qword_10177C578);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v248 = v90;
      *v89 = 136315651;
      if (v218)
      {
        v91 = 0;
        v92 = 0xE000000000000000;
      }

      else
      {
        *&aBlock = v228;
        v91 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v93;
      }

      v94 = sub_1000136BC(v91, v92, &v248);

      *(v89 + 4) = v94;
      *(v89 + 12) = 2160;
      *(v89 + 14) = 1752392040;
      *(v89 + 22) = 2081;
      if (v84)
      {
        *&v238 = v90;
        LODWORD(v239) = v88;
        v252 = _swiftEmptyArrayStorage;
        sub_101123D4C(0, v84, 0);
        v95 = v252;
        v96 = (v231 + 4);
        v97 = v84;
        v98 = v217;
        do
        {
          sub_10001F280(v96, &aBlock);
          v100 = v245;
          v99 = v246;
          sub_1000035D0(&aBlock, v245);
          (*(*(*(v99 + 1) + 8) + 32))(v100);
          sub_100007BAC(&aBlock);
          v252 = v95;
          v102 = v95[2];
          v101 = v95[3];
          if (v102 >= v101 >> 1)
          {
            sub_101123D4C((v101 > 1), v102 + 1, 1);
            v95 = v252;
          }

          v95[2] = v102 + 1;
          (*(v241 + 32))(v95 + ((*(v241 + 80) + 32) & ~*(v241 + 80)) + *(v241 + 72) * v102, v98, v242);
          v96 += 40;
          --v97;
        }

        while (v97);
        v84 = v237;
        LOBYTE(v88) = v239;
      }

      v103 = Array.description.getter();
      v105 = v104;

      v106 = sub_1000136BC(v103, v105, &v248);

      *(v89 + 24) = v106;
      _os_log_impl(&_mh_execute_header, v87, v88, "%s Already fetching product info for beacons %{private,mask.hash}s", v89, 0x20u);
      swift_arrayDestroy();

      v85 = v222;
      a2 = v240;
    }

    else
    {
    }

    v107 = v226;
    v108 = v228;
    v109 = v218;
    v110 = v231;
    if (v84)
    {
      v111 = v231 + 4;
      do
      {
        sub_101097C28(v111, v107, v85, v108, v109 & 1, v110, a2);
        v111 += 5;
        --v84;
      }

      while (v84);
    }

    return;
  }

  *&v238 = a9;
  v204 = a10;
  v248 = _swiftEmptyArrayStorage;
  sub_101123D4C(0, v61, 0);
  v63 = v248;
  v64 = v39;
  v65 = (v43 + 4);
  v66 = v242;
  do
  {
    sub_10001F280(v65, &aBlock);
    v68 = v245;
    v67 = v246;
    sub_1000035D0(&aBlock, v245);
    (*(*(*(v67 + 1) + 8) + 32))(v68);
    sub_100007BAC(&aBlock);
    v248 = v63;
    v70 = *(v63 + 16);
    v69 = *(v63 + 24);
    if (v70 >= v69 >> 1)
    {
      sub_101123D4C((v69 > 1), v70 + 1, 1);
      v63 = v248;
    }

    *(v63 + 16) = v70 + 1;
    v71 = (*(v241 + 80) + 32) & ~*(v241 + 80);
    v72 = *(v241 + 72);
    (*(v241 + 32))(v63 + v71 + v72 * v70, v64, v66);
    v65 += 40;
    --v61;
  }

  while (v61);
  v230 = v72;
  v73 = v43[2];

  if (!v73)
  {
    a2 = v240;
    v84 = v237;
    v62 = &qword_101695000;
    goto LABEL_27;
  }

  v74 = v237;
  if (qword_1016951D8 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  v76 = sub_1000076D4(v75, qword_10177C578);

  v203[1] = v76;
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();

  v79 = os_log_type_enabled(v77, v78);
  v80 = v214;
  if (v79)
  {
    v81 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v81 = 136315907;
    if (v218)
    {
      v82 = 0;
      v83 = 0xE000000000000000;
    }

    else
    {
      v248 = v228;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v112;
    }

    v113 = sub_1000136BC(v82, v83, &aBlock);

    *(v81 + 4) = v113;
    *(v81 + 12) = 2160;
    *(v81 + 14) = 1752392040;
    *(v81 + 22) = 2081;
    v114 = Array.description.getter();
    v116 = sub_1000136BC(v114, v115, &aBlock);

    *(v81 + 24) = v116;
    *(v81 + 32) = 1024;
    *(v81 + 34) = v223 & 1;
    _os_log_impl(&_mh_execute_header, v77, v78, "%s fetchProductInfo for beacons %{private,mask.hash}s. Force [%{BOOL}d]", v81, 0x26u);
    swift_arrayDestroy();
  }

  v117 = v234;
  v118 = _swiftEmptyArrayStorage;
  v119 = v229;
  if (v74)
  {
    v120 = (v231 + 4);
    v121 = (v224 + 48);
    v217 = (v241 + 8);
    v216 += 6;
    v239 = (v224 + 56);
    while (1)
    {
      v237 = v74;
      sub_10001F280(v120, &aBlock);
      sub_10001F280(&aBlock, &v248);
      v123 = v233;
      v124 = v238;
      sub_10002E98C(v233, v238);
      sub_100D5D0A4(&v248, v123, v124, v119);
      v125 = *v121;
      if ((*v121)(v119, 1, v80) != 1)
      {
        break;
      }

      sub_10000B3A8(v119, &qword_1016A62A0, &unk_101396E10);
      (*v239)(v117, 1, 1, v80);
LABEL_59:
      sub_100007BAC(&aBlock);
      if (v125(v117, 1, v80) == 1)
      {
        sub_10000B3A8(v117, &qword_1016A62A0, &unk_101396E10);
        v122 = v237;
      }

      else
      {
        sub_10109C444(v117, v232, type metadata accessor for AccessoryMetadata);
        v140 = swift_isUniquelyReferenced_nonNull_native();
        v122 = v237;
        if ((v140 & 1) == 0)
        {
          v118 = sub_100A5EEF8(0, v118[2] + 1, 1, v118);
        }

        v142 = v118[2];
        v141 = v118[3];
        if (v142 >= v141 >> 1)
        {
          v118 = sub_100A5EEF8((v141 > 1), v142 + 1, 1, v118);
        }

        v118[2] = v142 + 1;
        sub_10109C444(v232, v118 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v142, type metadata accessor for AccessoryMetadata);
        v119 = v229;
        v117 = v234;
      }

      v120 += 40;
      v74 = v122 - 1;
      if (!v74)
      {
        goto LABEL_65;
      }
    }

    v231 = v118;
    v126 = v227;
    sub_10109C444(v119, v227, type metadata accessor for AccessoryMetadata);
    if (v223)
    {
      v127 = (v126 + *(v80 + 64));

      *v127 = 0;
      v127[1] = 0xE000000000000000;
    }

    else
    {
      v129 = v245;
      v128 = v246;
      sub_1000035D0(&aBlock, v245);
      v130 = v219;
      (*(*(*(v128 + 1) + 8) + 32))(v129);
      v131 = v221;
      sub_100AC1584(v130, v221);
      (*v217)(v130, v242);
      v132 = v220;
      if ((*v216)(v131, 1, v220) == 1)
      {
        sub_10000B3A8(v131, &unk_1016AF8C0, &unk_1013A07A0);
        v119 = v229;
        v133 = v80;
        v126 = v227;
LABEL_58:
        v117 = v234;
        sub_10109C4AC(v126, v234, type metadata accessor for AccessoryMetadata);
        (*v239)(v117, 0, 1, v133);
        sub_10109C514(v126, type metadata accessor for AccessoryMetadata);
        v80 = v133;
        v118 = v231;
        goto LABEL_59;
      }

      v134 = v131;
      v135 = v215;
      sub_10109C444(v134, v215, type metadata accessor for BeaconProductInfoRecord);
      v136 = (v135 + *(v132 + 68));
      v138 = *v136;
      v137 = v136[1];

      sub_10109C514(v135, type metadata accessor for BeaconProductInfoRecord);
      v126 = v227;
      v139 = (v227 + *(v80 + 64));

      *v139 = v138;
      v139[1] = v137;
      v119 = v229;
    }

    v133 = v80;
    goto LABEL_58;
  }

LABEL_65:
  if (v118[2])
  {
    a2 = *(v63 + 16);
    v143 = v226;
    v144 = v228;
    v145 = v236;
    if (!a2)
    {
LABEL_92:
      v183 = type metadata accessor for Transaction();
      __chkstk_darwin(v183);
      v203[-6] = v240;
      v203[-5] = v118;
      v203[-4] = v63;
      v203[-3] = v144;
      LOBYTE(v203[-2]) = v218 & 1;
      v203[-1] = v204;
      static Transaction.named<A>(_:with:)();

      return;
    }

    v146 = *(v241 + 16);
    v241 += 16;
    v239 = (v241 - 8);
    v85 = v63 + v71;
    v238 = xmmword_101385D80;
    v237 = v146;
    while (1)
    {
      v84 = v241;
      v150 = v242;
      (v146)(v145, v85, v242);
      if (!v143)
      {
        break;
      }

      v151 = v146;
      v152 = a2;
      a2 = v118;
      v153 = v235;
      (v151)(v235, v145, v150);
      sub_1000BC4D4(&qword_1016B3C40, &qword_1013D49C8);
      v154 = swift_allocObject();
      *(v154 + 16) = v238;
      v155 = swift_allocObject();
      *(v155 + 16) = v143;
      *(v155 + 24) = v222;
      *(v154 + 32) = sub_10013A884;
      *(v154 + 40) = v155;
      v156 = v240;
      swift_beginAccess();

      v157 = swift_isUniquelyReferenced_nonNull_native();
      v248 = v156[6];
      v158 = v248;
      v156[6] = 0x8000000000000000;
      v160 = sub_1000210EC(v153);
      v161 = *(v158 + 16);
      v162 = (v159 & 1) == 0;
      v163 = v161 + v162;
      if (__OFADD__(v161, v162))
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v84 = v159;
      if (*(v158 + 24) >= v163)
      {
        v118 = a2;
        if ((v157 & 1) == 0)
        {
          sub_10100EB80();
        }
      }

      else
      {
        sub_100FF82C8(v163, v157);
        v164 = sub_1000210EC(v235);
        if ((v84 & 1) != (v165 & 1))
        {
          goto LABEL_105;
        }

        v160 = v164;
        v118 = a2;
      }

      a2 = v152;
      v177 = v248;
      v146 = v237;
      if (v84)
      {
        *(v248[7] + 8 * v160) = v154;
      }

      else
      {
        v248[(v160 >> 6) + 8] |= 1 << v160;
        (v146)(v177[6] + v160 * v230, v235, v242);
        *(v177[7] + 8 * v160) = v154;
        v178 = v177[2];
        v173 = __OFADD__(v178, 1);
        v179 = v178 + 1;
        if (v173)
        {
          goto LABEL_102;
        }

        v177[2] = v179;
      }

      v147 = *v239;
      v148 = &v253;
LABEL_70:
      v149 = v242;
      v147(*(v148 - 32), v242);
      v240[6] = v177;
      swift_endAccess();
      v147(v236, v149);
      v85 += v230;
      a2 = (a2 - 1);
      v143 = v226;
      v144 = v228;
      v145 = v236;
      if (!a2)
      {
        goto LABEL_92;
      }
    }

    v166 = v225;
    (v146)(v225, v145, v150);
    v167 = v240;
    swift_beginAccess();
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v248 = v167[6];
    v168 = v248;
    v167[6] = 0x8000000000000000;
    v169 = sub_1000210EC(v166);
    v171 = *(v168 + 16);
    v172 = (v170 & 1) == 0;
    v173 = __OFADD__(v171, v172);
    v174 = v171 + v172;
    if (v173)
    {
      goto LABEL_101;
    }

    v175 = v170;
    if (*(v168 + 24) >= v174)
    {
      if ((v84 & 1) == 0)
      {
        v84 = v169;
        sub_10100EB80();
        v169 = v84;
        v177 = v248;
        if (v175)
        {
          goto LABEL_87;
        }

        goto LABEL_89;
      }
    }

    else
    {
      sub_100FF82C8(v174, v84);
      v169 = sub_1000210EC(v225);
      if ((v175 & 1) != (v176 & 1))
      {
LABEL_105:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    v177 = v248;
    if (v175)
    {
LABEL_87:
      *(v177[7] + 8 * v169) = _swiftEmptyArrayStorage;

LABEL_91:
      v147 = *v239;
      v148 = v251;
      goto LABEL_70;
    }

LABEL_89:
    v177[(v169 >> 6) + 8] |= 1 << v169;
    v180 = v169;
    (v146)(v177[6] + v169 * v230, v225, v242);
    *(v177[7] + 8 * v180) = _swiftEmptyArrayStorage;
    v181 = v177[2];
    v173 = __OFADD__(v181, 1);
    v182 = v181 + 1;
    if (v173)
    {
      goto LABEL_103;
    }

    v177[2] = v182;
    goto LABEL_91;
  }

  v184 = Logger.logObject.getter();
  v185 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    *&aBlock = v187;
    *v186 = 136315138;
    if (v218)
    {
      v188 = 0;
      v189 = 0xE000000000000000;
    }

    else
    {
      v248 = v228;
      v188 = dispatch thunk of CustomStringConvertible.description.getter();
      v189 = v190;
    }

    v191 = sub_1000136BC(v188, v189, &aBlock);

    *(v186 + 4) = v191;
    _os_log_impl(&_mh_execute_header, v184, v185, "%s Metadata is empty. Not fetching product info.", v186, 0xCu);
    sub_100007BAC(v187);
  }

  v192 = v226;
  sub_1000BC488();
  v193 = v206;
  v194 = v205;
  v195 = v207;
  (*(v206 + 104))(v205, enum case for DispatchQoS.QoSClass.default(_:), v207);
  v196 = static OS_dispatch_queue.global(qos:)();
  (*(v193 + 8))(v194, v195);
  v197 = swift_allocObject();
  v198 = v222;
  *(v197 + 16) = v192;
  *(v197 + 24) = v198;
  v246 = sub_100150C48;
  v247 = v197;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v244 = sub_100006684;
  v245 = &unk_101663D20;
  v199 = _Block_copy(&aBlock);
  sub_100012908(v192, v198);
  v200 = v208;
  static DispatchQoS.unspecified.getter();
  v248 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v201 = v210;
  v202 = v213;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v199);

  (*(v212 + 8))(v201, v202);
  (*(v209 + 8))(v200, v211);
}

uint64_t sub_101097C28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v66 = a1;
  v67 = a7;
  v69 = type metadata accessor for UUID();
  v14 = *(v69 - 8);
  v15 = __chkstk_darwin(v69);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v20 = v59 - v19;
  v68 = a2;
  if (a2)
  {
    v61 = a4;
    v21 = qword_1016951D8;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C578);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    v62 = v24;
    v25 = os_log_type_enabled(v23, v24);
    v64 = v17;
    v65 = v8;
    if (v25)
    {
      v60 = v23;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v73[0] = v27;
      v63 = v26;
      *v26 = 136315651;
      v59[1] = v27;
      if (a5)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      else
      {
        v70[0] = v61;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v30;
      }

      v31 = sub_1000136BC(v28, v29, v73);

      v32 = v63;
      *(v63 + 1) = v31;
      *(v32 + 6) = 2160;
      *(v32 + 14) = 1752392040;
      *(v32 + 11) = 2081;
      v33 = *(a6 + 16);
      if (v33)
      {
        v61 = a3;
        v74 = _swiftEmptyArrayStorage;
        sub_101123D4C(0, v33, 0);
        v34 = v74;
        v35 = a6 + 32;
        do
        {
          sub_10001F280(v35, v70);
          v37 = v71;
          v36 = v72;
          sub_1000035D0(v70, v71);
          (*(*(*(v36 + 8) + 8) + 32))(v37);
          sub_100007BAC(v70);
          v74 = v34;
          v39 = v34[2];
          v38 = v34[3];
          if (v39 >= v38 >> 1)
          {
            sub_101123D4C((v38 > 1), v39 + 1, 1);
            v34 = v74;
          }

          v34[2] = v39 + 1;
          (*(v14 + 32))(v34 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v39, v20, v69);
          v35 += 40;
          --v33;
        }

        while (v33);
        v17 = v64;
        a3 = v61;
      }

      v40 = Array.description.getter();
      v42 = v41;

      v43 = sub_1000136BC(v40, v42, v73);

      v44 = v63;
      *(v63 + 3) = v43;
      v45 = v60;
      _os_log_impl(&_mh_execute_header, v60, v62, "%s Waiting for %{private,mask.hash}s product info fetch finish.", v44, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v46 = v66[3];
    v47 = v66[4];
    sub_1000035D0(v66, v46);
    (*(*(*(v47 + 8) + 8) + 32))(v46);
    v48 = sub_101090894(v70);
    v50 = sub_1010904B0(v73);
    if (*v49)
    {
      v51 = v49;
      v52 = swift_allocObject();
      v53 = v68;
      *(v52 + 16) = v68;
      *(v52 + 24) = a3;
      v54 = *v51;
      sub_100012908(v53, a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v51 = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v54 = sub_100A5EF20(0, v54[2] + 1, 1, v54);
        *v51 = v54;
      }

      v57 = v54[2];
      v56 = v54[3];
      if (v57 >= v56 >> 1)
      {
        v54 = sub_100A5EF20((v56 > 1), v57 + 1, 1, v54);
        *v51 = v54;
      }

      v54[2] = v57 + 1;
      v58 = &v54[2 * v57];
      v58[4] = sub_100150F2C;
      v58[5] = v52;
      (v50)(v73, 0);
      (*(v14 + 8))(v64, v69);
      (v48)(v70, 0);
    }

    else
    {
      (v50)(v73, 0);
      (*(v14 + 8))(v17, v69);
      (v48)(v70, 0);
    }

    return sub_1000BB27C(v68, a3);
  }

  return result;
}

uint64_t sub_1010981E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v52 = a6;
  v51 = a5;
  v53 = a4;
  v54 = a1;
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v42 = sub_1000BC4D4(&qword_1016C7CC0, &qword_1013BB5D8);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v56 = &v36 - v11;
  v12 = sub_1000BC4D4(&qword_1016C59C0, &qword_101400B80);
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v41 = &v36 - v13;
  v14 = sub_1000BC4D4(&qword_1016C59C8, &qword_101400B88);
  v46 = *(v14 - 8);
  v47 = v14;
  __chkstk_darwin(v14);
  v45 = &v36 - v15;
  v16 = sub_1000BC4D4(&qword_1016C59D0, &qword_101400B90);
  v49 = *(v16 - 8);
  v50 = v16;
  __chkstk_darwin(v16);
  v48 = &v36 - v17;
  v57 = sub_100366634(a3);
  v55 = a2;
  v18 = *(a2 + 16);
  v58 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v37 = *(*(v19 - 8) + 56);
  v37(v10, 1, 1, v19);
  v39 = v18;
  sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
  v20 = sub_1000BC488();
  sub_1000041A4(&qword_1016A9530, &qword_1016C7CE0, &unk_10139DA90, &protocol conformance descriptor for Future<A, B>);
  sub_10109C768(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v38 = v20;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

  if (qword_1016951E0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v21, qword_1016C57C0);
  v22 = v39;
  v57 = v39;
  v37(v10, 1, 1, v19);
  sub_1000041A4(&qword_1016C7CF0, &qword_1016C7CC0, &qword_1013BB5D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v41;
  v24 = v42;
  v25 = v56;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

  (*(v40 + 8))(v25, v24);
  sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  sub_1000041A4(&qword_1016C59D8, &qword_1016C59C0, &qword_101400B80, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v26 = v44;
  v27 = v45;
  Publisher.map<A>(_:)();
  (*(v43 + 8))(v23, v26);
  sub_1000BC4D4(&qword_1016A9548, &qword_1013BB510);
  sub_1000041A4(&qword_1016C59E0, &qword_1016C59C8, &qword_101400B88, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A9558, &qword_1016A9548, &qword_1013BB510, &protocol conformance descriptor for Just<A>);
  v28 = v47;
  v29 = v48;
  Publisher.catch<A>(_:)();
  (*(v46 + 8))(v27, v28);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v53;
  *(v31 + 16) = v30;
  *(v31 + 24) = v32;
  v33 = v51;
  *(v31 + 32) = v54;
  *(v31 + 40) = v33;
  *(v31 + 48) = v52 & 1;
  sub_1000041A4(&qword_1016C59E8, &qword_1016C59D0, &qword_101400B90, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v34 = v50;
  Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v29, v34);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1010989A0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  __chkstk_darwin(v2);
  sub_10109C4AC(a1, &v5 - v3, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  swift_storeEnumTagMultiPayload();
  return Just.init(_:)();
}

uint64_t sub_101098A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = type metadata accessor for BluetoothCommunicationCoordinator.Error(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  v16 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  __chkstk_darwin(v16);
  v18 = (&v49 - v17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v53 = a6;
    v52 = a5;
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = a3;

    Transaction.capture()();
    sub_1000D2A70(a1, v18, &qword_10169E748, &unk_10139DAB0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10109C444(v18, v15, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      if (qword_1016951D8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177C578);
      sub_10109C4AC(v15, v13, type metadata accessor for BluetoothCommunicationCoordinator.Error);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v51 = v24;
        v25 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55 = v50;
        *v25 = 136315907;
        if (v53)
        {
          v26 = 0;
          v27 = 0xE000000000000000;
        }

        else
        {
          v54 = v52;
          v26 = dispatch thunk of CustomStringConvertible.description.getter();
          v27 = v35;
        }

        v36 = sub_1000136BC(v26, v27, &v55);

        *(v25 + 4) = v36;
        *(v25 + 12) = 2160;
        *(v25 + 14) = 1752392040;
        *(v25 + 22) = 2081;
        type metadata accessor for UUID();
        v37 = Array.description.getter();
        v39 = sub_1000136BC(v37, v38, &v55);

        *(v25 + 24) = v39;
        *(v25 + 32) = 2082;
        v40 = sub_10118F894();
        v42 = v41;
        sub_10109C514(v13, type metadata accessor for BluetoothCommunicationCoordinator.Error);
        v43 = sub_1000136BC(v40, v42, &v55);

        *(v25 + 34) = v43;
        _os_log_impl(&_mh_execute_header, v23, v51, "%s Failed fetch product info for %{private,mask.hash}s! %{public}s", v25, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_10109C514(v13, type metadata accessor for BluetoothCommunicationCoordinator.Error);
      }

      sub_1010990DC(v20, a3);

      return sub_10109C514(v15, type metadata accessor for BluetoothCommunicationCoordinator.Error);
    }

    else
    {
      v28 = *v18;
      if (qword_1016951D8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_10177C578);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v32 = 136315651;
        if (v53)
        {
          v33 = 0;
          v34 = 0xE000000000000000;
        }

        else
        {
          v54 = v52;
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v44;
        }

        v45 = sub_1000136BC(v33, v34, &v55);

        *(v32 + 4) = v45;
        *(v32 + 12) = 2160;
        *(v32 + 14) = 1752392040;
        *(v32 + 22) = 2081;
        type metadata accessor for UUID();
        v46 = Array.description.getter();
        v48 = sub_1000136BC(v46, v47, &v55);

        *(v32 + 24) = v48;
        _os_log_impl(&_mh_execute_header, v30, v31, "%s Fetched product infos for %{private,mask.hash}s.", v32, 0x20u);
        swift_arrayDestroy();
      }

      sub_1010997D0(v28, a3, v52, v53 & 1, sub_10109C43C, v21);
    }
  }

  return result;
}

uint64_t sub_1010990DC(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(a2 + 16);
    if (v15)
    {
      v45 = sub_1000BC488();
      v16 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      swift_beginAccess();
      v18 = *(v10 + 16);
      v17 = v10 + 16;
      v44 = v18;
      v43 = (v7 + 104);
      v42 = (v7 + 8);
      v56 = *(v17 + 56);
      v41 = enum case for DispatchQoS.QoSClass.default(_:);
      v40 = v59;
      v39 = (v3 + 8);
      v38 = (v5 + 8);
      v47 = v17;
      v55 = (v17 - 8);
      v48 = v9;
      v46 = v12;
      v19 = v51;
      v18(v12, v16, v9);
      while (1)
      {
        v20 = *(v14 + 48);
        if (*(v20 + 16))
        {

          v21 = sub_1000210EC(v12);
          if (v22)
          {
            v23 = *(*(v20 + 56) + 8 * v21);
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = v49;
        v25 = v50;
        (*v43)(v49, v41, v50);
        v26 = static OS_dispatch_queue.global(qos:)();
        (*v42)(v24, v25);
        v27 = swift_allocObject();
        *(v27 + 16) = v23;
        v59[2] = sub_10109C574;
        v59[3] = v27;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v59[0] = sub_100006684;
        v59[1] = &unk_101663E10;
        v28 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        v57 = _swiftEmptyArrayStorage;
        sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v29 = v53;
        v30 = v54;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v28);

        (*v39)(v29, v30);
        (*v38)(v19, v52);

        swift_beginAccess();
        v12 = v46;
        v31 = sub_1000210EC(v46);
        v32 = v48;
        if (v33)
        {
          v34 = v31;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = *(v14 + 48);
          v57 = v36;
          *(v14 + 48) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10100EB80();
            v36 = v57;
          }

          (*v55)((v36[6] + v34 * v56), v32);

          sub_100B27F70();
          *(v14 + 48) = v36;
        }

        swift_endAccess();
        (*v55)(v12, v32);
        v16 += v56;
        if (!--v15)
        {
          break;
        }

        v44(v12, v16, v32);
      }
    }
  }

  return result;
}

uint64_t sub_101099770(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = result + 40;
      do
      {
        v3 = *(v2 - 8);

        v3(v4);

        v2 += 16;
        --v1;
      }

      while (v1);
    }
  }

  return result;
}

void sub_1010997D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v188 = a6;
  v190 = a5;
  v224 = a4;
  v218 = a3;
  v183 = type metadata accessor for DispatchTime();
  v182 = *(v183 - 8);
  v9 = __chkstk_darwin(v183);
  v180 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v181 = &v179 - v11;
  v217 = type metadata accessor for DispatchWorkItemFlags();
  v187 = *(v217 - 8);
  __chkstk_darwin(v217);
  v216 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for DispatchQoS();
  v186 = *(v215 - 8);
  __chkstk_darwin(v215);
  v214 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_1000BC4D4(&qword_1016C59B0, &qword_101400B70);
  v185 = *(v223 - 8);
  __chkstk_darwin(v223);
  v203 = (&v179 - v14);
  v15 = sub_1000BC4D4(&qword_1016C59B8, &qword_101400B78);
  v16 = __chkstk_darwin(v15 - 8);
  v222 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v221 = &v179 - v18;
  v233 = type metadata accessor for AccessoryProductInfo(0);
  isa = v233[-1].isa;
  v19 = __chkstk_darwin(v233);
  v195 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v179 - v22;
  v24 = __chkstk_darwin(v21);
  v194 = &v179 - v25;
  __chkstk_darwin(v24);
  v193 = &v179 - v26;
  v200 = type metadata accessor for SystemInfo.DeviceLockState();
  v27 = *(v200 - 8);
  v28 = __chkstk_darwin(v200);
  v227 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v226 = &v179 - v30;
  v31 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v31 - 8);
  v230 = &v179 - v32;
  v225 = type metadata accessor for BeaconProductInfoRecord(0);
  v229 = *(v225 - 8);
  v33 = __chkstk_darwin(v225);
  v213 = &v179 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v235 = &v179 - v36;
  v184 = v37;
  __chkstk_darwin(v35);
  v192 = &v179 - v38;
  v39 = type metadata accessor for UUID();
  v204 = *(v39 - 8);
  v40 = __chkstk_darwin(v39);
  v179 = &v179 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v191 = &v179 - v43;
  __chkstk_darwin(v42);
  v201 = &v179 - v44;
  v45 = type metadata accessor for DispatchPredicate();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v48 = (&v179 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v228 = v6;
  v49 = *(v6 + 16);
  *v48 = v49;
  (*(v46 + 104))(v48, enum case for DispatchPredicate.onQueue(_:), v45);
  v50 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  (*(v46 + 8))(v48, v45);
  if ((v49 & 1) == 0)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v198 = *(a1 + 16);
  if (!v198)
  {
    if (qword_1016951D8 == -1)
    {
LABEL_36:
      v99 = type metadata accessor for Logger();
      sub_1000076D4(v99, qword_10177C578);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        aBlock[0] = v103;
        *v102 = 136315138;
        if (v224)
        {
          v104 = 0;
          v105 = 0xE000000000000000;
        }

        else
        {
          *&v242 = v218;
          v104 = dispatch thunk of CustomStringConvertible.description.getter();
          v105 = v161;
        }

        v162 = sub_1000136BC(v104, v105, aBlock);

        *(v102 + 4) = v162;
        _os_log_impl(&_mh_execute_header, v100, v101, "%s Empty products in response!", v102, 0xCu);
        sub_100007BAC(v103);
      }

      if (v190)
      {
        v190();
      }

      return;
    }

LABEL_85:
    swift_once();
    goto LABEL_36;
  }

  v51 = *(a2 + 16);
  v234 = v39;
  v219 = v51;
  if (v51)
  {
    v197 = a1;
    v52 = 0;
    v220 = 0;
    v231 = *(v204 + 16);
    v212 = (a2 + ((*(v204 + 80) + 32) & ~*(v204 + 80)));
    v202 = *(v228 + 24);
    v211 = (v27 + 104);
    v210 = (v27 + 8);
    v209 = *(v204 + 72);
    v232 = v204 + 16;
    v208 = (v204 + 8);
    v207 = (v229 + 56);
    v189 = (v229 + 48);
    v206 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v205 = xmmword_101385D80;
    v236 = _swiftEmptyArrayStorage;
    v53 = v200;
    v54 = v201;
    v196 = v23;
    while (1)
    {
      v231(v54, v212 + v209 * v52, v39);
      v55 = static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v56 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v57 = swift_allocObject();
      *(v57 + 16) = v205;
      v58 = UUID.uuidString.getter();
      v59 = v54;
      v61 = v60;
      *(v57 + 56) = &type metadata for String;
      *(v57 + 64) = sub_100008C00();
      *(v57 + 32) = v58;
      *(v57 + 40) = v61;
      os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v56, "beaconRecord(for uuid: %@)", 26, 2, v57);

      v62 = v226;
      static SystemInfo.lockState.getter();
      v63 = v227;
      (*v211)(v227, v206, v53);
      sub_10109C768(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      LOBYTE(v57) = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *v210;
      (*v210)(v63, v53);
      v64(v62, v53);
      if (v57)
      {
        break;
      }

      v67 = sub_100007F54();
      __chkstk_darwin(v67);
      *(&v179 - 2) = v59;
      v68 = v220;
      sub_1000314D0(sub_100030E14, v67, &v242);
      v220 = v68;

      if (!*(&v243 + 1))
      {
        v54 = v59;
        v66 = v230;
        v39 = v234;
        goto LABEL_13;
      }

      sub_100031694(&v242, aBlock);
      v69 = v239;
      v70 = v240;
      sub_1000035D0(aBlock, v239);
      v71 = (*(v70 + 22))(v69, v70);
      v39 = v234;
      if (v72 >> 60 == 15)
      {
        v54 = v201;
        (*v208)(v201, v234);
        sub_100007BAC(aBlock);
LABEL_22:
        v66 = v230;
        goto LABEL_23;
      }

      v73 = v71;
      v74 = v72;
      v75 = v197 + ((*(isa + 80) + 32) & ~*(isa + 80));
      v76 = *(isa + 9);
      v77 = v198;
      v78 = v196;
      while (1)
      {
        sub_10109C4AC(v75, v78, type metadata accessor for AccessoryProductInfo);
        v79 = (v78 + SHIDWORD(v233[4].isa));
        v81 = *v79;
        v80 = v79[1];
        *&v242 = v73;
        *(&v242 + 1) = v74;
        sub_1002313AC();
        if (v81 == RawRepresentable<>.hexString.getter() && v80 == v82)
        {
          break;
        }

        v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v84)
        {
          goto LABEL_28;
        }

        sub_10109C514(v78, type metadata accessor for AccessoryProductInfo);
        v75 += v76;
        if (!--v77)
        {
          v85 = v201;
          v39 = v234;
          (*v208)(v201, v234);
          v86 = v73;
          v54 = v85;
          sub_100006654(v86, v74);
          sub_100007BAC(aBlock);
          v53 = v200;
          goto LABEL_22;
        }
      }

LABEL_28:
      v87 = v194;
      sub_10109C444(v78, v194, type metadata accessor for AccessoryProductInfo);
      v88 = v193;
      sub_10109C444(v87, v193, type metadata accessor for AccessoryProductInfo);
      v89 = v195;
      sub_10109C4AC(v88, v195, type metadata accessor for AccessoryProductInfo);
      v90 = v191;
      v91 = v201;
      v39 = v234;
      v231(v191, v201, v234);
      v66 = v230;
      sub_10083B3C8(v89, v90, v230);
      v92 = v73;
      v54 = v91;
      sub_100006654(v92, v74);
      sub_10109C514(v88, type metadata accessor for AccessoryProductInfo);
      (*v208)(v91, v39);
      v93 = v225;
      (*v207)(v66, 0, 1, v225);
      sub_100007BAC(aBlock);
      v94 = (*v189)(v66, 1, v93);
      v53 = v200;
      if (v94 != 1)
      {
        sub_10109C444(v66, v192, type metadata accessor for BeaconProductInfoRecord);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v95 = v236;
        }

        else
        {
          v95 = sub_100A5F078(0, v236[2] + 1, 1, v236);
        }

        v97 = v95[2];
        v96 = v95[3];
        if (v97 >= v96 >> 1)
        {
          v95 = sub_100A5F078((v96 > 1), v97 + 1, 1, v95);
        }

        v95[2] = v97 + 1;
        v98 = (*(v229 + 80) + 32) & ~*(v229 + 80);
        v236 = v95;
        sub_10109C444(v192, v95 + v98 + *(v229 + 72) * v97, type metadata accessor for BeaconProductInfoRecord);
        goto LABEL_25;
      }

LABEL_24:
      sub_10000B3A8(v66, &unk_1016AF8C0, &unk_1013A07A0);
LABEL_25:
      if (++v52 == v219)
      {
        goto LABEL_40;
      }
    }

    v65 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v56, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
    v244 = 0;
    v242 = 0u;
    v243 = 0u;
    v66 = v230;
    v54 = v59;
    v39 = v234;
LABEL_13:
    (*v208)(v54, v39);
    sub_10000B3A8(&v242, &qword_101696920, &unk_10138B200);
LABEL_23:
    (*v207)(v66, 1, 1, v225);
    goto LABEL_24;
  }

  v220 = 0;
  v236 = _swiftEmptyArrayStorage;
LABEL_40:
  v106 = v236[2];
  if (v106)
  {
    v233 = dispatch_group_create();
    dispatch_group_enter(v233);
    v107 = 0;
    v227 = (v185 + 56);
    v226 = (v185 + 48);
    v219 = v184 + 7;
    v212 = &v238;
    v211 = (v187 + 8);
    v210 = (v186 + 8);
    v225 = v106;
    while (1)
    {
      v108 = v223;
      if (v107 == v106)
      {
        v109 = 1;
        v110 = v106;
        v111 = v222;
      }

      else
      {
        if ((v107 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        if (v107 >= v236[2])
        {
          goto LABEL_83;
        }

        v112 = v236 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v107;
        v113 = *(v223 + 48);
        v114 = v203;
        *v203 = v107;
        sub_10109C4AC(v112, v114 + v113, type metadata accessor for BeaconProductInfoRecord);
        v115 = v114;
        v111 = v222;
        sub_1000D2AD8(v115, v222, &qword_1016C59B0, &qword_101400B70);
        v109 = 0;
        v110 = v107 + 1;
      }

      v116 = v221;
      (*v227)(v111, v109, 1, v108);
      sub_1000D2AD8(v111, v116, &qword_1016C59B8, &qword_101400B78);
      if ((*v226)(v116, 1, v108) == 1)
      {
        break;
      }

      v232 = v110;
      v117 = *v116;
      v118 = v235;
      sub_10109C444(v116 + *(v108 + 48), v235, type metadata accessor for BeaconProductInfoRecord);
      v119 = v228;
      v230 = *(v228 + 24);
      v120 = v213;
      sub_10109C4AC(v118, v213, type metadata accessor for BeaconProductInfoRecord);
      v121 = *(v229 + 80);
      v122 = (v121 + 49) & ~v121;
      v123 = v219;
      v124 = (v219 + v122) & 0xFFFFFFFFFFFFFFF8;
      v125 = swift_allocObject();
      v126 = v236;
      *(v125 + 16) = v117;
      *(v125 + 24) = v126;
      v127 = v218;
      *(v125 + 32) = v233;
      *(v125 + 40) = v127;
      *(v125 + 48) = v224 & 1;
      sub_10109C444(v120, v125 + v122, type metadata accessor for BeaconProductInfoRecord);
      *(v125 + v124) = v119;
      v128 = v230;
      v231 = *(v230 + 72);
      sub_10109C4AC(v118, v120, type metadata accessor for BeaconProductInfoRecord);
      v129 = (v121 + 16) & ~v121;
      v130 = (v123 + v129) & 0xFFFFFFFFFFFFFFF8;
      v131 = swift_allocObject();
      v132 = v131 + v129;
      v39 = v234;
      sub_10109C444(v120, v132, type metadata accessor for BeaconProductInfoRecord);
      *(v131 + v130) = v128;
      v133 = (v131 + ((v130 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v133 = sub_10109BAAC;
      v133[1] = v125;
      v240 = sub_10109BB54;
      v241 = v131;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v238 = sub_100006684;
      v239 = &unk_101663C58;
      v134 = _Block_copy(aBlock);

      v135 = v233;

      v136 = v214;
      static DispatchQoS.unspecified.getter();
      *&v242 = _swiftEmptyArrayStorage;
      sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v137 = v216;
      v138 = v217;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v139 = v134;
      v107 = v232;
      _Block_release(v139);
      v106 = v225;

      (*v211)(v137, v138);
      (*v210)(v136, v215);
      sub_10109C514(v235, type metadata accessor for BeaconProductInfoRecord);
    }

    v140 = v180;
    static DispatchTime.now()();
    v141 = v181;
    + infix(_:_:)();
    v142 = *(v182 + 8);
    v143 = v183;
    v142(v140, v183);
    OS_dispatch_group.wait(timeout:)();
    v142(v141, v143);
    v144 = static DispatchTimeoutResult.== infix(_:_:)();
    v145 = v190;
    if (v144)
    {
      if (qword_1016951D8 != -1)
      {
        swift_once();
      }

      v146 = type metadata accessor for Logger();
      sub_1000076D4(v146, qword_10177C578);
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v149 = 136315394;
        if (v224)
        {
          v150 = 0;
          v151 = 0xE000000000000000;
        }

        else
        {
          *&v242 = v218;
          v150 = dispatch thunk of CustomStringConvertible.description.getter();
          v151 = v165;
        }

        v166 = sub_1000136BC(v150, v151, aBlock);

        *(v149 + 4) = v166;
        *(v149 + 12) = 2080;
        *(v149 + 14) = sub_1000136BC(0xD000000000000044, 0x8000000101379C90, aBlock);
        _os_log_impl(&_mh_execute_header, v147, v148, "%s %s Timed out waiting for all productInfoRecords to be saved!", v149, 0x16u);
        swift_arrayDestroy();
      }
    }

    v167 = v228;
    sub_100A83364(1);
    sub_100A907FC();
    v168 = v236[2];
    if (v168)
    {
      v231 = *(v167 + 40);
      aBlock[0] = _swiftEmptyArrayStorage;
      v169 = v236;
      sub_101123D4C(0, v168, 0);
      v170 = aBlock[0];
      v171 = v169 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
      v232 = *(v229 + 72);
      v172 = (v204 + 16);
      v173 = v179;
      do
      {
        v174 = v235;
        sub_10109C4AC(v171, v235, type metadata accessor for BeaconProductInfoRecord);
        (*v172)(v173, v174, v39);
        sub_10109C514(v174, type metadata accessor for BeaconProductInfoRecord);
        aBlock[0] = v170;
        v175 = v39;
        v177 = v170[2];
        v176 = v170[3];
        if (v177 >= v176 >> 1)
        {
          sub_101123D4C((v176 > 1), v177 + 1, 1);
          v170 = aBlock[0];
        }

        v170[2] = v177 + 1;
        (*(v204 + 32))(v170 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v177, v173, v175);
        v171 += v232;
        --v168;
        v39 = v175;
      }

      while (v168);

      v145 = v190;
    }

    else
    {

      v170 = _swiftEmptyArrayStorage;
    }

    aBlock[0] = v170;
    AsyncStreamProvider.yield(value:transaction:)();

    if (v145)
    {
      (v145)(v178);
    }
  }

  else
  {

    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v152 = type metadata accessor for Logger();
    sub_1000076D4(v152, qword_10177C578);
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.error.getter();
    v155 = os_log_type_enabled(v153, v154);
    v156 = v190;
    if (v155)
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      aBlock[0] = v158;
      *v157 = 136315138;
      if (v224)
      {
        v159 = 0;
        v160 = 0xE000000000000000;
      }

      else
      {
        *&v242 = v218;
        v159 = dispatch thunk of CustomStringConvertible.description.getter();
        v160 = v163;
      }

      v164 = sub_1000136BC(v159, v160, aBlock);

      *(v157 + 4) = v164;
      _os_log_impl(&_mh_execute_header, v153, v154, "%s Failed to match beacons with products from server response!", v157, 0xCu);
      sub_100007BAC(v158);
    }

    if (v156)
    {
      v156();
    }
  }
}

void sub_10109B38C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v50 = a4;
  v51 = a3;
  v52 = a2;
  v12 = type metadata accessor for BeaconProductInfoRecord(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  v18 = sub_1000BC4D4(&qword_1016B5490, &unk_1013D67E0);
  __chkstk_darwin(v18);
  v20 = (&v49 - v19);
  sub_1000D2A70(a1, &v49 - v19, &qword_1016B5490, &unk_1013D67E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C578);
    sub_10109C4AC(a7, v15, type metadata accessor for BeaconProductInfoRecord);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v25 = 136315907;
      if (a6)
      {
        v26 = 0;
        v27 = 0xE000000000000000;
      }

      else
      {
        v53 = a5;
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v34;
      }

      v35 = sub_1000136BC(v26, v27, &v54);

      *(v25 + 4) = v35;
      *(v25 + 12) = 2160;
      *(v25 + 14) = 1752392040;
      *(v25 + 22) = 2081;
      type metadata accessor for UUID();
      sub_10109C768(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      sub_10109C514(v15, type metadata accessor for BeaconProductInfoRecord);
      v39 = sub_1000136BC(v36, v38, &v54);

      *(v25 + 24) = v39;
      *(v25 + 32) = 2082;
      v53 = v21;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v40 = String.init<A>(describing:)();
      v42 = sub_1000136BC(v40, v41, &v54);

      *(v25 + 34) = v42;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s saveLocal failed! Beacon %{private,mask.hash}s: %{public}s", v25, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_10109C514(v15, type metadata accessor for BeaconProductInfoRecord);
    }
  }

  else
  {
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177C578);
    sub_10109C4AC(a7, v17, type metadata accessor for BeaconProductInfoRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v31 = 136315651;
      if (a6)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
      }

      else
      {
        v53 = a5;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v43;
      }

      v44 = sub_1000136BC(v32, v33, &v54);

      *(v31 + 4) = v44;
      *(v31 + 12) = 2160;
      *(v31 + 14) = 1752392040;
      *(v31 + 22) = 2081;
      type metadata accessor for UUID();
      sub_10109C768(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      sub_10109C514(v17, type metadata accessor for BeaconProductInfoRecord);
      v48 = sub_1000136BC(v45, v47, &v54);

      *(v31 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s Successfully saved productInfoRecord for %{private,mask.hash}s.", v31, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10109C514(v17, type metadata accessor for BeaconProductInfoRecord);
    }

    sub_100A8306C(0x14u);
    sub_10000B3A8(v20, &qword_1016B5490, &unk_1013D67E0);
  }

  if (*(v51 + 16) - 1 == v52)
  {
    dispatch_group_leave(v50);
  }
}

uint64_t sub_10109B9FC()
{

  return v0;
}

uint64_t sub_10109BA54()
{
  sub_10109B9FC();

  return swift_deallocClassInstance();
}

void sub_10109BAAC(uint64_t a1)
{
  v3 = *(type metadata accessor for BeaconProductInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10109B38C(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_10109BB54()
{
  v1 = *(type metadata accessor for BeaconProductInfoRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_100D76FA0(v0 + v2, v4, v6, v7);
}

uint64_t (*sub_10109BBF4(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_10109C3A8(v5);
  v5[12] = sub_10109BF08(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_10109BD30;
}

uint64_t (*sub_10109BD34(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_10109C3DC(v5);
  v5[12] = sub_10109C0E4(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_10109C948;
}

void sub_10109BE70(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_10109BF08(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_1000210EC(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10100730C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100FEAC78(v19, a3 & 1);
    v14 = sub_1000210EC(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_10109C0B8;
}

void (*sub_10109C0E4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_1000210EC(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10100EB80();
      v14 = v22;
      goto LABEL_14;
    }

    sub_100FF82C8(v19, a3 & 1);
    v14 = sub_1000210EC(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_10109C0B8;
}

void sub_10109C294(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  if (v5)
  {
    v6 = *v4[2];
    v7 = v4[6];
    if ((*a1)[7])
    {
      *(*(v6 + 56) + 8 * v7) = v5;
    }

    else
    {
      v11 = v4[5];
      (*(v4[4] + 16))(v11, v4[1], v4[3], a4);
      a3(v7, v11, v5, v6);
    }
  }

  else if ((*a1)[7])
  {
    v8 = v4[6];
    v9 = *v4[2];
    (*(v4[4] + 8))(*(v9 + 48) + *(v4[4] + 72) * v8, v4[3], a3);
    a4(v8, v9);
  }

  v13 = v4[5];

  free(v13);

  free(v4);
}

uint64_t (*sub_10109C3A8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10109C3D0;
}

uint64_t (*sub_10109C3DC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10109C91C;
}

uint64_t sub_10109C444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10109C4AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10109C514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10109C5A0@<D0>(uint64_t a1@<X8>)
{
  *&result = 257;
  *a1 = xmmword_101400AF0;
  *(a1 + 16) = xmmword_101400B00;
  *(a1 + 32) = 128;
  return result;
}

uint64_t sub_10109C610(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_1010918DC(a1, v1);
}

uint64_t sub_10109C6DC(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_10109C768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10109C7B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_101091F00(a1, v1);
}

uint64_t sub_10109C848()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_10109C94C()
{
  v1 = 7104878;
  _StringGuts.grow(_:)(210);
  v2._countAndFlagsBits = 540697705;
  v2._object = 0xE400000000000000;
  String.append(_:)(v2);
  type metadata accessor for UUID();
  sub_10109F024(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x746375646F72700ALL;
  v4._object = 0xEE00203A61746144;
  String.append(_:)(v4);
  v5 = type metadata accessor for AccessoryMetadataRecord(0);
  if (*(v0 + v5[5] + 8) >> 60 == 15)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v7 = Data.hexString.getter();
    v6 = v8;
  }

  v9 = v6;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0xD000000000000013;
  v10._object = 0x8000000101379E90;
  String.append(_:)(v10);
  if (*(v0 + v5[6] + 8) >> 60 == 15)
  {
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    v12 = Data.hexString.getter();
    v11 = v13;
  }

  v14 = v11;
  String.append(_:)(*&v12);

  v15._countAndFlagsBits = 0x614E6C65646F6D0ALL;
  v15._object = 0xEC000000203A656DLL;
  String.append(_:)(v15);
  if (*(v0 + v5[7] + 8) >> 60 == 15)
  {
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    v17 = Data.hexString.getter();
    v16 = v18;
  }

  v19 = v16;
  String.append(_:)(*&v17);

  v20._countAndFlagsBits = 0xD000000000000014;
  v20._object = 0x8000000101379EB0;
  String.append(_:)(v20);
  if (*(v0 + v5[8] + 8) >> 60 == 15)
  {
    v21 = 0xE300000000000000;
    v22 = 7104878;
  }

  else
  {
    v22 = Data.hexString.getter();
    v21 = v23;
  }

  v24 = v21;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 0xD000000000000018;
  v25._object = 0x8000000101379ED0;
  String.append(_:)(v25);
  if (*(v0 + v5[9] + 8) >> 60 == 15)
  {
    v26 = 0xE300000000000000;
    v27 = 7104878;
  }

  else
  {
    v27 = Data.hexString.getter();
    v26 = v28;
  }

  v29 = v26;
  String.append(_:)(*&v27);

  v30._object = 0x8000000101379EF0;
  v30._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v30);
  if (*(v0 + v5[10] + 8) >> 60 == 15)
  {
    v31 = 0xE300000000000000;
    v32 = 7104878;
  }

  else
  {
    v32 = Data.hexString.getter();
    v31 = v33;
  }

  v34 = v31;
  String.append(_:)(*&v32);

  v35._object = 0x8000000101379F10;
  v35._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v35);
  if (*(v0 + v5[11] + 8) >> 60 == 15)
  {
    v36 = 0xE300000000000000;
    v37 = 7104878;
  }

  else
  {
    v37 = Data.hexString.getter();
    v36 = v38;
  }

  v39 = v36;
  String.append(_:)(*&v37);

  v40._countAndFlagsBits = 0xD000000000000010;
  v40._object = 0x8000000101379F30;
  String.append(_:)(v40);
  if (*(v0 + v5[12] + 8) >> 60 == 15)
  {
    v41 = 0xE300000000000000;
    v42 = 7104878;
  }

  else
  {
    v42 = Data.hexString.getter();
    v41 = v43;
  }

  v44 = v41;
  String.append(_:)(*&v42);

  v45._countAndFlagsBits = 0x6B726F7774656E0ALL;
  v45._object = 0xEC000000203A6449;
  String.append(_:)(v45);
  if (*(v0 + v5[13] + 8) >> 60 == 15)
  {
    v46 = 0xE300000000000000;
    v47 = 7104878;
  }

  else
  {
    v47 = Data.hexString.getter();
    v46 = v48;
  }

  v49 = v46;
  String.append(_:)(*&v47);

  v50._object = 0xEE00203A65707954;
  v50._countAndFlagsBits = 0x797265747461620ALL;
  String.append(_:)(v50);
  if (*(v0 + v5[14] + 8) >> 60 == 15)
  {
    v51 = 0xE300000000000000;
    v52 = 7104878;
  }

  else
  {
    v52 = Data.hexString.getter();
    v51 = v53;
  }

  v54 = v51;
  String.append(_:)(*&v52);

  v55._object = 0xEF203A6C6576654CLL;
  v55._countAndFlagsBits = 0x797265747461620ALL;
  String.append(_:)(v55);
  if (*(v0 + v5[15] + 8) >> 60 == 15)
  {
    v56 = 0xE300000000000000;
  }

  else
  {
    v1 = Data.hexString.getter();
    v56 = v57;
  }

  v58._countAndFlagsBits = v1;
  v58._object = v56;
  String.append(_:)(v58);

  return 0;
}

id sub_10109CEC0()
{
  v1 = [objc_allocWithZone(SPRawAccessoryMetadata) init];
  v2 = type metadata accessor for AccessoryMetadataRecord(0);
  isa = 0;
  if (*(v0 + v2[5] + 8) >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setProductData:isa];

  if (*(v0 + v2[6] + 8) >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setManufacturerName:v4];

  if (*(v0 + v2[7] + 8) >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setModelName:v5];

  if (*(v0 + v2[8] + 8) >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setAccessoryCategory:v6];

  if (*(v0 + v2[9] + 8) >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setAccessoryCapabilities:v7];

  if (*(v0 + v2[10] + 8) >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setFirmwareVersion:v8];

  if (*(v0 + v2[11] + 8) >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setProtocolVersion:v9];

  if (*(v0 + v2[12] + 8) >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setFindMyVersion:v10];

  if (*(v0 + v2[13] + 8) >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setNetworkId:v11];

  if (*(v0 + v2[14] + 8) >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setBatteryType:v12];

  if (*(v0 + v2[15] + 8) >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setBatteryLevel:v13];

  return v1;
}

uint64_t sub_10109D1F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  v8 = [a2 productData];
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v13 = type metadata accessor for AccessoryMetadataRecord(0);
  v14 = (a3 + v13[5]);
  *v14 = v10;
  v14[1] = v12;
  v15 = [a2 manufacturerName];
  if (v15)
  {
    v16 = v15;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xF000000000000000;
  }

  v20 = (a3 + v13[6]);
  *v20 = v17;
  v20[1] = v19;
  v21 = [a2 modelName];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  v26 = (a3 + v13[7]);
  *v26 = v23;
  v26[1] = v25;
  v27 = [a2 accessoryCategory];
  if (v27)
  {
    v28 = v27;
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0xF000000000000000;
  }

  v32 = (a3 + v13[8]);
  *v32 = v29;
  v32[1] = v31;
  v33 = [a2 accessoryCapabilities];
  if (v33)
  {
    v34 = v33;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xF000000000000000;
  }

  v38 = (a3 + v13[9]);
  *v38 = v35;
  v38[1] = v37;
  v39 = [a2 firmwareVersion];
  if (v39)
  {
    v40 = v39;
    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0xF000000000000000;
  }

  v44 = (a3 + v13[10]);
  *v44 = v41;
  v44[1] = v43;
  v45 = [a2 protocolVersion];
  if (v45)
  {
    v46 = v45;
    v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xF000000000000000;
  }

  v50 = (a3 + v13[11]);
  *v50 = v47;
  v50[1] = v49;
  v51 = [a2 findMyVersion];
  if (v51)
  {
    v52 = v51;
    v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0xF000000000000000;
  }

  v56 = (a3 + v13[12]);
  *v56 = v53;
  v56[1] = v55;
  v57 = [a2 networkId];
  if (v57)
  {
    v58 = v57;
    v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0xF000000000000000;
  }

  v62 = (a3 + v13[13]);
  *v62 = v59;
  v62[1] = v61;
  v63 = [a2 batteryType];
  if (v63)
  {
    v64 = v63;
    v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0xF000000000000000;
  }

  v68 = (a3 + v13[14]);
  *v68 = v65;
  v68[1] = v67;
  v69 = [a2 batteryLevel];
  if (v69)
  {
    v70 = v69;
    v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {

    v71 = 0;
    v73 = 0xF000000000000000;
  }

  result = (*(v7 + 8))(a1, v6);
  v75 = (a3 + v13[15]);
  *v75 = v71;
  v75[1] = v73;
  return result;
}

uint64_t sub_10109D5F0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177C590);
  sub_1000076D4(v0, qword_10177C590);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10109D74C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x496B726F7774656ELL;
    v7 = 0x5479726574746162;
    if (a1 != 10)
    {
      v7 = 0x4C79726574746162;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x657261776D726966;
    v9 = 0x6C6F636F746F7270;
    if (a1 != 7)
    {
      v9 = 0x6556794D646E6966;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6D614E6C65646F6DLL;
    v3 = 0xD000000000000015;
    if (a1 == 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x44746375646F7270;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10109D924(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C5AD8, &qword_101400D00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10109EF10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v35) = 0;
  type metadata accessor for UUID();
  sub_10109F024(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for AccessoryMetadataRecord(0);
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v35 = *v10;
    v36 = v11;
    v34 = 1;
    sub_10002E98C(v35, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
    v12 = (v3 + v9[6]);
    v13 = v12[1];
    v35 = *v12;
    v36 = v13;
    v34 = 2;
    sub_10002E98C(v35, v13);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
    v14 = (v3 + v9[7]);
    v15 = v14[1];
    v35 = *v14;
    v36 = v15;
    v34 = 3;
    sub_10002E98C(v35, v15);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
    v16 = (v3 + v9[8]);
    v17 = v16[1];
    v35 = *v16;
    v36 = v17;
    v34 = 4;
    sub_10002E98C(v35, v17);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
    v18 = (v3 + v9[9]);
    v19 = v18[1];
    v35 = *v18;
    v36 = v19;
    v34 = 5;
    sub_10002E98C(v35, v19);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
    v20 = (v3 + v9[10]);
    v21 = v20[1];
    v35 = *v20;
    v36 = v21;
    v34 = 6;
    sub_10002E98C(v35, v21);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
    v22 = (v3 + v9[11]);
    v23 = v22[1];
    v35 = *v22;
    v36 = v23;
    v34 = 7;
    sub_10002E98C(v35, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
    v24 = (v3 + v9[12]);
    v25 = v24[1];
    v35 = *v24;
    v36 = v25;
    v34 = 8;
    sub_10002E98C(v35, v25);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
    v27 = (v3 + v9[13]);
    v28 = v27[1];
    v35 = *v27;
    v36 = v28;
    v34 = 9;
    sub_10002E98C(v35, v28);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
    v29 = (v3 + v9[14]);
    v30 = v29[1];
    v35 = *v29;
    v36 = v30;
    v34 = 10;
    sub_10002E98C(v35, v30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
    v31 = (v3 + v9[15]);
    v32 = v31[1];
    v35 = *v31;
    v36 = v32;
    v34 = 11;
    sub_10002E98C(v35, v32);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v35, v36);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10109DE30(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10109F024(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for AccessoryMetadataRecord(0);
  if (*(v1 + v2[5] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[6] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[7] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[8] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[9] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[10] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[11] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[12] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[13] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[14] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + v2[15] + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

uint64_t sub_10109E1F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016C5AC8, &qword_101400CF8);
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = v19 - v6;
  v8 = type metadata accessor for AccessoryMetadataRecord(0);
  __chkstk_darwin(v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10109EF10();
  v27 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v11 = v23;
  v12 = v24;
  v20 = v8;
  v21 = v10;
  LOBYTE(v28) = 0;
  sub_10109F024(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v21;
  v15 = *(v22 + 32);
  v25 = v4;
  v15(v21, v13);
  v29 = 1;
  v19[1] = sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v20;
  *&v14[v20[5]] = v28;
  v29 = 2;
  v19[0] = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v14[v16[6]] = v28;
  v29 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v14[v16[7]] = v28;
  v29 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v14[v16[8]] = v28;
  v29 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v14[v16[9]] = v28;
  v29 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v14[v16[10]] = v28;
  v29 = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v20[11]] = v28;
  v29 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v20[12]] = v28;
  v29 = 9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v20[13]] = v28;
  v29 = 10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v20[14]] = v28;
  v29 = 11;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v11 + 8))(v27, v26);
  v17 = v21;
  *&v21[v20[15]] = v28;
  sub_10109EF64(v17, v12);
  sub_100007BAC(a1);
  return sub_10109EFC8(v17);
}

uint64_t sub_10109EBD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10109F990(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10109EBFC(uint64_t a1)
{
  v2 = sub_10109EF10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10109EC38(uint64_t a1)
{
  v2 = sub_10109EF10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for AccessoryMetadataRecord(uint64_t a1)
{
  result = qword_1016C5A58;
  if (!qword_1016C5A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10109ECE8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1003955F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::Int sub_10109ED8C()
{
  Hasher.init(_seed:)();
  sub_10109DE30(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10109EDD0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10109DE30(v2);
  return Hasher._finalize()();
}

uint64_t sub_10109EE8C(uint64_t a1)
{
  *(a1 + 8) = sub_10109F024(&qword_1016C5AC0, type metadata accessor for AccessoryMetadataRecord, &unk_101400CCC);
  result = sub_10109F024(&qword_1016B1738, type metadata accessor for AccessoryMetadataRecord, &unk_101400C88);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10109EF10()
{
  result = qword_1016C5AD0;
  if (!qword_1016C5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5AD0);
  }

  return result;
}

uint64_t sub_10109EF64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryMetadataRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10109EFC8(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryMetadataRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10109F024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_10109F06C(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AccessoryMetadataRecord(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v11 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v14 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v7 = *(a1 + v15);
  v6 = *(a1 + v15 + 8);
  v16 = (a2 + v15);
  v10 = *v16;
  v9 = v16[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v17 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v7 = *(a1 + v18);
  v6 = *(a1 + v18 + 8);
  v19 = (a2 + v18);
  v10 = *v19;
  v9 = v19[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v20 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v20)
    {
      return 0;
    }
  }

  v21 = v4[9];
  v7 = *(a1 + v21);
  v6 = *(a1 + v21 + 8);
  v22 = (a2 + v21);
  v10 = *v22;
  v9 = v22[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v23 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v23)
    {
      return 0;
    }
  }

  v24 = v4[10];
  v7 = *(a1 + v24);
  v6 = *(a1 + v24 + 8);
  v25 = (a2 + v24);
  v10 = *v25;
  v9 = v25[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v26 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v26)
    {
      return 0;
    }
  }

  v27 = v4[11];
  v7 = *(a1 + v27);
  v6 = *(a1 + v27 + 8);
  v28 = (a2 + v27);
  v10 = *v28;
  v9 = v28[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v29 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v29)
    {
      return 0;
    }
  }

  v30 = v4[12];
  v7 = *(a1 + v30);
  v6 = *(a1 + v30 + 8);
  v31 = (a2 + v30);
  v10 = *v31;
  v9 = v31[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v32 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (!v32)
    {
      return 0;
    }
  }

  v33 = v4[13];
  v7 = *(a1 + v33);
  v6 = *(a1 + v33 + 8);
  v34 = (a2 + v33);
  v10 = *v34;
  v9 = v34[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_51;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v35 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (v35)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_51;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  sub_100006654(v7, v6);
LABEL_47:
  v36 = v4[14];
  v7 = *(a1 + v36);
  v6 = *(a1 + v36 + 8);
  v37 = (a2 + v36);
  v10 = *v37;
  v9 = v37[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_100006654(v7, v6);
      goto LABEL_55;
    }

LABEL_51:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    v38 = v10;
    v39 = v9;
LABEL_52:
    sub_100006654(v38, v39);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_51;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  v41 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
  sub_100006654(v10, v9);
  sub_100006654(v7, v6);
  if (!v41)
  {
    return 0;
  }

LABEL_55:
  v42 = v4[15];
  v44 = *(a1 + v42);
  v43 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v47 = *v45;
  v46 = v45[1];
  if (v43 >> 60 == 15)
  {
    if (v46 >> 60 == 15)
    {
      sub_10002E98C(v44, v43);
      sub_10002E98C(v47, v46);
      sub_100006654(v44, v43);
      return 1;
    }

    goto LABEL_59;
  }

  if (v46 >> 60 == 15)
  {
LABEL_59:
    sub_10002E98C(v44, v43);
    sub_10002E98C(v47, v46);
    sub_100006654(v44, v43);
    v38 = v47;
    v39 = v46;
    goto LABEL_52;
  }

  sub_10002E98C(v44, v43);
  sub_10002E98C(v47, v46);
  v48 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v44, v43, v47, v46);
  sub_100006654(v47, v46);
  sub_100006654(v44, v43);
  return v48;
}

unint64_t sub_10109F88C()
{
  result = qword_1016C5AE0;
  if (!qword_1016C5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5AE0);
  }

  return result;
}

unint64_t sub_10109F8E4()
{
  result = qword_1016C5AE8;
  if (!qword_1016C5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5AE8);
  }

  return result;
}

unint64_t sub_10109F93C()
{
  result = qword_1016C5AF0;
  if (!qword_1016C5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5AF0);
  }

  return result;
}

uint64_t sub_10109F990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134D670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134D690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6556794D646E6966 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4C79726574746162 && a2 == 0xEC0000006C657665)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1010A003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1010A0140(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1010A02A4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1010A0318(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C6128, &qword_1014011E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1010A0A08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for KeyDropJoinToken(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_100017D5C(v13, v10);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1010A04E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = type metadata accessor for UUID();
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016C6138, &qword_1014011F0);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for KeyDropJoinToken(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1010A0A08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_1000096E8(&qword_101698300, &protocol conformance descriptor for UUID);
  v15 = v27;
  v16 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v29 = 1;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v28;
  sub_1001E7D68(v18, v23);
  sub_100007BAC(a1);
  return sub_1010A0A5C(v18);
}

uint64_t sub_1010A0830()
{
  if (*v0)
  {
    return 0x4B65746176697270;
  }

  else
  {
    return 0x55557265626D656DLL;
  }
}

uint64_t sub_1010A0874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x55557265626D656DLL && a2 == 0xEA00000000004449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
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

uint64_t sub_1010A0960(uint64_t a1)
{
  v2 = sub_1010A0A08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1010A099C(uint64_t a1)
{
  v2 = sub_1010A0A08();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1010A0A08()
{
  result = qword_1016C6130;
  if (!qword_1016C6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6130);
  }

  return result;
}

uint64_t sub_1010A0A5C(uint64_t a1)
{
  v2 = type metadata accessor for KeyDropJoinToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1010A0ACC()
{
  result = qword_1016C6140;
  if (!qword_1016C6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6140);
  }

  return result;
}

unint64_t sub_1010A0B24()
{
  result = qword_1016C6148;
  if (!qword_1016C6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6148);
  }

  return result;
}

unint64_t sub_1010A0B7C()
{
  result = qword_1016C6150;
  if (!qword_1016C6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C6150);
  }

  return result;
}

uint64_t sub_1010A0BDC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C5A8);
  sub_1000076D4(v0, qword_10177C5A8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1010A0C60()
{
  result = sub_10090BB6C(_swiftEmptyArrayStorage);
  qword_1016C6158 = result;
  return result;
}

uint64_t sub_1010A0C88(_OWORD *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 128) = 0xD000000000000025;
  *(v1 + 136) = 0x800000010137A170;
  *(v1 + 144) = 0xD000000000000027;
  *(v1 + 152) = 0x800000010137A1A0;
  *(v1 + 160) = 0xD000000000000025;
  *(v1 + 168) = 0x800000010137A000;
  strcpy((v1 + 176), "DismissOnLock");
  *(v1 + 190) = -4864;
  *(v1 + 192) = 0xD000000000000027;
  *(v1 + 200) = 0x800000010137A1D0;
  *(v1 + 208) = 0xD000000000000031;
  *(v1 + 216) = 0x800000010137A200;
  *(v1 + 224) = 0xD000000000000028;
  *(v1 + 232) = 0x800000010137A240;
  *(v1 + 240) = 0xD000000000000020;
  *(v1 + 248) = 0x800000010137A270;
  *(v1 + 256) = 0xD000000000000022;
  *(v1 + 264) = 0x800000010137A120;
  v2 = a1[5];
  *(v1 + 96) = a1[4];
  *(v1 + 112) = v2;
  v3 = a1[3];
  *(v1 + 64) = a1[2];
  *(v1 + 80) = v3;
  v4 = a1[1];
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  return v1;
}

void sub_1010A0D8C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = CFUserNotificationCreate(0, 0.0, 0, &error, isa);

  v11 = *(v0 + 16);
  *(v0 + 16) = v10;
  v12 = v10;

  if (!v12)
  {
    goto LABEL_4;
  }

  if (error)
  {

LABEL_4:
    if (qword_1016951F8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177C5A8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      swift_beginAccess();
      *(v16 + 4) = error;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to create user notification, error code %d", v16, 8u);
    }

    return;
  }

  v30 = v2;
  v17 = v12;
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v17, sub_1010A1300, 0);
  v19 = *(v0 + 24);
  *(v0 + 24) = RunLoopSource;

  if (qword_101695200 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  responseFlags = qword_1016C6158;
  qword_1016C6158 = 0x8000000000000000;
  v21 = v0;
  sub_1010015E0(sub_1010A2050, v0, v17, isUniquelyReferenced_nonNull_native);
  qword_1016C6158 = responseFlags;
  swift_endAccess();
  responseFlags = 0;
  if (CFUserNotificationReceiveResponse(v17, 0.0, &responseFlags))
  {
  }

  else
  {
    v29 = responseFlags;
    swift_beginAccess();
    v22 = v17;
    v23 = sub_1001E5C04(v22);
    v25 = v24;
    swift_endAccess();
    if (v23)
    {
      aBlock[0] = v29 & 3;
      v23(aBlock);
      sub_1000BB27C(v23, v25);
    }
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1010A2058;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101664220;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v30 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

void sub_1010A1300(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1;
  sub_1010A1354(a1, v2);
}

void sub_1010A1354(void *a1, char a2)
{
  if (a1)
  {
    v3 = qword_101695200;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = sub_1001E5C04(v4);
    v7 = v6;
    swift_endAccess();
    if (v5)
    {
      v8[0] = a2 & 3;
      v5(v8);
      sub_1000BB27C(v5, v7);
    }
  }
}

uint64_t sub_1010A1420(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (qword_1016951F8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177C5A8);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Alternate button pressed", v15, 2u);
      }

      v16 = *(a2 + 112);
      if (v16)
      {
LABEL_14:
        v16();
      }
    }
  }

  else
  {
    if (qword_1016951F8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C5A8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Default button pressed", v20, 2u);
    }

    v16 = *(a2 + 96);
    if (v16)
    {
      goto LABEL_14;
    }
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1010A2060;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101664248;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10046EAC4();
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1010A1844(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFUserNotificationCancel(v4);
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

void sub_1010A18AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = CFRunLoopGetCurrent();
    CFRunLoopAddSource(v3, v2, kCFRunLoopCommonModes);
  }
}

void sub_1010A1920()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101401310;
  v7 = v0[17];
  *(inited + 32) = v0[16];
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v7;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x800000010137A150;
  v8 = v0[19];
  *(inited + 80) = v0[18];
  *(inited + 88) = v8;
  v52 = v8;
  v53 = v7;
  v9 = v0[4];
  v10 = v1[5];
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v9;
  *(inited + 104) = v10;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_13;
  }

  v51 = v5;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v11;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  if (!kCFUserNotificationAlertTopMostKey)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v12;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v13 = v1[21];
  *(inited + 224) = v1[20];
  *(inited + 232) = v13;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v14 = v1[23];
  *(inited + 272) = v1[22];
  *(inited + 280) = v14;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 0;
  v15 = v1[33];
  *(inited + 320) = v1[32];
  *(inited + 328) = v15;
  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = 1;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v48 = v3;
  v49 = v2;
  v50 = inited + 32;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v16;
  v17 = v1[8];
  v18 = v1[9];
  *(inited + 408) = &type metadata for String;
  *(inited + 384) = v17;
  *(inited + 392) = v18;
  if (!kCFUserNotificationLocalizationURLKey)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 424) = v19;
  sub_100008BB8(0, &qword_1016C62A0, NSBundle_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  swift_bridgeObjectRetain_n();

  v22 = [v21 bundleForClass:ObjCClassFromMetadata];
  v23 = [v22 resourceURL];

  if (!v23)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v51;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = v49;
  *(inited + 456) = v49;
  v26 = sub_1000280DC((inited + 432));
  (*(v48 + 32))(v26, v24, v25);
  v27 = v1[25];
  *(inited + 464) = v1[24];
  *(inited + 472) = v27;
  *(inited + 504) = &type metadata for String;
  *(inited + 480) = 10;
  *(inited + 488) = 0xE100000000000000;
  v28 = v1[27];
  *(inited + 512) = v1[26];
  *(inited + 520) = v28;
  *(inited + 552) = &type metadata for String;
  *(inited + 528) = 10;
  *(inited + 536) = 0xE100000000000000;

  v29 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  v32 = v1[6];
  v31 = v1[7];
  *(v30 + 32) = v32;
  *(v30 + 40) = v31;
  v33 = v1[28];
  v34 = v1[29];
  v57 = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  *&v56 = v30;
  sub_1001E6224(&v56, v55);
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v29;
  sub_100FFB368(v55, v33, v34, isUniquelyReferenced_nonNull_native);
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v36 = v54;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  v57 = &type metadata for String;
  *&v56 = v32;
  *(&v56 + 1) = v31;
  sub_1001E6224(&v56, v55);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v54 = v36;
  sub_100FFB368(v55, v37, v39, v40);

  v41 = v54;
  v42 = v1[11];
  if (!v42)
  {

    goto LABEL_11;
  }

  if (kCFUserNotificationAlternateButtonTitleKey)
  {
    v43 = v1[10];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
    v57 = &type metadata for String;
    *&v56 = v43;
    *(&v56 + 1) = v42;
    sub_1001E6224(&v56, v55);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v41;
    sub_100FFB368(v55, v44, v46, v47);

LABEL_11:
    sub_1010A0D8C();

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1010A1E54()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);

  sub_1000BB27C(v1, v2);
  sub_1000BB27C(v3, v4);

  return v0;
}

uint64_t sub_1010A1F30()
{
  sub_1010A1E54();

  return swift_deallocClassInstance();
}

uint64_t sub_1010A1F88(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1010A1FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1010A1FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1010A2070@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v11, v11[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v11);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = sub_1010A2138(v5, v6);
    v10 = v9;
    sub_100007BAC(v11);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v10;
  }

  return result;
}

uint64_t sub_1010A2138(uint64_t result, unint64_t a2)
{
  v3 = result;
  v13 = result;
  v14 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_10:
      sub_100017D5C(result, a2);
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_14;
    }

    v5 = HIDWORD(result) - result;
    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  v5 = BYTE6(a2);
LABEL_11:
  result = 60 - v5;
  if (!__OFSUB__(60, v5))
  {
    v11 = sub_100845C88(result);
    v12 = v8;
    sub_100776394(&v11, 0);
    v9 = v11;
    v10 = v12;
    Data.append(_:)();
    sub_100016590(v3, a2);
    sub_100016590(v9, v10);
    return v13;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1010A2224()
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v13 = 0x3C00000000;
  v14 = __DataStorage.init(length:)();
  sub_1007765FC(&v13, 0);
  v0 = v13;
  v1 = HIDWORD(v13);
  v13 = v13 | (HIDWORD(v13) << 32);
  v14 |= 0x4000000000000000uLL;
  v2 = v1 - v0;
  if (__OFSUB__(v1, v0))
  {
    __break(1u);
  }

  else
  {
    if (v2 == 60)
    {

      v3 = 0;
      v4 = 0xC000000000000000;
    }

    else
    {
      v5 = 60 - v2;
      if (v2 >= 46)
      {
        v3 = sub_100268BBC(60 - v2);
        v4 = v8 & 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        swift_allocObject();

        v6 = __DataStorage.init(length:)();
        v7 = v6;
        if (v2 <= -2147483587)
        {
          type metadata accessor for Data.RangeReference();
          v3 = swift_allocObject();
          *(v3 + 16) = 0;
          *(v3 + 24) = v5;
          v4 = v7 | 0x8000000000000000;
        }

        else
        {
          v3 = v5 << 32;
          v4 = v6 | 0x4000000000000000;
        }
      }
    }

    v11 = v3;
    v12 = v4;
    sub_100776394(&v11, 0);
    v9 = v11;
    v10 = v12;
    Data.append(_:)();

    sub_100016590(v9, v10);
  }
}

unint64_t sub_1010A23A4(uint64_t a1)
{
  *(a1 + 8) = sub_1010A23D4();
  result = sub_100A220CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1010A23D4()
{
  result = qword_1016C62A8;
  if (!qword_1016C62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C62A8);
  }

  return result;
}

uint64_t sub_1010A2438()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C5C0);
  v1 = sub_1000076D4(v0, qword_10177C5C0);
  if (qword_101695210 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C5D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1010A2500(uint64_t result)
{
  v1 = *(result + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_10001F280(v3, v6);
      v4 = v7;
      v5 = v8;
      sub_1000035D0(v6, v7);
      (*(v5 + 24))(v4, v5);
      result = sub_100007BAC(v6);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1010A2594(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v7 = v3 + 32;
    do
    {
      sub_10001F280(v7, v10);
      v8 = v11;
      v9 = v12;
      sub_1000035D0(v10, v11);
      (*(v9 + 32))(a2, a3, v8, v9);
      result = sub_100007BAC(v10);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1010A2640(uint64_t result)
{
  v1 = *(result + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_10001F280(v3, v6);
      v4 = v7;
      v5 = v8;
      sub_1000035D0(v6, v7);
      (*(v5 + 40))(v4, v5);
      result = sub_100007BAC(v6);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1010A26D4()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1010A27D0, v0, 0);
}

uint64_t sub_1010A27D0(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v5 = v1[5];
  v4 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  v8 = v1[2];
  ContinuousClock.init()();
  (*(v5 + 16))(v2, v3, v6);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v1[9] = v10;
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, v2, v6);
  *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_1010A2958;

  return unsafeBlocking<A>(context:_:)(v11, 0x655379636167654CLL, 0xEE00736563697672, sub_1010A3D30, v10, &type metadata for () + 1);
}

uint64_t sub_1010A2958()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1010A2A84, v1, 0);
}

uint64_t sub_1010A2A84()
{
  if (qword_101695208 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C5C0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[2];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(*(v5 + 112) + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "%ld legacy services started.", v6, 0xCu);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[8], v0[4]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010A2C04(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v56 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContinuousClock.Instant();
  v6 = __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v52 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v52 - v13;
  result = __chkstk_darwin(v12);
  v19 = &v52 - v18;
  v20 = *(a1 + 112);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + 32;
    v58 = (v16 + 8);
    v59 = (v16 + 16);
    v54 = (v3 + 8);
    *&v17 = 136446210;
    v53 = v17;
    *&v17 = 136446466;
    v52 = v17;
    v60 = a1;
    v63 = v11;
    v64 = v8;
    v65 = v5;
    do
    {
      v62 = v21;
      sub_10001F280(v22, v68);
      if (qword_101695208 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177C5C0);
      sub_10001F280(v68, v67);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v66 = v39;
        *v38 = v53;
        v40 = sub_1010A3E44(v67);
        v42 = v41;
        sub_100007BAC(v67);
        v43 = sub_1000136BC(v40, v42, &v66);
        v8 = v64;

        *(v38 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "Starting legacy service: %{public}s", v38, 0xCu);
        sub_100007BAC(v39);
      }

      else
      {

        sub_100007BAC(v67);
      }

      ContinuousClock.now.getter();
      v44 = v69;
      v45 = v70;
      sub_1000035D0(v68, v69);
      (*(v45 + 16))(v44, v45);
      ContinuousClock.now.getter();
      sub_10001F280(v68, v67);
      v46 = *v59;
      v47 = v63;
      v48 = v65;
      (*v59)(v63, v19, v65);
      v46(v8, v14, v48);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v23 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v23 = v52;
        v24 = sub_1010A3E44(v67);
        v26 = v25;
        sub_100007BAC(v67);
        v27 = sub_1000136BC(v24, v26, &v66);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2082;
        v28 = v55;
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_1010A3FE4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        v29 = static Duration.description<A>(_:_:units:)();
        v31 = v30;
        (*v54)(v28, v56);
        v57 = v22;
        v32 = *v58;
        (*v58)(v64, v65);
        v32(v63, v65);
        v33 = sub_1000136BC(v29, v31, &v66);

        *(v23 + 14) = v33;
        v34 = v65;
        _os_log_impl(&_mh_execute_header, v49, v50, "Legacy service startup complete: %{public}s duration: %{public}s", v23, 0x16u);
        swift_arrayDestroy();

        v32(v14, v34);
        v32(v19, v34);
        v22 = v57;
        v8 = v64;
      }

      else
      {

        v51 = *v58;
        (*v58)(v8, v48);
        v51(v47, v48);
        sub_100007BAC(v67);
        v51(v14, v48);
        v51(v19, v48);
      }

      result = sub_100007BAC(v68);
      v22 += 40;
      v21 = v62 - 1;
    }

    while (v62 != 1);
  }

  return result;
}

uint64_t sub_1010A3290()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1010A32F0()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1010A33B0;
  v2 = *(v0 + 16);

  return unsafeBlocking<A>(_:)(v1, sub_1010A3D28, v2, &type metadata for () + 1);
}

uint64_t sub_1010A33B0()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1007FFC84, v1, 0);
}

uint64_t sub_1010A34C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SystemVersionNumber();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1010A35A0, v2, 0);
}

uint64_t sub_1010A35A0()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = *(v4 + 16);
  v8(v2, v0[2], v5);
  v8(v1, v7, v5);
  v9 = *(v4 + 80);
  v10 = (v9 + 24) & ~v9;
  v11 = (v3 + v9 + v10) & ~v9;
  v12 = swift_allocObject();
  v0[10] = v12;
  *(v12 + 16) = v6;
  v13 = *(v4 + 32);
  v13(v12 + v10, v2, v5);
  v13(v12 + v11, v1, v5);

  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1010A3730;

  return unsafeBlocking<A>(_:)(v14, sub_1010A3C88, v12, &type metadata for () + 1);
}

uint64_t sub_1010A3730()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1007478EC, v1, 0);
}

uint64_t sub_1010A387C()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1010A393C;
  v2 = *(v0 + 16);

  return unsafeBlocking<A>(_:)(v1, sub_1010A3C80, v2, &type metadata for () + 1);
}

uint64_t sub_1010A393C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100014748, v1, 0);
}

uint64_t sub_1010A3A54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1010A26D4();
}

uint64_t sub_1010A3AE0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_1010A3B88()
{
  type metadata accessor for LegacyServiceContainer();
  sub_1010A3FE4(&unk_101698D70, v0, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  return ActorServiceProtocol.description.getter();
}