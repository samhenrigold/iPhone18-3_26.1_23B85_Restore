unint64_t sub_1011E97A4()
{
  result = qword_1016CB288;
  if (!qword_1016CB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB288);
  }

  return result;
}

uint64_t sub_1011E97F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011E9860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011E98C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1011E993C()
{
  result = qword_1016CB290;
  if (!qword_1016CB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB290);
  }

  return result;
}

id sub_1011E9A9C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MessagingSessionDelegateTrampoline();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1011E9B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MessagingSessionDelegateTrampoline();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC12searchpartyd34MessagingSessionDelegateTrampoline_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, "init");
}

void sub_1011E9B88()
{
  v1 = &v0[OBJC_IVAR____TtC12searchpartyd34MessagingSessionDelegateTrampoline_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C4F0);
    v5 = v0;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v6, "MessagingSessionDelegateTrampoline: No delegate for %@", v7, 0xCu);
      sub_100288C6C(v8);
    }
  }
}

void sub_1011E9D28(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC12searchpartyd34MessagingSessionDelegateTrampoline_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, a2, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177C4F0);
    v9 = v2;
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v9;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, oslog, v10, "MessagingSessionDelegateTrampoline: No delegate for %@", v11, 0xCu);
      sub_100288C6C(v12);
    }
  }
}

void sub_1011E9EEC()
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v0 connectDevice:isa];
}

void sub_1011E9F48(uint64_t a1)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 startPlayingSoundSequence:a1 onDevice:isa];
}

void sub_1011E9FB4()
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v0 startPlayingUnauthorizedSoundOnDevice:isa];
}

void sub_1011EA010(uint64_t a1)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 startPlayingUnauthorizedSoundSequence:a1 onDevice:isa];
}

void sub_1011EA07C()
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v0 stopPlayingSoundOnDevice:isa];
}

void sub_1011EA0D8()
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v0 unpairFromDevice:isa];
}

void sub_1011EA134(char a1)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 fetchUserStatsWithPersistence:a1 & 1 fromDevice:isa];
}

void sub_1011EA1A0()
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v0 fetchFirmwareVersionFromDevice:isa];
}

uint64_t sub_1011EA200()
{
  sub_1000BB27C(*(v0 + 112), *(v0 + 120));

  v1 = OBJC_IVAR____TtC12searchpartyd23UserSessionStateManager_state;
  v2 = type metadata accessor for UserSessionState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1011EA290@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd23UserSessionStateManager_state;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1011EA318(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_1011EAA64(a1);
}

uint64_t _s13FindMyPairing16UserSessionStateO12searchpartydE2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = __chkstk_darwin(v4);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v45 - v7;
  v8 = type metadata accessor for UserSessionState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = sub_1000BC4D4(&qword_1016CB4E0, &unk_10140D2B0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v45 - v16;
  v18 = &v45 + *(v15 + 56) - v16;
  v19 = *(v9 + 16);
  v19(&v45 - v16, a1, v8);
  v19(v18, a2, v8);
  v20 = *(v9 + 88);
  v21 = v20(v17, v8);
  v22 = v21;
  if (v21 != enum case for UserSessionState.pairingStarted(_:))
  {
    if (v21 != enum case for UserSessionState.accessoryConfigured(_:))
    {
      if (v21 == enum case for UserSessionState.idle(_:) && v20(v18, v8) == v21)
      {
        (*(v9 + 8))(v17, v8);
        v30 = 1;
        return v30 & 1;
      }

LABEL_13:
      sub_1011EB890(v17);
      v30 = 0;
      return v30 & 1;
    }

    v32 = v50;
    v48 = v17;
    v19(v50, v17, v8);
    v33 = v9;
    v34 = v32;
    v47 = v33;
    v35 = *(v33 + 96);
    v35(v34, v8);
    v36 = sub_1000BC4D4(&qword_1016B7E38, &qword_1013DDC58);
    v49 = *(v36 + 48);
    if (v20(v18, v8) == v22)
    {
      v35(v18, v8);
      v46 = *(v36 + 48);
      v37 = v52;
      v38 = v53;
      v39 = *(v53 + 32);
      v40 = v54;
      v39(v52, v34, v54);
      v41 = v34;
      v42 = v51;
      v39(v51, v18, v40);
      v30 = static UUID.== infix(_:_:)();
      v43 = *(v38 + 8);
      v43(v42, v40);
      v43(v37, v40);
      sub_100007BAC(&v18[v46]);
      sub_100007BAC(&v41[v49]);
      (*(v47 + 8))(v48, v8);
      return v30 & 1;
    }

    sub_100007BAC(&v34[v49]);
LABEL_12:
    (*(v53 + 8))(v34, v54);
    goto LABEL_13;
  }

  v19(v13, v17, v8);
  v23 = *(v9 + 96);
  v23(v13, v8);
  if (v20(v18, v8) != v22)
  {
    v34 = v13;
    goto LABEL_12;
  }

  v23(v18, v8);
  v25 = v53;
  v24 = v54;
  v26 = *(v53 + 32);
  v27 = v18;
  v28 = v52;
  v26(v52, v13, v54);
  v29 = v51;
  v26(v51, v27, v24);
  v30 = static UUID.== infix(_:_:)();
  v31 = *(v25 + 8);
  v31(v29, v24);
  v31(v28, v24);
  (*(v9 + 8))(v17, v8);
  return v30 & 1;
}

uint64_t type metadata accessor for UserSessionStateManager(uint64_t a1)
{
  result = qword_1016CB3B8;
  if (!qword_1016CB3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1011EA954(uint64_t a1)
{
  result = type metadata accessor for UserSessionState();
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

unint64_t sub_1011EAA0C()
{
  result = qword_1016CB4D8;
  if (!qword_1016CB4D8)
  {
    type metadata accessor for UserSessionStateManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB4D8);
  }

  return result;
}

uint64_t sub_1011EAA64(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = type metadata accessor for StateManagerError();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = sub_1000BC4D4(&qword_1016CB4E0, &unk_10140D2B0);
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for UserSessionState();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1011EABE0, v1, 0);
}

uint64_t sub_1011EABE0()
{
  v95 = v0;
  v1 = v0[34];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[22];
  v5 = v0[23];
  v6 = OBJC_IVAR____TtC12searchpartyd23UserSessionStateManager_state;
  swift_beginAccess();
  v92 = *(v3 + 16);
  v92(v1, v5 + v6, v2);
  LOBYTE(v4) = _s13FindMyPairing16UserSessionStateO12searchpartydE2eeoiySbAC_ACtFZ_0(v1, v4);
  v7 = *(v3 + 8);
  v0[35] = v7;
  v0[36] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (v4)
  {
    goto LABEL_31;
  }

  v90 = v7;
  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[28];
  v11 = v5;
  v12 = v0[22];
  v13 = v10 + *(v0[27] + 48);
  v91 = v11;
  v92(v10, v11 + v6, v8);
  v92(v13, v12, v8);
  v14 = *(v9 + 88);
  v15 = v14(v10, v8);
  v16 = enum case for UserSessionState.pairingStarted(_:);
  if (v15 == enum case for UserSessionState.pairingStarted(_:))
  {
    v17 = v14(v13, v0[29]);
    if (v17 == enum case for UserSessionState.accessoryConfigured(_:))
    {
      v18 = v0[29];
      v19 = v0[30];
      v20 = v0[28];
      v88 = v0[22];
      (*(v19 + 96))(v13, v18);
      v21 = *(sub_1000BC4D4(&qword_1016B7E38, &qword_1013DDC58) + 48);
      v22 = v91;
      swift_beginAccess();
      (*(v19 + 24))(v91 + v6, v88, v18);
      swift_endAccess();
      sub_100007BAC((v13 + v21));
      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 8))(v13, v23);
      v90(v20, v18);
      goto LABEL_10;
    }

    if (v17 == enum case for UserSessionState.idle(_:))
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v15 == enum case for UserSessionState.accessoryConfigured(_:))
  {
    v24 = v0[33];
    v25 = v0[29];
    v26 = v0[30];
    v92(v24, v0[28], v25);
    (*(v26 + 96))(v24, v25);
    v27 = *(sub_1000BC4D4(&qword_1016B7E38, &qword_1013DDC58) + 48);
    v28 = v14(v13, v25);
    LODWORD(v25) = enum case for UserSessionState.idle(_:);
    sub_100007BAC((v24 + v27));
    v29 = type metadata accessor for UUID();
    (*(*(v29 - 8) + 8))(v24, v29);
    if (v28 == v25)
    {
LABEL_9:
      v30 = v0[29];
      v31 = v0[30];
      v32 = v0[22];
      v90(v0[28], v30);
      v22 = v91;
      swift_beginAccess();
      (*(v31 + 24))(v91 + v6, v32, v30);
      swift_endAccess();
      goto LABEL_10;
    }

LABEL_21:
    v52 = v0[34];
    v53 = v0[29];
    v55 = v0[25];
    v54 = v0[26];
    v56 = v0[23];
    v89 = v0[24];
    v0[20] = 0;
    v0[21] = 0xE000000000000000;
    v92(v52, v91 + v6, v53);
    _print_unlocked<A, B>(_:_:)();
    v90(v52, v53);
    v57._countAndFlagsBits = 540945696;
    v57._object = 0xE400000000000000;
    String.append(_:)(v57);
    _print_unlocked<A, B>(_:_:)();
    v58._countAndFlagsBits = 46;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    v59 = v0[21];
    *v54 = v0[20];
    v54[1] = v59;
    (*(v55 + 104))(v54, enum case for StateManagerError.unsupportedTransition(_:), v89);
    swift_beginAccess();
    v60 = *(v56 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 128) = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_100A5D7CC(0, v60[2] + 1, 1, v60);
      *(v56 + 128) = v60;
    }

    v63 = v60[2];
    v62 = v60[3];
    if (v63 >= v62 >> 1)
    {
      v60 = sub_100A5D7CC((v62 > 1), v63 + 1, 1, v60);
    }

    v65 = v0[25];
    v64 = v0[26];
    v66 = v0[24];
    v60[2] = v63 + 1;
    (*(v65 + 32))(v60 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v63, v64, v66);
    *(v56 + 128) = v60;
    swift_endAccess();
    if (qword_101694D40 != -1)
    {
      swift_once();
    }

    v67 = v0[32];
    v68 = v0[29];
    v69 = v0[22];
    v70 = type metadata accessor for Logger();
    sub_1000076D4(v70, qword_10177BCD0);
    v92(v67, v69, v68);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = v0[34];
      v86 = v0[32];
      v74 = v0[29];
      v87 = v72;
      v75 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v75 = 136446466;
      v92(v73, v91 + v6, v74);
      v76 = String.init<A>(describing:)();
      v78 = sub_1000136BC(v76, v77, &v94);

      *(v75 + 4) = v78;
      *(v75 + 12) = 2082;
      v92(v73, v86, v74);
      v79 = String.init<A>(describing:)();
      v81 = v80;
      v90(v86, v74);
      v82 = sub_1000136BC(v79, v81, &v94);

      *(v75 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v71, v87, "Unsupported user session state transition: %{public}s -> %{public}s.", v75, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v83 = v0[32];
      v84 = v0[29];

      v90(v83, v84);
    }

    sub_1011EB890(v0[28]);
    goto LABEL_31;
  }

  if (v15 != enum case for UserSessionState.idle(_:) || v14(v13, v0[29]) != v16)
  {
    goto LABEL_21;
  }

  v48 = v0[29];
  v49 = v0[30];
  v50 = v0[28];
  v51 = v0[22];
  v22 = v91;
  swift_beginAccess();
  (*(v49 + 24))(v91 + v6, v51, v48);
  swift_endAccess();
  v90(v13, v48);
  v90(v50, v48);
LABEL_10:
  v33 = v0[23];
  v92(v0[31], v22 + v6, v0[29]);
  swift_beginAccess();
  v34 = *(v33 + 136);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *(v33 + 136) = v34;
  if ((v35 & 1) == 0)
  {
    v34 = sub_100A5EB34(0, v34[2] + 1, 1, v34);
    *(v33 + 136) = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_100A5EB34((v36 > 1), v37 + 1, 1, v34);
  }

  v39 = v0[30];
  v38 = v0[31];
  v40 = v0[29];
  v41 = v0[23];
  v34[2] = v37 + 1;
  (*(v39 + 32))(v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v37, v38, v40);
  *(v33 + 136) = v34;
  swift_endAccess();
  v42 = *(v41 + 112);
  v0[37] = v42;
  if (v42)
  {
    v43 = v0[34];
    v44 = v0[29];
    v0[38] = *(v0[23] + 120);
    v92(v43, v91 + v6, v44);

    v93 = (v42 + *v42);
    v45 = swift_task_alloc();
    v0[39] = v45;
    *v45 = v0;
    v45[1] = sub_1011EB658;
    v46 = v0[34];

    return v93(v46);
  }

LABEL_31:

  v85 = v0[1];

  return v85();
}

uint64_t sub_1011EB658()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v5 = *(*v0 + 232);
  v6 = *v0;

  sub_1000BB27C(v2, v1);
  v3(v4, v5);

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1011EB890(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016CB4E0, &unk_10140D2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1011EB8F8(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = (a2 >> 60) & 3;
  if (v3)
  {
    if (v3 != 1)
    {
      return 0x6669746E6564692ELL;
    }

    _StringGuts.grow(_:)(23);

    v9[0] = 0xD000000000000014;
    v9[1] = 0x800000010137DD00;
    if (v2)
    {
      if (v2 == 1)
      {
        v4 = 0x657470656363612ELL;
      }

      else
      {
        v4 = 0x656E696C6365642ELL;
      }

      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE800000000000000;
      v4 = 0x6E776F6E6B6E752ELL;
    }

    v6 = v5;
  }

  else
  {
    _StringGuts.grow(_:)(17);

    strcpy(v9, ".serialNumber(");
    HIBYTE(v9[1]) = -18;
    v4 = Data.description.getter();
  }

  String.append(_:)(*&v4);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return v9[0];
}

uint64_t sub_1011EBA70(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[15] = v4;
  v3[16] = v6;

  return _swift_task_switch(sub_1011EBB04, v4, v6);
}

uint64_t sub_1011EBB04()
{
  v0[17] = sub_1000BC4D4(&unk_1016C11A0, &qword_10138BF68);
  v0[18] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  sub_1000BC4D4(&qword_1016973D0, &qword_10138BF60);
  sub_1000041A4(&qword_1016CB5D8, &qword_1016973D0, &qword_10138BF60, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1011EBC30;
  v2 = v0[12];
  v3 = v0[13];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 8, v2, v3);
}

uint64_t sub_1011EBC30()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1011EBEB8;
  }

  else
  {
    (*(v2 + 144))();
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1011EBD58;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1011EBD58()
{
  v1 = *(v0 + 72);
  *(v0 + 57) = v1;
  if (v1 == 255)
  {
    v7 = *(v0 + 8);

    return v7(0);
  }

  else
  {
    v2 = *(v0 + 64);
    *(v0 + 160) = v2;
    *(v0 + 48) = v2;
    *(v0 + 56) = v1 & 1;
    v3 = AsyncCompactMapSequence.Iterator.transform.getter();
    *(v0 + 168) = v4;
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    *v5 = v0;
    v5[1] = sub_1011EBF2C;

    return v8(v0 + 88, v0 + 48);
  }
}

uint64_t sub_1011EBEB8()
{
  (*(v0 + 144))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011EBF2C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 57);

  sub_1011F1DB4(v2, v3);
  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return _swift_task_switch(sub_1011EC09C, v5, v4);
}

uint64_t sub_1011EC09C()
{
  if (v0[11])
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v0[17] = sub_1000BC4D4(&unk_1016C11A0, &qword_10138BF68);
    v0[18] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
    sub_1000BC4D4(&qword_1016973D0, &qword_10138BF60);
    sub_1000041A4(&qword_1016CB5D8, &qword_1016973D0, &qword_10138BF60, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_1011EBC30;
    v4 = v0[12];
    v5 = v0[13];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 8, v4, v5);
  }
}

uint64_t sub_1011EC20C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016973D0, &qword_10138BF60);
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016C11A0, &qword_10138BF68);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for ScanMode();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016C2160, &qword_10138BF78);
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v8 = type metadata accessor for MACAddress();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1011EC54C, v1, 0);
}

