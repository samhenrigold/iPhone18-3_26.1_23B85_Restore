uint64_t sub_1000D1324()
{
  sub_1000D2F40(v0[22], type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D13EC(uint64_t a1, uint64_t a2)
{
  v3[17] = a1;
  v3[18] = a2;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3[19] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[25] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000D1590, v2, 0);
}

uint64_t sub_1000D1590()
{
  v1 = *(v0 + 18);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  if (v4 > 2)
  {
    if (v4 > 4)
    {
      if (v4 != 5)
      {
        goto LABEL_21;
      }
    }

    else if (v4 != 3)
    {

      goto LABEL_10;
    }
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
LABEL_21:
    if (qword_101694778 == -1)
    {
LABEL_22:
      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177AE28);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Invalid ShareId in the payload or cannot extract location Ts. Cannot store last delegated publish date", v42, 2u);
      }

      v43 = sub_1000BC4D4(&qword_101696910, &qword_10138B1F0);
      v44 = 1;
      goto LABEL_25;
    }

LABEL_36:
    swift_once();
    goto LABEL_22;
  }

LABEL_10:
  v6 = v1[3];
  v7 = v1[4];
  sub_1000035D0(*(v0 + 18), v6);
  (*(v7 + 72))(v6, v7);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = *(v0 + 18);

  v10 = v1[3];
  v11 = v1[4];
  sub_1000035D0(v9, v10);
  result = (*(v11 + 72))(v10, v11);
  if (!v13)
  {
    __break(1u);
    return result;
  }

  v14 = *(v0 + 26);
  v15 = *(v0 + 27);
  v16 = *(v0 + 25);
  UUID.init(uuidString:)();

  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v17 = *(v0 + 25);
    v18 = &qword_1016980D0;
    v19 = &unk_10138F3B0;
LABEL_20:
    sub_10000B3A8(v17, v18, v19);
    goto LABEL_21;
  }

  v20 = *(v0 + 18);
  v21 = *(*(v0 + 27) + 32);
  v21(*(v0 + 28), *(v0 + 25), *(v0 + 26));
  v23 = v1[3];
  v22 = v1[4];
  sub_1000035D0(v20, v23);
  (*(v22 + 64))(v23, v22);
  swift_getAssociatedTypeWitness();
  sub_1000BC4D4(&qword_101696918, &qword_10138B1F8);
  v24 = _arrayForceCast<A, B>(_:)();

  v25 = *(v24 + 16);
  if (!v25)
  {
    v33 = *(v0 + 27);
    v34 = *(v0 + 28);
    v35 = *(v0 + 26);
    v36 = *(v0 + 20);
    v37 = *(v0 + 21);
    v38 = *(v0 + 19);

    (*(v33 + 8))(v34, v35);
    (*(v37 + 56))(v38, 1, 1, v36);
    goto LABEL_19;
  }

  v64 = v21;
  sub_10001F280(v24 + 32, v0 + 56);
  if (v25 != 1)
  {
    v46 = (*(v0 + 21) + 8);
    v47 = v24 + 72;
    v48 = 1;
    v65 = v25;
    v66 = v24;
    while (v48 < *(v24 + 16))
    {
      v50 = *(v0 + 22);
      v49 = *(v0 + 23);
      v51 = *(v0 + 20);
      sub_10001F280(v47, (v0 + 6));
      v52 = *(v0 + 10);
      v53 = *(v0 + 11);
      sub_1000035D0(v0 + 7, v52);
      (*(v53 + 32))(v52, v53);
      v54 = *(v0 + 15);
      v55 = *(v0 + 16);
      sub_1000035D0(v0 + 12, v54);
      (*(v55 + 32))(v54, v55);
      v56 = static Date.< infix(_:_:)();
      v57 = *v46;
      (*v46)(v50, v51);
      v57(v49, v51);
      if (v56)
      {
        sub_100007BAC(v0 + 7);
        sub_10000A748(v0 + 6, v0 + 56);
      }

      else
      {
        sub_100007BAC(v0 + 12);
      }

      ++v48;
      v47 += 40;
      v24 = v66;
      if (v65 == v48)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_16:
  v26 = *(v0 + 20);
  v27 = *(v0 + 21);
  v28 = *(v0 + 19);

  sub_10000A748((v0 + 56), (v0 + 1));
  v29 = *(v0 + 5);
  v30 = *(v0 + 6);
  sub_1000035D0(v0 + 2, v29);
  (*(v30 + 32))(v29, v30);
  (*(v27 + 56))(v28, 0, 1, v26);
  sub_100007BAC(v0 + 2);
  v31 = (*(v27 + 48))(v28, 1, v26);
  v32 = *(v0 + 28);
  if (v31 == 1)
  {
    (*(*(v0 + 27) + 8))(*(v0 + 28), *(v0 + 26));
LABEL_19:
    v17 = *(v0 + 19);
    v18 = &unk_101696900;
    v19 = &unk_10138B1E0;
    goto LABEL_20;
  }

  v58 = *(v0 + 26);
  v59 = *(v0 + 24);
  v60 = *(v0 + 20);
  v61 = *(v0 + 17);
  v62 = *(*(v0 + 21) + 32);
  v62(v59, *(v0 + 19), v60);
  v43 = sub_1000BC4D4(&qword_101696910, &qword_10138B1F0);
  v63 = *(v43 + 48);
  v64(v61, v32, v58);
  v62(v61 + v63, v59, v60);
  v44 = 0;
LABEL_25:
  (*(*(v43 - 8) + 56))(*(v0 + 17), v44, 1, v43);

  v45 = *(v0 + 1);

  return v45();
}

uint64_t sub_1000D1CB0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000D1D24(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_1000D1DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_1000D1E90(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1000D1F38(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_1000D1FE0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_1000D2088()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000D2118;

  return sub_1000C8400();
}

uint64_t sub_1000D2118(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000D2218(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000D2238, v3, 0);
}

uint64_t sub_1000D2238()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_1000D230C;
    v2 = v0[2];

    return sub_1000C73BC(v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000D230C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1000D2464;
  v4 = *(v1 + 16);

  return sub_1000CB8EC(v4);
}

uint64_t sub_1000D2464()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000D2558()
{
  type metadata accessor for DelegatedBeaconPayloadPublisher();
  sub_1000D2E90(&unk_1016B10C0, v0, type metadata accessor for DelegatedBeaconPayloadPublisher, &unk_10138B158);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1000D2650@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E713D0(v4, a1);
}

unint64_t sub_1000D26C4()
{
  result = qword_101696928;
  if (!qword_101696928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696928);
  }

  return result;
}

unint64_t sub_1000D271C()
{
  result = qword_101696968;
  if (!qword_101696968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696968);
  }

  return result;
}

uint64_t sub_1000D2770@<X0>(void *a1@<X8>)
{
  type metadata accessor for UUID();
  v3 = *(v1 + 16);

  return sub_100E74048(v3, a1);
}

unint64_t sub_1000D27EC()
{
  result = qword_101696980;
  if (!qword_101696980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696980);
  }

  return result;
}

double sub_1000D2894@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 56);

  return result;
}

uint64_t sub_1000D28E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1000C5E68(v2, v3, v4);
}

uint64_t sub_1000D298C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_1000C674C(v2, v3);
}

unint64_t sub_1000D2A24()
{
  result = qword_1016969B0;
  if (!qword_1016969B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016969B0);
  }

  return result;
}

uint64_t sub_1000D2A70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BC4D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000D2AD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BC4D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

BOOL sub_1000D2B40@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1000BC4D4(&qword_1016969A8, &unk_10138B270) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  result = sub_1000C7128(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

uint64_t sub_1000D2BE8()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return _swift_deallocObject(v0, v3 + v2 + 1);
}

void sub_1000D2D0C(void *a1@<X8>)
{
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
  v6 = v5[*(v3 + 64)];

  sub_100E70190(v4, v5, v6, a1);
}

uint64_t sub_1000D2DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E71428(v4, a1);
}

uint64_t sub_1000D2E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D2E90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000D2ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D2F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for MessagingDestination.DestinationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessagingDestination.DestinationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D3110()
{
  result = qword_1016969F8;
  if (!qword_1016969F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016969F8);
  }

  return result;
}

uint64_t sub_1000D3184()
{
  v0 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  sub_100044B3C(v0, qword_101696A00);
  v1 = sub_1000076D4(v0, qword_101696A00);
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static Date.testSetNow(date:)(uint64_t a1)
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v5 == 1)
  {
    if (qword_101694418 != -1)
    {
      swift_once();
    }

    v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v3 = sub_1000076D4(v2, qword_101696A00);
    swift_beginAccess();
    sub_1000D33A0(a1, v3);
    return swift_endAccess();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D33A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D3410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D3480(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000D34EC()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v0 + OBJC_IVAR____TtC12searchpartyd40UnwantedTrackingUserNotificationDelegate_name);
  *v7 = 0xD000000000000028;
  v7[1] = 0x800000010138B360;
  v16 = OBJC_IVAR____TtC12searchpartyd40UnwantedTrackingUserNotificationDelegate_serialQueue;
  v15[0] = sub_1000BC488();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = v15[1];
  *&v8[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C120);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "UnwantedTrackingUserNotificationDelegate: init", v12, 2u);
  }

  v13 = type metadata accessor for UnwantedTrackingUserNotificationDelegate();
  v17.receiver = v8;
  v17.super_class = v13;
  return objc_msgSendSuper2(&v17, "init");
}

id sub_1000D386C()
{
  v1 = v0;
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C120);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "UnwantedTrackingUserNotificationDelegate: Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for UnwantedTrackingUserNotificationDelegate();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1000D3A04()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C120);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "UnwantedTrackingUserNotificationDelegate: startup", v11, 2u);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  aBlock[4] = sub_1000D5750;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10160EA70;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

void sub_1000D3D78()
{
  v1 = v0;
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C120);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "UnwantedTrackingUserNotificationDelegate: setupUserNotifications", v5, 2u);
  }

  v6 = objc_allocWithZone(UNUserNotificationCenter);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithBundleIdentifier:v7];

  [v8 setDelegate:v1];
  [v8 setWantsNotificationResponsesDelivered];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  sub_1000034A4();
  v9 = sub_100003518();
  v10 = String._bridgeToObjectiveC()();
  [v9 BOOLForKey:v10];

  v11 = type metadata accessor for Transaction();
  __chkstk_darwin(v11);
  static Transaction.named<A>(_:with:)();
  v12 = objc_allocWithZone(UNUserNotificationCenter);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithBundleIdentifier:v13];

  __chkstk_darwin(v15);
  static Transaction.named<A>(_:with:)();
}

void sub_1000D407C(uint64_t a1, void *a2, uint64_t a3)
{
  v6[5] = a1;
  v6[4] = sub_1000D572C;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000D415C;
  v6[3] = &unk_10160EA20;
  v5 = _Block_copy(v6);

  [a2 requestAuthorizationWithOptions:a3 completionHandler:v5];
  _Block_release(v5);
}

void sub_1000D415C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1000D41D4(uint64_t a1, id a2)
{
  v4 = [a2 notificationSettings];
  v5 = [v4 authorizationStatus];

  if (v5)
  {
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C120);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "UnwantedTrackingUserNotificationDelegate: No need to request deliver quietly authorization for Find My. Authorization already determined.", v9, 2u);
    }
  }

  else
  {
    v11[4] = sub_1000D5708;
    v11[5] = a1;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000D415C;
    v11[3] = &unk_10160E9F8;
    v10 = _Block_copy(v11);

    [a2 requestAuthorizationWithOptions:66 completionHandler:v10];
    _Block_release(v10);
  }
}

void sub_1000D439C(char a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C120);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2080;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v14);

    *(v9 + 10) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 0x12u);
    sub_100007BAC(v10);
  }

  Transaction.capture()();
}

uint64_t sub_1000D4538()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12searchpartyd40UnwantedTrackingUserNotificationDelegate_name);

  return v1;
}

void sub_1000D46C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177C120);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v7 = String.init<A>(describing:)();
      v9 = sub_1000136BC(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "UnwantedTrackingUserNotificationDelegate: Error opening url %s", v5, 0xCu);
      sub_100007BAC(v6);
    }

    else
    {
    }
  }
}

void sub_1000D488C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000D4918(uint64_t a1)
{
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C120);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "UnwantedTrackingUserNotificationDelegate: willPresentNotification", v5, 2u);
  }

  v6 = *(a1 + 16);

  return v6(a1, 19);
}

void sub_1000D4A14(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C120);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "UnwantedTrackingUserNotificationDelegate: OpenURL", v12, 2u);
  }

  sub_1000D5660(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "UnwantedTrackingUserNotificationDelegate: Error opening settings. Invalid URL", v15, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138B360;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v17;
    *(inited + 72) = v5;
    v18 = sub_1000280DC((inited + 48));
    (*(v6 + 16))(v18, v8, v5);
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v19;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v20;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = 1;
    v21 = sub_10090403C(inited);
    swift_setDeallocating();
    sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
    swift_arrayDestroy();
    v22 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v22)
    {
      v23 = v22;
      v24 = String._bridgeToObjectiveC()();
      sub_1006950E0(v21);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v26 = [objc_opt_self() optionsWithDictionary:isa];

      aBlock[4] = sub_1000D46C8;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D488C;
      aBlock[3] = &unk_10160E9D0;
      v27 = _Block_copy(aBlock);
      [v23 openApplication:v24 withOptions:v26 completion:v27];
      _Block_release(v27);

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_1000D4F44(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C120);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_1000136BC(a1, a2, &v21);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1000136BC(a3, a4, &v21);
    _os_log_impl(&_mh_execute_header, v15, v16, "UnwantedTrackingUserNotificationDelegate: processUTNotification for beacon %s, action %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v21 = 0xD000000000000026;
  v22 = 0x800000010134AA30;
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  String.append(_:)(v18);
  URL.init(string:)();

  if (a3 == 0xD00000000000002ELL && 0x800000010134AA60 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v21 = 0xD000000000000026;
    v22 = 0x800000010134AA90;
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    String.append(_:)(v19);
    URL.init(string:)();

    sub_10000B3A8(v13, &unk_101696AC0, &qword_101390A60);
    sub_1000D55F0(v11, v13);
  }

  sub_1000D4A14(v13);
  return sub_10000B3A8(v13, &unk_101696AC0, &qword_101390A60);
}

uint64_t sub_1000D5280(void *a1, uint64_t a2)
{
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C120);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "UnwantedTrackingUserNotificationDelegate: didReceiveResponse", v7, 2u);
  }

  v8 = [a1 notification];
  v9 = [v8 request];

  v10 = [v9 content];
  v11 = [v10 categoryIdentifier];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 0xD000000000000024 && 0x800000010134AA00 == v14)
  {

    goto LABEL_14;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_14:
    v23 = [a1 notification];
    v24 = [v23 request];

    v25 = [v24 identifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = [a1 actionIdentifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    sub_1000D4F44(v26, v28, v30, v32);

    goto LABEL_15;
  }

  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "UnwantedTrackingUserNotificationDelegate: Unhandled notification response %@", v20, 0xCu);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);
  }

LABEL_15:
  v33 = *(a2 + 16);

  return v33(a2);
}

uint64_t sub_1000D55F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D5660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D578C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A470);
  sub_1000076D4(v0, qword_10177A470);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000D5810()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A488);
  v1 = sub_1000076D4(v0, qword_10177A488);
  if (qword_101694420 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000D58D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for FinderStateInfo(0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  sub_1000BC4D4(&qword_101696C48, &unk_10138B590);
  v4[8] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101696C50, &unk_1013B8560);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101696C58, &unk_10138B5A0);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[15] = v8;
  *v8 = v4;
  v8[1] = sub_1000D5B14;

  return daemon.getter();
}

uint64_t sub_1000D5B14(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FinderStateObserver(0);
  v6 = sub_1000DFF1C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000DFF1C(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver, &unk_1013BF148);
  *v3 = v9;
  v3[1] = sub_1000D5CF8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000D5CF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1000D5EB0, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 152) = v5;
    *v5 = v4;
    v5[1] = sub_1000D600C;
    v6 = *(v3 + 88);

    return sub_1008488EC(v6);
  }
}

uint64_t sub_1000D5EB0()
{
  if (qword_101694428 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A488);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing FinderStateObserver service.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000D600C()
{

  return _swift_task_switch(sub_1000D6108, 0, 0);
}

uint64_t sub_1000D6108()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1000D61E4;
  v5 = v0[12];
  v6 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1000D61E4()
{

  return _swift_task_switch(sub_1000D62E0, 0, 0);
}

uint64_t sub_1000D62E0()
{
  v1 = v0[8];
  v2 = sub_1000BC4D4(&qword_101696C60, &qword_1013B8570);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v3 = v0[1];

    return v3();
  }

  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  v9 = v1 + *(v2 + 48);
  v10 = sub_1000BC4D4(&qword_101696C68, &qword_10138B5B0);
  sub_1000DD6A4(v9 + *(v10 + 48), v5);
  sub_1000D2AD8(v9, v8, &qword_101696C40, &unk_1013B8520);
  v11 = (*(v7 + 48))(v8, 1, v6);
  v12 = v0[7];
  if (v11 == 1)
  {
    v13 = v0[3];
    sub_1000DD708(v0[7]);
    sub_10000B3A8(v13, &qword_101696C40, &unk_1013B8520);
LABEL_12:
    v17 = swift_task_alloc();
    v0[20] = v17;
    *v17 = v0;
    v17[1] = sub_1000D61E4;
    v18 = v0[12];
    v19 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v19, 0, 0, v18);
  }

  v14 = v0[6];
  sub_1000DD6A4(v0[3], v14);
  if (*v14 == *v12)
  {
    v16 = v0[7];
    sub_1000DD708(v0[6]);
    sub_1000DD708(v16);
    goto LABEL_12;
  }

  v15 = v0[2];

  return _swift_task_switch(sub_1000D65A8, v15, 0);
}

uint64_t sub_1000D65A8()
{
  *(*(v0 + 16) + 176) = 1;
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1000D6644;

  return sub_10001CE74();
}

uint64_t sub_1000D6644()
{

  return _swift_task_switch(sub_1000D6740, 0, 0);
}

uint64_t sub_1000D6740()
{
  v1 = v0[7];
  sub_1000DD708(v0[6]);
  sub_1000DD708(v1);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1000D61E4;
  v3 = v0[12];
  v4 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v4, 0, 0, v3);
}

uint64_t sub_1000D67F8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000D6964, v4, 0);
}

