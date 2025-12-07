uint64_t sub_100537F9C(uint64_t a1, uint64_t a2)
{
  sub_1010A528C();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1010A5510();
    v3 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v4 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    v6 = Array.description.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100008C00();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Messaging devices changed %@.", 29, 2, v5);

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100538100()
{
  v28 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v28);
  v27 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v5 = *(v30 - 8);
  v6 = __chkstk_darwin(v30);
  v29 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + 56);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v16)
  {
    if (*(v0 + 48))
    {

      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }

    else
    {
      v24 = v9;
      v25 = 0x8000000101359880;
      static DispatchQoS.background.getter();
      v23[0] = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for XPCActivity();
      v19 = swift_allocObject();
      sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v19 + 40) = v20;
      swift_unknownObjectWeakInit();
      *(v19 + 88) = 0;
      v21 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v23[1] = "aringExpirationTimer";
      v23[2] = v21;
      *(v19 + 96) = 0;
      *(v19 + 104) = 0;
      (*(v5 + 16))(v29, v9, v30);
      (*(v3 + 104))(v26, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
      v31 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      *(v19 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v19 + 24) = 0xD000000000000034;
      *(v19 + 32) = v25;
      v22 = v23[0];
      *(v19 + 48) = sub_1005892BC;
      *(v19 + 56) = v22;
      *(v19 + 64) = sub_1005892C4;
      *(v19 + 72) = v18;

      sub_100997398();

      (*(v5 + 8))(v24, v30);

      *(v0 + 48) = v19;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10053867C(uint64_t a1, void *a2, uint64_t a3)
{
  v61 = a2;
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = type metadata accessor for UUID();
  v65 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v70 = &v53 - v12;
  __chkstk_darwin(v11);
  v73 = &v53 - v13;
  v58 = *(a1 + 16);
  if (!v58)
  {
    return;
  }

  v14 = 0;
  v57 = a1 + 32;
  v71 = (v65 + 32);
  v72 = (v65 + 48);
  v68 = (v65 + 8);
  v69 = (v65 + 16);
  v64 = v7;
  v74 = v8;
  v54 = a3;
  while (1)
  {
    v63 = v14;
    v15 = v57 + 160 * v14;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    v75 = 0x79654B7974726964;
    v76 = 0xEA00000000002D73;

    v18._countAndFlagsBits = v17;
    v18._object = v16;
    String.append(_:)(v18);

    v60 = v75;
    v62 = v76;
    v19 = String._bridgeToObjectiveC()();
    v20 = [v61 stringArrayForKey:v19];

    if (!v20)
    {
      break;
    }

    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = v21[2];
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_18:
    v25 = _swiftEmptyArrayStorage;
LABEL_19:

    v31 = sub_10000954C(v25);

    v77 = v31;
    v32 = v59;
    v67 = *v69;
    v67(v59, a3, v8);

    v33 = v70;
    sub_100DE8BCC(v70, v32);
    v66 = *v68;
    v66(v33, v8);
    v34 = v77;
    v35 = sub_100775E74(v31, v77);

    if ((v35 & 1) == 0)
    {
      v36 = *(v34 + 16);
      v56 = v34;
      if (v36)
      {
        v37 = sub_1003A85FC(v36, 0);
        v55 = sub_1003A9D58(&v75, &v37[(*(v65 + 80) + 32) & ~*(v65 + 80)], v36, v34);
        v38 = v75;

        sub_1000128F8(v38);
        if (v55 != v36)
        {
          goto LABEL_33;
        }

        v39 = *(v37 + 2);
        if (v39)
        {
LABEL_23:
          v75 = _swiftEmptyArrayStorage;
          sub_101123BB8(0, v39, 0);
          v40 = v75;
          v41 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v55 = v37;
          v42 = &v37[v41];
          v43 = *(v65 + 72);
          do
          {
            v44 = v70;
            v67(v70, v42, v8);
            v45 = UUID.uuidString.getter();
            v47 = v46;
            v66(v44, v8);
            v75 = v40;
            v49 = *(v40 + 16);
            v48 = *(v40 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_101123BB8((v48 > 1), v49 + 1, 1);
              v40 = v75;
            }

            *(v40 + 16) = v49 + 1;
            v50 = v40 + 16 * v49;
            *(v50 + 32) = v45;
            *(v50 + 40) = v47;
            v42 += v43;
            --v39;
            v8 = v74;
          }

          while (v39);

          a3 = v54;
          v7 = v64;
          goto LABEL_30;
        }
      }

      else
      {
        v37 = _swiftEmptyArrayStorage;
        v39 = _swiftEmptyArrayStorage[2];
        if (v39)
        {
          goto LABEL_23;
        }
      }

LABEL_30:
      isa = Array._bridgeToObjectiveC()().super.isa;

      v52 = String._bridgeToObjectiveC()();

      [v61 setValue:isa forKey:v52];

      goto LABEL_4;
    }

LABEL_4:
    v14 = v63 + 1;
    if (v63 + 1 == v58)
    {
      return;
    }
  }

  v21 = _swiftEmptyArrayStorage;
  v22 = _swiftEmptyArrayStorage[2];
  if (!v22)
  {
    goto LABEL_18;
  }

LABEL_7:
  v23 = 0;
  v24 = v21 + 5;
  v25 = _swiftEmptyArrayStorage;
  while (v23 < v21[2])
  {

    UUID.init(uuidString:)();

    if ((*v72)(v7, 1, v8) == 1)
    {
      sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v26 = v8;
      v27 = *v71;
      (*v71)(v73, v7, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_100A5BFE0(0, *(v25 + 2) + 1, 1, v25);
      }

      v29 = *(v25 + 2);
      v28 = *(v25 + 3);
      if (v29 >= v28 >> 1)
      {
        v25 = sub_100A5BFE0((v28 > 1), v29 + 1, 1, v25);
      }

      *(v25 + 2) = v29 + 1;
      v30 = v74;
      v27(&v25[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v29], v73, v74);
      v8 = v30;
      v7 = v64;
    }

    ++v23;
    v24 += 2;
    if (v22 == v23)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_100538D54(unsigned int (**a1)(uint64_t, uint64_t, uint64_t), void (*a2)(char *, uint64_t, uint64_t))
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v73 - v10;
  v80 = type metadata accessor for UUID();
  v79 = *(v80 - 8);
  v11 = __chkstk_darwin(v80);
  v78 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v73 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 200);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    goto LABEL_31;
  }

  v76 = v9;
  v3 = static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v20 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10138BBE0;
    v22 = UUID.uuidString.getter();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    v25 = sub_100008C00();
    *(v21 + 64) = v25;
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v85 = 60;
    v86 = 0xE100000000000000;
    v26 = *(a2 + 7);
    v84[6] = *(a2 + 6);
    v84[7] = v26;
    v27 = *(a2 + 9);
    v84[8] = *(a2 + 8);
    v84[9] = v27;
    v28 = *(a2 + 3);
    v84[2] = *(a2 + 2);
    v84[3] = v28;
    v29 = *(a2 + 5);
    v84[4] = *(a2 + 4);
    v84[5] = v29;
    v30 = *(a2 + 1);
    v84[0] = *a2;
    v84[1] = v30;
    sub_10058ADE8();
    v31._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 8250;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    String.append(_:)(*(a2 + 6));
    v33._countAndFlagsBits = 62;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34 = v85;
    v35 = v86;
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v25;
    *(v21 + 72) = v34;
    *(v21 + 80) = v35;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v20, "Marking beacon %@ as clean for %@", 33, 2, v21);

    v36 = [objc_opt_self() standardUserDefaults];
    v37 = *(a2 + 1);
    *&v84[0] = 0x79654B7974726964;
    *(&v84[0] + 1) = 0xEA00000000002D73;
    String.append(_:)(v37);
    v74 = v84[0];
    v38 = String._bridgeToObjectiveC()();
    v75 = v36;
    v39 = [v36 stringArrayForKey:v38];

    if (v39)
    {
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
    }

    v40 = v80;
    v77 = a1;
    v41 = _swiftEmptyArrayStorage;
    v81 = v3[2];
    if (!v81)
    {
      break;
    }

    v42 = 0;
    a1 = (v79 + 48);
    v43 = (v79 + 32);
    v44 = v3 + 5;
    v45 = v82;
    while (v42 < v3[2])
    {
      a2 = *(v44 - 1);

      UUID.init(uuidString:)();

      if ((*a1)(v45, 1, v40) == 1)
      {
        sub_10000B3A8(v45, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        a2 = *v43;
        (*v43)(v83, v45, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_100A5BFE0(0, v41[2] + 1, 1, v41);
        }

        v47 = v41[2];
        v46 = v41[3];
        if (v47 >= v46 >> 1)
        {
          v41 = sub_100A5BFE0((v46 > 1), v47 + 1, 1, v41);
        }

        v41[2] = v47 + 1;
        v48 = v41 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v47;
        v40 = v80;
        a2(v48, v83, v80);
      }

      ++v42;
      v44 += 2;
      if (v81 == v42)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_17:

  v49 = sub_10000954C(v41);

  v85 = v49;

  v50 = v76;
  sub_1010F6584(v77, v76);
  sub_10000B3A8(v50, &qword_1016980D0, &unk_10138F3B0);
  v51 = v85;
  v52 = sub_100775E74(v49, v85);

  if (v52)
  {

    return;
  }

  v53 = *(v51 + 16);
  if (!v53)
  {

    isa = String._bridgeToObjectiveC()();

    v71 = v75;
    [v75 setValue:0 forKey:isa];
LABEL_29:

    return;
  }

  v54 = sub_1003A85FC(*(v51 + 16), 0);
  v55 = v54 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
  v56 = sub_1003A9D58(v84, v55, v53, v51);
  v57 = *&v84[0];

  sub_1000128F8(v57);
  if (v56 == v53)
  {
    v58 = v54[2];
    if (v58)
    {
      v77 = v54;
      v81 = v51;
      *&v84[0] = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v58, 0);
      v59 = *&v84[0];
      v83 = *(v79 + 16);
      v82 = *(v79 + 72);
      v60 = (v79 + 8);
      v61 = v80;
      do
      {
        v62 = v78;
        (v83)(v78, v55, v61);
        v63 = UUID.uuidString.getter();
        v61 = v80;
        v64 = v63;
        v66 = v65;
        (*v60)(v62, v80);
        *&v84[0] = v59;
        v68 = *(v59 + 16);
        v67 = *(v59 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_101123BB8((v67 > 1), v68 + 1, 1);
          v61 = v80;
          v59 = *&v84[0];
        }

        *(v59 + 16) = v68 + 1;
        v69 = v59 + 16 * v68;
        *(v69 + 32) = v64;
        *(v69 + 40) = v66;
        v55 = &v82[v55];
        --v58;
      }

      while (v58);
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v71 = String._bridgeToObjectiveC()();

    v72 = v75;
    [v75 setValue:isa forKey:v71];

    goto LABEL_29;
  }

  __break(1u);
}

void sub_1005396C4(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for UUID();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 200);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = [objc_opt_self() standardUserDefaults];
  v15 = *(a1 + 16);
  v37[0] = 0x79654B7974726964;
  v37[1] = 0xEA00000000002D73;
  String.append(_:)(v15);
  v16 = String._bridgeToObjectiveC()();

  v32 = v14;
  v17 = [v14 stringArrayForKey:v16];

  if (v17)
  {
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v35 = v18[2];
  if (v35)
  {
    v19 = 0;
    v20 = (v34 + 48);
    v21 = (v34 + 32);
    v22 = v18 + 5;
    v23 = _swiftEmptyArrayStorage;
    v33 = v6;
    while (v19 < v18[2])
    {

      UUID.init(uuidString:)();

      if ((*v20)(v5, 1, v6) == 1)
      {
        sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v24 = *v21;
        (*v21)(v36, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100A5BFE0(0, v23[2] + 1, 1, v23);
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_100A5BFE0((v25 > 1), v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        v27 = v23 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v26;
        v6 = v33;
        v24(v27, v36, v33);
      }

      ++v19;
      v22 += 2;
      if (v35 == v19)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_17:

  v28 = sub_10000954C(v23);

  v29 = *(v28 + 16);
  if (!v29)
  {

    return;
  }

  v30 = sub_1003A85FC(*(v28 + 16), 0);
  v31 = sub_1003A9D58(v37, &v30[(*(v34 + 80) + 32) & ~*(v34 + 80)], v29, v28);
  sub_1000128F8(v37[0]);
  if (v31 == v29)
  {

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_100539B70@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v20[3] = &type metadata for Bool;
  LOBYTE(v20[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v20, v11);
  v13(v19, 0);
  sub_1000BC4D4(&qword_1016A48D8, &qword_1013B1258);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 32) = a3;
  v20[0] = v14;
  sub_1000BC4D4(&qword_1016A48E0, &qword_1013B1260);
  sub_10058A740(&qword_1016A48E8, &qword_1016A48E0, &qword_1013B1260, sub_10058A694);
  v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v17 = v16;

  if (!v4)
  {
    *a4 = a1;
    *(a4 + 8) = v21;
    *(a4 + 16) = v15;
    *(a4 + 24) = v17;
  }

  return result;
}

uint64_t sub_100539DD4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A48B8, &qword_1013B1248);
  v14 = *(type metadata accessor for PeerTrustAckEnvelopeV1(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for PeerTrustAckEnvelopeV1);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A48C0, &qword_1013B1250);
  sub_10058A5E0();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for PeerTrustAckEnvelopeV1);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for PeerTrustAckEnvelopeV1);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053A0D0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A4898, &qword_1013B1238);
  v14 = *(type metadata accessor for CircleTrustAckEnvelopeV1(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for CircleTrustAckEnvelopeV1);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A48A0, &qword_1013B1240);
  sub_10058A52C();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for CircleTrustAckEnvelopeV1);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for CircleTrustAckEnvelopeV1);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053A3CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v23 = a1;
  v7 = type metadata accessor for CodingUserInfoKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000076D4(v7, static CodingUserInfoKey.messagingCoder);
  (*(v8 + 16))(v10, v11, v7);
  v25[3] = &type metadata for Bool;
  LOBYTE(v25[0]) = 1;
  v12 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v25, v10);
  v12(v24, 0);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  (*(v14 + 16))(v16 + v15, a3, v13);
  v25[0] = v16;
  sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  sub_10057CC00();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    (*(v14 + 8))(a3, v13);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    (*(v14 + 8))(a3, v13);

    *a4 = v23;
    *(a4 + 8) = v26;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053A6CC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A46C0, &unk_1013B0FE0);
  v14 = *(type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A46C8, &unk_1013B2160);
  sub_10057D12C();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053A9C8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a2;
  v21 = a1;
  v9 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000076D4(v9, static CodingUserInfoKey.messagingCoder);
  (*(v10 + 16))(v12, v13, v9);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v14 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v12);
  v14(v22, 0);
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  v23[0] = v15;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1001E8254();
  v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v18 = v17;

  if (!v5)
  {
    *a5 = v21;
    *(a5 + 8) = v24;
    *(a5 + 16) = v16;
    *(a5 + 24) = v18;
  }

  return result;
}

uint64_t sub_10053AC08@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v20[3] = &type metadata for Bool;
  LOBYTE(v20[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v20, v11);
  v13(v19, 0);
  sub_1000BC4D4(&qword_10169EF18, &unk_1013B1270);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 32) = a3;
  v20[0] = v14;
  sub_1000BC4D4(&qword_10169B770, &unk_101395210);
  sub_10058A740(&qword_1016A48F8, &qword_10169B770, &unk_101395210, sub_10057F2EC);
  v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v17 = v16;

  if (!v4)
  {
    *a4 = a1;
    *(a4 + 8) = v21;
    *(a4 + 16) = v15;
    *(a4 + 24) = v17;
  }

  return result;
}

uint64_t sub_10053AE6C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A49A8, &qword_1013B1360);
  v14 = *(type metadata accessor for CompanionSelfBeaconingKeyEnvelope(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A49B0, &unk_1013B1368);
  sub_10058B620();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053B168@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A49E0, &qword_1013B1388);
  v14 = *(type metadata accessor for CompanionFindMyAccessoryKeyEnvelope(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A49E8, &qword_1013B1390);
  sub_10058B858();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053B464@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A47B0, &qword_1013B1158);
  v14 = *(type metadata accessor for FamilyShareEnvelopeV1(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for FamilyShareEnvelopeV1);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A47B8, &qword_1013B1160);
  sub_100589714();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for FamilyShareEnvelopeV1);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for FamilyShareEnvelopeV1);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053B760@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A4790, &qword_1013B1148);
  v14 = *(type metadata accessor for LegacyShareEnvelope(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for LegacyShareEnvelope);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A4798, &qword_1013B1150);
  sub_100589638();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for LegacyShareEnvelope);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for LegacyShareEnvelope);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053BA5C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A47D0, &qword_1013B1168);
  v14 = *(type metadata accessor for FindMyAirPodsFamilyShareEnvelope(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A47D8, &qword_1013B1170);
  sub_10058981C();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053BD58@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A47F8, &qword_1013B1190);
  v14 = *(type metadata accessor for FindMyAccessoryFamilyShareEnvelope(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A4800, &unk_1013B1198);
  sub_100589C18();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053C054@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v14 = *(type metadata accessor for BeaconObservation(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for BeaconObservation);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A46F0, &qword_1013B1020);
  sub_10057F2EC();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for BeaconObservation);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for BeaconObservation);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053C350@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A4838, &unk_1013B11F0);
  v14 = *(type metadata accessor for FindMyAccessoryFamilyKeyEnvelope(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A4840, &unk_1013B2180);
  sub_10058A0FC();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053C64C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A4858, &qword_1013B1200);
  v14 = *(type metadata accessor for SelfBeaconingKeyEnvelope(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for SelfBeaconingKeyEnvelope);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A4860, &qword_1013B1208);
  sub_10058A1B0();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for SelfBeaconingKeyEnvelope);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for SelfBeaconingKeyEnvelope);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053C948@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A4818, &unk_1013B11E0);
  v14 = *(type metadata accessor for LegacySelfBeaconingKeyEnvelope(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A4820, &unk_1013B2170);
  sub_10058A01C();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for LegacySelfBeaconingKeyEnvelope);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053CC44@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A4878, &qword_1013B1228);
  v14 = *(type metadata accessor for KeyRequestEnvelope(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for KeyRequestEnvelope);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A4880, &qword_1013B1230);
  sub_10058A478();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for KeyRequestEnvelope);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for KeyRequestEnvelope);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053CF40@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_10169EFB8, &unk_1013B12F0);
  v14 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for SharedBeaconRecord);
  v23[0] = v16;
  sub_1000BC4D4(&qword_101697720, &unk_101392640);
  sub_10058AD34();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for SharedBeaconRecord);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for SharedBeaconRecord);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053D23C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v23[3] = &type metadata for Bool;
  LOBYTE(v23[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v23, v11);
  v13(v22, 0);
  sub_1000BC4D4(&qword_1016A4708, &qword_1013B1028);
  v14 = *(type metadata accessor for CircleTrustDeclineEnvelopeV1(0) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  sub_10058B200(a3, v16 + v15, type metadata accessor for CircleTrustDeclineEnvelopeV1);
  v23[0] = v16;
  sub_1000BC4D4(&qword_1016A4710, &qword_1013B1030);
  sub_10057F3A0();
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v4)
  {
    sub_10058B268(a3, type metadata accessor for CircleTrustDeclineEnvelopeV1);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    sub_10058B268(a3, type metadata accessor for CircleTrustDeclineEnvelopeV1);

    *a4 = a1;
    *(a4 + 8) = v24;
    *(a4 + 16) = v20;
    *(a4 + 24) = v21;
  }

  return result;
}

uint64_t sub_10053D538@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000076D4(v8, static CodingUserInfoKey.messagingCoder);
  (*(v9 + 16))(v11, v12, v8);
  v20[3] = &type metadata for Bool;
  LOBYTE(v20[0]) = 1;
  v13 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v20, v11);
  v13(v19, 0);
  sub_1000BC4D4(&qword_1016A4A00, &qword_1013B1398);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 32) = a3;
  v20[0] = v14;
  sub_1000BC4D4(&qword_1016A4A08, &qword_1013B13A0);
  sub_10058B9E8();
  v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v17 = v16;

  if (!v4)
  {
    *a4 = a1;
    *(a4 + 8) = v21;
    *(a4 + 16) = v15;
    *(a4 + 24) = v17;
  }

  return result;
}

uint64_t sub_10053D770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v25[0] = a6;
  v12 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  sub_1000D2A70(a1, v25 - v13, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = static os_log_type_t.info.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v16 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Local send failure: %@.", 23, 2, v17, v25[0]);

    if (!a5)
    {
      return result;
    }

    return a5(result);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = *(Strong + 200);

    __chkstk_darwin(v24);
    v25[-4] = a2;
    v25[-3] = a3;
    v25[-2] = a4;
    sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  result = sub_10000B3A8(v14, &qword_10169F358, &qword_1013A0810);
  if (a5)
  {
    return a5(result);
  }

  return result;
}

uint64_t sub_10053DA08@<X0>(unsigned int (**a2)(uint64_t, uint64_t, uint64_t)@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v8 = result;
  if (result)
  {
    sub_100538D54(a2, a3);
  }

  *a4 = v8 == 0;
  return result;
}

uint64_t sub_10053DA9C(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  result = os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C378, "Clearing any registered XPC activities", 38, 2, _swiftEmptyArrayStorage);
  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 48) = 0;
    v5 = *(v4 + 16);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10058A7BC;
    *(v6 + 24) = v4;
    v9[4] = sub_10040B9F8;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10013FE14;
    v9[3] = &unk_101628EA8;
    v7 = _Block_copy(v9);

    dispatch_sync(v5, v7);
    _Block_release(v7);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10053DC50(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v25 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = type metadata accessor for ShareRecord(0);
  sub_1000D2A70(a1 + *(v16 + 32), v9, &unk_101696900, &unk_10138B1E0);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &unk_101696900, &unk_10138B1E0);
    v18 = 0;
  }

  else
  {
    v24 = v2;
    v19 = v9;
    v20 = *(v11 + 32);
    v20(v15, v19, v10);
    sub_1000D2A70(v26 + *(v16 + 32), v7, &unk_101696900, &unk_10138B1E0);
    if (v17(v7, 1, v10) == 1)
    {
      (*(v11 + 8))(v15, v10);
      sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
      v18 = 0;
    }

    else
    {
      v21 = v25;
      v20(v25, v7, v10);
      v18 = static Date.< infix(_:_:)();
      v22 = *(v11 + 8);
      v22(v21, v10);
      v22(v15, v10);
    }
  }

  return v18 & 1;
}