uint64_t sub_1011EC54C()
{
  v32 = v0;
  if (qword_101695498 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_1000076D4(v5, qword_1016CB4E8);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v13 = 136446210;
    sub_1011F1D6C(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting discovery scan for peripherals matching macAddress: %{public}s", v13, 0xCu);
    sub_100007BAC(v30);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[30] = v17;
  v0[31] = *(v0[3] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v19 = type metadata accessor for CentralManager.State();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v0[32] = v23;
  *(v23 + 16) = xmmword_10138BBE0;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, enum case for CentralManager.State.poweredOn(_:), v19);
  v25(v24 + v21, enum case for CentralManager.State.restricted(_:), v19);
  v26 = swift_task_alloc();
  v0[33] = v26;
  v27 = type metadata accessor for CentralManager();
  v28 = sub_1011F1D6C(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v26 = v0;
  v26[1] = sub_1011EC910;

  return CentralManagerProtocol.await(states:)(v23, v27, v28);
}

uint64_t sub_1011EC910()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1011EDCBC;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1011ECA38;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1011ECA38(uint64_t a1)
{
  v16 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000013, 0x800000010136FCF0, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = v1[17];
  v6 = v1[18];
  v8 = v1[16];
  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  Identifier.init(stringLiteral:)();
  *v6 = v9;
  (*(v7 + 104))(v6, enum case for ScanMode.serviceIdentifiers(_:), v8);
  v14 = &async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:) + async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:);
  v10 = swift_task_alloc();
  v1[35] = v10;
  *v10 = v1;
  v10[1] = sub_1011ECCE8;
  v11 = v1[22];
  v12 = v1[18];

  return (v14)(v11, v12, 0xD02AB486CEDC0000, 0);
}

uint64_t sub_1011ECCE8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 288) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1011EDDB0;
  }

  else
  {
    v7 = sub_1011ECE70;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1011ECE70()
{
  v1 = v0[4];
  (*(v0[20] + 16))(v0[21], v0[22], v0[19]);
  *(swift_allocObject() + 16) = v1;
  v0[37] = type metadata accessor for Peripheral();
  sub_1000041A4(&qword_1016973E0, &unk_1016C2160, &qword_10138BF78, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
  AsyncCompactMapSequence.init(_:transform:)();
  AsyncCompactMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v3 = sub_1011F1D6C(&qword_1016CB5C0, v2, type metadata accessor for AirPodsLEPeripheralProvider, &unk_10140D3B8);
  v0[38] = v3;
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1011ED094;

  return sub_1011EBA70(v4, v3);
}

uint64_t sub_1011ED094(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_1011EDE9C;
  }

  else
  {
    v6 = sub_1011ED1C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1011ED1C8(uint64_t a1)
{
  if (!v1[40])
  {
    (*(v1[11] + 8))(v1[12], v1[10]);
LABEL_7:
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Missing peripheral after scanning!", v11, 2u);
    }

    v12 = v1[22];
    v13 = v1[19];
    v14 = v1[20];
    v16 = v1[14];
    v15 = v1[15];
    v17 = v1[13];

    sub_1011F1C68();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v12, v13);

    v19 = v1[1];

    return v19();
  }

  if (static Task<>.isCancelled.getter())
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v1[11];
    v5 = v1[12];
    v7 = v1[10];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Task cancelled!", v8, 2u);
    }

    (*(v6 + 8))(v5, v7);
    goto LABEL_7;
  }

  v23 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v21 = swift_task_alloc();
  v1[42] = v21;
  *v21 = v1;
  v21[1] = sub_1011ED4E4;
  v22 = v1[2];

  return v23(v22);
}

uint64_t sub_1011ED4E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_1011EE16C;
  }

  else
  {
    v6 = sub_1011ED618;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1011ED618(uint64_t a1)
{
  v51 = v1;
  if (*(v1 + 344))
  {
    v3 = *(v1 + 56);
    v2 = *(v1 + 64);
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    Peripheral.id.getter();
    Peripheral.id.getter();
    v6 = static Identifier.== infix(_:_:)();

    v7 = *(v5 + 8);
    v7(v3, v4);
    v7(v2, v4);
    if (v6)
    {
      v8 = *(v1 + 176);
      v9 = *(v1 + 152);
      v10 = *(v1 + 160);
      v11 = *(v1 + 112);
      v12 = *(v1 + 120);
      v13 = *(v1 + 104);
      (*(*(v1 + 88) + 8))(*(v1 + 96), *(v1 + 80));
      (*(v11 + 8))(v12, v13);
      (*(v10 + 8))(v8, v9);

      v14 = *(v1 + 8);
      v15 = *(v1 + 320);

      return v14(v15);
    }

    else
    {

      v29 = *(v1 + 304);
      v30 = *(v1 + 24);
      v31 = swift_task_alloc();
      *(v1 + 312) = v31;
      *v31 = v1;
      v31[1] = sub_1011ED094;

      return sub_1011EBA70(v30, v29);
    }
  }

  else
  {
    (*(v1 + 224))(*(v1 + 200), *(v1 + 16), *(v1 + 184));
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v1 + 240);
    v21 = *(v1 + 200);
    v22 = *(v1 + 184);
    if (v19)
    {
      v49 = *(v1 + 240);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136446210;
      sub_1011F1D6C(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v49(v21, v22);
      v28 = sub_1000136BC(v25, v27, &v50);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "Missing peripheral for %{public}s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      v20(v21, v22);
    }

    sub_1011F1C68();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();

    (*(*(v1 + 88) + 8))(*(v1 + 96), *(v1 + 80));
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138543362;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Error during scan: %{public}@", v35, 0xCu);
      sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Missing peripheral after scanning!", v40, 2u);
    }

    v41 = *(v1 + 176);
    v42 = *(v1 + 152);
    v43 = *(v1 + 160);
    v45 = *(v1 + 112);
    v44 = *(v1 + 120);
    v46 = *(v1 + 104);

    swift_allocError();
    *v47 = 1;
    swift_willThrow();
    (*(v45 + 8))(v44, v46);
    (*(v43 + 8))(v41, v42);

    v48 = *(v1 + 8);

    return v48();
  }
}

uint64_t sub_1011EDCBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011EDDB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011EDE9C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error during scan: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Missing peripheral after scanning!", v8, 2u);
  }

  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[20];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];

  sub_1011F1C68();
  swift_allocError();
  *v15 = 1;
  swift_willThrow();
  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v9, v10);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1011EE16C()
{

  (*(v0[11] + 8))(v0[12], v0[10]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error during scan: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Missing peripheral after scanning!", v8, 2u);
  }

  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[20];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];

  sub_1011F1C68();
  swift_allocError();
  *v15 = 1;
  swift_willThrow();
  (*(v13 + 8))(v12, v14);
  (*(v11 + 8))(v9, v10);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1011EE444(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  *(v2 + 40) = *(a2 + 8);
  return _swift_task_switch(sub_1011EE470, 0, 0);
}

uint64_t sub_1011EE470()
{
  v15 = v0;
  if (*(v0 + 40))
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = qword_101695498;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016CB4E8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      *(v0 + 16) = v2;
      type metadata accessor for Peripheral();
      sub_1011F1D6C(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = sub_1000136BC(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Discovered peripheral: %s", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v1 = *(v0 + 32);
  }

  **(v0 + 24) = v1;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1011EE674(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  v2[18] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v2[23] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v2[24] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1011EE9A8, v1, 0);
}

uint64_t sub_1011EE9A8()
{
  v0[28] = *(v0[8] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[29] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = swift_task_alloc();
  v0[30] = v8;
  v9 = type metadata accessor for CentralManager();
  v10 = sub_1011F1D6C(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v8 = v0;
  v8[1] = sub_1011EEB90;

  return CentralManagerProtocol.await(states:)(v5, v9, v10);
}

uint64_t sub_1011EEB90()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_1011F04FC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1011EECB8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1011EECB8()
{
  v15 = v0;
  if (qword_101695498 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[32] = sub_1000076D4(v1, qword_1016CB4E8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000018, 0x800000010136FCD0, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v9 = swift_allocObject();
  v0[33] = v9;
  *(v9 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v10 = *(v7 + 8);
  v0[34] = v10;
  v0[35] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v13 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v11 = swift_task_alloc();
  v0[36] = v11;
  *v11 = v0;
  v11[1] = sub_1011EEF18;

  return v13(v9);
}

uint64_t sub_1011EEF18(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = sub_1011F05E0;
  }

  else
  {
    v6 = v3[8];

    v5 = sub_1011EF040;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011EF040()
{
  v43 = v0;
  v1 = v0[37];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v38 = v0[34];
      v26 = v0[27];
      v27 = v0[25];
      v29 = v0[10];
      v28 = v0[11];
      v41 = v0[9];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42[0] = v31;
      *v30 = 136446210;
      Peripheral.id.getter();
      Identifier.id.getter();
      v38(v26, v27);
      sub_1011F1D6C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v29 + 8))(v28, v41);
      v35 = sub_1000136BC(v32, v34, v42);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Missing peripheral for %{public}s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    sub_1011F1C68();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();

    v37 = v0[1];

    return v37();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[37] + 32);
  }

  v0[39] = v3;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42[0] = v7;
    *v6 = 136315138;
    v0[6] = v3;
    type metadata accessor for Peripheral();
    sub_1011F1D6C(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, v42);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connecting to peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = v0[24];
  v39 = v0[23];
  v12 = v0[19];
  v13 = v0[18];
  v14 = enum case for ConnectUseCase.findMyPair(_:);
  v15 = type metadata accessor for ConnectUseCase();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v11, v14, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[2] = v17;
  sub_1011F1D6C(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = type metadata accessor for LongTermKey();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v20 = type metadata accessor for Peripheral.Options();
  (*(*(v20 - 8) + 56))(v39, 0, 1, v20);
  v40 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
  v21 = swift_task_alloc();
  v0[40] = v21;
  *v21 = v0;
  v21[1] = sub_1011EF76C;
  v22 = v0[23];
  v23 = v0[24];

  return v40(v23, v22);
}

uint64_t sub_1011EF76C()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = v2[24];
  v4 = v2[23];
  v5 = v2[8];
  sub_10000B3A8(v4, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v3, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v6 = sub_1011F06C4;
  }

  else
  {
    v6 = sub_1011EF8F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1011EF8F0()
{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[39];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v0[5] = v3;
    type metadata accessor for Peripheral();
    sub_1011F1D6C(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connected to peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v12 = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
  v9 = swift_task_alloc();
  v0[42] = v9;
  *v9 = v0;
  v9[1] = sub_1011EFB0C;
  v10 = v0[17];

  return v12(v10);
}

uint64_t sub_1011EFB0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[43] = a1;
  v4[44] = v1;

  v5 = v3[17];
  v6 = v3[16];
  v7 = v3[15];
  v8 = v3[8];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_1011F07A8;
  }

  else
  {
    v9 = sub_1011EFC90;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1011EFC90(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy service", v4, 2u);
  }

  v1[45] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v8 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v5 = swift_task_alloc();
  v1[46] = v5;
  *v5 = v1;
  v5[1] = sub_1011EFDE0;
  v6 = v1[14];

  return v8(v6);
}

uint64_t sub_1011EFDE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  v5 = v3[14];
  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[8];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_1011F088C;
  }

  else
  {
    v9 = sub_1011EFF64;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1011EFF64()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[47];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v0[4] = v3;
    sub_1011F1D6C(&qword_1016CB5D0, 255, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Discovered Pairing characteristic %s.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v11 = (&async function pointer to dispatch thunk of Peripheral.pair() + async function pointer to dispatch thunk of Peripheral.pair());
  v9 = swift_task_alloc();
  v0[49] = v9;
  *v9 = v0;
  v9[1] = sub_1011F0148;

  return v11();
}

uint64_t sub_1011F0148()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1011F097C;
  }

  else
  {
    v4 = sub_1011F0274;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1011F0274()
{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[39];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v0[3] = v3;
    type metadata accessor for Peripheral();
    sub_1011F1D6C(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Paired peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = sub_1011F1D6C(&qword_1016972A8, 255, &type metadata accessor for Service, &protocol conformance descriptor for Service);

  v10 = v0[1];
  v11 = v0[43];

  return v10(v11, v9);
}

uint64_t sub_1011F04FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011F05E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011F06C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011F07A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011F088C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011F097C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011F0A78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E750, &unk_1013DC4B0);
  v2[7] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1011F0BD8, v1, 0);
}

uint64_t sub_1011F0BD8()
{
  v0[11] = *(v0[3] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[12] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = type metadata accessor for CentralManager();
  v10 = sub_1011F1D6C(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v8 = v0;
  v8[1] = sub_1011F0DC0;

  return CentralManagerProtocol.await(states:)(v5, v9, v10);
}

uint64_t sub_1011F0DC0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100C4C1D8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1011F0EE8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1011F0EE8()
{
  v15 = v0;
  if (qword_101695498 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[15] = sub_1000076D4(v1, qword_1016CB4E8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x5F28726961706E75, 0xEA0000000000293ALL, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v9 = swift_allocObject();
  v0[16] = v9;
  *(v9 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v10 = *(v7 + 8);
  v0[17] = v10;
  v0[18] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v13 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_1011F1148;

  return v13(v9);
}

uint64_t sub_1011F1148(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100C4C260;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_1011F1270;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011F1270()
{
  v26 = v0;
  v1 = v0[20];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v22 = v0[17];
      v10 = v0[10];
      v11 = v0[8];
      v13 = v0[5];
      v12 = v0[6];
      v24 = v0[4];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136446210;
      Peripheral.id.getter();
      Identifier.id.getter();
      v22(v10, v11);
      sub_1011F1D6C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v24);
      v19 = sub_1000136BC(v16, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing peripheral for %{public}s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    sub_1011F1C68();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[20] + 32);
  }

  v0[22] = v3;
  v4 = v0[7];

  v5 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v23 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection(options:) + async function pointer to dispatch thunk of Peripheral.cancelConnection(options:));
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_100C4BE4C;
  v7 = v0[7];

  return v23(v7);
}

uint64_t sub_1011F1718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AirPodsLEPeripheralProvider();
  *v8 = v4;
  v8[1] = sub_100014650;

  return PairingPeripheralProvider.getPeripheral(for:)(a1, a2, v9, a4);
}

uint64_t sub_1011F17DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF6A4;

  return sub_1011EC20C(a2);
}

uint64_t sub_1011F1874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for AirPodsLEPeripheralProvider();
  *v10 = v5;
  v10[1] = sub_100014744;

  return PairingPeripheralProvider.pair<A>(_:)(a1, a2, v11, a3, a5);
}

uint64_t sub_1011F1940(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF918;

  return sub_1011EE674(v3);
}

uint64_t sub_1011F19D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for AirPodsLEPeripheralProvider();
  *v6 = v3;
  v6[1] = sub_100014744;

  return PairingPeripheralProvider.unpair(_:)(a1, v7, a3);
}

uint64_t sub_1011F1A8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1011F0A78(v2);
}

uint64_t sub_1011F1B20()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177CD88);
  sub_1000076D4(v0, qword_10177CD88);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1011F1BA0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016CB4E8);
  v1 = sub_1000076D4(v0, qword_1016CB4E8);
  if (qword_101695490 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177CD88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1011F1C68()
{
  result = qword_1016CB5C8;
  if (!qword_1016CB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB5C8);
  }

  return result;
}

uint64_t sub_1011F1CBC(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_1011EE444(a1, a2);
}

uint64_t sub_1011F1D6C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1011F1DB4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_1011F1DDC()
{
  result = qword_1016CB5E0;
  if (!qword_1016CB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB5E0);
  }

  return result;
}

void *sub_1011F1E30(uint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = UUID.uuidString.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_101123BB8((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_10040BA00(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_10040BA00(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
  }

  return result;
}

id sub_1011F2168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObservationStoreBackendServiceTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1011F21D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for ObservedAdvertisement(0);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1011F226C, 0, 0);
}

uint64_t sub_1011F226C()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016A91B8, type metadata accessor for ObservedAdvertisement, &unk_101397E28);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v1 = (v0[4] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1011F249C;
  v5 = v0[8];

  return v7(v5, v2, v3);
}

uint64_t sub_1011F249C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1011F2640;
  }

  else
  {
    v2 = sub_1011F25B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011F25B0()
{
  v1 = *(v0 + 64);
  (*(v0 + 40))(0);
  sub_1011FC304(v1, type metadata accessor for ObservedAdvertisement);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1011F2640()
{
  sub_1011FC304(v0[8], type metadata accessor for ObservedAdvertisement);
  v1 = v0[10];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F2830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1011F2858, 0, 0);
}

uint64_t sub_1011F2858()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A91B0, &qword_1016A91B8, &unk_101397E28, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = v0[5];

  v2 = v0[2];
  v0[8] = v2;
  v3 = (v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  v8 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1011F2AB4;

  return v8(v2, v4, v5);
}

uint64_t sub_1011F2AB4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1011F2C40;
  }

  else
  {

    v2 = sub_1011F2BD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011F2BD0()
{
  (*(v0 + 48))(0, 0xF000000000000000, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011F2C40()
{

  v1 = v0[10];
  v2 = v0[6];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F2E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1011F2E44, 0, 0);
}

uint64_t sub_1011F2E44()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A91B0, &qword_1016A91B8, &unk_101397E28, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = v0[5];

  v2 = v0[2];
  v0[8] = v2;
  v3 = (v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  v8 = (*(v5 + 24) + **(v5 + 24));
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1011F30A0;

  return v8(v2, v4, v5);
}

uint64_t sub_1011F30A0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1011FC380;
  }

  else
  {

    v2 = sub_1011FC378;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011F32FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1011F3320, 0, 0);
}

uint64_t sub_1011F3320()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1011F3450;

  return v6(v2, v3);
}

uint64_t sub_1011F3450()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1011FC36C;
  }

  else
  {
    v2 = sub_1011FC37C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011F365C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 112) = a5;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  return _swift_task_switch(sub_1011F3688, 0, 0);
}

uint64_t sub_1011F3688()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A9220, &qword_1013BB1A0);
  sub_1011FBEE4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  *(v0 + 80) = v2;
  v3 = (v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  v10 = (*(v5 + 40) + **(v5 + 40));
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1011F38B4;
  v7 = *(v0 + 112);
  v8 = *(v0 + 56);

  return v10(v2, v8, v7, v4, v5);
}