uint64_t sub_1000D6964()
{

  v2 = *(v0 + 96);
  v3 = (*(v0 + 88) - 1) & *(v0 + 88);
  if (v3)
  {
    v4 = *(v0 + 80);
LABEL_7:
    *(v0 + 88) = v3;
    *(v0 + 96) = v2;
    v6 = __clz(__rbit64(v3)) | (v2 << 6);
    v1 = *(*(v4 + 48) + v6);
    *(v0 + 104) = *(*(v4 + 56) + 8 * v6);
    v7 = qword_101694428;

    if (v7 != -1)
    {
LABEL_37:
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177A488);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_33;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *(v0 + 40) = v12;
    *v11 = 136446210;
    if (v1 > 3)
    {
      if (v1 > 5)
      {
        if (v1 != 6)
        {
          if (v1 == 7)
          {
            v13 = 0xEF79627261654E6ELL;
            v14 = 0x6F696E61706D6F63;
          }

          else
          {
            v13 = 0xEF646E756F466E65;
            v14 = 0x6857796669746F6ELL;
          }

          goto LABEL_32;
        }

        v13 = 0xEF6C6C65436E4F79;
        goto LABEL_30;
      }

      if (v1 != 4)
      {
        v13 = 0xEF694669576E4F79;
LABEL_30:
        v17 = 0x747461426E6FLL;
        goto LABEL_31;
      }

      v18 = 0x6C6C65436ELL;
      goto LABEL_27;
    }

    if (v1 > 1)
    {
      if (v1 != 2)
      {
        v18 = 0x694669576ELL;
LABEL_27:
        v13 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        v14 = 0x4F7265776F506E6FLL;
        goto LABEL_32;
      }

      v13 = 0xE900000000000072;
      v14 = 0x65776F5068676968;
    }

    else
    {
      if (!v1)
      {
        v13 = 0xE800000000000000;
        v17 = 0x776F50776F6CLL;
LABEL_31:
        v14 = v17 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        goto LABEL_32;
      }

      v13 = 0xEB00000000726577;
      v14 = 0x6F506D756964656DLL;
    }

LABEL_32:
    v19 = sub_1000136BC(v14, v13, (v0 + 40));

    *(v11 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "FindMyNetworkPublishActivityService updateCriteria %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);

LABEL_33:

    v22 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
    v20 = swift_task_alloc();
    *(v0 + 112) = v20;
    *v20 = v0;
    v20[1] = sub_1000D67F8;
    v21 = *(v0 + 72);

    return v22(v21);
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v4 = *(v0 + 80);
    if (v5 >= (((1 << *(v0 + 120)) + 63) >> 6))
    {
      break;
    }

    v3 = *(v4 + 8 * v5 + 64);
    ++v2;
    if (v3)
    {
      v2 = v5;
      goto LABEL_7;
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000D6D44()
{
  v1[6] = v0;
  v1[7] = *v0;
  type metadata accessor for DispatchQoS();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D6DFC, v0, 0);
}

uint64_t sub_1000D6DFC()
{
  if (qword_101694428 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A488);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FindMyNetworkPublishActivityService registerPublishActivities.", v4, 2u);
  }

  v5 = *(v0 + 48);

  *(v5 + 176) = 0;
  v6 = sub_100B28750();
  *(v0 + 72) = v6;
  v7 = *(v6 + 32);
  *(v0 + 120) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -(-1 << v7));
  }

  v10 = v8 & *(v6 + 56);
  if (v10)
  {
    v11 = 0;
LABEL_12:
    v14 = 0xD000000000000036;
    *(v0 + 80) = v10;
    *(v0 + 88) = v11;
    v15 = *(*(v6 + 48) + (__clz(__rbit64(v10)) | (v11 << 6)));
    *(v0 + 121) = v15;
    type metadata accessor for FindMyNetworkPublishDateProvider();
    v16 = swift_allocObject();
    *(v0 + 96) = v16;
    swift_defaultActor_initialize();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        if (v15 != 6)
        {
          if (v15 == 7)
          {
            v17 = "com.apple.icloud.searchpartyd.activity.CompanionNearby";
          }

          else
          {
            v17 = "com.apple.icloud.searchpartyd.activity.NotifyWhenFound";
          }

          goto LABEL_32;
        }

        v22 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onBatteryOnCell";
LABEL_34:
        v20 = (v22 - 32);
        v14 = 0xD00000000000004BLL;
        goto LABEL_35;
      }

      if (v15 != 4)
      {
        v22 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onBatteryOnWiFi";
        goto LABEL_34;
      }

      v21 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onPowerOnCell";
      goto LABEL_30;
    }

    if (v15 > 1)
    {
      if (v15 != 2)
      {
        v21 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onPowerOnWiFi";
LABEL_30:
        v20 = (v21 - 32);
        v14 = 0xD000000000000049;
        goto LABEL_35;
      }

      v20 = "LoadPublish-onPowerOnWiFi";
      v14 = 0xD000000000000045;
    }

    else
    {
      if (!v15)
      {
        v14 = 0xD000000000000044;
        v17 = "com.apple.icloud.searchpartyd.activity.BeaconPayloadPublish-LowPower";
LABEL_32:
        v20 = (v17 - 32);
        goto LABEL_35;
      }

      v20 = "loadPublish-HighPower";
      v14 = 0xD000000000000047;
    }

LABEL_35:
    v23 = *(v0 + 56);
    v24 = *(v0 + 48);
    type metadata accessor for XPCActivity();
    static DispatchQoS.background.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v15;
    *(v25 + 24) = v16;
    *(v25 + 32) = &off_1016129A8;
    *(v25 + 40) = v23;
    v26 = swift_allocObject();
    *(v26 + 16) = v15;
    *(v26 + 24) = v24;
    *(v26 + 32) = v23;

    v27 = swift_task_alloc();
    *(v0 + 104) = v27;
    *v27 = v0;
    v27[1] = sub_1000D71F0;
    v28 = *(v0 + 64);

    return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(v14, v20 | 0x8000000000000000, v28, &unk_10138B638, v25, &unk_10138B648, v26);
  }

  v12 = 0;
  v13 = ((63 - v9) >> 6) - 1;
  while (v13 != v12)
  {
    v11 = v12 + 1;
    v10 = *(v6 + 8 * v12++ + 64);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000D71F0(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1000D7308, v2, 0);
}

uint64_t sub_1000D7308()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 121);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 168);
  *(v0 + 40) = v4;
  *(v1 + 168) = 0x8000000000000000;
  v5 = sub_100771EA0(v2);
  v12 = *(v4 + 16);
  v13 = (v6 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    v39 = v5;
    sub_101004F8C();
    v5 = v39;
    goto LABEL_8;
  }

  LOBYTE(v2) = v6;
  if (*(v4 + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

  v16 = *(v0 + 121);
  sub_100FE61C8(v15, isUniquelyReferenced_nonNull_native);
  v5 = sub_100771EA0(v16);
  if ((v2 & 1) != (v6 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  v18 = *(v0 + 40);
  v19 = *(v0 + 112);
  if (v2)
  {
    *(v18[7] + 8 * v5) = v19;
  }

  else
  {
    v20 = *(v0 + 121);
    v18[(v5 >> 6) + 8] |= 1 << v5;
    *(v18[6] + v5) = v20;
    *(v18[7] + 8 * v5) = v19;
    v21 = v18[2];
    v14 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v14)
    {
      __break(1u);
      return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(v5, v6, v7, v8, v9, v10, v11);
    }

    v18[2] = v22;
  }

  *(*(v0 + 48) + 168) = v18;
  v5 = swift_endAccess();
  v23 = *(v0 + 88);
  v24 = (*(v0 + 80) - 1) & *(v0 + 80);
  if (v24)
  {
    v5 = *(v0 + 72);
LABEL_18:
    v26 = 0xD000000000000036;
    *(v0 + 80) = v24;
    *(v0 + 88) = v23;
    v27 = *(*(v5 + 48) + (__clz(__rbit64(v24)) | (v23 << 6)));
    *(v0 + 121) = v27;
    type metadata accessor for FindMyNetworkPublishDateProvider();
    v28 = swift_allocObject();
    *(v0 + 96) = v28;
    swift_defaultActor_initialize();
    if (v27 <= 3)
    {
      if (v27 <= 1)
      {
        if (v27)
        {
          v31 = "loadPublish-HighPower";
          v26 = 0xD000000000000047;
          goto LABEL_41;
        }

        v26 = 0xD000000000000044;
        v29 = "com.apple.icloud.searchpartyd.activity.BeaconPayloadPublish-LowPower";
        goto LABEL_38;
      }

      if (v27 == 2)
      {
        v31 = "LoadPublish-onPowerOnWiFi";
        v26 = 0xD000000000000045;
        goto LABEL_41;
      }

      v32 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onPowerOnWiFi";
    }

    else
    {
      if (v27 > 5)
      {
        if (v27 != 6)
        {
          if (v27 == 7)
          {
            v29 = "com.apple.icloud.searchpartyd.activity.CompanionNearby";
          }

          else
          {
            v29 = "com.apple.icloud.searchpartyd.activity.NotifyWhenFound";
          }

LABEL_38:
          v31 = (v29 - 32);
          goto LABEL_41;
        }

        v33 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onBatteryOnCell";
LABEL_40:
        v31 = (v33 - 32);
        v26 = 0xD00000000000004BLL;
LABEL_41:
        v34 = *(v0 + 56);
        v35 = *(v0 + 48);
        type metadata accessor for XPCActivity();
        static DispatchQoS.background.getter();
        v36 = swift_allocObject();
        *(v36 + 16) = v27;
        *(v36 + 24) = v28;
        *(v36 + 32) = &off_1016129A8;
        *(v36 + 40) = v34;
        v37 = swift_allocObject();
        *(v37 + 16) = v27;
        *(v37 + 24) = v35;
        *(v37 + 32) = v34;

        v38 = swift_task_alloc();
        *(v0 + 104) = v38;
        *v38 = v0;
        v38[1] = sub_1000D71F0;
        v7 = *(v0 + 64);
        v8 = &unk_10138B638;
        v10 = &unk_10138B648;
        v6 = v31 | 0x8000000000000000;
        v5 = v26;
        v9 = v36;
        v11 = v37;

        return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(v5, v6, v7, v8, v9, v10, v11);
      }

      if (v27 != 4)
      {
        v33 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onBatteryOnWiFi";
        goto LABEL_40;
      }

      v32 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onPowerOnCell";
    }

    v31 = (v32 - 32);
    v26 = 0xD000000000000049;
    goto LABEL_41;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    v5 = *(v0 + 72);
    if (v25 >= (((1 << *(v0 + 120)) + 63) >> 6))
    {
      break;
    }

    v24 = *(v5 + 8 * v25 + 56);
    ++v23;
    if (v24)
    {
      v23 = v25;
      goto LABEL_18;
    }
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000D7794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100014650;

  return sub_1000D7860(a1, v8, a2, a4, a5);
}

uint64_t sub_1000D7860(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 176) = a2;
  *(v5 + 24) = a1;
  type metadata accessor for XPCActivity.Criteria.Options();
  *(v5 + 48) = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Priority();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = type metadata accessor for XPCActivity.Criteria();
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  *(v5 + 112) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v5 + 120) = v8;
  *v8 = v5;
  v8[1] = sub_1000D7A1C;

  return daemon.getter();
}

uint64_t sub_1000D7A1C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FinderStateObserver(0);
  v6 = sub_1000DFF1C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000DFF1C(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver, &unk_1013BF148);
  *v3 = v9;
  v3[1] = sub_1000D7C00;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000D7C00(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1000D8A4C;
  }

  else
  {

    *(v4 + 144) = a1;
    v5 = sub_1000D7D54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000D7D54()
{
  v14 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {

    return _swift_task_switch(sub_1000D7F78, v1, 0);
  }

  else
  {
    if (qword_101694428 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177A488);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 176);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136446210;
      v8 = sub_100B28010(v5);
      v10 = sub_1000136BC(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "                    FindMyNetworkPublishActivityService has finder disabled.                     Removing publish criteria for policy %{public}s.", v6, 0xCu);
      sub_100007BAC(v7);
    }

    (*(*(v0 + 88) + 56))(*(v0 + 24), 1, 1, *(v0 + 80));

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000D7F78()
{
  v1 = v0[18];
  v2 = sub_1000DFF1C(&qword_101696CC8, 255, type metadata accessor for FinderStateObserver, &unk_1013BF1A8);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1000D808C;
  v4 = v0[18];
  v6 = v0[13];
  v5 = v0[14];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF74, v4, v6);
}

uint64_t sub_1000D808C()
{

  return _swift_task_switch(sub_1000D81A4, 0, 0);
}

uint64_t sub_1000D81A4()
{
  v18 = v0;
  v1 = *(v0 + 112);
  v2 = type metadata accessor for FinderStateInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101696C40, &unk_1013B8520);
LABEL_9:
    if (qword_101694428 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177A488);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 176);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      v12 = sub_100B28010(v9);
      v14 = sub_1000136BC(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "                    FindMyNetworkPublishActivityService has finder disabled.                     Removing publish criteria for policy %{public}s.", v10, 0xCu);
      sub_100007BAC(v11);
    }

    (*(*(v0 + 88) + 56))(*(v0 + 24), 1, 1, *(v0 + 80));

    v15 = *(v0 + 8);

    return v15();
  }

  v3 = *v1;
  sub_1000DD708(v1);
  if (v3 != 1)
  {
    goto LABEL_9;
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v4 = qword_10177B348;
  *(v0 + 160) = qword_10177B348;

  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_1000D84D8;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v4, &type metadata for Configuration);
}

uint64_t sub_1000D84D8()
{

  return _swift_task_switch(sub_1000D85F0, 0, 0);
}

uint64_t sub_1000D85F0()
{
  v34 = v1;
  sub_10107341C(*(v1 + 16));
  v3 = v2;
  v4 = *&v2;

  if ((v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3 < 9.22337204e18)
  {
    v6 = *(v1 + 64);
    v5 = *(v1 + 72);
    v7 = *(v1 + 56);
    v4 = v3;
    v8 = *(v1 + 176);
    v0 = sub_100B28108(*(v1 + 32), *(v1 + 40), v8);
    (*(v6 + 104))(v5, enum case for XPCActivity.Priority.maintenance(_:), v7);
    sub_1000DB700(v8);
    XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
    if (qword_101694428 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_5:
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177A488);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v1 + 176);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446722;
    if (v12 <= 3)
    {
      v23 = 0xE800000000000000;
      v24 = 0x7265776F50776F6CLL;
      v25 = 0xE900000000000072;
      v26 = 0x65776F5068676968;
      if (v12 != 2)
      {
        v26 = 0x4F7265776F506E6FLL;
        v25 = 0xED0000694669576ELL;
      }

      if (v12)
      {
        v24 = 0x6F506D756964656DLL;
        v23 = 0xEB00000000726577;
      }

      if (v12 <= 1)
      {
        v21 = v24;
      }

      else
      {
        v21 = v26;
      }

      if (v12 <= 1)
      {
        v22 = v23;
      }

      else
      {
        v22 = v25;
      }
    }

    else
    {
      v15 = 0xEF6C6C65436E4F79;
      v16 = 0x7265747461426E6FLL;
      v17 = 0xEF79627261654E6ELL;
      v18 = 0x6F696E61706D6F63;
      if (v12 != 7)
      {
        v18 = 0x6857796669746F6ELL;
        v17 = 0xEF646E756F466E65;
      }

      if (v12 != 6)
      {
        v16 = v18;
        v15 = v17;
      }

      v19 = 0xED00006C6C65436ELL;
      v20 = 0x4F7265776F506E6FLL;
      if (v12 != 4)
      {
        v20 = 0x7265747461426E6FLL;
        v19 = 0xEF694669576E4F79;
      }

      if (v12 <= 5)
      {
        v21 = v20;
      }

      else
      {
        v21 = v16;
      }

      if (v12 <= 5)
      {
        v22 = v19;
      }

      else
      {
        v22 = v15;
      }
    }

    v27 = sub_1000136BC(v21, v22, &v33);

    *(v13 + 4) = v27;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v0;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v10, v11, "Renewed criteria for policy: %{public}s.\ndelay: %lld, gracePeriod: %lld.", v13, 0x20u);
    sub_100007BAC(v14);
  }

  v28 = *(v1 + 88);
  v29 = *(v1 + 80);
  v30 = *(v1 + 24);
  (*(v28 + 32))(v30, *(v1 + 96), v29);
  (*(v28 + 56))(v30, 0, 1, v29);

  v31 = *(v1 + 8);

  return v31();
}

uint64_t sub_1000D8A4C()
{
  v13 = v0;
  if (qword_101694428 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A488);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 176);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_100B28010(v4);
    v9 = sub_1000136BC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "                    FindMyNetworkPublishActivityService has finder disabled.                     Removing publish criteria for policy %{public}s.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  (*(*(v0 + 88) + 56))(*(v0 + 24), 1, 1, *(v0 + 80));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000D8C18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 144) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = sub_1000BC4D4(&qword_101696C40, &unk_1013B8520);
  *(v4 + 48) = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.State();
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1000D8D2C, a4, 0);
}