uint64_t sub_10053DF28@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v45 = *a1;
  v46 = v5;
  v6 = *(a1 + 32);
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Date();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ShareRecord(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v43 - v17;
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v22 = xmmword_10139D930;
  v23 = 0uLL;
  if (!result)
  {
    v6 = 0;
LABEL_10:
    *a3 = v22;
    *(a3 + 16) = v23;
    *(a3 + 32) = v6;
    return result;
  }

  v43 = xmmword_10139D930;
  v48 = a3;

  v24 = sub_100AA899C();

  v25 = sub_10058149C(v24);

  if (!v25[2])
  {

    goto LABEL_7;
  }

  sub_10058B200(v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v18, type metadata accessor for ShareRecord);

  sub_100589B28(v18, v20, type metadata accessor for ShareRecord);
  sub_1000D2A70(&v20[*(v12 + 32)], v9, &unk_101696900, &unk_10138B1E0);
  v27 = v49;
  v26 = v50;
  if ((*(v49 + 48))(v9, 1, v50) == 1)
  {
    sub_10058B268(v20, type metadata accessor for ShareRecord);
    sub_10000B3A8(v9, &unk_101696900, &unk_10138B1E0);
LABEL_7:
    a3 = v48;
    v28 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      v42 = v28;
      swift_once();
      v28 = v42;
    }

    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10177C378, "No expiring shares", 18, 2, _swiftEmptyArrayStorage);

    v6 = 0;
    v22 = v43;
    v23 = 0uLL;
    goto LABEL_10;
  }

  v29 = v47;
  (*(v27 + 32))(v47, v9, v26);
  a3 = v48;
  if (*a1 != 2)
  {

    (*(v27 + 8))(v29, v26);
    result = sub_10058B268(v20, type metadata accessor for ShareRecord);
    v22 = v45;
    v23 = v46;
    goto LABEL_10;
  }

  LODWORD(v46) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10138BBE0;
  sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v32 = v47;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v34;
  *(v31 + 56) = &type metadata for String;
  v36 = sub_100008C00();
  *(v31 + 64) = v36;
  *(v31 + 32) = v33;
  *(v31 + 40) = v35;
  sub_10058B200(v20, v44, type metadata accessor for ShareRecord);
  v37 = String.init<A>(describing:)();
  *(v31 + 96) = &type metadata for String;
  *(v31 + 104) = v36;
  *(v31 + 72) = v37;
  *(v31 + 80) = v38;
  os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v30, "Next share expires at %@: %@", 28, 2, v31);

  Date.timeIntervalSinceNow.getter();
  v40 = v39;
  v41 = v39;

  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  a3 = v48;
  if (v40 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v40 < 9.22337204e18)
  {
    (*(v49 + 8))(v32, v50);
    result = sub_10058B268(v20, type metadata accessor for ShareRecord);
    *&v22 = vdupq_n_s64(1uLL).u64[0];
    *(&v22 + 1) = v40;
    v23 = xmmword_1013B0DA0;
    v6 = 707;
    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10053E55C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      v7 = *(v6 + 56);
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1005892E8;
      *(v8 + 24) = v6;
      aBlock[4] = sub_10040B9F8;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10013FE14;
      aBlock[3] = &unk_101627DA0;
      v9 = _Block_copy(aBlock);

      dispatch_sync(v7, v9);
      _Block_release(v9);
      LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

      if (v7)
      {
        __break(1u);
        return result;
      }

      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_10053E6F8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v57 = type metadata accessor for ShareRecord(0);
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v57);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v39 - v8);
  v10 = type metadata accessor for Date();
  v40 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v49 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v51 = a1;
  v15 = sub_100AA899C();
  v16 = sub_10058149C(v15);

  v56 = v14;
  static Date.trustedNow.getter(v14);
  v50 = dispatch_group_create();
  v17 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    v38 = v17;
    swift_once();
    v17 = v38;
  }

  v47 = qword_10177C378;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C378, "Processing expired shares", 25, 2, _swiftEmptyArrayStorage);
  v18 = v16[2];
  if (v18)
  {
    v19 = *(v5 + 80);
    v39 = v16;
    v20 = v16 + ((v19 + 32) & ~v19);
    v21 = *(v5 + 72);
    v22 = (v40 + 48);
    v45 = v19;
    v43 = (v19 + 16) & ~v19;
    v42 = (v6 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v40 + 8);
    v54 = (v40 + 32);
    v41 = xmmword_101385D80;
    v23 = v49;
    v46 = v4;
    v44 = v10;
    v55 = v21;
    do
    {
      sub_10058B200(v20, v9, type metadata accessor for ShareRecord);
      sub_1000D2A70(v9 + *(v57 + 32), v4, &unk_101696900, &unk_10138B1E0);
      if ((*v22)(v4, 1, v10) == 1)
      {
        sub_10058B268(v9, type metadata accessor for ShareRecord);
        sub_10000B3A8(v4, &unk_101696900, &unk_10138B1E0);
      }

      else
      {
        (*v54)(v23, v4, v10);
        sub_100003DFC(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          (*v53)(v23, v10);
        }

        else
        {
          v52 = static os_log_type_t.default.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v24 = swift_allocObject();
          *(v24 + 16) = v41;
          v25 = v48;
          sub_10058B200(v9, v48, type metadata accessor for ShareRecord);
          v26 = v22;
          v27 = String.init<A>(describing:)();
          v29 = v28;
          *(v24 + 56) = &type metadata for String;
          *(v24 + 64) = sub_100008C00();
          *(v24 + 32) = v27;
          *(v24 + 40) = v29;
          v22 = v26;
          os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v47, "Expired share: %@", 17, 2, v24, v39);
          v10 = v44;

          v30 = v50;
          dispatch_group_enter(v50);
          v23 = v49;
          sub_10058B200(v9, v25, type metadata accessor for ShareRecord);
          v31 = v42;
          v32 = swift_allocObject();
          v33 = v25;
          v4 = v46;
          sub_100589B28(v33, v32 + v43, type metadata accessor for ShareRecord);
          *(v32 + v31) = v30;
          v34 = v53;
          v35 = v30;
          sub_100528B94(v9, sub_1005892F0, v32);

          (*v34)(v23, v10);
        }

        sub_10058B268(v9, type metadata accessor for ShareRecord);
        v21 = v55;
      }

      v20 += v21;
      --v18;
    }

    while (v18);
  }

  v36 = v50;
  OS_dispatch_group.wait()();
  sub_100538100();

  return (*(v40 + 8))(v56, v10);
}

void sub_10053ECFC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = type metadata accessor for ShareRecord(0);
  __chkstk_darwin(v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v9 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v10 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10138BBE0;
    sub_10058B200(a2, v8, type metadata accessor for ShareRecord);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    v15 = sub_100008C00();
    *(v11 + 64) = v15;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v24[1] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v16 = String.init<A>(describing:)();
    *(v11 + 96) = &type metadata for String;
    *(v11 + 104) = v15;
    *(v11 + 72) = v16;
    *(v11 + 80) = v17;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Error expiring share %@: %@", 27, 2, v11);
  }

  else
  {
    v18 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    sub_10058B200(a2, v8, type metadata accessor for ShareRecord);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Successfully expired share: %@", 30, 2, v20);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_10053EFC8(uint64_t a1)
{
  Transaction.capture()();
  if (a1)
  {
    swift_errorRetain();
    v2 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v3 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100008C00();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Error distributing keys: %@", 27, 2, v4);
  }

  else
  {
    v9 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      v11 = v9;
      swift_once();
      v9 = v11;
    }

    v10 = qword_10177C378;

    return os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Shared keys distributed.", 24, 2, _swiftEmptyArrayStorage);
  }
}

void *sub_10053F198()
{
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v1 - 8);
  v82 = &v69 - v2;
  v78 = type metadata accessor for DirectorySequence();
  v72 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  *&v71 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v70 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v86 = &v69 - v7;
  v89 = type metadata accessor for StableIdentifier(0);
  v8 = __chkstk_darwin(v89);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v69 - v11;
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = __chkstk_darwin(v12);
  v80 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v79 = &v69 - v16;
  v17 = __chkstk_darwin(v15);
  v90 = (&v69 - v18);
  __chkstk_darwin(v17);
  v20 = &v69 - v19;
  v76 = *(v0 + 144);
  result = sub_100025044();
  v22 = result;
  v84 = result[2];
  if (v84)
  {
    v23 = 0;
    v83 = v10;
    v81 = v10 + 8;
    v24 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v23 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v25 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v26 = v22;
      v27 = *(v87 + 72);
      sub_10058B200(v22 + v25 + v27 * v23, v20, type metadata accessor for OwnedBeaconRecord);
      v28 = *(v88 + 24);
      v29 = v85;
      sub_10058B200(&v20[v28], v85, type metadata accessor for StableIdentifier);
      v30 = v24;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_10058B268(v29, type metadata accessor for StableIdentifier);
      v32 = EnumCaseMultiPayload == 1;
      v24 = v30;
      if (v32)
      {
        goto LABEL_12;
      }

      sub_10058B200(&v20[v28], v83, type metadata accessor for StableIdentifier);
      v33 = swift_getEnumCaseMultiPayload();
      if (v33 == 3)
      {
        break;
      }

      if (v33 == 2)
      {
        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_11:

        v34 = type metadata accessor for UUID();
        (*(*(v34 - 8) + 8))(v83, v34);
        v24 = v30;
LABEL_12:
        sub_100589B28(v20, v90, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v24[2] + 1, 1);
          v24 = v93;
        }

        v22 = v26;
        v37 = v24[2];
        v36 = v24[3];
        if (v37 >= v36 >> 1)
        {
          sub_10112434C((v36 > 1), v37 + 1, 1);
          v24 = v93;
        }

        v24[2] = v37 + 1;
        result = sub_100589B28(v90, v24 + v25 + v37 * v27, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      sub_10058B268(v83, type metadata accessor for StableIdentifier);
      result = sub_10058B268(v20, type metadata accessor for OwnedBeaconRecord);
      v22 = v26;
LABEL_4:
      if (v84 == ++v23)
      {
        goto LABEL_18;
      }
    }

    sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

    goto LABEL_11;
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_18:

  v75 = v24[2];
  if (v75)
  {
    v38 = 0;
    v73 = (v71 + 48);
    v39 = (v71 + 32);
    v40 = (v71 + 8);
    ++v72;
    v71 = xmmword_10138BBE0;
    v81 = _swiftEmptyArrayStorage;
    v41 = v79;
    v42 = v82;
    v74 = v24;
    v69 = v39;
    v90 = v40;
    while (v38 < v24[2])
    {
      v43 = *(v87 + 72);
      v84 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v85 = v38;
      v83 = v43;
      sub_10058B200(v24 + v84 + v43 * v38, v41, type metadata accessor for OwnedBeaconRecord);
      v44 = *(v76 + 168);
      v45 = objc_autoreleasePoolPush();
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v4, qword_10177A518);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      objc_autoreleasePoolPop(v45);
      v91 = _swiftEmptyArrayStorage;
      v92 = _swiftEmptyArrayStorage;
      v46 = [objc_opt_self() defaultManager];
      v47 = v77;
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      v48 = v47;
      DirectorySequence.next()();
      v49 = *v73;
      v50 = v4;
      if ((*v73)(v42, 1, v4) != 1)
      {
        v89 = *v69;
        v51 = v82;
        v52 = v70;
        do
        {
          v89(v52, v51, v50);
          v53 = objc_autoreleasePoolPush();
          sub_1005FF9CC(v52, v44, &v92, &v91);
          objc_autoreleasePoolPop(v53);
          (*v90)(v52, v50);
          DirectorySequence.next()();
        }

        while (v49(v51, 1, v50) != 1);
      }

      (*v72)(v48, v78);
      v54 = static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v55 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      *(v56 + 16) = v71;
      v57 = v92;
      v58 = v92[2];
      *(v56 + 56) = &type metadata for Int;
      *(v56 + 64) = &protocol witness table for Int;
      *(v56 + 32) = v58;
      sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

      v59 = v86;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      *(v56 + 96) = &type metadata for String;
      *(v56 + 104) = sub_100008C00();
      *(v56 + 72) = v60;
      *(v56 + 80) = v62;
      os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v55, "Found %i records at %@", 22, 2, v56);

      (*v90)(v59, v50);

      v63 = v57[2];

      v4 = v50;
      if (v63)
      {
        v41 = v79;
        sub_100589B28(v79, v80, type metadata accessor for OwnedBeaconRecord);
        v64 = v81;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v64;
        v93 = v64;
        v42 = v82;
        if ((v65 & 1) == 0)
        {
          sub_10112434C(0, v66[2] + 1, 1);
          v66 = v93;
        }

        v68 = v66[2];
        v67 = v66[3];
        v24 = v74;
        if (v68 >= v67 >> 1)
        {
          sub_10112434C((v67 > 1), v68 + 1, 1);
          v24 = v74;
          v66 = v93;
        }

        v66[2] = v68 + 1;
        v81 = v66;
        result = sub_100589B28(v80, v66 + v84 + v68 * v83, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v41 = v79;
        result = sub_10058B268(v79, type metadata accessor for OwnedBeaconRecord);
        v24 = v74;
        v42 = v82;
      }

      v38 = v85 + 1;
      if (v85 + 1 == v75)
      {
        goto LABEL_35;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
    v81 = _swiftEmptyArrayStorage;
LABEL_35:

    return v81;
  }

  return result;
}

uint64_t sub_10053FCDC(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v32 = &v29[-v4];
  v5 = type metadata accessor for ShareInstruction(0);
  v6 = v5 - 8;
  v31 = *(v5 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = dispatch_group_create();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v33 = (v12 + 16);
  v13 = *(v6 + 32);
  v14 = type metadata accessor for OwnedBeaconRecord(0);
  sub_10058B200(a1 + *(v14 + 24) + v13, v10, type metadata accessor for StableIdentifier);
  v30 = swift_getEnumCaseMultiPayload() != 0;
  sub_10058B268(v10, type metadata accessor for StableIdentifier);
  dispatch_group_enter(v11);
  v15 = *(v1 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1 + *(v6 + 36);
  v18 = *(v17 + 8);
  v19 = *(v17 + 16);
  *(v16 + 32) = *v17;
  *(v16 + 40) = v18;
  *(v16 + 48) = v19;
  sub_10058B200(a1, &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShareInstruction);
  v20 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  *(v21 + 24) = v12;
  sub_100589B28(&v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20, type metadata accessor for ShareInstruction);
  v22 = type metadata accessor for TaskPriority();
  v23 = v32;
  (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v15;
  *(v24 + 40) = v30;
  *(v24 + 48) = v16;
  *(v24 + 56) = sub_100589DB0;
  *(v24 + 64) = v21;

  v25 = v11;

  sub_10025EDD4(0, 0, v23, &unk_1013B11A8, v24);

  OS_dispatch_group.wait()();
  v26 = v33;
  swift_beginAccess();
  if (*v26 == 1)
  {

    return 0;
  }

  else
  {
    type metadata accessor for SPOwnerSessionError(0);
    v34 = 8;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();

    v27 = v35;
  }

  return v27;
}

void sub_100540120(uint64_t a1, char a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  if ((a2 & 1) == 0)
  {
    v9 = type metadata accessor for ShareInstruction(0);
    if (*(a1 + 16))
    {
      v10 = sub_100772110(*(a5 + *(v9 + 28)), *(a5 + *(v9 + 28) + 8), *(a5 + *(v9 + 28) + 16));
      if (v11 & 1) != 0 && (*(*(a1 + 56) + v10))
      {
        v12 = 1;
      }
    }
  }

  swift_beginAccess();
  *(a4 + 16) = v12;
  dispatch_group_leave(a3);
}

void *sub_1005401C0(uint64_t a1)
{
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v3);
  v5 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v6 - 8);
  v8 = v77 - v7;
  v9 = type metadata accessor for DirectorySequence();
  v85 = *(v9 - 8);
  v86 = v9;
  __chkstk_darwin(v9);
  v87 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for URL();
  v89 = *(v91 - 8);
  v11 = __chkstk_darwin(v91);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v88 = v77 - v14;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v15 = v93;
  v16 = sub_10053FCDC(a1);
  if (v16)
  {
    v17 = v16;

    return v17;
  }

  v84 = v8;
  v81 = v15;
  v79 = v5;
  v77[1] = v1;
  v19 = *(v1 + 144);
  v78 = type metadata accessor for ShareInstruction(0);
  v20 = *(v78 + 24);
  v83 = a1;
  v21 = a1 + v20;
  v22 = *(v19 + 168);
  v23 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v24 = v91;
  sub_1000076D4(v91, qword_10177A518);
  v82 = v21;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v23);
  v93 = _swiftEmptyArrayStorage;
  v92 = _swiftEmptyArrayStorage;
  v25 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v26 = v84;
  DirectorySequence.next()();
  v27 = v89;
  v28 = *(v89 + 48);
  v29 = v28(v26, 1, v24);
  v80 = v3;
  if (v29 == 1)
  {
    v30 = v87;
    v31 = v91;
  }

  else
  {
    *&v90 = *(v27 + 32);
    v32 = (v27 + 8);
    v30 = v87;
    v31 = v91;
    v33 = v28;
    v34 = v84;
    do
    {
      (v90)(v13, v34, v31);
      v35 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v13, v22, &v93, &v92);
      objc_autoreleasePoolPop(v35);
      (*v32)(v13, v91);
      DirectorySequence.next()();
      v31 = v91;
    }

    while (v33(v34, 1, v91) != 1);
  }

  (*(v85 + 8))(v30, v86);
  v36 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v37 = v31;
  v38 = static OS_os_log.default.getter();
  v91 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v39 = swift_allocObject();
  v90 = xmmword_10138BBE0;
  *(v39 + 16) = xmmword_10138BBE0;
  v40 = v93;
  v41 = v93[2];
  *(v39 + 56) = &type metadata for Int;
  *(v39 + 64) = &protocol witness table for Int;
  *(v39 + 32) = v41;
  sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v42 = v88;
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  v45 = v44;
  *(v39 + 96) = &type metadata for String;
  v46 = sub_100008C00();
  *(v39 + 104) = v46;
  *(v39 + 72) = v43;
  *(v39 + 80) = v45;
  os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v38, "Found %i records at %@", 22, 2, v39);

  (*(v89 + 8))(v42, v37);

  __chkstk_darwin(v47);
  v48 = v83;
  v77[-2] = v83;

  v49 = sub_10013D7F0(sub_100589D90, &v77[-4], v40)[2];

  if (v49)
  {

    v50 = static os_log_type_t.default.getter();
    v51 = v82;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v52 = qword_10177C378;
    v53 = swift_allocObject();
    *(v53 + 16) = v90;
    sub_10058B200(v51, v79, type metadata accessor for OwnedBeaconRecord);
    v54 = String.init<A>(describing:)();
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = v46;
    *(v53 + 32) = v54;
    *(v53 + 40) = v55;
    v56 = v48 + *(v78 + 28);
    v58 = *(v56 + 8);
    v57 = *(v56 + 16);
    *(v53 + 96) = &type metadata for String;
    *(v53 + 104) = v46;
    *(v53 + 72) = v58;
    *(v53 + 80) = v57;

    os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v52, "Already sharing %@ with %@", 26, 2, v53);

    type metadata accessor for SPOwnerSessionError(0);
    v59 = 1;
  }

  else
  {
    v60 = *(v40 + 16);

    v61 = v81;
    v62 = sub_101074710(v81);
    v63 = v82;
    if (v60 >= v62)
    {
      v66 = v62;

      v67 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v68 = qword_10177C378;
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_10138B360;
      sub_10058B200(v63, v79, type metadata accessor for OwnedBeaconRecord);
      v70 = String.init<A>(describing:)();
      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = v46;
      *(v69 + 32) = v70;
      *(v69 + 40) = v71;
      *(v69 + 96) = &type metadata for Int;
      *(v69 + 104) = &protocol witness table for Int;
      *(v69 + 72) = v60;
      *(v69 + 136) = &type metadata for Int;
      *(v69 + 144) = &protocol witness table for Int;
      *(v69 + 112) = v66;
      os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v68, "Unable to share beacon %@ (%i / %i) [per beacon]", 48, 2, v69);

      type metadata accessor for SPOwnerSessionError(0);
      v59 = 9;
    }

    else
    {
      v64 = sub_10107472C(v61);

      v65 = sub_10053F198()[2];

      if (v65 < v64)
      {
        return 0;
      }

      v72 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v73 = qword_10177C378;
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_10138B360;
      sub_10058B200(v63, v79, type metadata accessor for OwnedBeaconRecord);
      v75 = String.init<A>(describing:)();
      *(v74 + 56) = &type metadata for String;
      *(v74 + 64) = v46;
      *(v74 + 32) = v75;
      *(v74 + 40) = v76;
      *(v74 + 96) = &type metadata for Int;
      *(v74 + 104) = &protocol witness table for Int;
      *(v74 + 72) = v65;
      *(v74 + 136) = &type metadata for Int;
      *(v74 + 144) = &protocol witness table for Int;
      *(v74 + 112) = v64;
      os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v73, "Unable to share beacon %@ (%i / %i)  [global]", 45, 2, v74);

      type metadata accessor for SPOwnerSessionError(0);
      v59 = 10;
    }
  }

  v92 = v59;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v93;
}

BOOL sub_100540BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareRecord(0);
  v5 = (a1 + *(v4 + 36));
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = (a2 + *(type metadata accessor for ShareInstruction(0) + 28));
  if (v6 != *v9)
  {
    return 0;
  }

  v10 = v7 == *(v9 + 1) && v8 == *(v9 + 2);
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = (a1 + *(v4 + 40));
  v13 = *v11;
  v12 = v11[1];
  v14 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v14;
  }

  return v15 != 0;
}

uint64_t sub_100540CB8(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (v7 == 2)
  {
    return 1;
  }

  v12 = dispatch_group_create();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  dispatch_group_enter(v12);
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v14;
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;
  *(v17 + 56) = a3;
  *(v17 + 64) = sub_10057CA40;
  *(v17 + 72) = v15;

  v18 = v12;

  sub_10025EDD4(0, 0, v10, &unk_1013B0FC8, v17);

  OS_dispatch_group.wait()();

  swift_beginAccess();
  v11 = *(v13 + 16);

  return v11;
}

uint64_t sub_100540EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  sub_1000D2A70(v23, v11, &unk_1016B1650, &unk_1013B1110);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 16) = v24;
  *(v18 + 24) = v19;
  sub_1000D2AD8(v11, v18 + v17, &unk_1016B1650, &unk_1013B1110);
  aBlock[4] = sub_100589D1C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101628408;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v21 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v4, v21);
  (*(v27 + 8))(v7, v28);
}

uint64_t sub_100541328@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v3 - 8);
  v5 = &v47 - v4;
  v6 = type metadata accessor for DirectorySequence();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v48 = *(*(v2 + 144) + 168);
  v16 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v16);
  v57 = _swiftEmptyArrayStorage;
  v58 = _swiftEmptyArrayStorage;
  v17 = [objc_opt_self() defaultManager];
  v51 = v15;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v18 = v8;
  DirectorySequence.next()();
  v20 = v10 + 48;
  v19 = *(v10 + 48);
  v21 = v9;
  v22 = v19(v5, 1, v9);
  v52 = v10;
  if (v22 != 1)
  {
    v55 = *(v10 + 32);
    v56 = v10 + 32;
    v23 = (v10 + 8);
    v24 = v48;
    do
    {
      v55(v13, v5, v21);
      v25 = v5;
      v26 = v20;
      v27 = v19;
      v28 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v13, v24, &v58, &v57);
      v29 = v28;
      v19 = v27;
      v20 = v26;
      v5 = v25;
      objc_autoreleasePoolPop(v29);
      (*v23)(v13, v21);
      DirectorySequence.next()();
    }

    while (v19(v25, 1, v21) != 1);
  }

  (*(v49 + 8))(v18, v50);
  v30 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v31 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10138BBE0;
  v33 = v58;
  v34 = v58[2];
  *(v32 + 56) = &type metadata for Int;
  *(v32 + 64) = &protocol witness table for Int;
  *(v32 + 32) = v34;
  sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v35 = v51;
  v36 = dispatch thunk of CustomStringConvertible.description.getter();
  v38 = v37;
  *(v32 + 96) = &type metadata for String;
  *(v32 + 104) = sub_100008C00();
  *(v32 + 72) = v36;
  *(v32 + 80) = v38;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v31, "Found %i records at %@", 22, 2, v32);

  (*(v52 + 8))(v35, v21);

  __chkstk_darwin(v39);
  *(&v47 - 2) = v53;
  v40 = sub_10013D7F0(sub_100589CCC, (&v47 - 4), v33);
  if (v40[2])
  {
    v41 = v40;
    v42 = type metadata accessor for ShareRecord(0);
    v43 = *(v42 - 8);
    v44 = v54;
    sub_10058B200(v41 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v54, type metadata accessor for ShareRecord);

    return (*(v43 + 56))(v44, 0, 1, v42);
  }

  else
  {

    v46 = type metadata accessor for ShareRecord(0);
    return (*(*(v46 - 8) + 56))(v54, 1, 1, v46);
  }
}

void sub_100541920(uint64_t a1, uint64_t a2)
{
  v19 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  type metadata accessor for ShareInstruction(0);
  type metadata accessor for OwnedBeaconRecord(0);
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = UUID.uuidString.getter();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v4, "2) Sending Family Share for beacon: %@, shareIdentifier: %@", 59, 2, v5);

  sub_100541C30(a1);
  if (!v26)
  {
    v12 = static os_log_type_t.default.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    aBlock = sub_1005892B4;
    v21 = a2;

    sub_1000BC4D4(&qword_1016A4788, &unk_1013B1120);
    v14 = String.init<A>(describing:)();
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v9;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v4, "Share record %@", 15, 2, v13);

    v16 = *(a2 + 56);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1005892B8;
    *(v17 + 24) = a2;
    v24 = sub_1000D2FB0;
    v25 = v17;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10013FE14;
    v23 = &unk_101627D50;
    v18 = _Block_copy(&aBlock);

    dispatch_sync(v16, v18);
    _Block_release(v18);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }
  }
}

void sub_100541C30(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for ShareInstruction(0) + 24);
  sub_10058B200(v8 + v2[6], v7, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10058B268(v7, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload)
  {
    if (sub_1000322C8())
    {
      if (sub_100E0EA64(*(v8 + v2[16]), *(v8 + v2[17])))
      {
        sub_100551690(a1);
      }

      else
      {
        sub_1005530EC(a1);
      }
    }

    else
    {
      v10 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v11 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_101385D80;
      sub_10058B200(v8, v4, type metadata accessor for OwnedBeaconRecord);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_100008C00();
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Unhandled beacon type: %@", 25, 2, v12);
    }
  }

  else
  {
    sub_10054F898(a1);
  }
}