uint64_t sub_1011F38B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1011F3B5C;
  }

  else
  {

    v4 = sub_1011F39D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011F39D0()
{
  v2 = v0[12];
  v1 = v0[13];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A9230, &qword_1016A9238, &unk_101397E00, &protocol conformance descriptor for <A> [A]);
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v5 = v0[8];
    swift_errorRetain();
    v5(0, 0xF000000000000000, v1);
  }

  else
  {
    v6 = v0[8];
    v7 = v3;
    v8 = v4;

    v6(v7, v8, 0);
    sub_100016590(v7, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1011F3B5C()
{

  v1 = v0[13];
  v2 = v0[8];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F3D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_1011F3D6C, 0, 0);
}

uint64_t sub_1011F3D6C()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91F0, &unk_1013BB160);
  sub_1011FBB30();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = v0[6];

  v2 = v0[2];
  v0[9] = v2;
  v3 = (v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  v8 = (*(v5 + 48) + **(v5 + 48));
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1011F3F90;

  return v8(v2, v4, v5);
}

uint64_t sub_1011F3F90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1011F4238;
  }

  else
  {

    v4 = sub_1011F40AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011F40AC()
{
  v2 = v0[11];
  v1 = v0[12];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A9230, &qword_1016A9238, &unk_101397E00, &protocol conformance descriptor for <A> [A]);
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v5 = v0[7];
    swift_errorRetain();
    v5(0, 0xF000000000000000, v1);
  }

  else
  {
    v6 = v0[7];
    v7 = v3;
    v8 = v4;

    v6(v7, v8, 0);
    sub_100016590(v7, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1011F4238()
{

  v1 = v0[12];
  v2 = v0[7];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F4414(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a4;
  *(v4 + 24) = a1;
  return _swift_task_switch(sub_1011F443C, 0, 0);
}

uint64_t sub_1011F443C()
{
  v1 = (v0[3] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v7 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1011F4570;
  v5.n128_u64[0] = v0[4];

  return v7(v2, v3, v5);
}

uint64_t sub_1011F4570(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1011F47FC;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_1011F4698;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011F4698()
{
  v1 = v0[8];
  v2 = sub_1011F1E30(v0[9]);

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v2;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1001E8254();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v5 = v0[5];
    swift_errorRetain();
    v5(0, 0xF000000000000000, v1);
  }

  else
  {
    v6 = v0[5];
    v7 = v3;
    v8 = v4;

    v6(v7, v8, 0);
    sub_100016590(v7, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1011F47FC()
{
  v1 = v0[8];
  v2 = v0[5];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_1011F49C4, 0, 0);
}

uint64_t sub_1011F49C4()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91F0, &unk_1013BB160);
  sub_1011FBB30();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = v0[6];

  v2 = v0[2];
  v0[9] = v2;
  v3 = (v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  v8 = (*(v5 + 64) + **(v5 + 64));
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1011F4BE8;

  return v8(v2, v4, v5);
}

uint64_t sub_1011F4BE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1011FC384;
  }

  else
  {

    v4 = sub_1011F4D04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011F4D04()
{
  v2 = v0[11];
  v1 = v0[12];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_1000BC4D4(&qword_1016A9200, &qword_10140D630);
  sub_1011FBBB4();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v5 = v0[7];
    swift_errorRetain();
    v5(0, 0xF000000000000000, v1);
  }

  else
  {
    v6 = v0[7];
    v7 = v3;
    v8 = v4;

    v6(v7, v8, 0);
    sub_100016590(v7, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1011F4F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = type metadata accessor for BeaconIdentifier(0);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1011F5034, 0, 0);
}

uint64_t sub_1011F5034()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier, &unk_1013BEF2C);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = v0[5];

  v2 = (v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  v8 = (*(v4 + 72) + **(v4 + 72));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1011F5274;
  v6 = v0[9];

  return v8(v6, v3, v4);
}

uint64_t sub_1011F5274(__int16 a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1011F5574;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1011F539C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011F539C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1000BC4D4(&qword_1016CB638, &qword_10140D600);
  v3 = swift_allocObject();
  *(v0 + 16) = v3;
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 32) = v1;
  *(v3 + 33) = HIBYTE(v1) & 1;
  sub_1000BC4D4(&qword_1016CB640, &unk_10140D608);
  sub_1011FB96C();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v6 = v2;
  v7 = *(v0 + 72);
  if (v6)
  {

    sub_1011FC304(v7, type metadata accessor for BeaconIdentifier);
    v8 = *(v0 + 48);
    swift_errorRetain();
    v8(0, 0xF000000000000000, v6);
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = v4;
    v11 = v5;

    v9(v10, v11, 0);
    sub_100016590(v10, v11);
    sub_1011FC304(v7, type metadata accessor for BeaconIdentifier);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1011F5574()
{
  sub_1011FC304(v0[9], type metadata accessor for BeaconIdentifier);
  v1 = v0[11];
  v2 = v0[6];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for ObservedAdvertisement(0);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for BeaconIdentifier(0);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_1011F589C, 0, 0);
}

uint64_t sub_1011F589C()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier, &unk_1013BEF2C);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = v0[5];

  v2 = (v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  v9 = (*(v4 + 80) + **(v4 + 80));
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1011F5AF8;
  v6 = v0[13];
  v7 = v0[8];

  return v9(v7, v6, v3, v4);
}

uint64_t sub_1011F5AF8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1011F5EB8;
  }

  else
  {
    v2 = sub_1011F5C0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011F5C0C()
{
  v1 = v0[10];
  v2 = v0[8];
  if ((*(v1 + 48))(v2, 1, v0[9]) == 1)
  {
    sub_10000B3A8(v2, &unk_10169BB50, &unk_101395760);
    v3 = _swiftEmptyArrayStorage;
  }

  else
  {
    v4 = v0[11];
    sub_1011FB848(v2, v4, type metadata accessor for ObservedAdvertisement);
    sub_1000BC4D4(&qword_1016B3C98, &qword_1013D4A20);
    v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_101385D80;
    sub_1011FB848(v4, v3 + v5, type metadata accessor for ObservedAdvertisement);
  }

  v6 = v0[15];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v3;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A9230, &qword_1016A9238, &unk_101397E00, &protocol conformance descriptor for <A> [A]);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v9 = v6;
  v10 = v0[13];
  if (v9)
  {

    sub_1011FC304(v10, type metadata accessor for BeaconIdentifier);
    v11 = v0[6];
    swift_errorRetain();
    v11(0, 0xF000000000000000, v9);
  }

  else
  {
    v12 = v0[6];
    v13 = v7;
    v14 = v8;

    v12(v13, v14, 0);
    sub_100016590(v13, v14);
    sub_1011FC304(v10, type metadata accessor for BeaconIdentifier);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1011F5EB8()
{
  sub_1011FC304(v0[13], type metadata accessor for BeaconIdentifier);
  v1 = v0[15];
  v2 = v0[6];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F60C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1011F60EC, 0, 0);
}

uint64_t sub_1011F60EC()
{
  v1 = (v0[3] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v7 = (*(v3 + 88) + **(v3 + 88));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1011F6224;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_1011F6224(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1011F64C4;
  }

  else
  {
    v4 = sub_1011F6338;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011F6338()
{
  v2 = v0[8];
  v1 = v0[9];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v2;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A9230, &qword_1016A9238, &unk_101397E00, &protocol conformance descriptor for <A> [A]);
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v5 = v0[5];
    swift_errorRetain();
    v5(0, 0xF000000000000000, v1);
  }

  else
  {
    v6 = v0[5];
    v7 = v3;
    v8 = v4;

    v6(v7, v8, 0);
    sub_100016590(v7, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1011F64C4()
{
  v1 = v0[9];
  v2 = v0[5];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F6660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v7[9] = swift_task_alloc();
  v8 = type metadata accessor for DeviceEvent(0);
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = type metadata accessor for BeaconIdentifier(0);
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_1011F6794, 0, 0);
}

uint64_t sub_1011F6794()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier, &unk_1013BEF2C);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v1 = v0[4];
  if (v1)
  {
    v2 = sub_100513050([v1 unsignedIntValue]);
  }

  else
  {
    v2 = 8;
  }

  v3 = (v0[5] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  v11 = (*(v5 + 160) + **(v5 + 160));
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1011F6A18;
  v7 = v0[14];
  v8 = v0[9];
  v9 = v0[6];

  return v11(v8, v7, v2, v9, v4, v5);
}

uint64_t sub_1011F6A18()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1011F6DA0;
  }

  else
  {
    v2 = sub_1011F6B2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011F6B2C()
{
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    v2 = v0[14];
    v3 = v0[7];
    sub_10000B3A8(v1, &unk_1016AA500, &unk_1013B3600);
    v3(0, 0xF000000000000000, 0);
    v4 = v2;
  }

  else
  {
    v5 = v0[16];
    sub_1011FB848(v1, v0[12], type metadata accessor for DeviceEvent);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1011FC0FC(&qword_1016A9130, type metadata accessor for DeviceEvent, &unk_1013F0AF8);
    v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v8 = v7;

    if (v5)
    {
      sub_1011FC304(v0[12], type metadata accessor for DeviceEvent);
      sub_1011FC304(v0[14], type metadata accessor for BeaconIdentifier);
      v9 = v0[7];
      swift_errorRetain();
      v9(0, 0xF000000000000000, v5);

      goto LABEL_7;
    }

    v10 = v0[14];
    v11 = v0[12];
    (v0[7])(v6, v8, 0);
    sub_100016590(v6, v8);
    sub_1011FC304(v11, type metadata accessor for DeviceEvent);
    v4 = v10;
  }

  sub_1011FC304(v4, type metadata accessor for BeaconIdentifier);
LABEL_7:

  v12 = v0[1];

  return v12();
}

uint64_t sub_1011F6DA0()
{
  v1 = v0[16];
  sub_1011FC304(v0[14], type metadata accessor for BeaconIdentifier);
  v2 = v0[7];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F7164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_1000BC4D4(&qword_1016CB628, &qword_10140D5A8);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for AttachedAccessoryEventsTransport(0);
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for BeaconIdentifier(0);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_1011F7294, 0, 0);
}

uint64_t sub_1011F7294()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier, &unk_1013BEF2C);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v1 = (v0[4] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v9 = (*(v3 + 168) + **(v3 + 168));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1011F74EC;
  v5 = v0[13];
  v6 = v0[8];
  v7 = v0[5];

  return v9(v6, v5, v7, v2, v3);
}

uint64_t sub_1011F74EC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1011F7874;
  }

  else
  {
    v2 = sub_1011F7600;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011F7600()
{
  v1 = v0[8];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v2 = v0[13];
    v3 = v0[6];
    sub_10000B3A8(v1, &qword_1016CB628, &qword_10140D5A8);
    v3(0, 0xF000000000000000, 0);
    v4 = v2;
  }

  else
  {
    v5 = v0[15];
    sub_1011FB848(v1, v0[11], type metadata accessor for AttachedAccessoryEventsTransport);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1011FC0FC(&qword_1016CB630, type metadata accessor for AttachedAccessoryEventsTransport, &unk_1013BB268);
    v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v8 = v7;

    if (v5)
    {
      sub_1011FC304(v0[11], type metadata accessor for AttachedAccessoryEventsTransport);
      sub_1011FC304(v0[13], type metadata accessor for BeaconIdentifier);
      v9 = v0[6];
      swift_errorRetain();
      v9(0, 0xF000000000000000, v5);

      goto LABEL_7;
    }

    v10 = v0[13];
    v11 = v0[11];
    (v0[6])(v6, v8, 0);
    sub_100016590(v6, v8);
    sub_1011FC304(v11, type metadata accessor for AttachedAccessoryEventsTransport);
    v4 = v10;
  }

  sub_1011FC304(v4, type metadata accessor for BeaconIdentifier);
LABEL_7:

  v12 = v0[1];

  return v12();
}

uint64_t sub_1011F7874()
{
  v1 = v0[15];
  sub_1011FC304(v0[13], type metadata accessor for BeaconIdentifier);
  v2 = v0[6];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F7C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for DeviceEvent(0);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1011F7CA0, 0, 0);
}

uint64_t sub_1011F7CA0()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016A9150, type metadata accessor for DeviceEvent, &unk_1013F0B20);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v1 = (v0[4] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v7 = (*(v3 + 176) + **(v3 + 176));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1011F7ED0;
  v5 = v0[8];

  return v7(v5, v2, v3);
}

uint64_t sub_1011F7ED0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1011F8074;
  }

  else
  {
    v2 = sub_1011F7FE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011F7FE4()
{
  v1 = *(v0 + 64);
  (*(v0 + 40))(0);
  sub_1011FC304(v1, type metadata accessor for DeviceEvent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1011F8074()
{
  sub_1011FC304(v0[8], type metadata accessor for DeviceEvent);
  v1 = v0[10];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F8264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1011F8288, 0, 0);
}

uint64_t sub_1011F8288()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v6 = (*(v3 + 112) + **(v3 + 112));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1011F83B8;

  return v6(v2, v3);
}

uint64_t sub_1011F83B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1011F854C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1011F84E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011F84E0()
{
  (*(v0 + 24))(*(v0 + 56), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011F854C()
{
  v1 = v0[6];
  v2 = v0[3];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F86D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1011F86F8, 0, 0);
}

uint64_t sub_1011F86F8()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v6 = (*(v3 + 96) + **(v3 + 96));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1011F8828;

  return v6(v2, v3);
}

uint64_t sub_1011F8828()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1011F89AC;
  }

  else
  {
    v2 = sub_1011F893C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011F893C()
{
  (*(v0 + 24))(0, 0xF000000000000000, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1011F89AC()
{
  v1 = v0[6];
  v2 = v0[3];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F8B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1011F8B5C, 0, 0);
}

uint64_t sub_1011F8B5C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v6 = (*(v3 + 104) + **(v3 + 104));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1011F8C8C;

  return v6(v2, v3);
}

uint64_t sub_1011F8C8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1011FC370;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1011FC364;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011F8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for KeySyncMetadata(0);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1011F8F48, 0, 0);
}

uint64_t sub_1011F8F48()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016A9188, type metadata accessor for KeySyncMetadata, &unk_1013CC6A8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v1 = (v0[4] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v7 = (*(v3 + 120) + **(v3 + 120));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1011F9178;
  v5 = v0[8];

  return v7(v5, v2, v3);
}

uint64_t sub_1011F9178()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1011F931C;
  }

  else
  {
    v2 = sub_1011F928C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011F928C()
{
  v1 = *(v0 + 64);
  (*(v0 + 40))(0);
  sub_1011FC304(v1, type metadata accessor for KeySyncMetadata);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1011F931C()
{
  sub_1011FC304(v0[8], type metadata accessor for KeySyncMetadata);
  v1 = v0[10];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011F950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1011F9530, 0, 0);
}

uint64_t sub_1011F9530()
{
  v1 = (v0[3] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v7 = (*(v3 + 128) + **(v3 + 128));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1011F9668;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_1011F9668(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1011FC374;
  }

  else
  {
    v4 = sub_1011F977C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011F977C()
{
  v2 = v0[8];
  v1 = v0[9];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v2;
  sub_1000BC4D4(&qword_1016A9170, &qword_1013BB0E8);
  sub_1011FAE94();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v5 = v0[5];
    swift_errorRetain();
    v5(0, 0xF000000000000000, v1);
  }

  else
  {
    v6 = v0[5];
    v7 = v3;
    v8 = v4;

    v6(v7, v8, 0);
    sub_100016590(v7, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1011F9AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return _swift_task_switch(sub_1011F9B18, 0, 0);
}

uint64_t sub_1011F9B18()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A9158, &qword_1013BB0E0);
  sub_1011FAE10();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = v0[6];

  v2 = v0[2];
  v0[10] = v2;
  v3 = (v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  v9 = (*(v5 + 136) + **(v5 + 136));
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1011F9D44;
  v7 = v0[7];

  return v9(v7, v2, v4, v5);
}

uint64_t sub_1011F9D44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1011FC388;
  }

  else
  {

    v4 = sub_1011F9E60;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011F9E60()
{
  v2 = v0[12];
  v1 = v0[13];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_1000BC4D4(&qword_1016A9170, &qword_1013BB0E8);
  sub_1011FAE94();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v5 = v0[8];
    swift_errorRetain();
    v5(0, 0xF000000000000000, v1);
  }

  else
  {
    v6 = v0[8];
    v7 = v3;
    v8 = v4;

    v6(v7, v8, 0);
    sub_100016590(v7, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1011FA21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1011FA240, 0, 0);
}

uint64_t sub_1011FA240()
{
  v1 = (v0[2] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v7 = (*(v3 + 144) + **(v3 + 144));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1011FA378;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_1011FA378()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1011FA48C;
  }

  else
  {
    v2 = sub_100A7327C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011FA48C()
{
  v1 = v0[7];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011FA738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1011FA75C, 0, 0);
}

uint64_t sub_1011FA75C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v6 = (*(v3 + 152) + **(v3 + 152));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1011FA88C;

  return v6(v2, v3);
}

uint64_t sub_1011FA88C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1011FA9A0;
  }

  else
  {
    v2 = sub_100A735C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011FA9A0()
{
  v1 = v0[6];
  v2 = v0[3];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1011FAB24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1011FA738(v2, v3, v4);
}

uint64_t sub_1011FABCC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1011FA21C(v4, v0 + v3, v6, v7);
}

uint64_t sub_1011FACE4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_1011F9AF0(v4, v5, v6, v0 + v3, v8, v9);
}

unint64_t sub_1011FAE10()
{
  result = qword_1016CB618;
  if (!qword_1016CB618)
  {
    sub_1000BC580(&qword_1016A9158, &qword_1013BB0E0);
    sub_100993A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB618);
  }

  return result;
}

unint64_t sub_1011FAE94()
{
  result = qword_1016CB620;
  if (!qword_1016CB620)
  {
    sub_1000BC580(&qword_1016A9170, &qword_1013BB0E8);
    sub_1011FC0FC(&qword_1016A9190, type metadata accessor for KeySyncMetadata, &unk_1013CC680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB620);
  }

  return result;
}

uint64_t sub_1011FAF48()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1011F950C(v4, v0 + v3, v6, v7);
}