uint64_t sub_1000D8D2C()
{
  v39 = v0;
  if (qword_101694428 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for Logger();
  *(v0 + 88) = sub_1000076D4(v5, qword_10177A488);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  if (v9)
  {
    v37 = v6;
    v13 = *(v0 + 144);
    v36 = v8;
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = sub_100B28010(v13);
    v17 = sub_1000136BC(v15, v16, &v38);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    sub_1000DFF1C(&qword_101696CD0, 255, &type metadata accessor for XPCActivity.State, &protocol conformance descriptor for XPCActivity.State);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v10, v12);
    v22 = v18;
    v6 = v37;
    v23 = sub_1000136BC(v22, v20, &v38);

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v7, v36, "Publish activity %{public}s, state: %s.", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v21 = *(v11 + 8);
    v21(v10, v12);
  }

  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  v26 = *(v0 + 56);
  v6(v24, *(v0 + 24), v26);
  v27 = (*(v25 + 88))(v24, v26);
  if (v27 != enum case for XPCActivity.State.checkIn(_:) && v27 != enum case for XPCActivity.State.wait(_:))
  {
    if (v27 == enum case for XPCActivity.State.run(_:))
    {
      v31 = swift_task_alloc();
      *(v0 + 136) = v31;
      *v31 = v0;
      v31[1] = sub_1000D9BEC;
      v32 = *(v0 + 144);

      return sub_1000D9F8C(v32);
    }

    if (v27 == enum case for XPCActivity.State.defer(_:))
    {
      type metadata accessor for XPCActivity();
      sub_1000DFF1C(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v34 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_1000D9250, v34, v33);
    }

    if (v27 != enum case for XPCActivity.State.continue(_:) && v27 != enum case for XPCActivity.State.done(_:))
    {
      if (v27 == enum case for XPCActivity.State.invalidated(_:))
      {
        v35 = swift_task_alloc();
        *(v0 + 96) = v35;
        *v35 = v0;
        v35[1] = sub_1000D92BC;

        return daemon.getter();
      }

      v21(*(v0 + 72), *(v0 + 56));
    }
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1000D9250()
{
  v1 = *(v0 + 32);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_1000DFF68, v1, 0);
}

uint64_t sub_1000D92BC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FinderStateObserver(0);
  v6 = sub_1000DFF1C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000DFF1C(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver, &unk_1013BF148);
  *v3 = v9;
  v3[1] = sub_1000D94A0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000D94A0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 32);
  if (v1)
  {

    v7 = sub_1000D9E34;
  }

  else
  {

    *(v5 + 120) = a1;
    v7 = sub_1000D9608;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000D9608(uint64_t a1)
{
  v14 = v1;
  v2 = *(v1 + 120);
  if (v2)
  {

    return _swift_task_switch(sub_1000D97B8, v2, 0);
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v1 + 144);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136446210;
      v8 = sub_100B28010(v5);
      v10 = sub_1000136BC(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "                    FindMyNetworkPublishActivityService has finder disabled.                     ignoring invalidation of policy %{public}s.", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v11 = *(v1 + 8);

    return v11();
  }
}

uint64_t sub_1000D97B8()
{
  v1 = v0[15];
  v2 = sub_1000DFF1C(&qword_101696CC8, 255, type metadata accessor for FinderStateObserver, &unk_1013BF1A8);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1000D98CC;
  v4 = v0[15];
  v6 = v0[5];
  v5 = v0[6];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v1, v2, 0x6E4965746174735FLL, 0xEC00000029286F66, sub_1000DFF14, v4, v6);
}

uint64_t sub_1000D98CC()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1000D99F8, v1, 0);
}

uint64_t sub_1000D99F8()
{
  v16 = v0;
  v1 = *(v0 + 48);
  v2 = type metadata accessor for FinderStateInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101696C40, &unk_1013B8520);
  }

  else
  {
    v3 = *v1;
    sub_1000DD708(v1);
    if (v3 == 1)
    {
      v4 = *(v0 + 32);

      *(v4 + 176) = 1;
      goto LABEL_8;
    }
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_100B28010(v7);
    v12 = sub_1000136BC(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "                    FindMyNetworkPublishActivityService has finder disabled.                     ignoring invalidation of policy %{public}s.", v8, 0xCu);
    sub_100007BAC(v9);
  }

LABEL_8:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D9BEC()
{

  type metadata accessor for XPCActivity();
  sub_1000DFF1C(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9D54, v1, v0);
}

uint64_t sub_1000D9D54()
{
  v1 = *(v0 + 32);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_1000D9DC0, v1, 0);
}

uint64_t sub_1000D9DC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D9E34(uint64_t a1)
{
  v13 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 144);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_100B28010(v4);
    v9 = sub_1000136BC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "                    FindMyNetworkPublishActivityService has finder disabled.                     ignoring invalidation of policy %{public}s.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_1000D9F8C(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 184) = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000DA02C, v1, 0);
}

uint64_t sub_1000DA02C()
{
  v24 = v0;
  if (qword_101694428 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = sub_1000076D4(v1, qword_10177A488);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136446210;
    if (v4 <= 3)
    {
      v15 = 0xE800000000000000;
      v16 = 0x7265776F50776F6CLL;
      v17 = 0xE900000000000072;
      v18 = 0x65776F5068676968;
      if (v4 != 2)
      {
        v18 = 0x4F7265776F506E6FLL;
        v17 = 0xED0000694669576ELL;
      }

      if (v4)
      {
        v16 = 0x6F506D756964656DLL;
        v15 = 0xEB00000000726577;
      }

      if (v4 <= 1)
      {
        v13 = v16;
      }

      else
      {
        v13 = v18;
      }

      if (v4 <= 1)
      {
        v14 = v15;
      }

      else
      {
        v14 = v17;
      }
    }

    else
    {
      v7 = 0xEF6C6C65436E4F79;
      v8 = 0x7265747461426E6FLL;
      v9 = 0xEF79627261654E6ELL;
      v10 = 0x6F696E61706D6F63;
      if (v4 != 7)
      {
        v10 = 0x6857796669746F6ELL;
        v9 = 0xEF646E756F466E65;
      }

      if (v4 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xED00006C6C65436ELL;
      v12 = 0x4F7265776F506E6FLL;
      if (v4 != 4)
      {
        v12 = 0x7265747461426E6FLL;
        v11 = 0xEF694669576E4F79;
      }

      if (v4 <= 5)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (v4 <= 5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }
    }

    v19 = sub_1000136BC(v13, v14, &v23);

    *(v5 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v2, v3, "FindMyNetworkPublishActivityService runPublishActivity with policy: %{public}s.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  type metadata accessor for FindMyNetworkPublishDateProvider();
  *(v0 + 64) = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1011298C8(&off_1016075F0);
  sub_1008ECAD0();
  v20 = sub_10112C0E0() & 1;
  *(v0 + 185) = v20;

  v21 = swift_task_alloc();
  *(v0 + 72) = v21;
  *v21 = v0;
  v21[1] = sub_1000DA3A4;

  return sub_1000DDA18(v20);
}

uint64_t sub_1000DA3A4(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = swift_task_alloc();
    *(v3 + 176) = v5;
    *v5 = v4;
    v5[1] = sub_1000DB204;
    v6 = *(v3 + 185);

    return sub_1000DB94C(v6);
  }

  else
  {
    v8 = *(v3 + 40);

    return _swift_task_switch(sub_1000DA518, v8, 0);
  }
}

uint64_t sub_1000DA518()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  v0[10] = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v0[11] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[12] = v5;
  v0[13] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(&v1[v2], 1, 1, v3);
  v5(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000034;
  *(v1 + 16) = 0x800000010134AD90;

  return _swift_task_switch(sub_1000DA670, v1, 0);
}

uint64_t sub_1000DA670(uint64_t a1)
{
  v2 = v1[12];
  v4 = v1[10];
  v3 = v1[11];
  v6 = v1[5];
  v5 = v1[6];
  static DispatchTime.now()();
  v2(v5, 0, 1, v3);
  v7 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000DFA14(v5, v4 + v7);
  swift_endAccess();

  return _swift_task_switch(sub_1000DA73C, v6, 0);
}

uint64_t sub_1000DA73C()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1000DA7F8;
  v2 = *(v0 + 80);
  v3 = *(v0 + 40);
  v4 = *(v0 + 184);

  return sub_101168A88(v2, v3, v4);
}

uint64_t sub_1000DA7F8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = swift_task_alloc();
  *(v2 + 120) = v4;
  *v4 = v3;
  v4[1] = sub_1000DA954;

  return daemon.getter();
}

uint64_t sub_1000DA954(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  v6 = sub_1000DFF1C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000DFF1C(&unk_10169BA60, 255, type metadata accessor for FindMyNetworkPublisherService, &unk_1013C4DF8);
  *v3 = v9;
  v3[1] = sub_1000DAB38;

  return ActorServiceDaemon.getService<A>()(v4, MyNetworkPublisherService, v6, v7);
}

uint64_t sub_1000DAB38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = v3[5];

    return _swift_task_switch(sub_1000DAE18, v5, 0);
  }

  else
  {
    v6 = v3[10];

    v7 = swift_task_alloc();
    v3[20] = v7;
    *v7 = v4;
    v7[1] = sub_1000DACD4;

    return sub_1008EDF50(v6);
  }
}

uint64_t sub_1000DACD4(void *a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = sub_1000DB384;
  }

  else
  {
    v7 = *(v4 + 40);

    v6 = sub_1000DB188;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DAE18()
{
  v24 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 184);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v4 = 136446466;
    if (v3 <= 3)
    {
      v15 = 0xE800000000000000;
      v16 = 0x7265776F50776F6CLL;
      v17 = 0xE900000000000072;
      v18 = 0x65776F5068676968;
      if (v3 != 2)
      {
        v18 = 0x4F7265776F506E6FLL;
        v17 = 0xED0000694669576ELL;
      }

      if (v3)
      {
        v16 = 0x6F506D756964656DLL;
        v15 = 0xEB00000000726577;
      }

      if (v3 <= 1)
      {
        v13 = v16;
      }

      else
      {
        v13 = v18;
      }

      if (v3 <= 1)
      {
        v14 = v15;
      }

      else
      {
        v14 = v17;
      }
    }

    else
    {
      v7 = 0xEF6C6C65436E4F79;
      v8 = 0x7265747461426E6FLL;
      v9 = 0xEF79627261654E6ELL;
      v10 = 0x6F696E61706D6F63;
      if (v3 != 7)
      {
        v10 = 0x6857796669746F6ELL;
        v9 = 0xEF646E756F466E65;
      }

      if (v3 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xED00006C6C65436ELL;
      v12 = 0x4F7265776F506E6FLL;
      if (v3 != 4)
      {
        v12 = 0x7265747461426E6FLL;
        v11 = 0xEF694669576E4F79;
      }

      if (v3 <= 5)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (v3 <= 5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }
    }

    v19 = sub_1000136BC(v13, v14, &v23);

    *(v4 + 4) = v19;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v20;
    *v5 = v20;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed publish activity %{public}s, error: %@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  *(*(v0 + 40) + 176) = 1;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000DB188()
{

  *(*(v0 + 40) + 176) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DB204()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1000DB314, v1, 0);
}

uint64_t sub_1000DB314()
{

  *(*(v0 + 40) + 176) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DB384()
{
  v24 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 184);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v4 = 136446466;
    if (v3 <= 3)
    {
      v15 = 0xE800000000000000;
      v16 = 0x7265776F50776F6CLL;
      v17 = 0xE900000000000072;
      v18 = 0x65776F5068676968;
      if (v3 != 2)
      {
        v18 = 0x4F7265776F506E6FLL;
        v17 = 0xED0000694669576ELL;
      }

      if (v3)
      {
        v16 = 0x6F506D756964656DLL;
        v15 = 0xEB00000000726577;
      }

      if (v3 <= 1)
      {
        v13 = v16;
      }

      else
      {
        v13 = v18;
      }

      if (v3 <= 1)
      {
        v14 = v15;
      }

      else
      {
        v14 = v17;
      }
    }

    else
    {
      v7 = 0xEF6C6C65436E4F79;
      v8 = 0x7265747461426E6FLL;
      v9 = 0xEF79627261654E6ELL;
      v10 = 0x6F696E61706D6F63;
      if (v3 != 7)
      {
        v10 = 0x6857796669746F6ELL;
        v9 = 0xEF646E756F466E65;
      }

      if (v3 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xED00006C6C65436ELL;
      v12 = 0x4F7265776F506E6FLL;
      if (v3 != 4)
      {
        v12 = 0x7265747461426E6FLL;
        v11 = 0xEF694669576E4F79;
      }

      if (v3 <= 5)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (v3 <= 5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }
    }

    v19 = sub_1000136BC(v13, v14, &v23);

    *(v4 + 4) = v19;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v20;
    *v5 = v20;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed publish activity %{public}s, error: %@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  *(*(v0 + 40) + 176) = 1;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000DB700(unsigned __int8 a1)
{
  v2 = type metadata accessor for XPCActivity.Criteria.Options();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  static XPCActivity.Criteria.Options.usesDuetPowerBudgeting.getter();
  static XPCActivity.Criteria.Options.requiresNetwork.getter();
  sub_1000DD1B0(v8, v6);
  v9 = *(v3 + 8);
  v9(v6, v2);
  v9(v8, v2);
  static XPCActivity.Criteria.Options.usesDuetNetworkBudgeting.getter();
  sub_1000DD1B0(v8, v6);
  v9(v6, v2);
  v9(v8, v2);
  static XPCActivity.Criteria.Options.preventDeviceSleep.getter();
  sub_1000DD1B0(v8, v6);
  v9(v6, v2);
  result = (v9)(v8, v2);
  if (a1 > 4u)
  {
    if (a1 - 7 < 2)
    {
      return result;
    }

    if (a1 != 5)
    {
      static XPCActivity.Criteria.Options.allowBattery.getter();
      goto LABEL_9;
    }

    static XPCActivity.Criteria.Options.allowBattery.getter();
    sub_1000DD1B0(v8, v6);
    v9(v6, v2);
    v9(v8, v2);
LABEL_7:
    static XPCActivity.Criteria.Options.requiresInexpensiveNetwork.getter();
LABEL_9:
    sub_1000DD1B0(v8, v6);
    v9(v6, v2);
    return (v9)(v8, v2);
  }

  if (a1 == 3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000DB94C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 96) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000DB9E4;

  return daemon.getter();
}

uint64_t sub_1000DB9E4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1000DFF1C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000DFF1C(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1000DBBC8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000DBBC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);

  if (v1)
  {

    v6 = sub_1000DC1F4;
  }

  else
  {

    *(v4 + 48) = a1;
    v6 = sub_1000DBD30;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DBD30()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = v1;
  type metadata accessor for AnalyticsEvent(0);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  swift_defaultActor_initialize();
  *(v2 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(*(v4 - 8) + 56);
  v5(&v2[v3], 1, 1, v4);
  v5(&v2[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v4);
  *(v2 + 15) = 0xD000000000000037;
  *(v2 + 16) = 0x800000010134AD10;

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1000DBEE0;
  v7 = *(v0 + 96);

  return sub_101169B00(v2, v1, v7);
}

uint64_t sub_1000DBEE0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  type metadata accessor for AnalyticsPublisher();
  v2[10] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v3;
  v4[1] = sub_1000DC060;
  v5 = v2[8];

  return sub_101163F78(v5);
}

uint64_t sub_1000DC060()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000DC18C, v1, 0);
}

uint64_t sub_1000DC18C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DC1F4()
{
  *(v0 + 56) = 0;
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 64) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000037;
  *(v1 + 16) = 0x800000010134AD10;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1000DBEE0;
  v6 = *(v0 + 96);

  return sub_101169B00(v1, 0, v6);
}

uint64_t sub_1000DC390(uint64_t a1, char a2)
{
  *(v2 + 264) = a2;
  *(v2 + 240) = a1;
  return _swift_task_switch(sub_1000DC3B4, 0, 0);
}

uint64_t sub_1000DC3B4()
{
  if (*(v0 + 240))
  {
    v1 = swift_task_alloc();
    *(v0 + 248) = v1;
    *v1 = v0;
    v1[1] = sub_1000DC5A0;

    return sub_1010CC098();
  }

  else
  {
    v3 = *(v0 + 264);
    sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138B360;
    *(inited + 32) = 0x6E6F73616572;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = sub_1000DF96C();
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x800000010134AD50;
    *(inited + 88) = 1;
    *(inited + 96) = 0xD000000000000010;
    *(inited + 104) = 0x800000010134AD70;
    *(inited + 136) = &type metadata for Int64;
    *(inited + 144) = sub_1000DF9C0();
    *(inited + 112) = 0;
    *(inited + 152) = 2;
    *(inited + 160) = 0x7265747461426E6FLL;
    *(inited + 168) = 0xE900000000000079;
    *(inited + 176) = v3;
    *(inited + 216) = 0;
    v5 = sub_100907D24(inited);
    swift_setDeallocating();
    sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
    swift_arrayDestroy();
    v6 = *(v0 + 8);

    return v6(v5);
  }
}

uint64_t sub_1000DC5A0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1000DC854;
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = sub_1000DC6CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DC6CC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x6E6F73616572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = sub_1000DF96C();
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x800000010134AD50;
  *(inited + 88) = 1;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x800000010134AD70;
  *(inited + 136) = &type metadata for Int64;
  *(inited + 144) = sub_1000DF9C0();
  *(inited + 112) = v1;
  *(inited + 152) = 2;
  *(inited + 160) = 0x7265747461426E6FLL;
  *(inited + 168) = 0xE900000000000079;
  *(inited + 176) = v2;
  *(inited + 216) = 0;
  v4 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1000DC854()
{
  v1 = *(v0 + 264);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x6E6F73616572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = sub_1000DF96C();
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x800000010134AD50;
  *(inited + 88) = 1;
  *(inited + 96) = 0xD000000000000010;
  *(inited + 104) = 0x800000010134AD70;
  *(inited + 136) = &type metadata for Int64;
  *(inited + 144) = sub_1000DF9C0();
  *(inited + 112) = 0;
  *(inited + 152) = 2;
  *(inited + 160) = 0x7265747461426E6FLL;
  *(inited + 168) = 0xE900000000000079;
  *(inited + 176) = v1;
  *(inited + 216) = 0;
  v3 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000DC9D0()
{

  sub_100007BAC((v0 + 128));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000DCA18(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyNetworkPublishActivityService = type metadata accessor for FindMyNetworkPublishActivityService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(MyNetworkPublishActivityService, a2);
}

uint64_t sub_1000DCAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  MyNetworkPublishActivityService = type metadata accessor for FindMyNetworkPublishActivityService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, MyNetworkPublishActivityService, a4);
}

uint64_t sub_1000DCB84(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyNetworkPublishActivityService = type metadata accessor for FindMyNetworkPublishActivityService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(MyNetworkPublishActivityService, a2);
}

uint64_t sub_1000DCC2C()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000DCCF0, v0, 0);
}

uint64_t sub_1000DCCF0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;

  sub_1008CE048(0, 0, v1, &unk_10138B580, v5);

  sub_10000B3A8(v1, &qword_101698C00, &qword_10138B570);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1000DCE3C;

  return sub_1000D6D44();
}

uint64_t sub_1000DCE3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000DCF50(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  MyNetworkPublishActivityService = type metadata accessor for FindMyNetworkPublishActivityService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(MyNetworkPublishActivityService, a2);
}

uint64_t sub_1000DCFF8()
{
  type metadata accessor for FindMyNetworkPublishActivityService();
  sub_1000DFF1C(&qword_101696C78, v0, type metadata accessor for FindMyNetworkPublishActivityService, &unk_10138B4E8);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1000DD0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1000D58D8(a1, v4, v5, v6);
}