uint64_t sub_100541EB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v40 = a5;
  v41 = a4;
  v39 = a3;
  v7 = type metadata accessor for ShareRecord(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v14 = __chkstk_darwin(v13);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v36 - v17);
  sub_1000D2A70(a1, &v36 - v17, &unk_1016B1650, &unk_1013B1110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    v43 = *v18;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v20 = v42;
      v43 = v42;
      sub_100003DFC(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
      _BridgedStoredNSError.code.getter();
      if (v42 == 14)
      {
        v21 = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          v35 = v21;
          swift_once();
          v21 = v35;
        }

        os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, qword_10177C378, "record already modified in CloudKit -- assuming another device is handing the share", 83, 2, _swiftEmptyArrayStorage);
        *v16 = v19;
        swift_storeEnumTagMultiPayload();
        swift_errorRetain();
        v41(v16);

LABEL_14:

        return sub_10000B3A8(v16, &unk_1016B1650, &unk_1013B1110);
      }
    }

    v29 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v30 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_101385D80;
    v43 = v19;
    swift_errorRetain();
    v32 = String.init<A>(describing:)();
    v34 = v33;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100008C00();
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Failed to save record %@", 24, 2, v31);

    *v16 = v19;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v41(v16);
    goto LABEL_14;
  }

  v38 = v13;
  sub_100589B28(v18, v12, type metadata accessor for ShareRecord);
  v22 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v23 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  v36 = xmmword_101385D80;
  *(v24 + 16) = xmmword_101385D80;
  sub_10058B200(v12, v10, type metadata accessor for ShareRecord);
  v25 = String.init<A>(describing:)();
  v27 = v26;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_100008C00();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v37 = v23;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Successfully saved %@", 21, 2, v24);

  sub_100A8306C(1u);
  sub_100541920(v39, a2);
  sub_10058B200(v12, v16, type metadata accessor for ShareRecord);
  swift_storeEnumTagMultiPayload();
  v41(v16);
  sub_10000B3A8(v16, &unk_1016B1650, &unk_1013B1110);
  return sub_10058B268(v12, type metadata accessor for ShareRecord);
}

uint64_t sub_1005425AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 192);
  *(a1 + 192) = 0x8000000000000000;
  sub_100FFE25C(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 192) = v8;
  return swift_endAccess();
}

uint64_t sub_10054263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 168);
  (*(v14 + 16))(v16, a3, v13);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v14 + 32))(v19 + v17, v16, v13);
  v20 = (v19 + v18);
  v21 = v26;
  *v20 = v25;
  v20[1] = v21;
  aBlock[4] = sub_10057C9B0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101627008;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v30 + 8))(v9, v7);
  (*(v28 + 8))(v12, v29);
}

uint64_t sub_1005429F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(a1 + 192);
  if (!*(v18 + 16))
  {
    return swift_endAccess();
  }

  v19 = sub_1000210EC(a2);
  if ((v20 & 1) == 0)
  {
    return swift_endAccess();
  }

  v21 = *(*(v18 + 56) + 8 * v19);
  swift_endAccess();
  if (v21 >> 62)
  {
    if (v21 >> 62 == 1)
    {
      v22 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      swift_errorRetain();
      v23 = static os_log_type_t.error.getter();
      v51 = v21;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v24 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_101385D80;
      aBlock = v21 & 0x3FFFFFFFFFFFFFFFLL;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100008C00();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Message send error: %@", 22, 2, v25);

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
      v29 = static OS_dispatch_queue.global(qos:)();
      (*(v15 + 8))(v17, v14);
      v30 = swift_allocObject();
      v31 = v53;
      v30[2] = v52;
      v30[3] = v31;
      v30[4] = v22;
      v64 = sub_10057C9C8;
      v65 = v30;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_100006684;
      v63 = &unk_101627058;
      v32 = _Block_copy(&aBlock);
      v33 = v51;
      sub_10057C920(v51);

      static DispatchQoS.unspecified.getter();
      v59 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v34 = v54;
      v35 = v58;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      sub_1001E61B8(v33);
    }

    else
    {
      v42 = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        v49 = v42;
        swift_once();
        v42 = v49;
      }

      os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, qword_10177C378, "Message sent successfully", 25, 2, _swiftEmptyArrayStorage);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
      v51 = static OS_dispatch_queue.global(qos:)();
      (*(v15 + 8))(v17, v14);
      (*(v7 + 16))(&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
      v43 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v44 = swift_allocObject();
      v45 = v53;
      *(v44 + 16) = v52;
      *(v44 + 24) = v45;
      (*(v7 + 32))(v44 + v43, &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      v64 = sub_10057C9F8;
      v65 = v44;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_100006684;
      v63 = &unk_1016270A8;
      v46 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v59 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v34 = v54;
      v35 = v58;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v47 = v51;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v46);
    }
  }

  else
  {

    v37 = static os_log_type_t.error.getter();
    v51 = v21;
    if (qword_101695030 != -1)
    {
      v48 = v37;
      swift_once();
      v37 = v48;
    }

    os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, qword_10177C378, "Unexpected state: pending", 25, 2, _swiftEmptyArrayStorage);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
    v38 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v17, v14);
    v39 = swift_allocObject();
    v40 = v53;
    *(v39 + 16) = v52;
    *(v39 + 24) = v40;
    v64 = sub_10057CA24;
    v65 = v39;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100006684;
    v63 = &unk_1016270F8;
    v41 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v59 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v34 = v54;
    v35 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);

    sub_1001E61B8(v51);
  }

  (*(v57 + 8))(v34, v35);
  (*(v55 + 8))(v13, v56);
}

uint64_t sub_100543478(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_1000BC4D4(a4, a5);
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  *(&v13 - v10) = a3;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a1(v11);
  return sub_10000B3A8(v11, a4, a5);
}

void sub_100543540(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, NSObject *a6)
{
  v39 = a5;
  v40 = a6;
  v37 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v35[-v13];
  v15 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v15);
  v17 = &v35[-v16];
  v38 = a1;
  sub_1000D2A70(a1, &v35[-v16], &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C378;
    if (os_log_type_enabled(qword_10177C378, v18))
    {
      v20 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1000136BC(a3, v37, v41);
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1000136BC(v21, v22, v41);

      *(v20 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v19, v18, "Failed to send message to %s: (%s)", v20, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    (*(v9 + 32))(v14, v17, v8);
    v25 = static os_log_type_t.info.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v26 = qword_10177C378;
    (*(v9 + 16))(v12, v14, v8);
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v36 = v25;
      v28 = v27;
      v41[0] = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_1000136BC(a3, v37, v41);
      *(v28 + 12) = 2080;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v9 + 8);
      v32(v12, v8);
      v33 = sub_1000136BC(v29, v31, v41);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v26, v36, "Successfully sent message to %s: (%s)", v28, 0x16u);
      swift_arrayDestroy();

      v24 = (v32)(v14, v8);
    }

    else
    {
      v34 = *(v9 + 8);
      v34(v12, v8);
      v24 = (v34)(v14, v8);
    }
  }

  __chkstk_darwin(v24);
  *&v35[-16] = v38;
  sub_1000BC4D4(&qword_1016A46E8, &qword_1013B1008);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  dispatch_group_leave(v40);
}

uint64_t sub_100543A7C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = v12 - v6;
  sub_1000D2A70(a2, v12 - v6, &qword_10169F358, &qword_1013A0810);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_100A5D2B4(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100A5D2B4((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = sub_1000D2AD8(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, &qword_10169F358, &qword_1013A0810);
  *a1 = v8;
  return result;
}

void sub_100543BF0(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, char a11, char a12)
{
  v13 = v12;
  LODWORD(v172) = a7;
  v169 = a8;
  v174 = v13;
  v175 = *v13;
  v20 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v21 = __chkstk_darwin(v20 - 8);
  v170 = v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v173 = v156 - v23;
  v24 = type metadata accessor for UUID();
  v177 = *(v24 - 8);
  v178 = v24;
  v25 = __chkstk_darwin(v24);
  v168 = v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = v156 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = (v156 - v31);
  v33 = __chkstk_darwin(v30);
  v35 = v156 - v34;
  __chkstk_darwin(v33);
  v181[0] = a1;
  v182 = a2;
  v183 = a3;
  v37 = v156 - v36;
  v184 = a4;
  UUID.init()();
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = a5;
  *(inited + 40) = a6;

  v39 = sub_101129930(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1000BC4D4(&qword_1016A49C8, &qword_1013B1378);
  sub_1000041A4(&qword_1016A49D0, &qword_1016A49C8, &qword_1013B1378, &protocol conformance descriptor for Message<A>);
  v40 = v176;
  v41 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v40)
  {
    (*(v177 + 8))(v37, v178);

    return;
  }

  v165 = v32;
  v171 = v41;
  v176 = v42;
  v160 = 0;
  v161 = v29;

  if (a12)
  {
    v43 = 0xD000000000000017;
  }

  else
  {
    v43 = 0x6567617373656DLL;
  }

  if (a12)
  {
    v44 = 0x800000010135AAC0;
  }

  else
  {
    v44 = 0xE700000000000000;
  }

  v167 = v37;
  v166 = sub_100580FCC(v37, v172 & 1, a9, a10, a11 & 1, a12 & 1);
  v45 = v173;
  sub_1000D2A70(a9, v173, &qword_1016980D0, &unk_10138F3B0);
  v47 = v177;
  v46 = v178;
  v48 = *(v177 + 48);
  v164 = v177 + 48;
  v163 = v48;
  v49 = v48(v45, 1, v178);
  v50 = &qword_101695000;
  v172 = v39;
  if (v49 == 1)
  {
    sub_10000B3A8(v45, &qword_1016980D0, &unk_10138F3B0);
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000076D4(v51, qword_10177C4F0);
    v52 = v181[0];
    v53 = v183;
    v173 = v182;
    v54 = v184;
    sub_100017D5C(v183, v184);

    sub_100017D5C(v53, v54);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v162 = v43;
      v58 = v57;
      v59 = swift_slowAlloc();
      v165 = v59;
      *v58 = 136315906;
      v179 = v175;
      v180 = v59;
      sub_1000BC4D4(&qword_1016A49D8, &qword_1013B1380);
      v60 = String.init<A>(describing:)();
      v159 = v56;
      v62 = sub_1000136BC(v60, v61, &v180);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      v63 = sub_1000136BC(v162, v44, &v180);

      *(v58 + 14) = v63;
      *(v58 + 22) = 2080;
      sub_100D47A5C(v52, v173, v53, v54);
      v65 = v64;
      v67 = v66;
      sub_100016590(v53, v54);
      sub_100016590(v53, v54);
      v68 = sub_1000136BC(v65, v67, &v180);

      *(v58 + 24) = v68;
      *(v58 + 32) = 2080;
      v69 = Set.description.getter();
      v71 = sub_1000136BC(v69, v70, &v180);

      *(v58 + 34) = v71;
      _os_log_impl(&_mh_execute_header, v55, v159, "%s: Sending %s: %s to %s", v58, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      sub_100016590(v53, v54);

      sub_100016590(v53, v54);
    }

    v101 = v166;
    v50 = &qword_101695000;
  }

  else
  {
    v162 = v43;
    v72 = v35;
    (*(v47 + 32))(v35, v45, v46);
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_1000076D4(v73, qword_10177C4F0);
    v159 = v181[0];
    v74 = v183;
    v158 = v182;
    v75 = v184;
    (*(v47 + 16))(v165, v72, v46);
    sub_100017D5C(v74, v75);
    sub_100017D5C(v74, v75);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();

    LODWORD(v173) = v77;
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v157 = v72;
      v79 = v78;
      v80 = swift_slowAlloc();
      v156[1] = v80;
      *v79 = 136316162;
      v179 = v175;
      v180 = v80;
      sub_1000BC4D4(&qword_1016A49D8, &qword_1013B1380);
      v81 = String.init<A>(describing:)();
      v156[0] = v76;
      v83 = sub_1000136BC(v81, v82, &v180);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2080;
      v84 = sub_1000136BC(v162, v44, &v180);

      *(v79 + 14) = v84;
      *(v79 + 22) = 2080;
      sub_100D47A5C(v159, v158, v74, v75);
      v86 = v85;
      v88 = v87;
      sub_100016590(v74, v75);
      sub_100016590(v74, v75);
      v89 = sub_1000136BC(v86, v88, &v180);

      *(v79 + 24) = v89;
      *(v79 + 32) = 2080;
      v90 = Set.description.getter();
      v92 = sub_1000136BC(v90, v91, &v180);

      *(v79 + 34) = v92;
      *(v79 + 42) = 2080;
      v93 = v178;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v94 = v165;
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v98 = *(v47 + 8);
      v98(v94, v93);
      v99 = sub_1000136BC(v95, v97, &v180);

      *(v79 + 44) = v99;
      v100 = v156[0];
      _os_log_impl(&_mh_execute_header, v156[0], v173, "%s: Sending %s: %s to %s in response to %s", v79, 0x34u);
      swift_arrayDestroy();

      v98(v157, v93);
      v50 = &qword_101695000;
    }

    else
    {
      sub_100016590(v74, v75);

      sub_100016590(v74, v75);

      v102 = *(v47 + 8);
      v103 = v178;
      v102(v165, v178);
      v102(v72, v103);
    }

    v101 = v166;
  }

  if (v50[50] != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  sub_1000076D4(v104, qword_10177C4F0);

  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v107 = 136315394;
    v179 = v175;
    v180 = v108;
    sub_1000BC4D4(&qword_1016A49D8, &qword_1013B1380);
    v109 = String.init<A>(describing:)();
    v111 = sub_1000136BC(v109, v110, &v180);

    *(v107 + 4) = v111;
    *(v107 + 12) = 2080;
    v112 = Dictionary.description.getter();
    v114 = sub_1000136BC(v112, v113, &v180);

    *(v107 + 14) = v114;
    _os_log_impl(&_mh_execute_header, v105, v106, "%s: IDSSendMessageOptions: %s", v107, 0x16u);
    swift_arrayDestroy();
  }

  v115 = v174[7];
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100D1B288(v172);

  v117 = Set._bridgeToObjectiveC()().super.isa;

  sub_1006950E0(v101);

  v118 = Dictionary._bridgeToObjectiveC()().super.isa;

  v179 = 0;
  v180 = 0;
  v119 = [v115 sendData:isa toDestinations:v117 priority:300 options:v118 identifier:&v179 error:&v180];

  v121 = v179;
  v120 = v180;
  if (!v119)
  {
    v127 = v180;
    v124 = v121;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v171, v176);
    (*(v177 + 8))(v167, v178);
    goto LABEL_31;
  }

  v122 = v178;
  if (v179)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v120;
    v124 = v121;
    v125 = v170;
    UUID.init(uuidString:)();

    if (v163(v125, 1, v122) == 1)
    {
      sub_10000B3A8(v125, &qword_1016980D0, &unk_10138F3B0);
      sub_1001DCF6C();
      swift_allocError();
      *v126 = 0;
      swift_willThrow();
      sub_100016590(v171, v176);
      (*(v177 + 8))(v167, v122);
LABEL_31:

      return;
    }

    v174 = v124;
    v130 = v177;
    v131 = v161;
    v173 = *(v177 + 32);
    (v173)(v161, v125, v122);
    LODWORD(v172) = v181[0];
    v132 = v183;
    v170 = v182;
    v133 = v184;
    v134 = v168;
    (*(v130 + 16))(v168, v131, v122);
    sub_100017D5C(v132, v133);
    sub_100017D5C(v132, v133);
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v165 = v135;
      v138 = v137;
      v139 = swift_slowAlloc();
      v166 = v139;
      *v138 = 136315650;
      v179 = v175;
      v180 = v139;
      sub_1000BC4D4(&qword_1016A49D8, &qword_1013B1380);
      v140 = String.init<A>(describing:)();
      LODWORD(v175) = v136;
      v142 = v130;
      v143 = sub_1000136BC(v140, v141, &v180);

      *(v138 + 4) = v143;
      *(v138 + 12) = 2080;
      sub_100D47A5C(v172, v170, v132, v133);
      v145 = v144;
      v147 = v146;
      sub_100016590(v132, v133);
      sub_100016590(v132, v133);
      v148 = sub_1000136BC(v145, v147, &v180);

      *(v138 + 14) = v148;
      *(v138 + 22) = 2080;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v149 = dispatch thunk of CustomStringConvertible.description.getter();
      v151 = v150;
      v152 = *(v142 + 8);
      v152(v134, v122);
      v153 = sub_1000136BC(v149, v151, &v180);

      *(v138 + 24) = v153;
      v154 = v165;
      _os_log_impl(&_mh_execute_header, v165, v175, "%s: Sent message %s with identifier: %s", v138, 0x20u);
      swift_arrayDestroy();

      sub_100016590(v171, v176);

      v152(v167, v122);
      v131 = v161;
    }

    else
    {
      sub_100016590(v132, v133);
      sub_100016590(v171, v176);

      sub_100016590(v132, v133);
      v155 = *(v130 + 8);
      v155(v134, v122);
      v155(v167, v122);
    }

    (v173)(v169, v131, v122);
  }

  else
  {
    sub_1001DCF6C();
    swift_allocError();
    *v128 = 0;
    swift_willThrow();
    v129 = v120;
    sub_100016590(v171, v176);
    (*(v177 + 8))(v167, v122);
  }
}

uint64_t sub_100544E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = *(a2 + 168);
  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v10 + 32))(v14 + v13, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v15 = (v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a4;
  v15[1] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10058B6D4;
  *(v16 + 24) = v14;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_1016295B0;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v12, v17);
  _Block_release(v17);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100545064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin(v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(a1 + 192);
  if (!*(v18 + 16))
  {
    return swift_endAccess();
  }

  v19 = sub_1000210EC(a2);
  if ((v20 & 1) == 0)
  {
    return swift_endAccess();
  }

  v21 = *(*(v18 + 56) + 8 * v19);
  swift_endAccess();
  if (v21 >> 62)
  {
    if (v21 >> 62 == 1)
    {
      v22 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      swift_errorRetain();
      v23 = static os_log_type_t.error.getter();
      v49 = v21;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v24 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_101385D80;
      aBlock = v21 & 0x3FFFFFFFFFFFFFFFLL;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100008C00();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Local message send error: %@", 28, 2, v25);

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
      v29 = static OS_dispatch_queue.global(qos:)();
      (*(v15 + 8))(v17, v14);
      v30 = swift_allocObject();
      v31 = v51;
      v30[2] = v50;
      v30[3] = v31;
      v30[4] = v22;
      v62 = sub_10058D73C;
      v63 = v30;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100006684;
      v61 = &unk_101629600;
      v32 = _Block_copy(&aBlock);
      v33 = v49;
      sub_10057C920(v49);

      static DispatchQoS.unspecified.getter();
      v57 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v34 = v52;
      v35 = v56;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      sub_1001E61B8(v33);
    }

    else
    {
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
      v49 = static OS_dispatch_queue.global(qos:)();
      (*(v15 + 8))(v17, v14);
      (*(v7 + 16))(&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
      v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v43 = swift_allocObject();
      v44 = v51;
      *(v43 + 16) = v50;
      *(v43 + 24) = v44;
      (*(v7 + 32))(v43 + v42, &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      v62 = sub_10058D4F4;
      v63 = v43;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100006684;
      v61 = &unk_101629650;
      v45 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v57 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v34 = v52;
      v35 = v56;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v46 = v49;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v45);
    }
  }

  else
  {

    v37 = static os_log_type_t.error.getter();
    v49 = v21;
    if (qword_101695030 != -1)
    {
      v47 = v37;
      swift_once();
      v37 = v47;
    }

    os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, qword_10177C378, "Unexpected state: pending", 25, 2, _swiftEmptyArrayStorage);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
    v38 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v17, v14);
    v39 = swift_allocObject();
    v40 = v51;
    *(v39 + 16) = v50;
    *(v39 + 24) = v40;
    v62 = sub_10058D53C;
    v63 = v39;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100006684;
    v61 = &unk_1016296A0;
    v41 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v57 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v34 = v52;
    v35 = v56;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);

    sub_1001E61B8(v49);
  }

  (*(v55 + 8))(v34, v35);
  (*(v53 + 8))(v13, v54);
}

uint64_t sub_100545A78(void (*a1)(uint64_t *))
{
  v2 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v2);
  v4 = (&v6 - v3);
  sub_10057C95C();
  *v4 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_10000B3A8(v4, &qword_10169F358, &qword_1013A0810);
}

uint64_t sub_100545B58(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_10000B3A8(v7, &qword_10169F358, &qword_1013A0810);
}

uint64_t sub_100545C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v30[1] = a4;
  v31 = a2;
  v34 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v37 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v17 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v19 = String.init<A>(describing:)();
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100008C00();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Message send future error: %@", 29, 2, v18);

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  v23 = swift_allocObject();
  v24 = v32;
  v25 = v34;
  v23[2] = v31;
  v23[3] = v25;
  v23[4] = a1;
  aBlock[4] = v24;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v33;
  v26 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v27 = v37;
  v28 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v38 + 8))(v27, v28);
  (*(v35 + 8))(v11, v36);
}

uint64_t sub_100546130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = UUID.uuidString.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Setting local %@ to pending", 27, 2, v8);

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a2 + 192);
  *(a2 + 192) = 0x8000000000000000;
  sub_100FFE25C(a3, a1, isUniquelyReferenced_nonNull_native);
  *(a2 + 192) = v14;
  return swift_endAccess();
}

uint64_t sub_1005462C4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(a1 + 192);
  if (!*(v20 + 16))
  {
    return swift_endAccess();
  }

  v21 = sub_1000210EC(a2);
  if ((v22 & 1) == 0)
  {
    return swift_endAccess();
  }

  v23 = *(*(v20 + 56) + 8 * v21);
  result = swift_endAccess();
  if (!(v23 >> 62))
  {
    sub_10057C920(v23);

    v25 = static os_log_type_t.error.getter();
    v33 = v23;
    if (qword_101695030 != -1)
    {
      v31 = v25;
      swift_once();
      v25 = v31;
    }

    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177C378, v34, v35, 2, _swiftEmptyArrayStorage);
    (*(v17 + 16))(v19, a2, v16);
    swift_beginAccess();
    sub_1001DF51C(0xF000000000000007, v19);
    swift_endAccess();
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
    v26 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v15, v12);
    v27 = v33;
    aBlock[4] = v36;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = v37;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v43 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v29 = v39;
    v30 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    sub_1001E61B8(v27);
    sub_1001E61B8(v27);
    (*(v41 + 8))(v29, v30);
    (*(v38 + 8))(v11, v40);
  }

  return result;
}

uint64_t sub_100546800(uint64_t a1)
{
  sub_10057C95C();
  swift_allocError();
  Future.finish(error:)();
}

uint64_t sub_10054686C()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  sub_101074EA4(v1);

  result = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  qword_1016A44F0 = result;
  return result;
}

uint64_t sub_100546944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100546968, 0, 0);
}

uint64_t sub_100546968()
{
  if (qword_1016947C8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100546AB4;
  v5 = v0[3];

  return (v7)(v5, &unk_1013B1058, v3, SharingCircleWildAdvertisementKey.init(key:), 0);
}

uint64_t sub_100546AB4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {

    v2 = sub_10058D72C;
  }

  else
  {

    v2 = sub_100546BFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100546C24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100546C44, 0, 0);
}

uint64_t sub_100546C44()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_100546CB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = type metadata accessor for Transaction();
    __chkstk_darwin(v3);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_100546D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v20 = *(v9 - 8);
  v21 = v9;
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v19[1] = *(a2 + 184);
  sub_10058B200(a3, v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_100589B28(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for OwnedBeaconRecord);
  aBlock[4] = sub_10057F698;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101627B70;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v8, v6);
  (*(v20 + 8))(v11, v21);
}

uint64_t sub_10054712C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  Transaction.capture()();
  sub_1005473E4(a3);
  type metadata accessor for Transaction();
  sub_10058B200(a3, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  sub_100589B28(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for OwnedBeaconRecord);

  static Transaction.asyncTask(name:block:)();
}

void sub_1005473E4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v4 + 184);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  sub_100547644(a1);
  if (v2)
  {
    return;
  }

  v3 = v14;
  v9 = v15;
  v22 = v13;
  v23 = 0;
  v12 = static os_log_type_t.default.getter();
  if (qword_101695058 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = qword_10177C3A0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  type metadata accessor for OwnedBeaconRecord(0);
  v18 = UUID.uuidString.getter();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100008C00();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v16, "reevaluateFamilySharing for %@", 30, 2, v17);

  sub_100548EBC(a1, v3);
  sub_100549C10(a1, v22, v9);
}