uint64_t sub_1011FB060()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1011F8EAC(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FB11C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1011F8B38(v2, v3, v4);
}

uint64_t sub_1011FB1C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1011F86D4(v2, v3, v4);
}

uint64_t sub_1011FB26C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1011F8264(v2, v3, v4);
}

uint64_t sub_1011FB314()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1011F7C04(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FB3D0()
{
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_1011F7164(v4, v5, v6, v0 + v3, v8, v9);
}

uint64_t sub_1011FB508()
{
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_1011F6660(v4, v5, v6, v7, v0 + v3, v9, v10);
}

uint64_t sub_1011FB644()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1011F60C8(v2, v3, v5, v4);
}

uint64_t sub_1011FB6F0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A91A0, &qword_1013BB108);
    sub_1011FC0FC(a2, type metadata accessor for ObservedAdvertisement, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1011FB78C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1011F576C(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FB848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011FB8B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1011F4F98(v2, v3, v4, v5, v6);
}

unint64_t sub_1011FB96C()
{
  result = qword_1016CB648;
  if (!qword_1016CB648)
  {
    sub_1000BC580(&qword_1016CB640, &unk_10140D608);
    sub_1011FB9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB648);
  }

  return result;
}

unint64_t sub_1011FB9F0()
{
  result = qword_1016CB650;
  if (!qword_1016CB650)
  {
    sub_1000BC580(&qword_1016A91D0, &qword_1013BB140);
    sub_10028E9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB650);
  }

  return result;
}

uint64_t sub_1011FBA74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1011F499C(v2, v3, v4, v5, v6);
}

unint64_t sub_1011FBB30()
{
  result = qword_1016CB658;
  if (!qword_1016CB658)
  {
    sub_1000BC580(&qword_1016A91F0, &unk_1013BB160);
    sub_10028E7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB658);
  }

  return result;
}

unint64_t sub_1011FBBB4()
{
  result = qword_1016CB660;
  if (!qword_1016CB660)
  {
    sub_1000BC580(&qword_1016A9200, &qword_10140D630);
    sub_1011FC0FC(&qword_10169C770, type metadata accessor for ObservedAdvertisement.Location, &unk_101397C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB660);
  }

  return result;
}

uint64_t sub_1011FBC68()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1011FBCA8()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1011F4414(v2, v5, v4, v3);
}

uint64_t sub_1011FBD58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1011F3D44(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FBE14()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_1011F365C(v2, v3, v4, v5, v6, v8, v7);
}

unint64_t sub_1011FBEE4()
{
  result = qword_1016CB668;
  if (!qword_1016CB668)
  {
    sub_1000BC580(&qword_1016A9220, &qword_1013BB1A0);
    sub_1011FC0FC(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier, &unk_1013BEF2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB668);
  }

  return result;
}

uint64_t sub_1011FBF98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1011F32FC(v2, v3, v4);
}

uint64_t sub_1011FC040()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1011F2E1C(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FC0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1011FC144()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1011F2830(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FC200()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1011FC248()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1011F21D0(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FC304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011FC38C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 200) = a2;
  *(v4 + 208) = a4;
  *(v4 + 1496) = a3;
  *(v4 + 192) = a1;
  v5 = type metadata accessor for CentralManager.Error();
  *(v4 + 216) = v5;
  *(v4 + 224) = *(v5 - 8);
  *(v4 + 232) = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 240) = v6;
  *(v4 + 248) = *(v6 - 8);
  *(v4 + 256) = swift_task_alloc();
  v7 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  *(v4 + 264) = v7;
  *(v4 + 272) = *(v7 - 8);
  *(v4 + 280) = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  *(v4 + 288) = v8;
  *(v4 + 296) = *(v8 - 8);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  *(v4 + 392) = v9;
  *(v4 + 400) = *(v9 - 8);
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  *(v4 + 488) = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  *(v4 + 496) = swift_task_alloc();
  v10 = type metadata accessor for Peripheral.ConnectionOptions();
  *(v4 + 504) = v10;
  *(v4 + 512) = *(v10 - 8);
  *(v4 + 520) = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  *(v4 + 528) = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock.Instant();
  *(v4 + 536) = v11;
  *(v4 + 544) = *(v11 - 8);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  *(v4 + 584) = v12;
  *(v4 + 592) = *(v12 - 8);
  *(v4 + 600) = swift_task_alloc();
  v13 = type metadata accessor for ContinuousClock();
  *(v4 + 608) = v13;
  *(v4 + 616) = *(v13 - 8);
  *(v4 + 624) = swift_task_alloc();

  return _swift_task_switch(sub_1011FC914, 0, 0);
}

uint64_t sub_1011FC914(uint64_t a1)
{
  v2 = *(v1 + 1496);
  ContinuousClock.init()();
  if (v2 >= 2)
  {
    type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    ContinuousClock.now.getter();
    static Task<>.checkCancellation()();
    v17 = *(v1 + 528);
    v7 = *(v1 + 488);
    v6 = *(v1 + 496);
    sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101385D80;
    static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
    *(v1 + 176) = v8;
    sub_1012166EC(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
    sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
    sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v9 = type metadata accessor for PeripheralPairingInfo();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = type metadata accessor for LongTermKey();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
    v11 = type metadata accessor for Peripheral.Options();
    (*(*(v11 - 8) + 56))(v17, 0, 1, v11);
    v12 = type metadata accessor for Peripheral();
    *(v1 + 632) = v12;
    v13 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    *(v1 + 640) = v13;
    v14 = swift_task_alloc();
    *(v1 + 648) = v14;
    *v14 = v1;
    v14[1] = sub_1011FCF9C;
    v15 = *(v1 + 528);
    v16 = *(v1 + 208);

    return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v16, v15, v12, v13);
  }

  else
  {
    sub_100101B58();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 40) = 11;
    swift_willThrow();
    (*(*(v1 + 616) + 8))(*(v1 + 624), *(v1 + 608));

    v4 = *(v1 + 8);

    return v4();
  }
}

uint64_t sub_1011FCF9C()
{
  v2 = *v1;
  v3 = *v1;
  v2[82] = v0;

  v4 = v2[66];
  if (v0)
  {
    sub_10000B3A8(v4, &qword_101697260, &unk_10138BDC0);

    return _swift_task_switch(sub_1011FD26C, 0, 0);
  }

  else
  {
    sub_10000B3A8(v4, &qword_101697260, &unk_10138BDC0);
    v5 = swift_task_alloc();
    v2[83] = v5;
    *v5 = v3;
    v5[1] = sub_1011FD154;
    v6 = v2[80];
    v7 = v2[79];
    v8 = v2[75];

    return dispatch thunk of PeripheralProtocol.subscript.getter(v8, v7, v6);
  }
}

uint64_t sub_1011FD154(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {
    v4 = sub_1011FD76C;
  }

  else
  {
    v4 = sub_1011FD37C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011FD26C()
{
  (*(v0[68] + 8))(v0[72], v0[67]);
  v0[179] = v0[82];
  v1 = type metadata accessor for Peripheral();
  v2 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v3 = swift_task_alloc();
  v0[180] = v3;
  *v3 = v0;
  v3[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v1, v2);
}

uint64_t sub_1011FD37C(uint64_t a1)
{
  v2 = v1[85];
  static Task<>.checkCancellation()();
  if (v2)
  {
    (*(v1[68] + 8))(v1[72], v1[67]);

    v1[179] = v2;
    v3 = type metadata accessor for Peripheral();
    v4 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v5 = swift_task_alloc();
    v1[180] = v5;
    *v5 = v1;
    v5[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v4);
  }

  else
  {
    v6 = v1[37];
    sub_101123C58(0, 11, 0);
    type metadata accessor for Characteristic();
    for (i = 0; i != 11; ++i)
    {
      Identifier.init(stringLiteral:)();
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_101123C58((v8 > 1), v9 + 1, 1);
      }

      v1[182] = _swiftEmptyArrayStorage;
      v10 = v1[38];
      v11 = v1[36];
      _swiftEmptyArrayStorage[2] = v9 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v10, v11);
    }

    v12 = type metadata accessor for Service();
    v1[183] = v12;
    v13 = sub_1012166EC(&qword_1016972A8, 255, &type metadata accessor for Service, &protocol conformance descriptor for Service);
    v1[184] = v13;
    v14 = swift_task_alloc();
    v1[185] = v14;
    *v14 = v1;
    v14[1] = sub_1012063A0;

    return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(_swiftEmptyArrayStorage, v12, v13);
  }
}

uint64_t sub_1011FD76C()
{
  (*(v0[68] + 8))(v0[72], v0[67]);
  v0[179] = v0[85];
  v1 = type metadata accessor for Peripheral();
  v2 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v3 = swift_task_alloc();
  v0[180] = v3;
  *v3 = v0;
  v3[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v1, v2);
}

uint64_t sub_1011FD87C(uint64_t a1)
{
  v2 = v1[186];
  static Task<>.checkCancellation()();
  if (v2)
  {
    (*(v1[68] + 8))(v1[72], v1[67]);

    v1[179] = v2;
    v3 = type metadata accessor for Peripheral();
    v4 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v5 = swift_task_alloc();
    v1[180] = v5;
    *v5 = v1;
    v5[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v4);
  }

  else
  {
    v1[86] = type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v6 = swift_task_alloc();
    v1[87] = v6;
    *v6 = v1;
    v6[1] = sub_1011FDB6C;
    v7 = v1[184];
    v8 = v1[183];
    v9 = v1[48];

    return dispatch thunk of ServiceProtocol.subscript.getter(v9, v8, v7);
  }
}

uint64_t sub_1011FDA4C()
{
  v1 = v0[72];
  v2 = v0[68];
  v3 = v0[67];

  (*(v2 + 8))(v1, v3);
  v0[179] = v0[186];
  v4 = type metadata accessor for Peripheral();
  v5 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v6 = swift_task_alloc();
  v0[180] = v6;
  *v6 = v0;
  v6[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v4, v5);
}

uint64_t sub_1011FDB6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[88] = a1;
  v3[89] = v1;

  v5 = v3[48];
  v6 = v3[37];
  v7 = v3[36];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    return _swift_task_switch(sub_1011FDF84, 0, 0);
  }

  else
  {
    v8 = *(v6 + 8);
    v3[90] = v8;
    v3[91] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v7);
    v9 = sub_1012166EC(&qword_1016972C0, 255, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v3[92] = v9;
    v10 = swift_task_alloc();
    v3[93] = v10;
    *v10 = v4;
    v10[1] = sub_1011FDDB4;
    v11 = v3[86];
    v12 = v3[60];

    return dispatch thunk of CharacteristicProtocol.read()(v12, v11, v9);
  }
}

uint64_t sub_1011FDDB4()
{
  v2 = *v1;
  v2[94] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1011FE228, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[95] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    v2[96] = v4;
    *v3 = v2;
    v3[1] = sub_1011FE0A4;
    v5 = v2[49];

    return AsyncSequence.first()(v2 + 2, v5, v4);
  }
}

uint64_t sub_1011FDF84()
{
  v1 = v0[72];
  v2 = v0[68];
  v3 = v0[67];

  (*(v2 + 8))(v1, v3);
  v0[179] = v0[89];
  v4 = type metadata accessor for Peripheral();
  v5 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v6 = swift_task_alloc();
  v0[180] = v6;
  *v6 = v0;
  v6[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v4, v5);
}

uint64_t sub_1011FE0A4()
{
  v2 = *v1;
  v2[97] = v0;

  v3 = v2[60];
  v4 = v2[50];
  v5 = v2[49];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = sub_1011FE52C;
  }

  else
  {
    v2[98] = v7;
    v2[99] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = sub_1011FE348;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1011FE228()
{
  v1 = v0[72];
  v2 = v0[68];
  v3 = v0[67];

  (*(v2 + 8))(v1, v3);
  v0[179] = v0[94];
  v4 = type metadata accessor for Peripheral();
  v5 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v6 = swift_task_alloc();
  v0[180] = v6;
  *v6 = v0;
  v6[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v4, v5);
}

uint64_t sub_1011FE348(uint64_t a1)
{
  v2 = v1[97];
  v4 = v1[2];
  v3 = v1[3];
  v1[100] = v4;
  v1[101] = v3;
  static Task<>.checkCancellation()();
  if (v2)
  {
    (*(v1[68] + 8))(v1[72], v1[67]);
    sub_100006654(v4, v3);

    v1[179] = v2;
    v5 = type metadata accessor for Peripheral();
    v6 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v7 = swift_task_alloc();
    v1[180] = v7;
    *v7 = v1;
    v7[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v6);
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v8 = swift_task_alloc();
    v1[102] = v8;
    *v8 = v1;
    v8[1] = sub_1011FE64C;
    v9 = v1[184];
    v10 = v1[183];
    v11 = v1[47];

    return dispatch thunk of ServiceProtocol.subscript.getter(v11, v10, v9);
  }
}

uint64_t sub_1011FE52C()
{
  v1 = v0[72];
  v2 = v0[68];
  v3 = v0[67];

  (*(v2 + 8))(v1, v3);
  v0[179] = v0[97];
  v4 = type metadata accessor for Peripheral();
  v5 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v6 = swift_task_alloc();
  v0[180] = v6;
  *v6 = v0;
  v6[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v4, v5);
}

uint64_t sub_1011FE64C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[103] = a1;
  v3[104] = v1;

  v5 = v3[90];
  v6 = v3[47];
  v7 = v3[36];
  if (v1)
  {
    v5(v6, v7);

    return _swift_task_switch(sub_1011FE9D0, 0, 0);
  }

  else
  {
    v5(v6, v7);
    v8 = swift_task_alloc();
    v3[105] = v8;
    *v8 = v4;
    v8[1] = sub_1011FE840;
    v9 = v3[92];
    v10 = v3[86];
    v11 = v3[59];

    return dispatch thunk of CharacteristicProtocol.read()(v11, v10, v9);
  }
}

uint64_t sub_1011FE840()
{
  v2 = *v1;
  v2[106] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1011FEC7C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[107] = v3;
    *v3 = v2;
    v3[1] = sub_1011FEB0C;
    v4 = v2[96];
    v5 = v2[49];

    return AsyncSequence.first()(v2 + 4, v5, v4);
  }
}

uint64_t sub_1011FE9D0()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[72];
  v4 = v0[68];
  v5 = v0[67];

  sub_100006654(v2, v1);
  (*(v4 + 8))(v3, v5);
  v0[179] = v0[104];
  v6 = type metadata accessor for Peripheral();
  v7 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v8 = swift_task_alloc();
  v0[180] = v8;
  *v8 = v0;
  v8[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v6, v7);
}

uint64_t sub_1011FEB0C()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  (*(v2 + 784))(*(v2 + 472), *(v2 + 392));
  if (v0)
  {
    v3 = sub_1011FEFBC;
  }

  else
  {
    v3 = sub_1011FEDB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011FEC7C()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[72];
  v4 = v0[68];
  v5 = v0[67];

  sub_100006654(v2, v1);
  (*(v4 + 8))(v3, v5);
  v0[179] = v0[106];
  v6 = type metadata accessor for Peripheral();
  v7 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v8 = swift_task_alloc();
  v0[180] = v8;
  *v8 = v0;
  v8[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v6, v7);
}

uint64_t sub_1011FEDB8(uint64_t a1)
{
  v2 = v1[108];
  v4 = v1[4];
  v3 = v1[5];
  v1[109] = v4;
  v1[110] = v3;
  static Task<>.checkCancellation()();
  if (v2)
  {
    v5 = v1[101];
    v6 = v1[100];
    (*(v1[68] + 8))(v1[72], v1[67]);
    sub_100006654(v4, v3);
    sub_100006654(v6, v5);

    v1[179] = v2;
    v7 = type metadata accessor for Peripheral();
    v8 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v9 = swift_task_alloc();
    v1[180] = v9;
    *v9 = v1;
    v9[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v8);
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v10 = swift_task_alloc();
    v1[111] = v10;
    *v10 = v1;
    v10[1] = sub_1011FF0F8;
    v11 = v1[184];
    v12 = v1[183];
    v13 = v1[46];

    return dispatch thunk of ServiceProtocol.subscript.getter(v13, v12, v11);
  }
}

uint64_t sub_1011FEFBC()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[72];
  v4 = v0[68];
  v5 = v0[67];

  sub_100006654(v2, v1);
  (*(v4 + 8))(v3, v5);
  v0[179] = v0[108];
  v6 = type metadata accessor for Peripheral();
  v7 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v8 = swift_task_alloc();
  v0[180] = v8;
  *v8 = v0;
  v8[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v6, v7);
}

uint64_t sub_1011FF0F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[112] = a1;
  v3[113] = v1;

  v5 = v3[90];
  v6 = v3[46];
  v7 = v3[36];
  if (v1)
  {
    v5(v6, v7);

    return _swift_task_switch(sub_1011FF47C, 0, 0);
  }

  else
  {
    v5(v6, v7);
    v8 = swift_task_alloc();
    v3[114] = v8;
    *v8 = v4;
    v8[1] = sub_1011FF2EC;
    v9 = v3[92];
    v10 = v3[86];
    v11 = v3[58];

    return dispatch thunk of CharacteristicProtocol.read()(v11, v10, v9);
  }
}

