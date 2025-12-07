void *sub_1002C7410()
{
  v1 = v0 + qword_100594B08;
  swift_beginAccess();
  sub_100012400(v1 + 136, v8, &unk_1005974B0, &qword_1004AFCF0);
  v2 = v9;
  if (v9 == 255)
  {
    sub_100016290(v8, &unk_1005974B0, &qword_1004AFCF0);
  }

  else
  {
    sub_10020C758(v8);
    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + qword_100594B00);
      swift_unownedRetainStrong();
      v4 = 480;
      goto LABEL_7;
    }
  }

  v5 = *(v1 + 72);
  v3 = *(v0 + qword_100594B00);
  swift_unownedRetainStrong();
  if (v5 != 2)
  {
    return v3;
  }

  v4 = 472;
LABEL_7:
  v6 = *(v3 + *(*v3 + v4));

  result = v6;
  if (!v6)
  {
    return swift_unownedRetainStrong();
  }

  return result;
}

void sub_1002C753C(void **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = (a4 + qword_100594B18);
  v10 = *(a4 + qword_100594B18 + 8);
  if (v10 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v15 = *v9;
    sub_10000AB0C(*v9, *(a4 + qword_100594B18 + 8));
    v11 = InterfaceIdentifier.ipv6Address.getter(v15, v10);
    v12 = v16;
    v13 = v17;
    v14 = v18;
    sub_100017554(v15, v10);
  }

  v19 = WiFiAddress.apiAddress(with:)(v11, v12, v13, v14, (a2 >> 8) & 0xFFFFFFFFFFFFLL);
  sub_10011AF40(v11, v12, v13, v14);
  v20 = [objc_allocWithZone(WiFiAwarePublisherDataSessionHandle) initWithDatapathID:a2 initiatorDataAddress:v19];

  [v8 publishDataConfirmedForHandle:v20 localInterfaceIndex:a5 serviceSpecificInfo:a6];
}

uint64_t sub_1002C7670(void **a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v47 = a2;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v39 - v13;
  v15 = type metadata accessor for NANPeer(0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  result = [v19 respondsToSelector:{"publishDataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:pairingKeyStoreID:", v16}];
  if (result)
  {
    v42 = v19;
    v43 = v14;
    v44 = a5;
    v45 = a6;
    v46 = v6;
    v40 = v12;
    v41 = a4;
    v21 = a4 + qword_100594B18;
    v22 = *(a4 + qword_100594B18 + 8);
    if (v22 >> 60 == 15)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 1;
    }

    else
    {
      v27 = *v21;
      sub_10000AB0C(*v21, *(v21 + 8));
      v23 = InterfaceIdentifier.ipv6Address.getter(v27, v22);
      v24 = v28;
      v25 = v29;
      v26 = v30;
      sub_100017554(v27, v22);
    }

    v31 = v47;
    v32 = WiFiAddress.apiAddress(with:)(v23, v24, v25, v26, (v47 >> 8) & 0xFFFFFFFFFFFFLL);
    sub_10011AF40(v23, v24, v25, v26);
    v33 = [objc_allocWithZone(WiFiAwarePublisherDataSessionHandle) initWithDatapathID:v31 initiatorDataAddress:v32];

    swift_unownedRetainStrong();
    sub_10040CD68((v31 >> 8) & 0xFFFFFFFFFFFFLL, v18);

    v34 = v43;
    sub_100012400(&v18[*(v15 + 88)], v43, &qword_10058F4D0, &qword_100491AB0);
    sub_1002CB5A0(v18, type metadata accessor for NANPeer);
    v35 = v40;
    sub_100012400(v34, v40, &qword_10058F4D0, &qword_100491AB0);
    v36 = type metadata accessor for UUID();
    v37 = *(v36 - 8);
    isa = 0;
    if ((*(v37 + 48))(v35, 1, v36) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v37 + 8))(v35, v36);
    }

    [v42 publishDataConfirmedForHandle:v33 localInterfaceIndex:v44 serviceSpecificInfo:v45 pairingKeyStoreID:isa];

    return sub_100016290(v34, &qword_10058F4D0, &qword_100491AB0);
  }

  return result;
}

uint64_t sub_1002C79D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v13;
  v8[9] = a6;
  v8[10] = a7;
  v8[8] = a4;
  v9 = swift_isaMask & *a6;
  v8[13] = *(*(v9 + 0x58) + 8);
  v8[14] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v8[16] = *(AssociatedTypeWitness - 8);
  v8[17] = swift_task_alloc();
  sub_10005DC58(&unk_10058F4C0, &unk_100492870);
  v8[18] = swift_task_alloc();
  v8[19] = swift_projectBox();

  return _swift_task_switch(sub_1002C7B44, 0, 0);
}

uint64_t sub_1002C7B44()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[9];
  v5 = *(v4 + qword_100594B00);
  swift_unownedRetainStrong();
  (*(v2 + 16))(v1, v5 + *(*v5 + 112), v3);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 136))(v3, AssociatedConformanceWitness);
  v0[20] = v7;
  (*(v2 + 8))(v1, v3);
  v8 = v4 + qword_100594B08;
  swift_beginAccess();
  if (*(v8 + 208))
  {
    v9 = *(v8 + 232);
  }

  else
  {
    v9 = 1;
  }

  v0[21] = v9;
  v10 = *v7 + 392;
  v0[22] = *v10;
  v0[23] = v10 & 0xFFFFFFFFFFFFLL | 0xD6F0000000000000;

  return _swift_task_switch(sub_1002C7CD8, v7, 0);
}

uint64_t sub_1002C7CD8()
{
  *(v0 + 192) = (*(v0 + 176))(*(v0 + 80), *(v0 + 88), *(v0 + 168), 0);
  *(v0 + 200) = 0;

  return _swift_task_switch(sub_1002C7D78, 0, 0);
}

uint64_t sub_1002C7D78()
{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[12];
  *(swift_task_alloc() + 16) = v4;
  sub_10019BF58(sub_1001AC51C, v1, v3);

  swift_beginAccess();
  sub_1000B1B78(v3, v2, &unk_10058F4C0, &unk_100492870);
  OS_dispatch_semaphore.signal()();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002C7E84()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to get paired device from WiFiAwarePairedDevicesStore: %@", v3, 0xCu);
    sub_100016290(v4, &qword_10058B780, &qword_100480AC0);
  }

  else
  {
  }

  OS_dispatch_semaphore.signal()();

  v6 = *(v0 + 8);

  return v6();
}

void *sub_1002C8014(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_1002C8128(void **a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v41 - v17;
  v19 = *a1;
  if ([v19 respondsToSelector:{"publishDataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:pairingKeyStoreID:deviceID:", v16}])
  {
    v42 = a7;
    v43 = v19;
    v44 = a5;
    v46 = v8;
    v20 = (a4 + qword_100594B18);
    v21 = *(a4 + qword_100594B18 + 8);
    v45 = a6;
    if (v21 >> 60 == 15)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
    }

    else
    {
      v26 = *v20;
      sub_10000AB0C(*v20, v21);
      v22 = InterfaceIdentifier.ipv6Address.getter(v26, v21);
      v23 = v27;
      v24 = v28;
      v25 = v29;
      sub_100017554(v26, v21);
    }

    v30 = WiFiAddress.apiAddress(with:)(v22, v23, v24, v25, (a2 >> 8) & 0xFFFFFFFFFFFFLL);
    sub_10011AF40(v22, v23, v24, v25);
    v31 = [objc_allocWithZone(WiFiAwarePublisherDataSessionHandle) initWithDatapathID:a2 initiatorDataAddress:v30];

    swift_beginAccess();
    v32 = type metadata accessor for WiFiAwarePairedDevice(0);
    v33 = (*(*(v32 - 8) + 48))(a8, 1, v32);
    v34 = 0;
    v35 = v44;
    if (!v33)
    {
      v34 = *(a8 + *(v32 + 20));
    }

    sub_100012400(v42, v18, &qword_10058F4D0, &qword_100491AB0);
    v36 = type metadata accessor for UUID();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 48))(v18, 1, v36);
    isa = 0;
    v40 = v45;
    if (v38 != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v37 + 8))(v18, v36);
    }

    [v43 publishDataConfirmedForHandle:v31 localInterfaceIndex:v35 serviceSpecificInfo:v40 pairingKeyStoreID:isa deviceID:v34];
  }
}

void sub_1002C8404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 8))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1002BE8E4();
    }
  }
}

uint64_t sub_1002C8468()
{
  v1 = v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  v111 = *(v5 - 1);
  v112 = v5;
  __chkstk_darwin();
  v110 = &v106 - v6;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v106 - v11;
  v13 = type metadata accessor for DispatchTimeInterval();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v108 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v106 - v16;
  __chkstk_darwin();
  v109 = &v106 - v17;
  __chkstk_darwin();
  v113 = &v106 - v18;
  __chkstk_darwin();
  v106 = &v106 - v19;
  __chkstk_darwin();
  v21 = (&v106 - v20);
  __chkstk_darwin();
  v23 = &v106 - v22;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v24 = qword_100594B30;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v24], v7);
  v116 = v23;
  DispatchTime.distance(to:)();
  v25 = *(v8 + 8);
  v26 = v10;
  v27 = v13;
  v25(v26, v7);
  v25(v12, v7);
  *v21 = 10;
  v28 = enum case for DispatchTimeInterval.seconds(_:);
  v114 = v14;
  v115 = v21;
  v29 = *(v14 + 104);
  v29(v21, enum case for DispatchTimeInterval.seconds(_:), v13);
  v31 = *&v1[qword_100594B38];
  v30 = *&v1[qword_100594B38 + 8];
  if (v30 >> 62)
  {
    if (v30 >> 62 == 1)
    {
      v32 = v1;
      swift_unownedRetainStrong();
      v33 = v110;
      WiFiInterface.preferences.getter();

      v34 = v112;
      v35 = Preferences.enableUserspaceP2POptions.getter(v112);
      (v111[1])(v33, v34);
      v36 = *PreferenceDefaults.EnableUserspaceP2POptions.keepAliveTermination.unsafeMutableAddressor();
      v37 = v114;
      v38 = v116;
      if ((v36 & ~v35) == 0)
      {
        v39 = NANConstants.keepAliveTimeout.unsafeMutableAddressor();
        v40 = *(v37 + 16);
        v41 = v113;
        v40(v113, v39, v13);
        v42 = static DispatchTimeInterval.< infix(_:_:)(v41, v38);
        v43 = *(v37 + 8);
        v43(v41, v13);
        if (v42)
        {
          v44 = v108;
          v40(v108, v38, v13);
          v45 = v32;
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v112 = v49;
            v113 = swift_slowAlloc();
            v117 = v113;
            *v48 = 138412546;
            *(v48 + 4) = v45;
            *v49 = v32;
            *(v48 + 12) = 2080;
            v50 = v45;
            v51 = DispatchTimeInterval.description.getter();
            v53 = v52;
            v43(v44, v13);
            v54 = sub_100002320(v51, v53, &v117);

            *(v48 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v46, v47, "%@ will be terminated because no keep alive was received for %s", v48, 0x16u);
            sub_100016290(v112, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v113);

            v37 = v114;
          }

          else
          {

            v43(v44, v13);
          }

          v27 = v13;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v37 = v114;
      if (__PAIR128__(0x8000000000000000, 1) < __PAIR128__(v30, v31))
      {
        if (v30 == 0x8000000000000000 && v31 == 2)
        {
          v38 = v116;
          if (static DispatchTimeInterval.< infix(_:_:)(v115, v116))
          {
            v117 = 0;
            v118 = 0xE000000000000000;
            _StringGuts.grow(_:)(40);

            v117 = 0xD000000000000026;
            v118 = 0x80000001004BE550;
            v87._countAndFlagsBits = DispatchTimeInterval.description.getter();
            String.append(_:)(v87);

            sub_1002C057C(1, v117, v118, 31);
          }
        }

        else
        {
          v101 = NANConstants.serviceTerminateEventTimeout.unsafeMutableAddressor();
          v102 = v113;
          (*(v37 + 16))(v113, v101, v13);
          v38 = v116;
          v103 = static DispatchTimeInterval.< infix(_:_:)(v102, v116);
          (*(v37 + 8))(v102, v13);
          if (v103)
          {
            sub_1002C057C(2, 0xD000000000000026, 0x80000001004BE520, 41);
          }
        }
      }

      else if (v31 | v30 ^ 0x8000000000000000)
      {
        v38 = v116;
        if (static DispatchTimeInterval.< infix(_:_:)(v115, v116))
        {
          v88 = v107;
          (*(v37 + 16))(v107, v38, v13);
          v89 = v1;
          v90 = v1;
          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v117 = v95;
            *v93 = 138412546;
            *(v93 + 4) = v90;
            *v94 = v89;
            *(v93 + 12) = 2080;
            v96 = v90;
            v97 = DispatchTimeInterval.description.getter();
            v99 = v98;
            (*(v114 + 8))(v88, v13);
            v100 = sub_100002320(v97, v99, &v117);

            *(v93 + 14) = v100;
            _os_log_impl(&_mh_execute_header, v91, v92, "%@ will be terminated because waiting after responding for %s", v93, 0x16u);
            sub_100016290(v94, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v95);

            v37 = v114;
          }

          else
          {

            (*(v37 + 8))(v88, v13);
          }

          v27 = v13;
          goto LABEL_34;
        }
      }

      else
      {
        v38 = v116;
        if (static DispatchTimeInterval.< infix(_:_:)(v115, v116))
        {
          v72 = v106;
          (*(v37 + 16))(v106, v38, v13);
          v73 = v1;
          v74 = v1;
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = v13;
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v117 = v80;
            *v78 = 138412546;
            *(v78 + 4) = v74;
            *v79 = v73;
            *(v78 + 12) = 2080;
            v81 = v74;
            v82 = DispatchTimeInterval.description.getter();
            v84 = v83;
            (*(v114 + 8))(v72, v77);
            v85 = sub_100002320(v82, v84, &v117);

            *(v78 + 14) = v85;
            _os_log_impl(&_mh_execute_header, v75, v76, "%@ will be terminated because waiting after request received for %s", v78, 0x16u);
            sub_100016290(v79, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v80);

            v27 = v77;
            v37 = v114;
          }

          else
          {

            (*(v37 + 8))(v72, v13);
          }

LABEL_34:
          sub_1002C1BE0();
LABEL_35:
          v38 = v116;
        }
      }
    }
  }

  else
  {
    v55 = v109;
    v56 = v113;
    *v113 = 15;
    v29(v56, v28, v27);
    v38 = v116;
    v57 = static DispatchTimeInterval.< infix(_:_:)(v56, v116);
    v37 = v114;
    v58 = *(v114 + 8);
    (v58)(v56, v27);
    if (v57)
    {
      v113 = v58;
      v59 = v55;
      (*(v37 + 16))(v55, v38, v27);
      v60 = v1;
      v61 = v1;
      v62 = Logger.logObject.getter();
      v63 = v27;
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v62, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v111 = v66;
        v112 = swift_slowAlloc();
        v117 = v112;
        *v65 = 138412802;
        *(v65 + 4) = v61;
        *v66 = v60;
        *(v65 + 12) = 2080;
        v67 = v61;
        v68 = DispatchTimeInterval.description.getter();
        v70 = v69;
        (v113)(v59, v63);
        v71 = sub_100002320(v68, v70, &v117);

        *(v65 + 14) = v71;
        *(v65 + 22) = 2048;
        *(v65 + 24) = v31;
        _os_log_impl(&_mh_execute_header, v62, v64, "%@ did not get the datapath response acknowledgement for %s, retry #%ld", v65, 0x20u);
        sub_100016290(v111, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v112);

        v37 = v114;
      }

      else
      {

        (v113)(v59, v63);
      }

      v27 = v63;
      sub_1002C161C();
      goto LABEL_35;
    }
  }

  v104 = *(v37 + 8);
  v104(v115, v27);
  return v104(v38, v27);
}

uint64_t sub_1002C9248(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v8 = *v7;
  *v6 = *v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v11 = qword_100594B08;
    swift_beginAccess();
    sub_1002CB474(a1, v1 + v11);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002C938C(uint64_t a1, unint64_t a2)
{
  v5 = v2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    *(v8 + 14) = sub_100002320(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ will terminate because of unsatisfiable policy: %s", v8, 0x16u);
    sub_100016290(v9, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v10);
  }

  sub_1002C1BE0();
}

double sub_1002C9500(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  ObjectType = swift_getObjectType();
  sub_10005DC58(&unk_100596870, &unk_1004B0F60);
  __chkstk_darwin();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v28 - v5;
  v7 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  *&result = __chkstk_darwin().n128_u64[0];
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_100594B38 + 8) >> 62 == 1)
  {
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    v16 = qword_100594B30;
    swift_beginAccess();
    (*(v12 + 40))(v2 + v16, v15, v11);
    swift_endAccess();
    v17 = v2 + qword_100594B08;
    swift_beginAccess();
    sub_100012400(v17 + 136, v31, &unk_1005974B0, &qword_1004AFCF0);
    v18 = v32;
    if (v32 == 255)
    {
      sub_100016290(v31, &unk_1005974B0, &qword_1004AFCF0);
    }

    else
    {
      sub_10020C758(v31);
      if ((v18 & 1) == 0)
      {
        v19 = v30 + *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);
        v20 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
        sub_100012400(v19 + *(v20 + 48), v6, &unk_100596870, &unk_1004B0F60);
        v21 = v8;
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {
          sub_100016290(v6, &unk_100596870, &unk_1004B0F60);
        }

        else
        {
          sub_1002CB4D0(v6, v10, type metadata accessor for NANInternetSharingStatistics.Requester);
          v22 = *(v2 + qword_100594B00);
          swift_unownedRetainStrong();
          v23 = v22 + *(*v22 + 760);
          swift_beginAccess();
          if (*(v23 + 8))
          {
            v24 = ObjectType;
            WitnessTable = swift_getWitnessTable(aQ_10, ObjectType);
            v26 = sub_10036DB68(v24, WitnessTable);
            sub_1002CB538(v10, v4, type metadata accessor for NANInternetSharingStatistics.Requester);
            (*(v21 + 56))(v4, 0, 1, v7);
            sub_100337D4C(v4, v26 & 0xFFFFFFFFFFFFFFLL);
          }

          swift_endAccess();

          swift_unownedRetainStrong();
          sub_1002CB5A0(v10, type metadata accessor for NANInternetSharingStatistics.Requester);
          v27 = v22 + *(*v22 + 760);
          swift_beginAccess();
          if (*(v27 + 8))
          {
            *v27 = 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1002C997C()
{
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v5 = &v17 - v4;
  v6 = *(v0 + qword_100594B38 + 8);
  if (v6 < 0 && (v7 = *(v0 + qword_100594B38), __PAIR128__(v6 & 0x7FFFFFFFFFFFFFFFLL, v7) >= 2))
  {
    if (!(v7 ^ 2 | v6 & 0x7FFFFFFFFFFFFFFFLL))
    {

      sub_1002C057C(1, 0xD000000000000030, 0x80000001004BE490, 34);
    }
  }

  else
  {
    v8 = *(v0 + qword_100594B00);
    swift_unownedRetainStrong();
    sub_10040CBA8();

    swift_unownedRetainStrong();
    v9 = *(*v8 + 96);
    swift_beginAccess();
    (*(v3 + 16))(v5, v8 + v9, AssociatedTypeWitness);

    v10 = (v1 + qword_100594B08);
    swift_beginAccess();
    v17 = *(v10 + 10);
    v11 = *(v10 + 4);
    v12 = *v10;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 240))(v12, v11 | (v17 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v3 + 8))(v5, AssociatedTypeWitness);
    sub_1002CA7EC(2, 0x8000000000000000);
    v14 = qword_100594B48;
    if (*(v1 + qword_100594B48) == 1)
    {
      sub_100012400((v10 + 136), v18, &unk_1005974B0, &qword_1004AFCF0);
      if (v19 == 255)
      {
        sub_100016290(v18, &unk_1005974B0, &qword_1004AFCF0);
      }

      else if (v19)
      {
        sub_100029954(v18, v20);
        v15 = v21;
        v16 = v22;
        sub_100029B34(v20, v21);
        (*(v16 + 16))(*(v10 + 1) | (*(v10 + 1) << 16), v15, v16);
        *(v1 + v14) = 0;
        sub_100002A00(v20);
      }

      else
      {
        sub_10020C758(v18);
      }
    }
  }
}

void sub_1002C9DA8(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_1002CAF78();
  v4 = (a2 + qword_100594B08);
  swift_beginAccess();
  v5 = WiFiAwarePublisherDataSessionHandle.init(_:)(*v4 | (v4[8] << 8) | (v4[9] << 16) | (*(v4 + 10) << 24));
  [v3 publishDataTerminatedForHandle:v5 reason:2];
}

id sub_1002C9E54(void *a1)
{
  v1 = a1;
  sub_1002C9EBC();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

unint64_t sub_1002C9EBC()
{
  _StringGuts.grow(_:)(28);

  v1 = v0 + qword_100594B08;
  swift_beginAccess();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203A6F543C205DLL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = WiFiAddress.description.getter(*(v1 + 8) | (*(v1 + 10) << 16));
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8254;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);

  v8 = NANServiceName.description.getter(v7, v6);
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  return 0xD000000000000016;
}

void sub_1002CA064(uint64_t a1)
{
  if (!qword_100596670[0])
  {
    type metadata accessor for DispatchTime();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, qword_100596670);
    }
  }
}