void sub_100547644(uint64_t a1)
{
  v2 = v1;
  v151 = a1;
  v145 = type metadata accessor for CorrelationIdentifierMap();
  v3 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v159 = v142 - v9;
  v160 = type metadata accessor for ShareRecord(0);
  v10 = *(v160 - 8);
  v11 = __chkstk_darwin(v160);
  v158 = (v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = v142 - v14;
  __chkstk_darwin(v13);
  v156 = v142 - v16;
  v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v17 - 8);
  v148 = v142 - v18;
  v150 = type metadata accessor for DirectorySequence();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  *&v163 = v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for URL();
  v153 = *(v147 - 8);
  v20 = __chkstk_darwin(v147);
  v146 = v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v152 = v142 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v164[0] = 0x7365547265646E75;
  v164[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v165 == 1)
  {
    sub_100909CAC(_swiftEmptyArrayStorage);
    return;
  }

  v143 = v3;
  v27 = v1[23];
  *v26 = v27;
  (*(v24 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v23);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v26, v23);
  if (v29)
  {
    v157 = v8;
    v30 = v2[18];
    v29 = *(type metadata accessor for OwnedBeaconRecord(0) + 20);
    v162 = *(v30 + 168);
    v2 = objc_autoreleasePoolPush();
    if (qword_101694468 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_7:
  v31 = v147;
  sub_1000076D4(v147, qword_10177A518);
  v142[1] = v29;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v2);
  v164[0] = _swiftEmptyArrayStorage;
  v165 = _swiftEmptyArrayStorage;
  v32 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v33 = v148;
  DirectorySequence.next()();
  v34 = v31;
  v35 = v153;
  v155 = *(v153 + 48);
  if ((v155)(v33, 1, v34) == 1)
  {
LABEL_11:
    (*(v149 + 8))(v163, v150);
    LODWORD(v163) = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v40 = v34;
    v41 = static OS_os_log.default.getter();
    v150 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10138BBE0;
    v43 = v164[0];
    v44 = *(v164[0] + 16);
    *(v42 + 56) = &type metadata for Int;
    *(v42 + 64) = &protocol witness table for Int;
    *(v42 + 32) = v44;
    v45 = sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v46 = v152;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    *(v42 + 96) = &type metadata for String;
    v149 = sub_100008C00();
    *(v42 + 104) = v149;
    *(v42 + 72) = v47;
    *(v42 + 80) = v49;
    os_log(_:dso:log:_:_:)(v163, &_mh_execute_header, v41, "Found %i records at %@", 22, 2, v42);

    (*(v153 + 8))(v46, v40);

    v50 = *(v43 + 16);
    if (v50)
    {
      v155 = (v156 + *(v160 + 36));
      v51 = v43 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v154 = *(v10 + 72);
      v52 = _swiftEmptyArrayStorage;
      do
      {
        v53 = v156;
        sub_10058B200(v51, v156, type metadata accessor for ShareRecord);
        LODWORD(v163) = *v155;
        v54 = *(v155 + 2);
        v162 = *(v155 + 1);

        sub_10058B268(v53, type metadata accessor for ShareRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_100A5C1F8(0, *(v52 + 2) + 1, 1, v52);
        }

        v56 = *(v52 + 2);
        v55 = *(v52 + 3);
        if (v56 >= v55 >> 1)
        {
          v52 = sub_100A5C1F8((v55 > 1), v56 + 1, 1, v52);
        }

        *(v52 + 2) = v56 + 1;
        v57 = &v52[24 * v56];
        v57[32] = v163;
        *(v57 + 5) = v162;
        *(v57 + 6) = v54;
        v51 += v154;
        --v50;
      }

      while (v50);
    }

    else
    {
      v52 = _swiftEmptyArrayStorage;
    }

    v162 = sub_101129FC8(v52);

    v156 = sub_100589064();
    v58 = Set.init(minimumCapacity:)();
    v59 = 0;
    v165 = v58;
    *&v163 = v10 + 56;
    v60 = (v10 + 48);
    while (1)
    {
      v61 = *(v43 + 16);
      v62 = v160;
      if (v59 != v61)
      {
        v64 = v59;
        v63 = v157;
        while ((v59 & 0x8000000000000000) == 0)
        {
          if (v64 >= *(v43 + 16))
          {
            goto LABEL_50;
          }

          v65 = (v64 + 1);
          sub_10058B200(v43 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v64, v15, type metadata accessor for ShareRecord);
          v66 = &v15[*(v62 + 40)];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = v68 & 0xFFFFFFFFFFFFLL;
          if ((v67 & 0x2000000000000000) != 0)
          {
            v70 = HIBYTE(v67) & 0xF;
          }

          else
          {
            v70 = v69;
          }

          if (v70)
          {
            v71 = v159;
            sub_100589B28(v15, v159, type metadata accessor for ShareRecord);
            (*v163)(v71, 0, 1, v62);
            v59 = v65;
            goto LABEL_34;
          }

          v58 = sub_10058B268(v15, type metadata accessor for ShareRecord);
          v64 = v65;
          if (v61 == v65)
          {
            v59 = v61;
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v63 = v157;
LABEL_32:
      v71 = v159;
      (*v163)(v159, 1, 1, v62);
LABEL_34:
      sub_1000D2AD8(v71, v63, &qword_1016A4780, &qword_1013B34F0);
      if ((*v60)(v63, 1, v62) == 1)
      {
        break;
      }

      v72 = v158;
      sub_100589B28(v63, v158, type metadata accessor for ShareRecord);
      v73 = (v72 + *(v62 + 36));
      v75 = *(v73 + 1);
      v74 = *(v73 + 2);
      v76 = *v73;

      sub_10058B268(v72, type metadata accessor for ShareRecord);
      sub_100DEB438(v164, v76, v75, v74);
    }

    v10 = v165;
    v77 = v161;
    v78 = sub_100582A7C();
    if (v77)
    {
      goto LABEL_47;
    }

    v59 = v78;
    v79 = v78[2];
    v80 = _swiftEmptyArrayStorage;
    if (v79)
    {
      v160 = v10;
      v161 = 0;
      v164[0] = _swiftEmptyArrayStorage;
      sub_101124900(0, v79, 0);
      v80 = v164[0];
      *&v163 = v59;
      v81 = (v59 + 64);
      do
      {
        v82 = *(v81 - 32);
        v83 = *(v81 - 3);
        v84 = *(v81 - 2);
        v85 = *(v81 - 1);
        v86 = *v81;

        sub_10002E98C(v85, v86);
        sub_100006654(v85, v86);
        v164[0] = v80;
        v88 = v80[2];
        v87 = v80[3];
        if (v88 >= v87 >> 1)
        {
          sub_101124900((v87 > 1), v88 + 1, 1);
          v80 = v164[0];
        }

        v80[2] = v88 + 1;
        v89 = &v80[3 * v88];
        *(v89 + 32) = v82;
        v81 += 5;
        v89[5] = v83;
        v89[6] = v84;
        --v79;
      }

      while (v79);
      v10 = v160;
      v90 = v161;
      v59 = v163;
    }

    else
    {
      v90 = 0;
    }

    v61 = sub_101129FC8(v80);

    v62 = v162;

    v92 = sub_10039DC8C(v91, v10);

    v94 = sub_10039DC8C(v93, v92);
    v95 = swift_allocObject();
    v95[2] = v94;
    v95[3] = v10;
    v95[4] = v62;

    v60 = v144;
    v15 = v145;
    v45 = v90;
    unsafeFromAsyncTask<A>(_:)();
    if (v90)
    {

LABEL_47:

LABEL_48:

      return;
    }

    sub_1004F019C(v61);
LABEL_51:
    v96 = v58;
    sub_1004F019C(v10);
    if (v45)
    {
      (*(v143 + 8))(v60, v15);

      goto LABEL_48;
    }

    v98 = v97;

    if (*(v98 + 16) <= v96[2] >> 3)
    {
      v164[0] = v96;
      sub_10087DA70(v98);

      v99 = v164[0];
    }

    else
    {
      v99 = sub_100615308(v98, v96);
    }

    sub_1004F04AC(v99);
    v160 = v100;

    sub_1004F019C(v62);
    v102 = v101;

    sub_1004F019C(v61);
    v104 = v103;

    if (*(v104 + 16) <= v102[2] >> 3)
    {
      v164[0] = v102;
      sub_10087DA70(v104);

      v105 = v164[0];
    }

    else
    {
      v105 = sub_100615308(v104, v102);
    }

    sub_1004F04AC(v105);
    v155 = v106;

    v107 = sub_100909CAC(_swiftEmptyArrayStorage);
    v108 = *(v59 + 16);
    v161 = 0;
    if (v108)
    {
      v109 = 0;
      v157 = v108;
      v158 = (v59 + 32);
      v110 = v160;
      v162 = v160 + 56;
      *&v163 = v59;
      while (v109 < *(v59 + 16))
      {
        v159 = v107;
        v112 = &v158[5 * v109];
        v114 = v112[2];
        v113 = v112[3];
        v115 = v112[4];
        if (*(v110 + 16))
        {
          v116 = *v112;
          v117 = v112[1];
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v116);

          sub_10002E98C(v113, v115);

          sub_10002E98C(v113, v115);

          String.hash(into:)();
          v118 = Hasher._finalize()();
          v119 = -1 << *(v160 + 32);
          v120 = v118 & ~v119;
          if ((*(v162 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120))
          {
            v121 = ~v119;
            v122 = *(v160 + 48);
            while (1)
            {
              v123 = (v122 + 24 * v120);
              if (*v123 == v116)
              {
                v124 = *(v123 + 1) == v117 && *(v123 + 2) == v114;
                if (v124 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }
              }

              v120 = (v120 + 1) & v121;
              if (((*(v162 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
              {
                sub_100006654(v113, v115);
                swift_bridgeObjectRelease_n();
                sub_100006654(v113, v115);
                v126 = v159;

                v107 = v126;
                v59 = v163;
                v108 = v157;
                goto LABEL_64;
              }
            }

            v108 = v157;
            if (v115 >> 60 == 15)
            {

              sub_100006654(v113, v115);

              goto LABEL_79;
            }

            sub_100017D5C(v113, v115);
            v127 = v159;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v164[0] = v127;
            sub_100FFE428(v113, v115, v116, v117, v114, isUniquelyReferenced_nonNull_native);
            sub_100006654(v113, v115);

            sub_100006654(v113, v115);

            v107 = v164[0];
          }

          else
          {
            sub_100006654(v113, v115);
            swift_bridgeObjectRelease_n();
            sub_100006654(v113, v115);
LABEL_79:
            v125 = v159;

            v107 = v125;
          }

          v59 = v163;
        }

        else
        {

          sub_10002E98C(v113, v115);

          sub_10002E98C(v113, v115);
          v111 = v159;

          sub_100006654(v113, v115);
          swift_bridgeObjectRelease_n();
          sub_100006654(v113, v115);

          v107 = v111;
        }

LABEL_64:
        ++v109;
        v110 = v160;
        if (v109 == v108)
        {
          goto LABEL_83;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_83:
      v159 = v107;

      v108 = static os_log_type_t.default.getter();
      if (qword_101695058 == -1)
      {
LABEL_84:
        v129 = qword_10177C3A0;
        v130 = swift_allocObject();
        v163 = xmmword_101385D80;
        *(v130 + 16) = xmmword_101385D80;
        v131 = UUID.uuidString.getter();
        v132 = v149;
        *(v130 + 56) = &type metadata for String;
        *(v130 + 64) = v132;
        *(v130 + 32) = v131;
        *(v130 + 40) = v133;
        os_log(_:dso:log:_:_:)(v108, &_mh_execute_header, v129, "Processing beacon: %@", 21, 2, v130);

        v134 = static os_log_type_t.default.getter();
        v135 = swift_allocObject();
        *(v135 + 16) = v163;
        v136 = Set.description.getter();
        *(v135 + 56) = &type metadata for String;
        *(v135 + 64) = v132;
        *(v135 + 32) = v136;
        *(v135 + 40) = v137;
        os_log(_:dso:log:_:_:)(v134, &_mh_execute_header, v129, "Possible shares  : %@", 21, 2, v135);

        v138 = static os_log_type_t.default.getter();
        v139 = swift_allocObject();
        *(v139 + 16) = v163;
        v140 = Set.description.getter();
        *(v139 + 56) = &type metadata for String;
        *(v139 + 64) = v132;
        *(v139 + 32) = v140;
        *(v139 + 40) = v141;
        os_log(_:dso:log:_:_:)(v138, &_mh_execute_header, v129, "Shares to remove: %@", 20, 2, v139);

        (*(v143 + 8))(v144, v145);
        return;
      }
    }

    swift_once();
    goto LABEL_84;
  }

  v154 = *(v35 + 32);
  v36 = (v35 + 8);
  v37 = v146;
  while (1)
  {
    v154(v37, v33, v34);
    v38 = objc_autoreleasePoolPush();
    v39 = v161;
    sub_1005FF9CC(v37, v162, v164, &v165);
    v161 = v39;
    if (v39)
    {
      break;
    }

    objc_autoreleasePoolPop(v38);
    (*v36)(v37, v34);
    DirectorySequence.next()();
    if ((v155)(v33, 1, v34) == 1)
    {
      goto LABEL_11;
    }
  }

  objc_autoreleasePoolPop(v38);
  __break(1u);
}

uint64_t sub_100548BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100548C14, 0, 0);
}

uint64_t sub_100548C14()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100548D28;
  v5 = v0[2];
  v6 = v0[3];

  return sub_1004EF498(v5, 0xD00000000000001BLL, 0x800000010134CCA0, v6, sub_100589FEC, v3);
}

uint64_t sub_100548D28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100548E1C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  if ((sub_10111FDB4(a4, a5, a6, a7) & 1) == 0)
  {
    if (sub_10111FDB4(v11, a5, a6, a8))
    {
      v11 = v11;
    }

    else
    {
      v11 = a1;
    }
  }

  return v11;
}

void sub_100548EBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ShareRecord(0);
  v7 = *(v6 - 8);
  v100 = v6;
  v101 = v7;
  v8 = __chkstk_darwin(v6);
  v103 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = &v82 - v10;
  v11 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v11 - 8);
  v94 = &v82 - v12;
  v93 = type metadata accessor for DirectorySequence();
  v13 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for URL();
  v15 = *(v91 - 8);
  v16 = __chkstk_darwin(v91);
  v83 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = &v82 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v3[23];
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if (v25)
  {
    v26 = a2 + 56;
    v27 = 1 << *(a2 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(a2 + 56);
    v30 = (v27 + 63) >> 6;
    v90 = (v15 + 48);
    v89 = (v13 + 8);

    v31 = 0;
    v98 = xmmword_10138BBE0;
    v88 = a2;
    v87 = v3;
    v86 = a1;
    v85 = a2 + 56;
    v84 = v30;
    v82 = (v15 + 32);
    v108 = (v15 + 8);
    if (!v29)
    {
      goto LABEL_5;
    }

    do
    {
LABEL_9:
      v96 = v31;
      v97 = v29;
      v33 = (*(a2 + 48) + 24 * (__clz(__rbit64(v29)) | (v31 << 6)));
      v109 = *v33;
      v34 = *(v33 + 2);
      v107 = *(v33 + 1);
      v35 = v3[18];
      v36 = *(type metadata accessor for OwnedBeaconRecord(0) + 20);
      v37 = *(v35 + 168);
      v106 = v34;

      v38 = objc_autoreleasePoolPush();
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v39 = v91;
      sub_1000076D4(v91, qword_10177A518);
      v95 = v36;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      objc_autoreleasePoolPop(v38);
      v110 = _swiftEmptyArrayStorage;
      v111 = _swiftEmptyArrayStorage;
      v40 = [objc_opt_self() defaultManager];
      v41 = v92;
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      v42 = v94;
      DirectorySequence.next()();
      v43 = v39;
      v44 = *v90;
      v45 = (*v90)(v42, 1, v39);
      v46 = v102;
      if (v45 != 1)
      {
        v47 = *v82;
        v104 = v37;
        v105 = v47;
        v48 = v83;
        do
        {
          v105(v48, v42, v43);
          v49 = v43;
          v50 = objc_autoreleasePoolPush();
          sub_1005FF9CC(v48, v104, &v111, &v110);
          objc_autoreleasePoolPop(v50);
          (*v108)(v48, v49);
          DirectorySequence.next()();
          v43 = v49;
        }

        while (v44(v42, 1, v49) != 1);
      }

      (*v89)(v41, v93);
      v51 = static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v52 = v43;
      v53 = static OS_os_log.default.getter();
      v105 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = v98;
      v55 = v111;
      v56 = v111[2];
      *(v54 + 56) = &type metadata for Int;
      *(v54 + 64) = &protocol witness table for Int;
      *(v54 + 32) = v56;
      sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

      v57 = v99;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      *(v54 + 96) = &type metadata for String;
      v104 = sub_100008C00();
      *(v54 + 104) = v104;
      *(v54 + 72) = v58;
      *(v54 + 80) = v60;
      os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v53, "Found %i records at %@", 22, 2, v54);

      (*v108)(v57, v52);

      v61 = v55[2];
      if (v61)
      {
        v62 = 0;
        v63 = _swiftEmptyArrayStorage;
        v64 = v100;
        v65 = v101;
        while (v62 < v55[2])
        {
          v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v67 = *(v65 + 72);
          sub_10058B200(v55 + v66 + v67 * v62, v46, type metadata accessor for ShareRecord);
          v68 = (v46 + *(v64 + 36));
          if (*v68 == v109 && (*(v68 + 1) == v107 ? (v69 = *(v68 + 2) == v106) : (v69 = 0), v69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            sub_100589B28(v46, v103, type metadata accessor for ShareRecord);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v111 = v63;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_101124CDC(0, v63[2] + 1, 1);
              v64 = v100;
              v63 = v111;
            }

            v72 = v63[2];
            v71 = v63[3];
            if (v72 >= v71 >> 1)
            {
              sub_101124CDC((v71 > 1), v72 + 1, 1);
              v64 = v100;
              v63 = v111;
            }

            v63[2] = v72 + 1;
            sub_100589B28(v103, v63 + v66 + v72 * v67, type metadata accessor for ShareRecord);
            v65 = v101;
            v46 = v102;
          }

          else
          {
            sub_10058B268(v46, type metadata accessor for ShareRecord);
          }

          if (v61 == ++v62)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      v63 = _swiftEmptyArrayStorage;
LABEL_31:

      v73 = static os_log_type_t.default.getter();
      if (qword_101695058 != -1)
      {
        swift_once();
      }

      v74 = (v97 - 1) & v97;
      v75 = qword_10177C3A0;
      v76 = swift_allocObject();
      *(v76 + 16) = v98;
      v77 = UUID.uuidString.getter();
      v78 = v104;
      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = v78;
      *(v76 + 32) = v77;
      *(v76 + 40) = v79;
      *(v76 + 96) = &type metadata for String;
      *(v76 + 104) = v78;
      v80 = v106;
      *(v76 + 72) = v107;
      *(v76 + 80) = v80;
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v75, "Unshare %@ to %@", 16, 2, v76);
      v29 = v74;

      v81 = type metadata accessor for Transaction();
      __chkstk_darwin(v81);
      v3 = v87;
      *(&v82 - 2) = v63;
      *(&v82 - 1) = v3;
      static Transaction.named<A>(_:with:)();

      a2 = v88;
      v26 = v85;
      v30 = v84;
      v31 = v96;
    }

    while (v29);
LABEL_5:
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {

        return;
      }

      v29 = *(v26 + 8 * v32);
      ++v31;
      if (v29)
      {
        v31 = v32;
        goto LABEL_9;
      }
    }

LABEL_37:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100549964(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = result;
    v5 = *(type metadata accessor for ShareRecord(0) - 8);
    v6 = (a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
    v7 = *(v5 + 72);
    do
    {

      sub_100528B94(v6, sub_100589F30, v4);

      v6 = (v6 + v7);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100549A40(uint64_t a1)
{
  Transaction.capture()();
  if (a1)
  {
    swift_errorRetain();
    v2 = static os_log_type_t.error.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    v3 = qword_10177C3A0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100008C00();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Error unsharing: %@", 19, 2, v4);
  }

  else
  {
    v9 = static os_log_type_t.default.getter();
    if (qword_101695058 != -1)
    {
      v11 = v9;
      swift_once();
      v9 = v11;
    }

    v10 = qword_10177C3A0;

    return os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Unshare successful", 18, 2, _swiftEmptyArrayStorage);
  }
}

void sub_100549C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a3;
  v109 = a2;
  v105 = a1;
  v101 = type metadata accessor for ShareInstruction(0);
  __chkstk_darwin(v101);
  v100 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharingRampState(0);
  __chkstk_darwin(v5 - 8);
  v106 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for UUID();
  v7 = *(v110 - 8);
  __chkstk_darwin(v110);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = v3;
  v14 = *(v3 + 184);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    goto LABEL_45;
  }

  v17 = [objc_allocWithZone(ACAccountStore) init];
  v18 = [v17 aa_primaryAppleAccount];

  if (!v18)
  {
    v16 = static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_7;
  }

  sub_1000BC4D4(&qword_1016A4778, &qword_1013B10F8);
  unsafeFromAsyncTask<A>(_:)();
  v98 = v113;
  if (!v113)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177A560);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No BeaconSharingService available!", v25, 2u);
    }

    return;
  }

  v19 = [v18 aa_altDSID];
  v90 = v18;
  v107 = v9;
  if (v19)
  {
    v20 = v19;
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v21;
  }

  else
  {
    v97 = 0;
    v99 = 0xE000000000000000;
  }

  v26 = v109 + 56;
  v27 = 1 << *(v109 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v109 + 56);
  v30 = (v27 + 63) >> 6;
  v94 = (v7 + 16);
  v93 = (v7 + 8);

  v31 = 0;
  v32 = 0;
  *&v33 = 141558275;
  v91 = v33;
  v92 = xmmword_101385D80;
  v96 = v26;
  v95 = v30;
  while (v29)
  {
    v111 = v32;
LABEL_23:
    v35 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v36 = (*(v109 + 48) + 24 * (v35 | (v31 << 6)));
    v112 = *v36;
    v37 = *(v36 + 1);
    v38 = *(v36 + 2);

    v39 = v106;
    sub_10052FFA4(v106);
    v40 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    v41 = (*(*(v40 - 8) + 48))(v39, 2, v40);
    sub_10058B268(v39, type metadata accessor for SharingRampState);
    if (v41 == 2)
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1000076D4(v42, qword_10177A560);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Beacon sharing is allowed to use item sharing for self beacons.", v45, 2u);
      }

      v46 = swift_allocObject();
      *(v46 + 16) = v98;
      *(v46 + 24) = v112;
      *(v46 + 32) = v37;
      *(v46 + 40) = v38;

      unsafeFromAsyncTask<A>(_:)();

      v47 = v113;

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      v50 = os_log_type_enabled(v48, v49);
      if (v47 == 1)
      {
        if (v50)
        {
          v51 = swift_slowAlloc();
          v52 = v38;
          v53 = swift_slowAlloc();
          v113 = v53;
          *v51 = v91;
          *(v51 + 4) = 1752392040;
          *(v51 + 12) = 2081;

          v54 = sub_1000136BC(v37, v52, &v113);

          *(v51 + 14) = v54;
          _os_log_impl(&_mh_execute_header, v48, v49, "Destination has devices requiring legacy shares to %{private,mask.hash}s.", v51, 0x16u);
          sub_100007BAC(v53);
          v38 = v52;
        }

        goto LABEL_32;
      }

      if (v50)
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v113 = v86;
        *v85 = v91;
        *(v85 + 4) = 1752392040;
        *(v85 + 12) = 2081;
        v87 = sub_1000136BC(v37, v38, &v113);

        *(v85 + 14) = v87;
        _os_log_impl(&_mh_execute_header, v48, v49, "Skipping sending .automatic_legacy share to %{private,mask.hash}s since they have no devices not capable of item sharing", v85, 0x16u);
        sub_100007BAC(v86);
      }

      else
      {
      }

      v32 = v111;
    }

    else
    {
LABEL_32:
      v55 = *(v108 + 16);
      v104 = v37;
      if (v55 && (v56 = sub_100772110(v112, v37, v38), (v57 & 1) != 0))
      {
        v58 = (*(v108 + 56) + 16 * v56);
        v60 = *v58;
        v59 = v58[1];
        type metadata accessor for OwnedBeaconRecord(0);
        v89 = v59;
        sub_100017D5C(v60, v59);
        v61 = UUID.data.getter();
        v103 = v38;
        v63 = v62;
        v117 = v61;
        v118 = v62;
        v115 = &type metadata for Data;
        v116 = &protocol witness table for Data;
        v113 = v60;
        v114 = v59;
        v64 = sub_1000035D0(&v113, &type metadata for Data);
        v66 = *v64;
        v65 = v64[1];
        sub_100017D5C(v60, v59);
        sub_100017D5C(v61, v63);
        v67 = v111;
        sub_100017DB0(v66, v65, &v117);
        v111 = v67;
        sub_100016590(v61, v63);
        sub_100007BAC(&v113);
        v68 = v117;
        v69 = v118;
        v113 = v117;
        v114 = v118;
        sub_1000E0A3C();
        v70 = v107;
        v71 = v103;
        DataProtocol.stableUUID.getter();
        sub_100016590(v60, v89);
        sub_100016590(v68, v69);
      }

      else
      {
        v72 = static os_log_type_t.error.getter();
        if (qword_101695058 != -1)
        {
          swift_once();
        }

        v73 = qword_10177C3A0;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v74 = swift_allocObject();
        *(v74 + 16) = v92;
        *(v74 + 56) = &type metadata for String;
        *(v74 + 64) = sub_100008C00();
        *(v74 + 32) = v37;
        *(v74 + 40) = v38;

        os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v73, "Unable to obtain stable shareIdentifier for %@", 46, 2, v74);

        v70 = v107;
        UUID.init()();
        v71 = v38;
      }

      v76 = v100;
      v75 = v101;
      v77 = v105;
      sub_10058B200(v105, &v100[*(v101 + 24)], type metadata accessor for OwnedBeaconRecord);
      (*v94)(v76 + v75[8], v70, v110);
      v78 = v75[9];
      v79 = type metadata accessor for Date();
      (*(*(v79 - 8) + 56))(v76 + v78, 1, 1, v79);
      *v76 = 1;
      v80 = v99;
      *(v76 + 8) = v97;
      *(v76 + 16) = v80;
      v81 = v76 + v75[7];
      v82 = v112;
      *v81 = v112;
      v83 = v104;
      *(v81 + 8) = v104;
      *(v81 + 16) = v71;
      v84 = type metadata accessor for Transaction();
      v103 = &v89;
      __chkstk_darwin(v84);
      *(&v89 - 6) = v102;
      *(&v89 - 5) = v76;
      *(&v89 - 4) = v77;
      *(&v89 - 24) = v82;
      *(&v89 - 2) = v83;
      *(&v89 - 1) = v71;

      v32 = v111;
      static Transaction.named<A>(_:with:)();

      (*v93)(v107, v110);
      v16 = sub_10058B268(v76, type metadata accessor for ShareInstruction);
      v26 = v96;
      v30 = v95;
    }
  }

  while (1)
  {
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v34 >= v30)
    {

      return;
    }

    v29 = *(v26 + 8 * v34);
    ++v31;
    if (v29)
    {
      v111 = v32;
      v31 = v34;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  v88 = v16;
  swift_once();
  v16 = v88;
LABEL_7:
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C398, "Could not obtain aa_primaryAppleAccount!", 40, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_10054A8AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10054A940;

  return daemon.getter();
}

uint64_t sub_10054A940(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100003DFC(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003DFC(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_10054AB1C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10054AB1C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10054AC90;
  }

  else
  {

    *(v4 + 48) = a1;
    v5 = sub_10054AC70;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10054ACAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_100466D68;

  return sub_10018E438(a3, a4, a5);
}

uint64_t sub_10054AD64(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v58 = a6;
  v57 = a4;
  v54 = a2;
  v55 = a3;
  v48 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  __chkstk_darwin(v48);
  v49 = (&v46 - v10);
  v53 = type metadata accessor for OwnedBeaconRecord(0);
  v11 = *(v53 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v53);
  v14 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v46 - v16;
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  sub_10058B200(v57, &v46 - v18, type metadata accessor for OwnedBeaconRecord);
  v57 = v17;
  sub_10058B200(v19, v17, type metadata accessor for OwnedBeaconRecord);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  sub_100589B28(v19, v22 + v20, type metadata accessor for OwnedBeaconRecord);
  v56 = v22;
  v23 = v22 + v21;
  v50 = a5;
  *v23 = a5;
  *(v23 + 8) = v58;
  *(v23 + 16) = a7;
  v51 = a7;

  v47 = a1;

  v52 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v24 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  v46 = xmmword_10138BBE0;
  *(v25 + 16) = xmmword_10138BBE0;
  v26 = type metadata accessor for ShareInstruction(0);
  v27 = v55;
  sub_10058B200(v55 + *(v26 + 24), v14, type metadata accessor for OwnedBeaconRecord);
  v28 = String.init<A>(describing:)();
  v30 = v29;
  *(v25 + 56) = &type metadata for String;
  v31 = sub_100008C00();
  *(v25 + 64) = v31;
  *(v25 + 32) = v28;
  *(v25 + 40) = v30;
  v32 = v27 + *(v26 + 28);
  v33 = *(v32 + 8);
  v34 = *(v32 + 16);
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v31;
  *(v25 + 72) = v33;
  *(v25 + 80) = v34;

  os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v24, "Share beacon: %@ to %@", 22, 2, v25);

  v35 = v54;
  v36 = sub_1005401C0(v27);
  if (v36)
  {
    v37 = v36;
    v38 = static os_log_type_t.error.getter();
    v39 = swift_allocObject();
    *(v39 + 16) = v46;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v31;
    *(v39 + 32) = v33;
    *(v39 + 40) = v34;
    v59 = v37;

    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v40 = String.init<A>(describing:)();
    *(v39 + 96) = &type metadata for String;
    *(v39 + 104) = v31;
    *(v39 + 72) = v40;
    *(v39 + 80) = v41;
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v24, "Cannot share to [%@]: %@", 24, 2, v39);

    v42 = v49;
    *v49 = v37;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v43 = v57;
    sub_10054B230(v42, v47, v57, v50, v58, v51);

    sub_10000B3A8(v42, &unk_1016B1650, &unk_1013B1110);
  }

  else
  {
    v44 = v56;

    sub_1005816AC(v27, v35, sub_1005891D8, v44);

    v43 = v57;
  }

  return sub_10058B268(v43, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_10054B230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  __chkstk_darwin(v9);
  v11 = (v30 - v10);
  Transaction.capture()();
  sub_1000D2A70(a1, v11, &unk_1016B1650, &unk_1013B1110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = static os_log_type_t.error.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C3A0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10138B360;
    type metadata accessor for OwnedBeaconRecord(0);
    v16 = UUID.uuidString.getter();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    v19 = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v19;
    *(v15 + 64) = v19;
    *(v15 + 72) = a5;
    *(v15 + 80) = a6;
    v30[1] = v12;

    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20 = String.init<A>(describing:)();
    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = v19;
    *(v15 + 112) = v20;
    *(v15 + 120) = v21;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Failed to share %@ shared to %@: %@", 35, 2, v15);
  }

  else
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C3A0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138BBE0;
    type metadata accessor for OwnedBeaconRecord(0);
    v26 = UUID.uuidString.getter();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    v29 = sub_100008C00();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v29;
    *(v25 + 64) = v29;
    *(v25 + 72) = a5;
    *(v25 + 80) = a6;

    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Successfully shared %@ with %@", 30, 2, v25);

    return sub_10000B3A8(v11, &unk_1016B1650, &unk_1013B1110);
  }
}

unint64_t sub_10054B538(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v72 = *(v12 - 8);
  v73 = v12;
  __chkstk_darwin(v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v71 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  swift_beginAccess();
  v18 = *(a2 + 192);
  if (*(v18 + 16))
  {
    v19 = sub_1000210EC(a3);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();
      if (v21 >> 62)
      {
        if (v21 >> 62 == 1)
        {
          swift_errorRetain();
          v22 = static os_log_type_t.error.getter();
          if (qword_101695030 != -1)
          {
            v63 = v22;
            swift_once();
            v22 = v63;
          }

          os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C378, "ERROR: Unexpected state: error", 30, 2, _swiftEmptyArrayStorage);
          return sub_1001E61B8(v21);
        }

        else
        {
          v41 = static os_log_type_t.error.getter();
          if (qword_101695030 != -1)
          {
            v64 = v41;
            swift_once();
            v41 = v64;
          }

          return os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, qword_10177C378, "ERROR: Already in sent state!", 29, 2, _swiftEmptyArrayStorage);
        }
      }

      v70 = v21;
      if (a4)
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = *(a2 + 192);
        *(a2 + 192) = 0x8000000000000000;
        sub_100FFE25C(0x8000000000000000, a3, isUniquelyReferenced_nonNull_native);
        *(a2 + 192) = v82;
        swift_endAccess();
        LODWORD(v69) = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v31 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_101385D80;
        type metadata accessor for UUID();
        sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = sub_100008C00();
        *(v32 + 32) = v33;
        *(v32 + 40) = v35;
        os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v31, "Message %@ sent successfully.", 29, 2, v32);

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v36 = v71;
        (*(v71 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v15);
        v37 = static OS_dispatch_queue.global(qos:)();
        (*(v36 + 8))(v17, v15);
        v38 = v70;
        v79 = sub_10058CE30;
        v80 = v70;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_100006684;
        v78 = &unk_10162A0A0;
        v39 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v82 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v40 = v39;
      }

      else
      {
        if (a5)
        {
          sub_10057C920(v21);
          swift_errorRetain();
          LODWORD(v69) = static os_log_type_t.error.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v68 = qword_10177C378;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_10138BBE0;
          v67 = type metadata accessor for UUID();
          sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v66 = v44;
          v67 = v43;
          *(v42 + 56) = &type metadata for String;
          v45 = sub_100008C00();
          *(v42 + 64) = v45;
          v46 = v66;
          *(v42 + 32) = v67;
          *(v42 + 40) = v46;
          aBlock = a5;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v47 = String.init<A>(describing:)();
          *(v42 + 96) = &type metadata for String;
          *(v42 + 104) = v45;
          *(v42 + 72) = v47;
          *(v42 + 80) = v48;
          os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v68, "Message %@ failed to send: %@", 29, 2, v42);

          swift_beginAccess();
          swift_errorRetain();
          v49 = swift_isUniquelyReferenced_nonNull_native();
          v82 = *(a2 + 192);
          *(a2 + 192) = 0x8000000000000000;
          sub_100FFE25C(a5 | 0x4000000000000000, a3, v49);
          *(a2 + 192) = v82;
          swift_endAccess();
          sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
          v50 = v71;
          (*(v71 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v15);
          v69 = static OS_dispatch_queue.global(qos:)();
          (*(v50 + 8))(v17, v15);
          v51 = swift_allocObject();
          v52 = v70;
          *(v51 + 16) = v70;
          *(v51 + 24) = a5;
          v79 = sub_10058CE08;
          v80 = v51;
          aBlock = _NSConcreteStackBlock;
          v76 = 1107296256;
          v77 = sub_100006684;
          v78 = &unk_10162A078;
          v53 = _Block_copy(&aBlock);
          sub_10057C920(v52);
          swift_errorRetain();
          static DispatchQoS.unspecified.getter();
          v82 = _swiftEmptyArrayStorage;
          sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v54 = v69;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v53);

          sub_1001E61B8(v52);

          goto LABEL_26;
        }

        LODWORD(v69) = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v68 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_101385D80;
        type metadata accessor for UUID();
        sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        *(v55 + 56) = &type metadata for String;
        *(v55 + 64) = sub_100008C00();
        *(v55 + 32) = v56;
        *(v55 + 40) = v58;
        os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v68, "Unsuccessful didSendCallback without an error for identifier: %@", 64, 2, v55);

        type metadata accessor for SPOwnerSessionError(0);
        aBlock = 0;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
        _BridgedStoredNSError.init(_:userInfo:)();
        v59 = v82;
        swift_beginAccess();
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v81 = *(a2 + 192);
        *(a2 + 192) = 0x8000000000000000;
        sub_100FFE25C(v59 | 0x4000000000000000, a3, v60);
        *(a2 + 192) = v81;
        swift_endAccess();
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v61 = v71;
        (*(v71 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v15);
        v37 = static OS_dispatch_queue.global(qos:)();
        (*(v61 + 8))(v17, v15);
        v38 = v70;
        v79 = sub_10058CD94;
        v80 = v70;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_100006684;
        v78 = &unk_10162A028;
        v62 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v82 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v40 = v62;
      }

      _Block_release(v40);

      sub_1001E61B8(v38);