uint64_t sub_1011FF2EC()
{
  v2 = *v1;
  v2[115] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1011FF744, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[116] = v3;
    *v3 = v2;
    v3[1] = sub_1011FF5D4;
    v4 = v2[96];
    v5 = v2[49];

    return AsyncSequence.first()(v2 + 6, v5, v4);
  }
}

uint64_t sub_1011FF47C()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[72];
  v6 = v0[68];
  v7 = v0[67];

  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  (*(v6 + 8))(v5, v7);
  v0[179] = v0[113];
  v8 = type metadata accessor for Peripheral();
  v9 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v10 = swift_task_alloc();
  v0[180] = v10;
  *v10 = v0;
  v10[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v8, v9);
}

uint64_t sub_1011FF5D4()
{
  v2 = *v1;
  *(*v1 + 936) = v0;

  (*(v2 + 784))(*(v2 + 464), *(v2 + 392));
  if (v0)
  {
    v3 = sub_1011FFAC0;
  }

  else
  {
    v3 = sub_1011FF89C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011FF744()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[72];
  v6 = v0[68];
  v7 = v0[67];

  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  (*(v6 + 8))(v5, v7);
  v0[179] = v0[115];
  v8 = type metadata accessor for Peripheral();
  v9 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v10 = swift_task_alloc();
  v0[180] = v10;
  *v10 = v0;
  v10[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v8, v9);
}

uint64_t sub_1011FF89C(uint64_t a1)
{
  v2 = v1[117];
  v4 = v1[6];
  v3 = v1[7];
  v1[118] = v4;
  v1[119] = v3;
  static Task<>.checkCancellation()();
  if (v2)
  {
    v5 = v1[110];
    v6 = v1[109];
    v7 = v1[101];
    v8 = v1[100];
    (*(v1[68] + 8))(v1[72], v1[67]);
    sub_100006654(v4, v3);
    sub_100006654(v6, v5);
    sub_100006654(v8, v7);

    v1[179] = v2;
    v9 = type metadata accessor for Peripheral();
    v10 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v11 = swift_task_alloc();
    v1[180] = v11;
    *v11 = v1;
    v11[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v10);
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v12 = swift_task_alloc();
    v1[120] = v12;
    *v12 = v1;
    v12[1] = sub_1011FFC18;
    v13 = v1[184];
    v14 = v1[183];
    v15 = v1[45];

    return dispatch thunk of ServiceProtocol.subscript.getter(v15, v14, v13);
  }
}

uint64_t sub_1011FFAC0()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[72];
  v6 = v0[68];
  v7 = v0[67];

  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  (*(v6 + 8))(v5, v7);
  v0[179] = v0[117];
  v8 = type metadata accessor for Peripheral();
  v9 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v10 = swift_task_alloc();
  v0[180] = v10;
  *v10 = v0;
  v10[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v8, v9);
}

uint64_t sub_1011FFC18(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[121] = a1;
  v3[122] = v1;

  v5 = v3[90];
  v6 = v3[45];
  v7 = v3[36];
  if (v1)
  {
    v5(v6, v7);

    return _swift_task_switch(sub_1011FFF94, 0, 0);
  }

  else
  {
    v5(v6, v7);
    v8 = swift_task_alloc();
    v3[123] = v8;
    *v8 = v4;
    v8[1] = sub_1011FFE0C;
    v9 = v3[92];
    v10 = v3[86];
    v11 = v3[57];

    return dispatch thunk of CharacteristicProtocol.read()(v11, v10, v9);
  }
}

uint64_t sub_1011FFE0C()
{
  v2 = *v1;
  v2[124] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1012004C0, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[125] = v3;
    *v3 = v2;
    v3[1] = sub_101200350;
    v4 = v2[96];
    v5 = v2[49];

    return AsyncSequence.first()(v2 + 8, v5, v4);
  }
}

uint64_t sub_1011FFF94()
{
  v1 = v0[122];
  v0[23] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v0[28] + 88))(v0[29], v0[27]) == enum case for CentralManager.Error.missingCharacteristic(_:))
    {

      v0[128] = 0xF000000000000000;
      v0[127] = 0;
      static Task<>.checkCancellation()();
      Identifier.init(stringLiteral:)();
      v18 = swift_task_alloc();
      v0[129] = v18;
      *v18 = v0;
      v18[1] = sub_101200E7C;
      v19 = v0[184];
      v20 = v0[183];
      v21 = v0[44];

      return dispatch thunk of ServiceProtocol.subscript.getter(v21, v20, v19);
    }

    v8 = v0[118];
    v9 = v0[110];
    v10 = v0[109];
    v11 = v0[101];
    v12 = v0[100];
    v13 = v0[28];
    v23 = v0[29];
    v24 = v0[119];
    v14 = v0[27];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v12, v11);
    sub_100006654(v10, v9);
    sub_100006654(v8, v24);

    (*(v13 + 8))(v23, v14);
  }

  else
  {
    v2 = v0[119];
    v3 = v0[118];
    v4 = v0[110];
    v5 = v0[109];
    v6 = v0[101];
    v7 = v0[100];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v7, v6);
    sub_100006654(v5, v4);
    sub_100006654(v3, v2);
  }

  v0[179] = v1;
  v15 = type metadata accessor for Peripheral();
  v16 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v17 = swift_task_alloc();
  v0[180] = v17;
  *v17 = v0;
  v17[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v15, v16);
}

uint64_t sub_101200350()
{
  v2 = *v1;
  *(*v1 + 1008) = v0;

  (*(v2 + 784))(*(v2 + 456), *(v2 + 392));
  if (v0)
  {
    v3 = sub_101200AC0;
  }

  else
  {
    v3 = sub_101200884;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1012004C0()
{

  v1 = v0[124];
  v0[23] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v0[28] + 88))(v0[29], v0[27]) == enum case for CentralManager.Error.missingCharacteristic(_:))
    {

      v0[128] = 0xF000000000000000;
      v0[127] = 0;
      static Task<>.checkCancellation()();
      Identifier.init(stringLiteral:)();
      v18 = swift_task_alloc();
      v0[129] = v18;
      *v18 = v0;
      v18[1] = sub_101200E7C;
      v19 = v0[184];
      v20 = v0[183];
      v21 = v0[44];

      return dispatch thunk of ServiceProtocol.subscript.getter(v21, v20, v19);
    }

    v8 = v0[118];
    v9 = v0[110];
    v10 = v0[109];
    v11 = v0[101];
    v12 = v0[100];
    v13 = v0[28];
    v23 = v0[29];
    v24 = v0[119];
    v14 = v0[27];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v12, v11);
    sub_100006654(v10, v9);
    sub_100006654(v8, v24);

    (*(v13 + 8))(v23, v14);
  }

  else
  {
    v2 = v0[119];
    v3 = v0[118];
    v4 = v0[110];
    v5 = v0[109];
    v6 = v0[101];
    v7 = v0[100];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v7, v6);
    sub_100006654(v5, v4);
    sub_100006654(v3, v2);
  }

  v0[179] = v1;
  v15 = type metadata accessor for Peripheral();
  v16 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v17 = swift_task_alloc();
  v0[180] = v17;
  *v17 = v0;
  v17[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v15, v16);
}

uint64_t sub_101200884(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[126];
  v1[128] = v2;
  v1[127] = v3;
  static Task<>.checkCancellation()();
  if (v4)
  {
    v18 = v1[119];
    v5 = v1[118];
    v6 = v1[110];
    v7 = v1[109];
    v8 = v1[101];
    v9 = v1[100];
    (*(v1[68] + 8))(v1[72], v1[67]);

    sub_100006654(v9, v8);
    sub_100006654(v7, v6);
    sub_100006654(v5, v18);
    sub_100006654(v3, v2);
    v1[179] = v4;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v12 = swift_task_alloc();
    v1[180] = v12;
    *v12 = v1;
    v12[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v13 = swift_task_alloc();
    v1[129] = v13;
    *v13 = v1;
    v13[1] = sub_101200E7C;
    v14 = v1[184];
    v15 = v1[183];
    v16 = v1[44];

    return dispatch thunk of ServiceProtocol.subscript.getter(v16, v15, v14);
  }
}

uint64_t sub_101200AC0()
{
  v1 = v0[126];
  v0[23] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v0[28] + 88))(v0[29], v0[27]) == enum case for CentralManager.Error.missingCharacteristic(_:))
    {

      v0[128] = 0xF000000000000000;
      v0[127] = 0;
      static Task<>.checkCancellation()();
      Identifier.init(stringLiteral:)();
      v18 = swift_task_alloc();
      v0[129] = v18;
      *v18 = v0;
      v18[1] = sub_101200E7C;
      v19 = v0[184];
      v20 = v0[183];
      v21 = v0[44];

      return dispatch thunk of ServiceProtocol.subscript.getter(v21, v20, v19);
    }

    v8 = v0[118];
    v9 = v0[110];
    v10 = v0[109];
    v11 = v0[101];
    v12 = v0[100];
    v13 = v0[28];
    v23 = v0[29];
    v24 = v0[119];
    v14 = v0[27];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v12, v11);
    sub_100006654(v10, v9);
    sub_100006654(v8, v24);

    (*(v13 + 8))(v23, v14);
  }

  else
  {
    v2 = v0[119];
    v3 = v0[118];
    v4 = v0[110];
    v5 = v0[109];
    v6 = v0[101];
    v7 = v0[100];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v7, v6);
    sub_100006654(v5, v4);
    sub_100006654(v3, v2);
  }

  v0[179] = v1;
  v15 = type metadata accessor for Peripheral();
  v16 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v17 = swift_task_alloc();
  v0[180] = v17;
  *v17 = v0;
  v17[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v15, v16);
}

uint64_t sub_101200E7C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[130] = a1;
  v3[131] = v1;

  v5 = v3[90];
  v6 = v3[44];
  v7 = v3[36];
  if (v1)
  {
    v5(v6, v7);

    return _swift_task_switch(sub_101201200, 0, 0);
  }

  else
  {
    v5(v6, v7);
    v8 = swift_task_alloc();
    v3[132] = v8;
    *v8 = v4;
    v8[1] = sub_101201070;
    v9 = v3[92];
    v10 = v3[86];
    v11 = v3[56];

    return dispatch thunk of CharacteristicProtocol.read()(v11, v10, v9);
  }
}

uint64_t sub_101201070()
{
  v2 = *v1;
  v2[133] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1012014F8, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[134] = v3;
    *v3 = v2;
    v3[1] = sub_101201388;
    v4 = v2[96];
    v5 = v2[49];

    return AsyncSequence.first()(v2 + 10, v5, v4);
  }
}