uint64_t sub_1000DD1B0(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = sub_1000BC4D4(&qword_101696CD8, &qword_10138B658);
  v5 = __chkstk_darwin(v4);
  v26 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = type metadata accessor for XPCActivity.Criteria.Options();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v23 - v14;
  v24 = *(v10 + 16);
  v25 = v2;
  v24(v13, v2, v9);
  v23[1] = sub_1000DFF1C(&qword_101696CE0, 255, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v4;
  sub_1000DFF1C(&qword_101696CE8, 255, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 48);
  *v8 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v10 + 32))(&v8[v18], v15, v9);
  }

  else
  {
    (*(v10 + 8))(v15, v9);
    v19 = v24;
    v24(&v8[v18], a2, v9);
    v19(v13, a2, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v26;
  sub_1000D2AD8(v8, v26, &qword_101696CD8, &qword_10138B658);
  v21 = *v20;
  (*(v10 + 32))(v27, &v20[*(v16 + 48)], v9);
  return v21;
}

uint64_t sub_1000DD4C0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1000DD644(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1000BC4D4(&qword_101696C70, &qword_10138B5B8);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(result + 16) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_1000DD6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinderStateInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD708(uint64_t a1)
{
  v2 = type metadata accessor for FinderStateInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DD764(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1000BC4D4(&qword_101696C80, &qword_10138B5C0);
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v2[2] = v1;
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    sub_1000BC4D4(&qword_101696C80, &qword_10138B5C0);
    return v2;
  }

  return result;
}

uint64_t sub_1000DD810()
{
  v0 = type metadata accessor for NetworkReachabilityStatus();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  type metadata accessor for NetworkReachability();
  swift_allocObject();
  NetworkReachability.init()();
  dispatch thunk of NetworkReachability.status.getter();
  (*(v1 + 104))(v4, enum case for NetworkReachabilityStatus.reachableViaWiFi(_:), v0);
  sub_1000DFF1C(&qword_101696C88, 255, &type metadata accessor for NetworkReachabilityStatus, &protocol conformance descriptor for NetworkReachabilityStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_1000DDA18(char a1)
{
  *(v1 + 554) = a1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v1 + 408) = swift_task_alloc();
  *(v1 + 416) = swift_task_alloc();
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  *(v1 + 440) = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v1 + 448) = swift_task_alloc();
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 464) = swift_task_alloc();
  *(v1 + 472) = swift_task_alloc();
  *(v1 + 480) = swift_task_alloc();
  v2 = type metadata accessor for Date();
  *(v1 + 488) = v2;
  *(v1 + 496) = *(v2 - 8);
  *(v1 + 504) = swift_task_alloc();
  *(v1 + 512) = swift_task_alloc();
  *(v1 + 520) = swift_task_alloc();
  *(v1 + 528) = swift_task_alloc();

  return _swift_task_switch(sub_1000DDBC4, 0, 0);
}

uint64_t sub_1000DDBC4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 536) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 544) = v2;
  *v2 = v0;
  v2[1] = sub_1000DDCC4;

  return unsafeBlocking<A>(_:)(v0 + 400, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_1000DDCC4()
{

  return _swift_task_switch(sub_1000DDDDC, 0, 0);
}

uint64_t sub_1000DDDDC()
{
  v109 = v0;
  v4 = *(v0 + 400);
  v5 = sub_101074350(v4);
  v6 = sub_10107436C(v4);

  if (__OFADD__(v5, v6))
  {
    goto LABEL_98;
  }

  v93 = v5 + v6;
  v7 = *(v0 + 496);
  sub_10030DB78();
  v9 = *(v8 + 16);
  v101 = (v7 + 48);
  v3 = (v7 + 8);
  if (!v9)
  {
LABEL_40:

    v2 = 0;
    goto LABEL_84;
  }

  v1 = 0;
  v99 = (v7 + 32);
  v96 = v8;
  v10 = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v106 = *(v7 + 72);
  v103 = *(v8 + 16);
  v100 = (v7 + 8);
  v102 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  do
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 304) = 0x7365547265646E75;
    *(v0 + 312) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v0 + 552) == 1)
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 isInternalBuild];

      if (v12)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v13 = *(v0 + 480);
        v14 = *(v0 + 488);
        v15 = sub_1000076D4(*(v0 + 440), qword_101696A00);
        swift_beginAccess();
        sub_1000D2A70(v15, v13, &unk_101696900, &unk_10138B1E0);
        if ((*v101)(v13, 1, v14) != 1)
        {
          (*v99)(*(v0 + 520), *(v0 + 480), *(v0 + 488));
          goto LABEL_34;
        }

        sub_10000B3A8(*(v0 + 480), &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    *(v0 + 136) = My;
    *(v0 + 144) = sub_1000DFF1C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v17 = sub_1000280DC((v0 + 112));
    (*(*(My - 8) + 104))(v17, v102, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 112));
    if (My)
    {
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&qword_101696CB8, &unk_10138B600);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v18 = *(v0 + 376);
      if ((*(v0 + 368) & 1) == 0)
      {
        v19 = [objc_opt_self() defaultCenter];
        *(v0 + 96) = sub_1000DFF70;
        *(v0 + 104) = 0;
        *(v0 + 64) = _NSConcreteStackBlock;
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_100F0FA50;
        *(v0 + 88) = &unk_10160EB38;
        v20 = _Block_copy((v0 + 64));

        v21 = [v19 addObserverForName:NSSystemClockDidChangeNotification object:0 queue:0 usingBlock:v20];
        _Block_release(v20);

        v9 = v103;
        swift_unknownObjectRelease();
      }

      if (qword_101694FE8 != -1)
      {
        swift_once();
      }

      if (*&qword_1016C0DA0 >= v18)
      {
        sub_100F10324(0);
      }

      Current = CFAbsoluteTimeGetCurrent();
      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - *(v0 + 384) - *(v0 + 392) > 86400.0)
      {
        v24 = *(v0 + 424);
        v23 = *(v0 + 432);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v25 = type metadata accessor for TaskPriority();
        v26 = *(v25 - 8);
        (*(v26 + 56))(v23, 1, 1, v25);
        v27 = swift_allocObject();
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        sub_1000D2A70(v23, v24, &qword_101698C00, &qword_10138B570);
        LODWORD(v23) = (*(v26 + 48))(v24, 1, v25);

        v28 = *(v0 + 424);
        if (v23 == 1)
        {
          sub_10000B3A8(*(v0 + 424), &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v26 + 8))(v28, v25);
        }

        v29 = *(v27 + 16);
        swift_unknownObjectRetain();

        if (v29)
        {
          swift_getObjectType();
          v30 = dispatch thunk of Actor.unownedExecutor.getter();
          v32 = v31;
          swift_unknownObjectRelease();
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        sub_10000B3A8(*(v0 + 432), &qword_101698C00, &qword_10138B570);
        v33 = swift_allocObject();
        *(v33 + 16) = &unk_10138B620;
        *(v33 + 24) = v27;
        if (v32 | v30)
        {
          *(v0 + 224) = 0;
          *(v0 + 232) = 0;
          *(v0 + 240) = v30;
          *(v0 + 248) = v32;
        }

        v3 = v100;
        v9 = v103;
        swift_task_create();
      }

      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      Date.init()();
    }

LABEL_34:
    v34 = *(v0 + 528);
    v35 = *(v0 + 520);
    v36 = *(v0 + 488);
    Date.addingTimeInterval(_:)();
    v37 = *v3;
    (*v3)(v35, v36);
    LOBYTE(v35) = static Date.> infix(_:_:)();
    v105 = v37;
    v37(v34, v36);
    if (v35)
    {
      goto LABEL_37;
    }

    ++v1;
    v10 += v106;
  }

  while (v9 != v1);
  v1 = v9;
LABEL_37:
  v38 = *(v96 + 16);
  if (v38 >= v1)
  {
    if (v1 != v38)
    {
      v94 = *(v96 + 16);
      v95 = 1;
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  v94 = v1;
  v95 = -1;
  v1 = *(v96 + 16);
LABEL_42:
  v2 = 0;
  v104 = *(v96 + 16);
  while (2)
  {
    v39 = __OFADD__(v2, v95);
    v2 += v95;
    if (v39)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v1 == v38)
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      swift_once();
      goto LABEL_85;
    }

    v97 = v2;
    do
    {
      v2 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (v2 == v38)
      {
        v1 = v38;
        goto LABEL_44;
      }

      if (v2 >= v38)
      {
        goto LABEL_95;
      }

      if (qword_101694FA8 != -1)
      {
        swift_once();
      }

      *(v0 + 320) = 0x7365547265646E75;
      *(v0 + 328) = 0xE900000000000074;
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      if (*(v0 + 553) == 1)
      {
        v43 = [objc_opt_self() sharedInstance];
        v44 = [v43 isInternalBuild];

        if (v44)
        {
          if (qword_101694418 != -1)
          {
            swift_once();
          }

          v45 = *(v0 + 488);
          v46 = *(v0 + 456);
          v47 = sub_1000076D4(*(v0 + 440), qword_101696A00);
          swift_beginAccess();
          sub_1000D2A70(v47, v46, &unk_101696900, &unk_10138B1E0);
          if ((*v101)(v46, 1, v45) != 1)
          {
            (*v99)(*(v0 + 504), *(v0 + 456), *(v0 + 488));
            goto LABEL_49;
          }

          sub_10000B3A8(*(v0 + 456), &unk_101696900, &unk_10138B1E0);
        }
      }

      v48 = type metadata accessor for Feature.FindMy();
      *(v0 + 176) = v48;
      *(v0 + 184) = sub_1000DFF1C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v49 = sub_1000280DC((v0 + 152));
      (*(*(v48 - 8) + 104))(v49, v102, v48);
      LOBYTE(v48) = isFeatureEnabled(_:)();
      sub_100007BAC((v0 + 152));
      if (v48)
      {
        if (qword_101694FD8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&qword_101696CB8, &unk_10138B600);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v50 = *(v0 + 344);
        if ((*(v0 + 336) & 1) == 0)
        {
          v51 = [objc_opt_self() defaultCenter];
          *(v0 + 48) = sub_1000DFB44;
          *(v0 + 56) = 0;
          *(v0 + 16) = _NSConcreteStackBlock;
          *(v0 + 24) = 1107296256;
          *(v0 + 32) = sub_100F0FA50;
          *(v0 + 40) = &unk_10160EAC0;
          v52 = _Block_copy((v0 + 16));

          v53 = [v51 addObserverForName:NSSystemClockDidChangeNotification object:0 queue:0 usingBlock:v52];
          _Block_release(v52);

          swift_unknownObjectRelease();
        }

        if (qword_101694FE8 != -1)
        {
          swift_once();
        }

        if (*&qword_1016C0DA0 >= v50)
        {
          sub_100F10324(0);
        }

        v54 = CFAbsoluteTimeGetCurrent();
        sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        if (v54 - *(v0 + 352) - *(v0 + 360) > 86400.0)
        {
          v55 = *(v0 + 408);
          v56 = *(v0 + 416);
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v57 = type metadata accessor for TaskPriority();
          v58 = *(v57 - 8);
          (*(v58 + 56))(v56, 1, 1, v57);
          v59 = swift_allocObject();
          *(v59 + 16) = 0;
          *(v59 + 24) = 0;
          sub_1000D2A70(v56, v55, &qword_101698C00, &qword_10138B570);
          LODWORD(v55) = (*(v58 + 48))(v55, 1, v57);

          v60 = *(v0 + 408);
          if (v55 == 1)
          {
            sub_10000B3A8(*(v0 + 408), &qword_101698C00, &qword_10138B570);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v58 + 8))(v60, v57);
          }

          v61 = *(v59 + 16);
          swift_unknownObjectRetain();

          if (v61)
          {
            swift_getObjectType();
            v62 = dispatch thunk of Actor.unownedExecutor.getter();
            v64 = v63;
            swift_unknownObjectRelease();
          }

          else
          {
            v62 = 0;
            v64 = 0;
          }

          sub_10000B3A8(*(v0 + 416), &qword_101698C00, &qword_10138B570);
          v65 = swift_allocObject();
          *(v65 + 16) = &unk_10138B610;
          *(v65 + 24) = v59;
          if (v64 | v62)
          {
            *(v0 + 192) = 0;
            *(v0 + 200) = 0;
            *(v0 + 208) = v62;
            *(v0 + 216) = v64;
          }

          v3 = v100;
          swift_task_create();
        }

        Date.init(timeIntervalSinceReferenceDate:)();
      }

      else
      {
        Date.init()();
      }

LABEL_49:
      v40 = *(v0 + 504);
      v41 = *(v0 + 512);
      v42 = *(v0 + 488);
      Date.addingTimeInterval(_:)();
      v105(v40, v42);
      LOBYTE(v40) = static Date.> infix(_:_:)();
      v105(v41, v42);
      ++v1;
      v38 = v104;
    }

    while ((v40 & 1) == 0);
    v1 = v2;
LABEL_44:
    v2 = v97;
    if (v1 != v94)
    {
      continue;
    }

    break;
  }

LABEL_84:
  v66 = *(v0 + 472);
  sub_10030DB78();
  sub_10030BB60(v67, v66);

  v1 = v93;
  if (qword_101694420 != -1)
  {
    goto LABEL_99;
  }

LABEL_85:
  v68 = *(v0 + 464);
  v69 = *(v0 + 472);
  v70 = type metadata accessor for Logger();
  sub_1000076D4(v70, qword_10177A470);
  sub_1000D2A70(v69, v68, &unk_101696900, &unk_10138B1E0);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = *(v0 + 488);
    v74 = v2;
    v75 = *(v0 + 464);
    v76 = *(v0 + 448);
    v77 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v108[0] = v107;
    *v77 = 134219010;
    v98 = v74;
    *(v77 + 4) = v74;
    *(v77 + 12) = 2048;
    *(v77 + 14) = v1;
    *(v77 + 22) = 2082;
    sub_1000D2A70(v75, v76, &unk_101696900, &unk_10138B1E0);
    if ((*v101)(v76, 1, v73) == 1)
    {
      sub_10000B3A8(*(v0 + 448), &unk_101696900, &unk_10138B1E0);
      v78 = 0xE300000000000000;
      v79 = 7104878;
    }

    else
    {
      v83 = *(v0 + 488);
      v84 = *(v0 + 448);
      v85 = Date.debugDescription.getter();
      v86 = v3;
      v79 = v85;
      v78 = v87;
      (*v86)(v84, v83);
    }

    v2 = v98;
    v88 = *(v0 + 472);
    v89 = *(v0 + 554);
    sub_10000B3A8(*(v0 + 464), &unk_101696900, &unk_10138B1E0);
    v90 = sub_1000136BC(v79, v78, v108);

    *(v77 + 24) = v90;
    *(v77 + 32) = 1024;
    *(v77 + 34) = v1 < v98;
    v1 = v93;
    *(v77 + 38) = 1024;
    *(v77 + 40) = v89;
    _os_log_impl(&_mh_execute_header, v71, v72, "Publish limit check: %ld / %ld, finderStartOfDay: %{public}s. Reached maximum: %{BOOL}d, on battery: %{BOOL}d.", v77, 0x2Cu);
    sub_100007BAC(v107);

    v82 = v88;
  }

  else
  {
    v81 = *(v0 + 464);
    v80 = *(v0 + 472);

    sub_10000B3A8(v81, &unk_101696900, &unk_10138B1E0);
    v82 = v80;
  }

  sub_10000B3A8(v82, &unk_101696900, &unk_10138B1E0);

  v91 = *(v0 + 8);

  return v91(v1 < v2);
}

double sub_1000DF124()
{
  v0 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FindMyNetworkPublishDateProvider();
  swift_allocObject();
  swift_defaultActor_initialize();
  sub_10030DB78();
  sub_1012BAD7C(v7, v2);

  v8 = *(v4 + 48);
  if (v8(v2, 1, v3) == 1)
  {
    static Date.trustedNow.getter(v6);
    if (v8(v2, 1, v3) != 1)
    {
      sub_10000B3A8(v2, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
  }

  Date.timeIntervalSinceNow.getter();
  v10 = v9;

  (*(v4 + 8))(v6, v3);
  return fabs(v10);
}

uint64_t sub_1000DF31C(uint64_t a1, char a2)
{
  *(v2 + 544) = a2;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  *(v2 + 496) = swift_task_alloc();
  v4 = type metadata accessor for Date();
  *(v2 + 504) = v4;
  *(v2 + 512) = *(v4 - 8);
  *(v2 + 520) = swift_task_alloc();

  return _swift_task_switch(sub_1000DF418, a1, 0);
}

uint64_t sub_1000DF418()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 496);
  type metadata accessor for FindMyNetworkPublishDateProvider();
  swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000DD4C0(v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 496);
    v5 = *(v0 + 504);
    static Date.trustedNow.getter(*(v0 + 520));
    if (v4(v6, 1, v5) != 1)
    {
      sub_10000B3A8(*(v0 + 496), &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(*(v0 + 512) + 32))(*(v0 + 520), *(v0 + 496), *(v0 + 504));
  }

  v7 = *(v0 + 520);
  v8 = *(v0 + 504);
  v9 = *(v0 + 512);
  Date.timeIntervalSinceNow.getter();
  *(v0 + 528) = v10;

  (*(v9 + 8))(v7, v8);
  *(v0 + 536) = sub_1000DF124();

  return _swift_task_switch(sub_1000DF57C, 0, 0);
}