LABEL_26:
      (*(v74 + 8))(v11, v9);
      (*(v72 + 8))(v14, v73);
    }
  }

  swift_endAccess();
  v24 = static os_log_type_t.debug.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v25 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  v27 = UUID.uuidString.getter();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100008C00();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "messagesSent callback for unknown identifier %@", 47, 2, v26);
}

uint64_t sub_10054C3A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v29 = a5;
  v30 = a7;
  v28 = a4;
  v27 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a2 + 168);
  (*(v13 + 16))(v15, a3, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = v16 + v14;
  v18 = (v16 + v14) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v27;
  *(v19 + 24) = a2;
  (*(v13 + 32))(v19 + v16, v15, v12);
  *(v19 + v17) = v28;
  *(v19 + v18 + 8) = v29;
  aBlock[4] = v30;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v32;
  v20 = _Block_copy(aBlock);

  swift_errorRetain();
  v21 = v26;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v22 = v33;
  v23 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v37 + 8))(v22, v23);
  (*(v34 + 8))(v21, v36);
}

unint64_t sub_10054C78C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v76 = *(v12 - 8);
  v77 = v12;
  __chkstk_darwin(v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  swift_beginAccess();
  v18 = *(a2 + 192);
  if (!*(v18 + 16) || (v19 = sub_1000210EC(a3), (v20 & 1) == 0))
  {
    swift_endAccess();
    v24 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v25 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    v27 = UUID.uuidString.getter();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100008C00();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "localMessageSent callback for unknown identifier %@", 51, 2, v26);
  }

  v21 = *(*(v18 + 56) + 8 * v19);
  swift_endAccess();
  if (!(v21 >> 62))
  {
    v74 = v21;
    if (a4)
    {
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = *(a2 + 192);
      *(a2 + 192) = 0x8000000000000000;
      sub_100FFE25C(0x8000000000000000, a3, isUniquelyReferenced_nonNull_native);
      *(a2 + 192) = v86;
      swift_endAccess();
      LODWORD(v73) = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v31 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_101385D80;
      type metadata accessor for UUID();
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_100008C00();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v31, "Local message %@ sent successfully.", 35, 2, v32);

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v36 = v75;
      (*(v75 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v15);
      v37 = static OS_dispatch_queue.global(qos:)();
      (*(v36 + 8))(v17, v15);
      v38 = v74;
      v83 = sub_10058D728;
      v84 = v74;
      aBlock = _NSConcreteStackBlock;
      v80 = 1107296256;
      v81 = sub_100006684;
      v82 = &unk_1016297E0;
      v39 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v86 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v40 = v39;
    }

    else
    {
      if (a5)
      {
        sub_10057C920(v21);
        swift_errorRetain();
        LODWORD(v73) = static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v72 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_10138BBE0;
        v71 = type metadata accessor for UUID();
        sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v49;
        v71 = v48;
        *(v47 + 56) = &type metadata for String;
        v50 = sub_100008C00();
        *(v47 + 64) = v50;
        v51 = v70;
        *(v47 + 32) = v71;
        *(v47 + 40) = v51;
        aBlock = a5;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v52 = String.init<A>(describing:)();
        *(v47 + 96) = &type metadata for String;
        *(v47 + 104) = v50;
        *(v47 + 72) = v52;
        *(v47 + 80) = v53;
        os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v72, "Local message %@ failed to send: %@", 35, 2, v47);

        swift_beginAccess();
        swift_errorRetain();
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v86 = *(a2 + 192);
        *(a2 + 192) = 0x8000000000000000;
        sub_100FFE25C(a5 | 0x4000000000000000, a3, v54);
        *(a2 + 192) = v86;
        swift_endAccess();
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v55 = v75;
        (*(v75 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v15);
        v73 = static OS_dispatch_queue.global(qos:)();
        (*(v55 + 8))(v17, v15);
        v56 = swift_allocObject();
        v57 = v74;
        *(v56 + 16) = v74;
        *(v56 + 24) = a5;
        v83 = sub_10058D540;
        v84 = v56;
        aBlock = _NSConcreteStackBlock;
        v80 = 1107296256;
        v81 = sub_100006684;
        v82 = &unk_1016297B8;
        v58 = _Block_copy(&aBlock);
        sub_10057C920(v57);
        swift_errorRetain();
        static DispatchQoS.unspecified.getter();
        v86 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v59 = v73;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v58);

        sub_1001E61B8(v57);

        goto LABEL_27;
      }

      LODWORD(v73) = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v72 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_101385D80;
      type metadata accessor for UUID();
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      *(v60 + 56) = &type metadata for String;
      *(v60 + 64) = sub_100008C00();
      *(v60 + 32) = v61;
      *(v60 + 40) = v63;
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v72, "Unsuccessful didSendCallback without an error for identifier: %@", 64, 2, v60);

      type metadata accessor for SPOwnerSessionError(0);
      aBlock = 0;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v64 = v86;
      swift_beginAccess();
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v85 = *(a2 + 192);
      *(a2 + 192) = 0x8000000000000000;
      sub_100FFE25C(v64 | 0x4000000000000000, a3, v65);
      *(a2 + 192) = v85;
      swift_endAccess();
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v66 = v75;
      (*(v75 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v15);
      v37 = static OS_dispatch_queue.global(qos:)();
      (*(v66 + 8))(v17, v15);
      v38 = v74;
      v83 = sub_10058D4FC;
      v84 = v74;
      aBlock = _NSConcreteStackBlock;
      v80 = 1107296256;
      v81 = sub_100006684;
      v82 = &unk_101629768;
      v67 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v86 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v40 = v67;
    }

    _Block_release(v40);

    sub_1001E61B8(v38);
LABEL_27:
    (*(v78 + 8))(v11, v9);
    (*(v76 + 8))(v14, v77);
  }

  if (v21 >> 62 != 1)
  {
    v41 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v42 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_101385D80;
    v44 = UUID.uuidString.getter();
    v46 = v45;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = sub_100008C00();
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v42, "ERROR: %@ Already in sent state!", 32, 2, v43);
  }

  swift_errorRetain();
  v22 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    v68 = v22;
    swift_once();
    v22 = v68;
  }

  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_10177C378, "ERROR: %@ Unexpected state: error, identifier.uuidString", 56, 2, _swiftEmptyArrayStorage);
  return sub_1001E61B8(v21);
}

void sub_10054D63C()
{
  type metadata accessor for CommandError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_101696428, type metadata accessor for CommandError, &unk_10138A938);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

void sub_10054D6EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  if (a3)
  {
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_beginAccess();
    *(a5 + 16) = a1;
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
  }

  dispatch_group_leave(a6);
}

void sub_10054D7C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_beginAccess();
    *(a4 + 16) = a1;
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = a1;
  }

  dispatch_group_leave(a5);
}

void sub_10054D890(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v9 = *(a1 + 16) && (v7 = sub_10077262C(a3), (v8 & 1) != 0) && *(*(a1 + 56) + 8 * v7) > 0;
  swift_beginAccess();
  *(a2 + 16) = v9;
  dispatch_group_leave(a4);
}

uint64_t sub_10054D914()
{

  sub_10000B3A8(v0 + 64, &qword_1016A4998, &qword_1013B1340);
  sub_10000B3A8(v0 + 88, &qword_1016A49A0, &unk_1013B1348);
  sub_100007BAC((v0 + 104));

  return v0;
}

uint64_t sub_10054DA54()
{
  sub_10054D914();

  return swift_deallocClassInstance();
}

unint64_t sub_10054DAAC(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10054DAC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10054DB24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10054DB74(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_10054DBB0(uint64_t a1, int a2, uint64_t a3, void (*a4)(char *, char *, uint64_t))
{
  v185 = a4;
  v184 = a3;
  LODWORD(v183) = a2;
  v171 = type metadata accessor for DispatchQoS.QoSClass();
  v160 = *(v171 - 8);
  __chkstk_darwin(v171);
  v159 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for DispatchTime();
  v155 = *(v157 - 8);
  v6 = __chkstk_darwin(v157);
  v153 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v154 = &v140 - v8;
  v173 = type metadata accessor for DispatchWorkItemFlags();
  v177 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v175 = v10;
  v176 = v11;
  __chkstk_darwin(v10);
  v174 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for SecureLocationsRelayAction(0);
  v164 = *(v163 - 8);
  v13 = __chkstk_darwin(v163);
  v166 = (&v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = v14;
  __chkstk_darwin(v13);
  v168 = (&v140 - v15);
  v167 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v16 = __chkstk_darwin(v167);
  v156 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v169 = &v140 - v18;
  v162 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v162);
  v170 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v21 = __chkstk_darwin(v20 - 8);
  v161 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v178 = (&v140 - v23);
  v24 = type metadata accessor for UUID();
  v179 = *(v24 - 8);
  v180 = v24;
  v25 = v179[8];
  v26 = __chkstk_darwin(v24);
  v158 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = &v140 - v28;
  __chkstk_darwin(v27);
  v31 = &v140 - v30;
  v32 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v32);
  v34 = (&v140 - v33);
  v35 = type metadata accessor for SystemInfo.DeviceLockState();
  *&v182 = *(v35 - 8);
  v36 = __chkstk_darwin(v35);
  v38 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v140 - v39;

  v41 = v186;
  result = sub_10053AC08(12, 1, a1, &aBlock);
  if (!v41)
  {
    v146 = v32;
    v147 = v34;
    v145 = v29;
    v141 = v25;
    v142 = v31;
    v186 = 0;
    v144 = aBlock;
    v143 = v188;
    v151 = v189;
    v152 = v190;
    v43 = swift_allocObject();
    *(v43 + 16) = a1;
    v44 = v183;
    *(v43 + 24) = v183;
    v45 = v184;
    v150 = v43;
    v46 = v185;
    *(v43 + 32) = v184;
    *(v43 + 40) = v46;
    v148 = a1;

    sub_100908F24(_swiftEmptyArrayStorage);

    v149 = sub_101129A8C(_swiftEmptyArrayStorage);
    static SystemInfo.lockState.getter();
    v47 = v182;
    (*(v182 + 104))(v38, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v35);
    sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *(v47 + 8);
    v49(v38, v35);
    v49(v40, v35);
    if (v48)
    {

      v50 = static os_log_type_t.error.getter();
      v51 = v147;
      if (qword_101695030 != -1)
      {
        v139 = v50;
        swift_once();
        v50 = v139;
      }

      os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
      type metadata accessor for SPOwnerSessionError(0);
      v193 = 5;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v51 = aBlock;
      swift_storeEnumTagMultiPayload();
      sub_1005746A0(v51, v148, v44, v45, v46);

      sub_100016590(v151, v152);
      v52 = v51;
      return sub_10000B3A8(v52, &qword_10169F358, &qword_1013A0810);
    }

    v53 = v181;
    if ((sub_100540CB8(v44, v45, v46) & 1) == 0)
    {
      v78 = v152;

      v79 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v80 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_101385D80;
      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = sub_100008C00();
      *(v81 + 32) = v45;
      *(v81 + 40) = v46;

      os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v80, "Not sending since %@ has no IDS registered devices", 50, 2, v81);

      type metadata accessor for SPOwnerSessionError(0);
      v193 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v82 = v147;
      *v147 = aBlock;
      swift_storeEnumTagMultiPayload();
      sub_1005746A0(v82, v148, v44, v45, v46);

      sub_100016590(v151, v78);
      v52 = v82;
      return sub_10000B3A8(v52, &qword_10169F358, &qword_1013A0810);
    }

    v148 = *(v53 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v54 = swift_allocObject();
    v182 = xmmword_101385D80;
    *(v54 + 16) = xmmword_101385D80;
    *(v54 + 32) = v44;
    *(v54 + 40) = v45;
    *(v54 + 48) = v46;
    v55 = v178;
    v56 = v179;
    v57 = v179[7];
    v58 = v180;
    v57(v178, 1, 1, v180);

    v59 = v145;
    UUID.init()();
    v60 = v56[2];
    v61 = v170;
    v184 = (v56 + 2);
    v185 = v60;
    v60(v170, v59, v58);
    v62 = v161;
    sub_1000D2A70(v55, v161, &qword_1016980D0, &unk_10138F3B0);
    v63 = v162;
    v64 = *(v162 + 28);
    v57((v61 + v64), 1, 1, v58);
    *(v61 + v63[5]) = v54;
    *(v61 + v63[6]) = 0;
    sub_10002311C(v62, v61 + v64, &qword_1016980D0, &unk_10138F3B0);
    v65 = v61 + v63[8];
    *v65 = 0;
    *(v65 + 8) = 1;
    *(v61 + v63[9]) = 1;
    *(v61 + v63[10]) = &_swiftEmptySetSingleton;
    *(v61 + v63[11]) = v149;
    v66 = (v61 + v63[12]);
    *v66 = 0;
    v66[1] = 0;
    *(v61 + v63[13]) = xmmword_1013B0D90;
    v67 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v68 = v168;
    sub_10058B200(v61, v168 + *(v67 + 24), type metadata accessor for MessagingOptions);
    *v68 = v144;
    v69 = v151;
    *(v68 + 8) = v143;
    *(v68 + 16) = v69;
    v70 = v152;
    *(v68 + 24) = v152;
    *(v68 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v71 = v166;
    sub_10058B200(v68, v166, type metadata accessor for SecureLocationsRelayAction);
    v72 = (v164[80] + 24) & ~v164[80];
    v73 = swift_allocObject();
    *(v73 + 16) = v148;
    sub_100589B28(v71, v73 + v72, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v69, v70);

    v74 = v169;
    v75 = v186;
    unsafeFromAsyncTask<A>(_:)();
    v186 = v75;
    if (v75)
    {

      sub_10058B268(v68, type metadata accessor for SecureLocationsRelayAction);
      v76 = v186;
      v186 = 0;
      v77 = v171;
    }

    else
    {
      sub_10058B268(v68, type metadata accessor for SecureLocationsRelayAction);

      v83 = v156;
      sub_10058B200(v74, v156, type metadata accessor for SecureLocationsRelayAction.Response);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v77 = v171;
      if (EnumCaseMultiPayload == 4)
      {
        sub_10058B268(v74, type metadata accessor for SecureLocationsRelayAction.Response);
        v86 = v179;
        v85 = v180;
        v87 = v179[1];
        v169 = (v179 + 1);
        v168 = v87;
        v87(v145, v180);
        sub_10000B3A8(v178, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v61, type metadata accessor for MessagingOptions);
        v88 = v86[4];
        v89 = v142;
        v183 = v86 + 4;
        v178 = v88;
        (v88)(v142, v83, v85);
        sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        swift_allocObject();
        v90 = Future.init()();
        v91 = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v92 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v93 = swift_allocObject();
        *(v93 + 16) = v182;
        v94 = UUID.uuidString.getter();
        v96 = v95;
        *(v93 + 56) = &type metadata for String;
        *(v93 + 64) = sub_100008C00();
        *(v93 + 32) = v94;
        *(v93 + 40) = v96;
        os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v92, "Setting %@ to pending", 21, 2, v93);

        v97 = v181;
        *&v182 = *(v181 + 168);
        v98 = v158;
        v185(v158, v89, v85);
        v99 = (*(v86 + 80) + 24) & ~*(v86 + 80);
        v171 = *(v86 + 80);
        v167 = v99 + v141;
        v100 = v99;
        v179 = v99;
        v101 = (v99 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
        v102 = swift_allocObject();
        *(v102 + 16) = v97;
        (v178)(v102 + v100, v98, v85);
        *(v102 + v101) = v90;
        v170 = v90;
        v191 = sub_10058D4DC;
        v192 = v102;
        aBlock = _NSConcreteStackBlock;
        v188 = 1107296256;
        v166 = &v189;
        v189 = sub_100006684;
        v190 = &unk_101628DB8;
        v103 = _Block_copy(&aBlock);

        v104 = v174;
        static DispatchQoS.unspecified.getter();
        v193 = _swiftEmptyArrayStorage;
        v162 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v161 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v163 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v105 = v172;
        v106 = v173;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v103);
        v107 = *(v177 + 8);
        v177 += 8;
        v165 = v107;
        v107(v105, v106);
        v108 = *(v176 + 8);
        v176 += 8;
        v164 = v108;
        (v108)(v104, v175);

        v109 = v158;
        v110 = v180;
        v185(v158, v142, v180);
        v111 = swift_allocObject();
        *(v111 + 16) = v97;
        (v178)(v179 + v111, v109, v110);
        v112 = (v111 + v101);
        v113 = v150;
        *v112 = sub_10058A730;
        v112[1] = v113;

        Future.addSuccess(block:)();

        v114 = swift_allocObject();
        *(v114 + 16) = sub_10058A730;
        *(v114 + 24) = v113;

        Future.addFailure(block:)();

        v115 = v153;
        static DispatchTime.now()();
        v116 = v154;
        + infix(_:_:)();
        v160 = *(v155 + 8);
        (v160)(v115, v157);
        v117 = v158;
        v185(v158, v142, v110);
        v118 = swift_allocObject();
        *(v118 + 16) = v97;
        v119 = v117;
        v120 = v110;
        (v178)(v179 + v118, v119, v110);
        v191 = sub_10058D4E0;
        v192 = v118;
        aBlock = _NSConcreteStackBlock;
        v188 = 1107296256;
        v189 = sub_100006684;
        v190 = &unk_101628E58;
        v121 = _Block_copy(&aBlock);

        v122 = v174;
        static DispatchQoS.unspecified.getter();
        v193 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v121);

        sub_100016590(v151, v152);
        v165(v105, v106);
        (v164)(v122, v175);
        (v160)(v116, v157);
        v168(v142, v120);
      }

      sub_10058B268(v83, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v76 = swift_allocError();
      swift_willThrow();
      sub_10058B268(v74, type metadata accessor for SecureLocationsRelayAction.Response);
      v186 = 0;
    }

    v123 = v178;
    v124 = v150;
    (v179[1])(v145, v180);
    sub_10000B3A8(v123, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v61, type metadata accessor for MessagingOptions);
    v125 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v126 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v127 = swift_allocObject();
    *(v127 + 16) = v182;
    aBlock = v76;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v128 = String.init<A>(describing:)();
    v130 = v129;
    *(v127 + 56) = &type metadata for String;
    *(v127 + 64) = sub_100008C00();
    *(v127 + 32) = v128;
    *(v127 + 40) = v130;
    os_log(_:dso:log:_:_:)(v125, &_mh_execute_header, v126, "Message send error: %@", 22, 2, v127);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v131 = v160;
    v132 = v159;
    (*(v160 + 104))(v159, enum case for DispatchQoS.QoSClass.default(_:), v77);
    v185 = static OS_dispatch_queue.global(qos:)();
    (*(v131 + 8))(v132, v77);
    v133 = swift_allocObject();
    v133[2] = sub_10058A730;
    v133[3] = v124;
    v133[4] = v76;
    v191 = sub_10058D73C;
    v192 = v133;
    aBlock = _NSConcreteStackBlock;
    v188 = 1107296256;
    v189 = sub_100006684;
    v190 = &unk_101628D68;
    v134 = _Block_copy(&aBlock);

    swift_errorRetain();
    v135 = v174;
    static DispatchQoS.unspecified.getter();
    v193 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v136 = v172;
    v137 = v173;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v138 = v185;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v134);

    sub_100016590(v151, v152);
    (*(v177 + 8))(v136, v137);
    (*(v176 + 8))(v135, v175);
  }

  return result;
}