uint64_t sub_101201200()
{
  v14 = v0[127];
  v15 = v0[128];
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[72];
  v8 = v0[68];
  v9 = v0[67];

  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  (*(v8 + 8))(v7, v9);
  v0[179] = v0[131];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_101201388()
{
  v2 = *v1;
  *(*v1 + 1080) = v0;

  (*(v2 + 784))(*(v2 + 448), *(v2 + 392));
  if (v0)
  {
    v3 = sub_1012018D0;
  }

  else
  {
    v3 = sub_101201680;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1012014F8()
{
  v14 = v0[127];
  v15 = v0[128];
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[72];
  v8 = v0[68];
  v9 = v0[67];

  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  (*(v8 + 8))(v7, v9);
  v0[179] = v0[133];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_101201680(uint64_t a1)
{
  v2 = v1[135];
  v4 = v1[10];
  v3 = v1[11];
  v1[136] = v4;
  v1[137] = v3;
  static Task<>.checkCancellation()();
  if (v2)
  {
    v19 = v1[127];
    v20 = v1[128];
    v18 = v1[119];
    v5 = v1[118];
    v6 = v1[110];
    v7 = v1[109];
    v8 = v1[101];
    v9 = v1[100];
    (*(v1[68] + 8))(v1[72], v1[67]);

    sub_100006654(v9, v8);
    sub_100006654(v7, v6);
    sub_100006654(v5, v18);
    sub_100006654(v4, v3);
    sub_100006654(v19, v20);
    v1[179] = v2;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v12 = swift_task_alloc();
    v1[180] = v12;
    *v12 = v1;
    v12[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v13 = swift_task_alloc();
    v1[138] = v13;
    *v13 = v1;
    v13[1] = sub_101201A58;
    v14 = v1[184];
    v15 = v1[183];
    v16 = v1[43];

    return dispatch thunk of ServiceProtocol.subscript.getter(v16, v15, v14);
  }
}

uint64_t sub_1012018D0()
{
  v14 = v0[127];
  v15 = v0[128];
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[72];
  v8 = v0[68];
  v9 = v0[67];

  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  (*(v8 + 8))(v7, v9);
  v0[179] = v0[135];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_101201A58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[139] = a1;

  v5 = v3[90];
  v6 = v3[43];
  v7 = v3[36];
  if (v1)
  {

    v5(v6, v7);

    return _swift_task_switch(sub_101201E10, 0, 0);
  }

  else
  {
    v5(v6, v7);
    v8 = swift_task_alloc();
    v3[140] = v8;
    *v8 = v4;
    v8[1] = sub_101201C6C;
    v9 = v3[92];
    v10 = v3[86];
    v11 = v3[55];

    return dispatch thunk of CharacteristicProtocol.read()(v11, v10, v9);
  }
}

uint64_t sub_101201C6C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_101216860, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[141] = v4;
    *v4 = v3;
    v4[1] = sub_101202074;
    v5 = v2[96];
    v6 = v2[49];

    return AsyncSequence.first()(v2 + 12, v6, v5);
  }
}

uint64_t sub_101201E10(uint64_t a1)
{
  v1[144] = 0xF000000000000000;
  v1[143] = 0;
  static Task<>.checkCancellation()();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v1[145] = v2;
  *v2 = v1;
  v2[1] = sub_10120246C;
  v3 = v1[184];
  v4 = v1[183];
  v5 = v1[42];

  return dispatch thunk of ServiceProtocol.subscript.getter(v5, v4, v3);
}

uint64_t sub_101202074()
{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  v3 = v2[98];
  v4 = v2[55];
  v5 = v2[49];
  if (v0)
  {

    v3(v4, v5);
    v6 = sub_101216860;
  }

  else
  {
    v3(v4, v5);
    v6 = sub_101202208;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_101202208(uint64_t a1)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[142];
  v1[144] = v2;
  v1[143] = v3;
  static Task<>.checkCancellation()();
  if (v4)
  {
    v19 = v1[136];
    v20 = v1[137];
    v21 = v1[127];
    v22 = v1[128];
    v18 = v1[119];
    v5 = v1[118];
    v6 = v1[110];
    v7 = v1[109];
    v8 = v1[101];
    v9 = v1[100];
    (*(v1[68] + 8))(v1[72], v1[67]);

    sub_100006654(v9, v8);
    sub_100006654(v7, v6);
    sub_100006654(v5, v18);
    sub_100006654(v19, v20);
    sub_100006654(v3, v2);
    sub_100006654(v21, v22);
    v1[179] = v4;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v12 = swift_task_alloc();
    v1[180] = v12;
    *v12 = v1;
    v12[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v13 = swift_task_alloc();
    v1[145] = v13;
    *v13 = v1;
    v13[1] = sub_10120246C;
    v14 = v1[184];
    v15 = v1[183];
    v16 = v1[42];

    return dispatch thunk of ServiceProtocol.subscript.getter(v16, v15, v14);
  }
}

uint64_t sub_10120246C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[146] = a1;
  v3[147] = v1;

  v5 = v3[90];
  v6 = v3[42];
  v7 = v3[36];
  if (v1)
  {
    v5(v6, v7);

    return _swift_task_switch(sub_1012027F0, 0, 0);
  }

  else
  {
    v5(v6, v7);
    v8 = swift_task_alloc();
    v3[148] = v8;
    *v8 = v4;
    v8[1] = sub_101202660;
    v9 = v3[92];
    v10 = v3[86];
    v11 = v3[54];

    return dispatch thunk of CharacteristicProtocol.read()(v11, v10, v9);
  }
}

uint64_t sub_101202660()
{
  v2 = *v1;
  v2[149] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_101202B14, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[150] = v3;
    *v3 = v2;
    v3[1] = sub_1012029A4;
    v4 = v2[96];
    v5 = v2[49];

    return AsyncSequence.first()(v2 + 14, v5, v4);
  }
}

uint64_t sub_1012027F0()
{
  v18 = v0[143];
  v19 = v0[144];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v16 = v0[72];
  v17 = v0[137];
  v9 = v0[68];
  v14 = v0[136];
  v15 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v17);
  sub_100006654(v18, v19);
  (*(v9 + 8))(v16, v15);
  v0[179] = v0[147];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_1012029A4()
{
  v2 = *v1;
  *(*v1 + 1208) = v0;

  (*(v2 + 784))(*(v2 + 432), *(v2 + 392));
  if (v0)
  {
    v3 = sub_101202F40;
  }

  else
  {
    v3 = sub_101202CC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_101202B14()
{
  v18 = v0[143];
  v19 = v0[144];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v16 = v0[72];
  v17 = v0[137];
  v9 = v0[68];
  v14 = v0[136];
  v15 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v17);
  sub_100006654(v18, v19);
  (*(v9 + 8))(v16, v15);
  v0[179] = v0[149];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_101202CC8(uint64_t a1)
{
  v2 = v1[151];
  v4 = v1[14];
  v3 = v1[15];
  v1[152] = v4;
  v1[153] = v3;
  static Task<>.checkCancellation()();
  if (v2)
  {
    v21 = v1[143];
    v22 = v1[144];
    v19 = v1[136];
    v20 = v1[137];
    v23 = v1[127];
    v24 = v1[128];
    v18 = v1[119];
    v5 = v1[118];
    v6 = v1[110];
    v7 = v1[109];
    v8 = v1[101];
    v9 = v1[100];
    (*(v1[68] + 8))(v1[72], v1[67]);

    sub_100006654(v9, v8);
    sub_100006654(v7, v6);
    sub_100006654(v5, v18);
    sub_100006654(v19, v20);
    sub_100006654(v21, v22);
    sub_100006654(v4, v3);
    sub_100006654(v23, v24);
    v1[179] = v2;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v12 = swift_task_alloc();
    v1[180] = v12;
    *v12 = v1;
    v12[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v13 = swift_task_alloc();
    v1[154] = v13;
    *v13 = v1;
    v13[1] = sub_1012030F4;
    v14 = v1[184];
    v15 = v1[183];
    v16 = v1[41];

    return dispatch thunk of ServiceProtocol.subscript.getter(v16, v15, v14);
  }
}

uint64_t sub_101202F40()
{
  v18 = v0[143];
  v19 = v0[144];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v16 = v0[72];
  v17 = v0[137];
  v9 = v0[68];
  v14 = v0[136];
  v15 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v17);
  sub_100006654(v18, v19);
  (*(v9 + 8))(v16, v15);
  v0[179] = v0[151];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_1012030F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[155] = a1;
  v3[156] = v1;

  v5 = v3[90];
  v6 = v3[41];
  v7 = v3[36];
  if (v1)
  {
    v5(v6, v7);

    return _swift_task_switch(sub_101203478, 0, 0);
  }

  else
  {
    v5(v6, v7);
    v8 = swift_task_alloc();
    v3[157] = v8;
    *v8 = v4;
    v8[1] = sub_1012032E8;
    v9 = v3[92];
    v10 = v3[86];
    v11 = v3[53];

    return dispatch thunk of CharacteristicProtocol.read()(v11, v10, v9);
  }
}

uint64_t sub_1012032E8()
{
  v2 = *v1;
  v2[158] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1012037AC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[159] = v3;
    *v3 = v2;
    v3[1] = sub_10120363C;
    v4 = v2[96];
    v5 = v2[49];

    return AsyncSequence.first()(v2 + 16, v5, v4);
  }
}

uint64_t sub_101203478()
{
  v20 = v0[152];
  v21 = v0[153];
  v18 = v0[143];
  v19 = v0[144];
  v14 = v0[136];
  v15 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[68];
  v16 = v0[67];
  v17 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  sub_100006654(v18, v19);
  sub_100006654(v20, v21);
  (*(v9 + 8))(v17, v16);
  v0[179] = v0[156];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_10120363C()
{
  v2 = *v1;
  *(*v1 + 1280) = v0;

  (*(v2 + 784))(*(v2 + 424), *(v2 + 392));
  if (v0)
  {
    v3 = sub_101203BFC;
  }

  else
  {
    v3 = sub_101203970;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1012037AC()
{
  v20 = v0[152];
  v21 = v0[153];
  v18 = v0[143];
  v19 = v0[144];
  v14 = v0[136];
  v15 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[68];
  v16 = v0[67];
  v17 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  sub_100006654(v18, v19);
  sub_100006654(v20, v21);
  (*(v9 + 8))(v17, v16);
  v0[179] = v0[158];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_101203970(uint64_t a1)
{
  v2 = v1[160];
  v4 = v1[16];
  v3 = v1[17];
  v1[161] = v4;
  v1[162] = v3;
  static Task<>.checkCancellation()();
  if (v2)
  {
    v23 = v1[152];
    v24 = v1[153];
    v21 = v1[143];
    v22 = v1[144];
    v19 = v1[136];
    v20 = v1[137];
    v25 = v1[127];
    v26 = v1[128];
    v18 = v1[119];
    v5 = v1[118];
    v6 = v1[110];
    v7 = v1[109];
    v8 = v1[101];
    v9 = v1[100];
    (*(v1[68] + 8))(v1[72], v1[67]);

    sub_100006654(v9, v8);
    sub_100006654(v7, v6);
    sub_100006654(v5, v18);
    sub_100006654(v19, v20);
    sub_100006654(v21, v22);
    sub_100006654(v23, v24);
    sub_100006654(v4, v3);
    sub_100006654(v25, v26);
    v1[179] = v2;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v12 = swift_task_alloc();
    v1[180] = v12;
    *v12 = v1;
    v12[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v13 = swift_task_alloc();
    v1[163] = v13;
    *v13 = v1;
    v13[1] = sub_101203DC0;
    v14 = v1[184];
    v15 = v1[183];
    v16 = v1[40];

    return dispatch thunk of ServiceProtocol.subscript.getter(v16, v15, v14);
  }
}

uint64_t sub_101203BFC()
{
  v20 = v0[152];
  v21 = v0[153];
  v18 = v0[143];
  v19 = v0[144];
  v14 = v0[136];
  v15 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[68];
  v16 = v0[67];
  v17 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  sub_100006654(v18, v19);
  sub_100006654(v20, v21);
  (*(v9 + 8))(v17, v16);
  v0[179] = v0[160];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_101203DC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[164] = a1;
  v3[165] = v1;

  v5 = v3[90];
  v6 = v3[40];
  v7 = v3[36];
  if (v1)
  {
    v5(v6, v7);

    return _swift_task_switch(sub_101204144, 0, 0);
  }

  else
  {
    v5(v6, v7);
    v8 = swift_task_alloc();
    v3[166] = v8;
    *v8 = v4;
    v8[1] = sub_101203FB4;
    v9 = v3[92];
    v10 = v3[86];
    v11 = v3[52];

    return dispatch thunk of CharacteristicProtocol.read()(v11, v10, v9);
  }
}

uint64_t sub_101203FB4()
{
  v2 = *v1;
  v2[167] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10120448C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[168] = v3;
    *v3 = v2;
    v3[1] = sub_10120431C;
    v4 = v2[96];
    v5 = v2[49];

    return AsyncSequence.first()(v2 + 18, v5, v4);
  }
}

uint64_t sub_101204144()
{
  v22 = v0[161];
  v23 = v0[162];
  v20 = v0[152];
  v21 = v0[153];
  v16 = v0[143];
  v17 = v0[144];
  v14 = v0[136];
  v15 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[68];
  v18 = v0[67];
  v19 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  sub_100006654(v16, v17);
  sub_100006654(v20, v21);
  sub_100006654(v22, v23);
  (*(v9 + 8))(v19, v18);
  v0[179] = v0[165];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_10120431C()
{
  v2 = *v1;
  *(*v1 + 1352) = v0;

  (*(v2 + 784))(*(v2 + 416), *(v2 + 392));
  if (v0)
  {
    v3 = sub_10120490C;
  }

  else
  {
    v3 = sub_101204664;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10120448C()
{
  v22 = v0[161];
  v23 = v0[162];
  v20 = v0[152];
  v21 = v0[153];
  v16 = v0[143];
  v17 = v0[144];
  v14 = v0[136];
  v15 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[68];
  v18 = v0[67];
  v19 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  sub_100006654(v16, v17);
  sub_100006654(v20, v21);
  sub_100006654(v22, v23);
  (*(v9 + 8))(v19, v18);
  v0[179] = v0[167];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_101204664(uint64_t a1)
{
  v2 = v1[169];
  v4 = v1[18];
  v3 = v1[19];
  v1[170] = v4;
  v1[171] = v3;
  static Task<>.checkCancellation()();
  if (v2)
  {
    v24 = v1[153];
    v25 = v1[161];
    v22 = v1[144];
    v23 = v1[152];
    v20 = v1[137];
    v21 = v1[143];
    v27 = v1[162];
    v28 = v1[128];
    v26 = v1[127];
    v18 = v1[119];
    v19 = v1[136];
    v5 = v1[118];
    v6 = v1[110];
    v7 = v1[109];
    v8 = v1[101];
    v9 = v1[100];
    (*(v1[68] + 8))(v1[72], v1[67]);

    sub_100006654(v9, v8);
    sub_100006654(v7, v6);
    sub_100006654(v5, v18);
    sub_100006654(v19, v20);
    sub_100006654(v21, v22);
    sub_100006654(v23, v24);
    sub_100006654(v25, v27);
    sub_100006654(v4, v3);
    sub_100006654(v26, v28);
    v1[179] = v2;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v12 = swift_task_alloc();
    v1[180] = v12;
    *v12 = v1;
    v12[1] = sub_101205C80;

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v13 = swift_task_alloc();
    v1[172] = v13;
    *v13 = v1;
    v13[1] = sub_101204AE4;
    v14 = v1[184];
    v15 = v1[183];
    v16 = v1[39];

    return dispatch thunk of ServiceProtocol.subscript.getter(v16, v15, v14);
  }
}

uint64_t sub_10120490C()
{
  v22 = v0[161];
  v23 = v0[162];
  v20 = v0[152];
  v21 = v0[153];
  v16 = v0[143];
  v17 = v0[144];
  v14 = v0[136];
  v15 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[68];
  v18 = v0[67];
  v19 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  sub_100006654(v16, v17);
  sub_100006654(v20, v21);
  sub_100006654(v22, v23);
  (*(v9 + 8))(v19, v18);
  v0[179] = v0[169];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_101204AE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[173] = a1;
  v3[174] = v1;

  v5 = v3[90];
  v6 = v3[39];
  v7 = v3[36];
  if (v1)
  {
    v5(v6, v7);

    return _swift_task_switch(sub_101204E68, 0, 0);
  }

  else
  {
    v5(v6, v7);
    v8 = swift_task_alloc();
    v3[175] = v8;
    *v8 = v4;
    v8[1] = sub_101204CD8;
    v9 = v3[92];
    v10 = v3[86];
    v11 = v3[51];

    return dispatch thunk of CharacteristicProtocol.read()(v11, v10, v9);
  }
}

uint64_t sub_101204CD8()
{
  v2 = *v1;
  v2[176] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1012051DC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[177] = v3;
    *v3 = v2;
    v3[1] = sub_10120506C;
    v4 = v2[96];
    v5 = v2[49];

    return AsyncSequence.first()(v2 + 20, v5, v4);
  }
}

uint64_t sub_101204E68()
{
  v25 = v0[171];
  v23 = v0[162];
  v24 = v0[170];
  v22 = v0[161];
  v20 = v0[153];
  v17 = v0[144];
  v18 = v0[152];
  v15 = v0[137];
  v16 = v0[143];
  v14 = v0[136];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v21 = v0[72];
  v9 = v0[68];
  v19 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  sub_100006654(v16, v17);
  sub_100006654(v18, v20);
  sub_100006654(v22, v23);
  sub_100006654(v24, v25);
  (*(v9 + 8))(v21, v19);
  v0[179] = v0[174];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_10120506C()
{
  v2 = *v1;
  *(*v1 + 1424) = v0;

  (*(v2 + 784))(*(v2 + 408), *(v2 + 392));
  if (v0)
  {
    v3 = sub_101205A7C;
  }

  else
  {
    v3 = sub_1012053E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1012051DC()
{
  v25 = v0[171];
  v23 = v0[162];
  v24 = v0[170];
  v22 = v0[161];
  v20 = v0[153];
  v17 = v0[144];
  v18 = v0[152];
  v15 = v0[137];
  v16 = v0[143];
  v14 = v0[136];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v21 = v0[72];
  v9 = v0[68];
  v19 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  sub_100006654(v16, v17);
  sub_100006654(v18, v20);
  sub_100006654(v22, v23);
  sub_100006654(v24, v25);
  (*(v9 + 8))(v21, v19);
  v0[179] = v0[176];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_1012053E0(uint64_t a1)
{
  v76 = v1;
  v73 = v1[21];
  v74 = v1[20];
  ContinuousClock.now.getter();
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v2 = v1[72];
  v3 = v1[71];
  v4 = v1[70];
  v5 = v1[69];
  v6 = v1[68];
  v7 = v1[67];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177AC90);
  v9 = *(v6 + 16);
  v9(v4, v2, v7);
  v9(v5, v3, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[70];
  v14 = v1[69];
  v15 = v1[68];
  v16 = v1[67];
  if (v12)
  {
    v17 = v1[34];
    v18 = v1[35];
    v70 = v1[33];
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v75 = v72;
    *v71 = 136446210;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_1012166EC(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v69 = static Duration.description<A>(_:_:units:)();
    v20 = v19;
    (*(v17 + 8))(v18, v70);
    v21 = *(v15 + 8);
    v21(v14, v16);
    v68 = v21;
    v21(v13, v16);
    v22 = sub_1000136BC(v69, v20, &v75);

    *(v71 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "Raw metadata read time: %{public}s", v71, 0xCu);
    sub_100007BAC(v72);
  }

  else
  {

    v23 = *(v15 + 8);
    v23(v14, v16);
    v68 = v23;
    v23(v13, v16);
  }

  v66 = v1[170];
  v67 = v1[171];
  v64 = v1[161];
  v65 = v1[162];
  v62 = v1[152];
  v63 = v1[153];
  v60 = v1[143];
  v61 = v1[144];
  v58 = v1[136];
  v59 = v1[137];
  v56 = v1[127];
  v57 = v1[128];
  v54 = v1[118];
  v55 = v1[119];
  v52 = v1[109];
  v53 = v1[110];
  v50 = v1[100];
  v51 = v1[101];
  v24 = v1[77];
  v48 = v1[76];
  v49 = v1[78];
  v25 = v1[74];
  v46 = v1[73];
  v47 = v1[75];
  v45 = v1[72];
  v44 = v1[71];
  v26 = v1[67];
  v27 = v1[31];
  v28 = v1[32];
  v29 = v1[30];
  v30 = v1[24];
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();

  (*(v27 + 8))(v28, v29);
  v68(v44, v26);
  v68(v45, v26);
  (*(v25 + 8))(v47, v46);
  (*(v24 + 8))(v49, v48);
  v31 = type metadata accessor for RawAccessoryMetadata(0);
  v32 = (v30 + v31[5]);
  *v32 = v50;
  v32[1] = v51;
  v33 = (v30 + v31[6]);
  *v33 = v52;
  v33[1] = v53;
  v34 = (v30 + v31[7]);
  *v34 = v54;
  v34[1] = v55;
  v35 = (v30 + v31[8]);
  *v35 = v56;
  v35[1] = v57;
  v36 = (v30 + v31[9]);
  *v36 = v58;
  v36[1] = v59;
  v37 = (v30 + v31[10]);
  *v37 = v60;
  v37[1] = v61;
  v38 = (v30 + v31[11]);
  *v38 = v62;
  v38[1] = v63;
  *(v30 + v31[12]) = xmmword_10138BBF0;
  v39 = (v30 + v31[13]);
  *v39 = v64;
  v39[1] = v65;
  *(v30 + v31[14]) = xmmword_10138BBF0;
  v40 = (v30 + v31[15]);
  *v40 = v66;
  v40[1] = v67;
  v41 = (v30 + v31[16]);
  *v41 = v74;
  v41[1] = v73;

  v42 = v1[1];

  return v42();
}

uint64_t sub_101205A7C()
{
  v25 = v0[171];
  v23 = v0[162];
  v24 = v0[170];
  v22 = v0[161];
  v20 = v0[153];
  v17 = v0[144];
  v18 = v0[152];
  v15 = v0[137];
  v16 = v0[143];
  v14 = v0[136];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v21 = v0[72];
  v9 = v0[68];
  v19 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v14, v15);
  sub_100006654(v16, v17);
  sub_100006654(v18, v20);
  sub_100006654(v22, v23);
  sub_100006654(v24, v25);
  (*(v9 + 8))(v21, v19);
  v0[179] = v0[178];
  v10 = type metadata accessor for Peripheral();
  v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
}

uint64_t sub_101205C80()
{
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v2 = sub_101206000;
  }

  else
  {
    v2 = sub_101205D94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_101205D94(uint64_t a1)
{
  v2 = v1[75];
  v3 = v1[74];
  v4 = v1[73];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);
  (*(v1[77] + 8))(v1[78], v1[76]);

  v5 = v1[1];

  return v5();
}

uint64_t sub_101206000()
{
  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C348);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "cancelConnection error in readRawAccessoryMetadata() catch block: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[73];
  swift_willThrow();
  (*(v8 + 8))(v7, v9);
  (*(v0[77] + 8))(v0[78], v0[76]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1012063A0()
{
  *(*v1 + 1488) = v0;

  if (v0)
  {

    v2 = sub_1011FDA4C;
  }

  else
  {

    v2 = sub_1011FD87C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1012064EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1012065C0, 0, 0);
}

uint64_t sub_1012065C0()
{
  if (qword_1016946A8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  sub_1012163E4(v0[4], v1);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[9] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  sub_101216454(v1, v8 + v6);
  *(v8 + v7) = v4;
  v13 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = type metadata accessor for AccessoryMetadata(0);
  *v9 = v0;
  v9[1] = sub_1003722F4;
  v11 = v0[2];

  return v13(v11, &unk_10140D7B8, v8, v10);
}

uint64_t sub_101206744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_101206818, 0, 0);
}

uint64_t sub_101206818()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_1012163E4(v0[5], v1);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  sub_101216454(v1, v6 + v5);

  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = type metadata accessor for AccessoryMetadata(0);
  *v7 = v0;
  v7[1] = sub_100372668;
  v9 = v0[2];

  return withTimeout<A>(_:block:)(v9, 0x40AAD21B3B700000, 3, &unk_10140D7C8, v6, v8);
}

uint64_t sub_10120694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100014650;

  return sub_101206A1C(a1, a3, a4);
}

uint64_t sub_101206A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[237] = v3;
  v4[236] = a3;
  v4[235] = a2;
  v4[234] = a1;
  sub_1000BC4D4(&qword_10169E750, &unk_1013DC4B0);
  v4[238] = swift_task_alloc();
  v4[239] = swift_task_alloc();
  v4[240] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[241] = v5;
  v4[242] = *(v5 - 8);
  v4[243] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v4[244] = v6;
  v4[245] = *(v6 - 8);
  v4[246] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[247] = v7;
  v4[248] = *(v7 - 8);
  v4[249] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  v4[250] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  v4[251] = swift_task_alloc();
  v8 = type metadata accessor for Peripheral.ConnectionOptions();
  v4[252] = v8;
  v4[253] = *(v8 - 8);
  v4[254] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v4[255] = swift_task_alloc();

  return _swift_task_switch(sub_101206D18, 0, 0);
}

uint64_t sub_101206D18()
{
  v1 = v0[255];
  v2 = v0[251];
  v3 = v0[250];
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[233] = v4;
  sub_1012166EC(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = type metadata accessor for LongTermKey();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v7 = type metadata accessor for Peripheral.Options();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  v8 = type metadata accessor for Peripheral();
  v0[256] = v8;
  v9 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[257] = v9;
  v10 = swift_task_alloc();
  v0[258] = v10;
  *v10 = v0;
  v10[1] = sub_101207008;
  v11 = v0[255];
  v12 = v0[236];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v12, v11, v8, v9);
}

uint64_t sub_101207008()
{
  v2 = *v1;
  *(*v1 + 2072) = v0;

  sub_10000B3A8(*(v2 + 2040), &qword_101697260, &unk_10138BDC0);
  if (v0)
  {
    v3 = sub_101207440;
  }

  else
  {
    v3 = sub_10120714C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10120714C()
{
  v18 = v0;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[260] = sub_1000076D4(v1, qword_10169E3B0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[249];
    v5 = v0[248];
    v6 = v0[247];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v17);
    *(v7 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v17);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Connected to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v0[261] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v12 = swift_task_alloc();
  v0[262] = v12;
  *v12 = v0;
  v12[1] = sub_1012077C8;
  v13 = v0[257];
  v14 = v0[256];
  v15 = v0[246];

  return dispatch thunk of PeripheralProtocol.subscript.getter(v15, v14, v13);
}

uint64_t sub_101207440()
{
  v23 = v0;
  v0[309] = v0[259];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[249];
    v5 = v0[248];
    v6 = v0[247];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v22);
    *(v7 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[238];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[311] = v15;
  *v15 = v0;
  v15[1] = sub_101212C84;
  v16 = v0[257];
  v17 = v0[256];
  v18 = v0[238];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v17, v16);
}

uint64_t sub_1012077C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[263] = a1;
  v4[264] = v1;

  (*(v3[245] + 8))(v3[246], v3[244]);
  if (v1)
  {
    v5 = sub_101207BB8;
  }

  else
  {
    v5 = sub_10120793C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10120793C()
{
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v1 = sub_1012166EC(&qword_1016972A8, 255, &type metadata accessor for Service, &protocol conformance descriptor for Service);
  v2 = swift_task_alloc();
  v0[265] = v2;
  *v2 = v0;
  v2[1] = sub_101207A44;
  v3 = v0[261];
  v4 = v0[243];

  return dispatch thunk of ServiceProtocol.subscript.getter(v4, v3, v1);
}

uint64_t sub_101207A44(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[266] = a1;
  v4[267] = v1;

  (*(v3[242] + 8))(v3[243], v3[241]);
  if (v1)
  {
    v5 = sub_10120815C;
  }

  else
  {
    v5 = sub_101207F40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101207BB8()
{
  v23 = v0;
  v0[309] = v0[264];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[249];
    v5 = v0[248];
    v6 = v0[247];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v22);
    *(v7 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[238];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[311] = v15;
  *v15 = v0;
  v15[1] = sub_101212C84;
  v16 = v0[257];
  v17 = v0[256];
  v18 = v0[238];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v17, v16);
}

uint64_t sub_101207F40()
{
  *(v0 + 136) = &type metadata for PoshAccessoryNonOwnerCommand;
  v1 = sub_10038B8D0();
  *(v0 + 2144) = v1;
  *(v0 + 144) = v1;
  v2 = sub_10038B924();
  *(v0 + 2152) = v2;
  *(v0 + 152) = v2;
  *(v0 + 120) = 0;
  *(v0 + 112) = 0;
  *(v0 + 128) = 11;
  v3 = swift_task_alloc();
  *(v0 + 2160) = v3;
  *v3 = v0;
  v3[1] = sub_101208040;
  v4 = *(v0 + 2128);

  return sub_101213204(v0 + 64, v4, v0 + 112, &type metadata for PoshAccessoryNonOwnerCommand, v1, v2, 0);
}

uint64_t sub_101208040()
{
  v2 = *v1;
  *(*v1 + 2168) = v0;

  if (v0)
  {
    v3 = sub_101208CC8;
  }

  else
  {
    sub_100007BAC((v2 + 112));
    v3 = sub_1012084EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10120815C()
{
  v23 = v0;

  v0[309] = v0[267];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[249];
    v5 = v0[248];
    v6 = v0[247];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v22);
    *(v7 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[238];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[311] = v15;
  *v15 = v0;
  v15[1] = sub_101212C84;
  v16 = v0[257];
  v17 = v0[256];
  v18 = v0[238];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v17, v16);
}

uint64_t sub_1012084EC()
{
  v48 = v0;
  sub_1001011C0(v0 + 64, v0 + 160);
  *(v0 + 2176) = sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 1840);
  *(v0 + 2184) = v1;
  v2 = *(v0 + 1848);
  *(v0 + 2192) = v2;
  if (*(v0 + 1856))
  {
    sub_10038B978(v1, v2, *(v0 + 1856));
LABEL_4:
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Invalid productDataResponse!", v5, 2u);
    }

    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007BAC((v0 + 64));
    *(v0 + 2472) = v6;
    if (qword_1016946A0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    *(v0 + 2480) = sub_1000076D4(v7, qword_10169E3B0);

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 1992);
      v11 = *(v0 + 1984);
      v12 = *(v0 + 1976);
      v44 = v9;
      v13 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v13 = 136446722;
      *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v47);
      *(v13 + 12) = 2082;
      dispatch thunk of PeripheralProtocol.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;

      (*(v11 + 8))(v10, v12);
      v17 = sub_1000136BC(v14, v16, v47);

      *(v13 + 14) = v17;
      *(v13 + 22) = 2114;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v18;
      *v45 = v18;
      _os_log_impl(&_mh_execute_header, v8, v44, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
      sub_10000B3A8(v45, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();
    }

    else
    {
    }

    v19 = *(v0 + 1904);
    v20 = type metadata accessor for Peripheral.DisconnectionOptions();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = swift_task_alloc();
    *(v0 + 2488) = v21;
    *v21 = v0;
    v21[1] = sub_101212C84;
    v22 = *(v0 + 2056);
    v23 = *(v0 + 2048);
    v24 = *(v0 + 1904);

    return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
  }

  sub_10038B9A0(v1, v2, 0);

  sub_10038B9A0(v1, v2, 0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  sub_10038B978(v1, v2, 0);
  if (os_log_type_enabled(v25, v26))
  {
    log = v25;
    v27 = *(v0 + 1992);
    v28 = *(v0 + 1984);
    v43 = *(v0 + 1976);
    v29 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v29 = 136446466;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;

    (*(v28 + 8))(v27, v43);
    v33 = sub_1000136BC(v30, v32, v47);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_100017D5C(v1, v2);
    v34 = sub_100313D58(v1, v2);
    v36 = v35;
    sub_10038B978(v1, v2, 0);
    v37 = sub_1000136BC(v34, v36, v47);

    *(v29 + 14) = v37;
    _os_log_impl(&_mh_execute_header, log, v26, "%{public}s productData: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *(v0 + 328) = &type metadata for PoshAccessoryNonOwnerCommand;
  *(v0 + 336) = *(v0 + 2144);
  *(v0 + 304) = xmmword_10139D920;
  *(v0 + 320) = 11;
  v38 = swift_task_alloc();
  *(v0 + 2200) = v38;
  *v38 = v0;
  v38[1] = sub_10120906C;
  v39 = *(v0 + 2152);
  v40 = *(v0 + 2144);
  v41 = *(v0 + 2128);

  return sub_101213204(v0 + 256, v41, v0 + 304, &type metadata for PoshAccessoryNonOwnerCommand, v40, v39, 0);
}

uint64_t sub_101208CC8()
{
  v23 = v0;

  sub_100007BAC(v0 + 14);
  v0[309] = v0[271];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v1, qword_10169E3B0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[249];
    v5 = v0[248];
    v6 = v0[247];
    v20 = v3;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v22);
    *(v7 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v12;
    *v21 = v12;
    _os_log_impl(&_mh_execute_header, v2, v20, "%{public}s %{public}s Error %{public}@", v7, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[238];
  v14 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[311] = v15;
  *v15 = v0;
  v15[1] = sub_101212C84;
  v16 = v0[257];
  v17 = v0[256];
  v18 = v0[238];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v18, v17, v16);
}

uint64_t sub_10120906C()
{
  v2 = *v1;
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v3 = sub_101209A60;
  }

  else
  {
    sub_100007BAC((v2 + 304));
    v3 = sub_101209188;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_101209188()
{
  v57 = v0;
  sub_1001011C0(v0 + 256, v0 + 352);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1816);
    *(v0 + 2216) = v1;
    v2 = *(v0 + 1824);
    *(v0 + 2224) = v2;
    v3 = *(v0 + 1832);
    if (v3 == 1)
    {
      sub_10038B9A0(v1, v2, 1);

      sub_10038B9A0(v1, v2, 1);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      sub_10038B978(v1, v2, 1);
      if (os_log_type_enabled(v4, v5))
      {
        log = v4;
        v6 = *(v0 + 1992);
        v7 = *(v0 + 1984);
        v8 = *(v0 + 1976);
        v9 = swift_slowAlloc();
        v56[0] = swift_slowAlloc();
        *v9 = 136446466;
        v53 = v5;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v11;

        (*(v7 + 8))(v6, v8);
        v13 = sub_1000136BC(v10, v12, v56);

        *(v9 + 4) = v13;
        *(v9 + 12) = 2080;

        v14 = sub_1000136BC(v1, v2, v56);
        sub_10038B978(v1, v2, 1);
        *(v9 + 14) = v14;
        _os_log_impl(&_mh_execute_header, log, v53, "%{public}s manufacturerName: %s", v9, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      *(v0 + 520) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 528) = *(v0 + 2144);
      *(v0 + 496) = xmmword_10139D930;
      *(v0 + 512) = 11;
      v46 = swift_task_alloc();
      *(v0 + 2232) = v46;
      *v46 = v0;
      v46[1] = sub_101209E34;
      v47 = *(v0 + 2152);
      v48 = *(v0 + 2144);
      v49 = *(v0 + 2128);

      return sub_101213204(v0 + 448, v49, v0 + 496, &type metadata for PoshAccessoryNonOwnerCommand, v48, v47, 0);
    }

    sub_10038B978(v1, v2, v3);
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 1992);
    v18 = *(v0 + 1984);
    v19 = *(v0 + 1976);
    v20 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56[0] = v55;
    *v20 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;

    (*(v18 + 8))(v17, v19);
    v24 = sub_1000136BC(v21, v23, v56);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s Invalid manufacturerNameCommandResponse!", v20, 0xCu);
    sub_100007BAC(v55);
  }

  else
  {
  }

  v25 = *(v0 + 2192);
  v26 = *(v0 + 2184);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v27 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v26, v25, 0);
  sub_10038B978(v26, v25, 0);
  sub_100007BAC((v0 + 256));
  sub_100007BAC((v0 + 64));
  *(v0 + 2472) = v27;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v28, qword_10169E3B0);

  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 1992);
    v32 = *(v0 + 1984);
    v33 = *(v0 + 1976);
    loga = v30;
    v34 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v34 = 136446722;
    *(v34 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v56);
    *(v34 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;

    (*(v32 + 8))(v31, v33);
    v38 = sub_1000136BC(v35, v37, v56);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2114;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 24) = v39;
    *v54 = v39;
    _os_log_impl(&_mh_execute_header, v29, loga, "%{public}s %{public}s Error %{public}@", v34, 0x20u);
    sub_10000B3A8(v54, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v40 = *(v0 + 1904);
  v41 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  v42 = swift_task_alloc();
  *(v0 + 2488) = v42;
  *v42 = v0;
  v42[1] = sub_101212C84;
  v43 = *(v0 + 2056);
  v44 = *(v0 + 2048);
  v45 = *(v0 + 1904);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v45, v44, v43);
}

uint64_t sub_101209A60()
{
  v25 = v0;
  v1 = v0[274];
  v2 = v0[273];

  sub_10038B978(v2, v1, 0);
  sub_10038B978(v2, v1, 0);
  sub_100007BAC(v0 + 8);
  sub_100007BAC(v0 + 38);
  v0[309] = v0[276];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v3, qword_10169E3B0);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[249];
    v7 = v0[248];
    v8 = v0[247];
    v22 = v5;
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136446722;
    *(v9 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v24);
    *(v9 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    (*(v7 + 8))(v6, v8);
    v13 = sub_1000136BC(v10, v12, &v24);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v23 = v14;
    _os_log_impl(&_mh_execute_header, v4, v22, "%{public}s %{public}s Error %{public}@", v9, 0x20u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v0[238];
  v16 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_task_alloc();
  v0[311] = v17;
  *v17 = v0;
  v17[1] = sub_101212C84;
  v18 = v0[257];
  v19 = v0[256];
  v20 = v0[238];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v20, v19, v18);
}

uint64_t sub_101209E34()
{
  v2 = *v1;
  *(*v1 + 2240) = v0;

  if (v0)
  {
    sub_10038B978(v2[277], v2[278], 1);
    v3 = sub_10120A880;
  }

  else
  {
    sub_100007BAC(v2 + 62);
    v3 = sub_101209F60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_101209F60()
{
  v62 = v0;
  sub_1001011C0(v0 + 448, v0 + 544);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1792);
    *(v0 + 2248) = v1;
    v2 = *(v0 + 1800);
    *(v0 + 2256) = v2;
    v3 = *(v0 + 1808);
    if (v3 == 2)
    {
      sub_10038B9A0(v1, v2, 2);

      sub_10038B9A0(v1, v2, 2);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      sub_10038B978(v1, v2, 2);
      if (os_log_type_enabled(v4, v5))
      {
        log = v4;
        v6 = *(v0 + 1992);
        v7 = *(v0 + 1984);
        v8 = *(v0 + 1976);
        v9 = swift_slowAlloc();
        v61[0] = swift_slowAlloc();
        *v9 = 136446466;
        v58 = v5;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v11;

        (*(v7 + 8))(v6, v8);
        v13 = sub_1000136BC(v10, v12, v61);

        *(v9 + 4) = v13;
        *(v9 + 12) = 2080;

        v14 = sub_1000136BC(v1, v2, v61);
        sub_10038B978(v1, v2, 2);
        *(v9 + 14) = v14;
        _os_log_impl(&_mh_execute_header, log, v58, "%{public}s modelName: %s", v9, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      *(v0 + 712) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 720) = *(v0 + 2144);
      *(v0 + 688) = xmmword_10139D940;
      *(v0 + 704) = 11;
      v51 = swift_task_alloc();
      *(v0 + 2264) = v51;
      *v51 = v0;
      v51[1] = sub_10120AC74;
      v52 = *(v0 + 2152);
      v53 = *(v0 + 2144);
      v54 = *(v0 + 2128);

      return sub_101213204(v0 + 640, v54, v0 + 688, &type metadata for PoshAccessoryNonOwnerCommand, v53, v52, 0);
    }

    sub_10038B978(*(v0 + 2216), *(v0 + 2224), 1);
    v16 = v1;
    v15 = v2;
    v17 = v3;
  }

  else
  {
    v15 = *(v0 + 2224);
    v16 = *(v0 + 2216);
    v17 = 1;
  }

  sub_10038B978(v16, v15, v17);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 1992);
    v21 = *(v0 + 1984);
    v22 = *(v0 + 1976);
    v23 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61[0] = v60;
    *v23 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;

    (*(v21 + 8))(v20, v22);
    v27 = sub_1000136BC(v24, v26, v61);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Invalid modelNameCommandResponse!", v23, 0xCu);
    sub_100007BAC(v60);
  }

  else
  {
  }

  v28 = *(v0 + 2224);
  v29 = *(v0 + 2216);
  v30 = *(v0 + 2192);
  v31 = *(v0 + 2184);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v32 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v29, v28, 1);
  sub_10038B978(v31, v30, 0);
  sub_10038B978(v31, v30, 0);
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 256));
  sub_100007BAC((v0 + 64));
  *(v0 + 2472) = v32;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v33, qword_10169E3B0);

  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 1992);
    v37 = *(v0 + 1984);
    v38 = *(v0 + 1976);
    loga = v35;
    v39 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v39 = 136446722;
    *(v39 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v61);
    *(v39 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;

    (*(v37 + 8))(v36, v38);
    v43 = sub_1000136BC(v40, v42, v61);

    *(v39 + 14) = v43;
    *(v39 + 22) = 2114;
    swift_errorRetain();
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 24) = v44;
    *v59 = v44;
    _os_log_impl(&_mh_execute_header, v34, loga, "%{public}s %{public}s Error %{public}@", v39, 0x20u);
    sub_10000B3A8(v59, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v45 = *(v0 + 1904);
  v46 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  v47 = swift_task_alloc();
  *(v0 + 2488) = v47;
  *v47 = v0;
  v47[1] = sub_101212C84;
  v48 = *(v0 + 2056);
  v49 = *(v0 + 2048);
  v50 = *(v0 + 1904);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v50, v49, v48);
}

uint64_t sub_10120A880()
{
  v27 = v0;
  v1 = v0[278];
  v2 = v0[277];
  v3 = v0[274];
  v4 = v0[273];

  sub_10038B978(v2, v1, 1);
  sub_10038B978(v4, v3, 0);
  sub_10038B978(v4, v3, 0);
  sub_100007BAC(v0 + 32);
  sub_100007BAC(v0 + 8);
  sub_100007BAC(v0 + 62);
  v0[309] = v0[280];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v5, qword_10169E3B0);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[249];
    v9 = v0[248];
    v10 = v0[247];
    v24 = v7;
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 136446722;
    *(v11 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v26);
    *(v11 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;

    (*(v9 + 8))(v8, v10);
    v15 = sub_1000136BC(v12, v14, &v26);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v25 = v16;
    _os_log_impl(&_mh_execute_header, v6, v24, "%{public}s %{public}s Error %{public}@", v11, 0x20u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = v0[238];
  v18 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_task_alloc();
  v0[311] = v19;
  *v19 = v0;
  v19[1] = sub_101212C84;
  v20 = v0[257];
  v21 = v0[256];
  v22 = v0[238];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v22, v21, v20);
}

uint64_t sub_10120AC74()
{
  v2 = *v1;
  *(*v1 + 2272) = v0;

  if (v0)
  {
    v3 = v2[282];
    v4 = v2[281];
    sub_10038B978(v2[277], v2[278], 1);
    sub_10038B978(v4, v3, 2);
    v5 = sub_10120B6B4;
  }

  else
  {
    sub_100007BAC(v2 + 86);
    v5 = sub_10120ADC0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10120ADC0()
{
  v68 = v0;
  sub_1001011C0(v0 + 640, v0 + 736);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1744);
    *(v0 + 2280) = v1;
    v2 = *(v0 + 1760);
    if (v2 == 3)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 1992);
        v6 = *(v0 + 1984);
        v7 = *(v0 + 1976);
        v8 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v67[0] = v64;
        *v8 = 136446466;
        v62 = v4;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v9 = v7;
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v11;

        (*(v6 + 8))(v5, v9);
        v13 = sub_1000136BC(v10, v12, v67);

        *(v8 + 4) = v13;
        *(v8 + 12) = 2048;
        *(v8 + 14) = v1;
        _os_log_impl(&_mh_execute_header, v3, v62, "%{public}s category: %llu", v8, 0x16u);
        sub_100007BAC(v64);
      }

      else
      {
      }

      *(v0 + 904) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 912) = *(v0 + 2144);
      *(v0 + 880) = xmmword_10139D950;
      *(v0 + 896) = 11;
      v56 = swift_task_alloc();
      *(v0 + 2288) = v56;
      *v56 = v0;
      v56[1] = sub_10120BAC8;
      v57 = *(v0 + 2152);
      v58 = *(v0 + 2144);
      v59 = *(v0 + 2128);

      return sub_101213204(v0 + 832, v59, v0 + 880, &type metadata for PoshAccessoryNonOwnerCommand, v58, v57, 0);
    }

    v19 = *(v0 + 1752);
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    sub_10038B978(*(v0 + 2248), *(v0 + 2256), 2);
    sub_10038B978(v21, v20, 1);
    v16 = v1;
    v17 = v19;
    v18 = v2;
  }

  else
  {
    v14 = *(v0 + 2224);
    v15 = *(v0 + 2216);
    sub_10038B978(*(v0 + 2248), *(v0 + 2256), 2);
    v16 = v15;
    v17 = v14;
    v18 = 1;
  }

  sub_10038B978(v16, v17, v18);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 1992);
    v25 = *(v0 + 1984);
    v26 = *(v0 + 1976);
    v27 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v27 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;

    (*(v25 + 8))(v24, v26);
    v31 = sub_1000136BC(v28, v30, v67);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Invalid categoryCommandResponse!", v27, 0xCu);
    sub_100007BAC(v65);
  }

  else
  {
  }

  v32 = *(v0 + 2256);
  v33 = *(v0 + 2248);
  v66 = *(v0 + 2224);
  v34 = *(v0 + 2216);
  v35 = *(v0 + 2192);
  v36 = *(v0 + 2184);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v37 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v33, v32, 2);
  sub_10038B978(v34, v66, 1);
  sub_10038B978(v36, v35, 0);
  sub_10038B978(v36, v35, 0);
  sub_100007BAC((v0 + 640));
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 256));
  sub_100007BAC((v0 + 64));
  *(v0 + 2472) = v37;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v38, qword_10169E3B0);

  swift_errorRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v0 + 1992);
    v42 = *(v0 + 1984);
    v43 = *(v0 + 1976);
    v61 = v40;
    v44 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v44 = 136446722;
    *(v44 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v67);
    *(v44 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;

    (*(v42 + 8))(v41, v43);
    v48 = sub_1000136BC(v45, v47, v67);

    *(v44 + 14) = v48;
    *(v44 + 22) = 2114;
    swift_errorRetain();
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 24) = v49;
    *v63 = v49;
    _os_log_impl(&_mh_execute_header, v39, v61, "%{public}s %{public}s Error %{public}@", v44, 0x20u);
    sub_10000B3A8(v63, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v50 = *(v0 + 1904);
  v51 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
  v52 = swift_task_alloc();
  *(v0 + 2488) = v52;
  *v52 = v0;
  v52[1] = sub_101212C84;
  v53 = *(v0 + 2056);
  v54 = *(v0 + 2048);
  v55 = *(v0 + 1904);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v55, v54, v53);
}