uint64_t sub_1000DF57C()
{
  v1 = *(v0 + 544);
  if (v1 <= 3)
  {
    if (*(v0 + 544) <= 1u)
    {
      if (*(v0 + 544))
      {
        v17 = 0xEB00000000726577;
        v2 = 0x6F506D756964656DLL;
        goto LABEL_21;
      }

      v17 = 0xE800000000000000;
      v3 = 0x776F50776F6CLL;
      goto LABEL_20;
    }

    if (v1 == 2)
    {
      v2 = 0x65776F5068676968;
      v17 = 0xE900000000000072;
      goto LABEL_21;
    }

    v4 = 0x694669576ELL;
    goto LABEL_16;
  }

  if (*(v0 + 544) <= 5u)
  {
    if (v1 != 4)
    {
      v5 = 0xEF694669576E4F79;
      goto LABEL_19;
    }

    v4 = 0x6C6C65436ELL;
LABEL_16:
    v17 = v4 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    v2 = 0x4F7265776F506E6FLL;
    goto LABEL_21;
  }

  if (v1 == 6)
  {
    v5 = 0xEF6C6C65436E4F79;
LABEL_19:
    v17 = v5;
    v3 = 0x747461426E6FLL;
LABEL_20:
    v2 = v3 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
    goto LABEL_21;
  }

  if (v1 == 7)
  {
    v17 = 0xEF79627261654E6ELL;
    v2 = 0x6F696E61706D6F63;
  }

  else
  {
    v17 = 0xEF646E756F466E65;
    v2 = 0x6857796669746F6ELL;
  }

LABEL_21:
  v6 = *(v0 + 536);
  v7 = fabs(*(v0 + 528));
  v8 = sub_10116887C(v6);
  v9 = sub_10116887C(v7);
  sub_1000BC4D4(&qword_101696C90, &qword_10138B5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B420;
  *(inited + 32) = 0x7265747461426E6FLL;
  *(inited + 40) = 0xE900000000000079;
  sub_1011298C8(&off_1016075C8);
  sub_1008ECAD0();
  v11 = sub_10112C0E0();

  *(inited + 48) = v11 & 1;
  *(inited + 88) = 0;
  *(inited + 96) = 0x696669576E6FLL;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 112) = sub_1000DD810() & 1;
  *(inited + 152) = 0;
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x800000010134ADD0;
  *(inited + 200) = &type metadata for Double;
  v12 = sub_1000DFA84();
  *(inited + 208) = v12;
  *(inited + 176) = v6;
  *(inited + 216) = 3;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = 0x800000010134ADF0;
  *(inited + 264) = &type metadata for Double;
  *(inited + 272) = v12;
  *(inited + 240) = v7;
  *(inited + 280) = 3;
  *(inited + 288) = 0xD000000000000016;
  *(inited + 296) = 0x800000010134AE10;
  *(inited + 328) = &type metadata for String;
  *(inited + 336) = sub_1000DF96C();
  *(inited + 304) = v2;
  *(inited + 312) = v17;
  *(inited + 344) = 1;
  *(inited + 352) = 0xD000000000000019;
  *(inited + 360) = 0x800000010134AE30;
  *(inited + 392) = &type metadata for Int;
  v13 = sub_1000DFAD8();
  *(inited + 400) = v13;
  *(inited + 368) = v8;
  *(inited + 408) = 2;
  *(inited + 416) = 0xD000000000000019;
  *(inited + 424) = 0x800000010134AE50;
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = v13;
  *(inited + 432) = v9;
  *(inited + 472) = 2;
  v14 = sub_100907D24(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101696CA0, &qword_10138B5D8);
  swift_arrayDestroy();

  v15 = *(v0 + 8);

  return v15(v14);
}

unint64_t sub_1000DF96C()
{
  result = qword_1016B11C0;
  if (!qword_1016B11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B11C0);
  }

  return result;
}

unint64_t sub_1000DF9C0()
{
  result = qword_101696C98;
  if (!qword_101696C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696C98);
  }

  return result;
}

uint64_t sub_1000DFA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DFA84()
{
  result = qword_101696CB0;
  if (!qword_101696CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696CB0);
  }

  return result;
}

unint64_t sub_1000DFAD8()
{
  result = qword_1016B1D00;
  if (!qword_1016B1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1D00);
  }

  return result;
}

uint64_t sub_1000DFB78(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100F10214();
}

uint64_t sub_1000DFC24(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100F10214();
}

uint64_t sub_1000DFCD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100010F48(a1, v4);
}

uint64_t sub_1000DFD88(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014744;

  return sub_1000D7794(a1, a2, v8, v6, v7);
}

uint64_t sub_1000DFE54(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 16);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_1000D8C18(a1, a2, v7, v6);
}

uint64_t sub_1000DFF1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t getEnumTagSinglePayload for LostModeStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LostModeStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000E0114()
{
  v1 = 1684826487;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

unint64_t sub_1000E015C()
{
  result = qword_101696CF0;
  if (!qword_101696CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696CF0);
  }

  return result;
}

uint64_t type metadata accessor for AirPodsPairingLockCheckEndPoint(uint64_t a1)
{
  result = qword_101696D50;
  if (!qword_101696D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E0224(uint64_t a1)
{
  result = type metadata accessor for AccountURLComponents();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FMNAccountType();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1000E02A8()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x800000010134B160;
  String.append(_:)(v1);
  v0(&v7, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C218;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 stringForKey:v5];

    if (v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_1000E0498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for FMNAccountType();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for AccessoryPairingLockCheckEndPoint(uint64_t a1)
{
  result = qword_101696DE8;
  if (!qword_101696DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E05A0()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  URLComponents.path.setter();
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v0 = qword_10177C218;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v0 stringForKey:v3];

    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

char *sub_1000E0768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = _swiftEmptyDictionarySingleton;
  sub_1000E0A3C();
  v5 = DataProtocol.intValue.getter();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C418);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v7, v8, "Number of beacons: %{public}ld", v9, 0xCu);
  }

  if (v5 < 2)
  {
    return _swiftEmptyDictionarySingleton;
  }

  result = static MACAddress.length.getter();
  if (__OFADD__(result, 20))
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = result + 21;
  if (__OFADD__(result + 20, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result += 22;
  if (__OFADD__(v11, 1))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v12 = Data.chunked(into:)();
  sub_1000E1260(v12, &v19);

  result = v19;
  if (v4)
  {
  }

  if (*(v19 + 2) != v5)
  {
    v13 = v19;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = *(v13 + 2);
      _os_log_impl(&_mh_execute_header, v14, v15, "Unexpected number of serial numbers: %{public}ld", v16, 0xCu);
    }

    v17 = type metadata accessor for BinaryEncodingError();
    sub_1000E17C4(&qword_101696E20, &type metadata accessor for BinaryEncodingError, &protocol conformance descriptor for BinaryEncodingError);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, enum case for BinaryEncodingError.encodingError(_:), v17);
    swift_willThrow();
  }

  return result;
}

unint64_t sub_1000E0A3C()
{
  result = qword_101698C90;
  if (!qword_101698C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698C90);
  }

  return result;
}

unint64_t sub_1000E0A90(uint64_t *a1, uint64_t a2)
{
  v77 = a2;
  v4 = sub_1000BC4D4(&qword_101696E28, &qword_1013EAD80);
  __chkstk_darwin(v4 - 8);
  v6 = &v67 - v5;
  v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v7 - 8);
  v9 = &v67 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = Data.subdata(in:)();
  v14 = v13;
  v75 = v12;
  v76 = v13;
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v72 = Data.trimmed.getter();
    v27 = v26;
    v28 = static MACAddress.length.getter();
    if (__OFADD__(v28, 20))
    {
      __break(1u);
    }

    else if (v28 + 20 >= 20)
    {
      v70 = v27;
      v71 = v2;
      v29 = v12;
      v12 = v14;
      v30 = Data.subdata(in:)();
      v32 = v31;
      sub_100017D5C(v30, v31);
      v68 = v30;
      v69 = v32;
      MACAddress.init(data:type:)();
      v33 = static MACAddress.length.getter();
      v34 = v33 + 20;
      if (!__OFADD__(v33, 20))
      {
        v35 = static MACAddress.length.getter();
        if (!__OFADD__(v35, 20))
        {
          if (!__OFADD__(v35 + 20, 1))
          {
            if (v35 + 21 >= v34)
            {
              v73 = Data.subdata(in:)();
              v74 = v36;
              v37 = static MACAddress.length.getter();
              v38 = v37 + 20;
              if (!__OFADD__(v37, 20))
              {
                result = v37 + 21;
                if (!__OFADD__(v38, 1))
                {
                  v39 = v11 >> 62;
                  if ((v11 >> 62) > 1)
                  {
                    v40 = v12;
                    if (v39 != 2)
                    {
                      v41 = 0;
                      goto LABEL_25;
                    }

                    v43 = *(v10 + 16);
                    v42 = *(v10 + 24);
                    v41 = v42 - v43;
                    if (!__OFSUB__(v42, v43))
                    {
                      goto LABEL_25;
                    }

                    __break(1u);
                  }

                  else
                  {
                    v40 = v12;
                    if (!v39)
                    {
                      v41 = BYTE6(v11);
LABEL_25:
                      v12 = v29;
                      goto LABEL_26;
                    }
                  }

                  if (__OFSUB__(HIDWORD(v10), v10))
                  {
                    goto LABEL_49;
                  }

                  v12 = v29;
                  v41 = HIDWORD(v10) - v10;
LABEL_26:
                  if (v41 >= result)
                  {
                    v71 = v9;
                    v10 = Data.subdata(in:)();
                    v11 = v44;
                    v75 = v10;
                    v76 = v44;
                    v45 = DataProtocol.intValue.getter();
                    v46 = v45 + 1;
                    v67 = v40;
                    if ((v45 + 1) > 2)
                    {
                      if (qword_1016950D0 == -1)
                      {
LABEL_32:
                        v52 = type metadata accessor for Logger();
                        sub_1000076D4(v52, qword_10177C418);
                        sub_100017D5C(v10, v11);
                        v53 = Logger.logObject.getter();
                        v54 = static os_log_type_t.error.getter();
                        sub_100016590(v10, v11);
                        if (os_log_type_enabled(v53, v54))
                        {
                          v55 = swift_slowAlloc();
                          v56 = swift_slowAlloc();
                          v75 = v56;
                          *v55 = 136446210;
                          v57 = Data.hexString.getter();
                          v59 = v11;
                          v60 = sub_1000136BC(v57, v58, &v75);

                          *(v55 + 4) = v60;
                          _os_log_impl(&_mh_execute_header, v53, v54, "Invalid pairing type %{public}s!", v55, 0xCu);
                          sub_100007BAC(v56);

                          v61 = v71;
                        }

                        else
                        {

                          v61 = v71;
                          v59 = v11;
                        }

                        v62 = v72;
                        v64 = v68;
                        v63 = v69;
                        v65 = type metadata accessor for BinaryDecodingError();
                        sub_1000E17C4(&qword_101696E30, &type metadata accessor for BinaryDecodingError, &protocol conformance descriptor for BinaryDecodingError);
                        swift_allocError();
                        (*(*(v65 - 8) + 104))(v66, enum case for BinaryDecodingError.decodingError(_:), v65);
                        swift_willThrow();
                        sub_100016590(v73, v74);
                        sub_100016590(v62, v70);
                        sub_100016590(v10, v59);
                        sub_100016590(v64, v63);
                        sub_100016590(v12, v67);
                        v51 = v61;
                        return sub_10000B3A8(v51, &qword_1016A40D0, &unk_10138BE70);
                      }

LABEL_47:
                      swift_once();
                      goto LABEL_32;
                    }

                    v75 = v73;
                    v76 = v74;
                    result = DataProtocol.intValue.getter();
                    if ((result & 0x8000000000000000) == 0)
                    {
                      v47 = result;
                      if (result <= 0xFF)
                      {
                        v48 = type metadata accessor for MultipartAccessoryPairingInfo(0);
                        v49 = v11;
                        v50 = v71;
                        sub_1000D2A70(v71, &v6[*(v48 + 24)], &qword_1016A40D0, &unk_10138BE70);
                        *v6 = v47;
                        v6[1] = 0;
                        v6[*(v48 + 28)] = v46;
                        (*(*(v48 - 8) + 56))(v6, 0, 1, v48);
                        sub_1001DD1AC(v6, v72, v70);
                        sub_100016590(v73, v74);
                        sub_100016590(v10, v49);
                        sub_100016590(v68, v69);
                        sub_100016590(v12, v67);
                        v51 = v50;
                        return sub_10000B3A8(v51, &qword_1016A40D0, &unk_10138BE70);
                      }

                      __break(1u);
LABEL_49:
                      __break(1u);
                      return result;
                    }

LABEL_46:
                    __break(1u);
                    goto LABEL_47;
                  }

LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C418);
  sub_100017D5C(v12, v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  sub_100016590(v12, v14);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v75 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v20 = Data.hexString.getter();
    v22 = sub_1000136BC(v20, v21, &v75);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Invalid serial number %{private,mask.hash}s", v18, 0x16u);
    sub_100007BAC(v19);
  }

  v23 = type metadata accessor for BinaryDecodingError();
  sub_1000E17C4(&qword_101696E30, &type metadata accessor for BinaryDecodingError, &protocol conformance descriptor for BinaryDecodingError);
  swift_allocError();
  (*(*(v23 - 8) + 104))(v24, enum case for BinaryDecodingError.decodingError(_:), v23);
  swift_willThrow();
  return sub_100016590(v12, v14);
}

uint64_t sub_1000E1260(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    v6 = v3 - 1;
    do
    {
      v7 = v6;
      v8 = *v5++;
      v9 = v8;
      sub_100017D5C(v8, *(&v8 + 1));
      sub_1000E0A90(&v9, a2);
      result = sub_100016590(v9, *(&v9 + 1));
      if (v2)
      {
        break;
      }

      v6 = v7 - 1;
    }

    while (v7);
  }

  return result;
}

uint64_t *sub_1000E12E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v79 = a3;
  v80 = a4;
  v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = v68 - v12;
  v13 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v14 = __chkstk_darwin(v13);
  v16 = (v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v14);
  v19 = (v68 - v18);
  __chkstk_darwin(v17);
  v21 = v68 - v20;
  v22 = sub_1000E0768(a1, a2, v79, v80);
  if (v4)
  {
    return v19;
  }

  v23 = v22;
  v68[1] = 0;
  v79 = v13;
  v24 = v22 + 64;
  v25 = 1 << v22[32];
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v22 + 8);
  v73 = (v25 + 63) >> 6;

  v29 = 0;
  v78 = v19;
  v19 = _swiftEmptyDictionarySingleton;
  v80 = v21;
  v69 = v24;
  v70 = v28;
  v71 = v8;
  v72 = v11;
  while (v27)
  {
    v77 = v19;
    v30 = v16;
LABEL_13:
    v32 = __clz(__rbit64(v27)) | (v29 << 6);
    v33 = *(v23 + 7);
    v34 = (*(v23 + 6) + 16 * v32);
    v35 = *v34;
    v36 = v34[1];
    v37 = (type metadata accessor for MultipartAccessoryPairingInfo(0) - 8);
    v38 = v33 + *(*v37 + 72) * v32;
    v39 = v79;
    v40 = v80;
    sub_1000E180C(v38, v80 + *(v79 + 48));
    *v40 = v35;
    v40[1] = v36;
    v41 = v78;
    sub_1000D2A70(v40, v78, &qword_101696E38, &qword_1013D8510);
    v42 = v41[1];
    v75 = *v41;
    v76 = v42;
    sub_1000D2A70(v40, v30, &qword_101696E38, &qword_1013D8510);
    v43 = *v30;
    v44 = v30[1];
    sub_100017D5C(v35, v36);
    sub_100016590(v43, v44);
    v45 = *(v39 + 48);
    v16 = v30;
    v46 = v30 + v45;
    v47 = v30 + v45 + v37[8];
    v48 = v74;
    sub_1000D2A70(v47, v74, &qword_1016A40D0, &unk_10138BE70);
    sub_1000E1870(v46);
    v49 = v72;
    sub_1000E18CC(v48, v72);
    v50 = v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v50;
    v52 = v75;
    v53 = v76;
    v54 = sub_100771E30(v75, v76);
    v56 = v50[2];
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      goto LABEL_25;
    }

    v60 = v55;
    if (v50[3] >= v59)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = v54;
        sub_1010052E8();
        v54 = v66;
      }
    }

    else
    {
      sub_100FE68E4(v59, isUniquelyReferenced_nonNull_native);
      v54 = sub_100771E30(v52, v53);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_27;
      }
    }

    v62 = v80;
    v19 = v81;
    if (v60)
    {
      sub_1000E193C(v49, v81[7] + *(v71 + 72) * v54);
      sub_100016590(v52, v53);
      sub_10000B3A8(v62, &qword_101696E38, &qword_1013D8510);
    }

    else
    {
      v81[(v54 >> 6) + 8] |= 1 << v54;
      v63 = (v19[6] + 16 * v54);
      *v63 = v52;
      v63[1] = v53;
      sub_1000E18CC(v49, v19[7] + *(v71 + 72) * v54);
      sub_10000B3A8(v62, &qword_101696E38, &qword_1013D8510);
      v64 = v19[2];
      v58 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v58)
      {
        goto LABEL_26;
      }

      v19[2] = v65;
    }

    v27 &= v27 - 1;
    sub_1000E1870(v78 + *(v79 + 48));
    v24 = v69;
    v23 = v70;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v73)
    {

      return v19;
    }

    v27 = *&v24[8 * v31];
    ++v29;
    if (v27)
    {
      v77 = v19;
      v30 = v16;
      v29 = v31;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E17C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E180C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E1870(uint64_t a1)
{
  v2 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E18CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E193C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E19AC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177A4A0);
  sub_1000076D4(v0, qword_10177A4A0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1000E1B08()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x64757469676E6F6CLL;
  if (v1 != 6)
  {
    v3 = 0x7369747265766461;
  }

  v4 = 0x6567617373656DLL;
  if (v1 != 4)
  {
    v4 = 0x656475746974616CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 2)
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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
    return v3;
  }
}