uint64_t sub_10054F5EC(uint64_t a1)
{
  v4 = type metadata accessor for BeaconObservation(0);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10058B200(a1, v6, type metadata accessor for BeaconObservation);
  result = sub_10053C054(13, 1, v6, &v33);
  if (!v2)
  {
    v32 = 0;
    v8 = v33;
    v10 = v34;
    v9 = v35;
    v11 = v36;
    v37 = v1;
    v12 = sub_1010A5510();
    v13 = v12[2];
    if (v13)
    {
      v27 = v10;
      v28 = v8;
      v29 = a1;
      v30 = v11;
      v31 = v9;
      v33 = _swiftEmptyArrayStorage;
      sub_101124900(0, v13, 0);
      v14 = v33;
      v26[1] = v12;
      v15 = v12 + 23;
      do
      {
        v16 = *(v15 - 16);
        v18 = *(v15 - 1);
        v17 = *v15;
        v33 = v14;
        v20 = v14[2];
        v19 = v14[3];

        if (v20 >= v19 >> 1)
        {
          sub_101124900((v19 > 1), v20 + 1, 1);
          v14 = v33;
        }

        v14[2] = v20 + 1;
        v21 = &v14[3 * v20];
        *(v21 + 32) = v16;
        v21[5] = v18;
        v21[6] = v17;
        v15 += 20;
        --v13;
      }

      while (v13);

      v11 = v30;
      v9 = v31;
      v8 = v28;
      v10 = v27;
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
    }

    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v33 = 0xD000000000000017;
    v34 = 0x8000000101359290;
    v22._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v22);

    v23 = v33;
    v24 = v34;
    v25 = sub_101129A8C(_swiftEmptyArrayStorage);
    sub_10057D1E0(v8, v10, v9, v11, v14, 0, 1, 0, &_swiftEmptySetSingleton, v25, v23, v24, sub_100574524);

    return sub_100016590(v9, v11);
  }

  return result;
}