uint64_t sub_10120B6B4()
{
  v29 = v0;
  v1 = v0[282];
  v2 = v0[281];
  v3 = v0[278];
  v4 = v0[277];
  v5 = v0[274];
  v6 = v0[273];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 32);
  sub_100007BAC(v0 + 8);
  sub_100007BAC(v0 + 86);
  v0[309] = v0[284];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v7, qword_10169E3B0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[249];
    v11 = v0[248];
    v12 = v0[247];
    v26 = v9;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v28);
    *(v13 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v27 = v18;
    _os_log_impl(&_mh_execute_header, v8, v26, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[238];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[311] = v21;
  *v21 = v0;
  v21[1] = sub_101212C84;
  v22 = v0[257];
  v23 = v0[256];
  v24 = v0[238];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
}

uint64_t sub_10120BAC8()
{
  v2 = *v1;
  *(*v1 + 2296) = v0;

  if (v0)
  {
    v3 = v2[282];
    v4 = v2[281];
    sub_10038B978(v2[277], v2[278], 1);
    sub_10038B978(v4, v3, 2);
    v5 = sub_10120C548;
  }

  else
  {
    sub_100007BAC(v2 + 110);
    v5 = sub_10120BC14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10120BC14()
{
  v69 = v0;
  sub_1001011C0(v0 + 832, v0 + 928);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1720);
    *(v0 + 2304) = v1;
    v2 = *(v0 + 1736);
    if (v2 == 4)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 1992);
        v6 = *(v0 + 1984);
        v7 = *(v0 + 1976);
        v8 = swift_slowAlloc();
        v68[0] = swift_slowAlloc();
        *v8 = 136446466;
        v64 = v4;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v10;

        (*(v6 + 8))(v5, v7);
        v12 = sub_1000136BC(v9, v11, v68);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        v13 = sub_10098E010();
        v15 = sub_1000136BC(v13, v14, v68);

        *(v8 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v3, v64, "%{public}s protocolVersion: %s", v8, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      *(v0 + 1096) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 1104) = *(v0 + 2144);
      *(v0 + 1072) = xmmword_10139D960;
      *(v0 + 1088) = 11;
      v58 = swift_task_alloc();
      *(v0 + 2312) = v58;
      *v58 = v0;
      v58[1] = sub_10120C964;
      v59 = *(v0 + 2152);
      v60 = *(v0 + 2144);
      v61 = *(v0 + 2128);

      return sub_101213204(v0 + 1024, v61, v0 + 1072, &type metadata for PoshAccessoryNonOwnerCommand, v60, v59, 0);
    }

    v21 = *(v0 + 1728);
    v22 = *(v0 + 2224);
    v23 = *(v0 + 2216);
    sub_10038B978(*(v0 + 2248), *(v0 + 2256), 2);
    sub_10038B978(v23, v22, 1);
    v18 = v1;
    v19 = v21;
    v20 = v2;
  }

  else
  {
    v16 = *(v0 + 2224);
    v17 = *(v0 + 2216);
    sub_10038B978(*(v0 + 2248), *(v0 + 2256), 2);
    v18 = v17;
    v19 = v16;
    v20 = 1;
  }

  sub_10038B978(v18, v19, v20);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 1992);
    v27 = *(v0 + 1984);
    v28 = *(v0 + 1976);
    v29 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v68[0] = v66;
    *v29 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;

    (*(v27 + 8))(v26, v28);
    v33 = sub_1000136BC(v30, v32, v68);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Invalid protocolVersionCommandResponse!", v29, 0xCu);
    sub_100007BAC(v66);
  }

  else
  {
  }

  v34 = *(v0 + 2256);
  v35 = *(v0 + 2248);
  v67 = *(v0 + 2224);
  v36 = *(v0 + 2216);
  v37 = *(v0 + 2192);
  v38 = *(v0 + 2184);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v39 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v35, v34, 2);
  sub_10038B978(v36, v67, 1);
  sub_10038B978(v38, v37, 0);
  sub_10038B978(v38, v37, 0);
  sub_100007BAC((v0 + 832));
  sub_100007BAC((v0 + 640));
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 256));
  sub_100007BAC((v0 + 64));
  *(v0 + 2472) = v39;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v40, qword_10169E3B0);

  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1992);
    v44 = *(v0 + 1984);
    v45 = *(v0 + 1976);
    v63 = v42;
    v46 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v46 = 136446722;
    *(v46 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v68);
    *(v46 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;

    (*(v44 + 8))(v43, v45);
    v50 = sub_1000136BC(v47, v49, v68);

    *(v46 + 14) = v50;
    *(v46 + 22) = 2114;
    swift_errorRetain();
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 24) = v51;
    *v65 = v51;
    _os_log_impl(&_mh_execute_header, v41, v63, "%{public}s %{public}s Error %{public}@", v46, 0x20u);
    sub_10000B3A8(v65, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v52 = *(v0 + 1904);
  v53 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  v54 = swift_task_alloc();
  *(v0 + 2488) = v54;
  *v54 = v0;
  v54[1] = sub_101212C84;
  v55 = *(v0 + 2056);
  v56 = *(v0 + 2048);
  v57 = *(v0 + 1904);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v57, v56, v55);
}