uint64_t sub_1002CA0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1002CA0F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1002CA114(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002CA170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1002CA1D0(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1002CA230()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002CA2BC;

  return sub_1002CA3B8();
}

uint64_t sub_1002CA2BC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1002CA3D8()
{
  v1 = v0[5];
  if (*&v1[qword_100594B38 + 8] >> 62 == 1)
  {
    v2 = *&v1[qword_100594B80];
    v0[6] = v2;
    if (v2)
    {

      return _swift_task_switch(sub_1002CA578, v2, 0);
    }
  }

  else
  {
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[5];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 16777472;
      v9 = qword_100594B08;
      swift_beginAccess();
      v8[4] = v7[v9];

      _os_log_impl(&_mh_execute_header, v4, v5, "Datapath Initiator ID: %hhu is not established yet.", v8, 5u);
    }

    else
    {
    }
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1002CA578()
{
  v1 = sub_10038B2F4();

  v2 = *(v0 + 8);

  return v2(v1);
}

char *sub_1002CA5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v6 = sub_1002CAE30(a1, a2, a3, a4, a5 | ((HIDWORD(a5) & 1) << 32), a6);

  return v6;
}

uint64_t sub_1002CA6BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = swift_getWitnessTable(&protocol conformance descriptor for NSObject);
  result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, a2);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1002CA71C(uint64_t a1)
{
  result = swift_getWitnessTable(byte_1004AEB88);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002CA75C()
{
  result = qword_100594CD0;
  if (!qword_100594CD0)
  {
    result = swift_getWitnessTable(")r\v", &type metadata for NANDatapath.ResponseConfiguration, v0, v1);
    atomic_store(result, &qword_100594CD0);
  }

  return result;
}

uint64_t sub_1002CA7B0(uint64_t a1)
{
  result = swift_getWitnessTable(aM_9);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002CA7EC(void *a1, unint64_t a2)
{
  v3 = (v2 + qword_100594B38);
  v4 = *(v2 + qword_100594B38);
  v5 = *(v2 + qword_100594B38 + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_1002CAEE4(a1, a2);
  sub_1002CAF2C(v4, v5);

  return sub_1002BE3EC();
}

char *sub_1002CA844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v55 = a6;
  v51 = a5;
  v53 = a3;
  v54 = a4;
  ObjectType = swift_getObjectType();
  v10 = *v6;
  v11 = swift_isaMask;
  v12 = type metadata accessor for Logger();
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin();
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v51 - v14;
  *(v6 + qword_100594B10) = 0;
  Logger.init(subsystem:category:)();
  *(v6 + qword_100594B18) = xmmword_100483C50;
  *(v6 + qword_100594B20) = 0;
  v16 = (v6 + qword_10059B820);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v6 + qword_10059B828);
  *v17 = 0;
  v17[1] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  variable initialization expression of AWDLPeer.lastUpdated();
  *(v6 + qword_100594B38) = xmmword_1004AE950;
  *(v6 + qword_100594B40) = 0;
  *(v6 + qword_100594B48) = 0;
  v18 = (v6 + qword_100594B58);
  *v18 = 0;
  v18[1] = 0;
  v19 = v6 + qword_100594B60;
  *v19 = 0;
  v19[4] = 1;
  *(v6 + qword_100594B68) = 0;
  v20 = qword_10059B838;
  NANWiFiAwareStatistics.init()(&v61);
  memcpy(v6 + v20, &v61, 0x120uLL);
  *(v6 + qword_100594B70) = 0;
  *(v6 + qword_100594B78) = 0;
  *(v6 + qword_100594B80) = 0;
  *(v6 + qword_10059B840) = 1;
  v21 = qword_10059B848;
  v22 = type metadata accessor for DispatchTime();
  (*(*(v22 - 8) + 56))(&v7[v21], 1, 1, v22);
  v7[qword_10059B850] = 0;
  *&v7[qword_100594B00] = a1;
  v57 = a2;
  sub_1002CB130(a2, &v7[qword_100594B08]);
  type metadata accessor for LowLatencyInternetRequesterPolicy(0, *((v11 & v10) + 0x50), *((v11 & v10) + 0x58), v23);
  swift_unownedRetain();

  v25 = sub_100408C58(v24);

  *&v7[qword_100594B50] = v25;
  v60.receiver = v7;
  v60.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v60, "init");
  v27 = &v26[qword_100594B58];
  v28 = v54;
  *v27 = v53;
  v27[1] = v28;
  v29 = v26;

  v30 = &v29[qword_100594B60];
  v31 = BYTE4(v51);
  *v30 = v51;
  v30[4] = v31 & 1;
  v29[qword_100594B68] = v55;
  v32 = qword_10059B818;
  v33 = *(v58 + 16);
  v33(v15, &v29[qword_10059B818], v59);
  v34 = v15;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v29;
    *v38 = v29;
    v39 = v29;
    _os_log_impl(&_mh_execute_header, v35, v36, "Created %@", v37, 0xCu);
    sub_100016290(v38, &qword_10058B780, &qword_100480AC0);
  }

  v40 = v59;
  v41 = *(v58 + 8);
  v41(v34, v59);
  v42 = &v29[v32];
  v43 = v56;
  v33(v56, v42, v40);
  v44 = v29;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v44;
    *v48 = v44;
    v49 = v44;
    _os_log_impl(&_mh_execute_header, v45, v46, "%@ was started", v47, 0xCu);
    sub_100016290(v48, &qword_10058B780, &qword_100480AC0);
  }

  sub_1002CB18C(v57);
  v41(v43, v59);
  return v44;
}

void *sub_1002CAEE4(void *result, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
    v3 = result;
  }

  return result;
}

void sub_1002CAF2C(void *a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }
}

unint64_t sub_1002CAF78()
{
  result = qword_100595C90;
  if (!qword_100595C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100595C90);
  }

  return result;
}

unint64_t sub_1002CAFC4()
{
  result = qword_100596860;
  if (!qword_100596860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WiFiAddress, &type metadata for WiFiAddress, v0, v1);
    atomic_store(result, &qword_100596860);
  }

  return result;
}

double sub_1002CB018(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

void sub_1002CB1EC(void **a1)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 23))
  {
    v2 = 0;
  }

  sub_1002C8128(a1, *(v1 + 16) | (*(v1 + 20) << 32) | (*(v1 + 21) << 40) | (*(v1 + 22) << 48) | v2, *(v1 + 24) | (*(v1 + 28) << 32) | (*(v1 + 29) << 40), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_1002CB258(uint64_t a1)
{
  type metadata accessor for UUID();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1002CB380;

  return sub_1002C79D8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002CB380()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002CB4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002CB538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002CB5A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1002CB600(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1002CE600;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100573810;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  static DispatchQoS.unspecified.getter();
  v16[1] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);

  return result;
}

double sub_1002CB884(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin();
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = v21;
  aBlock[4] = sub_1002CE5E0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005737C0;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v22);

  return result;
}

double sub_1002CBB20(const void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  memcpy((v9 + 16), a1, 0x120uLL);
  sub_1002CB02C(a1, v18);
  v10 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v1;
  v18[4] = sub_1002CE5D8;
  v18[5] = v11;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10000C8B8;
  v18[3] = &unk_100573770;
  v12 = _Block_copy(v18);
  v13 = v10;

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v5, v3);
  (*(v6 + 8))(v8, v15);

  return result;
}

void sub_1002CBDF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = AWDLTrafficRegistrationServiceRemoteCamera;

  LOBYTE(v5) = sub_1004479A4(v5, v4);

  swift_beginAccess();
  *(a1 + 85) = v5 & 1;
  v6 = *(a2 + 56);
  v7 = AWDLTrafficRegistrationServiceRemoteScreen;

  LOBYTE(v7) = sub_1004479A4(v7, v6);

  swift_beginAccess();
  *(a1 + 86) = v7 & 1;
  v8 = *(a2 + 56);
  v9 = AWDLTrafficRegistrationServiceTVRemoteCamera;

  LOBYTE(v9) = sub_1004479A4(v9, v8);

  swift_beginAccess();
  *(a1 + 87) = v9 & 1;
  v10 = *(a2 + 56);
  v11 = AWDLTrafficRegistrationServiceUniversalControl;

  LOBYTE(v11) = sub_1004479A4(v11, v10);

  swift_beginAccess();
  *(a1 + 88) = v11 & 1;
  v12 = *(a2 + 56);
  v13 = AWDLTrafficRegistrationServiceSidecar;

  LOBYTE(v13) = sub_1004479A4(v13, v12);

  swift_beginAccess();
  *(a1 + 89) = v13 & 1;
  v14 = *(a2 + 56);
  v15 = AWDLTrafficRegistrationServiceAirPlay;

  LOBYTE(v15) = sub_1004479A4(v15, v14);

  swift_beginAccess();
  *(a1 + 90) = v15 & 1;
  LOBYTE(v14) = *(a2 + 17);
  swift_beginAccess();
  *(a1 + 144) = v14;
  v16 = *(a2 + 24);
  swift_beginAccess();
  *(a1 + 128) = v16;
  v17 = *(a2 + 32);
  swift_beginAccess();
  *(a1 + 136) = v17;
  v18 = *(a2 + 40);
  swift_beginAccess();
  *(a1 + 168) = v18;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
  }

  else
  {
    if (v16 + v17 > 1 || v18 >= 1)
    {
      swift_beginAccess();
      *(a1 + 123) = 1;
    }

    v19 = String._bridgeToObjectiveC()();
    IsEventUsed = AnalyticsIsEventUsed();

    if (IsEventUsed)
    {
      v21 = String._bridgeToObjectiveC()();
      swift_beginAccess();
      memcpy(__dst, (a1 + 16), sizeof(__dst));
      sub_1002CB02C(__dst, &v23);
      NANWiFiAwareStatistics.eventPayload.getter();
      sub_1002CB088(__dst);
      sub_1000840B4();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      AnalyticsSendEvent();
    }
  }
}

double sub_1002CC168(_OWORD *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v12 = swift_allocObject();
  v13 = a1[3];
  *(v12 + 48) = a1[2];
  *(v12 + 64) = v13;
  *(v12 + 80) = a1[4];
  v14 = a1[1];
  *(v12 + 16) = *a1;
  *(v12 + 32) = v14;
  *(v12 + 96) = v1;
  aBlock[4] = sub_1002CE520;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005736F8;
  v15 = _Block_copy(aBlock);
  v16 = v11;
  sub_1002CE52C(a1, v18);

  static DispatchQoS.unspecified.getter();
  v18[0] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);

  return result;
}