id sub_10054F898(uint64_t a1)
{
  v205 = a1;
  v1 = type metadata accessor for CryptoKeys(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v180 = &v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for LegacyShareEnvelope(0);
  v4 = __chkstk_darwin(v182);
  v183 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v184 = &v171 - v6;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v185 = &v171 - v8;
  v210 = type metadata accessor for TimeBasedKey(0);
  v188 = *(v210 - 8);
  v9 = __chkstk_darwin(v210);
  v194 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v193 = &v171 - v12;
  v13 = __chkstk_darwin(v11);
  v187 = &v171 - v14;
  __chkstk_darwin(v13);
  v209 = &v171 - v15;
  v220 = type metadata accessor for FamilyCryptoKeysV1(0);
  v208 = *(v220 - 8);
  v16 = __chkstk_darwin(v220);
  v213 = (&v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v211 = &v171 - v18;
  v189 = type metadata accessor for FamilyShareEnvelopeV1(0);
  v19 = __chkstk_darwin(v189);
  v190 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v191 = &v171 - v21;
  v197 = type metadata accessor for UUID();
  v202 = *(v197 - 8);
  __chkstk_darwin(v197);
  v206 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v200);
  v195 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v24);
  v203 = (&v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v26 - 8);
  v28 = &v171 - v27;
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v171 - v34;
  v212 = type metadata accessor for DateInterval();
  v201 = *(v212 - 8);
  v36 = __chkstk_darwin(v212);
  v198 = &v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v37;
  __chkstk_darwin(v36);
  v207 = &v171 - v38;
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    goto LABEL_53;
  }

  v40 = result;
  v41 = [result aa_primaryAppleAccount];

  if (!v41)
  {
    type metadata accessor for SPOwnerSessionError(0);
    *&v214 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    return swift_willThrow();
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v42 = v204;
  OS_dispatch_queue.sync<A>(execute:)();
  v181 = v42;
  v192 = v216[0];
  v43 = sub_101073EA4(v216[0]);
  static Date.trustedNow.getter(v35);
  if ((v43 * 60) >> 64 != (60 * v43) >> 63)
  {
    __break(1u);
LABEL_51:
    swift_once();
LABEL_20:
    v93 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_101385D80;
    v95 = v204;
    result = [v204 v41[27]];
    if (result)
    {
      v96 = result;

      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      *(v94 + 56) = &type metadata for String;
      *(v94 + 64) = sub_100008C00();
      *(v94 + 32) = v97;
      *(v94 + 40) = v99;
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v93, "Could not create MessagingDestination from: %@", 46, 2, v94);

      type metadata accessor for SPOwnerSessionError(0);
      *&v214 = 7;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return (*(v201 + 8))(v207, v212);
    }

    goto LABEL_54;
  }

  v204 = v41;
  DateInterval.init(start:duration:)();
  v186 = type metadata accessor for ShareInstruction(0);
  sub_1000D2A70(v205 + v186[9], v28, &unk_101696900, &unk_10138B1E0);
  v44 = (*(v30 + 48))(v28, 1, v29);
  v171 = v2;
  if (v44 == 1)
  {
    sub_10000B3A8(v28, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v30 + 32))(v33, v28, v29);
    DateInterval.end.getter();
    v45 = static Date.< infix(_:_:)();
    v46 = *(v30 + 8);
    v46(v35, v29);
    if (v45)
    {
      (*(v30 + 16))(v35, v33, v29);
      DateInterval.end.setter();
    }

    v46(v33, v29);
  }

  v41 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
  result = [(SEL *)v204 username];
  if (!result)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v47 = result;
  [result copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v48 = v214;

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v48, *(&v48 + 1));
  if (!v51)
  {
    v43 = static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

  v173 = v49;
  v172 = v50;
  v174 = v51;

  v52 = v186;
  v53 = v205;
  v179 = v205 + v186[6];
  v192 = type metadata accessor for OwnedBeaconRecord;
  v54 = v195;
  sub_10058B200(v179, v195, type metadata accessor for OwnedBeaconRecord);
  v55 = v52[8];
  v56 = v202[2];
  v57 = v197;
  v56(v206, v53 + v55, v197);
  v58 = v203;
  *(v203 + v24[14]) = 3;
  v175 = v24[15];
  v59 = v24[20];
  v177 = v59;
  v176 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v178 = *(*(v176 - 8) + 56);
  v178(&v58[v59], 1, 1, v176);
  *v58 = xmmword_10138C660;
  v60 = v200;
  v56(&v58[v24[5]], v54 + v200[5], v57);
  v61 = v206;
  v56(&v58[v24[6]], v206, v57);
  v62 = &v58[v24[7]];
  *v62 = v173;
  v63 = v174;
  *(v62 + 1) = v172;
  *(v62 + 2) = v63;
  v64 = &v58[v24[8]];
  *v64 = 0;
  v64[1] = 0xE000000000000000;
  v65 = (v54 + v60[14]);
  v67 = *v65;
  v66 = v65[1];
  v68 = &v58[v24[9]];
  *v68 = v67;
  v68[1] = v66;
  v69 = (v54 + v60[15]);
  v70 = *v69;
  v71 = v69[1];
  v72 = &v58[v24[10]];
  *v72 = v70;
  v72[1] = v71;
  *&v58[v24[11]] = *(v54 + v60[16]);
  *&v58[v24[12]] = *(v54 + v60[17]);
  *&v58[v175] = -1;
  v58[v24[13]] = 0;
  v58[v24[16]] = 1;
  *&v58[v24[17]] = 0;

  static Date.distantPast.getter();
  (v202[1])(v61, v57);
  sub_1000D2A70(v54 + v60[7], &v58[v24[19]], &qword_1016980D0, &unk_10138F3B0);
  sub_10058B268(v54, type metadata accessor for OwnedBeaconRecord);
  v73 = v177;
  sub_10000B3A8(&v58[v177], &unk_1016AF890, &qword_1013926D0);
  v178(&v58[v73], 1, 1, v176);
  v218 = v60;
  v219 = sub_100003DFC(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v74 = sub_1000280DC(v216);
  sub_10058B200(v179, v74, v192);
  type metadata accessor for BeaconKeyManager(0);
  v75 = v181;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v202 = v75;
  v76 = v214;
  sub_10001F280(v216, &v214);
  v77 = v201;
  v78 = v198;
  v79 = v212;
  v206 = *(v201 + 16);
  (v206)(v198, v207, v212);
  v80 = (*(v77 + 80) + 64) & ~*(v77 + 80);
  v81 = v80 + v196;
  v82 = swift_allocObject();
  *(v82 + 16) = v76;
  sub_100031694(&v214, v82 + 24);
  (*(v77 + 32))(v82 + v80, v78, v79);
  v83 = v82 + v81;
  *v83 = 0;
  *(v83 + 2) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v84 = v214;
  v85 = v215;
  sub_100007BAC(v216);
  if (v85 > 1)
  {
    if (v85 == 2)
    {
      sub_100359088(v84, *(&v84 + 1), 2u);
    }

    v100 = static os_log_type_t.error.getter();
    v101 = v203;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v102 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_101385D80;
    v104 = UUID.uuidString.getter();
    v106 = v105;
    *(v103 + 56) = &type metadata for String;
    *(v103 + 64) = sub_100008C00();
    *(v103 + 32) = v104;
    *(v103 + 40) = v106;
    os_log(_:dso:log:_:_:)(v100, &_mh_execute_header, v102, "Could not share because keys are not available for %@", 53, 2, v103);

    type metadata accessor for SPOwnerSessionError(0);
    *&v214 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    (*(v77 + 8))(v207, v212);
    v92 = v101;
  }

  else if (v85)
  {
    v200 = *(&v84 + 1);
    v107 = *(v84 + 16);
    v108 = _swiftEmptyArrayStorage;
    v198 = v84;
    v197 = v107;
    if (v107)
    {
      v216[0] = _swiftEmptyArrayStorage;
      sub_101124C98(0, v107, 0);
      v108 = v216[0];
      v109 = v84 + ((*(v188 + 80) + 32) & ~*(v188 + 80));
      v110 = *(v188 + 72);
      v111 = v107;
      v112 = v187;
      do
      {
        v113 = v209;
        sub_10058B200(v109, v209, type metadata accessor for TimeBasedKey);
        sub_100589B28(v113, v112, type metadata accessor for TimeBasedKey);
        v114 = v212;
        v115 = v213;
        *v213 = *v112;
        v116 = v210;
        (v206)(v115 + *(v220 + 20), v112 + *(v210 + 20), v114);
        v117 = (v112 + *(v116 + 24));
        v118 = v117[5];
        if (v118 >> 60 == 15)
        {
          v119 = v117[2];
          v120 = v117[3];
          sub_100017D5C(v119, v120);
          sub_10058B268(v112, type metadata accessor for TimeBasedKey);
        }

        else
        {
          v119 = v117[4];
          sub_100017D5C(v119, v117[5]);
          sub_10058B268(v112, type metadata accessor for TimeBasedKey);
          v120 = v118 | 0x2000000000000000;
        }

        v121 = v213;
        v122 = (v213 + *(v220 + 24));
        *v122 = v119;
        v122[1] = v120;
        v123 = v211;
        sub_100589B28(v121, v211, type metadata accessor for FamilyCryptoKeysV1);
        v216[0] = v108;
        v125 = v108[2];
        v124 = v108[3];
        if (v125 >= v124 >> 1)
        {
          sub_101124C98((v124 > 1), v125 + 1, 1);
          v123 = v211;
          v108 = v216[0];
        }

        v108[2] = v125 + 1;
        sub_100589B28(v123, v108 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v125, type metadata accessor for FamilyCryptoKeysV1);
        v109 += v110;
        --v111;
      }

      while (v111);
      v77 = v201;
    }

    v126 = v203;
    v127 = v191;
    sub_10058B200(v203, v191, type metadata accessor for SharedBeaconRecord);
    *(v127 + *(v189 + 20)) = v108;
    v128 = v190;
    sub_10058B200(v127, v190, type metadata accessor for FamilyShareEnvelopeV1);
    v129 = v202;
    sub_10053B464(0, 2, v128, v216);
    v130 = v207;
    if (v129)
    {

      sub_100359088(v198, v200, 1u);
      sub_10058B268(v127, type metadata accessor for FamilyShareEnvelopeV1);
      (*(v77 + 8))(v130, v212);
      v92 = v126;
    }

    else
    {
      LODWORD(v220) = LOBYTE(v216[0]);
      v131 = v217;
      v213 = v216[1];
      v132 = v218;
      sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = 0x44495344746C41;
      *(inited + 40) = 0xE700000000000000;
      v134 = v205;
      v135 = *(v205 + 16);
      *(inited + 48) = *(v205 + 8);
      *(inited + 56) = v135;

      v136 = sub_100907E70(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
      v137 = type metadata accessor for Transaction();
      __chkstk_darwin(v137);
      v138 = v199;
      *(&v171 - 8) = v199;
      *(&v171 - 56) = v220;
      *(&v171 - 6) = v213;
      *(&v171 - 5) = v131;
      v211 = v131;
      v213 = v132;
      *(&v171 - 4) = v132;
      *(&v171 - 3) = v136;
      *(&v171 - 2) = v134;
      v209 = v137;
      static Transaction.named<A>(_:with:)();

      v139 = (v134 + v186[7]);
      LODWORD(v220) = *v139;
      v140 = *(v139 + 2);
      v210 = *(v139 + 1);
      v141 = dispatch_group_create();
      v142 = sub_101129A8C(&off_101609298);
      v143 = swift_allocObject();
      *(v143 + 16) = 0;
      dispatch_group_enter(v141);
      v144 = *(v138 + 24);
      v145 = swift_allocObject();
      v145[2] = v143;
      v145[3] = v142;
      v145[4] = v141;
      v146 = type metadata accessor for TaskPriority();
      v147 = v185;
      (*(*(v146 - 8) + 56))(v185, 1, 1, v146);
      v148 = swift_allocObject();
      *(v148 + 16) = 0;
      *(v148 + 24) = 0;
      *(v148 + 32) = v144;
      *(v148 + 40) = v220;
      *(v148 + 48) = v210;
      *(v148 + 56) = v140;
      *(v148 + 64) = sub_1005894EC;
      *(v148 + 72) = v145;

      v149 = v141;

      sub_10025EDD4(0, 0, v147, &unk_1013B1138, v148);

      OS_dispatch_group.wait()();

      swift_beginAccess();
      LODWORD(v140) = *(v143 + 16);

      if (v140 == 1)
      {
        v150 = v197;
        if (v197)
        {
          v216[0] = _swiftEmptyArrayStorage;
          sub_101124D20(0, v197, 0);
          v151 = v216[0];
          v152 = v198 + ((*(v188 + 80) + 32) & ~*(v188 + 80));
          v220 = *(v188 + 72);
          v153 = v171;
          v154 = v180;
          do
          {
            v155 = v193;
            sub_10058B200(v152, v193, type metadata accessor for TimeBasedKey);
            v156 = v194;
            sub_10058B200(v155, v194, type metadata accessor for TimeBasedKey);
            sub_10076FED0(v156, v154);
            sub_10058B268(v155, type metadata accessor for TimeBasedKey);
            v216[0] = v151;
            v158 = v151[2];
            v157 = v151[3];
            if (v158 >= v157 >> 1)
            {
              sub_101124D20((v157 > 1), v158 + 1, 1);
              v154 = v180;
              v151 = v216[0];
            }

            v151[2] = v158 + 1;
            sub_100589B28(v154, v151 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v158, type metadata accessor for CryptoKeys);
            v152 += v220;
            --v150;
          }

          while (v150);
          sub_100359088(v198, v200, 1u);
        }

        else
        {
          sub_100359088(v198, v200, 1u);
          v151 = _swiftEmptyArrayStorage;
        }

        v160 = v203;
        v161 = v184;
        sub_10058B200(v203, v184, type metadata accessor for SharedBeaconRecord);
        *(v161 + *(v182 + 20)) = v151;
        v162 = v183;
        sub_10058B200(v161, v183, type metadata accessor for LegacyShareEnvelope);
        v163 = sub_10053B760(0, 1, v162, v216);
        v164 = v213;
        v165 = v211;
        v166 = v217;
        v167 = v218;
        __chkstk_darwin(v163);
        *(&v171 - 6) = v199;
        *(&v171 - 40) = v168;
        *(&v171 - 4) = v169;
        *(&v171 - 3) = v166;
        v170 = v205;
        *(&v171 - 2) = v167;
        *(&v171 - 1) = v170;
        static Transaction.named<A>(_:with:)();

        sub_100016590(v165, v164);
        sub_100016590(v166, v167);
        sub_10058B268(v161, type metadata accessor for LegacyShareEnvelope);
        v159 = v201;
      }

      else
      {

        sub_100016590(v211, v213);
        sub_100359088(v198, v200, 1u);
        v159 = v201;
        v160 = v203;
      }

      sub_10058B268(v191, type metadata accessor for FamilyShareEnvelopeV1);
      (*(v159 + 8))(v207, v212);
      v92 = v160;
    }
  }

  else
  {
    v86 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v87 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_101385D80;
    v89 = UUID.uuidString.getter();
    v91 = v90;
    *(v88 + 56) = &type metadata for String;
    *(v88 + 64) = sub_100008C00();
    *(v88 + 32) = v89;
    *(v88 + 40) = v91;
    os_log(_:dso:log:_:_:)(v86, &_mh_execute_header, v87, "Could not share because not all keys are available for %@", 57, 2, v88);

    type metadata accessor for SPOwnerSessionError(0);
    *&v214 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100359088(v84, *(&v84 + 1), 0);
    (*(v77 + 8))(v207, v212);
    v92 = v203;
  }

  return sub_10058B268(v92, type metadata accessor for SharedBeaconRecord);
}

void sub_100551690(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v195 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v241 = type metadata accessor for TimeBasedKey(0);
  v221 = *(v241 - 8);
  v6 = __chkstk_darwin(v241);
  v236 = &v195 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v235 = &v195 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v195 - v11;
  __chkstk_darwin(v10);
  v234 = &v195 - v13;
  v247 = type metadata accessor for FamilyCryptoKeysV1(0);
  *&v242 = *(v247 - 8);
  v14 = __chkstk_darwin(v247);
  v213 = (&v195 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v212 = (&v195 - v17);
  v18 = __chkstk_darwin(v16);
  v238 = &v195 - v19;
  v20 = __chkstk_darwin(v18);
  v214 = (&v195 - v21);
  v22 = __chkstk_darwin(v20);
  v240 = &v195 - v23;
  v24 = __chkstk_darwin(v22);
  v237 = &v195 - v25;
  v26 = __chkstk_darwin(v24);
  v239 = &v195 - v27;
  __chkstk_darwin(v26);
  v215 = &v195 - v28;
  MyAirPodsFamilyShareEnvelope = type metadata accessor for FindMyAirPodsFamilyShareEnvelope(0);
  v29 = __chkstk_darwin(MyAirPodsFamilyShareEnvelope);
  v220 = &v195 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v223 = &v195 - v31;
  v218 = type metadata accessor for UUID();
  v226 = *(v218 - 8);
  __chkstk_darwin(v218);
  v225 = &v195 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v217);
  v216 = &v195 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for SharedBeaconRecord(0);
  v34 = __chkstk_darwin(v222);
  v211 = &v195 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v227 = &v195 - v37;
  __chkstk_darwin(v36);
  v228 = &v195 - v38;
  v39 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v39 - 8);
  v41 = &v195 - v40;
  v243 = type metadata accessor for DateInterval();
  v230 = *(v243 - 8);
  v42 = __chkstk_darwin(v243);
  v44 = &v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v231 = &v195 - v45;
  v46 = [objc_opt_self() defaultStore];
  if (!v46)
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  v47 = v46;
  v48 = [v46 aa_primaryAppleAccount];

  v232 = v48;
  if (!v48)
  {
    type metadata accessor for SPOwnerSessionError(0);
    v244 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  v208 = v5;
  v210 = type metadata accessor for ShareInstruction(0);
  v49 = *(v210 + 24);
  v50 = *(v3 + 56);
  v209 = v2;
  v50(v41, 1, 1, v2);
  v51 = v231;
  sub_1005579E8(v231, v44, a1 + v49, v41);
  sub_10000B3A8(v41, &unk_101696900, &unk_10138B1E0);
  v52 = v230 + 8;
  v53 = *(v230 + 8);
  v54 = v44;
  v55 = v51;
  v56 = v243;
  v53(v54, v243);
  v57 = v233;
  v58 = sub_1005583F4(a1, v55);
  v224 = v57;
  if (v57)
  {
    v53(v55, v56);

    return;
  }

  v233 = v49;
  v206 = v58;
  v207 = v59;
  v203 = v53;
  v205 = v52;
  v196 = v3;
  v204 = a1;
  v60 = [v232 username];
  if (!v60)
  {
    goto LABEL_43;
  }

  v61 = v60;
  [v60 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v63 = v244;
  v62 = v245;

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v63, v62);
  v67 = v210;
  v68 = v233;
  if (!v66)
  {
    v109 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v110 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_101385D80;
    v112 = v232;
    v113 = [v232 username];
    v114 = v203;
    if (v113)
    {
      v115 = v113;

      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;

      *(v111 + 56) = &type metadata for String;
      *(v111 + 64) = sub_100008C00();
      *(v111 + 32) = v116;
      *(v111 + 40) = v118;
      os_log(_:dso:log:_:_:)(v109, &_mh_execute_header, v110, "Could not create MessagingDestination from: %@", 46, 2, v111);

      type metadata accessor for SPOwnerSessionError(0);
      v244 = 0;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      v114(v231, v243);
      return;
    }

    goto LABEL_44;
  }

  v198 = v64;
  v197 = v65;
  v199 = v66;

  v69 = v204;
  v70 = v216;
  sub_10058B200(v204 + v68, v216, type metadata accessor for OwnedBeaconRecord);
  v71 = *(v226 + 16);
  v72 = v69 + *(v67 + 32);
  v73 = v225;
  v74 = v218;
  v71(v225, v72, v218);
  v75 = v222;
  v76 = v228;
  v228[*(v222 + 56)] = 3;
  v200 = v75[15];
  v77 = v75[20];
  v202 = v77;
  v233 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v78 = *(v233 - 8);
  v210 = *(v78 + 56);
  v201 = v78 + 56;
  (v210)(&v76[v77], 1, 1, v233);
  *v76 = xmmword_10138C660;
  v79 = v217;
  v71(&v76[v75[5]], v70 + *(v217 + 20), v74);
  v71(&v76[v75[6]], v73, v74);
  v80 = &v76[v75[7]];
  *v80 = v198;
  v81 = v199;
  *(v80 + 1) = v197;
  *(v80 + 2) = v81;
  v82 = &v76[v75[8]];
  *v82 = 0;
  *(v82 + 1) = 0xE000000000000000;
  v83 = (v70 + v79[14]);
  v85 = *v83;
  v84 = v83[1];
  v86 = &v76[v75[9]];
  *v86 = v85;
  *(v86 + 1) = v84;
  v87 = (v70 + v79[15]);
  v88 = *v87;
  v89 = v87[1];
  v90 = &v76[v75[10]];
  *v90 = v88;
  *(v90 + 1) = v89;
  *&v76[v75[11]] = *(v70 + v79[16]);
  *&v76[v75[12]] = *(v70 + v79[17]);
  *&v76[v200] = -1;
  v76[v75[13]] = 0;
  v76[v75[16]] = 1;
  *&v76[v75[17]] = 0;

  static Date.distantPast.getter();
  (*(v226 + 8))(v225, v74);
  sub_1000D2A70(v70 + v79[7], &v76[v75[19]], &qword_1016980D0, &unk_10138F3B0);
  sub_10058B268(v70, type metadata accessor for OwnedBeaconRecord);
  v91 = v202;
  sub_10000B3A8(&v76[v202], &unk_1016AF890, &qword_1013926D0);
  (v210)(&v76[v91], 1, 1, v233);
  sub_10058B200(v76, v227, type metadata accessor for SharedBeaconRecord);
  v92 = *(v206 + 16);
  if (v92)
  {
    v246[0] = _swiftEmptyArrayStorage;
    v93 = v206;
    sub_101124C98(0, v92, 0);
    v94 = v246[0];
    v95 = v93 + ((*(v221 + 80) + 32) & ~*(v221 + 80));
    v233 = *(v221 + 72);
    v96 = (v230 + 16);
    v97 = v215;
    do
    {
      v98 = v234;
      sub_10058B200(v95, v234, type metadata accessor for TimeBasedKey);
      sub_100589B28(v98, v12, type metadata accessor for TimeBasedKey);
      v99 = v239;
      *v239 = *v12;
      v100 = v241;
      (*v96)(&v99[*(v247 + 20)], &v12[*(v241 + 20)], v243);
      v101 = &v12[*(v100 + 24)];
      v102 = *(v101 + 5);
      if (v102 >> 60 == 15)
      {
        v104 = *(v101 + 2);
        v103 = *(v101 + 3);
        sub_100017D5C(v104, v103);
        sub_10058B268(v12, type metadata accessor for TimeBasedKey);
      }

      else
      {
        v104 = *(v101 + 4);
        sub_100017D5C(v104, *(v101 + 5));
        sub_10058B268(v12, type metadata accessor for TimeBasedKey);
        v103 = v102 | 0x2000000000000000;
      }

      v105 = v239;
      v106 = &v239[*(v247 + 24)];
      *v106 = v104;
      v106[1] = v103;
      sub_100589B28(v105, v97, type metadata accessor for FamilyCryptoKeysV1);
      v246[0] = v94;
      v108 = v94[2];
      v107 = v94[3];
      if (v108 >= v107 >> 1)
      {
        sub_101124C98((v107 > 1), v108 + 1, 1);
        v94 = v246[0];
      }

      v94[2] = v108 + 1;
      sub_100589B28(v97, v94 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v108, type metadata accessor for FamilyCryptoKeysV1);
      v95 += v233;
      --v92;
    }

    while (v92);
  }

  else
  {

    v94 = _swiftEmptyArrayStorage;
  }

  v119 = *(v207 + 16);
  v120 = v238;
  v121 = v230;
  if (v119)
  {
    v246[0] = _swiftEmptyArrayStorage;
    v122 = v207;
    sub_101124C98(0, v119, 0);
    v123 = v246[0];
    v124 = v122 + ((*(v221 + 80) + 32) & ~*(v221 + 80));
    v125 = *(v221 + 72);
    v126 = (v121 + 16);
    do
    {
      v127 = v235;
      sub_10058B200(v124, v235, type metadata accessor for TimeBasedKey);
      v128 = v236;
      sub_100589B28(v127, v236, type metadata accessor for TimeBasedKey);
      v129 = v240;
      v130 = v241;
      *v240 = *v128;
      (*v126)(&v129[*(v247 + 20)], &v128[*(v130 + 20)], v243);
      v131 = &v128[*(v130 + 24)];
      v132 = *(v131 + 5);
      if (v132 >> 60 == 15)
      {
        v133 = *(v131 + 2);
        v134 = *(v131 + 3);
        sub_100017D5C(v133, v134);
        sub_10058B268(v128, type metadata accessor for TimeBasedKey);
      }

      else
      {
        v133 = *(v131 + 4);
        sub_100017D5C(v133, *(v131 + 5));
        sub_10058B268(v128, type metadata accessor for TimeBasedKey);
        v134 = v132 | 0x2000000000000000;
      }

      v135 = v240;
      v136 = &v240[*(v247 + 24)];
      *v136 = v133;
      v136[1] = v134;
      v137 = v237;
      sub_100589B28(v135, v237, type metadata accessor for FamilyCryptoKeysV1);
      v246[0] = v123;
      v139 = v123[2];
      v138 = v123[3];
      if (v139 >= v138 >> 1)
      {
        sub_101124C98((v138 > 1), v139 + 1, 1);
        v137 = v237;
        v123 = v246[0];
      }

      v123[2] = v139 + 1;
      sub_100589B28(v137, v123 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v139, type metadata accessor for FamilyCryptoKeysV1);
      v124 += v125;
      --v119;
      v120 = v238;
    }

    while (v119);
  }

  else
  {

    v123 = _swiftEmptyArrayStorage;
  }

  v140 = v243;
  v141 = v223;
  sub_100589B28(v227, v223, type metadata accessor for SharedBeaconRecord);
  v142 = MyAirPodsFamilyShareEnvelope;
  *(v141 + *(MyAirPodsFamilyShareEnvelope + 20)) = v94;
  *(v141 + *(v142 + 24)) = v123;
  v143 = v220;
  sub_10058B200(v141, v220, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
  v144 = v224;
  sub_10053BA5C(0, 4, v143, v246);
  v145 = v232;
  if (v144)
  {
    v203(v231, v140);

    sub_10058B268(v228, type metadata accessor for SharedBeaconRecord);
    v146 = v141;
  }

  else
  {
    v224 = 0;
    LODWORD(v239) = LOBYTE(v246[0]);
    v147 = v246[2];
    v237 = v246[1];
    v240 = v246[3];
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    v241 = xmmword_101385D80;
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0x44495344746C41;
    *(inited + 40) = 0xE700000000000000;
    v149 = *(v204 + 16);
    *(inited + 48) = *(v204 + 8);
    *(inited + 56) = v149;

    v236 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    v150 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v151 = qword_10177C378;
    v234 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v152 = swift_allocObject();
    *(v152 + 16) = v241;
    sub_10058B200(v141, v211, type metadata accessor for SharedBeaconRecord);
    v153 = String.init<A>(describing:)();
    v155 = v154;
    *(v152 + 56) = &type metadata for String;
    *&v241 = sub_100008C00();
    *(v152 + 64) = v241;
    *(v152 + 32) = v153;
    *(v152 + 40) = v155;
    v235 = v151;
    os_log(_:dso:log:_:_:)(v150, &_mh_execute_header, v151, "FindMyAirPodsFamilyShareEnvelope.sharedBeacon: %@", 49, 2, v152);

    v156 = v94[2];
    v157 = v232;
    if (v156)
    {
      v233 = v147;
      v158 = v242;
      v159 = (*(v242 + 80) + 32) & ~*(v242 + 80);
      sub_10058B200(v94 + v159, v214, type metadata accessor for FamilyCryptoKeysV1);
      v160 = v156 - 1;
      v161 = *(v158 + 72);
      sub_10058B200(v94 + v159 + v161 * v160, v120, type metadata accessor for FamilyCryptoKeysV1);
      v162 = v123[2];
      if (v162)
      {
        sub_10058B200(v123 + v159, v212, type metadata accessor for FamilyCryptoKeysV1);
        sub_10058B200(v123 + v159 + (v162 - 1) * v161, v213, type metadata accessor for FamilyCryptoKeysV1);
        LODWORD(v230) = static os_log_type_t.default.getter();
        v163 = swift_allocObject();
        v242 = xmmword_101391790;
        *(v163 + 16) = xmmword_101391790;
        v164 = *v214;
        *(v163 + 56) = &type metadata for UInt64;
        *(v163 + 64) = &protocol witness table for UInt64;
        *(v163 + 32) = v164;
        v165 = *v120;
        *(v163 + 96) = &type metadata for UInt64;
        *(v163 + 104) = &protocol witness table for UInt64;
        *(v163 + 72) = v165;
        v166 = v208;
        DateInterval.start.getter();
        v167 = sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v168 = v209;
        v227 = v167;
        v169 = dispatch thunk of CustomStringConvertible.description.getter();
        v171 = v170;
        v172 = *(v196 + 8);
        v172(v166, v168);
        v173 = v241;
        *(v163 + 136) = &type metadata for String;
        *(v163 + 144) = v173;
        *(v163 + 112) = v169;
        *(v163 + 120) = v171;
        DateInterval.end.getter();
        v174 = dispatch thunk of CustomStringConvertible.description.getter();
        v176 = v175;
        v172(v166, v168);
        v177 = v172;
        v178 = v241;
        *(v163 + 176) = &type metadata for String;
        *(v163 + 184) = v178;
        *(v163 + 152) = v174;
        *(v163 + 160) = v176;
        os_log(_:dso:log:_:_:)(v230, &_mh_execute_header, v235, "FindMyAirPodsFamilyShareEnvelope.initialPrimaryKeys: %lu...%lu (%@ - %@)", 72, 2, v163);

        LODWORD(v230) = static os_log_type_t.default.getter();
        v179 = swift_allocObject();
        *(v179 + 16) = v242;
        v180 = *v212;
        *(v179 + 56) = &type metadata for UInt64;
        *(v179 + 32) = v180;
        v181 = *v213;
        *(v179 + 96) = &type metadata for UInt64;
        *(v179 + 104) = &protocol witness table for UInt64;
        *(v179 + 64) = &protocol witness table for UInt64;
        *(v179 + 72) = v181;
        DateInterval.start.getter();
        v182 = dispatch thunk of CustomStringConvertible.description.getter();
        v184 = v183;
        v172(v166, v168);
        v185 = v241;
        *(v179 + 136) = &type metadata for String;
        *(v179 + 144) = v185;
        *(v179 + 112) = v182;
        *(v179 + 120) = v184;
        v186 = v213;
        DateInterval.end.getter();
        v187 = dispatch thunk of CustomStringConvertible.description.getter();
        v189 = v188;
        v190 = v166;
        v120 = v238;
        v177(v190, v168);
        v157 = v232;
        v191 = v241;
        *(v179 + 176) = &type metadata for String;
        *(v179 + 184) = v191;
        *(v179 + 152) = v187;
        *(v179 + 160) = v189;
        os_log(_:dso:log:_:_:)(v230, &_mh_execute_header, v235, "FindMyAirPodsFamilyShareEnvelope.initialSecondaryKeys: %lu...%lu (%@ - %@)", 74, 2, v179);

        sub_10058B268(v186, type metadata accessor for FamilyCryptoKeysV1);
        sub_10058B268(v212, type metadata accessor for FamilyCryptoKeysV1);
      }

      sub_10058B268(v120, type metadata accessor for FamilyCryptoKeysV1);
      sub_10058B268(v214, type metadata accessor for FamilyCryptoKeysV1);
      v147 = v233;
    }

    v192 = type metadata accessor for Transaction();
    __chkstk_darwin(v192);
    *(&v195 - 8) = v229;
    *(&v195 - 56) = v239;
    *(&v195 - 6) = v237;
    *(&v195 - 5) = v147;
    v193 = v240;
    v194 = v236;
    *(&v195 - 4) = v240;
    *(&v195 - 3) = v194;
    *(&v195 - 2) = v204;
    static Transaction.named<A>(_:with:)();

    sub_100016590(v147, v193);

    v203(v231, v243);
    sub_10058B268(v228, type metadata accessor for SharedBeaconRecord);
    v146 = v223;
  }

  sub_10058B268(v146, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
}

void sub_1005530EC(uint64_t a1)
{
  v208 = type metadata accessor for Date();
  v209 = *(v208 - 8);
  __chkstk_darwin(v208);
  v190 = &v173 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v215 = type metadata accessor for TimeBasedKey(0);
  v204 = *(v215 - 8);
  __chkstk_darwin(v215);
  v5 = &v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for FamilyCryptoKeysV2(0);
  *&v216 = *(v217 - 8);
  v6 = __chkstk_darwin(v217);
  v191 = (&v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v193 = (&v173 - v9);
  v10 = __chkstk_darwin(v8);
  v197 = &v173 - v11;
  v12 = __chkstk_darwin(v10);
  v194 = (&v173 - v13);
  v14 = __chkstk_darwin(v12);
  v196 = &v173 - v15;
  __chkstk_darwin(v14);
  v195 = &v173 - v16;
  MyAccessoryFamilyShareEnvelope = type metadata accessor for FindMyAccessoryFamilyShareEnvelope(0);
  v17 = __chkstk_darwin(MyAccessoryFamilyShareEnvelope);
  v202 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v173 - v19;
  v200 = type metadata accessor for UUID();
  v205 = *(v200 - 8);
  __chkstk_darwin(v200);
  v213 = &v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v198);
  v199 = &v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for SharedBeaconRecord(0);
  v23 = __chkstk_darwin(v203);
  v192 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v206 = &v173 - v26;
  __chkstk_darwin(v25);
  v207 = &v173 - v27;
  v28 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v28 - 8);
  v30 = &v173 - v29;
  v31 = type metadata accessor for DateInterval();
  v211 = *(v31 - 8);
  v32 = __chkstk_darwin(v31);
  v34 = &v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v212 = &v173 - v35;
  v36 = [objc_opt_self() defaultStore];
  if (!v36)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = [v36 aa_primaryAppleAccount];

  v210 = v38;
  if (!v38)
  {
    type metadata accessor for SPOwnerSessionError(0);
    v219 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  v189 = v20;
  v188 = type metadata accessor for ShareInstruction(0);
  v39 = *(v188 + 24);
  (*(v209 + 56))(v30, 1, 1, v208);
  v40 = v212;
  sub_1005579E8(v212, v34, v39 + a1, v30);
  sub_10000B3A8(v30, &unk_101696900, &unk_10138B1E0);
  v41 = v211 + 1;
  v42 = v211[1];
  v42(v34, v31);
  v43 = v214;
  v44 = sub_1005583F4(a1, v40);
  if (v43)
  {
    v42(v40, v31);

    return;
  }

  v183 = v39;
  v46 = v188;
  v186 = v44;
  v187 = v45;
  v185 = 0;
  v184 = v42;
  v214 = v31;
  v47 = [v210 username];
  if (!v47)
  {
    goto LABEL_37;
  }

  v48 = v47;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v49, v51);
  if (!v54)
  {
    v93 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v94 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_101385D80;
    v96 = v210;
    v97 = [v210 username];
    if (v97)
    {
      v98 = v97;

      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;

      *(v95 + 56) = &type metadata for String;
      *(v95 + 64) = sub_100008C00();
      *(v95 + 32) = v99;
      *(v95 + 40) = v101;
      os_log(_:dso:log:_:_:)(v93, &_mh_execute_header, v94, "Could not create MessagingDestination from: %@", 46, 2, v95);

      type metadata accessor for SPOwnerSessionError(0);
      v219 = 0;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      v184(v212, v214);
      return;
    }

    goto LABEL_38;
  }

  v182 = v41;
  v174 = v1;
  v178 = v54;
  v177 = v52;
  v55 = v199;
  v176 = v53;
  sub_10058B200(v183 + a1, v199, type metadata accessor for OwnedBeaconRecord);
  v56 = *(v46 + 32);
  v57 = *(v205 + 16);
  v175 = a1;
  v58 = v200;
  v57(v213, a1 + v56, v200);
  v59 = v203;
  v60 = v207;
  v207[*(v203 + 56)] = 3;
  v179 = v59[15];
  v61 = v59[20];
  v181 = v61;
  v188 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v62 = *(v188 - 8);
  v183 = *(v62 + 56);
  v180 = v62 + 56;
  v183(&v60[v61], 1, 1, v188);
  *v60 = xmmword_10138C660;
  v63 = v198;
  v57(&v60[v59[5]], v55 + *(v198 + 20), v58);
  v57(&v60[v59[6]], v213, v58);
  v64 = &v60[v59[7]];
  *v64 = v177;
  v65 = v178;
  *(v64 + 1) = v176;
  *(v64 + 2) = v65;
  v66 = &v60[v59[8]];
  *v66 = 0;
  *(v66 + 1) = 0xE000000000000000;
  v67 = (v55 + v63[14]);
  v69 = *v67;
  v68 = v67[1];
  v70 = &v60[v59[9]];
  *v70 = v69;
  *(v70 + 1) = v68;
  v71 = (v55 + v63[15]);
  v72 = *v71;
  v73 = v71[1];
  v74 = &v60[v59[10]];
  *v74 = v72;
  *(v74 + 1) = v73;
  *&v60[v59[11]] = *(v55 + v63[16]);
  *&v60[v59[12]] = *(v55 + v63[17]);
  *&v60[v179] = -1;
  v60[v59[13]] = 0;
  v60[v59[16]] = 1;
  *&v60[v59[17]] = 0;

  static Date.distantPast.getter();
  (*(v205 + 8))(v213, v58);
  sub_1000D2A70(v55 + v63[7], &v60[v59[19]], &qword_1016980D0, &unk_10138F3B0);
  sub_10058B268(v55, type metadata accessor for OwnedBeaconRecord);
  v75 = v181;
  sub_10000B3A8(&v60[v181], &unk_1016AF890, &qword_1013926D0);
  v183(&v60[v75], 1, 1, v188);
  sub_10058B200(v60, v206, type metadata accessor for SharedBeaconRecord);
  v76 = *(v186 + 16);
  if (v76)
  {
    v218[0] = _swiftEmptyArrayStorage;
    v77 = v186;
    sub_101124C54(0, v76, 0);
    v78 = v218[0];
    v79 = v77 + ((*(v204 + 80) + 32) & ~*(v204 + 80));
    v213 = *(v204 + 72);
    v80 = (v211 + 2);
    v81 = v195;
    do
    {
      sub_10058B200(v79, v5, type metadata accessor for TimeBasedKey);
      *v81 = *v5;
      v82 = v78;
      v83 = v215;
      v84 = v217;
      (*v80)(&v81[*(v217 + 20)], &v5[*(v215 + 20)], v214);
      v85 = &v5[*(v83 + 24)];
      v86 = *(v85 + 2);
      v87 = *(v85 + 3);
      sub_100017D5C(v86, v87);
      sub_10058B268(v5, type metadata accessor for TimeBasedKey);
      v88 = &v81[*(v84 + 24)];
      *v88 = v86;
      v88[1] = v87;
      v78 = v82;
      v218[0] = v82;
      v90 = v82[2];
      v89 = v82[3];
      if (v90 >= v89 >> 1)
      {
        sub_101124C54((v89 > 1), v90 + 1, 1);
        v81 = v195;
        v78 = v218[0];
      }

      v78[2] = v90 + 1;
      sub_100589B28(v81, v78 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v90, type metadata accessor for FamilyCryptoKeysV2);
      v79 += v213;
      --v76;
    }

    while (v76);

    v91 = v211;
    v92 = v204;
  }

  else
  {

    v78 = _swiftEmptyArrayStorage;
    v92 = v204;
    v91 = v211;
  }

  v102 = *(v187 + 16);
  v103 = v214;
  if (v102)
  {
    v211 = v78;
    v218[0] = _swiftEmptyArrayStorage;
    v104 = v187;
    sub_101124C54(0, v102, 0);
    v105 = v218[0];
    v106 = v104 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    v213 = *(v92 + 72);
    v107 = (v91 + 2);
    v108 = v196;
    do
    {
      sub_10058B200(v106, v5, type metadata accessor for TimeBasedKey);
      *v108 = *v5;
      v109 = v215;
      v110 = v217;
      (*v107)(&v108[*(v217 + 20)], &v5[*(v215 + 20)], v103);
      v111 = &v5[*(v109 + 24)];
      v112 = *(v111 + 2);
      v113 = *(v111 + 3);
      sub_100017D5C(v112, v113);
      sub_10058B268(v5, type metadata accessor for TimeBasedKey);
      v114 = &v108[*(v110 + 24)];
      *v114 = v112;
      v114[1] = v113;
      v218[0] = v105;
      v116 = v105[2];
      v115 = v105[3];
      if (v116 >= v115 >> 1)
      {
        sub_101124C54((v115 > 1), v116 + 1, 1);
        v108 = v196;
        v105 = v218[0];
      }

      v105[2] = v116 + 1;
      sub_100589B28(v108, v105 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v116, type metadata accessor for FamilyCryptoKeysV2);
      v103 = v214;
      v106 += v213;
      --v102;
    }

    while (v102);

    v78 = v211;
  }

  else
  {

    v105 = _swiftEmptyArrayStorage;
  }

  v117 = v189;
  sub_100589B28(v206, v189, type metadata accessor for SharedBeaconRecord);
  v118 = MyAccessoryFamilyShareEnvelope;
  *(v117 + *(MyAccessoryFamilyShareEnvelope + 20)) = v78;
  *(v117 + *(v118 + 24)) = v105;
  v119 = v78;
  v120 = v202;
  sub_10058B200(v117, v202, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
  v121 = v185;
  sub_10053BD58(0, 3, v120, v218);
  if (v121)
  {
    v184(v212, v103);

    sub_10058B268(v207, type metadata accessor for SharedBeaconRecord);
    v122 = v117;
  }

  else
  {
    v123 = v119;
    v185 = 0;
    LODWORD(v213) = LOBYTE(v218[0]);
    v124 = v218[2];
    v211 = v218[1];
    v125 = v218[3];
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    v215 = xmmword_101385D80;
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0x44495344746C41;
    *(inited + 40) = 0xE700000000000000;
    v127 = *(v175 + 16);
    *(inited + 48) = *(v175 + 8);
    *(inited + 56) = v127;

    v206 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    v128 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v129 = qword_10177C378;
    v204 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v130 = swift_allocObject();
    *(v130 + 16) = v215;
    sub_10058B200(v189, v192, type metadata accessor for SharedBeaconRecord);
    v131 = String.init<A>(describing:)();
    v133 = v132;
    *(v130 + 56) = &type metadata for String;
    *&v215 = sub_100008C00();
    *(v130 + 64) = v215;
    *(v130 + 32) = v131;
    *(v130 + 40) = v133;
    v205 = v129;
    os_log(_:dso:log:_:_:)(v128, &_mh_execute_header, v129, "FindMyAccessoryFamilyShareEnvelope.sharedBeacon: %@", 51, 2, v130);

    v134 = v123;
    v135 = v123[2];
    v136 = v197;
    v137 = v194;
    if (v135)
    {
      v202 = v125;
      v203 = v124;
      v138 = v216;
      v139 = (*(v216 + 80) + 32) & ~*(v216 + 80);
      v140 = v134 + v139;
      sub_10058B200(v134 + v139, v194, type metadata accessor for FamilyCryptoKeysV2);
      v141 = v135 - 1;
      v142 = *(v138 + 72);
      sub_10058B200(v140 + v142 * v141, v136, type metadata accessor for FamilyCryptoKeysV2);
      v143 = v105[2];
      if (v143)
      {
        sub_10058B200(v105 + v139, v193, type metadata accessor for FamilyCryptoKeysV2);
        sub_10058B200(v105 + v139 + (v143 - 1) * v142, v191, type metadata accessor for FamilyCryptoKeysV2);
        LODWORD(MyAccessoryFamilyShareEnvelope) = static os_log_type_t.default.getter();
        v144 = swift_allocObject();
        v216 = xmmword_101391790;
        *(v144 + 16) = xmmword_101391790;
        v145 = *v137;
        *(v144 + 56) = &type metadata for UInt64;
        *(v144 + 64) = &protocol witness table for UInt64;
        *(v144 + 32) = v145;
        v146 = *v136;
        *(v144 + 96) = &type metadata for UInt64;
        *(v144 + 104) = &protocol witness table for UInt64;
        *(v144 + 72) = v146;
        v147 = v190;
        DateInterval.start.getter();
        v200 = sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v148 = v208;
        v149 = dispatch thunk of CustomStringConvertible.description.getter();
        v151 = v150;
        v153 = v209 + 8;
        v152 = *(v209 + 8);
        v152(v147, v148);
        v209 = v153;
        v154 = v215;
        *(v144 + 136) = &type metadata for String;
        *(v144 + 144) = v154;
        *(v144 + 112) = v149;
        *(v144 + 120) = v151;
        DateInterval.end.getter();
        v155 = dispatch thunk of CustomStringConvertible.description.getter();
        v157 = v156;
        v152(v147, v148);
        v158 = v152;
        *(v144 + 176) = &type metadata for String;
        *(v144 + 184) = v154;
        *(v144 + 152) = v155;
        *(v144 + 160) = v157;
        os_log(_:dso:log:_:_:)(MyAccessoryFamilyShareEnvelope, &_mh_execute_header, v205, "FindMyAccessoryFamilyShareEnvelope.initialPrimaryKeys: %lu...%lu (%@ - %@)", 74, 2, v144);

        LODWORD(MyAccessoryFamilyShareEnvelope) = static os_log_type_t.default.getter();
        v159 = swift_allocObject();
        *(v159 + 16) = v216;
        v160 = *v193;
        *(v159 + 56) = &type metadata for UInt64;
        *(v159 + 32) = v160;
        v161 = v191;
        v162 = *v191;
        *(v159 + 96) = &type metadata for UInt64;
        *(v159 + 104) = &protocol witness table for UInt64;
        *(v159 + 64) = &protocol witness table for UInt64;
        *(v159 + 72) = v162;
        DateInterval.start.getter();
        v163 = dispatch thunk of CustomStringConvertible.description.getter();
        v165 = v164;
        v158(v147, v148);
        v166 = v215;
        *(v159 + 136) = &type metadata for String;
        *(v159 + 144) = v166;
        *(v159 + 112) = v163;
        *(v159 + 120) = v165;
        DateInterval.end.getter();
        v167 = dispatch thunk of CustomStringConvertible.description.getter();
        v169 = v168;
        v158(v147, v148);
        v137 = v194;
        v136 = v197;
        v170 = v215;
        *(v159 + 176) = &type metadata for String;
        *(v159 + 184) = v170;
        *(v159 + 152) = v167;
        *(v159 + 160) = v169;
        os_log(_:dso:log:_:_:)(MyAccessoryFamilyShareEnvelope, &_mh_execute_header, v205, "FindMyAccessoryFamilyShareEnvelope.initialSecondaryKeys: %lu...%lu (%@ - %@)", 76, 2, v159);

        sub_10058B268(v161, type metadata accessor for FamilyCryptoKeysV2);
        sub_10058B268(v193, type metadata accessor for FamilyCryptoKeysV2);
      }

      sub_10058B268(v136, type metadata accessor for FamilyCryptoKeysV2);
      sub_10058B268(v137, type metadata accessor for FamilyCryptoKeysV2);
      v124 = v203;
      v125 = v202;
    }

    v171 = type metadata accessor for Transaction();
    __chkstk_darwin(v171);
    *(&v173 - 8) = v174;
    *(&v173 - 56) = v213;
    *(&v173 - 6) = v211;
    *(&v173 - 5) = v124;
    v172 = v206;
    *(&v173 - 4) = v125;
    *(&v173 - 3) = v172;
    *(&v173 - 2) = v175;
    static Transaction.named<A>(_:with:)();

    sub_100016590(v124, v125);

    v184(v212, v214);
    sub_10058B268(v207, type metadata accessor for SharedBeaconRecord);
    v122 = v189;
  }

  sub_10058B268(v122, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
}

uint64_t sub_1005548D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v158 = a8;
  v143 = a6;
  v142 = a5;
  v141 = a4;
  LODWORD(v140) = a3;
  v154 = a2;
  v160 = a1;
  v133 = type metadata accessor for DispatchQoS.QoSClass();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for DispatchTime();
  v130 = *(v135 - 8);
  v10 = __chkstk_darwin(v135);
  v128 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v129 = &v126 - v12;
  v145 = type metadata accessor for DispatchWorkItemFlags();
  v152 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for DispatchQoS();
  v151 = *(v147 - 8);
  __chkstk_darwin(v147);
  v146 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v139);
  v16 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v18 = __chkstk_darwin(v17 - 8);
  v137 = (&v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v21 = &v126 - v20;
  v22 = type metadata accessor for UUID();
  v149 = *(v22 - 8);
  v150 = v22;
  v23 = __chkstk_darwin(v22);
  v134 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v138 = (&v126 - v26);
  v127 = v27;
  __chkstk_darwin(v25);
  v148 = &v126 - v28;
  v155 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v155);
  *&v156 = &v126 - v29;
  v30 = type metadata accessor for SystemInfo.DeviceLockState();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v126 - v35;
  v37 = type metadata accessor for SharingRampState(0);
  __chkstk_darwin(v37 - 8);
  v39 = &v126 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10052FFA4(v39);
  v40 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  v41 = (*(*(v40 - 8) + 48))(v39, 2, v40);
  sub_10058B268(v39, type metadata accessor for SharingRampState);
  v153 = v21;
  v136 = v16;
  if (v41 == 2)
  {
    v157 = sub_100B0F690(&off_1016094E0);
  }

  else
  {
    v157 = &_swiftEmptySetSingleton;
  }

  sub_100695608(a7);

  v42 = (v158 + *(type metadata accessor for ShareInstruction(0) + 28));
  LODWORD(v158) = *v42;
  v43 = *(v42 + 1);
  v44 = *(v42 + 2);
  v45 = sub_100B0F690(&off_101609508);

  static SystemInfo.lockState.getter();
  (*(v31 + 104))(v34, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v30);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = *(v31 + 8);
  v47(v34, v30);
  v47(v36, v30);
  if (v46)
  {

    v48 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      v125 = v48;
      swift_once();
      v48 = v125;
    }

    os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPOwnerSessionError(0);
    v167 = 5;
LABEL_16:
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v84 = v156;
    *v156 = aBlock;
    swift_storeEnumTagMultiPayload();
    sub_100557804(v84, v160, "Error sending shareBeacon message: %@", 37);

    return sub_10000B3A8(v84, &qword_10169F358, &qword_1013A0810);
  }

  v126 = v45;
  v49 = v158;
  v50 = v154;
  v51 = v43;
  if ((sub_100540CB8(v158, v43, v44) & 1) == 0)
  {

    v81 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v82 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_101385D80;
    *(v83 + 56) = &type metadata for String;
    *(v83 + 64) = sub_100008C00();
    *(v83 + 32) = v51;
    *(v83 + 40) = v44;

    os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v82, "Not sending since %@ has no IDS registered devices", 50, 2, v83);

    type metadata accessor for SPOwnerSessionError(0);
    v167 = 12;
    goto LABEL_16;
  }

  v155 = *(v50 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v52 = swift_allocObject();
  v156 = xmmword_101385D80;
  *(v52 + 16) = xmmword_101385D80;
  *(v52 + 32) = v49;
  *(v52 + 40) = v43;
  *(v52 + 48) = v44;
  v53 = v150;
  v54 = *(v149 + 56);
  v55 = v153;
  v54(v153, 1, 1, v150);

  v56 = v136;
  UUID.init()();
  v57 = v137;
  sub_1000D2A70(v55, v137, &qword_1016980D0, &unk_10138F3B0);
  v58 = v139;
  v59 = *(v139 + 7);
  v54((v56 + v59), 1, 1, v53);
  *(v56 + v58[5]) = v52;
  *(v56 + v58[6]) = 1;
  sub_10002311C(v57, v56 + v59, &qword_1016980D0, &unk_10138F3B0);
  v60 = v56 + v58[8];
  *v60 = 0;
  *(v60 + 8) = 1;
  *(v56 + v58[9]) = 0;
  *(v56 + v58[10]) = v126;
  *(v56 + v58[11]) = v157;
  v61 = (v56 + v58[12]);
  *v61 = 0;
  v61[1] = 0;
  *(v56 + v58[13]) = xmmword_1013B0D90;
  v62 = v138;
  v63 = v159;
  sub_1010A6F88(v140, v141, v142, v143, v56, v138);
  if (v63)
  {
    sub_10000B3A8(v153, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v56, type metadata accessor for MessagingOptions);
    v64 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v65 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v66 = swift_allocObject();
    *(v66 + 16) = v156;
    aBlock = v63;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v67 = String.init<A>(describing:)();
    v69 = v68;
    *(v66 + 56) = &type metadata for String;
    *(v66 + 64) = sub_100008C00();
    *(v66 + 32) = v67;
    *(v66 + 40) = v69;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v65, "Message send error: %@", 22, 2, v66);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v70 = v132;
    v71 = v131;
    v72 = v133;
    (*(v132 + 104))(v131, enum case for DispatchQoS.QoSClass.default(_:), v133);
    v159 = static OS_dispatch_queue.global(qos:)();
    (*(v70 + 8))(v71, v72);
    v73 = swift_allocObject();
    v74 = v160;
    v73[2] = sub_1005896EC;
    v73[3] = v74;
    v73[4] = v63;
    v165 = sub_10058D73C;
    v166 = v73;
    aBlock = _NSConcreteStackBlock;
    v162 = 1107296256;
    v163 = sub_100006684;
    v164 = &unk_101627FF8;
    v75 = _Block_copy(&aBlock);

    swift_errorRetain();
    v76 = v146;
    static DispatchQoS.unspecified.getter();
    v167 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v77 = v144;
    v78 = v145;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v79 = v159;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v75);

    (*(v152 + 8))(v77, v78);
    (*(v151 + 8))(v76, v147);
  }

  else
  {
    v159 = 0;
    sub_10000B3A8(v153, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v56, type metadata accessor for MessagingOptions);
    v86 = v148;
    v85 = v149;
    v87 = v149 + 32;
    v88 = v150;
    v157 = *(v149 + 32);
    (v157)(v148, v62, v150);
    sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
    swift_allocObject();
    v158 = Future.init()();
    v89 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v90 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v91 = swift_allocObject();
    *(v91 + 16) = v156;
    v92 = UUID.uuidString.getter();
    v94 = v93;
    *(v91 + 56) = &type metadata for String;
    *(v91 + 64) = sub_100008C00();
    *(v91 + 32) = v92;
    *(v91 + 40) = v94;
    os_log(_:dso:log:_:_:)(v89, &_mh_execute_header, v90, "Setting %@ to pending", 21, 2, v91);

    v95 = v154;
    v142 = *(v154 + 168);
    v96 = *(v85 + 16);
    v155 = v85 + 16;
    *&v156 = v96;
    v97 = v134;
    v96(v134, v86, v88);
    v98 = (*(v85 + 80) + 24) & ~*(v85 + 80);
    v143 = *(v85 + 80);
    v140 = v98 + v127;
    v99 = v98;
    v153 = v98;
    v100 = (v98 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = swift_allocObject();
    *(v101 + 16) = v95;
    (v157)(v101 + v99, v97, v88);
    *(v101 + v100) = v158;
    v165 = sub_10058D4DC;
    v166 = v101;
    aBlock = _NSConcreteStackBlock;
    v162 = 1107296256;
    v139 = &v163;
    v163 = sub_100006684;
    v164 = &unk_101628048;
    v102 = _Block_copy(&aBlock);
    v141 = v87;
    v103 = v102;

    v104 = v146;
    static DispatchQoS.unspecified.getter();
    v167 = _swiftEmptyArrayStorage;
    v133 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v132 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v136 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v105 = v88;
    v106 = v144;
    v107 = v145;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v103);
    v108 = *(v152 + 8);
    v152 += 8;
    v138 = v108;
    (v108)(v106, v107);
    v109 = *(v151 + 8);
    v151 += 8;
    v137 = v109;
    (v109)(v104, v147);

    v110 = v134;
    (v156)(v134, v148, v105);
    v111 = swift_allocObject();
    *(v111 + 16) = v95;
    (v157)(&v153[v111], v110, v105);
    v112 = (v111 + v100);
    v113 = v160;
    *v112 = sub_1005896EC;
    v112[1] = v113;

    Future.addSuccess(block:)();

    v114 = swift_allocObject();
    *(v114 + 16) = sub_1005896EC;
    *(v114 + 24) = v113;

    Future.addFailure(block:)();

    v115 = v128;
    static DispatchTime.now()();
    v116 = v129;
    + infix(_:_:)();
    v131 = *(v130 + 8);
    (v131)(v115, v135);
    v117 = v110;
    v118 = v110;
    v119 = v150;
    (v156)(v118, v148, v150);
    v120 = swift_allocObject();
    *(v120 + 16) = v95;
    v121 = v117;
    v122 = v119;
    (v157)(&v153[v120], v121, v119);
    v165 = sub_10058D4E0;
    v166 = v120;
    aBlock = _NSConcreteStackBlock;
    v162 = 1107296256;
    v163 = sub_100006684;
    v164 = &unk_1016280E8;
    v123 = _Block_copy(&aBlock);

    v124 = v146;
    static DispatchQoS.unspecified.getter();
    v167 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v123);

    (v138)(v106, v107);
    (v137)(v124, v147);
    (v131)(v116, v135);
    (*(v149 + 8))(v148, v122);
  }
}