uint64_t sub_1000E1C28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E3700(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000E1C68(uint64_t a1)
{
  v2 = sub_1000E3028();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E1CA4(uint64_t a1)
{
  v2 = sub_1000E3028();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E1CE0(uint64_t a1)
{
  Data.hash(into:)();
  v2 = type metadata accessor for LostModeInfoRecord(0);
  type metadata accessor for UUID();
  sub_1000E39C4(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  if (*(v1 + v2[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = *(v1 + v2[9]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(v1 + v2[10]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);

  return Data.hash(into:)();
}

Swift::Int sub_1000E1E7C()
{
  Hasher.init(_seed:)();
  sub_1000E1CE0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E1EC0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000E1CE0(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000E1F00(id *a1)
{
  v2 = v1;
  [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = type metadata accessor for LostModeInfoRecord(0);
  v4 = UUID.uuidString.getter();
  if (!v23)
  {

    goto LABEL_9;
  }

  if (*&v22 == v4 && v23 == v5)
  {

    goto LABEL_11;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_9:
    v22 = COERCE_DOUBLE(UUID.uuidString.getter());
    v23 = v8;
    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_11:
  CKRecordKeyValueSetting.subscript.getter();
  v9 = (v1 + v3[7]);
  v11 = *v9;
  v10 = *(v9 + 1);
  if (!v23)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v22 = v11;
    v23 = v10;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_21;
  }

  if (!v10)
  {

    v11 = 0.0;
    goto LABEL_20;
  }

  if (*&v22 == *&v11 && v23 == v10)
  {

    goto LABEL_21;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  CKRecordKeyValueSetting.subscript.getter();
  v13 = (v2 + v3[8]);
  v15 = *v13;
  v14 = *(v13 + 1);
  if (!v23)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (!v14)
  {

    v15 = 0.0;
    goto LABEL_30;
  }

  if (*&v22 != *&v15 || v23 != v14)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_31;
    }

LABEL_30:
    v22 = v15;
    v23 = v14;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_31;
  }

LABEL_31:
  CKRecordKeyValueSetting.subscript.getter();
  if ((v23 & 1) != 0 || v22 != *(v2 + v3[9]))
  {
    v22 = *(v2 + v3[9]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  if ((v23 & 1) != 0 || v22 != *(v2 + v3[10]))
  {
    v22 = *(v2 + v3[10]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v17 = v2 + v3[11];
  v19 = *v17;
  v18 = *(v17 + 8);
  if (v23 >> 60 == 15)
  {
    if (v18 >> 60 == 15)
    {
      sub_100017D5C(*v17, *(v17 + 8));
      swift_unknownObjectRelease();
      return sub_100006654(*&v22, v23);
    }
  }

  else if (v18 >> 60 != 15)
  {
    sub_100017D5C(*v17, *(v17 + 8));
    sub_100017D5C(v19, v18);
    sub_10002E98C(*&v22, v23);
    v21 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*&v22, v23, v19, v18);
    sub_100016590(v19, v18);
    sub_100006654(*&v22, v23);
    sub_100006654(v19, v18);
    sub_100006654(*&v22, v23);
    if (v21)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_42;
  }

  sub_100017D5C(*v17, *(v17 + 8));
  sub_100006654(*&v22, v23);
  sub_100006654(v19, v18);
LABEL_42:
  sub_100017D5C(*v17, *(v17 + 8));
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

uint64_t sub_1000E24B4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_101696E68, &qword_10138B860);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1000E3028();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v15 = *v3;
  v16 = v9;
  v17 = 0;
  sub_100017D5C(v15, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100016590(v15, v16);
    v14 = type metadata accessor for LostModeInfoRecord(0);
    LOBYTE(v15) = 1;
    type metadata accessor for UUID();
    sub_1000E39C4(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = (v3 + *(v14 + 44));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v17 = 7;
    sub_100017D5C(v15, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  sub_100016590(v15, v16);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000E2820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for UUID();
  v35 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v32 - v7;
  v9 = sub_1000BC4D4(&qword_101696E58, &qword_10138B858);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = v32 - v10;
  v12 = type metadata accessor for LostModeInfoRecord(0);
  __chkstk_darwin(v12);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v40 = a1;
  sub_1000035D0(a1, v15);
  sub_1000E3028();
  v38 = v11;
  v16 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100007BAC(v40);
  }

  v33 = v6;
  v17 = v36;
  v39 = v12;
  v18 = v14;
  v42 = 0;
  v19 = sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v14 = v41;
  LOBYTE(v41) = 1;
  sub_1000E39C4(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32[0] = v19;
  v20 = *(v35 + 32);
  v20(v18 + v39[5], v8, v3);
  LOBYTE(v41) = 2;
  v21 = v33;
  v32[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20(v18 + v39[6], v21, v3);
  LOBYTE(v41) = 3;
  v22 = v37;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = (v18 + v39[7]);
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v41) = 4;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = (v18 + v39[8]);
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v41) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v18 + v39[9]) = v29;
  LOBYTE(v41) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v18 + v39[10]) = v30;
  v42 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v38, v22);
  *(v18 + v39[11]) = v41;
  sub_1000E30D0(v18, v34);
  sub_100007BAC(v40);
  return sub_1000E3134(v18);
}

uint64_t sub_1000E2E28()
{
  if (qword_101694430 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  sub_1000076D4(v0, qword_10177A4A0);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_1000E2F00(uint64_t a1)
{
  *(a1 + 8) = sub_1000E39C4(&qword_101696E40, type metadata accessor for LostModeInfoRecord, &unk_10138B7F8);
  result = sub_1000E39C4(&qword_101696E48, type metadata accessor for LostModeInfoRecord, &unk_10138B7D0);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for LostModeInfoRecord(uint64_t a1)
{
  result = qword_101696EC8;
  if (!qword_101696EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E2FD0(uint64_t a1)
{
  result = sub_1000E39C4(&qword_101696E50, type metadata accessor for LostModeInfoRecord, &unk_10138B820);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E3028()
{
  result = qword_101696E60;
  if (!qword_101696E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696E60);
  }

  return result;
}

unint64_t sub_1000E307C()
{
  result = qword_101697F30;
  if (!qword_101697F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697F30);
  }

  return result;
}

uint64_t sub_1000E30D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeInfoRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3134(uint64_t a1)
{
  v2 = type metadata accessor for LostModeInfoRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000E3190()
{
  result = qword_101697F50;
  if (!qword_101697F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697F50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceEventSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceEventSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1000E335C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000E3404();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000E3404()
{
  if (!qword_1016BD350)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BD350);
    }
  }
}

unint64_t sub_1000E34A0()
{
  result = qword_101696F20;
  if (!qword_101696F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696F20);
  }

  return result;
}

unint64_t sub_1000E34F8()
{
  result = qword_101696F28;
  if (!qword_101696F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696F28);
  }

  return result;
}

unint64_t sub_1000E3550()
{
  result = qword_101696F30;
  if (!qword_101696F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696F30);
  }

  return result;
}

BOOL sub_1000E35A4(_BOOL8 *a1, uint64_t *a2)
{
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v4 = type metadata accessor for LostModeInfoRecord(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (!v13)
  {
    if (!v15)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  v16 = *v12 == *v14 && v13 == v15;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (*(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v17 = v4[11];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = *v20;
  v22 = v20[1];

  return _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19, v21, v22);
}

uint64_t sub_1000E3700(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7369747265766461 && a2 == 0xED0000746E656D65)
  {

    return 7;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1000E39C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for KeyDropBeaconGroupAttributes(uint64_t a1)
{
  result = qword_101696F90;
  if (!qword_101696F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E3A80(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000E3AF4(void *a1)
{
  v3 = sub_1000BC4D4(&qword_101696FC8, &qword_10138BA80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1000E418C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for KeyDropBeaconGroupAttributes(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000E3C98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v20 = type metadata accessor for UUID();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&qword_101696FD8, &qword_10138BA88);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for KeyDropBeaconGroupAttributes(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1000E418C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v10;
  v11 = v18;
  v23 = 0;
  sub_1000096E8(&qword_101698300, &protocol conformance descriptor for UUID);
  v12 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v16;
  (*(v11 + 32))(v16, v5, v12);
  v22 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v19 + 8))(v7, v21);
  *(v13 + *(v8 + 20)) = v14;
  sub_1000E41E0(v13, v17);
  sub_100007BAC(a1);
  return sub_1000E4244(v13);
}

uint64_t sub_1000E3FC0()
{
  if (*v0)
  {
    return 0x644974726170;
  }

  else
  {
    return 0x65644970756F7267;
  }
}

uint64_t sub_1000E4004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000)
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

uint64_t sub_1000E40E4(uint64_t a1)
{
  v2 = sub_1000E418C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E4120(uint64_t a1)
{
  v2 = sub_1000E418C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000E418C()
{
  result = qword_101696FD0;
  if (!qword_101696FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696FD0);
  }

  return result;
}

uint64_t sub_1000E41E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropBeaconGroupAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4244(uint64_t a1)
{
  v2 = type metadata accessor for KeyDropBeaconGroupAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DatabaseState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E43F4()
{
  result = qword_101696FE0;
  if (!qword_101696FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696FE0);
  }

  return result;
}

unint64_t sub_1000E444C()
{
  result = qword_101696FE8;
  if (!qword_101696FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696FE8);
  }

  return result;
}

unint64_t sub_1000E44A4()
{
  result = qword_101696FF0;
  if (!qword_101696FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696FF0);
  }

  return result;
}

uint64_t sub_1000E44F8(uint64_t a1, uint64_t *a2)
{
  v53 = a2;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v51 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v52 = &v49 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return result;
  }

  v10 = (a1 + 40);
  *&v7 = 141558275;
  v50 = v7;
  while (1)
  {
    v14 = *(v10 - 1);
    v13 = *v10;
    sub_100017D5C(v14, *v10);
    v15 = Data.subdata(in:)();
    v17 = v16;
    v57[0] = v15;
    v57[1] = v16;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10177C418);
      sub_100017D5C(v15, v17);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      sub_100016590(v15, v17);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v58 = v9;
        v22 = v21;
        v23 = swift_slowAlloc();
        v56 = v13;
        v57[0] = v23;
        v24 = v23;
        *v22 = v50;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        v25 = Data.hexString.getter();
        v55 = v14;
        v27 = sub_1000136BC(v25, v26, v57);

        *(v22 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v19, v20, "Invalid serial number %{private,mask.hash}s", v22, 0x16u);
        sub_100007BAC(v24);

        v9 = v58;

        sub_100016590(v15, v17);

        v11 = v55;
        v12 = v56;
      }

      else
      {

        sub_100016590(v15, v17);
        v11 = v14;
        v12 = v13;
      }

      result = sub_100016590(v11, v12);
      goto LABEL_5;
    }

    v55 = v14;
    v56 = v13;
    v58 = v9;
    v28 = Data.trimmed.getter();
    v30 = v29;
    v31 = type metadata accessor for MACAddress();
    v32 = v52;
    (*(*(v31 - 8) + 56))(v52, 1, 1, v31);
    sub_1000D2AD8(v32, v54, &qword_1016A40D0, &unk_10138BE70);
    v33 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v33;
    v57[0] = v35;
    v37 = sub_100771E30(v28, v30);
    v38 = *(v35 + 16);
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      break;
    }

    v41 = v36;
    if (*(v35 + 24) >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v44 = v57[0];
        if ((v36 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1010052E8();
        v44 = v57[0];
        if ((v41 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_100FE68E4(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_100771E30(v28, v30);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_26;
      }

      v37 = v42;
      v44 = v57[0];
      if ((v41 & 1) == 0)
      {
LABEL_15:
        v44[(v37 >> 6) + 8] |= 1 << v37;
        v45 = (v44[6] + 16 * v37);
        *v45 = v28;
        v45[1] = v30;
        sub_1000D2AD8(v54, v44[7] + *(v51 + 72) * v37, &qword_1016A40D0, &unk_10138BE70);
        v46 = v44[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_25;
        }

        v44[2] = v48;
        goto LABEL_20;
      }
    }

    sub_10002311C(v54, v44[7] + *(v51 + 72) * v37, &qword_1016A40D0, &unk_10138BE70);
    sub_100016590(v28, v30);
LABEL_20:
    *v53 = v44;
    sub_100016590(v15, v17);
    result = sub_100016590(v55, v56);
    v9 = v58;
LABEL_5:
    v10 += 2;
    if (!--v9)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E49CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A4B8);
  sub_1000076D4(v0, qword_10177A4B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E4A50()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_101696FF8);
  v1 = sub_1000076D4(v0, qword_101696FF8);
  if (qword_101694438 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A4B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000E4B18()
{
  result = Data.init(base64Encoded:options:)();
  qword_101697010 = result;
  *algn_101697018 = v1;
  return result;
}

unint64_t sub_1000E4B58()
{
  v1 = type metadata accessor for StandaloneBeacon(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AirPodsLEPairingService.BeaconCreationResult(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100101E08(v0, v12, type metadata accessor for AirPodsLEPairingService.BeaconCreationResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100101DA0(v12, v3, type metadata accessor for StandaloneBeacon);
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v24 = 0xD000000000000014;
    v25 = 0x800000010134B540;
    type metadata accessor for UUID();
    sub_100102448(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = v24;
    v16 = type metadata accessor for StandaloneBeacon;
    v17 = v3;
  }

  else
  {
    v18 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
    sub_100101DA0(v12, v9, type metadata accessor for OwnedBeaconGroup);
    sub_100101DA0(&v12[v18], v6, type metadata accessor for OwnedBeaconRecord);
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v24 = 0xD000000000000010;
    v25 = 0x800000010134B560;
    type metadata accessor for UUID();
    sub_100102448(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0x6E6F63616562202CLL;
    v20._object = 0xEA0000000000203ALL;
    String.append(_:)(v20);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v15 = v24;
    sub_100101E70(v6, type metadata accessor for OwnedBeaconRecord);
    v16 = type metadata accessor for OwnedBeaconGroup;
    v17 = v9;
  }

  sub_100101E70(v17, v16);
  return v15;
}

unint64_t sub_1000E4F78(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    strcpy(v13, ".underlying(");
    BYTE5(v13[1]) = 0;
    HIWORD(v13[1]) = -5120;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v7 = String.init<A>(describing:)();
LABEL_19:
    String.append(_:)(*&v7);

    v10._countAndFlagsBits = 41;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    return v13[0];
  }

  if (a1 >> 62 == 1)
  {
    v1 = a1;
    v2 = 0xE800000000000000;
    strcpy(v13, ".response(");
    BYTE3(v13[1]) = 0;
    HIDWORD(v13[1]) = -369098752;
    v3 = 0x737365636375732ELL;
    v4 = 0xEE006874676E654CLL;
    v5 = 0xED00006D61726150;
    if (a1 != 4)
    {
      v5 = 0xEF646E616D6D6F43;
    }

    if (a1 != 3)
    {
      v4 = v5;
    }

    v6 = 0xED00006574617453;
    if (a1 != 1)
    {
      v6 = 0xEE006769666E6F43;
    }

    if (a1)
    {
      v3 = 0x64696C61766E692ELL;
      v2 = v6;
    }

    if (a1 <= 2u)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0x64696C61766E692ELL;
    }

    if (v1 <= 2)
    {
      v8 = v2;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
    goto LABEL_19;
  }

  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 0x8000000000000001:
      result = 0x74756F656D69742ELL;
      break;
    case 0x8000000000000002:
      result = 0x4E64726F6365722ELL;
      break;
    case 0x8000000000000003:
      result = 0xD000000000000012;
      break;
    case 0x8000000000000004:
      result = 0xD000000000000010;
      break;
    case 0x8000000000000005:
      result = 0x6F707075736E752ELL;
      break;
    case 0x8000000000000006:
      result = 0x64696C61766E692ELL;
      break;
    case 0x8000000000000007:
      result = 0xD000000000000011;
      break;
    case 0x8000000000000008:
      result = 0xD000000000000012;
      break;
    case 0x8000000000000009:
      result = 0x64696C61766E692ELL;
      break;
    case 0x800000000000000ALL:
    case 0x800000000000000DLL:
      result = 0xD000000000000016;
      break;
    case 0x800000000000000BLL:
      result = 0xD000000000000012;
      break;
    case 0x800000000000000CLL:
      result = 0xD000000000000013;
      break;
    case 0x800000000000000ELL:
      result = 0x79646165726C612ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000E5314(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000017;
  *(v1 + 120) = 0x800000010138BC70;
  v4 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v5 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  *(v1 + 192) = 0u;
  *(v1 + 144) = v5;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0xF000000000000000;
  *(v1 + 176) = 0;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0;
  *(v1 + 274) = 1;
  v6 = static Data.random(bytes:)();
  v8 = v7;
  type metadata accessor for AccessoryPairingInfo(0);
  swift_allocObject();
  sub_100017D5C(v6, v8);
  v9 = sub_10024C9E8(v6, v8);
  if (v9)
  {
    *(v1 + 184) = v9;
    type metadata accessor for AccessoryPairingValidator();
    v10 = swift_allocObject();
    type metadata accessor for DeviceIdentityUtility(0);
    v11 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_100016590(v6, v8);
    v12 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
    *(v11 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
    *(v11 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
    *(v11 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
    *(v10 + 16) = v11;
    *(v10 + 24) = 0;
    *(v2 + 128) = v10;
    *(v2 + 136) = a1;
  }

  else
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_101696FF8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing critical information to init pairing ", v17, 2u);
    }

    sub_100016590(v6, v8);

    sub_100006654(*(v2 + 160), *(v2 + 168));
    sub_10000B3A8(v2 + 192, &qword_101697380, &unk_10138BEF0);
    sub_10000B3A8(v2 + 232, &qword_1016973E8, &unk_10138BFA0);
    type metadata accessor for AirPodsLEPairingService();
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_1000E5640()
{
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_101696FF8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AirPodsLEPairingService: Starting up.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E5758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 121) = v10;
  *(v8 + 120) = a8;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 40) = a1;
  return _swift_task_switch(sub_1000E5794, 0, 0);
}

uint64_t sub_1000E5794()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_1000E58B4;
    v3 = *(v0 + 121);
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);

    return sub_1000E5A60(v9, v7, v8, v5, v6, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000E58B4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1000E59FC;
  }

  else
  {

    v2 = sub_1000E59D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E59FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E5A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 7840) = v7;
  *(v8 + 7832) = a5;
  *(v8 + 7824) = a4;
  *(v8 + 8662) = a7;
  *(v8 + 7816) = a3;
  *(v8 + 8661) = a6;
  *(v8 + 7808) = a2;
  *(v8 + 7800) = a1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v8 + 7848) = swift_task_alloc();
  v9 = type metadata accessor for BinaryDecoder();
  *(v8 + 7856) = v9;
  *(v8 + 7864) = *(v9 - 8);
  *(v8 + 7872) = swift_task_alloc();
  v10 = type metadata accessor for BinaryEncoder();
  *(v8 + 7880) = v10;
  *(v8 + 7888) = *(v10 - 8);
  *(v8 + 7896) = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  *(v8 + 7904) = v11;
  *(v8 + 7912) = *(v11 - 8);
  *(v8 + 7920) = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  *(v8 + 7928) = v12;
  *(v8 + 7936) = *(v12 - 8);
  *(v8 + 7944) = swift_task_alloc();
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  *(v8 + 7952) = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  *(v8 + 7960) = swift_task_alloc();
  v13 = type metadata accessor for Peripheral.ConnectionOptions();
  *(v8 + 7968) = v13;
  *(v8 + 7976) = *(v13 - 8);
  *(v8 + 7984) = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  *(v8 + 7992) = swift_task_alloc();
  v14 = type metadata accessor for AccessoryProductInfo(0);
  *(v8 + 8000) = v14;
  *(v8 + 8008) = *(v14 - 8);
  *(v8 + 8016) = swift_task_alloc();
  *(v8 + 8024) = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  *(v8 + 8032) = v15;
  *(v8 + 8040) = *(v15 - 8);
  *(v8 + 8048) = swift_task_alloc();
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  *(v8 + 8056) = swift_task_alloc();
  *(v8 + 8064) = swift_task_alloc();
  *(v8 + 8072) = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  *(v8 + 8080) = swift_task_alloc();
  *(v8 + 8088) = swift_task_alloc();
  type metadata accessor for RawAccessoryMetadata(0);
  *(v8 + 8096) = swift_task_alloc();
  type metadata accessor for AccessoryMetadata(0);
  *(v8 + 8104) = swift_task_alloc();
  *(v8 + 8112) = swift_task_alloc();
  v16 = type metadata accessor for CentralManager.State();
  *(v8 + 8120) = v16;
  *(v8 + 8128) = *(v16 - 8);
  *(v8 + 8136) = swift_task_alloc();
  v17 = type metadata accessor for MACAddress();
  *(v8 + 8144) = v17;
  v18 = *(v17 - 8);
  *(v8 + 8152) = v18;
  *(v8 + 8160) = *(v18 + 64);
  *(v8 + 8168) = swift_task_alloc();
  *(v8 + 8176) = swift_task_alloc();

  return _swift_task_switch(sub_1000E6034, v7, 0);
}

uint64_t sub_1000E6034()
{
  v35 = v0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v1 = v0 + 1024;
  v2 = v0[1022];
  v3 = v0[1019];
  v4 = v0[1018];
  v5 = v0[976];
  v6 = type metadata accessor for Logger();
  v0[1023] = sub_1000076D4(v6, qword_101696FF8);
  v7 = *(v3 + 16);
  v0[1024] = v7;
  v0[1025] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[1022];
  v12 = v0[1019];
  v13 = v0[1018];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v14 = 136446210;
    sub_100102448(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = v15;
    v1 = v0 + 1024;
    v19 = sub_1000136BC(v18, v17, &v34);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Pairing AirPods LE with MAC address %{public}s", v14, 0xCu);
    sub_100007BAC(v33);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = v0[980];
  v21 = *(v1 + 470);
  *(v20 + 272) = *(v1 + 469);
  *(*(v20 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) = v21;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v6, qword_10177C418);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Pairing LE using CCCKG2", v24, 2u);
  }

  v25 = v0[1017];
  v26 = v0[1016];
  v27 = v0[1015];

  (*(v26 + 104))(v25, enum case for CentralManager.State.poweredOn(_:), v27);
  v28 = type metadata accessor for CentralManager();
  v29 = sub_100102448(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v30 = swift_task_alloc();
  v0[1026] = v30;
  *v30 = v0;
  v30[1] = sub_1000E6438;
  v31 = v0[1017];

  return dispatch thunk of CentralManagerProtocol.await(state:)(v31, v28, v29);
}

uint64_t sub_1000E6438()
{
  v2 = *v1;
  *(*v1 + 8216) = v0;

  v3 = v2[1017];
  v4 = v2[1016];
  v5 = v2[1015];
  v6 = v2[980];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1000E686C;
  }

  else
  {
    v7 = sub_1000E65B4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000E65B4()
{
  v1 = *(v0 + 8168);
  v2 = *(v0 + 8152);
  v3 = *(v0 + 8144);
  v4 = *(v0 + 7840);
  v5 = *(v0 + 7800);
  (*(v0 + 0x2000))(v1, *(v0 + 7808), v3);
  v6 = *(v2 + 80);
  *(v0 + 8656) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 8224) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v9 = *(v2 + 32);
  *(v0 + 8232) = v9;
  *(v0 + 8240) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);

  v10 = swift_task_alloc();
  *(v0 + 8248) = v10;
  v11 = type metadata accessor for Peripheral();
  *(v0 + 8256) = v11;
  *v10 = v0;
  v10[1] = sub_1000E6744;

  return withTimeout<A>(_:block:)(v0 + 7760, 0x40AAD21B3B700000, 3, &unk_10138BDE0, v8, v11);
}

uint64_t sub_1000E6744()
{
  v2 = *v1;
  *(*v1 + 8264) = v0;

  if (v0)
  {
    v3 = *(v2 + 7840);
    v4 = sub_1000E6BDC;
  }

  else
  {
    v5 = *(v2 + 7840);

    v4 = sub_1000E6A1C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E686C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E6A1C()
{
  v12 = v0;
  v1 = v0[970];
  v0[1034] = v1;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[974] = v1;
    sub_100102448(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;

    v9 = sub_1000136BC(v6, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reading AIS from peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  return _swift_task_switch(sub_1000E6D94, 0, 0);
}

uint64_t sub_1000E6BDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E6D94()
{
  v1 = v0[1011];
  v2 = type metadata accessor for ConnectUseCase();
  v0[1035] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[1036] = v4;
  v0[1037] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[1038] = v5;
  *v5 = v0;
  v5[1] = sub_1000E6EA0;
  v6 = v0[1034];
  v7 = v0[1012];
  v8 = v0[1011];

  return sub_1011FC38C(v7, v6, 2, v8);
}

uint64_t sub_1000E6EA0()
{
  v2 = *v1;
  *(*v1 + 8312) = v0;

  sub_10000B3A8(*(v2 + 8088), &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v3 = sub_1000E707C;
  }

  else
  {
    v3 = sub_1000E6FE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E6FE4()
{
  v1 = v0[1039];
  sub_100232154(v0[1012], v0[1014]);
  v0[1040] = v1;
  if (v1)
  {
    v0[1041] = v1;
    v2 = v0[980];
    v3 = sub_1000E7B18;
  }

  else
  {
    v2 = v0[980];
    v3 = sub_1000E70A0;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000E70A0()
{
  v68 = v0;
  sub_100101E08(*(v0 + 8112), *(v0 + 8104), type metadata accessor for AccessoryMetadata);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 8104);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v67[0] = v6;
    *v5 = 136446210;
    v7 = sub_100230E34();
    v9 = v8;
    sub_100101E70(v4, type metadata accessor for AccessoryMetadata);
    v10 = sub_1000136BC(v7, v9, v67);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "AIS: %{public}s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {

    sub_100101E70(v4, type metadata accessor for AccessoryMetadata);
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 7736) = 0x7365547265646E75;
  *(v0 + 7744) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 8660) == 1)
  {
    v11 = *(v0 + 8072);
    v12 = *(v0 + 8048);
    v13 = *(v0 + 8040);
    v14 = *(v0 + 8032);
    v15 = *(v0 + 8008);
    v16 = *(v0 + 8000);
    type metadata accessor for BeaconStore(0);
    UUID.init()();
    sub_10110F124(0, v11);
    (*(v13 + 8))(v12, v14);
    (*(v15 + 56))(v11, 0, 1, v16);
    v17 = *(v0 + 8320);
    v18 = *(v0 + 8056);
    v19 = *(v0 + 8008);
    v20 = *(v0 + 8000);
    sub_1000D2A70(*(v0 + 8072), v18, &qword_101697268, &qword_101394FE0);
    v21 = (*(v19 + 48))(v18, 1, v20);
    v22 = *(v0 + 8056);
    if (v21 == 1)
    {
      sub_10000B3A8(v22, &qword_101697268, &qword_101394FE0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Missing product info!", v25, 2u);
      }

      v26 = *(v0 + 8112);
      v27 = *(v0 + 8072);

      sub_100100904();
      swift_allocError();
      *v28 = 0x800000000000000CLL;
      swift_willThrow();

      goto LABEL_19;
    }

    v33 = *(v0 + 8024);
    v34 = *(v0 + 8016);
    sub_100101DA0(v22, v33, type metadata accessor for AccessoryProductInfo);
    sub_100101E08(v33, v34, type metadata accessor for AccessoryProductInfo);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 8016);
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v67[0] = v40;
      *v39 = 136446210;
      v41 = sub_1011A0624();
      v43 = v42;
      sub_100101E70(v38, type metadata accessor for AccessoryProductInfo);
      v44 = sub_1000136BC(v41, v43, v67);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "Product info: %{public}s)", v39, 0xCu);
      sub_100007BAC(v40);
    }

    else
    {

      sub_100101E70(v38, type metadata accessor for AccessoryProductInfo);
    }

    sub_1000EF008(*(v0 + 8112), *(v0 + 8024));
    if (v17)
    {
      v26 = *(v0 + 8112);
      v27 = *(v0 + 8072);
      v45 = *(v0 + 8024);

      sub_100101E70(v45, type metadata accessor for AccessoryProductInfo);
LABEL_19:
      sub_10000B3A8(v27, &qword_101697268, &qword_101394FE0);
      sub_100101E70(v26, type metadata accessor for AccessoryMetadata);

      v46 = *(v0 + 8);

      return v46();
    }

    v47 = *(v0 + 8288);
    v48 = *(v0 + 8280);
    v49 = *(v0 + 8080);
    v66 = *(v0 + 7992);
    v65 = *(v0 + 7960);
    v50 = *(v0 + 7952);
    v51 = *(v0 + 7840);
    v52 = *(v0 + 7832);
    v53 = *(v0 + 7824);
    v54 = *(v51 + 160);
    v55 = *(v51 + 168);
    *(v51 + 160) = v53;
    *(v51 + 168) = v52;
    sub_10002E98C(v53, v52);
    sub_100006654(v54, v55);
    v47(v49, 1, 1, v48);
    sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_101385D80;
    static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
    *(v0 + 7752) = v56;
    sub_100102448(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
    sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
    sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = type metadata accessor for PeripheralPairingInfo();
    (*(*(v57 - 8) + 56))(v65, 1, 1, v57);
    v58 = type metadata accessor for LongTermKey();
    (*(*(v58 - 8) + 56))(v50, 1, 1, v58);
    Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
    v59 = type metadata accessor for Peripheral.Options();
    (*(*(v59 - 8) + 56))(v66, 0, 1, v59);
    v60 = sub_100102448(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    *(v0 + 8352) = v60;
    v61 = swift_task_alloc();
    *(v0 + 8360) = v61;
    *v61 = v0;
    v61[1] = sub_1000E7DFC;
    v62 = *(v0 + 8256);
    v63 = *(v0 + 8080);
    v64 = *(v0 + 7992);

    return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v63, v64, v62, v60);
  }

  else
  {
    type metadata accessor for AccessoryMetadataManager();
    v29 = swift_task_alloc();
    *(v0 + 8336) = v29;
    *v29 = v0;
    v29[1] = sub_1000E7CD0;
    v30 = *(v0 + 8112);
    v31 = *(v0 + 8064);

    return sub_100359F48(v31, v30, 3);
  }
}

uint64_t sub_1000E7B18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E7CD0()
{
  v2 = *v1;
  *(*v1 + 8344) = v0;

  v3 = *(v2 + 7840);
  if (v0)
  {
    v4 = sub_1000ECC14;
  }

  else
  {
    v4 = sub_1000EC450;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E7DFC()
{
  v2 = *v1;
  *(*v1 + 8368) = v0;

  v3 = v2[1010];
  v4 = v2[999];
  v5 = v2[980];
  sub_10000B3A8(v4, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v3, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v6 = sub_1000E81B0;
  }

  else
  {
    v6 = sub_1000E7F80;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E7F80()
{
  v16 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[1034];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v0[973] = v3;
    sub_100102448(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;

    v9 = sub_1000136BC(v6, v8, &v15);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connected to peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v0[1047] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v10 = swift_task_alloc();
  v0[1048] = v10;
  *v10 = v0;
  v10[1] = sub_1000E83C4;
  v11 = v0[1044];
  v12 = v0[1032];
  v13 = v0[993];

  return dispatch thunk of PeripheralProtocol.subscript.getter(v13, v12, v11);
}

uint64_t sub_1000E81B0()
{
  v1 = v0[1014];
  v2 = v0[1009];
  v3 = v0[1003];

  sub_100101E70(v3, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v2, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v1, type metadata accessor for AccessoryMetadata);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000E83C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[1049] = a1;
  v4[1050] = v1;

  v5 = v3[993];
  v6 = v3[992];
  v7 = v3[991];
  v8 = v3[980];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_1000E87FC;
  }

  else
  {
    v9 = sub_1000E854C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000E854C()
{
  v0[1051] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v1 = sub_100102448(&qword_1016972A8, 255, &type metadata accessor for Service, &protocol conformance descriptor for Service);
  v2 = swift_task_alloc();
  v0[1052] = v2;
  *v2 = v0;
  v2[1] = sub_1000E8658;
  v3 = v0[1047];
  v4 = v0[990];

  return dispatch thunk of ServiceProtocol.subscript.getter(v4, v3, v1);
}

uint64_t sub_1000E8658(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[1053] = a1;
  v4[1054] = v1;

  v5 = v3[990];
  v6 = v3[989];
  v7 = v3[988];
  v8 = v3[980];
  (*(v6 + 8))(v5, v7);

  if (v1)
  {
    v9 = sub_1000E8C80;
  }

  else
  {
    v9 = sub_1000E8A10;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000E87FC()
{
  v1 = v0[1014];
  v2 = v0[1009];
  v3 = v0[1003];

  sub_100101E70(v3, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v2, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v1, type metadata accessor for AccessoryMetadata);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000E8A10(uint64_t a1)
{
  v20 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy services and Pairing characteristic.", v4, 2u);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[1034];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v1[972] = v8;
    sub_100102448(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;

    v14 = sub_1000136BC(v11, v13, &v19);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pairing peripheral: %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {
  }

  v15 = swift_task_alloc();
  v1[1055] = v15;
  *v15 = v1;
  v15[1] = sub_1000E8E94;
  v16 = v1[1044];
  v17 = v1[1032];

  return dispatch thunk of PeripheralProtocol.pair()(v17, v16);
}

uint64_t sub_1000E8C80()
{
  v1 = v0[1014];
  v2 = v0[1009];
  v3 = v0[1003];

  sub_100101E70(v3, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v2, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v1, type metadata accessor for AccessoryMetadata);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000E8E94()
{
  v2 = *v1;
  *(*v1 + 8448) = v0;

  v3 = *(v2 + 7840);
  if (v0)
  {
    v4 = sub_1000E9524;
  }

  else
  {
    v4 = sub_1000E8FC0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E8FC0()
{
  v32 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[1034];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v31[0] = v5;
    *v4 = 136315138;
    v0[971] = v3;
    sub_100102448(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;

    v9 = sub_1000136BC(v6, v8, v31);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Paired peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  BinaryEncoder.init()();
  BinaryDecoder.init()();
  sub_100100958((v0 + 68));
  memcpy(v0 + 662, v0 + 68, 0x108uLL);
  SharingCircleWildAdvertisementKey.init(key:)();
  memcpy(v0 + 134, v0 + 68, 0x108uLL);
  memcpy(v0 + 101, v0 + 662, 0x108uLL);
  v10 = v0[1056];
  sub_100100988((v0 + 134), (v0 + 167));
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  sub_1001009E4((v0 + 134));
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31[0] = v14;
    *v13 = 136315138;
    memcpy(v0 + 299, v0 + 134, 0x108uLL);
    sub_100100988((v0 + 134), (v0 + 266));
    v15 = String.init<A>(describing:)();
    v17 = sub_1000136BC(v15, v16, v31);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sending command: %s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  memcpy(v0 + 398, v0 + 134, 0x108uLL);
  v0[1057] = sub_100100A38();
  v0[1058] = BinaryEncoder.encode<A>(_:)();
  v0[1059] = v18;
  if (v10)
  {
    sub_1001009E4((v0 + 134));
    v0[1076] = v10;
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Pairing command error: %{public}@", v21, 0xCu);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

    sub_100100A8C((v0 + 431));
    v24 = swift_task_alloc();
    v0[1077] = v24;
    *v24 = v0;
    v24[1] = sub_1000EB3E4;
    v25 = v0[1044];
    v26 = v0[1032];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v26, v25);
  }

  else
  {
    v27 = sub_100102448(&qword_1016972C0, 255, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v28 = swift_task_alloc();
    v0[1060] = v28;
    *v28 = v0;
    v28[1] = sub_1000E9744;
    v29 = v0[1051];

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v29, v27);
  }
}

uint64_t sub_1000E9524()
{
  v1 = v0[1014];
  v2 = v0[1009];
  v3 = v0[1003];

  sub_100101E70(v3, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v2, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v1, type metadata accessor for AccessoryMetadata);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000E9744(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 8488) = v1;

  v5 = *(v4 + 7840);
  if (v1)
  {
    v6 = sub_1000E9A58;
  }

  else
  {
    *(v4 + 8496) = a1;
    v6 = sub_1000E9870;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E9870()
{
  v1 = fragment(data:mtu:)();
  memcpy(v0 + 464, v0 + 134, 0x108uLL);
  if (sub_100100ACC((v0 + 464)) == 5)
  {
    v2 = v0[1053];
    sub_1000479AC((v0 + 464));
    v3 = swift_allocObject();
    v0[1063] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;

    v4 = swift_task_alloc();
    v0[1064] = v4;
    *v4 = v0;
    v4[1] = sub_1000E9C1C;
    v5 = &unk_10138BE28;
    v6 = &type metadata for () + 1;
  }

  else
  {
    v7 = v0[1053];
    v3 = swift_allocObject();
    v0[1066] = v3;
    *(v3 + 16) = v7;
    *(v3 + 24) = v1;

    v8 = swift_task_alloc();
    v0[1067] = v8;
    *v8 = v0;
    v8[1] = sub_1000E9D74;
    v6 = &type metadata for Data;
    v5 = &unk_10138BE10;
    v4 = v0 + 965;
  }

  return withTimeout<A>(_:block:)(v4, 0x40AAD21B3B700000, 3, v5, v3, v6);
}

uint64_t sub_1000E9A58()
{
  sub_100016590(v0[1058], v0[1059]);
  sub_1001009E4((v0 + 134));
  v0[1076] = v0[1061];
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Pairing command error: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

  sub_100100A8C((v0 + 431));
  v6 = swift_task_alloc();
  v0[1077] = v6;
  *v6 = v0;
  v6[1] = sub_1000EB3E4;
  v7 = v0[1044];
  v8 = v0[1032];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v8, v7);
}

uint64_t sub_1000E9C1C()
{
  v2 = *v1;
  *(*v1 + 8520) = v0;

  if (v0)
  {
    v3 = *(v2 + 7840);

    v4 = sub_1000EA3BC;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 7840);
    sub_10000B3A8(v2 + 808, &qword_1016972B8, &unk_10138BDF8);

    v4 = sub_1000E9EBC;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000E9D74()
{
  v2 = *v1;
  *(*v1 + 8544) = v0;

  v3 = *(v2 + 7840);

  if (v0)
  {
    v4 = sub_1000EBAD8;
  }

  else
  {
    v4 = sub_1000EB5A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E9EBC()
{
  v41 = v0;
  memcpy((v0 + 280), (v0 + 1072), 0x108uLL);
  v1 = sub_1000479AC(v0 + 280);
  sub_100017D5C(*v1, *(v1 + 8));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  sub_1001009E4(v0 + 1072);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v40 = v5;
    *v4 = 136315138;
    memcpy((v0 + 2656), (v0 + 1072), 0x108uLL);
    memcpy((v0 + 2920), (v0 + 1072), 0x108uLL);
    v6 = sub_1000479AC(v0 + 2920);
    sub_100017D5C(*v6, *(v6 + 8));
    v7 = String.init<A>(describing:)();
    v9 = sub_1000136BC(v7, v8, &v40);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent final command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  *(*(v0 + 7840) + 176) = 9;
  sub_100100A8C(v0 + 3976);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Pairing completed succesfully!", v12, 2u);
  }

  v13 = *(v0 + 8661);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  if (v13 == 1)
  {
    if (v16)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Sent pairing complete, skip ackRequest for standalone.", v17, 2u);
    }

    v18 = *(v0 + 8472);
    v19 = *(v0 + 8464);
    sub_1001009E4(v0 + 1072);
    sub_100016590(v19, v18);

    v20 = swift_task_alloc();
    *(v0 + 8552) = v20;
    *v20 = v0;
    v21 = sub_1000EA588;
  }

  else
  {
    if (v16)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Sent pairing complete, continue with ackRequest.", v22, 2u);
    }

    v38 = *(v0 + 8464);
    v39 = *(v0 + 8472);
    v37 = *(v0 + 8232);
    v23 = *(v0 + 8656);
    v24 = *(v0 + 0x2000);
    v25 = *(v0 + 8168);
    v26 = *(v0 + 8144);
    v27 = *(v0 + 7848);
    v28 = *(v0 + 7840);
    v29 = *(v0 + 7816);

    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v27, 1, 1, v30);
    v24(v25, v29, v26);
    v32 = sub_100102448(&qword_101697238, v31, type metadata accessor for AirPodsLEPairingService, &unk_10138BD60);
    v33 = swift_allocObject();
    *(v33 + 2) = v28;
    *(v33 + 3) = v32;
    *(v33 + 4) = v28;
    v37(&v33[(v23 + 40) & ~v23], v25, v26);
    swift_retain_n();
    sub_10025EDD4(0, 0, v27, &unk_10138BE38, v33);
    sub_1001009E4(v0 + 1072);

    sub_100016590(v38, v39);
    v20 = swift_task_alloc();
    *(v0 + 8600) = v20;
    *v20 = v0;
    v21 = sub_1000EB230;
  }

  v20[1] = v21;
  v34 = *(v0 + 8352);
  v35 = *(v0 + 8256);

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v35, v34);
}

uint64_t sub_1000EA3BC()
{
  v1 = v0[1059];
  v2 = v0[1058];
  sub_1001009E4((v0 + 134));
  sub_100016590(v2, v1);
  v0[1076] = v0[1065];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Pairing command error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

  sub_100100A8C((v0 + 431));
  v8 = swift_task_alloc();
  v0[1077] = v8;
  *v8 = v0;
  v8[1] = sub_1000EB3E4;
  v9 = v0[1044];
  v10 = v0[1032];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v9);
}

uint64_t sub_1000EA588()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    memcpy(v2 + 200, v2 + 497, 0x108uLL);
    v2[1074] = 0;
    v2[1073] = v0;
    v4 = v2[980];

    return _swift_task_switch(sub_1000EA868, v4, 0);
  }

  else
  {
    memcpy(v2 + 233, v2 + 497, 0x108uLL);
    v2[1070] = 0;
    v5 = swift_task_alloc();
    v2[1071] = v5;
    *v5 = v3;
    v5[1] = sub_1000EA73C;
    v6 = v2[1044];
    v7 = v2[1032];

    return dispatch thunk of PeripheralProtocol.unpair()(v7, v6);
  }
}

uint64_t sub_1000EA73C()
{
  v2 = *v1;
  *(*v1 + 8576) = v0;

  v3 = *(v2 + 7840);
  if (v0)
  {
    v4 = sub_1000EAFA0;
  }

  else
  {
    v4 = sub_1000EAAF8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000EA868()
{
  v10 = v0[1009];
  v11 = v0[1014];
  v1 = v0[1003];
  v2 = v0[987];
  v3 = v0[986];
  v4 = v0[985];
  v5 = v0[984];
  v6 = v0[983];
  v7 = v0[982];

  sub_10000B3A8((v0 + 200), &qword_1016972B8, &unk_10138BDF8);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_100101E70(v1, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v10, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v11, type metadata accessor for AccessoryMetadata);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000EAAF8(uint64_t a1)
{
  if (v1[1070])
  {
    v20 = v1[1009];
    v21 = v1[1014];
    v19 = v1[1003];
    v2 = v1[987];
    v3 = v1[986];
    v4 = v1[985];
    v5 = v1[984];
    v6 = v1[983];
    v7 = v1[982];
    swift_willThrow();

    sub_10000B3A8((v1 + 233), &qword_1016972B8, &unk_10138BDF8);

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
    sub_100101E70(v19, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v20, &qword_101697268, &qword_101394FE0);
    sub_100101E70(v21, type metadata accessor for AccessoryMetadata);
  }

  else
  {
    v17 = v1[1009];
    v18 = v1[1014];
    v9 = v1[1003];
    v10 = v1[987];
    v11 = v1[986];
    v12 = v1[985];
    v13 = v1[984];
    v14 = v1[983];
    v15 = v1[982];

    sub_10000B3A8((v1 + 233), &qword_1016972B8, &unk_10138BDF8);

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
    sub_100101E70(v9, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v17, &qword_101697268, &qword_101394FE0);
    sub_100101E70(v18, type metadata accessor for AccessoryMetadata);
  }

  v8 = v1[1];

  return v8();
}

uint64_t sub_1000EAFA0()
{
  v10 = v0[1009];
  v11 = v0[1014];
  v1 = v0[1003];
  v2 = v0[987];
  v3 = v0[986];
  v4 = v0[985];
  v5 = v0[984];
  v6 = v0[983];
  v7 = v0[982];

  sub_10000B3A8((v0 + 233), &qword_1016972B8, &unk_10138BDF8);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_100101E70(v1, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v10, &qword_101697268, &qword_101394FE0);
  sub_100101E70(v11, type metadata accessor for AccessoryMetadata);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000EB230()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    memcpy(v2 + 200, v2 + 497, 0x108uLL);
    v2[1074] = 0;
    v2[1073] = v0;
    v4 = v2[980];

    return _swift_task_switch(sub_1000EA868, v4, 0);
  }

  else
  {
    memcpy(v2 + 233, v2 + 497, 0x108uLL);
    v2[1070] = 0;
    v5 = swift_task_alloc();
    v2[1071] = v5;
    *v5 = v3;
    v5[1] = sub_1000EA73C;
    v6 = v2[1044];
    v7 = v2[1032];

    return dispatch thunk of PeripheralProtocol.unpair()(v7, v6);
  }
}

uint64_t sub_1000EB3E4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    memcpy(v2 + 200, v2 + 431, 0x108uLL);
    v2[1074] = v2[1076];
    v2[1073] = v0;
    v4 = v2[980];

    return _swift_task_switch(sub_1000EA868, v4, 0);
  }

  else
  {
    v5 = v2[1076];
    memcpy(v2 + 233, v2 + 431, 0x108uLL);
    v2[1070] = v5;
    v6 = swift_task_alloc();
    v2[1071] = v6;
    *v6 = v3;
    v6[1] = sub_1000EA73C;
    v7 = v2[1044];
    v8 = v2[1032];

    return dispatch thunk of PeripheralProtocol.unpair()(v8, v7);
  }
}

uint64_t sub_1000EB5A0()
{
  v36 = v0;
  v1 = v0[965];
  v0[1078] = v1;
  v2 = v0[966];
  v0[1079] = v2;
  sub_100100988((v0 + 134), (v0 + 530));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  sub_1001009E4((v0 + 134));
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35[0] = v6;
    *v5 = 136315138;
    memcpy(v0 + 893, v0 + 134, 0x108uLL);
    sub_100100988((v0 + 134), (v0 + 926));
    v7 = String.init<A>(describing:)();
    v9 = sub_1000136BC(v7, v8, v35);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sent command: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = v0[1068];
  v11 = sub_100100BA4();
  BinaryDecoder.decode<A>(_:from:)();
  if (v10)
  {
    v12 = v0[1059];
    v13 = v0[1058];
    sub_100016590(v1, v2);
    sub_100016590(v13, v12);
    sub_1001009E4((v0 + 134));
    v0[1076] = v10;
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Pairing command error: %{public}@", v16, 0xCu);
      sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

    sub_100100A8C((v0 + 431));
    v19 = swift_task_alloc();
    v0[1077] = v19;
    *v19 = v0;
    v19[1] = sub_1000EB3E4;
    v20 = v0[1044];
    v21 = v0[1032];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v21, v20);
  }

  else
  {
    memcpy(v0 + 596, v0 + 563, 0x108uLL);
    sub_100100988((v0 + 596), (v0 + 629));
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    sub_1001009E4((v0 + 596));
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35[0] = v25;
      *v24 = 136315138;
      memcpy(v0 + 827, v0 + 596, 0x108uLL);
      sub_100100988((v0 + 596), (v0 + 860));
      v26 = String.init<A>(describing:)();
      v28 = sub_1000136BC(v26, v27, v35);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Received response: %s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    v29 = v0[1057];
    v0[962] = &type metadata for AirPodsSWPairingCommand;
    v0[963] = v11;
    v0[964] = v29;
    v30 = swift_allocObject();
    v0[959] = v30;
    memcpy((v30 + 16), v0 + 596, 0x108uLL);
    sub_100100988((v0 + 596), (v0 + 695));
    v31 = swift_task_alloc();
    v0[1080] = v31;
    *v31 = v0;
    v31[1] = sub_1000EBCA4;
    v32 = v0[1034];
    v33 = v0[977];

    return sub_1000F047C((v0 + 2), v32, (v0 + 959), v33);
  }
}

uint64_t sub_1000EBAD8()
{
  v1 = v0[1059];
  v2 = v0[1058];
  sub_1001009E4((v0 + 134));
  sub_100016590(v2, v1);
  v0[1076] = v0[1068];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Pairing command error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

  sub_100100A8C((v0 + 431));
  v8 = swift_task_alloc();
  v0[1077] = v8;
  *v8 = v0;
  v8[1] = sub_1000EB3E4;
  v9 = v0[1044];
  v10 = v0[1032];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v9);
}

uint64_t sub_1000EBCA4()
{
  v2 = *v1;
  *(*v1 + 8648) = v0;

  if (v0)
  {
    v3 = v2[980];
    v4 = sub_1000EC258;
  }

  else
  {
    v5 = v2[980];
    memcpy(v2 + 761, v2 + 2, 0x108uLL);
    sub_10000B3A8((v2 + 101), &qword_1016972B8, &unk_10138BDF8);
    sub_100007BAC(v2 + 959);
    v4 = sub_1000EBE04;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000EBE04()
{
  v27 = v0;
  v1 = v0[1079];
  v2 = v0[1078];
  v3 = v0[1059];
  v4 = v0[1058];
  sub_1001009E4((v0 + 134));
  sub_1001009E4((v0 + 596));
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  memcpy(v0 + 728, v0 + 761, 0x108uLL);
  SharingCircleWildAdvertisementKey.init(key:)();
  sub_100100988((v0 + 2), (v0 + 794));
  memcpy(v0 + 134, v0 + 761, 0x108uLL);
  memcpy(v0 + 101, v0 + 728, 0x108uLL);
  v5 = v0[1081];
  sub_100100988((v0 + 134), (v0 + 167));
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  sub_1001009E4((v0 + 134));
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    memcpy(v0 + 299, v0 + 134, 0x108uLL);
    sub_100100988((v0 + 134), (v0 + 266));
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending command: %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  memcpy(v0 + 398, v0 + 134, 0x108uLL);
  v0[1057] = sub_100100A38();
  v0[1058] = BinaryEncoder.encode<A>(_:)();
  v0[1059] = v13;
  if (v5)
  {
    sub_1001009E4((v0 + 134));
    v0[1076] = v5;
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Pairing command error: %{public}@", v16, 0xCu);
      sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

    sub_100100A8C((v0 + 431));
    v19 = swift_task_alloc();
    v0[1077] = v19;
    *v19 = v0;
    v19[1] = sub_1000EB3E4;
    v20 = v0[1044];
    v21 = v0[1032];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v21, v20);
  }

  else
  {
    v22 = sub_100102448(&qword_1016972C0, 255, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v23 = swift_task_alloc();
    v0[1060] = v23;
    *v23 = v0;
    v23[1] = sub_1000E9744;
    v24 = v0[1051];

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v24, v22);
  }
}

uint64_t sub_1000EC258()
{
  v1 = v0[1079];
  v2 = v0[1078];
  v3 = v0[1059];
  v4 = v0[1058];
  sub_1001009E4((v0 + 134));
  sub_1001009E4((v0 + 596));
  sub_100016590(v2, v1);
  sub_100016590(v4, v3);
  sub_100007BAC(v0 + 959);
  v0[1076] = v0[1081];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pairing command error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 101), &qword_1016972B8, &unk_10138BDF8);

  sub_100100A8C((v0 + 431));
  v10 = swift_task_alloc();
  v0[1077] = v10;
  *v10 = v0;
  v10[1] = sub_1000EB3E4;
  v11 = v0[1044];
  v12 = v0[1032];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v12, v11);
}

uint64_t sub_1000EC450()
{
  v49 = v0;
  sub_1000D2AD8(v0[1008], v0[1009], &qword_101697268, &qword_101394FE0);
  v1 = v0[1043];
  v2 = v0[1007];
  v3 = v0[1001];
  v4 = v0[1000];
  sub_1000D2A70(v0[1009], v2, &qword_101697268, &qword_101394FE0);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = v0[1007];
  if (v5 == 1)
  {
    sub_10000B3A8(v6, &qword_101697268, &qword_101394FE0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing product info!", v9, 2u);
    }

    v10 = v0[1014];
    v11 = v0[1009];

    sub_100100904();
    swift_allocError();
    *v12 = 0x800000000000000CLL;
    swift_willThrow();

    goto LABEL_10;
  }

  v13 = v0[1003];
  v14 = v0[1002];
  sub_100101DA0(v6, v13, type metadata accessor for AccessoryProductInfo);
  sub_100101E08(v13, v14, type metadata accessor for AccessoryProductInfo);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[1002];
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48 = v20;
    *v19 = 136446210;
    v21 = sub_1011A0624();
    v23 = v22;
    sub_100101E70(v18, type metadata accessor for AccessoryProductInfo);
    v24 = sub_1000136BC(v21, v23, &v48);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Product info: %{public}s)", v19, 0xCu);
    sub_100007BAC(v20);
  }

  else
  {

    sub_100101E70(v18, type metadata accessor for AccessoryProductInfo);
  }

  sub_1000EF008(v0[1014], v0[1003]);
  if (v1)
  {
    v10 = v0[1014];
    v11 = v0[1009];
    v25 = v0[1003];

    sub_100101E70(v25, type metadata accessor for AccessoryProductInfo);
LABEL_10:
    sub_10000B3A8(v11, &qword_101697268, &qword_101394FE0);
    sub_100101E70(v10, type metadata accessor for AccessoryMetadata);

    v26 = v0[1];

    return v26();
  }

  v28 = v0[1036];
  v29 = v0[1035];
  v30 = v0[1010];
  v47 = v0[999];
  v46 = v0[995];
  v31 = v0[994];
  v32 = v0[980];
  v33 = v0[979];
  v34 = v0[978];
  v35 = *(v32 + 160);
  v36 = *(v32 + 168);
  *(v32 + 160) = v34;
  *(v32 + 168) = v33;
  sub_10002E98C(v34, v33);
  sub_100006654(v35, v36);
  v28(v30, 1, 1, v29);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[969] = v37;
  sub_100102448(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
  v39 = type metadata accessor for LongTermKey();
  (*(*(v39 - 8) + 56))(v31, 1, 1, v39);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v40 = type metadata accessor for Peripheral.Options();
  (*(*(v40 - 8) + 56))(v47, 0, 1, v40);
  v41 = sub_100102448(&qword_1016972A0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v0[1044] = v41;
  v42 = swift_task_alloc();
  v0[1045] = v42;
  *v42 = v0;
  v42[1] = sub_1000E7DFC;
  v43 = v0[1032];
  v44 = v0[1010];
  v45 = v0[999];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v44, v45, v43, v41);
}

uint64_t sub_1000ECC14()
{
  v1 = *(v0 + 8112);

  sub_100101E70(v1, type metadata accessor for AccessoryMetadata);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000ECDEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016973D0, &qword_10138BF60);
  v3[10] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_1016C11A0, &qword_10138BF68);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for ScanMode();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016C2160, &qword_10138BF78);
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v9 = type metadata accessor for CentralManager.State();
  v3[24] = v9;
  v3[25] = *(v9 - 8);
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for MACAddress();
  v3[27] = v10;
  v3[28] = *(v10 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000ED18C, v2, 0);
}

uint64_t sub_1000ED18C()
{
  v26 = v0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[31] = sub_1000076D4(v5, qword_101696FF8);
  v6 = *(v3 + 16);
  v0[32] = v6;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136446210;
    sub_100102448(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting discovery scan for peripherals matching macAddress: %{public}s", v13, 0xCu);
    sub_100007BAC(v24);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[34] = v17;
  (*(v0[25] + 104))(v0[26], enum case for CentralManager.State.poweredOn(_:), v0[24]);
  v19 = type metadata accessor for CentralManager();
  v0[35] = v19;
  v20 = sub_100102448(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v0[36] = v20;
  v21 = swift_task_alloc();
  v0[37] = v21;
  *v21 = v0;
  v21[1] = sub_1000ED498;
  v22 = v0[26];

  return dispatch thunk of CentralManagerProtocol.await(state:)(v22, v19, v20);
}

uint64_t sub_1000ED498()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  *(*v1 + 304) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1000ED984;
  }

  else
  {
    v7 = sub_1000ED620;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000ED620()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  Identifier.init(stringLiteral:)();
  *v1 = v4;
  (*(v2 + 104))(v1, enum case for ScanMode.serviceIdentifiers(_:), v3);
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1000ED7FC;
  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[23];
  v9 = v0[19];

  return dispatch thunk of CentralManagerProtocol.scanForPeripherals(scanMode:garbageCollectInterval:)(v8, v9, 0xD02AB486CEDC0000, 0, v6, v7);
}