void sub_1002CC40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60[0] = *a1;
  sub_1002CE52C(a1, &v63);
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10005E2E4();
  v8 = StringProtocol.trimmingCharacters(in:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_1002CB0DC(a1);
  swift_beginAccess();
  v11 = *(a2 + 48);
  v12 = *(v11 + 16);
  v50 = v8;
  v52 = v10;
  if (v12 && (v13 = sub_1000102E8(v8, v10), (v14 & 1) != 0))
  {
    v15 = *(v11 + 56) + 80 * v13;
    v17 = *(v15 + 48);
    v16 = *(v15 + 64);
    v18 = *(v15 + 16);
    v65 = *(v15 + 32);
    v66 = v17;
    v64 = v18;
    v63 = *v15;
    v67 = v16;
    v55 = HIWORD(v18);
    v56 = WORD6(v18);
    v57 = WORD5(v18);
    v58 = WORD4(v18);
    v19 = WORD3(v18);
    v20 = *(&v17 + 1);
    v59 = v17;
    v21 = WORD2(v18);
    v22 = WORD1(v18);
    v24 = *(&v65 + 1);
    v23 = v65;
    v25 = v18;
    v26 = *(&v63 + 1);
    v51 = v63;
    v53 = v16;
    v27 = *(v15 + 65);
    *&v62[3] = *(v15 + 68);
    *v62 = v27;
    v54 = *(&v16 + 1);
    sub_1002CE52C(&v63, v60);
  }

  else
  {

    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v20 = 0;
    v19 = 0;
    v59 = 0;
    v21 = 0;
    v24 = 0;
    v28 = v10;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v51 = v8;
    v26 = v28;
  }

  swift_endAccess();
  LODWORD(v29) = *(a1 + 64);
  if (v29 <= 2)
  {
    if (!*(a1 + 64))
    {
      goto LABEL_33;
    }

    v30 = v20;
    if (v29 != 1)
    {
LABEL_23:
      ++v22;
      v20 = v59;
      if ((v22 & 0x10000) == 0)
      {
        v35 = *(a1 + 72);
        v31 = __CFADD__(v24, v35);
        v24 += v35;
        if (!v31)
        {
          goto LABEL_25;
        }

LABEL_43:
        __break(1u);
        return;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    ++v25;
    v20 = v59;
    if ((v25 & 0x10000) != 0)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v29 = *(a1 + 72);
    v31 = __CFADD__(v23, v29);
    v23 += v29;
    if (!v31)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  if (v29 != 3)
  {
    v32 = v20;
    if (v29 != 4)
    {
      goto LABEL_33;
    }

    ++v19;
    v20 = v59;
    if ((v19 & 0x10000) == 0)
    {
      v33 = *(a1 + 72);
      v31 = __CFADD__(v32, v33);
      v30 = v32 + v33;
      if (!v31)
      {
        goto LABEL_25;
      }

      __break(1u);
LABEL_33:
      *&v63 = v51;
      *(&v63 + 1) = v26;
      LOWORD(v64) = v25;
      WORD1(v64) = v22;
      WORD2(v64) = v21;
      WORD3(v64) = v19;
      WORD4(v64) = v58;
      WORD5(v64) = v57;
      WORD6(v64) = v56;
      HIWORD(v64) = v55;
      *&v65 = v23;
      *(&v65 + 1) = v24;
      *&v66 = v59;
      *(&v66 + 1) = v20;
      LOBYTE(v67) = v53;
      *(&v67 + 1) = *v62;
      DWORD1(v67) = *&v62[3];
      *(&v67 + 1) = v54;
      sub_1002CB0DC(&v63);

      return;
    }

    goto LABEL_41;
  }

  if ((++v21 & 0x10000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v30 = v20;
  v34 = *(a1 + 72);
  v20 = v59 + v34;
  if (__CFADD__(v59, v34))
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  v36 = v58 + *(a1 + 24);
  if ((v36 & 0x10000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v37 = v57 + *(a1 + 26);
  if ((v37 & 0x10000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v38 = v56 + *(a1 + 28);
  if ((v38 & 0x10000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = v55 + *(a1 + 30);
  if ((v39 & 0x10000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *&v63 = v51;
  *(&v63 + 1) = v26;
  LOWORD(v64) = v25;
  WORD1(v64) = v22;
  WORD2(v64) = v21;
  WORD3(v64) = v19;
  WORD4(v64) = v36;
  WORD5(v64) = v37;
  WORD6(v64) = v38;
  HIWORD(v64) = v39;
  *&v65 = v23;
  *(&v65 + 1) = v24;
  *&v66 = v20;
  *(&v66 + 1) = v30;
  LOBYTE(v67) = v53;
  *(&v67 + 1) = *v62;
  DWORD1(v67) = *&v62[3];
  *(&v67 + 1) = v54;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(a2 + 48);
  *(a2 + 48) = 0x8000000000000000;
  sub_1003E1820(&v63, v50, v52, isUniquelyReferenced_nonNull_native);

  *(a2 + 48) = v61;
  swift_endAccess();
  if (qword_1005943E0 != -1)
  {
LABEL_38:
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100037644(v41, qword_10059B950);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v60[0] = v45;
    *v44 = 136315138;

    v46 = Dictionary.description.getter();
    v48 = v47;

    v49 = sub_100002320(v46, v48, v60);

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "Praveen : updateAppSessionInformation : %s", v44, 0xCu);
    sub_100002A00(v45);
  }
}

void sub_1002CCB08(uint64_t a1)
{
  swift_beginAccess();
  v10 = *(a1 + 48);
  v11 = *(v10 + 16);
  if (!v11)
  {
    if (qword_1005943E0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100037644(v24, qword_10059B950);
    isa = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(isa, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, isa, v26, "Praveen : No app usage data available. Skipping system statistics submission.", v27, 2u);
    }

    goto LABEL_30;
  }

  if (v11 >> 16)
  {
    goto LABEL_41;
  }

  LOWORD(v1) = 0;
  v8 = 0;
  LOWORD(v7) = 0;
  LOWORD(v4) = 0;
  LOWORD(v2) = 0;
  v3 = 0;
  LOWORD(v6) = 0;
  LOWORD(v5) = 0;
  v12 = 0;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  if (v15)
  {
    while (1)
    {
      v16 = v12;
LABEL_10:
      v17 = (*(v10 + 56) + 80 * (__clz(__rbit64(v15)) | (v16 << 6)));
      v5 = v17[8] + v5;
      if ((v5 & 0x10000) != 0)
      {
        break;
      }

      v6 = v17[9] + v6;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_34;
      }

      v3 = v17[10] + v3;
      if ((v3 & 0x10000) != 0)
      {
        goto LABEL_35;
      }

      v2 = v17[11] + v2;
      if ((v2 & 0x10000) != 0)
      {
        goto LABEL_36;
      }

      v4 = v17[12] + v4;
      if ((v4 & 0x10000) != 0)
      {
        goto LABEL_37;
      }

      v7 = v17[13] + v7;
      if ((v7 & 0x10000) != 0)
      {
        goto LABEL_38;
      }

      v8 = v17[14] + v8;
      if ((v8 & 0x10000) != 0)
      {
        goto LABEL_39;
      }

      v1 = v17[15] + v1;
      if ((v1 & 0x10000) != 0)
      {
        goto LABEL_40;
      }

      v15 &= v15 - 1;
      v12 = v16;
      if (!v15)
      {
        goto LABEL_7;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
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
    swift_once();
    goto LABEL_21;
  }

  while (1)
  {
LABEL_7:
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v16 >= ((v13 + 63) >> 6))
    {
      break;
    }

    v15 = *(v10 + 64 + 8 * v16);
    ++v12;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  v35 = *(v10 + 16);
  if (qword_1005943E0 != -1)
  {
    goto LABEL_42;
  }

LABEL_21:
  v18 = type metadata accessor for Logger();
  sub_100037644(v18, qword_10059B950);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  v34 = v20;
  log = v19;
  if (os_log_type_enabled(v19, v20))
  {
    buf = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *buf = 136315138;

    v33 = Dictionary.description.getter();
    v22 = v21;

    v23 = sub_100002320(v33, v22, &v37);

    *(buf + 4) = v23;
    _os_log_impl(&_mh_execute_header, log, v34, "Praveen : submitSystemStatistics : %s", buf, 0xCu);
    sub_100002A00(v31);
  }

  else
  {
  }

  v28 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v30 = String._bridgeToObjectiveC()();
    NANWiFiAwareSystemStatistics.eventPayload.getter((v6 << 32) | (v5 << 16) | (v3 << 48) | v35, v2 | (v4 << 16) | (v7 << 32) | (v8 << 48), v1);
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();

LABEL_30:
  }
}

double sub_1002CCFCC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  aBlock[4] = a1;
  v19 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);
  v15 = v13;

  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);

  return result;
}

void sub_1002CD220(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 48);
  if (*(v2 + 16))
  {
    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    while (v5)
    {
LABEL_10:
      v5 &= v5 - 1;
      v9 = String._bridgeToObjectiveC()();
      IsEventUsed = AnalyticsIsEventUsed();

      if (IsEventUsed)
      {
        v11 = String._bridgeToObjectiveC()();
        NANWiFiAwareAppStatistics.eventPayload.getter();
        sub_1000840B4();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        AnalyticsSendEvent();
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        *(a1 + 48) = &_swiftEmptyDictionarySingleton;

        return;
      }

      v5 = *(v2 + 64 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_1005943E0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100037644(v13, qword_10059B950);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Praveen : No app usage data available. Skipping system statistics submission.", v16, 2u);
  }
}

double sub_1002CD498(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = type metadata accessor for DispatchQoS();
  v7 = *(v17[0] - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  v10 = swift_allocBox();
  sub_1002CE448(a1, v11);
  v12 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v1;
  aBlock[4] = sub_1002CE4AC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100573658;
  v14 = _Block_copy(aBlock);
  v15 = v12;

  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v17[0]);

  return result;
}

void sub_1002CD744(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = swift_projectBox();
  LOBYTE(a2) = *(a2 + 16);
  swift_beginAccess();
  *(v5 + *(type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0) + 132)) = a2;
  v6 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v8 = String._bridgeToObjectiveC()();
    swift_beginAccess();
    sub_1002CE448(v5, v4);
    AWDLStatistics.LowLatencyStatistics.eventPayload.getter();
    sub_1002CE4B4(v4);
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

double sub_1002CD8AC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = type metadata accessor for DispatchQoS();
  v6 = *(v15[0] - 8);
  __chkstk_darwin();
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1002CE440;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100573608;
  v12 = _Block_copy(aBlock);
  v13 = v9;

  static DispatchQoS.unspecified.getter();
  v15[1] = _swiftEmptyArrayStorage;
  sub_10001CF14();
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15[0]);

  return result;
}

uint64_t sub_1002CDB68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

uint64_t sub_1002CDBE0()
{

  return swift_deallocClassInstance();
}

void sub_1002CDC8C()
{
  v0 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v2 = String._bridgeToObjectiveC()();
    NANCoreAnalyticsMetrics.eventPayload.getter();
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CDE38(uint64_t a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v6 = String._bridgeToObjectiveC()();
    AWDLStatistics.ServiceRejection.eventPayload.getter(a1, a2);
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CDF34(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v8 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v10 = String._bridgeToObjectiveC()();
    AWDLStatistics.TrafficRegistrationStart.eventPayload.getter(a1, a2 & 0xFFFFFFFFFFFFLL, a3 & 0x101FFFFFFFFFFFFLL, a4);
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CE050()
{
  v0 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v2 = String._bridgeToObjectiveC()();
    AWDLStatistics.TrafficRegistrationStop.eventPayload.getter();
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CE134(uint64_t a1, char a2)
{
  v4 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v6 = String._bridgeToObjectiveC()();
    AWDLStatistics.Failure.eventPayload.getter(a1, a2);
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CE254()
{
  v0 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v2 = String._bridgeToObjectiveC()();
    AWDLStatistics.AirPlayStatistics.eventPayload.getter();
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

void sub_1002CE338()
{
  v0 = String._bridgeToObjectiveC()();
  IsEventUsed = AnalyticsIsEventUsed();

  if (IsEventUsed)
  {
    v2 = String._bridgeToObjectiveC()();
    AWDLStatistics.RtgStatistics.eventPayload.getter();
    sub_1000840B4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }
}

uint64_t sub_1002CE448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CE4B4(uint64_t a1)
{
  v2 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002CE588(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

__n128 sub_1002CE5E0()
{
  v1 = v0[1].n128_u64[0];
  v2 = v0[3].n128_u64[0];
  result = v0[2];
  *(v1 + 17) = v0[1].n128_u8[8];
  *(v1 + 24) = result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1002CE648(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_1002CE718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C0464(0, v1, 0);
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v6 = *(a1 + 36);
    v23 = v1;
    v24 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v25 = v5;
      v9 = *(*(a1 + 48) + 8 * v4);

      v10 = [v9 uniqueIdentifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000C0464((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v26;
      v15[5] = v12;
      v7 = 1 << *(a1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v8);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v24;
      if (v24 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (a1 + 72 + 8 * v8);
        while (v19 < (v7 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_10002BEB8(v4, v24, 0);
            v7 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_10002BEB8(v4, v24, 0);
      }

LABEL_4:
      v5 = v25 + 1;
      v4 = v7;
      if (v25 + 1 == v23)
      {
        return;
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
  }
}

void *sub_1002CE998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000C0464(0, v1, 0);
  v24 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v4 = result;
  v5 = 0;
  v23 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_1000C0464((v11 > 1), v12 + 1, 1);
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = result;
    v13[5] = v10;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v7 = v23;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v6 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_10002BEB8(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_10002BEB8(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
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
  return result;
}

void sub_1002CEBBC(uint64_t a1, void (*a2)(id *), uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    swift_getErrorValue();
    v9 = Error.apiError.getter(v8);
    a2(&v9);
    return;
  }

  v12 = a1;
  swift_errorRetain();
  sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  if (swift_dynamicCast())
  {
    if (v11 == 1)
    {
      v6 = [objc_opt_self() convertError:v9];
      goto LABEL_11;
    }

    sub_1000B2594(v9, v10, v11);
  }

  v12 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (!v11)
    {
      v6 = [objc_allocWithZone(NSError) initWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
      goto LABEL_11;
    }

    sub_1000B2594(v9, v10, v11);
  }

  v6 = _convertErrorToNSError(_:)();
LABEL_11:
  v7 = v6;
  v9 = v6;
  a2(&v9);
}

Swift::Int sub_1002CED9C(uint64_t a1)
{
  Hasher.init(_seed:)();
  AWDLPeer.Reachability.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_1002CEDEC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + a2);
    v9 = type metadata accessor for NANPeer.Service(0);
    sub_1002DF9C0(v7 + *(*(v9 - 8) + 72) * a2, v6, type metadata accessor for NANPeer.Service);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002CEEA4(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a6 + 36) == a4)
  {
    v8 = *(a6 + 56);
    v9 = *(a6 + 48) - a3 + 8 * a3;
    v10 = *(v9 + 4);
    v11 = *(v9 + 6);
    *result = *v9;
    *(result + 4) = v10;
    *(result + 6) = v11;
    v12 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    return sub_1002DF9C0(v8 + *(*(v12 - 8) + 72) * a3, a2, type metadata accessor for NANPeer.Service.AuthenticationStatus);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1002CEF74(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v62 = a2;
  v7 = type metadata accessor for Logger();
  v63 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 8);
  v11 = *v4;
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v64 = *(v4 + 16);
  v65 = v13;
  LODWORD(v66) = *(v4 + 40);
  v14 = v12 >> 62;
  v15 = a1;
  if ((v12 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v61 = v15;

      return;
    }

    v67 = v10;
    v68 = v11;
    v33 = v15;
    sub_1002DDEBC(&v68, v33);
    v18 = v68;
    v35 = v68[2];
    if (v34 <= v35)
    {
      v36 = v34;
      if ((v34 & 0x8000000000000000) == 0)
      {
        v37 = v34;
        if (!__OFADD__(v35, v34 - v35))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v37 > v18[3] >> 1)
          {
            if (v35 <= v37)
            {
              v39 = v37;
            }

            else
            {
              v39 = v35;
            }

            v18 = sub_1003A72D4(isUniquelyReferenced_nonNull_native, v39, 1, v18);
            v68 = v18;
          }

          sub_10033302C(v36, v35, 0);
          v40 = v33;
          sub_1002DDEBC(&v67, v40);
          v26 = v67;
          v42 = v67[2];
          if (v41 <= v42)
          {
            v43 = v41;
            if ((v41 & 0x8000000000000000) == 0)
            {
              v44 = v41;
              if (!__OFADD__(v42, v41 - v42))
              {
                v45 = swift_isUniquelyReferenced_nonNull_native();
                if (!v45 || v44 > v26[3] >> 1)
                {
                  if (v42 <= v44)
                  {
                    v46 = v44;
                  }

                  else
                  {
                    v46 = v42;
                  }

                  v26 = sub_1003A72D4(v45, v46, 1, v26);
                  v67 = v26;
                }

                sub_10033302C(v43, v42, 0);

                v32 = v12 | 0x8000000000000000;
                goto LABEL_42;
              }

              goto LABEL_63;
            }

            goto LABEL_61;
          }

          goto LABEL_59;
        }

        goto LABEL_57;
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (!v14)
  {
    v67 = v10;
    v68 = v11;
    v16 = v15;
    sub_1002DDEBC(&v68, v16);
    v18 = v68;
    v19 = v68[2];
    if (v17 <= v19)
    {
      v20 = v17;
      if ((v17 & 0x8000000000000000) == 0)
      {
        v21 = v17;
        if (!__OFADD__(v19, v17 - v19))
        {
          v22 = swift_isUniquelyReferenced_nonNull_native();
          if (!v22 || v21 > v18[3] >> 1)
          {
            if (v19 <= v21)
            {
              v23 = v21;
            }

            else
            {
              v23 = v19;
            }

            v18 = sub_1003A72D4(v22, v23, 1, v18);
            v68 = v18;
          }

          sub_10033302C(v20, v19, 0);
          v24 = v16;
          sub_1002DDEBC(&v67, v24);
          v26 = v67;
          v27 = v67[2];
          if (v25 <= v27)
          {
            v28 = v25;
            if ((v25 & 0x8000000000000000) == 0)
            {
              v29 = v25;
              if (!__OFADD__(v27, v25 - v27))
              {
                v30 = swift_isUniquelyReferenced_nonNull_native();
                if (!v30 || v29 > v26[3] >> 1)
                {
                  if (v27 <= v29)
                  {
                    v31 = v29;
                  }

                  else
                  {
                    v31 = v27;
                  }

                  v26 = sub_1003A72D4(v30, v31, 1, v26);
                  v67 = v26;
                }

                sub_10033302C(v28, v27, 0);

                v32 = v12;
LABEL_42:
                *v4 = v18;
                *(v4 + 8) = v26;
                *(v4 + 16) = v64;
                *(v4 + 24) = v32;
                *(v4 + 32) = v65;
                *(v4 + 40) = v66;
                return;
              }

              goto LABEL_62;
            }

            goto LABEL_60;
          }

          goto LABEL_58;
        }

        goto LABEL_56;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  v68 = v11;
  v47 = v15;
  v48 = sub_10042097C(v47);
  if ((v49 & 1) == 0)
  {
    v50 = v48;
    Logger.init(subsystem:category:)();
    v51 = v47;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v65 = v50;
      v55 = v54;
      v56 = swift_slowAlloc();
      LODWORD(v64) = v53;
      v57 = v56;
      v66 = swift_slowAlloc();
      v67 = v66;
      *v55 = 138412802;
      *(v55 + 4) = v51;
      *v57 = v51;
      *(v55 + 12) = 2080;
      v58 = v51;
      *(v55 + 14) = sub_100002320(v62, a3, &v67);
      *(v55 + 22) = 2048;
      *(v55 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v52, v64, "%@ invalidated with %s active count: %ld", v55, 0x20u);
      sub_10000BB28(v57);

      sub_100002A00(v66);
    }

    (*(v63 + 8))(v9, v7);
  }

  v59 = v68;
  v60 = v68[2];

  if (v60)
  {
    *v4 = v59;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = xmmword_1004AECA0;
    *(v4 + 40) = 0;
  }

  else
  {

    *v4 = _swiftEmptyArrayStorage;
    *(v4 + 8) = _swiftEmptyArrayStorage;
    *(v4 + 16) = xmmword_1004AECB0;
    *(v4 + 32) = 0;
    *(v4 + 40) = -1;
  }
}

void sub_1002CF55C()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v3)
    {
      sub_10000BCEC(*v0, *(v0 + 8), *(v0 + 16), v2, *(v0 + 32), *(v0 + 40));
      v25 = 0;
      v26 = 0;
      v27 = -1;
      v14 = 0x80000000000000FFLL;
      v28 = _swiftEmptyArrayStorage;
      goto LABEL_16;
    }

    v29 = *(v0 + 24);
    v31 = *(v0 + 8);
    v32 = *(v0 + 40);
    v33 = *(v0 + 32);
    v34 = *(v0 + 16);
    v4 = *(v1 + 16);

    if (v4)
    {
      v5 = 0;
      v6 = (v1 + 56);
      while (v5 < *(v1 + 16))
      {
        ++v5;
        v7 = *v6;
        v8 = *(v6 - 2);
        v9 = *(v6 - 1);
        v10 = *(v6 - 3);
        sub_10000B02C();
        v11 = swift_allocError();
        *v12 = xmmword_10049C490;
        *(v12 + 16) = 1;
        v13 = v10;
        sub_10000C060(v8, v9);
        sub_1002CEBBC(v11, v8, v9, v7);

        sub_100010500(v8, v9);
        v6 += 32;
        if (v4 == v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

LABEL_7:
    swift_bridgeObjectRelease_n();
    v14 = v29;
LABEL_14:
    v26 = v33;
    v25 = v34;
    v27 = v32;
    v28 = v31;
LABEL_16:
    *v0 = _swiftEmptyArrayStorage;
    *(v0 + 8) = v28;
    *(v0 + 16) = v25;
    *(v0 + 24) = v14;
    *(v0 + 32) = v26;
    *(v0 + 40) = v27;
    return;
  }

  if (v3 == 2)
  {
    v30 = *(v0 + 24);
    v31 = *(v0 + 8);
    v32 = *(v0 + 40);
    v33 = *(v0 + 32);
    v34 = *(v0 + 16);
    v15 = *(v1 + 16);

    if (v15)
    {
      v16 = 0;
      v17 = (v1 + 56);
      while (v16 < *(v1 + 16))
      {
        ++v16;
        v18 = *v17;
        v20 = *(v17 - 2);
        v19 = *(v17 - 1);
        v21 = *(v17 - 3);
        sub_10000B02C();
        v22 = swift_allocError();
        *v23 = xmmword_10049C490;
        *(v23 + 16) = 1;
        v24 = v21;
        sub_10000C060(v20, v19);
        sub_1002CEBBC(v22, v20, v19, v18);

        sub_100010500(v20, v19);
        v17 += 32;
        if (v15 == v16)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_19;
    }

LABEL_13:
    swift_bridgeObjectRelease_n();
    v14 = v30 | 0x8000000000000000;
    goto LABEL_14;
  }
}

unint64_t sub_1002CF7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a7;
  _s16P2PActivityStateOMa(0, v12);
  return sub_10000ECAC(v7, v8, v9, v10);
}

uint64_t sub_1002CF878@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *(a2 + 24);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v15 = _s16P2PActivityStateOMa(0, v17);
  result = a9(v11, v12, v13, v14, v15);
  if (v10)
  {
    if (v10 == 1)
    {
      if (result < 2u)
      {
        result = 1;
        goto LABEL_8;
      }
    }

    else if (result != 1)
    {
      result = 2;
      goto LABEL_8;
    }

    result = 0;
  }

LABEL_8:
  *a8 = result;
  return result;
}

uint64_t sub_1002CF94C()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v7 = *v6;
  *v5 = *v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    swift_beginAccess();
    __chkstk_darwin();
    v10 = v1[10];
    v11 = v1[11];
    *(&v16 - 6) = v10;
    *(&v16 - 5) = v11;
    v12 = v1[12];
    v13 = v1[13];
    *(&v16 - 4) = v12;
    *(&v16 - 3) = v13;
    v14 = v1[14];
    *(&v16 - 2) = v14;
    sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);

    v17[0] = v10;
    v17[1] = v11;
    v17[2] = v12;
    v17[3] = v13;
    v17[4] = v14;
    _s16P2PActivityStateOMa(0, v17);
    sub_10005DC58(&qword_100595328, &qword_1004AF228);
    sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
    v15 = Dictionary.compactMapValues<A>(_:)();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002CFBB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = String._bridgeToObjectiveC()();
    [v1 configureNotificationsWithBundleIdentifier:v2];
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_1002CFC5C(char a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v4 = v3;
  if ((a1 & 4) != 0)
  {
    v10 = *v4;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = *(v10 + 80);
    *(v12 + 24) = *(v10 + 88);
    *(v12 + 32) = *(v10 + 96);
    *(v12 + 48) = *(v10 + 112);
    *(v12 + 56) = v11;
    *(v12 + 64) = a2;
    v8 = (v12 + 72);
    v9 = sub_1002DFBC0;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v8 = (v7 + 24);
    v9 = sub_1002E01F4;
  }

  v13 = v9;
  *v8 = a3;

  return v13;
}

uint64_t sub_1002CFD84(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a5;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin();
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (v20)
  {
    v54 = a6;
    aBlock[0] = v20;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    sub_100018AB4(0, &unk_100595360, NSError_ptr);
    if (swift_dynamicCast())
    {
      v51 = a7;
      v52 = a8;
      v21 = v57;
      v22 = [v57 localizedFailureReason];
      if (v22)
      {
        v23 = v22;
        v53 = a2;
        v24 = [v21 localizedRecoverySuggestion];
        if (v24)
        {
          v25 = v24;
          swift_beginAccess();
          if (swift_weakLoadStrong() && (v49 = v16, v26 = swift_unknownObjectWeakLoadStrong(), , (v50 = v26) != 0))
          {
            v48 = v21;
            v27 = [v21 localizedDescription];
            if (!v27)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v27 = String._bridgeToObjectiveC()();
            }

            v28 = [objc_allocWithZone(UNMutableNotificationContent) init];
            [v28 setTitle:v27];

            [v28 setSubtitle:v23];
            [v28 setBody:v25];

            v29 = [objc_opt_self() defaultSound];
            [v28 setSound:v29];

            [v28 setShouldIgnoreDoNotDisturb:1];
            [v28 setShouldIgnoreDowntime:1];
            [v28 setShouldHideDate:1];
            [v28 setShouldHideTime:1];
            v30 = String._bridgeToObjectiveC()();
            v31 = [objc_opt_self() iconNamed:v30];

            [v28 setIcon:v31];
            UUID.init()();
            v32 = UUID.uuidString.getter();
            v34 = v33;
            (*(v49 + 8))(v19, v15);
            v35 = v28;
            v36 = String._bridgeToObjectiveC()();
            v37 = [objc_opt_self() requestWithIdentifier:v36 content:v35 trigger:0];

            swift_beginAccess();
            Strong = swift_weakLoadStrong();
            if (Strong && (v39 = *(Strong + qword_10059B880), , v39 == 1))
            {
              v40 = swift_allocObject();
              v41 = v54;
              v40[2] = v55;
              v40[3] = v41;
              v42 = v52;
              v40[4] = v51;
              v40[5] = v42;
              v43 = v53;
              v40[6] = a9;
              v40[7] = v43;
              v40[8] = v32;
              v40[9] = v34;
              aBlock[4] = sub_1002DFC44;
              aBlock[5] = v40;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1004484C8;
              aBlock[3] = &unk_1005743A8;
              v44 = _Block_copy(aBlock);

              [v50 addNotificationRequest:v37 completionHandler:v44];
              swift_unknownObjectRelease();

              _Block_release(v44);
            }

            else
            {

              swift_beginAccess();
              v45 = swift_weakLoadStrong();
              swift_unknownObjectRelease();

              if (v45)
              {
                *(v45 + qword_10059B880) = 1;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  return a3(v20, v17);
}

uint64_t sub_1002D031C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a7;
  v55 = a8;
  v52 = a5;
  v53 = a6;
  v57 = a2;
  v58 = a4;
  v56 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v10 - 8);
  __chkstk_darwin();
  v61 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin();
  v59 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchTime();
  v13 = *(v64 - 8);
  __chkstk_darwin();
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v46 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v46 - v22;
  Logger.init(subsystem:category:)();
  if (a1)
  {
    v24 = v18;
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to add notification request: %@", v27, 0xCu);
      sub_10000BB28(v28);
    }

    else
    {
    }

    v44 = v24;
  }

  else
  {
    v47 = a9;
    sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
    v48 = v10;
    v49 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v30 = *(v13 + 8);
    v50 = v13 + 8;
    v51 = v30;
    v30(v15, v64);
    (*(v19 + 16))(v21, v23, v18);
    v31 = (*(v19 + 80) + 56) & ~*(v19 + 80);
    v32 = (v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = v53;
    *(v33 + 2) = v52;
    *(v33 + 3) = v34;
    v35 = v55;
    *(v33 + 4) = v54;
    *(v33 + 5) = v35;
    *(v33 + 6) = v47;
    (*(v19 + 32))(&v33[v31], v21, v18);
    v36 = v56;
    *&v33[v32] = v57;
    v37 = &v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8];
    v38 = v58;
    *v37 = v36;
    v37[1] = v38;
    aBlock[4] = sub_1002DFC78;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_1005743F8;
    v39 = _Block_copy(aBlock);

    v40 = v59;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
    v41 = v61;
    v42 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v43 = v49;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v39);

    (*(v63 + 8))(v41, v42);
    (*(v60 + 8))(v40, v62);
    v51(v17, v64);
    v44 = v18;
  }

  return (*(v19 + 8))(v23, v44);
}

void sub_1002D099C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Removing notification request in 5 seconds...", v8, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_10005DC58(&qword_100595370, &qword_1004AF240);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100480F40;
      *(v10 + 32) = a3;
      *(v10 + 40) = a4;

      isa = Array._bridgeToObjectiveC()().super.isa;

      [Strong removeNotificationsWithIdentifiers:isa];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1002D0B08()
{
  v0 = swift_allocObject();
  sub_1002D0B40();
  return v0;
}

void *sub_1002D0B40()
{
  v1 = *v0;
  Logger.init(subsystem:category:)();
  *(v0 + qword_10059B860) = &_swiftEmptySetSingleton;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v2 = qword_10059B878;
  type metadata accessor for XPCSession(0);
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  v13 = v1[10];
  v3 = v13;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  _s22P2PActivityCoordinatorC25AirPlayActivityTranslatorVMa(0, &v13);
  sub_10000B48C(&unk_1005953A0, type metadata accessor for XPCSession, &protocol conformance descriptor for NSObject);
  *(v0 + v2) = Dictionary.init()();
  *(v0 + qword_10059B880) = 1;
  *(v0 + qword_10059B888) = 0;
  v8 = qword_100594E30;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  _s16P2PActivityStateOMa(0, &v13);
  sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
  *(v0 + v8) = Dictionary.init()();
  v9 = qword_100594E38;
  *(v0 + v9) = Dictionary.init()();
  v10 = v0 + qword_100594E40;
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 24) = xmmword_1004AECC0;
  v10[40] = 0;
  v11 = qword_100594E48;
  type metadata accessor for WiFiP2PSPITransactionType(0);
  sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType, byte_1004AE430);
  *(v0 + v11) = Dictionary.init()();
  return v0;
}

void sub_1002D0E10(char *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v111 = a4;
  v112 = a3;
  v113 = a1;
  v114 = a2;
  v5 = *v4;
  v6 = (*v4 + 88);
  v7 = *(*v4 + 96);
  v8 = *(*v4 + 80);
  v9 = (*v4 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v104 - v15;
  v110 = v4;
  v17 = *(v5 + 112);
  *&v18 = v8;
  *(&v18 + 1) = *v6;
  v19 = v114;
  *&v20 = v7;
  *(&v20 + 1) = *v9;
  v108 = v18;
  v109 = v20;
  v116 = v20;
  v115 = v18;
  v117 = v17;
  v21 = type metadata accessor for P2PController.Components(0, &v115);
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v104 - v23;
  type metadata accessor for DispatchPredicate();
  __chkstk_darwin();
  v28 = (&v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v19 <= 2)
  {
    if (v19 < 2)
    {
      v29 = v26;
      v30 = v25;
      v31 = v17;
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v32 = v113;
      v33 = *&v113[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v34 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
      v35 = *v34;
      v36 = static NSObject.== infix(_:_:)();

      if (v36)
      {
        v37 = *v34;
        *v28 = v37;
        (*(v29 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v30);
        v38 = v37;
        LOBYTE(v37) = _dispatchPreconditionTest(_:)();
        (*(v29 + 8))(v28, v30);
        if (v37)
        {
          v39 = v110;
          v115 = v108;
          v116 = v109;
          v117 = v31;
          if (v114)
          {
            v40 = _s25P2PTrafficPolicyResponderCMa(0, &v115);
            v41 = v32;

            v42 = objc_allocWithZone(v40);
            v43 = sub_1002DF3D4(v41, v39);
          }

          else
          {
            v99 = _s23P2PTransactionResponderCMa(0, &v115);
            v100 = v32;

            v101 = objc_allocWithZone(v99);
            v43 = sub_1002DF1E0(v100, v39);
          }

          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_28:
      v96 = 2;
LABEL_35:
      v112(v96);
      return;
    }

    v59 = v113;
    if (v19 == 2)
    {
      v60 = v26;
      v61 = v25;
      v62 = v17;
      sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
      v63 = *&v59[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
      v64 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
      v65 = *v64;
      v66 = static NSObject.== infix(_:_:)();

      if ((v66 & 1) == 0)
      {
        goto LABEL_28;
      }

      v67 = *v64;
      *v28 = v67;
      (*(v60 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v61);
      v68 = v67;
      LOBYTE(v67) = _dispatchPreconditionTest(_:)();
      (*(v60 + 8))(v28, v61);
      if ((v67 & 1) == 0)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v69 = sub_10000EC3C(sub_10000DFFC);
      if (v69)
      {
        v70 = v69;
        v115 = v108;
        v116 = v109;
        v117 = v62;
        v71 = type metadata accessor for P2PController(255, &v115);
        WitnessTable = swift_getWitnessTable(byte_1004B20C8, v71);
        type metadata accessor for AWDLBonjourOffload(0, v71, WitnessTable, v73);
        v74 = v59;
        v75 = sub_1003076B0(v70, v74);
LABEL_24:

        v112(0);

        return;
      }

      v102 = objc_allocWithZone(type metadata accessor for EmptyBonjourOffload(0));
      v98 = v59;
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (v19 == 3)
  {
    v76 = v14;
    v106 = v22;
    v107 = v26;
    v114 = v25;
    v105 = v17;
    sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
    v77 = *&v113[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
    v78 = OS_dispatch_queue.nan.unsafeMutableAddressor();
    v79 = *v78;
    v80 = static NSObject.== infix(_:_:)();

    if ((v80 & 1) == 0)
    {
      goto LABEL_28;
    }

    v81 = *v78;
    *v28 = *v78;
    v82 = v107;
    v83 = v114;
    (*(v107 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v114);
    v84 = v81;
    LOBYTE(v81) = _dispatchPreconditionTest(_:)();
    (*(v82 + 8))(v28, v83);
    if ((v81 & 1) == 0)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    Strong = swift_weakLoadStrong();
    v86 = v106;
    if (Strong)
    {
      (*(v106 + 16))(v24, Strong + *(*Strong + 136), v21);

      (*(v76 + 16))(v16, v24, v13);
      (*(v86 + 8))(v24, v21);
      v87 = Preferences.enableUserspaceP2POptions.getter(v13);
      (*(v76 + 8))(v16, v13);
      if ((*PreferenceDefaults.EnableUserspaceP2POptions.awdlToWiFiAwareMigration.unsafeMutableAddressor() & ~v87) == 0)
      {
        v88 = sub_10000EC3C(sub_10001BDD0);
        if (v88)
        {
          v89 = v88;
          v115 = v108;
          v116 = v109;
          v117 = v105;
          v90 = type metadata accessor for P2PController(255, &v115);
          v91 = swift_getWitnessTable(byte_1004B2090, v90);
          type metadata accessor for WiFiAwareBonjourOffload(0, v90, v91, v92);
          v74 = v113;
          v75 = sub_1003071A0(v89, v74);
          goto LABEL_24;
        }
      }
    }

    v97 = objc_allocWithZone(type metadata accessor for EmptyBonjourOffload(0));
    v98 = v113;
LABEL_33:
    v103 = v98;

LABEL_34:
    v96 = 0;
    goto LABEL_35;
  }

  v44 = v113;
  if (v19 != 4)
  {
LABEL_25:
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 134217984;
      *(v95 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v93, v94, "Unhandled XPC responder type: %lu", v95, 0xCu);
    }

    goto LABEL_28;
  }

  v45 = v26;
  v46 = v25;
  v47 = v17;
  sub_100018AB4(0, &qword_10058AC60, OS_dispatch_queue_ptr);
  v48 = *&v44[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue];
  v49 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v50 = *v49;
  v51 = static NSObject.== infix(_:_:)();

  if ((v51 & 1) == 0)
  {
    goto LABEL_28;
  }

  v52 = *v49;
  *v28 = v52;
  (*(v45 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v46);
  v53 = v52;
  LOBYTE(v52) = _dispatchPreconditionTest(_:)();
  (*(v45 + 8))(v28, v46);
  if (v52)
  {
    v115 = v108;
    v116 = v109;
    v117 = v47;
    v54 = _s16UIAgentResponderCMa(0, &v115);
    v55 = v44;
    v56 = objc_allocWithZone(v54);
    v57 = sub_1002DC9F8(v55);
    if (v57)
    {
      v58 = v57;
      v112(0);
      swift_unknownObjectRetain();
      swift_unknownObjectWeakAssign();
      sub_1002CFBB0();

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_28;
  }

LABEL_39:
  __break(1u);
}

void sub_1002D18E4(void *a1, unsigned int a2)
{
  v3 = v2;
  v6 = a2;
  v7 = *v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v60 = a2;
    v62 = v15;
    v63 = v13;
    v64 = v11;
    v65 = v12;
    v66 = v9;
    v67 = v8;
    v16 = swift_allocObject();
    sub_10000B02C();
    v17 = v7[10];
    v16[2] = v17;
    v18 = v7[11];
    v16[3] = v18;
    v19 = v7[12];
    v16[4] = v19;
    v20 = v7[13];
    v16[5] = v20;
    v21 = v7[14];
    v16[6] = v21;
    v59 = swift_allocError();
    *v22 = xmmword_100481800;
    *(v22 + 16) = 1;
    v23 = qword_100594E30;
    swift_beginAccess();
    v24 = swift_allocObject();
    *&v25 = v17;
    *(&v25 + 1) = v18;
    *&v26 = v19;
    *(&v26 + 1) = v20;
    v68 = v26;
    v69 = v25;
    *(v24 + 16) = v25;
    *(v24 + 32) = v26;
    *(v24 + 48) = v21;
    *(v24 + 56) = sub_10000EC8C;
    v61 = v16;
    *(v24 + 64) = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = *(v3 + v23);
    v28 = v74;
    *(v3 + v23) = 0x8000000000000000;
    v70 = a1;
    sub_1003E09E8(a1);
    v30 = v28[2];
    v31 = (v29 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      __break(1u);
    }

    else
    {
      v33 = v29;
      v34 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v76 = v68;
      aBlock = v69;
      v58 = v21;
      v77 = v21;
      v35 = _s16P2PActivityStateOMa(255, &aBlock);
      sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
      v57[1] = v34;
      type metadata accessor for _NativeDictionary();
      v36 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v32);
      v37 = v74;
      if (!v36 || (sub_1003E09E8(v70), (v33 & 1) == (v38 & 1)))
      {
        *(v3 + v23) = v37;
        if ((v33 & 1) == 0)
        {
          (*(v24 + 56))(&aBlock);
          v74 = v70;
          v39 = v70;
          _NativeDictionary._insert(at:key:value:)();
        }

        v40 = v60;
        v41 = sub_10000FEC8(v60, v59, 1, v35);
        swift_endAccess();

        v42 = v70;
        sub_1002D18E4(v70, v41);
        v43 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
        v44 = swift_allocObject();
        swift_weakInit();
        v45 = swift_allocObject();
        v46 = v68;
        *(v45 + 16) = v69;
        *(v45 + 32) = v46;
        *(v45 + 48) = v58;
        *(v45 + 56) = v44;
        *(v45 + 64) = v40;
        *(v45 + 72) = v42;
        v77 = sub_1002DF79C;
        v78 = v45;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v76 = sub_10000C8B8;
        *(&v76 + 1) = &unk_1005740B0;
        v47 = _Block_copy(&aBlock);
        v48 = v42;
        v49 = v43;

        v50 = v62;
        static DispatchQoS.unspecified.getter();
        *&v71[0] = _swiftEmptyArrayStorage;
        sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
        v51 = v64;
        v52 = v67;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v47);

        (*(v66 + 8))(v51, v52);
        (*(v63 + 8))(v50, v65);

        return;
      }
    }

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v53 = qword_100594E30;
  swift_beginAccess();
  if (*(*(v3 + v53) + 16))
  {

    sub_1003E09E8(a1);
    if (v54)
    {

      sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v55 = v7[14];

      v56 = *(v7 + 6);
      v71[0] = *(v7 + 5);
      v71[1] = v56;
      v72 = v55;
      _s16P2PActivityStateOMa(0, v71);
      sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
      Dictionary.subscript.getter();

      if (*(&v76 + 1) >> 62 != 3 || v78 || *(&v76 + 1) != 0xC000000000000000 || *(&aBlock + 1) | aBlock | v76 | v77)
      {
        sub_10000BCEC(aBlock, *(&aBlock + 1), v76, *(&v76 + 1), v77, v78);
      }

      else
      {
        swift_beginAccess();
        type metadata accessor for Dictionary();
        Dictionary.remove(at:)();
        swift_endAccess();
        sub_10000BCEC(aBlock, *(&aBlock + 1), v76, *(&v76 + 1), v77, v78);
      }
    }

    else
    {
    }
  }
}

double sub_1002D210C(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a7;
  v62 = a5;
  v63 = a6;
  v61 = a4;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v52[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v64 = a1;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v22 = Strong;
  v57 = v13;
  v58 = v12;
  v59 = a2;
  v23 = sub_10000EC3C(sub_10000DFFC);
  v56 = v16;
  v55 = v17;
  v60 = v22;
  v54 = v15;
  v53 = a8;
  if (a2 == 1)
  {
    if (v23)
    {
      sub_100448534(a3);
LABEL_7:
    }
  }

  else if (v23)
  {
    sub_100448628(a3);
    goto LABEL_7;
  }

  v24 = a3;
  v25 = a3;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v59;
    v29 = v59;
    v30 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v30 = 136315394;
    if (v29 == 1)
    {
      v31 = 0x6465767265736572;
    }

    else
    {
      v31 = 0x7672657365726E75;
    }

    if (v29 == 1)
    {
      v32 = 0xE800000000000000;
    }

    else
    {
      v32 = 0xEA00000000006465;
    }

    v33 = sub_100002320(v31, v32, aBlock);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v34 = [v25 uniqueIdentifier];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_100002320(v35, v37, aBlock);

    *(v30 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v26, v27, "Successfully %s traffic registrations for %s", v30, 0x16u);
    swift_arrayDestroy();

    v39 = v24;
  }

  else
  {

    v39 = v24;
    v28 = v59;
  }

  v40 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v41 = swift_allocObject();
  v42 = v62;
  *(v41 + 16) = v61;
  *(v41 + 24) = v42;
  v43 = v64;
  v44 = v65;
  *(v41 + 32) = v63;
  *(v41 + 40) = v44;
  *(v41 + 48) = v53;
  *(v41 + 56) = v43;
  *(v41 + 64) = v39;
  *(v41 + 72) = v28;
  *(v41 + 80) = 0;
  *(v41 + 88) = 0;
  aBlock[4] = sub_1002DF800;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100574100;
  v45 = _Block_copy(aBlock);
  v46 = v39;
  v47 = v45;
  v48 = v46;
  v49 = v40;

  static DispatchQoS.unspecified.getter();
  v66 = _swiftEmptyArrayStorage;
  sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  v50 = v54;
  v51 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v47);

  sub_10000EBB8(0, 0);

  (*(v57 + 8))(v50, v51);
  (*(v55 + 8))(v19, v56);

  return result;
}

void sub_1002D28B8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v39 = a3;
    v40 = a5;
    v41 = a4;
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = a8;
    v19[5] = a9;
    v19[6] = a10;
    v20 = qword_100594E30;
    swift_beginAccess();
    v21 = swift_allocObject();
    v22 = a8;
    v23 = v21;
    v21[2] = a6;
    v21[3] = a7;
    v38 = v22;
    v21[4] = v22;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = sub_10000EC8C;
    v21[8] = v19;
    isUnique = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v18 + v20);
    v24 = v44;
    *(v18 + v20) = 0x8000000000000000;
    v42 = a2;
    sub_1003E09E8(a2);
    v26 = v24[2];
    v27 = (v25 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      __break(1u);
    }

    else
    {
      v36 = v25;
      sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v43[0] = a6;
      v43[1] = a7;
      v43[2] = v38;
      v43[3] = a9;
      v43[4] = a10;
      v29 = _s16P2PActivityStateOMa(255, v43);
      sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
      type metadata accessor for _NativeDictionary();
      v30 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v28);
      v31 = v44;
      if (!v30)
      {
        v32 = v42;
        *(v18 + v20) = v44;
        if (v36)
        {
LABEL_9:
          v35 = sub_100010434(v39, v41, v40 & 1, v29);
          swift_endAccess();
          sub_1002D18E4(v32, v35);

          return;
        }

LABEL_8:
        (v23[7])(v43);
        v44 = v32;
        v34 = v32;
        _NativeDictionary._insert(at:key:value:)();
        goto LABEL_9;
      }

      v32 = v42;
      sub_1003E09E8(v42);
      if ((v36 & 1) == (v33 & 1))
      {
        *(v18 + v20) = v31;
        if (v36)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_1002D2B90(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = sub_1002CFC5C([a1 options], a3, a4);
  v38 = v8;
  v39 = v7;
  v37 = v9;
  v10 = swift_allocObject();
  v11 = qword_100594E30;
  v12 = v6[10];
  v10[2] = v12;
  v13 = v6[11];
  v10[3] = v13;
  v14 = v6[12];
  v10[4] = v14;
  v15 = v6[13];
  v10[5] = v15;
  v16 = v6[14];
  v10[6] = v16;
  swift_beginAccess();
  v17 = swift_allocObject();
  *&v18 = v12;
  *(&v18 + 1) = v13;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v34 = v19;
  v35 = v18;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  *(v17 + 56) = sub_10000EC8C;
  *(v17 + 64) = v10;
  v20 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v5 + v11);
  v22 = v43;
  *(v5 + v11) = 0x8000000000000000;
  sub_1003E09E8(a1);
  v24 = v22[2];
  v25 = (v23 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
  }

  else
  {
    v27 = v23;
    sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v41[1] = v34;
    v41[0] = v35;
    v42 = v16;
    _s16P2PActivityStateOMa(255, v41);
    sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
    type metadata accessor for _NativeDictionary();
    v28 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v26);
    v29 = v43;
    if (!v28)
    {
      v30 = a1;
      *(v5 + v20) = v43;
      if (v27)
      {
LABEL_8:
        v33 = sub_10000ECAC(a2, v39, v38, v37 & 1);
        swift_endAccess();
        sub_1002D18E4(v30, v33);
        sub_100010500(v39, v38);

        return;
      }

LABEL_7:
      (*(v17 + 56))(v41);
      v43 = v30;
      v32 = v30;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v30 = a1;
    sub_1003E09E8(a1);
    if ((v27 & 1) == (v31 & 1))
    {
      *(v5 + v20) = v29;
      if (v27)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1002D2ED0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v10 = qword_100594E30;
  v11 = v7[10];
  v8[2] = v11;
  v12 = v7[11];
  v8[3] = v12;
  v13 = v7[12];
  v8[4] = v13;
  v14 = v7[13];
  v8[5] = v14;
  v15 = v7[14];
  v8[6] = v15;
  v35 = v9;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  swift_beginAccess();
  v16 = swift_allocObject();
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v33 = v18;
  v34 = v17;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  *(v16 + 48) = v15;
  *(v16 + 56) = sub_10000EC8C;
  *(v16 + 64) = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v5 + v10);
  v20 = v41;
  *(v5 + v10) = 0x8000000000000000;
  sub_1003E09E8(a1);
  v22 = v20[2];
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v21;
    sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v39[0] = v34;
    v39[1] = v33;
    v40 = v15;
    _s16P2PActivityStateOMa(255, v39);
    sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
    type metadata accessor for _NativeDictionary();
    v26 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24);
    v27 = v41;
    if (!v26)
    {
      v28 = a1;
      *(v5 + v10) = v41;
      if (v25)
      {
LABEL_8:
        sub_10000B08C(a2, sub_1002E01F4, v35, 1);
        v32 = v31;
        swift_endAccess();

        sub_1002D18E4(v28, v32);

        return;
      }

LABEL_7:
      (*(v16 + 56))(v39);
      v41 = v28;
      v30 = v28;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v28 = a1;
    sub_1003E09E8(a1);
    if ((v25 & 1) == (v29 & 1))
    {
      *(v5 + v10) = v27;
      if (v25)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1002D3208(void **a1, void *a2, void *a3)
{
  v4 = *a2;
  v5 = *a1;
  v6 = swift_allocObject();
  *&v36[0] = 0;
  *(&v36[0] + 1) = 0xE000000000000000;
  v35 = v4[10];
  v6[2] = v35;
  v34 = v4[11];
  v6[3] = v34;
  v7 = v4[12];
  v6[4] = v7;
  v8 = v4[13];
  v6[5] = v8;
  v9 = v4[14];
  v6[6] = v9;
  _StringGuts.grow(_:)(40);
  v10._object = 0x80000001004BEC10;
  v10._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v10);
  v38 = v5;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  sub_1000472EC(&qword_1005953B0, &protocol conformance descriptor for NSObject);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v32 = v36[0];
  v11 = qword_100594E30;
  swift_beginAccess();
  v12 = swift_allocObject();
  *&v13 = v35;
  *(&v13 + 1) = v34;
  *&v14 = v7;
  *(&v14 + 1) = v8;
  v15 = v5;
  v30 = v14;
  v31 = v13;
  *(v12 + 16) = v13;
  *(v12 + 32) = v14;
  v16 = v9;
  *(v12 + 48) = v9;
  *(v12 + 56) = sub_10000EC8C;
  *(v12 + 64) = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(a2 + v11);
  v18 = v39;
  *(a2 + v11) = 0x8000000000000000;
  sub_1003E09E8(v15);
  v20 = v18[2];
  v21 = (v19 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
  }

  else
  {
    v23 = v19;
    v36[0] = v31;
    v36[1] = v30;
    v37 = v16;
    _s16P2PActivityStateOMa(255, v36);
    sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
    type metadata accessor for _NativeDictionary();
    v24 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
    v25 = v39;
    if (!v24)
    {
      *(a2 + v11) = v39;
      if (v23)
      {
LABEL_8:
        sub_1002CEF74(a3, v32, *(&v32 + 1));
        v29 = v28;
        swift_endAccess();

        sub_1002D18E4(v15, v29);

        return;
      }

LABEL_7:
      (*(v12 + 56))(v36);
      v39 = v15;
      v27 = v15;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    sub_1003E09E8(v15);
    if ((v23 & 1) == (v26 & 1))
    {
      *(a2 + v11) = v25;
      if (v23)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1002D3598(void *a1, unsigned int a2, int a3)
{
  v4 = v3;
  v8 = a2;
  v9 = *v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v62 = a3;
    v63 = a2;
    v65 = v17;
    v66 = v15;
    v67 = v13;
    v68 = v14;
    v69 = v11;
    v70 = v10;
    v18 = swift_allocObject();
    sub_10000B02C();
    v19 = v9[10];
    v18[2] = v19;
    v20 = v9[11];
    v18[3] = v20;
    v21 = v9[12];
    v18[4] = v21;
    v22 = v9[13];
    v18[5] = v22;
    v23 = v9[14];
    v18[6] = v23;
    v61 = swift_allocError();
    *v24 = xmmword_100481800;
    *(v24 + 16) = 1;
    v25 = qword_100594E38;
    swift_beginAccess();
    v26 = swift_allocObject();
    *&v27 = v19;
    *(&v27 + 1) = v20;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v71 = v28;
    v72 = v27;
    *(v26 + 16) = v27;
    *(v26 + 32) = v28;
    *(v26 + 48) = v23;
    *(v26 + 56) = sub_10000EC8C;
    v64 = v18;
    *(v26 + 64) = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v4 + v25);
    v30 = v77;
    *(v4 + v25) = 0x8000000000000000;
    v73 = a1;
    sub_1003E09E8(a1);
    v32 = v30[2];
    v33 = (v31 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      __break(1u);
    }

    else
    {
      v35 = v31;
      v36 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v79 = v71;
      aBlock = v72;
      v60 = v23;
      v80 = v23;
      v37 = _s16P2PActivityStateOMa(255, &aBlock);
      sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
      v59[1] = v36;
      type metadata accessor for _NativeDictionary();
      v38 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34);
      v39 = v77;
      if (!v38 || (sub_1003E09E8(v73), (v35 & 1) == (v40 & 1)))
      {
        *(v4 + v25) = v39;
        if ((v35 & 1) == 0)
        {
          (*(v26 + 56))(&aBlock);
          v77 = v73;
          v41 = v73;
          _NativeDictionary._insert(at:key:value:)();
        }

        v42 = v63;
        v43 = sub_10000FEC8(v63, v61, 1, v37);
        swift_endAccess();

        v44 = v73;
        sub_1002D3598(v73, v43, 0);
        v45 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
        v46 = swift_allocObject();
        swift_weakInit();
        v47 = swift_allocObject();
        v48 = v71;
        *(v47 + 16) = v72;
        *(v47 + 32) = v48;
        *(v47 + 48) = v60;
        *(v47 + 56) = v46;
        *(v47 + 64) = v62 & 1;
        *(v47 + 65) = v42;
        *(v47 + 72) = v44;
        v80 = sub_1002DF6C0;
        v81 = v47;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v79 = sub_10000C8B8;
        *(&v79 + 1) = &unk_100573F20;
        v49 = _Block_copy(&aBlock);
        v50 = v44;
        v51 = v45;

        v52 = v65;
        static DispatchQoS.unspecified.getter();
        *&v74[0] = _swiftEmptyArrayStorage;
        sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10005DC58(&unk_100595270, &unk_1004AEC80);
        sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
        v53 = v67;
        v54 = v70;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v49);

        (*(v69 + 8))(v53, v54);
        (*(v66 + 8))(v52, v68);

        return;
      }
    }

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v55 = qword_100594E38;
  swift_beginAccess();
  if (*(*(v4 + v55) + 16))
  {

    sub_1003E09E8(a1);
    if (v56)
    {

      sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v57 = v9[14];

      v58 = *(v9 + 6);
      v74[0] = *(v9 + 5);
      v74[1] = v58;
      v75 = v57;
      _s16P2PActivityStateOMa(0, v74);
      sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
      Dictionary.subscript.getter();

      if (*(&v79 + 1) >> 62 != 3 || v81 || *(&v79 + 1) != 0xC000000000000000 || *(&aBlock + 1) | aBlock | v79 | v80)
      {
        sub_10000BCEC(aBlock, *(&aBlock + 1), v79, *(&v79 + 1), v80, v81);
      }

      else
      {
        swift_beginAccess();
        type metadata accessor for Dictionary();
        Dictionary.remove(at:)();
        swift_endAccess();
        sub_10000BCEC(aBlock, *(&aBlock + 1), v79, *(&v79 + 1), v80, v81);
      }
    }

    else
    {
    }
  }
}

double sub_1002D3DE0(uint64_t a1, char a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v79 = a7;
  v80 = a8;
  v77 = a5;
  v78 = a6;
  v82 = a3;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v68[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v71 = a9;
    v75 = v13;
    v76 = v12;
    v73 = v17;
    v74 = v16;
    v81 = Strong;
    v72 = v19;
    v70 = v15;
    if (a2)
    {
      if (sub_10000EC3C(sub_10000DFFC))
      {
        sub_1004486F8(a4);
      }

      v22 = a4;
      v23 = a4;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v26 = 136315394;
        v27 = [v23 uniqueIdentifier];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_100002320(v28, v30, aBlock);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2080;
        v32 = [v23 peerAddress];
        v33 = WiFiMACAddress.wifiAddress.getter();

        v34 = WiFiAddress.description.getter(v33 & 0xFFFFFFFFFFFFLL);
        v36 = sub_100002320(v34, v35, aBlock);

        *(v26 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v24, v25, "Successfully updated traffic registration options for %s to %s", v26, 0x16u);
        swift_arrayDestroy();
      }

      v37 = v22;
LABEL_23:
      v58 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
      v59 = swift_allocObject();
      v60 = v78;
      *(v59 + 16) = v77;
      *(v59 + 24) = v60;
      v61 = v80;
      *(v59 + 32) = v79;
      *(v59 + 40) = v61;
      *(v59 + 48) = v71;
      *(v59 + 56) = a1;
      *(v59 + 64) = v37;
      *(v59 + 72) = v82;
      *(v59 + 80) = 0;
      *(v59 + 88) = 0;
      aBlock[4] = sub_1002DF6FC;
      aBlock[5] = v59;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000C8B8;
      aBlock[3] = &unk_100573F70;
      v62 = _Block_copy(aBlock);
      v63 = v37;
      v64 = v58;

      v65 = v72;
      static DispatchQoS.unspecified.getter();
      v83 = _swiftEmptyArrayStorage;
      sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10005DC58(&unk_100595270, &unk_1004AEC80);
      sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
      v66 = v70;
      v67 = v76;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v62);

      sub_10000EBB8(0, 0);

      (*(v75 + 8))(v66, v67);
      (*(v73 + 8))(v65, v74);

      return result;
    }

    v38 = v82;
    v39 = sub_10000EC3C(sub_10000DFFC);
    if (v38 == 1)
    {
      if (v39)
      {
        sub_100449054(a4);
LABEL_13:
      }
    }

    else if (v39)
    {
      sub_10044AB28(a4);
      goto LABEL_13;
    }

    v69 = a4;
    v40 = a4;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v82;
      v44 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v44 = 136315650;
      if (v43 == 1)
      {
        v45 = 7628147;
      }

      else
      {
        v45 = 0x64657261656C63;
      }

      if (v43 == 1)
      {
        v46 = 0xE300000000000000;
      }

      else
      {
        v46 = 0xE700000000000000;
      }

      v47 = sub_100002320(v45, v46, aBlock);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v48 = [v40 uniqueIdentifier];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = sub_100002320(v49, v51, aBlock);

      *(v44 + 14) = v52;
      *(v44 + 22) = 2080;
      v53 = [v40 peerAddress];
      v54 = WiFiMACAddress.wifiAddress.getter();

      v55 = WiFiAddress.description.getter(v54 & 0xFFFFFFFFFFFFLL);
      v57 = sub_100002320(v55, v56, aBlock);

      *(v44 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v41, v42, "Successfully %s traffic registration for %s to %s", v44, 0x20u);
      swift_arrayDestroy();
    }

    v37 = v69;
    goto LABEL_23;
  }

  return result;
}

void sub_1002D47C0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v39 = a3;
    v40 = a5;
    v41 = a4;
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = a8;
    v19[5] = a9;
    v19[6] = a10;
    v20 = qword_100594E38;
    swift_beginAccess();
    v21 = swift_allocObject();
    v22 = a8;
    v23 = v21;
    v21[2] = a6;
    v21[3] = a7;
    v38 = v22;
    v21[4] = v22;
    v21[5] = a9;
    v21[6] = a10;
    v21[7] = sub_10000EC8C;
    v21[8] = v19;
    isUnique = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v18 + v20);
    v24 = v44;
    *(v18 + v20) = 0x8000000000000000;
    v42 = a2;
    sub_1003E09E8(a2);
    v26 = v24[2];
    v27 = (v25 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      __break(1u);
    }

    else
    {
      v36 = v25;
      sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v43[0] = a6;
      v43[1] = a7;
      v43[2] = v38;
      v43[3] = a9;
      v43[4] = a10;
      v29 = _s16P2PActivityStateOMa(255, v43);
      sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
      type metadata accessor for _NativeDictionary();
      v30 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v28);
      v31 = v44;
      if (!v30)
      {
        v32 = v42;
        *(v18 + v20) = v44;
        if (v36)
        {
LABEL_9:
          v35 = sub_100010434(v39, v41, v40 & 1, v29);
          swift_endAccess();
          sub_1002D3598(v32, v35, 0);

          return;
        }

LABEL_8:
        (v23[7])(v43);
        v44 = v32;
        v34 = v32;
        _NativeDictionary._insert(at:key:value:)();
        goto LABEL_9;
      }

      v32 = v42;
      sub_1003E09E8(v42);
      if ((v36 & 1) == (v33 & 1))
      {
        *(v18 + v20) = v31;
        if (v36)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_1002D4A9C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a1;
  v8 = *v4;
  v9 = sub_1002CFC5C([a1 options], a3, a4);
  v11 = v10;
  v74 = v12;
  v13 = [v7 uniqueIdentifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v20 = [v7 peerAddress];
  v21 = WiFiMACAddress.wifiAddress.getter();

  v22 = WiFiAddress.zero.unsafeMutableAddressor();
  if (static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v21 & 0xFFFFFFFFFFFFLL, *v22 | (*(v22 + 1) << 16)))
  {
    *&v79 = 0;
    v9(&v79);
    sub_100010500(v9, v11);
    return;
  }

LABEL_10:
  v23 = qword_100594E38;
  swift_beginAccess();
  v24 = *(v5 + v23);
  v25 = *(v24 + 16);
  v75 = v7;
  v70 = v9;
  v73 = v5;
  v71 = a2;
  v72 = v23;
  if (!v25)
  {
    goto LABEL_18;
  }

  sub_1003E09E8(v7);
  if ((v26 & 1) == 0)
  {

    v7 = v75;
    goto LABEL_18;
  }

  v27 = *(v24 + 36);

  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v28 = *(v8 + 112);

  v29 = *(v8 + 96);
  v77[0] = *(v8 + 80);
  v77[1] = v29;
  v78 = v28;
  _s16P2PActivityStateOMa(0, v77);
  sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
  v69 = v27;
  Dictionary.subscript.getter();

  if (*(&v80 + 1) >> 62 != 1)
  {
    sub_10000BCEC(v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82);
    goto LABEL_17;
  }

  v65 = v79;
  v66 = v80;
  *&v67 = v81;
  LODWORD(v68) = v82;

  Dictionary.subscript.getter();

  sub_10000BCEC(v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82);
  v30 = *&v77[0];
  v31 = [*&v77[0] hasSimilarOptionsTo:v75];

  if (v31)
  {
    sub_10000BCEC(v65, *(&v65 + 1), v66, *(&v66 + 1), v67, v68);
LABEL_17:
    v7 = v75;
    v23 = v72;
LABEL_18:
    v69 = v11;
    v32 = swift_allocObject();
    v33 = *(v8 + 80);
    v32[2] = v33;
    v34 = *(v8 + 88);
    v32[3] = v34;
    v35 = *(v8 + 96);
    v32[4] = v35;
    v36 = *(v8 + 104);
    v32[5] = v36;
    v37 = *(v8 + 112);
    v32[6] = v37;
    swift_beginAccess();
    v38 = swift_allocObject();
    *&v39 = v33;
    *(&v39 + 1) = v34;
    *&v40 = v35;
    *(&v40 + 1) = v36;
    v67 = v40;
    *(v38 + 16) = v39;
    *(v38 + 32) = v40;
    v68 = v39;
    *(v38 + 48) = v37;
    *(v38 + 56) = sub_10000EC8C;
    *(v38 + 64) = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v5 + v23);
    v42 = v83;
    *(v5 + v23) = 0x8000000000000000;
    sub_1003E09E8(v7);
    v44 = v42[2];
    v45 = (v43 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      __break(1u);
    }

    else
    {
      v47 = v43;
      v48 = sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
      v80 = v67;
      v79 = v68;
      v81 = v37;
      _s16P2PActivityStateOMa(255, &v79);
      sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
      *&v68 = v48;
      type metadata accessor for _NativeDictionary();
      v49 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v46);
      v50 = v83;
      if (!v49)
      {
        v52 = v70;
LABEL_23:
        *(v73 + v72) = v50;
        if ((v47 & 1) == 0)
        {
          (*(v38 + 56))(&v79);
          v83 = v75;
          v53 = v75;
          _NativeDictionary._insert(at:key:value:)();
        }

        v54 = sub_10000ECAC(v71, v52, v69, v74 & 1);
        swift_endAccess();
        sub_1002D3598(v75, v54, 0);
        sub_100010500(v52, v69);

        return;
      }

      sub_1003E09E8(v75);
      v52 = v70;
      if ((v47 & 1) == (v51 & 1))
      {
        goto LABEL_23;
      }
    }

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  swift_beginAccess();
  v69 = type metadata accessor for Dictionary();
  Dictionary.remove(at:)();
  swift_endAccess();
  sub_10000BCEC(v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82);

  v64[1] = v64;
  v76 = 0;
  v55 = v65;
  *&v79 = v65;
  __chkstk_darwin();
  v56 = v74 & 1;
  sub_10005DC58(&qword_100595328, &qword_1004AF228);
  sub_10005DC58(&qword_100595288, &qword_1004AF190);
  sub_10000CADC(&unk_100595330, &qword_100595328, &qword_1004AF228, &protocol conformance descriptor for [A : B]);
  sub_10000CADC(&unk_100595290, &qword_100595288, &qword_1004AF190, &protocol conformance descriptor for [A]);
  v57 = v70;
  Sequence.flatMap<A>(_:)();
  sub_10000BCEC(v55, *(&v65 + 1), v66, *(&v66 + 1), v67, v68);
  if ((v76 & 1) == 0)
  {
    sub_10005DC58(&unk_100598780, &qword_1004AF198);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100480F40;
    v59 = v71;
    *(v58 + 32) = v71;
    *(v58 + 40) = v57;
    *(v58 + 48) = v11;
    *(v58 + 56) = v56;
    v60 = v59;
    sub_10000C060(v57, v11);
  }

  sub_10005DC58(&unk_1005968C0, &qword_1004AF230);
  v61 = static Array.+ infix(_:_:)();

  *&v79 = v61;
  *(&v79 + 1) = _swiftEmptyArrayStorage;
  v80 = xmmword_1004AEC90;
  v81 = 0;
  v82 = -1;
  v62 = v75;
  v83 = v75;
  swift_beginAccess();
  v63 = v62;
  Dictionary.subscript.setter();
  swift_endAccess();
  sub_1002D3598(v63, 1u, 1);
  sub_100010500(v57, v11);
}

void sub_1002D547C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    v19 = v3;
    __chkstk_darwin();
    v16[2] = v4;
    v16[3] = v5;
    v16[4] = v6;
    v16[5] = v7;
    v16[6] = v8;
    v17 = v9 & 1;
    v10 = v5;
    v11 = sub_10005DC58(&qword_100595340, &qword_1004AF238);
    v12 = sub_10005DC58(&unk_1005968C0, &qword_1004AF230);
    v13 = sub_1002DFAE0();
    v15 = sub_10002B84C(sub_1002DFAB4, v16, v11, v12, &type metadata for Never, v13, &protocol witness table for Never, v14);

    *a2 = v15;
  }
}

char *sub_1002D55A0@<X0>(char *a1@<X1>, char *a2@<X2>, _BYTE *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X8>)
{
  sub_100018AB4(0, &qword_100599470, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && (*a3 & 1) == 0)
  {
    *a3 = 1;
    *a7 = a1;
    *(a7 + 8) = a4;
    *(a7 + 16) = a5;
    *(a7 + 24) = a6 & 1;
    v15 = a1;
    return sub_10000C060(a4, a5);
  }

  else
  {
    *a7 = a2;
    *(a7 + 8) = NANBitmap.Channel.operatingClass.getter;
    *(a7 + 16) = 0;
    *(a7 + 24) = 0;
    return a2;
  }
}

double sub_1002D5690(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = *v4;
  v9 = swift_allocObject();
  v97 = a3;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  swift_beginAccess();
  v104 = a1;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v10 = *(v8 + 112);
  swift_retain_n();
  v11 = a1;
  v12 = *(v8 + 96);
  v102[0] = *(v8 + 80);
  v102[1] = v12;
  v103 = v10;
  _s16P2PActivityStateOMa(0, v102);
  sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
  v13 = v11;
  Dictionary.subscript.getter();

  if (v107 >> 8 != 0xFFFFFFFF)
  {
    v111 = v105;
    v112 = v106;
    v113 = v107;
    v114 = v108;
    v115 = v109;
    swift_endAccess();

    sub_10000B08C(a2, sub_1002DFA28, v9, 1);
    v100 = v23;
    v24 = v111;
    v25 = v113;
    v26 = v114;
    v27 = v115;
    v105 = v111;
    v106 = v112;
    v107 = v113;
    v28 = v112;
    v108 = v114;
    v98 = v114;
    v109 = v115;
    v110 = v13;
    swift_beginAccess();
    v29 = v13;
    sub_1002DF8EC(v24, *(&v24 + 1), v28, v25, v26, v27);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    sub_1002D3598(v29, v100, 0);

    sub_10000BCEC(v24, *(&v24 + 1), v28, v25, v98, v27);
    return result;
  }

  swift_endAccess();
  v14 = [v11 peerAddress];
  v15 = WiFiMACAddress.wifiAddress.getter();

  v16 = WiFiAddress.zero.unsafeMutableAddressor();
  if (!static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v15 & 0xFFFFFFFFFFFFLL, *v16 | (*(v16 + 1) << 16)))
  {

    v31 = v13;
    v32 = a2;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v111 = swift_slowAlloc();
      *v35 = 138412802;
      *(v35 + 4) = v32;
      *v36 = v32;
      *(v35 + 12) = 2080;
      v37 = v32;
      v38 = [v31 uniqueIdentifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_100002320(v39, v41, &v111);

      *(v35 + 14) = v42;
      *(v35 + 22) = 2080;
      v43 = [v31 peerAddress];
      v44 = WiFiMACAddress.wifiAddress.getter();

      v45 = WiFiAddress.description.getter(v44 & 0xFFFFFFFFFFFFLL);
      v47 = sub_100002320(v45, v46, &v111);

      *(v35 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v33, v34, "%@ failed to clear traffic registration for %s to %s because invalid peer address", v35, 0x20u);
      sub_10000BB28(v36);

      swift_arrayDestroy();
    }

    sub_10000B02C();
    v48 = swift_allocError();
    *v49 = xmmword_100481800;
    *(v49 + 16) = 1;
    sub_1002CEBBC(v48, sub_1002DFA28, v9, 1);

    goto LABEL_25;
  }

  v17 = v13;
  v18 = [v13 uniqueIdentifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v50 & 1) == 0)
    {
      v83 = v17;
      v84 = a2;
      v57 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&v111 = v88;
        *v86 = 138412546;
        *(v86 + 4) = v84;
        *v87 = v84;
        *(v86 + 12) = 2080;
        v89 = v84;
        v90 = [v83 uniqueIdentifier];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_100002320(v91, v93, &v111);

        *(v86 + 14) = v94;
        _os_log_impl(&_mh_execute_header, v57, v85, "%@ failed to clear traffic registration for %s because the peer address was empty; return success to maintain compatibility", v86, 0x16u);
        sub_10000BB28(v87);

        sub_100002A00(v88);
      }

      goto LABEL_14;
    }
  }

  NANBitmap.Channel.operatingClass.getter();
  *&v111 = v51;
  __chkstk_darwin();
  v52 = v17;
  v53 = type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v53);
  v54 = Sequence.filter(_:)();
  *&v111 = v54;
  sub_10005DC58(&unk_100595240, &qword_1004AF178);
  sub_10000CADC(&qword_100595320, &unk_100595240, &qword_1004AF178, &protocol conformance descriptor for [A]);
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    v68 = v52;

    v69 = a2;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v101 = v71;
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v111 = v74;
      *v72 = 134218498;
      v75 = v97;
      v96 = v74;
      v95 = v73;
      if (v54 >> 62)
      {
        v76 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v76 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v72 + 4) = v76;

      *(v72 + 12) = 2080;
      v77 = [v68 uniqueIdentifier];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = sub_100002320(v78, v80, &v111);

      *(v72 + 14) = v81;
      *(v72 + 22) = 2112;
      *(v72 + 24) = v69;
      *v95 = v69;
      v82 = v69;
      _os_log_impl(&_mh_execute_header, v70, v101, "Clearing all (%ld total) traffic registrations for %s because %@ cleared with empty peer address", v72, 0x20u);
      sub_10000BB28(v95);

      sub_100002A00(v96);
    }

    else
    {

      v75 = v97;
    }

    *&v111 = v54;
    sub_10000CADC(&unk_10059B180, &unk_100595240, &qword_1004AF178, &protocol conformance descriptor for [A]);
    Sequence.forEach(_:)();

    v75(0);
    goto LABEL_24;
  }

  v55 = v52;
  v56 = a2;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v111 = v61;
    *v59 = 136315394;
    v62 = [v55 uniqueIdentifier];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = sub_100002320(v63, v65, &v111);

    *(v59 + 4) = v66;
    *(v59 + 12) = 2112;
    *(v59 + 14) = v56;
    *v60 = v56;
    v67 = v56;
    _os_log_impl(&_mh_execute_header, v57, v58, "Ignoring request to clear all traffic registrations for %s from %@ because none were previously registered", v59, 0x16u);
    sub_10000BB28(v60);

    sub_100002A00(v61);
  }

LABEL_14:

  v97(0);
LABEL_24:

LABEL_25:

  return result;
}

uint64_t sub_1002D6374(id *a1, void *a2)
{
  v3 = [*a1 uniqueIdentifier];
  v4 = [a2 uniqueIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

void sub_1002D6448(void **a1, void *a2)
{
  v3 = *a2;
  v4 = *a1;
  v5 = qword_100594E38;
  swift_beginAccess();
  v60 = v5;
  v70 = v4;
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v6 = v3[10];
  v7 = v3[11];
  v8 = v3[12];
  v9 = v3[13];
  v10 = v3[14];
  v11 = v4;
  v62[0] = v6;
  v62[1] = v7;
  v58 = v9;
  v59 = v8;
  v62[2] = v8;
  v62[3] = v9;
  v57 = v10;
  v62[4] = v10;
  _s16P2PActivityStateOMa(0, v62);
  sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
  Dictionary.subscript.getter();
  v61 = v11;

  v12 = v66;
  if (v66 >> 8 != 0xFFFFFFFF)
  {
    v13 = v63;
    v14 = v64;
    v15 = v67;
    if (v66 >> 62 == 1)
    {
      v54 = v7;
      v55 = v6;
      v16 = v65;
      v56 = v68;
      swift_endAccess();
      v17 = v13 + 64;
      v18 = 1 << *(v13 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v13 + 64);
      v50 = v16;
      v51 = v14;
      v52 = v12;
      v53 = v15;
      sub_1002DF8EC(v13, v14, v16, v12, v15, v56);
      v21 = 0;
      v22 = (v18 + 63) >> 6;
      v23 = v60;
      while (v20)
      {
        v24 = v21;
LABEL_12:
        v25 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v26 = v13;
        v27 = *(*(v13 + 48) + ((v24 << 9) | (8 * v25)));
        v28 = *&v27[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
        v29 = v27;
        v30 = [v28 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10005DC58(&qword_1005952D0, &qword_1004AF1D8);
        if (swift_dynamicCast())
        {
          [v62[0] invalidatedActiveTrafficRegistration:v61];
          swift_unknownObjectRelease();
        }

        v21 = v24;
        v13 = v26;
      }

      while (1)
      {
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v24 >= v22)
        {

          sub_1002DF9AC(v13, v51, v50, v52, v53, v56);
          v7 = v54;
          v6 = v55;
          v32 = v58;
          v31 = v59;
          goto LABEL_17;
        }

        v20 = *(v17 + 8 * v24);
        ++v21;
        if (v20)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    sub_1002DF9AC(v63, v64, v65, v66, v67, v68);
  }

  swift_endAccess();
  v32 = v58;
  v31 = v59;
  v23 = v60;
LABEL_17:
  v33 = swift_allocObject();
  v33[2] = v6;
  v33[3] = v7;
  v33[4] = v31;
  v33[5] = v32;
  v33[6] = v57;
  swift_beginAccess();
  v34 = swift_allocObject();
  v35 = v7;
  v36 = v34;
  v34[2] = v6;
  v34[3] = v35;
  v34[4] = v31;
  v34[5] = v32;
  v34[6] = v57;
  v34[7] = sub_10000EC8C;
  v34[8] = v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(a2 + v23);
  v38 = v63;
  *(a2 + v23) = 0x8000000000000000;
  sub_1003E09E8(v61);
  v40 = *(v38 + 16);
  v41 = (v39 & 1) == 0;
  v42 = v40 + v41;
  if (__OFADD__(v40, v41))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v43 = v39;
  type metadata accessor for _NativeDictionary();
  v44 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v42);
  v45 = v63;
  if (v44)
  {
    sub_1003E09E8(v61);
    if ((v43 & 1) != (v46 & 1))
    {
      goto LABEL_25;
    }
  }

  *(a2 + v23) = v45;
  if ((v43 & 1) == 0)
  {
    (v36[7])(&v63);
    v69 = v61;
    v47 = v61;
    _NativeDictionary._insert(at:key:value:)();
  }

  sub_1002CF55C();
  v49 = v48;
  swift_endAccess();
  sub_1002D3598(v61, v49, 0);
}

uint64_t sub_1002D6940(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  swift_beginAccess();
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v6 = *(v4 + 112);
  v7 = *(v5 + 96);
  v11[0] = *(v5 + 80);
  v11[1] = v7;
  v12 = v6;
  _s16P2PActivityStateOMa(0, v11);
  sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
  NANBitmap.Channel.operatingClass.getter();
  *&v11[0] = v8;
  v9 = type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v9);
  *&v11[0] = Array.init<A>(_:)();
  sub_10005DC58(&unk_100595240, &qword_1004AF178);
  sub_10000CADC(&unk_10059B180, &unk_100595240, &qword_1004AF178, &protocol conformance descriptor for [A]);
  Sequence.forEach(_:)();
}

void sub_1002D6B20(void **a1, void *a2, void *a3)
{
  v4 = *a2;
  v5 = *a1;
  v6 = swift_allocObject();
  *&v40[0] = 0;
  *(&v40[0] + 1) = 0xE000000000000000;
  v38 = v4[10];
  v6[2] = v38;
  v37 = v4[11];
  v6[3] = v37;
  v35 = v4[12];
  v6[4] = v35;
  v33 = v4[13];
  v6[5] = v33;
  v7 = v4[14];
  v6[6] = v7;
  _StringGuts.grow(_:)(33);

  *&v40[0] = 0xD000000000000019;
  *(&v40[0] + 1) = 0x80000001004BEC40;
  v8 = [v5 uniqueIdentifier];
  v9._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 544175136;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  v11 = [v5 peerAddress];
  v12 = WiFiMACAddress.wifiAddress.getter();

  v13._countAndFlagsBits = WiFiAddress.description.getter(v12 & 0xFFFFFFFFFFFFLL);
  String.append(_:)(v13);

  v14 = qword_100594E38;
  swift_beginAccess();
  v15 = swift_allocObject();
  *&v16 = v38;
  *(&v16 + 1) = v37;
  *&v17 = v35;
  *(&v17 + 1) = v33;
  v34 = v17;
  v36 = v16;
  *(v15 + 16) = v16;
  *(v15 + 32) = v17;
  *(v15 + 48) = v7;
  *(v15 + 56) = sub_10000EC8C;
  *(v15 + 64) = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a2 + v14);
  v19 = v42;
  *(a2 + v14) = 0x8000000000000000;
  v39 = v5;
  sub_1003E09E8(v5);
  v21 = v19[2];
  v22 = (v20 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
  }

  else
  {
    v24 = v20;
    sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
    v40[0] = v36;
    v40[1] = v34;
    v41 = v7;
    _s16P2PActivityStateOMa(255, v40);
    sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
    type metadata accessor for _NativeDictionary();
    v25 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23);
    v26 = v42;
    if (!v25)
    {
      v27 = v39;
      *(a2 + v14) = v42;
      if (v24)
      {
LABEL_8:
        sub_1002CEF74(a3, 0xD000000000000019, 0x80000001004BEC40);
        v31 = v30;
        swift_endAccess();

        sub_1002D3598(v27, v31, 0);

        return;
      }

LABEL_7:
      (*(v15 + 56))(v40);
      v42 = v27;
      v29 = v27;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    v27 = v39;
    sub_1003E09E8(v39);
    if ((v24 & 1) == (v28 & 1))
    {
      *(a2 + v14) = v26;
      if (v24)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1002D6F18(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v35 = a1;
  swift_beginAccess();
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v11 = *(v3 + 112);
  v12 = *(v3 + 96);
  v40 = *(v3 + 80);
  v41 = v12;
  v42 = v11;
  _s16P2PActivityStateOMa(255, &v40);
  sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  v13 = *(&v37 + 1);
  if (*(&v37 + 1) >> 8 != 0xFFFFFFFFLL)
  {
    v14 = v36;
    v15 = v37;
    v16 = v38;
    v17 = v39;
    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    if (*(&v37 + 1) >> 62 == 1)
    {
      v33 = a1;
      v18 = 1 << *(v36 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v36 + 64);
      v21 = *(&v36 + 1);
      sub_1002DF8D8(v36, *(&v36 + 1), v37, *(&v37 + 1), v38, v39);
      v31 = v15;
      v32 = v21;
      v30 = v16;
      sub_1002DF8EC(v14, v21, v15, v13, v16, v17);
      v22 = 0;
      v23 = (v18 + 63) >> 6;
      while (v20)
      {
        v24 = v22;
LABEL_13:
        v25 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v26 = *(*(v14 + 48) + ((v24 << 9) | (8 * v25)));
        v27 = *&v26[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
        v28 = v26;
        v29 = [v27 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10005DC58(&qword_1005952D0, &qword_1004AF1D8);
        if (swift_dynamicCast())
        {
          [v34 invalidatedActiveTrafficRegistration:v33];
          swift_unknownObjectRelease();
        }

        v22 = v24;
      }

      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v24 >= v23)
        {

          sub_1002DF9AC(v14, v32, v31, v13, v30, v17);
          goto LABEL_16;
        }

        v20 = *(v14 + 64 + 8 * v24);
        ++v22;
        if (v20)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_16:
    sub_1002CF55C();
    sub_10000BCEC(v40, *(&v40 + 1), v41, *(&v41 + 1), v42, v43);
  }
}

double sub_1002D72FC(uint64_t a1)
{
  v3 = a1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  *&result = __chkstk_darwin().n128_u64[0];
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3)
  {
    v35 = v10;
    v36 = v9;
    v31 = v13;
    sub_10000B02C();
    v14 = swift_allocError();
    *v15 = xmmword_100481800;
    *(v15 + 16) = 1;
    swift_beginAccess();
    v33 = v5;
    v34 = v6;
    v17 = v4[10];
    v16 = v4[11];
    v18 = v4[13];
    v30 = v4[12];
    v32 = v8;
    v19 = v4[14];
    aBlock = v17;
    v38 = v16;
    v39 = v30;
    v40 = v18;
    v41 = v19;
    v20 = _s16P2PActivityStateOMa(0, &aBlock);
    v21 = sub_10000FEC8(a1, v14, 1, v20);
    swift_endAccess();

    sub_1002D72FC(v21);
    v22 = *OS_dispatch_queue.awdl.unsafeMutableAddressor();
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    *(v24 + 24) = v16;
    *(v24 + 32) = v30;
    *(v24 + 40) = v18;
    *(v24 + 48) = v19;
    *(v24 + 56) = v23;
    *(v24 + 64) = a1;
    v41 = sub_1002DF818;
    v42 = v24;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_10000C8B8;
    v40 = &unk_1005741A0;
    v25 = _Block_copy(&aBlock);
    v26 = v22;

    v27 = v31;
    static DispatchQoS.unspecified.getter();
    v43 = _swiftEmptyArrayStorage;
    sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10005DC58(&unk_100595270, &unk_1004AEC80);
    sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
    v28 = v32;
    v29 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v34 + 8))(v28, v29);
    (*(v35 + 8))(v27, v36);
  }

  return result;
}

double sub_1002D771C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a5;
  v48 = a7;
  v45 = a3;
  v46 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return result;
  }

  v41 = v14;
  v42 = v11;
  v43 = v10;
  v44 = a2;
  v19 = sub_10000EC3C(sub_10000DFFC);
  v39 = v15;
  v40 = v13;
  v38 = a6;
  if (a2 == 1)
  {
    if (v19)
    {
      sub_10044B904();
LABEL_7:
    }
  }

  else if (v19)
  {
    sub_10044BB18();
    goto LABEL_7;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v44;
    v23 = v44;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    if (v23 == 1)
    {
      v26 = 0x65646E6570737573;
    }

    else
    {
      v26 = 0x64656D75736572;
    }

    if (v23 == 1)
    {
      v27 = 0xE900000000000064;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    v28 = sub_100002320(v26, v27, aBlock);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Successfully %s P2P activity", v24, 0xCu);
    sub_100002A00(v25);
  }

  else
  {

    v22 = v44;
  }

  v29 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v30 = swift_allocObject();
  v31 = v46;
  *(v30 + 16) = v45;
  *(v30 + 24) = v31;
  v32 = v38;
  *(v30 + 32) = v47;
  *(v30 + 40) = v32;
  *(v30 + 48) = v48;
  *(v30 + 56) = a1;
  *(v30 + 64) = v22;
  *(v30 + 72) = 0;
  *(v30 + 80) = 0;
  aBlock[4] = sub_1002DF82C;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005741F0;
  v33 = _Block_copy(aBlock);
  v34 = v29;

  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  v35 = v40;
  v36 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  sub_10000EBB8(0, 0);

  (*(v42 + 8))(v35, v36);
  (*(v39 + 8))(v17, v41);

  return result;
}

double sub_1002D7D84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v19[0] = a5;
    v19[1] = a6;
    v19[2] = a7;
    v19[3] = a8;
    v19[4] = a9;
    v17 = _s16P2PActivityStateOMa(0, v19);
    v18 = sub_100010434(a2, a3, a4 & 1, v17);
    swift_endAccess();
    sub_1002D72FC(v18);
  }

  return result;
}

double sub_1002D7E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v9;
  v14 = *v9;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  swift_beginAccess();
  v16 = *(v13 + 112);

  v17 = *(v14 + 96);
  v21[0] = *(v14 + 80);
  v21[1] = v17;
  v22 = v16;
  v18 = _s16P2PActivityStateOMa(0, v21);
  v19 = a6(a1, a5, v15, 1, v18);
  swift_endAccess();

  return sub_1002D72FC(v19);
}

double sub_1002D7FAC(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 96);
  v9[0] = *(v3 + 80);
  v9[1] = v5;
  v10 = v4;
  _s16P2PActivityStateOMa(0, v9);
  sub_1002CEF74(a1, 0x69736E6570737573, 0xEA00000000006E6FLL);
  v7 = v6;
  swift_endAccess();
  return sub_1002D72FC(v7);
}

uint64_t sub_1002D809C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  swift_beginAccess();
  type metadata accessor for WiFiP2PSPITransactionType(0);
  v4 = *(v2 + 112);
  v5 = *(v3 + 96);
  v9[0] = *(v3 + 80);
  v9[1] = v5;
  v10 = v4;
  _s16P2PActivityStateOMa(0, v9);
  sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType, byte_1004AE430);
  NANBitmap.Channel.operatingClass.getter();
  *&v9[0] = v6;
  v7 = type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v7);
  *&v9[0] = Array.init<A>(_:)();
  sub_10005DC58(&qword_100595258, &unk_1004AF180);
  sub_10000CADC(&unk_100595260, &qword_100595258, &unk_1004AF180, &protocol conformance descriptor for [A]);
  Sequence.forEach(_:)();
}

void sub_1002D8288(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a2;
  v5 = *a1;
  v33 = *a1;
  v6 = swift_allocObject();
  *&v34[0] = 0;
  *(&v34[0] + 1) = 0xE000000000000000;
  v32 = v4[10];
  v6[2] = v32;
  v7 = v4[11];
  v6[3] = v7;
  v8 = v4[12];
  v6[4] = v8;
  v9 = v4[13];
  v6[5] = v9;
  v10 = v4[14];
  v6[6] = v10;
  v11._countAndFlagsBits = 0x746361736E617274;
  v11._object = 0xEC000000206E6F69;
  String.append(_:)(v11);
  v36 = v5;
  type metadata accessor for WiFiP2PSPITransactionType(0);
  sub_10000B48C(&qword_1005953B8, type metadata accessor for WiFiP2PSPITransactionType, protocol conformance descriptor for WiFiP2PSPITransactionType);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v30 = v34[0];
  v12 = qword_100594E48;
  swift_beginAccess();
  v13 = swift_allocObject();
  *&v14 = v32;
  *(&v14 + 1) = v7;
  *&v15 = v8;
  *(&v15 + 1) = v9;
  v28 = v15;
  v29 = v14;
  *(v13 + 16) = v14;
  *(v13 + 32) = v15;
  *(v13 + 48) = v10;
  *(v13 + 56) = sub_10000EC8C;
  *(v13 + 64) = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(a2 + v12);
  v17 = v37;
  *(a2 + v12) = 0x8000000000000000;
  sub_10000B8DC(v33);
  v19 = *(v17 + 16);
  v20 = (v18 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
  }

  else
  {
    v22 = v18;
    v34[0] = v29;
    v34[1] = v28;
    v35 = v10;
    _s16P2PActivityStateOMa(255, v34);
    sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType, byte_1004AE430);
    type metadata accessor for _NativeDictionary();
    v23 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v21);
    v24 = v37;
    if (!v23)
    {
      *(a2 + v12) = v37;
      if (v22)
      {
LABEL_8:
        sub_1002CEF74(a3, v30, *(&v30 + 1));
        v27 = v26;
        swift_endAccess();

        sub_10000C068(v33, v27);

        return;
      }

LABEL_7:
      (*(v13 + 56))(v34);
      v37 = v33;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_8;
    }

    sub_10000B8DC(v33);
    if ((v22 & 1) == (v25 & 1))
    {
      *(a2 + v12) = v24;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1002D860C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v1 + 96);
  v10[0] = *(v1 + 80);
  v10[1] = v3;
  v11 = v2;
  _s16P2PActivityStateOMa(0, v10);
  sub_1002CF55C();
  v5 = v4;
  swift_endAccess();
  sub_1002D72FC(v5);
  swift_beginAccess();
  sub_100018AB4(0, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
  NANBitmap.Channel.operatingClass.getter();
  v12 = v6;
  v7 = type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v7);
  v12 = Array.init<A>(_:)();
  sub_10005DC58(&unk_100595240, &qword_1004AF178);
  sub_10000CADC(&unk_10059B180, &unk_100595240, &qword_1004AF178, &protocol conformance descriptor for [A]);
  Sequence.forEach(_:)();

  swift_beginAccess();
  NANBitmap.Channel.operatingClass.getter();

  Array.init<A>(_:)();
  Sequence.forEach(_:)();

  swift_beginAccess();
  type metadata accessor for WiFiP2PSPITransactionType(0);
  sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType, byte_1004AE430);
  NANBitmap.Channel.operatingClass.getter();
  v8 = type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v8);
  Array.init<A>(_:)();
  sub_10005DC58(&qword_100595258, &unk_1004AF180);
  sub_10000CADC(&unk_100595260, &qword_100595258, &unk_1004AF180, &protocol conformance descriptor for [A]);
  Sequence.forEach(_:)();
}

void sub_1002D8A00(void **a1, void *a2)
{
  v3 = *a2;
  v30 = *a1;
  v4 = swift_allocObject();
  v5 = qword_100594E30;
  v6 = v3[10];
  v4[2] = v6;
  v7 = v3[11];
  v4[3] = v7;
  v8 = v3[12];
  v4[4] = v8;
  v9 = v3[13];
  v4[5] = v9;
  v10 = v3[14];
  v4[6] = v10;
  swift_beginAccess();
  v11 = swift_allocObject();
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v27 = v13;
  v28 = v12;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v10;
  *(v11 + 56) = sub_10000EC8C;
  *(v11 + 64) = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(a2 + v5);
  v15 = v33;
  v29 = v5;
  *(a2 + v5) = 0x8000000000000000;
  sub_1003E09E8(v30);
  v17 = v15[2];
  v18 = (v16 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
LABEL_8:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v16;
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v31[1] = v27;
  v31[0] = v28;
  v32 = v10;
  _s16P2PActivityStateOMa(255, v31);
  sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
  type metadata accessor for _NativeDictionary();
  v21 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v19);
  v22 = v33;
  if (v21)
  {
    sub_1003E09E8(v30);
    if ((v20 & 1) != (v23 & 1))
    {
      goto LABEL_8;
    }
  }

  *(a2 + v29) = v22;
  if ((v20 & 1) == 0)
  {
    (*(v11 + 56))(v31);
    v33 = v30;
    v24 = v30;
    _NativeDictionary._insert(at:key:value:)();
  }

  sub_1002CF55C();
  v26 = v25;
  swift_endAccess();
  sub_1002D18E4(v30, v26);
}

void sub_1002D8CE8(void **a1, void *a2)
{
  v3 = *a2;
  v30 = *a1;
  v4 = swift_allocObject();
  v5 = qword_100594E38;
  v6 = v3[10];
  v4[2] = v6;
  v7 = v3[11];
  v4[3] = v7;
  v8 = v3[12];
  v4[4] = v8;
  v9 = v3[13];
  v4[5] = v9;
  v10 = v3[14];
  v4[6] = v10;
  swift_beginAccess();
  v11 = swift_allocObject();
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v27 = v13;
  v28 = v12;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v10;
  *(v11 + 56) = sub_10000EC8C;
  *(v11 + 64) = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(a2 + v5);
  v15 = v33;
  v29 = v5;
  *(a2 + v5) = 0x8000000000000000;
  sub_1003E09E8(v30);
  v17 = v15[2];
  v18 = (v16 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
LABEL_8:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v16;
  sub_100018AB4(255, &qword_100595230, AWDLTrafficRegistrationConfiguration_ptr);
  v31[1] = v27;
  v31[0] = v28;
  v32 = v10;
  _s16P2PActivityStateOMa(255, v31);
  sub_1000472EC(&qword_100595238, &protocol conformance descriptor for NSObject);
  type metadata accessor for _NativeDictionary();
  v21 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v19);
  v22 = v33;
  if (v21)
  {
    sub_1003E09E8(v30);
    if ((v20 & 1) != (v23 & 1))
    {
      goto LABEL_8;
    }
  }

  *(a2 + v29) = v22;
  if ((v20 & 1) == 0)
  {
    (*(v11 + 56))(v31);
    v33 = v30;
    v24 = v30;
    _NativeDictionary._insert(at:key:value:)();
  }

  sub_1002CF55C();
  v26 = v25;
  swift_endAccess();
  sub_1002D3598(v30, v26, 0);
}

void sub_1002D8FD4(uint64_t *a1, void *a2)
{
  v3 = *a2;
  v29 = *a1;
  v4 = swift_allocObject();
  v5 = qword_100594E48;
  v6 = v3[10];
  v4[2] = v6;
  v7 = v3[11];
  v4[3] = v7;
  v8 = v3[12];
  v4[4] = v8;
  v9 = v3[13];
  v4[5] = v9;
  v10 = v3[14];
  v4[6] = v10;
  swift_beginAccess();
  v11 = swift_allocObject();
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v26 = v13;
  v27 = v12;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v10;
  *(v11 + 56) = sub_10000EC8C;
  *(v11 + 64) = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a2 + v5);
  v15 = v32;
  v28 = v5;
  *(a2 + v5) = 0x8000000000000000;
  sub_10000B8DC(v29);
  v17 = *(v15 + 16);
  v18 = (v16 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
LABEL_8:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v16;
  type metadata accessor for WiFiP2PSPITransactionType(255);
  v30[1] = v26;
  v30[0] = v27;
  v31 = v10;
  _s16P2PActivityStateOMa(255, v30);
  sub_10000B48C(&qword_100595250, type metadata accessor for WiFiP2PSPITransactionType, byte_1004AE430);
  type metadata accessor for _NativeDictionary();
  v21 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v19);
  v22 = v32;
  if (v21)
  {
    sub_10000B8DC(v29);
    if ((v20 & 1) != (v23 & 1))
    {
      goto LABEL_8;
    }
  }

  *(a2 + v28) = v22;
  if ((v20 & 1) == 0)
  {
    (*(v11 + 56))(v30);
    v32 = v29;
    _NativeDictionary._insert(at:key:value:)();
  }

  sub_1002CF55C();
  v25 = v24;
  swift_endAccess();
  sub_10000C068(v29, v25);
}

uint64_t sub_1002D92C0()
{
  v1 = qword_10059B858;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_weakDestroy();
  sub_1002E000C(v0 + qword_10059B870);

  sub_10000BCEC(*(v0 + qword_100594E40), *(v0 + qword_100594E40 + 8), *(v0 + qword_100594E40 + 16), *(v0 + qword_100594E40 + 24), *(v0 + qword_100594E40 + 32), *(v0 + qword_100594E40 + 40));

  return v0;
}

uint64_t sub_1002D93C0()
{
  sub_1002D92C0();

  return swift_deallocClassInstance();
}

double (*sub_1002D94CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6))(uint64_t a1)
{
  swift_unownedRetainStrong();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a3;
  v12[7] = a4;
  v13 = a6;

  sub_10001F89C(a3, a4);
  return sub_1002DFEB8;
}

double sub_1002D9574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  __chkstk_darwin();
  v27 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v29 = *(v15 - 8);
  v30 = v15;
  __chkstk_darwin();
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = a6;
  v19[8] = a7;
  v20 = a7;
  aBlock[4] = sub_1002DFEC8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100574790;
  v21 = _Block_copy(aBlock);
  v22 = v18;
  swift_errorRetain();

  v23 = a5;
  sub_10001F89C(a6, v20);
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10000B48C(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10000CADC(&qword_10058BCD0, &unk_100595270, &unk_1004AEC80, &protocol conformance descriptor for [A]);
  v25 = v27;
  v24 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v31 + 8))(v25, v24);
  (*(v29 + 8))(v17, v30);

  return result;
}

uint64_t sub_1002D98A0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, void *a5, void (*a6)(void))
{
  if (a1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (!a6)
    {
LABEL_4:
      sub_100010520(v6, v7);
      return sub_100010520(v8, v9);
    }

LABEL_3:
    a6();
    goto LABEL_4;
  }

  v13 = *a4;
  v47 = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = qword_10059B878;
  swift_beginAccess();
  v9 = swift_allocObject();
  v16 = v13[10];
  v9[2] = v16;
  v17 = v13[11];
  v9[3] = v17;
  v18 = v13[12];
  v9[4] = v18;
  v19 = v13[13];
  v9[5] = v19;
  v20 = v13[14];
  v9[6] = v20;
  v9[7] = sub_1002DFEDC;
  v46 = v14;
  v9[8] = v14;
  v21 = v15;

  v22 = a5;
  isUnique = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(a4 + v21);
  v23 = v51;
  *(a4 + v21) = 0x8000000000000000;
  v44 = v22;
  v41 = sub_10000B448(v22);
  v25 = v23[2];
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v29 = v24;
    capacity = v28;
    type metadata accessor for XPCSession(255);
    *&v30 = v16;
    *(&v30 + 1) = v17;
    *&v31 = v18;
    *(&v31 + 1) = v19;
    v48 = v30;
    v49 = v31;
    v50 = v20;
    _s22P2PActivityCoordinatorC25AirPlayActivityTranslatorVMa(255, &v48);
    sub_10000B48C(&unk_1005953A0, type metadata accessor for XPCSession, &protocol conformance descriptor for NSObject);
    type metadata accessor for _NativeDictionary();
    v32 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, capacity);
    v33 = v51;
    if (!v32)
    {
      v36 = v41;
      *(a4 + v21) = v51;
      if (v29)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v34 = sub_10000B448(v44);
    if ((v29 & 1) == (v35 & 1))
    {
      v36 = v34;
      *(a4 + v21) = v33;
      if (v29)
      {
LABEL_12:
        a2(v33[7] + 32 * v36);
        swift_endAccess();
        v8 = sub_1002DFF28;
        v6 = sub_1002DFEDC;
        a6 = v47;
        v7 = v46;
        if (!v47)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }

LABEL_11:
      *&v48 = (v9[7])();
      *(&v48 + 1) = v37;
      LOBYTE(v49) = v38 & 1;
      *(&v49 + 1) = v39;
      v51 = v44;
      v40 = v44;
      _NativeDictionary._insert(at:key:value:)();
      goto LABEL_12;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002D9BCC(void *a1, char a2, void (*a3)(void), NSObject *a4, void *a5)
{
  v6 = v5;
  v154 = a3;
  v155 = a4;
  v10 = type metadata accessor for Logger();
  v152 = *(v10 - 8);
  v153 = v10;
  __chkstk_darwin();
  v12 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v142 - v13;
  __chkstk_darwin();
  v151 = &v142 - v15;
  sub_100018AB4(0, &unk_100599030, WiFiMACAddress_ptr);
  v16 = [a1 peerAddress];
  v17 = [objc_opt_self() zeroAddress];
  v18 = static NSObject.== infix(_:_:)();

  if ((v18 & 1) == 0)
  {
    v33 = [a1 peerAddress];
    v34 = WiFiMACAddress.wifiAddress.getter();

    v35 = *(v6 + 24);
    v36 = *(v35 + 16);
    if (a2)
    {
      if (v36)
      {
        v37 = sub_100041DE8(v34 & 0xFFFFFFFFFFFFLL);
        if (v38)
        {
          v39 = *(*(v35 + 56) + 8 * v37);
          if ([a1 options] == v39)
          {
            v41 = *v6;
            v40 = *(v6 + 8);
            swift_unownedRetainStrong();
            v42 = v152;
            v43 = v153;
            (*(v152 + 16))(v14, v41 + qword_10059B858, v153);

            v44 = a1;
            swift_unownedRetain();
            v45 = v40;

            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.default.getter();
            swift_unownedRelease();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v156 = swift_slowAlloc();
              *v48 = 138412802;
              *(v48 + 4) = v45;
              *v49 = v45;
              *(v48 + 12) = 2080;
              v50 = v45;
              v51 = [v44 uniqueIdentifier];
              v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              LODWORD(v151) = v47;
              v54 = v53;

              v55 = sub_100002320(v52, v54, &v156);

              *(v48 + 14) = v55;
              *(v48 + 22) = 2080;
              v56 = WiFiAddress.description.getter(v34 & 0xFFFFFFFFFFFFLL);
              v58 = sub_100002320(v56, v57, &v156);

              *(v48 + 24) = v58;
              _os_log_impl(&_mh_execute_header, v46, v151, "%@ setting traffic registration for %s to %s but already exists, returning success", v48, 0x20u);
              sub_10000BB28(v49);

              swift_arrayDestroy();

              (*(v42 + 8))(v14, v153);
            }

            else
            {

              (*(v42 + 8))(v14, v43);
            }

            goto LABEL_24;
          }
        }
      }

      v151 = HIDWORD(v34);
      v152 = v34 >> 40;
      v72 = *v6;
      swift_unownedRetainStrong();
      v73 = *(v6 + 8);
      LODWORD(v153) = *(v6 + 16);
      v74 = swift_allocObject();
      v75 = a5[2];
      v76 = a5[3];
      *(v74 + 16) = v75;
      *(v74 + 24) = v76;
      v77 = a5[4];
      v78 = a5[5];
      *(v74 + 32) = v77;
      *(v74 + 40) = v78;
      v79 = a5[6];
      *(v74 + 48) = v79;
      *(v74 + 56) = v34;
      *(v74 + 58) = BYTE2(v34);
      *(v74 + 59) = BYTE3(v34);
      v80 = v152;
      *(v74 + 60) = v151;
      *(v74 + 61) = v80;
      *(v74 + 64) = a1;
      v139 = v78;
      v140 = v79;
      v137 = v76;
      v138 = v77;
      v136 = v75;
      v81 = sub_1002D94CC(sub_1002DFDA4, v74, v154, v155, v72, v73);
      v83 = v82;
      v84 = a1;

      sub_1002D4A9C(v84, v73, v81, v83);
    }

    else
    {
      if (!v36 || (sub_100041DE8(v34 & 0xFFFFFFFFFFFFLL), (v59 & 1) == 0))
      {
        v151 = v34;
        v86 = *v6;
        v85 = *(v6 + 8);
        swift_unownedRetainStrong();
        v88 = v152;
        v87 = v153;
        (*(v152 + 16))(v12, v86 + qword_10059B858, v153);

        v89 = a1;
        swift_unownedRetain();
        v90 = v85;

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();
        swift_unownedRelease();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          *v93 = 138412802;
          *(v93 + 4) = v90;
          *v94 = v90;
          *(v93 + 12) = 2080;
          v95 = v90;
          v96 = [v89 uniqueIdentifier];
          v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v99 = v98;

          v100 = sub_100002320(v97, v99, &v156);

          *(v93 + 14) = v100;
          *(v93 + 22) = 2080;
          v101 = WiFiAddress.description.getter(v151 & 0xFFFFFFFFFFFFLL);
          v103 = sub_100002320(v101, v102, &v156);

          *(v93 + 24) = v103;
          _os_log_impl(&_mh_execute_header, v91, v92, "%@ clearing traffic registration for %s to %s but does not exist, returning success", v93, 0x20u);
          sub_10000BB28(v94);

          swift_arrayDestroy();

          (*(v152 + 8))(v12, v153);
        }

        else
        {

          (*(v88 + 8))(v12, v87);
        }

        goto LABEL_24;
      }

      v151 = HIDWORD(v34);
      v152 = v34 >> 40;
      v60 = *v6;
      swift_unownedRetainStrong();
      v61 = *(v6 + 8);
      LODWORD(v153) = *(v6 + 16);
      v62 = swift_allocObject();
      v63 = a5[2];
      v64 = a5[3];
      *(v62 + 16) = v63;
      *(v62 + 24) = v64;
      v65 = a5[4];
      v66 = a5[5];
      *(v62 + 32) = v65;
      *(v62 + 40) = v66;
      v67 = a5[6];
      *(v62 + 48) = v67;
      *(v62 + 56) = v34;
      *(v62 + 58) = BYTE2(v34);
      *(v62 + 59) = BYTE3(v34);
      v68 = v152;
      *(v62 + 60) = v151;
      *(v62 + 61) = v68;
      v139 = v66;
      v140 = v67;
      v137 = v64;
      v138 = v65;
      v136 = v63;
      v69 = sub_1002D94CC(sub_1002E01F8, v62, v154, v155, v60, v61);
      v71 = v70;

      sub_1002D5690(a1, v61, v69, v71);
    }

    goto LABEL_16;
  }

  v19 = [a1 options];
  if (*(v6 + 16) == (v19 & 1))
  {
LABEL_24:
    v154(0);
    return;
  }

  v20 = *v6;
  v21 = *(v6 + 8);
  v22 = *(v6 + 24);
  if (v19)
  {
    v23 = swift_allocObject();
    v24 = a5[2];
    v25 = a5[3];
    *(v23 + 16) = v24;
    *(v23 + 24) = v25;
    v26 = a5[4];
    v27 = a5[5];
    *(v23 + 32) = v26;
    *(v23 + 40) = v27;
    v28 = a5[6];
    *(v23 + 48) = v28;
    *(v23 + 56) = 1;
    v139 = v27;
    v140 = v28;
    v137 = v25;
    v138 = v26;
    v136 = v24;
    v29 = sub_1002D94CC(sub_1002DFE5C, v23, v154, v155, v20, v21);
    v31 = v30;

    swift_unownedRetainStrong();
    v32 = swift_allocObject();
    *(v32 + 16) = v29;
    *(v32 + 24) = v31;

    sub_10000DC44(17, v21, sub_1002DFE68, v32);

LABEL_16:

    return;
  }

  v104 = swift_allocObject();
  v106 = a5[2];
  v105 = a5[3];
  *(v104 + 16) = v106;
  *(v104 + 24) = v105;
  v107 = a5[4];
  v108 = a5[5];
  *(v104 + 32) = v107;
  *(v104 + 40) = v108;
  v109 = a5[6];
  *(v104 + 48) = v109;
  *(v104 + 56) = 0;
  *(v104 + 64) = a1;
  v147 = v109;
  v140 = v109;
  v148 = v108;
  v139 = v108;
  v149 = v107;
  v138 = v107;
  v150 = v105;
  v136 = v106;
  v137 = v105;
  v110 = sub_1002D94CC(sub_1002DFE20, v104, v154, v155, v20, v21);
  v112 = v111;
  v113 = a1;

  swift_unownedRetainStrong();
  v114 = swift_allocObject();
  *(v114 + 16) = v110;
  *(v114 + 24) = v112;

  sub_10000B598(17, v21, sub_1002E01FC, v114);

  if (a2)
  {
    goto LABEL_16;
  }

  v146 = v112;
  v154 = v106;
  swift_unownedRetainStrong();
  v115 = v151;
  v116 = v152;
  v117 = v153;
  (*(v152 + 16))(v151, v20 + qword_10059B858, v153);
  swift_bridgeObjectRetain_n();
  swift_unownedRetain();
  v118 = v21;

  swift_unownedRetain();
  v119 = v118;

  swift_unownedRetain();
  v120 = v119;
  v121 = v113;

  swift_unownedRetain();
  v122 = v120;
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  swift_unownedRelease();

  v155 = v123;
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v144 = v124;
    v126 = v125;
    v127 = swift_slowAlloc();
    v143 = v127;
    v145 = swift_slowAlloc();
    v156 = v145;
    *v126 = 138412802;
    *(v126 + 4) = v122;
    *v127 = v122;
    *(v126 + 12) = 2080;
    v128 = v122;
    v129 = [v121 uniqueIdentifier];
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    v133 = sub_100002320(v130, v132, &v156);

    *(v126 + 14) = v133;
    *(v126 + 22) = 2048;
    v134 = *(v22 + 16);
    swift_unownedRelease();

    *(v126 + 24) = v134;
    swift_unownedRelease();

    v135 = v155;
    _os_log_impl(&_mh_execute_header, v155, v144, "%@ cleared %s with empty peer address, will clear all (%ld) registrations", v126, 0x20u);
    sub_10000BB28(v143);

    sub_100002A00(v145);

    (*(v116 + 8))(v151, v153);
  }

  else
  {
    swift_unownedRelease();

    swift_unownedRelease();

    (*(v116 + 8))(v115, v117);
  }

  __chkstk_darwin();
  v136 = v154;
  v137 = v150;
  v138 = v149;
  v139 = v148;
  v140 = v147;
  v141 = v6;
  sub_1004482A8(sub_1002DFE38, (&v142 - 8), v22);
  swift_unownedRelease();

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1002DA98C(uint64_t a1, char a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  v4 = [*(*(a1 + 8) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&qword_1005952D0, &qword_1004AF1D8);
  result = swift_dynamicCast();
  if (result)
  {
    [v6 invalidatedActiveTrafficRegistration:a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002DAA4C(uint64_t a1, void (*a2)(void))
{
  v3 = [objc_opt_self() convertError:a1];
  a2();
}

double sub_1002DAAC8(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = *(a1 + 1);
  v12 = AWDLTrafficRegistrationServiceAirPlay;
  v28 = a1[1];
  v29 = *a1;
  v27 = a1[2];
  v13 = WiFiAddress.apiAddress.getter(v29 | (v28 << 8) | (v27 << 16) | (v8 << 24) | (v9 << 32) | (v10 << 40));
  v14 = [objc_allocWithZone(AWDLTrafficRegistrationConfiguration) initWithUniqueIdentifier:v12 peerAddress:v13];

  v15 = a2[1];
  v16 = *&v15[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  v17 = v15;
  v18 = [v16 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_10005DC58(&qword_1005952D0, &qword_1004AF1D8);
  if (swift_dynamicCast())
  {
    [v35 invalidatedActiveTrafficRegistration:v14];
    swift_unknownObjectRelease();
  }

  [v14 setOptions:v11];
  v19 = *a2;
  swift_unownedRetainStrong();
  v20 = a2[1];
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = a7;
  *(v21 + 56) = v29;
  *(v21 + 57) = v28;
  *(v21 + 58) = v27;
  *(v21 + 59) = v8;
  *(v21 + 60) = v9;
  *(v21 + 61) = v10;
  v22 = sub_1002D94CC(sub_1002DFE84, v21, 0, 0, v19, v20);
  v24 = v23;
  v25 = v20;
  swift_unownedRetain();

  swift_unownedRelease();

  sub_1002D5690(v14, v25, v22, v24);

  return result;
}

Swift::Int sub_1002DAD60(uint64_t a1, uint64_t a2)
{
  result = sub_100041DE8(a2 & 0xFFFFFFFFFFFFLL);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(a1 + 24);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10046B8B8();
    }

    result = sub_10046840C(v5, v7);
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_1002DADD8()
{
}

id sub_1002DAE18()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v7 = *v6;
  *v5 = *v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v10 = *&v0[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];

    v11 = v0;
    v12 = v10;
    sub_1002D809C(v12);

    v13.receiver = v11;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DAFBC(uint64_t a1)
{
}

id sub_1002DB040()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_isaMask & *v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session;
    v13 = *&v1[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];

    v14 = v1;
    v15 = v13;
    sub_1002D6940(v15, &qword_100594E38, sub_1002DFFD4);

    v16 = *&v1[v12];

    v17 = v16;
    sub_1002D7FAC(v17);

    v18 = *&v1[v12];

    v19 = v18;
    sub_1002D6940(v19, &qword_100594E30, sub_1002DFFB8);

    v20 = *&v1[v12];
    v28 = v20;
    swift_beginAccess();
    type metadata accessor for XPCSession(255);
    v21 = *(v3 + 136);

    v22 = v20;
    v23 = *(v3 + 120);
    v25 = *(v3 + 104);
    v26 = v23;
    v27 = v21;
    _s22P2PActivityCoordinatorC25AirPlayActivityTranslatorVMa(255, &v25);
    sub_10000B48C(&unk_1005953A0, type metadata accessor for XPCSession, &protocol conformance descriptor for NSObject);
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    sub_1002DFF64(v25, *(&v25 + 1), v26, *(&v26 + 1));

    v24.receiver = v14;
    v24.super_class = ObjectType;
    return objc_msgSendSuper2(&v24, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002DB3A0(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v8) = a2;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v17)
  {
    v18 = [a1 peerAddress];
    v19 = WiFiMACAddress.wifiAddress.getter();

    v20 = WiFiAddress.zero.unsafeMutableAddressor();
    v21 = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v19 & 0xFFFFFFFFFFFFLL, *v20 | (*(v20 + 1) << 16));
    v22 = v5;
    v23 = a1;
    v24 = Logger.logObject.getter();
    if (v21)
    {
      v25 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v62 = a3;
        v28 = v27;
        v29 = swift_slowAlloc();
        v63 = a4;
        v65 = v29;
        *v26 = 138412802;
        v30 = *&v22[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
        *(v26 + 4) = v30;
        *v28 = v30;
        *(v26 + 12) = 2080;
        if (v8)
        {
          v31 = 0x6E69767265736572;
        }

        else
        {
          v31 = 0x7672657365726E75;
        }

        v64 = v8;
        if (v8)
        {
          v32 = 0xE900000000000067;
        }

        else
        {
          v32 = 0xEB00000000676E69;
        }

        v33 = v30;
        v34 = sub_100002320(v31, v32, &v65);

        *(v26 + 14) = v34;
        *(v26 + 22) = 2080;
        v35 = [v23 uniqueIdentifier];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = v8;
        LOBYTE(v8) = v64;
        v39 = sub_100002320(v38, v37, &v65);

        *(v26 + 24) = v39;
        _os_log_impl(&_mh_execute_header, v24, v25, "%@ %s traffic registrations for %s", v26, 0x20u);
        sub_10000BB28(v28);
        a3 = v62;

        swift_arrayDestroy();
        a4 = v63;
      }

      v40 = *&v22[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
      if (v8)
      {
        sub_1002D2B90(v23, v40, a3, a4);
      }

      else
      {
        sub_1002D2ED0(v23, v40, a3, a4);
      }
    }

    else
    {
      v41 = v8;
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v43 = 138413058;
        v46 = *&v22[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
        v65 = v45;
        *(v43 + 4) = v46;
        *v44 = v46;
        *(v43 + 12) = 2080;
        v47 = (v41 & 1) == 0;
        if (v41)
        {
          v48 = 0x65767265736572;
        }

        else
        {
          v48 = 0x7672657365726E75;
        }

        if (v47)
        {
          v49 = 0xE900000000000065;
        }

        else
        {
          v49 = 0xE700000000000000;
        }

        v50 = v46;
        v51 = sub_100002320(v48, v49, &v65);

        *(v43 + 14) = v51;
        *(v43 + 22) = 2080;
        v52 = [v23 uniqueIdentifier];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v56 = sub_100002320(v53, v55, &v65);

        *(v43 + 24) = v56;
        *(v43 + 32) = 2080;
        v57 = [v23 peerAddress];
        v58 = WiFiMACAddress.wifiAddress.getter();

        v59 = WiFiAddress.description.getter(v58 & 0xFFFFFFFFFFFFLL);
        v61 = sub_100002320(v59, v60, &v65);

        *(v43 + 34) = v61;
        _os_log_impl(&_mh_execute_header, v24, v42, "%@ incorrectly trying to %s traffic registrations for %s to a specific peer: %s", v43, 0x2Au);
        sub_10000BB28(v44);

        swift_arrayDestroy();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002DB974(uint64_t a1, uint64_t a2)
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

void sub_1002DB9D8(void *a1, int a2, void (*a3)(void), NSObject *a4)
{
  v81 = a2;
  v8 = (swift_isaMask & *v4);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v14 = *v13;
  *v12 = *v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v78 = v8;
  v80 = a3;
  v16 = a1;
  v17 = v4;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v79 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&v82 = v77;
    *v21 = 138413058;
    v23 = *(v17 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session);
    *(v21 + 4) = v23;
    *v22 = v23;
    *(v21 + 12) = 2080;
    if (v81)
    {
      v24 = 0x676E697472617473;
    }

    else
    {
      v24 = 0x676E6970706F7473;
    }

    v25 = v23;
    v26 = sub_100002320(v24, 0xE800000000000000, &v82);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v27 = [v16 uniqueIdentifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v16;
    v31 = v30;

    v32 = sub_100002320(v28, v31, &v82);
    v16 = v29;

    *(v21 + 24) = v32;
    *(v21 + 32) = 2080;
    v33 = [v29 peerAddress];
    v34 = WiFiMACAddress.wifiAddress.getter();

    v35 = WiFiAddress.description.getter(v34 & 0xFFFFFFFFFFFFLL);
    v37 = sub_100002320(v35, v36, &v82);

    *(v21 + 34) = v37;
    _os_log_impl(&_mh_execute_header, v18, v19, "%@ %s traffic registration for %s to %s", v21, 0x2Au);
    sub_10000BB28(v22);

    swift_arrayDestroy();

    a4 = v79;
  }

  v38 = [v16 uniqueIdentifier];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (([v16 legacyUpgradeRequired] & 1) == 0)
  {
LABEL_16:
    v68 = *(v17 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session);
    if (v81)
    {
      sub_1002D4A9C(v16, v68, v80, a4);
    }

    else
    {
      sub_1002D5690(v16, v68, v80, a4);
    }

    return;
  }

  v79 = a4;
  v44 = *(v17 + qword_100594FC0);
  v45 = *(v17 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session);
  v76 = v16;
  v77 = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = v17;
  v47 = qword_10059B878;
  swift_beginAccess();
  v48 = swift_allocObject();
  v49 = v78;
  v50 = v78[13];
  v48[2] = v50;
  v51 = v49[14];
  v48[3] = v51;
  v52 = v49[15];
  v48[4] = v52;
  v53 = v49[16];
  v48[5] = v53;
  v54 = v49[17];
  v48[6] = v54;
  v48[7] = sub_1002DFD9C;
  v78 = v46;
  v48[8] = v46;
  v55 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v44 + v47);
  v56 = v85;
  v75 = v44;
  *(v44 + v47) = 0x8000000000000000;
  v73 = sub_10000B448(v77);
  v58 = v56[2];
  v59 = (v57 & 1) == 0;
  v60 = v58 + v59;
  if (__OFADD__(v58, v59))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v61 = v57;
  type metadata accessor for XPCSession(255);
  *&v62 = v50;
  *(&v62 + 1) = v51;
  *&v63 = v52;
  *(&v63 + 1) = v53;
  v83 = v63;
  v82 = v62;
  v84 = v54;
  v64 = _s22P2PActivityCoordinatorC25AirPlayActivityTranslatorVMa(255, &v82);
  sub_10000B48C(&unk_1005953A0, type metadata accessor for XPCSession, &protocol conformance descriptor for NSObject);
  type metadata accessor for _NativeDictionary();
  v65 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v60);
  v66 = v85;
  if (v65)
  {
    sub_10000B448(v77);
    if ((v61 & 1) != (v67 & 1))
    {
      goto LABEL_24;
    }
  }

  *(v75 + v47) = v66;
  if ((v61 & 1) == 0)
  {
    *&v82 = (v48[7])();
    *(&v82 + 1) = v69;
    LOBYTE(v83) = v70 & 1;
    *(&v83 + 1) = v71;
    v85 = v77;
    v72 = v77;
    _NativeDictionary._insert(at:key:value:)();
  }

  sub_1002D9BCC(v76, v81 & 1, v80, v79, v64);
  swift_endAccess();
}

uint64_t sub_1002DC0D0(uint64_t a1)
{
  v1 = *(a1 + qword_100594FC0);
  v2 = *(a1 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session);
  swift_unownedRetain();
  v3 = v2;
  return v1;
}

double sub_1002DC168(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a1;
  a8(v15, a4, a7, v14);

  return result;
}

void sub_1002DC220(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v14)
  {
    v15 = v3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = a2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v34 = a3;
      v35 = v21;
      v22 = v21;
      *v18 = 138412546;
      v23 = *&v15[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
      *(v18 + 4) = v23;
      *v20 = v23;
      *(v18 + 12) = 2080;
      v24 = (a1 & 1) == 0;
      v25 = a1;
      if (a1)
      {
        v26 = 0x69646E6570737573;
      }

      else
      {
        v26 = 0x676E696D75736572;
      }

      if (v24)
      {
        v27 = 0xE800000000000000;
      }

      else
      {
        v27 = 0xEA0000000000676ELL;
      }

      v28 = v23;
      v29 = sub_100002320(v26, v27, &v35);

      *(v18 + 14) = v29;
      a1 = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "%@ %s AWDL", v18, 0x16u);
      sub_10000BB28(v20);
      a2 = v33;

      sub_100002A00(v22);
      a3 = v34;
    }

    if (a1)
    {
      v30 = &unk_100574480;
      v31 = sub_10000ECAC;
    }

    else
    {
      v30 = &unk_1005744A8;
      v31 = sub_10000B08C;
    }

    sub_1002D7E7C(*&v15[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session], a2, a3, v30, sub_1002E01F4, v31);
  }

  else
  {
    __break(1u);
  }
}

double sub_1002DC544(void *a1, int a2, char a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a1;
  sub_1002DC220(a3, sub_1002DFD94, v7);

  return result;
}

uint64_t sub_1002DC5D8(void (*a1)(uint64_t, void, __n128))
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v7 = *v6;
  *v5 = *v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v10 = sub_1002CF94C();
    sub_1002CE718(v10);
    v12 = v11;

    v13 = sub_100474CEC(v12);

    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = sub_100367684(*(v13 + 16), 0);
      v16 = sub_100315B74(&v24, v15 + 4, v14, v13);
      sub_1000E290C(v24);
      if (v16 == v14)
      {
LABEL_6:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = &_swiftEmptyDictionarySingleton;
        sub_1003E1E24(v15, 0xD000000000000023, 0x80000001004BEBB0, isUniquelyReferenced_nonNull_native);
        v18 = v24;

        v20 = sub_1002CE998(v19);

        v21 = swift_isUniquelyReferenced_nonNull_native();
        v24 = v18;
        sub_1003E1E24(v20, 0xD000000000000023, 0x80000001004BEBE0, v21);
        sub_10031D544(v24);
        v23 = v22;

        (a1)(v23, 0);
      }

      __break(1u);
    }

    v15 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

double sub_1002DC860(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v4;
  v5 = a1;
  sub_1002DC5D8(sub_1002DFD48);

  return result;
}

void sub_1002DC94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

char *sub_1002DC9F8(char *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v25 - v8;
  v10 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection;
  v11._countAndFlagsBits = 0xD000000000000014;
  v11._object = 0x80000001004BEB90;
  if (NSXPCConnection.has(entitlement:)(v11) && (v12 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PUIAgentXPCDelegate], objc_msgSend(*&a1[v10], "setRemoteObjectInterface:", v12), v12, v13 = objc_msgSend(*&a1[v10], "remoteObjectProxy"), _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_10005DC58(&qword_100595398, &qword_1004AF268), (swift_dynamicCast() & 1) != 0))
  {
    *(v2 + qword_1005950A8) = v25[1];
    swift_unknownObjectRetain();
    v14 = a1;
    Logger.init(subsystem:category:)();
    v15 = &OBJC_PROTOCOL___NSObject;
    v16 = sub_100303CDC(v14, v9, v15);

    (*(v5 + 16))(v7, &v16[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_logger], v4);
    v17 = v14;
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v17;
      *v22 = v17;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v19, v20, "%@ is now the current UI agent", v21, 0xCu);
      sub_10000BB28(v22);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v18;
}

id sub_1002DCDDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_logger, v3, v5);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = *&v8[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
    *(v11 + 4) = v13;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ is no longer the UI agent", v11, 0xCu);
    sub_10000BB28(v12);
  }

  (*(v4 + 8))(v7, v3);
  v16.receiver = v8;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_1002DD014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002DD050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 25);
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

uint64_t sub_1002DD09C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = -a2 << 8;
      *(result + 32) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002DD108(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 24) = *(result + 24) | (a2 << 62);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 3);
    *(result + 24) = xmmword_1004AECC0;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t sub_1002DD13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002DD178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1002DD1C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1002DD218(uint64_t a1, char *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = *(a1 + 16);
  v5 = a2;
  v6 = v5;
  v15 = v4;
  if (v4)
  {
    v14 = v5;
    sub_100018AB4(0, &qword_100599470, NSObject_ptr);
    v7 = 0;
    v8 = a1 + 56;
    while (1)
    {
      v9 = *(v8 - 16);
      v10 = *(v8 - 8);
      v11 = *(v8 - 24);
      sub_10000C060(v9, v10);
      v12 = static NSObject.== infix(_:_:)();

      sub_100010500(v9, v10);
      if (v12)
      {
        break;
      }

      ++v7;
      v8 += 32;
      if (v15 == v7)
      {
        v7 = 0;
        v6 = v14;
        goto LABEL_8;
      }
    }

    v6 = v14;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v7;
}

unint64_t sub_1002DD3A0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 6 * result;
  *v4 = a2;
  *(v4 + 2) = BYTE2(a2);
  *(v4 + 3) = BYTE3(a2);
  *(v4 + 4) = BYTE4(a2);
  *(v4 + 5) = BYTE5(a2);
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

unint64_t sub_1002DD414(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 6 * result;
  *v6 = a2;
  *(v6 + 2) = BYTE2(a2);
  *(v6 + 3) = BYTE3(a2);
  *(v6 + 4) = BYTE4(a2);
  *(v6 + 5) = BYTE5(a2);
  v7 = (a6[7] + 24 * result);
  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1002DD4C0(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 80 * result);
  v7 = a4[4];
  v6[3] = a4[3];
  v6[4] = v7;
  v8 = a4[2];
  v6[1] = a4[1];
  v6[2] = v8;
  *v6 = *a4;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_1002DD524(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1002DD568(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1002DD680(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1002E0034(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1002DD780(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6] - a1 + 8 * a1;
  *v10 = a2;
  *(v10 + 2) = BYTE2(a2);
  *(v10 + 3) = BYTE3(a2);
  *(v10 + 4) = BYTE4(a2);
  *(v10 + 5) = BYTE5(a2);
  *(v10 + 6) = BYTE6(a2);
  v11 = a4[7];
  v12 = a5(0);
  result = sub_1002E0034(a3, v11 + *(*(v12 - 8) + 72) * a1, a6);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1002DD860(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100029954(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1002DD924(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 6 * a1;
  *v7 = a2;
  *(v7 + 2) = BYTE2(a2);
  *(v7 + 3) = BYTE3(a2);
  *(v7 + 4) = BYTE4(a2);
  *(v7 + 5) = BYTE5(a2);
  v8 = a4[7];
  v9 = sub_10005DC58(&qword_100597400, &unk_1004B4D20);
  result = sub_1002DF868(a3, v8 + *(*(v9 - 8) + 72) * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1002DD9F4(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1002DDA3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for BrowseEndpoints(0);
  result = sub_1002E0034(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for BrowseEndpoints);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1002DDAE4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1002DDB9C(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3 & 1;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1002DDC3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_1002E0034(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_1002DDD88(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6] + 6 * a1;
  *v10 = a2;
  *(v10 + 2) = BYTE2(a2);
  *(v10 + 3) = BYTE3(a2);
  *(v10 + 4) = BYTE4(a2);
  *(v10 + 5) = BYTE5(a2);
  v11 = a4[7];
  v12 = a5(0);
  result = sub_1002E0034(a3, v11 + *(*(v12 - 8) + 72) * a1, a6);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1002DDE60(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(v6 + 17) = HIBYTE(a4);
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

void sub_1002DDEBC(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v5 = *a1;
  v6 = a2;
  v7 = sub_1002DD218(v5, v6);
  if (v2 || (v8 & 1) != 0)
  {
    goto LABEL_6;
  }

  v41 = a1;
  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v11 = (v5 + 16);
    v10 = *(v5 + 16);
    v47 = v7;
    if (v9 == v10)
    {
LABEL_6:

      return;
    }

    v46 = v6;
    v12 = 32 * v7 + 88;
    while (v9 < v10)
    {
      v50 = v9;
      v48 = v5;
      v49 = v12;
      v14 = v5 + v12;
      v16 = *(v5 + v12 - 24);
      v15 = *(v14 - 16);
      v17 = *(v14 - 8);
      sub_100018AB4(0, &qword_100599470, NSObject_ptr);
      v18 = v16;
      sub_10000C060(v15, v17);
      v19 = static NSObject.== infix(_:_:)();

      sub_100010500(v15, v17);
      if (v19)
      {
        v6 = v46;
        v13 = v49;
      }

      else
      {
        v20 = v47;
        if (v9 == v47)
        {
          v6 = v46;
          v13 = v49;
        }

        else
        {
          v21 = v5;
          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v47 >= *v11)
          {
            goto LABEL_24;
          }

          if (v9 >= *v11)
          {
            goto LABEL_25;
          }

          v45 = 4 * v47;
          v22 = v5 + 32 + 32 * v47;
          v23 = *(v22 + 8);
          v24 = *(v22 + 16);
          v25 = *(v22 + 24);
          v27 = *(v14 - 24);
          v26 = *(v14 - 16);
          v28 = *(v14 - 8);
          v29 = *(v48 + v49);
          v42 = *v22;
          v43 = v25;
          sub_10000C060(v23, v24);
          v30 = v27;
          sub_10000C060(v26, v28);
          v44 = v24;
          v31 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_10046EC34(v48);
          }

          v32 = &v21[v45];
          v33 = v21[v45 + 4];
          v34 = v21[v45 + 5];
          v35 = v21[v45 + 6];
          v36 = v21;
          v32[4] = v30;
          v32[5] = v26;
          v32[6] = v28;
          *(v32 + 56) = v29;

          v5 = v21;
          sub_100010500(v34, v35);
          v9 = v50;
          if (v50 >= v21[2])
          {
            goto LABEL_26;
          }

          v13 = v49;
          v37 = v36 + v49;
          v38 = *(v36 + v49 - 24);
          v39 = *(v36 + v49 - 16);
          v40 = *(v36 + v49 - 8);
          *(v37 - 3) = v42;
          *(v37 - 2) = v31;
          *(v37 - 1) = v44;
          *v37 = v43;

          sub_100010500(v39, v40);
          *v41 = v36;
          v20 = v47;
          v6 = v46;
        }

        v47 = v20 + 1;
      }

      ++v9;
      v11 = (v5 + 16);
      v10 = *(v5 + 16);
      v12 = v13 + 32;
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1002DE25C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_1005952D8, &unk_1004AF1E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    while (1)
    {
      v18 = v1;
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = v4[3];
      v9 = v4[4];
      v10 = v4[5];
      v11 = *(v4 + 1);

      result = sub_100041DE8(v5 | (v6 << 8) | (v7 << 16) | (v8 << 24) | (v9 << 32) | (v10 << 40));
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 6 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v14[4] = v9;
      v14[5] = v10;
      *(v3[7] + 8 * result) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 16;
      v1 = v18 - 1;
      if (v18 == 1)
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

unint64_t sub_1002DE3B4(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_1005952C0, qword_1004AF1C0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10005DC58(&qword_1005952C8, &unk_1004B4D40);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012400(v9, v5, &qword_1005952C0, qword_1004AF1C0);
      result = sub_10002A440(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1002DE59C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_100595390, &qword_1004AF260);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10000B8DC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1002DE67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_1005952A0, &qword_1004AF1A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10000B448(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_1002DE7CC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10005DC58(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_100085268(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 7);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_100085268(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002DE8CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_100595318, &qword_1004AF220);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 38); ; i += 8)
    {
      v5 = *(i - 6);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1003E09BC(v5 | (v6 << 32) | (v7 << 40));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 8 * result;
      *v11 = v5;
      *(v11 + 4) = v6;
      *(v11 + 5) = v7;
      *(v3[7] + result) = v8;
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

unint64_t sub_1002DE9CC(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_1005952A8, &qword_1004AF1A8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10005DC58(&unk_1005952B0, &unk_1004AF1B0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100012400(v9, v5, &qword_1005952A8, &qword_1004AF1A8);
      v11 = *v5;
      result = sub_1003E08F4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for NANAttribute(0);
      result = sub_1002E0034(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for NANAttribute);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1002DEBA4(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_1005953C0, &unk_1004AF270);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10005DC58(qword_1005953C8, &qword_1004B4E10);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100012400(v9, v5, &qword_1005953C0, &unk_1004AF270);
      v11 = *v5;
      result = sub_100085268(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for BrowseEndpoints(0);
      result = sub_1002E0034(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for BrowseEndpoints);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1002DED7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&unk_10059B220, &unk_1004B4DF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000102E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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