uint64_t sub_100555EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(char *, uint64_t), unint64_t a6, uint64_t a7)
{
  v164 = a6;
  v163 = a5;
  v162 = a4;
  LODWORD(v161) = a3;
  v177 = a2;
  v151 = type metadata accessor for DispatchQoS.QoSClass();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for DispatchTime();
  v144 = *(v147 - 8);
  v10 = __chkstk_darwin(v147);
  v142 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v143 = &v138 - v12;
  v166 = type metadata accessor for DispatchWorkItemFlags();
  v170 = *(v166 - 8);
  __chkstk_darwin(v166);
  v165 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DispatchQoS();
  v169 = *(v168 - 8);
  __chkstk_darwin(v168);
  v167 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for SecureLocationsRelayAction(0);
  v155 = *(v154 - 8);
  v15 = __chkstk_darwin(v154);
  v157 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v16;
  __chkstk_darwin(v15);
  v159 = (&v138 - v17);
  v158 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v18 = __chkstk_darwin(v158);
  v145 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v160 = (&v138 - v20);
  v152 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v152);
  v175 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v23 = __chkstk_darwin(v22 - 8);
  v153 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v174 = &v138 - v25;
  v178 = type metadata accessor for UUID();
  v176 = *(v178 - 8);
  v26 = __chkstk_darwin(v178);
  v146 = &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v173 = &v138 - v29;
  v141 = v30;
  __chkstk_darwin(v28);
  v148 = &v138 - v31;
  *&v180 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v180);
  v179 = (&v138 - v32);
  v33 = type metadata accessor for SystemInfo.DeviceLockState();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = &v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v138 - v38;
  v40 = (a7 + *(type metadata accessor for ShareInstruction(0) + 28));
  LODWORD(v172) = *v40;
  v41 = *(v40 + 2);
  v171 = *(v40 + 1);
  v42 = sub_100B0F690(&off_101609530);
  v181 = a1;

  sub_100908F24(_swiftEmptyArrayStorage);

  v43 = sub_101129A8C(&off_101609558);
  static SystemInfo.lockState.getter();
  (*(v34 + 104))(v37, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v33);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v34 + 8);
  v44(v37, v33);
  v44(v39, v33);
  if (a1)
  {

    v45 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      v137 = v45;
      swift_once();
      v45 = v137;
    }

    os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPOwnerSessionError(0);
    v189 = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
LABEL_11:
    _BridgedStoredNSError.init(_:userInfo:)();
    v76 = v179;
    *v179 = aBlock;
    swift_storeEnumTagMultiPayload();
    sub_100557804(v76, v181, "Error sending legacy shareBeacon message: %@", 44);

    return sub_10000B3A8(v76, &qword_10169F358, &qword_1013A0810);
  }

  v139 = v43;
  v140 = v42;
  v46 = v172;
  v47 = v171;
  v48 = v177;
  if ((sub_100540CB8(v172, v171, v41) & 1) == 0)
  {

    v73 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v74 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_101385D80;
    *(v75 + 56) = &type metadata for String;
    *(v75 + 64) = sub_100008C00();
    *(v75 + 32) = v47;
    *(v75 + 40) = v41;

    os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v74, "Not sending since %@ has no IDS registered devices", 50, 2, v75);

    type metadata accessor for SPOwnerSessionError(0);
    v189 = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    goto LABEL_11;
  }

  v179 = *(v48 + 24);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v49 = swift_allocObject();
  v180 = xmmword_101385D80;
  *(v49 + 16) = xmmword_101385D80;
  *(v49 + 32) = v46;
  *(v49 + 40) = v47;
  *(v49 + 48) = v41;
  v50 = v176;
  v51 = *(v176 + 56);
  v52 = v174;
  v53 = v178;
  v51(v174, 1, 1, v178);

  v54 = v173;
  UUID.init()();
  v55 = v175;
  v171 = *(v50 + 16);
  v172 = v50 + 16;
  v171(v175, v54, v53);
  v56 = v153;
  sub_1000D2A70(v52, v153, &qword_1016980D0, &unk_10138F3B0);
  v57 = v152;
  v58 = *(v152 + 28);
  v51(&v55[v58], 1, 1, v53);
  *&v55[v57[5]] = v49;
  v55[v57[6]] = 1;
  sub_10002311C(v56, &v55[v58], &qword_1016980D0, &unk_10138F3B0);
  v59 = &v55[v57[8]];
  *v59 = 0;
  v59[8] = 1;
  v55[v57[9]] = 0;
  *&v55[v57[10]] = v139;
  *&v55[v57[11]] = v140;
  v60 = &v55[v57[12]];
  *v60 = 0;
  v60[1] = 0;
  *&v55[v57[13]] = xmmword_1013B0D90;
  v61 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
  v62 = v159;
  sub_10058B200(v55, v159 + *(v61 + 24), type metadata accessor for MessagingOptions);
  *v62 = v161;
  v63 = v163;
  *(v62 + 8) = v162;
  *(v62 + 16) = v63;
  v64 = v164;
  *(v62 + 24) = v164;
  *(v62 + 32) = xmmword_10138BBF0;
  swift_storeEnumTagMultiPayload();
  v65 = v157;
  sub_10058B200(v62, v157, type metadata accessor for SecureLocationsRelayAction);
  v66 = (*(v155 + 80) + 24) & ~*(v155 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = v179;
  sub_100589B28(v65, v67 + v66, type metadata accessor for SecureLocationsRelayAction);
  sub_100017D5C(v63, v64);

  v68 = v160;
  v69 = v182;
  unsafeFromAsyncTask<A>(_:)();
  v70 = v69;
  if (v69)
  {

    v71 = type metadata accessor for SecureLocationsRelayAction;
    v72 = v62;
  }

  else
  {
    sub_10058B268(v62, type metadata accessor for SecureLocationsRelayAction);

    v78 = v145;
    sub_10058B200(v68, v145, type metadata accessor for SecureLocationsRelayAction.Response);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v182 = 0;
      sub_10058B268(v68, type metadata accessor for SecureLocationsRelayAction.Response);
      v79 = v176;
      v80 = *(v176 + 8);
      v81 = v178;
      v164 = v176 + 8;
      v163 = v80;
      v80(v173, v178);
      sub_10000B3A8(v174, &qword_1016980D0, &unk_10138F3B0);
      sub_10058B268(v175, type metadata accessor for MessagingOptions);
      v82 = *(v79 + 32);
      v83 = v148;
      v179 = (v79 + 32);
      v175 = v82;
      (v82)(v148, v78, v81);
      sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
      swift_allocObject();
      v84 = Future.init()();
      v85 = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v86 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v87 = swift_allocObject();
      *(v87 + 16) = v180;
      v88 = UUID.uuidString.getter();
      v90 = v89;
      *(v87 + 56) = &type metadata for String;
      *(v87 + 64) = sub_100008C00();
      *(v87 + 32) = v88;
      *(v87 + 40) = v90;
      os_log(_:dso:log:_:_:)(v85, &_mh_execute_header, v86, "Setting %@ to pending", 21, 2, v87);

      v91 = v83;
      v92 = v177;
      v174 = *(v177 + 168);
      v93 = v146;
      v171(v146, v91, v81);
      v94 = (*(v79 + 80) + 24) & ~*(v79 + 80);
      v176 = *(v79 + 80);
      v162 = v94 + v141;
      v95 = v94;
      *&v180 = v94;
      v96 = (v94 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
      v97 = swift_allocObject();
      *(v97 + 16) = v92;
      (v175)(v97 + v95, v93, v81);
      *(v97 + v96) = v84;
      v173 = v84;
      v187 = sub_10058D4DC;
      v188 = v97;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v161 = &v185;
      v185 = sub_100006684;
      v186 = &unk_101627F08;
      v98 = _Block_copy(&aBlock);

      v99 = v167;
      static DispatchQoS.unspecified.getter();
      v189 = _swiftEmptyArrayStorage;
      v157 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v156 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      v158 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v100 = v165;
      v101 = v166;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v98);
      v102 = *(v170 + 8);
      v170 += 8;
      v160 = v102;
      v102(v100, v101);
      v103 = *(v169 + 8);
      v169 += 8;
      v159 = v103;
      v103(v99, v168);

      v104 = v146;
      v105 = v178;
      v171(v146, v148, v178);
      v106 = swift_allocObject();
      *(v106 + 16) = v92;
      (v175)(v106 + v180, v104, v105);
      v107 = (v106 + v96);
      v108 = v181;
      *v107 = sub_100589610;
      v107[1] = v108;

      Future.addSuccess(block:)();

      v109 = swift_allocObject();
      *(v109 + 16) = sub_100589610;
      *(v109 + 24) = v108;

      Future.addFailure(block:)();

      v110 = v142;
      static DispatchTime.now()();
      v111 = v143;
      + infix(_:_:)();
      v155 = *(v144 + 8);
      (v155)(v110, v147);
      v112 = v104;
      v113 = v104;
      v114 = v178;
      v171(v113, v148, v178);
      v115 = swift_allocObject();
      *(v115 + 16) = v92;
      v116 = v112;
      v117 = v114;
      (v175)(v115 + v180, v116, v114);
      v187 = sub_10058D4E0;
      v188 = v115;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_100006684;
      v186 = &unk_101627FA8;
      v118 = _Block_copy(&aBlock);

      v119 = v167;
      static DispatchQoS.unspecified.getter();
      v189 = _swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v118);

      v160(v100, v101);
      v159(v119, v168);
      (v155)(v111, v147);
      v163(v148, v117);
    }

    sub_10058B268(v78, type metadata accessor for SecureLocationsRelayAction.Response);
    sub_10057C844();
    v70 = swift_allocError();
    swift_willThrow();
    v72 = v68;
    v71 = type metadata accessor for SecureLocationsRelayAction.Response;
  }

  sub_10058B268(v72, v71);
  v182 = 0;
  (*(v176 + 8))(v173, v178);
  sub_10000B3A8(v174, &qword_1016980D0, &unk_10138F3B0);
  sub_10058B268(v175, type metadata accessor for MessagingOptions);
  v120 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v121 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v122 = swift_allocObject();
  *(v122 + 16) = v180;
  aBlock = v70;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v123 = String.init<A>(describing:)();
  v125 = v124;
  *(v122 + 56) = &type metadata for String;
  *(v122 + 64) = sub_100008C00();
  *(v122 + 32) = v123;
  *(v122 + 40) = v125;
  os_log(_:dso:log:_:_:)(v120, &_mh_execute_header, v121, "Message send error: %@", 22, 2, v122);

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v126 = v150;
  v127 = v149;
  v128 = v70;
  v129 = v151;
  (*(v150 + 104))(v149, enum case for DispatchQoS.QoSClass.default(_:), v151);
  *&v180 = static OS_dispatch_queue.global(qos:)();
  (*(v126 + 8))(v127, v129);
  v130 = swift_allocObject();
  v131 = v181;
  v130[2] = sub_100589610;
  v130[3] = v131;
  v130[4] = v128;
  v187 = sub_10058D73C;
  v188 = v130;
  aBlock = _NSConcreteStackBlock;
  v184 = 1107296256;
  v185 = sub_100006684;
  v186 = &unk_101627EB8;
  v132 = _Block_copy(&aBlock);

  swift_errorRetain();
  v133 = v167;
  static DispatchQoS.unspecified.getter();
  v189 = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v134 = v165;
  v135 = v166;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v136 = v180;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v132);

  (*(v170 + 8))(v134, v135);
  (*(v169 + 8))(v133, v168);
}