uint64_t sub_10120C548()
{
  v29 = v0;
  v1 = v0[282];
  v2 = v0[281];
  v3 = v0[278];
  v4 = v0[277];
  v5 = v0[274];
  v6 = v0[273];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 80);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 32);
  sub_100007BAC(v0 + 8);
  sub_100007BAC(v0 + 110);
  v0[309] = v0[287];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v7, qword_10169E3B0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[249];
    v11 = v0[248];
    v12 = v0[247];
    v26 = v9;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v28);
    *(v13 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v27 = v18;
    _os_log_impl(&_mh_execute_header, v8, v26, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[238];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[311] = v21;
  *v21 = v0;
  v21[1] = sub_101212C84;
  v22 = v0[257];
  v23 = v0[256];
  v24 = v0[238];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
}

uint64_t sub_10120C964()
{
  v2 = *v1;
  *(*v1 + 2320) = v0;

  if (v0)
  {
    v3 = v2[282];
    v4 = v2[281];
    sub_10038B978(v2[277], v2[278], 1);
    sub_10038B978(v4, v3, 2);
    v5 = sub_10120D3EC;
  }

  else
  {
    sub_100007BAC(v2 + 134);
    v5 = sub_10120CAB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10120CAB0()
{
  v69 = v0;
  sub_1001011C0(v0 + 1024, v0 + 1120);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1696);
    *(v0 + 2328) = v1;
    v2 = *(v0 + 1712);
    if (v2 == 8)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 1992);
        v6 = *(v0 + 1984);
        v7 = *(v0 + 1976);
        v8 = swift_slowAlloc();
        v68[0] = swift_slowAlloc();
        *v8 = 136446466;
        v64 = v4;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v10;

        (*(v6 + 8))(v5, v7);
        v12 = sub_1000136BC(v9, v11, v68);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        v13 = sub_1010D840C(v1);
        v15 = sub_1000136BC(v13, v14, v68);

        *(v8 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v3, v64, "%{public}s capability: %s", v8, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      *(v0 + 1288) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 1296) = *(v0 + 2144);
      *(v0 + 1264) = xmmword_10139D970;
      *(v0 + 1280) = 11;
      v58 = swift_task_alloc();
      *(v0 + 2336) = v58;
      *v58 = v0;
      v58[1] = sub_10120D810;
      v59 = *(v0 + 2152);
      v60 = *(v0 + 2144);
      v61 = *(v0 + 2128);

      return sub_101213204(v0 + 1216, v61, v0 + 1264, &type metadata for PoshAccessoryNonOwnerCommand, v60, v59, 0);
    }

    v21 = *(v0 + 1704);
    v22 = *(v0 + 2224);
    v23 = *(v0 + 2216);
    sub_10038B978(*(v0 + 2248), *(v0 + 2256), 2);
    sub_10038B978(v23, v22, 1);
    v18 = v1;
    v19 = v21;
    v20 = v2;
  }

  else
  {
    v16 = *(v0 + 2224);
    v17 = *(v0 + 2216);
    sub_10038B978(*(v0 + 2248), *(v0 + 2256), 2);
    v18 = v17;
    v19 = v16;
    v20 = 1;
  }

  sub_10038B978(v18, v19, v20);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 1992);
    v27 = *(v0 + 1984);
    v28 = *(v0 + 1976);
    v29 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v68[0] = v66;
    *v29 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;

    (*(v27 + 8))(v26, v28);
    v33 = sub_1000136BC(v30, v32, v68);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Invalid capabilityCommandResponse!", v29, 0xCu);
    sub_100007BAC(v66);
  }

  else
  {
  }

  v34 = *(v0 + 2256);
  v35 = *(v0 + 2248);
  v67 = *(v0 + 2224);
  v36 = *(v0 + 2216);
  v37 = *(v0 + 2192);
  v38 = *(v0 + 2184);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
  v39 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v35, v34, 2);
  sub_10038B978(v36, v67, 1);
  sub_10038B978(v38, v37, 0);
  sub_10038B978(v38, v37, 0);
  sub_100007BAC((v0 + 1024));
  sub_100007BAC((v0 + 832));
  sub_100007BAC((v0 + 640));
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 256));
  sub_100007BAC((v0 + 64));
  *(v0 + 2472) = v39;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v40, qword_10169E3B0);

  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1992);
    v44 = *(v0 + 1984);
    v45 = *(v0 + 1976);
    v63 = v42;
    v46 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v46 = 136446722;
    *(v46 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v68);
    *(v46 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;

    (*(v44 + 8))(v43, v45);
    v50 = sub_1000136BC(v47, v49, v68);

    *(v46 + 14) = v50;
    *(v46 + 22) = 2114;
    swift_errorRetain();
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 24) = v51;
    *v65 = v51;
    _os_log_impl(&_mh_execute_header, v41, v63, "%{public}s %{public}s Error %{public}@", v46, 0x20u);
    sub_10000B3A8(v65, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v52 = *(v0 + 1904);
  v53 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  v54 = swift_task_alloc();
  *(v0 + 2488) = v54;
  *v54 = v0;
  v54[1] = sub_101212C84;
  v55 = *(v0 + 2056);
  v56 = *(v0 + 2048);
  v57 = *(v0 + 1904);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v57, v56, v55);
}

uint64_t sub_10120D3EC()
{
  v29 = v0;
  v1 = v0[282];
  v2 = v0[281];
  v3 = v0[278];
  v4 = v0[277];
  v5 = v0[274];
  v6 = v0[273];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 104);
  sub_100007BAC(v0 + 80);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 32);
  sub_100007BAC(v0 + 8);
  sub_100007BAC(v0 + 134);
  v0[309] = v0[290];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v7, qword_10169E3B0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[249];
    v11 = v0[248];
    v12 = v0[247];
    v26 = v9;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v28);
    *(v13 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v28);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v18;
    *v27 = v18;
    _os_log_impl(&_mh_execute_header, v8, v26, "%{public}s %{public}s Error %{public}@", v13, 0x20u);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[238];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[311] = v21;
  *v21 = v0;
  v21[1] = sub_101212C84;
  v22 = v0[257];
  v23 = v0[256];
  v24 = v0[238];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
}

uint64_t sub_10120D810()
{
  v2 = *v1;
  *(*v1 + 2344) = v0;

  if (v0)
  {
    v3 = v2[282];
    v4 = v2[281];
    sub_10038B978(v2[277], v2[278], 1);
    sub_10038B978(v4, v3, 2);
    v5 = sub_10120E264;
  }

  else
  {
    sub_100007BAC(v2 + 158);
    v5 = sub_10120D95C;
  }

  return _swift_task_switch(v5, 0, 0);
}