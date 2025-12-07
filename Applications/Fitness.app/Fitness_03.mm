unint64_t sub_100048B74()
{
  result = qword_1008EE2E0;
  if (!qword_1008EE2E0)
  {
    sub_100141EEC(&qword_1008EE2A0, &qword_1006F22D0);
    sub_1004636B0();
    sub_1003417A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE2E0);
  }

  return result;
}

id sub_100048C00()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008DD010, &qword_1006D5898);
  __chkstk_darwin(v2 - 8);
  v4 = &v55[-v3 - 8];
  v5 = type metadata accessor for ActivityRingsCard(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = v0[3];
  v10 = v0[4];
  sub_1000066AC(v0, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v13 = v12;
  LOBYTE(v10) = v14;
  v15 = sub_1000490C8(v11, v12, v14);
  sub_10001D4F8(v11, v13, v10);
  if (v15 - 1 >= 2)
  {
    if (v15)
    {
      goto LABEL_9;
    }

    sub_100007C5C(v1, v55);
    sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
    v21 = swift_dynamicCast();
    v22 = *(v6 + 56);
    if (!v21)
    {
      v22(v4, 1, 1, v5);
      sub_10000EA04(v4, &qword_1008DD010, &qword_1006D5898);
      v37 = v1[3];
      v38 = v1[4];
      sub_1000066AC(v1, v37);
      v39 = (*(v38 + 16))(v37, v38);
      v41 = v40;
      v43 = v42;
      v44 = sub_1000490C8(v39, v40, v42);
      sub_10001D4F8(v39, v41, v43);
      return sub_1000492D8(v44);
    }

    v22(v4, 0, 1, v5);
    sub_1003A40C0(v4, v8);
    v23 = *&v8[*(v5 + 36)];
    if (v23)
    {
      if ([v23 _isStandalonePhoneSummary])
      {
LABEL_8:
        v24 = [objc_opt_self() mainBundle];
        v25 = String._bridgeToObjectiveC()();
        v26 = [v24 localizedStringForKey:v25 value:0 table:0];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_19:
        sub_1003A4124(v8);
        return v27;
      }
    }

    else
    {
      result = [objc_opt_self() sharedBehavior];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v45 = result;
      v46 = [result isStandalonePhoneFitnessMode];

      if (v46)
      {
        goto LABEL_8;
      }
    }

    v47 = v1[3];
    v48 = v1[4];
    sub_1000066AC(v1, v47);
    v49 = (*(v48 + 16))(v47, v48);
    v51 = v50;
    LOBYTE(v47) = v52;
    v53 = sub_1000490C8(v49, v50, v52);
    sub_10001D4F8(v49, v51, v47);
    v27 = sub_1000492D8(v53);
    goto LABEL_19;
  }

  v16 = v1[3];
  v17 = v1[4];
  sub_1000066AC(v1, v16);
  v18 = (*(v17 + 16))(v16, v17);
  if (v20)
  {
    sub_10001D4F8(v18, v19, v20);
LABEL_9:
    v28 = v1[3];
    v29 = v1[4];
    sub_1000066AC(v1, v28);
    v30 = (*(v29 + 16))(v28, v29);
    v32 = v31;
    v34 = v33;
    v35 = sub_1000490C8(v30, v31, v33);
    sub_10001D4F8(v30, v32, v34);

    return sub_1000492D8(v35);
  }

  return sub_100081E1C(v18);
}

uint64_t sub_1000490C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      return 8;
    }

    else
    {
      return byte_1006FF73E[a1];
    }
  }

  else if (a3)
  {
    return 9;
  }

  else
  {
    return byte_1006FF748[a1];
  }
}

uint64_t type metadata accessor for ActivityRingsCard(uint64_t a1)
{
  result = qword_1008EB150;
  if (!qword_1008EB150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100049160(uint64_t a1, Swift::Int a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a1;
  _StringGuts.grow(_:)(a2);

  strcpy(v16, "CARD_FAMILY_");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  v8._countAndFlagsBits = sub_1000492F0(v6);
  String.append(_:)(v8);

  v9._countAndFlagsBits = a3;
  v9._object = a4;
  String.append(_:)(v9);
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();

  v12 = 0;
  if (v7 == 19)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v14;
}

uint64_t sub_1000492F0(char a1)
{
  result = 0x53474E4952;
  switch(a1)
  {
    case 1:
      return 0x454D5F5350455453;
    case 2:
      v3 = 0x534548535550;
      return v3 & 0xFFFFFFFFFFFFLL | 0x4D5F000000000000;
    case 3:
      return 0x59524F54534948;
    case 4:
      return 1397770580;
    case 5:
      return 0x505353454E544946;
    case 6:
      return 0xD00000000000001ALL;
    case 7:
      return 1145130828;
    case 8:
      return 0x53444E455254;
    case 9:
      return 0x53444E45495246;
    case 10:
      return 0x534452415741;
    case 11:
      return 0xD00000000000001FLL;
    case 12:
      return 0xD00000000000001FLL;
    case 13:
      v4 = 1313756498;
      goto LABEL_18;
    case 14:
      v4 = 1279482179;
      goto LABEL_18;
    case 15:
      return 0xD000000000000010;
    case 16:
      v3 = 0x474E494B4948;
      return v3 & 0xFFFFFFFFFFFFLL | 0x4D5F000000000000;
    case 17:
      v4 = 1263288663;
LABEL_18:
      result = v4 | 0x5F474E4900000000;
      break;
    case 18:
      result = 0x5F4C5546444E494DLL;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100049548()
{
  result = qword_1008EE310;
  if (!qword_1008EE310)
  {
    sub_100141EEC(&qword_1008EE290, &qword_1006F22C0);
    sub_100463890(&qword_1008EE318, &qword_1008EE288, &qword_1006F22B8, sub_100463940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE310);
  }

  return result;
}

unint64_t sub_100049614()
{
  result = qword_1008EE338;
  if (!qword_1008EE338)
  {
    sub_100141EEC(&qword_1008EE330, &qword_1006F2370);
    sub_100048AF0(&qword_1008EE340, &qword_1008EE348, &qword_1006F2378, sub_10034171C);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE338);
  }

  return result;
}

unint64_t sub_1000496F8()
{
  result = qword_1008EE350;
  if (!qword_1008EE350)
  {
    sub_100141EEC(&qword_1008EE260, &qword_1006F2290);
    sub_100141EEC(&qword_1008EE330, &qword_1006F2370);
    sub_100049614();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DD728, &qword_1008DD730, &qword_1006DCAE0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE350);
  }

  return result;
}

uint64_t sub_1000497EC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    v3 = v2;
    UnfairLock.acquire<A>(_:)();

    PassthroughSubject.send(_:)();

    v4 = sub_100049A20(1);
    sub_10001D544(v4);
  }

  return result;
}

uint64_t sub_1000498F8(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100049C98(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

char *sub_1000499F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049BAC(a1, a2, a3, *v3, &qword_1008DE400, &qword_1006D7B60);
  *v3 = result;
  return result;
}

void *sub_100049A20(char a1)
{
  for (i = 0; i != 39; ++i)
  {
    v5 = *(&off_100845858 + i + 32);
    if (v5 - 4 >= 0x22)
    {
      if (v5 >= 4)
      {
        if (a1 != 2)
        {
          continue;
        }
      }

      else if (a1)
      {
        continue;
      }
    }

    else if (a1 != 1)
    {
      continue;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000499F0(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v4 = _swiftEmptyArrayStorage[2];
    v3 = _swiftEmptyArrayStorage[3];
    if (v4 >= v3 >> 1)
    {
      sub_1000499F0((v3 > 1), v4 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v4 + 1;
    *(&_swiftEmptyArrayStorage[4] + v4) = v5;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100049B38(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100049DE4();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000498F8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

char *sub_100049BAC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100140278(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void sub_100049C98(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001A5D8C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1001A7604();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001A85D4(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t sub_100049DE4()
{
  result = qword_1008DF1D8;
  if (!qword_1008DF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF1D8);
  }

  return result;
}

uint64_t sub_100049E38()
{
  **(v0 + 16) = *(*(v0 + 24) + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_activeMetrics);
}

void sub_100049E80(uint64_t a1)
{
  v1 = static os_log_type_t.info.getter();
  v2 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "ActivityTileViewController fetch user first name", 48, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context);

    v6 = *&v5[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider];
    v7 = FIUICopyUserFirstNameFromAddressBook();
    [v6 setName:v7];
  }
}

void sub_100049F88(unint64_t a1)
{
  v121 = a1;
  v95 = *v1;
  v2 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v2 - 8);
  v94 = &v91 - v3;
  v4 = sub_100140278(&qword_1008DE950, &unk_1006D8370);
  __chkstk_darwin(v4 - 8);
  v6 = &v91 - v5;
  v120 = type metadata accessor for ActivitySharingFriendListItem(0);
  v116 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v8 - 8);
  v110 = &v91 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v101 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v114 = &v91 - v14;
  v15 = type metadata accessor for ActivitySharingFriendListDateItemGroup(0);
  v16 = *(v15 - 8);
  v108 = v15;
  v109 = v16;
  __chkstk_darwin(v15);
  v107 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v96 = &v91 - v19;
  v20 = static os_log_type_t.default.getter();
  v21 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v20))
  {
    v22 = v21;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v125 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_10000AFDC(0xD00000000000001ELL, 0x8000000100749E50, &v125);
    _os_log_impl(&_mh_execute_header, v22, v20, "%s", v23, 0xCu);
    sub_100005A40(v24);
  }

  v25 = *(v122 + OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_friendListSectionManager);
  if (![v25 hasInitializedFriendData])
  {
    v34 = static os_log_type_t.default.getter();
    v35 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v34))
    {
      v36 = v35;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v125 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_10000AFDC(0xD00000000000001ELL, 0x8000000100749E50, &v125);
      _os_log_impl(&_mh_execute_header, v36, v34, "%s friend data is not initialized.", v37, 0xCu);
      sub_100005A40(v38);
    }

    return;
  }

  v26 = [v25 sectionForFriendsCompetingWithMe];
  v27 = [v26 rows];

  v106 = sub_1000059F8(0, &qword_1008DE958, ASFriendListRow_ptr);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v125 = _swiftEmptyArrayStorage;
  if (v28 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v93 = v25;
    if (i)
    {
      v124 = v11;
      v25 = 0;
      v11 = v28 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v30 = *(v28 + 8 * v25 + 32);
        }

        v31 = v30;
        v32 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v33 = [v30 friend];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v125[2] >= v125[3] >> 1)
        {
          v103 = v10;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v10 = v103;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v25;
        if (v32 == i)
        {
          v92 = v125;
          v11 = v124;
          goto LABEL_20;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v92 = _swiftEmptyArrayStorage;
LABEL_20:

    v39 = [objc_allocWithZone(ASFriendListDisplayContext) init];
    [v39 setDisplayMode:v121];
    [v39 setDisplayFilter:1];
    v91 = v39;
    v40 = [v93 sectionsForDisplayContext:v39];
    sub_1000059F8(0, &qword_1008DE960, ASFriendListSection_ptr);
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v100 = v41;
    if (!(v41 >> 62))
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
        break;
      }

      goto LABEL_22;
    }

    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (!v42)
    {
      break;
    }

LABEL_22:
    v125 = _swiftEmptyArrayStorage;
    sub_10004AF88(0, v42 & ~(v42 >> 63), 0);
    if (v42 < 0)
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      return;
    }

    v43 = 0;
    v115 = v125;
    v118 = OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_pauseRingsCoordinator;
    v105 = v100 & 0xC000000000000001;
    v99 = v100 & 0xFFFFFFFFFFFFFF8;
    v97 = v100 + 32;
    v111 = (v11 + 32);
    v104 = (v11 + 56);
    v98 = (v11 + 48);
    v117 = (v116 + 48);
    v103 = v10;
    v102 = v42;
    while (!__OFADD__(v43, 1))
    {
      v113 = v43 + 1;
      if (v105)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v43 >= *(v99 + 16))
        {
          goto LABEL_60;
        }

        v44 = *(v97 + 8 * v43);
      }

      v45 = v44;
      v46 = [v44 startDate];
      if (v46)
      {
        v47 = v101;
        v48 = v46;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = v110;
        v50 = *v111;
        (*v111)(v110, v47, v10);
        (*v104)(v49, 0, 1, v10);
        v50(v114, v49, v10);
      }

      else
      {
        v51 = v110;
        (*v104)(v110, 1, 1, v10);
        Date.init()();
        if ((*v98)(v51, 1, v10) != 1)
        {
          sub_10000EA04(v110, &unk_1008F73A0, &unk_1006DB450);
        }
      }

      v52 = [v45 rows];
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v28 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
        v112 = v45;
        if (v10)
        {
LABEL_35:
          v25 = 0;
          v123 = v28 & 0xFFFFFFFFFFFFFF8;
          v124 = v28 & 0xC000000000000001;
          v53 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v124)
            {
              v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v25 >= *(v123 + 16))
              {
                goto LABEL_56;
              }

              v54 = *(v28 + 8 * v25 + 32);
            }

            v55 = v54;
            v11 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            v56 = [v54 friend];
            v57 = v6;
            v58 = [v55 snapshot];
            sub_10004B018(v56, v58, v121, *(v122 + v118), v57);

            v6 = v57;
            if ((*v117)(v57, 1, v120) == 1)
            {
              sub_10000EA04(v57, &qword_1008DE950, &unk_1006D8370);
            }

            else
            {
              sub_100052954(v57, v119, type metadata accessor for ActivitySharingFriendListItem);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v53 = sub_100052B00(0, v53[2] + 1, 1, v53);
              }

              v60 = v53[2];
              v59 = v53[3];
              if (v60 >= v59 >> 1)
              {
                v53 = sub_100052B00((v59 > 1), v60 + 1, 1, v53);
              }

              v53[2] = v60 + 1;
              sub_100052954(v119, v53 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v60, type metadata accessor for ActivitySharingFriendListItem);
            }

            ++v25;
            if (v11 == v10)
            {
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      else
      {
        v10 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v112 = v45;
        if (v10)
        {
          goto LABEL_35;
        }
      }

      v53 = _swiftEmptyArrayStorage;
LABEL_51:

      v25 = v107;
      v10 = v103;
      (*v111)(v107, v114, v103);
      *(v25 + *(v108 + 20)) = v53;
      v61 = v115;
      v125 = v115;
      v63 = v115[2];
      v62 = v115[3];
      v28 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        sub_10004AF88((v62 > 1), v63 + 1, 1);
        v61 = v125;
      }

      v61[2] = v28;
      v64 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v115 = v61;
      sub_100052954(v25, v61 + v64 + *(v109 + 72) * v63, type metadata accessor for ActivitySharingFriendListDateItemGroup);
      v43 = v113;
      if (v113 == v102)
      {

        v65 = v115;
        goto LABEL_64;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v65 = _swiftEmptyArrayStorage;
LABEL_64:
  v66 = v65[2];
  v67 = v96;
  v115 = v65;
  v68 = 0;
  if (v66)
  {
    v69 = *(v108 + 20);
    v70 = v65 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v71 = *(v109 + 72);
    do
    {
      sub_100057D00(v70, v67, type metadata accessor for ActivitySharingFriendListDateItemGroup);
      v72 = *(*(v67 + v69) + 16);
      v73 = __OFADD__(v68, v72);
      v68 += v72;
      if (v73)
      {
        __break(1u);
        goto LABEL_81;
      }

      sub_100057BF0(v67, type metadata accessor for ActivitySharingFriendListDateItemGroup);
      v70 += v71;
      --v66;
    }

    while (v66);
  }

  v74 = [v93 sectionForFriendsInvitedByMe];
  v75 = [v74 rows];

  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v66 >> 62)
  {
    goto LABEL_83;
  }

  for (j = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v125 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (j < 0)
    {
      goto LABEL_88;
    }

    v77 = 0;
    v124 = v66 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v78 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if ((v66 & 0xC000000000000001) != 0)
      {
        v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v77 >= *(v124 + 16))
        {
          goto LABEL_82;
        }

        v79 = *(v66 + 8 * v77 + 32);
      }

      v80 = v79;
      v81 = [v79 friend];
      v82 = [v81 contact];

      if (!v82)
      {
        goto LABEL_89;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v77;
      if (v78 == j)
      {

        v83 = v125;
        goto LABEL_85;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v83 = _swiftEmptyArrayStorage;
LABEL_85:
  v84 = type metadata accessor for TaskPriority();
  v85 = v94;
  (*(*(v84 - 8) + 56))(v94, 1, 1, v84);
  type metadata accessor for MainActor();
  v86 = v122;

  v87 = static MainActor.shared.getter();
  v88 = swift_allocObject();
  v88[2] = v87;
  v88[3] = &protocol witness table for MainActor;
  v88[4] = v92;
  v88[5] = v68;
  v89 = v115;
  v88[6] = v86;
  v88[7] = v89;
  v90 = v95;
  v88[8] = v83;
  v88[9] = v90;
  sub_10026E198(0, 0, v85, &unk_1006D8388, v88);
}

uint64_t sub_10004AF30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

void *sub_10004AF88(void *a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE5D0, &unk_1006D7D50, type metadata accessor for ActivitySharingFriendListDateItemGroup);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for ActivitySharingFriendListDateItemGroup(uint64_t a1)
{
  result = qword_1008E1460;
  if (!qword_1008E1460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004B018(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v128 = a1;
  v111 = type metadata accessor for UUID();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v115 = *(v10 - 8);
  v116 = v10;
  __chkstk_darwin(v10);
  v114 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateComponents();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v117 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Date();
  v124 = *(v118 - 8);
  __chkstk_darwin(v118);
  v112 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v122 = &v101 - v17;
  __chkstk_darwin(v18);
  v119 = &v101 - v19;
  v20 = sub_100140278(&unk_1008EE8E0, qword_1006E2D40);
  __chkstk_darwin(v20 - 8);
  v123 = &v101 - v21;
  v22 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v22 - 8);
  v127 = type metadata accessor for AttributedString();
  v120 = *(v127 - 8);
  __chkstk_darwin(v127);
  v24 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v125 = &v101 - v26;
  __chkstk_darwin(v27);
  v126 = &v101 - v28;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = String._bridgeToObjectiveC()();

  v30 = [objc_opt_self() displayContextWithName:v29];

  if (v30)
  {
    v108 = a5;
    v121 = v30;
    v106 = v13;
    v31 = [v128 displayName];
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      if (![v128 isMe])
      {
        v107 = 0;
        v35 = v119;
        v33 = v121;
        if (!a2)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v33 = v121;
      v34 = [v121 keyColorForDisplayMode:a3];
      v35 = v119;
      if (v34)
      {
        v107 = Color.init(uiColor:)();
        if (!a2)
        {
          goto LABEL_12;
        }

LABEL_11:
        if (([a2 hasCarriedForwardGoals] & 1) == 0)
        {
          v38 = [a2 activitySummary];
LABEL_14:
          if ([v128 isMe])
          {
            v39 = [a4 isPaused];
            if (v38)
            {
LABEL_16:
              v40 = v38;
              v41 = v38;
              goto LABEL_19;
            }
          }

          else
          {
            v39 = 0;
            if (v38)
            {
              goto LABEL_16;
            }
          }

          v41 = [objc_allocWithZone(HKActivitySummary) init];
          v40 = 0;
LABEL_19:
          v42 = v40;
          [v41 setDeprecatedPauseForInternalSwiftClient:v39];
          v105 = v41;
          v104 = v39;
          if (a3 <= 2)
          {
            if (a3 >= 2)
            {
              if (a3 != 2)
              {
LABEL_50:
                v79 = static os_log_type_t.fault.getter();
                v80 = HKLogActivity;
                if (os_log_type_enabled(HKLogActivity, v79))
                {
                  v81 = v80;
                  v82 = swift_slowAlloc();
                  v83 = swift_slowAlloc();
                  v130 = v83;
                  *v82 = 136315394;
                  *(v82 + 4) = sub_10000AFDC(0xD000000000000049, 0x8000000100749E00, &v130);
                  *(v82 + 12) = 2048;
                  *(v82 + 14) = a3;
                  _os_log_impl(&_mh_execute_header, v81, v79, "%s found unexpected ASFriendListDisplayMode %ld", v82, 0x16u);
                  sub_100005A40(v83);

                  v33 = v121;
                }

                (*(v120 + 8))(v126, v127);

                v84 = type metadata accessor for ActivitySharingFriendListItem(0);
                (*(*(v84 - 8) + 56))(v108, 1, 1, v84);
                return;
              }

              v103 = v12;
              if (![v41 as_exerciseProgressStringWithContext:v33])
              {
LABEL_89:
                __break(1u);
                goto LABEL_90;
              }

              AttributedString.init(_:)();
              v42 = v120;
              v12 = v120 + 32;
              isa = *(v120 + 32);
              (isa)(v125, v24, v127);
              if ([v41 as_exerciseDurationStringWithContext:v33])
              {
                goto LABEL_35;
              }

              __break(1u);
              goto LABEL_33;
            }

            v103 = v12;
            if (![v41 as_movePercentStringWithContext:v33 snapshot:a2])
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            AttributedString.init(_:)();
            v42 = v120;
            v12 = v120 + 32;
            isa = *(v120 + 32);
            (isa)(v125, v24, v127);
            if ([v41 as_moveProgressStringWithContext:v33 formattingManager:*(v113 + OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_fiuiFormattingManager) snapshot:a2])
            {
              goto LABEL_35;
            }

            __break(1u);
          }

          if (a3 != 3)
          {
            if (a3 != 4)
            {
              if (a3 == 5)
              {
                v103 = v12;
                if (![v41 as_pushesStringWithContext:v33])
                {
LABEL_90:
                  __break(1u);
                  goto LABEL_91;
                }

                AttributedString.init(_:)();
                v42 = v120;
                isa = *(v120 + 32);
                (isa)(v125, v24, v127);
                v43 = 1;
                v45 = v122;
                v44 = v123;
                goto LABEL_37;
              }

              goto LABEL_50;
            }

            if (a2)
            {
              [a2 snapshotIndex];
            }

            isa = Int64._bridgeToObjectiveC()().super.super.isa;
            v85 = [v128 friendWorkouts];
            if (v85)
            {

              v86 = [v128 friendWorkouts];
              if (!v86)
              {
LABEL_94:
                __break(1u);
                goto LABEL_95;
              }

              v87 = v86;
              sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
              sub_100140278(&qword_1008DE948, &qword_1006EAF30);
              sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750, NSNumber_ptr);
              v88 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              if (!*(v88 + 16) || (sub_1004C5AA8(isa), (v89 & 1) == 0))
              {

                v90 = 0;
                goto LABEL_63;
              }
            }

            else if (_swiftEmptyArrayStorage >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                sub_10029CFD4(_swiftEmptyArrayStorage);
              }

              v35 = v119;
            }

            sub_1000059F8(0, &qword_1008DE938, _HKFitnessFriendWorkout_ptr);
            sub_10001D4A8(&qword_1008DE940, &qword_1008DE938, _HKFitnessFriendWorkout_ptr);
            v90 = Set._bridgeToObjectiveC()().super.isa;

LABEL_63:
            v103 = v12;
            v91 = ASWorkoutNameString();

            if (!v91)
            {
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            AttributedString.init(_:)();
            v92 = *(v120 + 32);
            (v92)(v125, v24, v127);
            if (a2)
            {
              [a2 snapshotIndex];
            }

            v93.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
            v94 = [v128 friendWorkouts];
            isa = v92;
            if (v94)
            {

              v95 = [v128 friendWorkouts];
              if (!v95)
              {
LABEL_95:
                __break(1u);
                return;
              }

              v96 = v95;
              sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
              sub_100140278(&qword_1008DE948, &qword_1006EAF30);
              sub_10001D4A8(&qword_1008E53E0, &qword_1008E1750, NSNumber_ptr);
              v97 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              if (!*(v97 + 16) || (sub_1004C5AA8(v93.super.super.isa), (v98 & 1) == 0))
              {

                v99 = 0;
LABEL_74:
                v100 = ASWorkoutCaloriesString();

                if (!v100)
                {
LABEL_93:
                  __break(1u);
                  goto LABEL_94;
                }

                v45 = v122;
                v44 = v123;
                v42 = v120;
                goto LABEL_36;
              }
            }

            else if (_swiftEmptyArrayStorage >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                sub_10029CFD4(_swiftEmptyArrayStorage);
              }

              v35 = v119;
            }

            sub_1000059F8(0, &qword_1008DE938, _HKFitnessFriendWorkout_ptr);
            sub_10001D4A8(&qword_1008DE940, &qword_1008DE938, _HKFitnessFriendWorkout_ptr);
            v99 = Set._bridgeToObjectiveC()().super.isa;

            goto LABEL_74;
          }

LABEL_33:
          v103 = v12;
          if (![v41 as_stepsStringWithContext:v33])
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          AttributedString.init(_:)();
          v42 = v120;
          isa = *(v120 + 32);
          (isa)(v125, v24, v127);
          if (![v41 as_distanceStringWithContext:v33 formattingManager:*(v113 + OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_fiuiFormattingManager)])
          {
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

LABEL_35:
          v45 = v122;
          v44 = v123;
LABEL_36:
          AttributedString.init(_:)();
          v43 = 0;
LABEL_37:
          (*(v42 + 7))(v44, v43, 1, v127);
          Date.init()();
          v101 = v38;
          if (a2)
          {
            v46 = [a2 startDate];
            v47 = v112;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v48 = v118;
            (*(v124 + 32))(v45, v47, v118);
          }

          else
          {
            v48 = v118;
            (*(v124 + 16))(v45, v35, v118);
          }

          v49 = v114;
          static Calendar.current.getter();
          sub_100140278(&unk_1008E51B0, &unk_1006D8360);
          v50 = type metadata accessor for Calendar.Component();
          v51 = *(v50 - 8);
          v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_1006D46C0;
          (*(v51 + 104))(v53 + v52, enum case for Calendar.Component.day(_:), v50);
          sub_10001C970(v53);
          swift_setDeallocating();
          (*(v51 + 8))(v53 + v52, v50);
          swift_deallocClassInstance();
          v54 = v117;
          Calendar.dateComponents(_:from:to:)();

          (*(v115 + 8))(v49, v116);
          if ([v128 isMe])
          {
            v55 = 0xE200000000000000;
            v56 = 25965;
            v57 = v108;
            v58 = v105;
LABEL_44:
            v130 = 0;
            v131 = 0xE000000000000000;
            _StringGuts.grow(_:)(16);

            v130 = 0x725F646E65697266;
            v131 = 0xEB000000005F776FLL;
            v63 = DateComponents.day.getter();
            if (v64)
            {
              v65 = 0;
            }

            else
            {
              v65 = v63;
            }

            v129 = v65;
            v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v66);

            v67._countAndFlagsBits = 95;
            v67._object = 0xE100000000000000;
            String.append(_:)(v67);
            v68._countAndFlagsBits = v56;
            v68._object = v55;
            String.append(_:)(v68);

            v69 = v130;
            v70 = v131;
            (*(v106 + 8))(v54, v103);
            v71 = *(v124 + 8);
            v71(v122, v48);
            v71(v35, v48);
            v72 = type metadata accessor for ActivitySharingFriendListItem(0);
            v73 = v127;
            v74 = isa;
            (isa)(v57 + v72[6], v126, v127);
            (v74)(v57 + v72[7], v125, v73);
            v75 = v107;
            *v57 = v128;
            v57[1] = v75;
            sub_100015E80(v123, v57 + v72[8], &unk_1008EE8E0, qword_1006E2D40);
            *(v57 + v72[9]) = v101;
            *(v57 + v72[10]) = v104;
            v76 = (v57 + v72[11]);
            *v76 = v69;
            v76[1] = v70;
            (*(*(v72 - 1) + 56))(v57, 0, 1, v72);
            v77 = v128;

            v78 = v77;
            return;
          }

          v59 = [v128 UUID];
          v57 = v108;
          v58 = v105;
          if (v59)
          {
            v60 = v59;
            v61 = v109;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v56 = UUID.uuidString.getter();
            v55 = v62;
            (*(v110 + 8))(v61, v111);
            goto LABEL_44;
          }

          goto LABEL_86;
        }

LABEL_12:
        v38 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v36 = type metadata accessor for ActivitySharingFriendListItem(0);
  v37 = *(*(v36 - 8) + 56);

  v37(a5, 1, 1, v36);
}

uint64_t sub_10004C2FC@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_100140278(&qword_1008DCD08, &qword_1006D56A0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_100140278(&qword_1008DCF38, &qword_1006D57B8);
  __chkstk_darwin(v6);
  v8 = &v20[-v7];
  v9 = sub_100140278(&qword_1008DCCF8, &qword_1006D5698);
  __chkstk_darwin(v9);
  v11 = &v20[-v10];
  v12 = (v2 + *(type metadata accessor for DashboardCardView(0) + 20));
  v13 = v12[3];
  v14 = v12[4];
  sub_1000066AC(v12, v13);
  if ((*(v14 + 56))(v13, v14))
  {
    sub_1000521F8();
    v16 = &qword_1008DCD08;
    v17 = &qword_1006D56A0;
    sub_10001B104(v5, v8, &qword_1008DCD08, &qword_1006D56A0);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008DCCF0, &qword_1008DCCF8, &qword_1006D5698, &protocol conformance descriptor for VStack<A>);
    sub_100054474();
    _ConditionalContent<>.init(storage:)();
    v18 = v5;
  }

  else
  {
    *v11 = static HorizontalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v15 = sub_100140278(&qword_1008DCF40, &qword_1006D57C0);
    sub_1001609CC(v21 & 1, v2, &v11[*(v15 + 44)]);
    v16 = &qword_1008DCCF8;
    v17 = &qword_1006D5698;
    sub_10001B104(v11, v8, &qword_1008DCCF8, &qword_1006D5698);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008DCCF0, &qword_1008DCCF8, &qword_1006D5698, &protocol conformance descriptor for VStack<A>);
    sub_100054474();
    _ConditionalContent<>.init(storage:)();
    v18 = v11;
  }

  return sub_10000EA04(v18, v16, v17);
}

uint64_t sub_10004C5EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v508 = a2;
  started = type metadata accessor for QuickStartWorkoutCardView(0);
  v398 = *(started - 8);
  __chkstk_darwin(started);
  v373 = &v351 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DCF60, &qword_1006D57E0);
  __chkstk_darwin(v4 - 8);
  v397 = &v351 - v5;
  v396 = type metadata accessor for QuickStartWorkoutCard(0);
  v395 = *(v396 - 8);
  __chkstk_darwin(v396);
  v372 = &v351 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = sub_100140278(&qword_1008DCEE8, &qword_1006D5760);
  __chkstk_darwin(v480);
  v423 = &v351 - v7;
  v478 = sub_100140278(&qword_1008DCF68, &qword_1006D57E8);
  __chkstk_darwin(v478);
  v479 = &v351 - v8;
  v504 = sub_100140278(&qword_1008DCEC0, &qword_1006D5750);
  __chkstk_darwin(v504);
  v472 = &v351 - v9;
  v10 = type metadata accessor for MetricDetailViewModel(0);
  __chkstk_darwin(v10 - 8);
  v450 = &v351 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v12 - 8);
  v447 = &v351 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v464 = type metadata accessor for MetricCardView(0);
  v463 = *(v464 - 8);
  __chkstk_darwin(v464);
  v462 = (&v351 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v449 = &v351 - v16;
  v17 = sub_100140278(&qword_1008DCF70, &unk_1006D57F0);
  __chkstk_darwin(v17 - 8);
  v460 = &v351 - v18;
  v491 = type metadata accessor for MetricCard(0);
  v459 = *(v491 - 8);
  __chkstk_darwin(v491);
  v461 = &v351 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v448 = &v351 - v21;
  v471 = sub_100140278(&qword_1008DCED0, &qword_1006D5758);
  __chkstk_darwin(v471);
  v465 = &v351 - v22;
  v498 = type metadata accessor for TrendsCardView(0);
  v470 = *(v498 - 8);
  __chkstk_darwin(v498);
  v497 = &v351 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100140278(&qword_1008DCF78, &unk_100700310);
  __chkstk_darwin(v24 - 8);
  v469 = &v351 - v25;
  v468 = type metadata accessor for TrendsCard(0);
  v467 = *(v468 - 8);
  __chkstk_darwin(v468);
  *&v506 = &v351 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v483 = sub_100140278(&qword_1008DCEA8, &qword_1006D5748);
  __chkstk_darwin(v483);
  v477 = &v351 - v27;
  *&v505 = sub_100140278(&qword_1008DCF80, &qword_1006D5800);
  __chkstk_darwin(v505);
  v502 = &v351 - v28;
  v485 = sub_100140278(&qword_1008DCF88, &qword_1006D5808);
  __chkstk_darwin(v485);
  v481 = &v351 - v29;
  v501 = sub_100140278(&qword_1008DCE80, &qword_1006D5738);
  __chkstk_darwin(v501);
  v482 = &v351 - v30;
  v507 = sub_100140278(&qword_1008DCE70, &qword_1006D5730);
  __chkstk_darwin(v507);
  v503 = &v351 - v31;
  v420 = type metadata accessor for CatalogTipCardView(0);
  v419 = *(v420 - 8);
  __chkstk_darwin(v420);
  v371 = (&v351 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_100140278(&qword_1008DCF90, &qword_1006D5810);
  __chkstk_darwin(v33 - 8);
  v393 = &v351 - v34;
  v392 = type metadata accessor for CatalogTipCard(0);
  v391 = *(v392 - 8);
  __chkstk_darwin(v392);
  v370 = &v351 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v369 = &v351 - v37;
  v484 = sub_100140278(&qword_1008DCE90, &qword_1006D5740);
  __chkstk_darwin(v484);
  v421 = &v351 - v38;
  v416 = type metadata accessor for FitnessPlusSampleContentView(0);
  v394 = *(v416 - 8);
  __chkstk_darwin(v416);
  v368 = &v351 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100140278(&qword_1008DCF98, &qword_1006D5818);
  __chkstk_darwin(v40 - 8);
  v389 = &v351 - v41;
  v388 = type metadata accessor for FitnessPlusSampleContentCard(0);
  v387 = *(v388 - 8);
  __chkstk_darwin(v388);
  v366 = &v351 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = sub_100140278(&qword_1008DCE58, &qword_1006D5728);
  __chkstk_darwin(v437);
  v418 = &v351 - v43;
  v435 = sub_100140278(&qword_1008DCFA0, &qword_1006D5820);
  __chkstk_darwin(v435);
  v436 = &v351 - v44;
  v489 = sub_100140278(&qword_1008DCE30, &qword_1006D5718);
  __chkstk_darwin(v489);
  v438 = &v351 - v45;
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v390 = *(View - 8);
  __chkstk_darwin(View);
  v367 = (&v351 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_100140278(&qword_1008DCFA8, &qword_1006D5828);
  __chkstk_darwin(v47 - 8);
  v386 = &v351 - v48;
  Card = type metadata accessor for FitnessPlusUpNextCard(0);
  v384 = *(Card - 8);
  __chkstk_darwin(Card);
  v365 = &v351 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v364 = &v351 - v51;
  v434 = sub_100140278(&qword_1008DCE40, &qword_1006D5720);
  __chkstk_darwin(v434);
  v417 = &v351 - v52;
  v413 = type metadata accessor for FriendsHighlightCardView(0);
  v412 = *(v413 - 8);
  __chkstk_darwin(v413);
  v363 = (&v351 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100140278(&qword_1008DCFB0, &qword_1006D5830);
  __chkstk_darwin(v54 - 8);
  v383 = &v351 - v55;
  v382 = type metadata accessor for FriendsHighlightCard(0);
  v381 = *(v382 - 8);
  __chkstk_darwin(v382);
  v362 = &v351 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = sub_100140278(&qword_1008DCE18, &qword_1006D5710);
  __chkstk_darwin(v476);
  v414 = &v351 - v57;
  v490 = sub_100140278(&qword_1008DCFB8, &qword_1006D5838);
  __chkstk_darwin(v490);
  v487 = &v351 - v58;
  v474 = sub_100140278(&qword_1008DCFC0, &qword_1006D5840);
  __chkstk_darwin(v474);
  v475 = &v351 - v59;
  v486 = sub_100140278(&qword_1008DCDF0, &qword_1006D5700);
  __chkstk_darwin(v486);
  v466 = &v351 - v60;
  v495 = sub_100140278(&qword_1008DCDE0, &qword_1006D56F8);
  __chkstk_darwin(v495);
  v488 = &v351 - v61;
  v457 = type metadata accessor for FriendCardView(0);
  v456 = *(v457 - 8);
  __chkstk_darwin(v457);
  v446 = &v351 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100140278(&qword_1008DCFC8, &unk_1006D5848);
  __chkstk_darwin(v63 - 8);
  v455 = &v351 - v64;
  v454 = type metadata accessor for FriendCard(0);
  v453 = *(v454 - 8);
  __chkstk_darwin(v454);
  v445 = &v351 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v473 = sub_100140278(&qword_1008DCE00, &qword_1006D5708);
  __chkstk_darwin(v473);
  v458 = &v351 - v66;
  v361 = sub_100140278(&unk_1008DC740, &qword_1006D4F00);
  __chkstk_darwin(v361);
  v360 = &v351 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v359 = &v351 - v69;
  v410 = type metadata accessor for AwardsCardView(0);
  v409 = *(v410 - 8);
  __chkstk_darwin(v410);
  v358 = (&v351 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_100140278(&qword_1008DCFD0, &qword_1006D5858);
  __chkstk_darwin(v71 - 8);
  v380 = &v351 - v72;
  v379 = type metadata accessor for AwardsCard(0);
  v378 = *(v379 - 8);
  __chkstk_darwin(v379);
  v408 = &v351 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v430 = sub_100140278(&qword_1008DCDC8, &qword_1006D56F0);
  __chkstk_darwin(v430);
  v411 = &v351 - v74;
  v426 = sub_100140278(&qword_1008DCFD8, &qword_1006D5860);
  __chkstk_darwin(v426);
  v427 = &v351 - v75;
  v443 = sub_100140278(&qword_1008DCDA0, &qword_1006D56E0);
  __chkstk_darwin(v443);
  v431 = &v351 - v76;
  v403 = type metadata accessor for HistoryItemsCardView(0);
  v402 = *(v403 - 8);
  __chkstk_darwin(v403);
  v354 = (&v351 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  v425 = sub_100140278(&qword_1008DCDB0, &qword_1006D56E8);
  __chkstk_darwin(v425);
  v407 = &v351 - v78;
  CardView = type metadata accessor for LoadCardView(0);
  __chkstk_darwin(CardView);
  v356 = (&v351 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  v405 = sub_100140278(&qword_1008DCFE0, &qword_1006D5868);
  v404 = *(v405 - 8);
  __chkstk_darwin(v405);
  v355 = &v351 - v80;
  v81 = sub_100140278(&qword_1008DCFE8, &qword_1006D5870);
  __chkstk_darwin(v81 - 8);
  v375 = &v351 - v82;
  v376 = type metadata accessor for LoadCard(0);
  v374 = *(v376 - 8);
  __chkstk_darwin(v376);
  v353 = &v351 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = sub_100140278(&qword_1008DCD80, &qword_1006D56D8);
  __chkstk_darwin(v433);
  v439 = &v351 - v84;
  v510 = sub_100140278(&qword_1008DCFF0, &qword_1006D5878);
  __chkstk_darwin(v510);
  v511 = &v351 - v85;
  v496 = sub_100140278(&qword_1008DCFF8, &qword_1006D5880);
  __chkstk_darwin(v496);
  v493 = &v351 - v86;
  v440 = sub_100140278(&qword_1008DD000, &qword_1006D5888);
  __chkstk_darwin(v440);
  v444 = &v351 - v87;
  v428 = sub_100140278(&qword_1008DD008, &qword_1006D5890);
  __chkstk_darwin(v428);
  v429 = &v351 - v88;
  v441 = sub_100140278(&qword_1008DCD58, &qword_1006D56C8);
  __chkstk_darwin(v441);
  v432 = &v351 - v89;
  v492 = sub_100140278(&qword_1008DCD48, &qword_1006D56C0);
  __chkstk_darwin(v492);
  v442 = &v351 - v90;
  v509 = sub_100140278(&qword_1008DCD38, &qword_1006D56B8);
  __chkstk_darwin(v509);
  v494 = &v351 - v91;
  v92 = sub_100140278(&qword_1008DCC58, &unk_1006D5620);
  __chkstk_darwin(v92 - 8);
  v94 = &v351 - v93;
  v451 = type metadata accessor for DynamicTypeSize();
  v452 = *(v451 - 8);
  __chkstk_darwin(v451);
  v399 = &v351 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = type metadata accessor for ActivityRingsCardView(0);
  v377 = *(v401 - 8);
  __chkstk_darwin(v401);
  v400 = (&v351 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v97);
  v352 = &v351 - v98;
  v99 = sub_100140278(&qword_1008DD010, &qword_1006D5898);
  __chkstk_darwin(v99 - 8);
  v101 = &v351 - v100;
  v102 = type metadata accessor for ActivityRingsCard(0);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v105 = &v351 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v106);
  v108 = &v351 - v107;
  v424 = sub_100140278(&qword_1008DCD68, &qword_1006D56D0);
  __chkstk_darwin(v424);
  v406 = &v351 - v109;
  v499 = type metadata accessor for DashboardCardView(0);
  v110 = v499[5];
  v500 = a1;
  v111 = (a1 + v110);
  v112 = *(a1 + v110 + 24);
  v113 = *(a1 + v110 + 32);
  sub_1000066AC((a1 + v110), v112);
  v114 = (*(v113 + 16))(v112, v113);
  if (v116 <= 1u)
  {
    if (v116)
    {
      sub_10001D4F8(v114, v115, 1);
      sub_100007C5C(v111, v513);
      sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
      v160 = v455;
      v161 = v454;
      v162 = swift_dynamicCast();
      v163 = *(v453 + 56);
      if (v162)
      {
        v163(v160, 0, 1, v161);
        v164 = v160;
        v165 = v445;
        sub_1000523E8(v164, v445, type metadata accessor for FriendCard);
        v166 = v165;
        v167 = v446;
        sub_1000523E8(v166, v446, type metadata accessor for FriendCard);
        v168 = v457;
        sub_10001B104(v500 + v499[7], v167 + *(v457 + 20), &qword_1008DC808, &unk_1006D4FD0);
        v169 = v458;
        sub_1000523E8(v167, v458, type metadata accessor for FriendCardView);
        v170 = 0;
        v171 = v511;
        v172 = v475;
      }

      else
      {
        v170 = 1;
        v163(v160, 1, 1, v161);
        sub_10000EA04(v160, &qword_1008DCFC8, &unk_1006D5848);
        v171 = v511;
        v172 = v475;
        v169 = v458;
        v168 = v457;
      }

      (*(v456 + 56))(v169, v170, 1, v168);
      sub_10001B104(v169, v172, &qword_1008DCE00, &qword_1006D5708);
      swift_storeEnumTagMultiPayload();
      sub_1001614D4();
      sub_100161588();
      v198 = v466;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v198, v487, &qword_1008DCDF0, &qword_1006D5700);
      swift_storeEnumTagMultiPayload();
      sub_10006DD60();
      sub_10006DFE8();
      v199 = v488;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v198, &qword_1008DCDF0, &qword_1006D5700);
      sub_10001B104(v199, v493, &qword_1008DCDE0, &qword_1006D56F8);
      swift_storeEnumTagMultiPayload();
      sub_10006C528();
      sub_10006C614();
      v200 = v494;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v199, &qword_1008DCDE0, &qword_1006D56F8);
      sub_10001B104(v200, v171, &qword_1008DCD38, &qword_1006D56B8);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v200, &qword_1008DCD38, &qword_1006D56B8);
      v192 = v169;
      v193 = &qword_1008DCE00;
      v194 = &qword_1006D5708;
    }

    else
    {
      sub_100007C5C(v111, v513);
      sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
      v117 = v460;
      v118 = v491;
      v119 = swift_dynamicCast();
      v120 = *(v459 + 56);
      if (v119)
      {
        v120(v117, 0, 1, v118);
        v121 = v448;
        sub_1000523E8(v117, v448, type metadata accessor for MetricCard);
        v122 = v461;
        sub_100051EE4(v121, v461, type metadata accessor for MetricCard);
        v123 = *(v121 + *(v118 + 40));
        sub_10001B104(v500 + v499[7], v513, &qword_1008DC808, &unk_1006D4FD0);
        KeyPath = swift_getKeyPath();
        v125 = v462;
        *v462 = KeyPath;
        sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
        swift_storeEnumTagMultiPayload();
        v126 = v464;
        sub_100051EE4(v122, v125 + *(v464 + 20), type metadata accessor for MetricCard);
        *(v125 + v126[6]) = v123;
        sub_10001B104(v513, v125 + v126[7], &qword_1008DC808, &unk_1006D4FD0);
        v127 = *(v122 + *(v118 + 44));
        v128 = (v125 + v126[9]);
        *v128 = v127;
        v129 = type metadata accessor for MetricFormattingHelper(0);
        v130 = objc_opt_self();
        v131 = v127;
        v132 = [v130 mainBundle];
        v133 = String._bridgeToObjectiveC()();
        v134 = [v132 localizedStringForKey:v133 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v135 = *(v129 + 24);
        *(v128 + v135) = sub_10005772C();
        v136 = v450;
        v137 = sub_100051EE4(v122 + *(v491 + 36), v450, type metadata accessor for MetricDetailViewModel);
        v138 = v511;
        if (*(v136 + 40) == 1 && *(v136 + 32) == 1)
        {
          __chkstk_darwin(v137);
          *(&v351 - 2) = v136;
          v139 = v462;
          sub_100415330(sub_1001616A8, v140, v462 + v126[8]);
          sub_10000EA04(v513, &qword_1008DC808, &unk_1006D4FD0);
          sub_100053C78(v461, type metadata accessor for MetricCard);
          sub_100053C78(v121, type metadata accessor for MetricCard);
        }

        else
        {
          sub_10000EA04(v513, &qword_1008DC808, &unk_1006D4FD0);
          sub_100053C78(v461, type metadata accessor for MetricCard);
          sub_100053C78(v121, type metadata accessor for MetricCard);
          v214 = v126[8];
          v215 = type metadata accessor for MetricChartData(0);
          v139 = v462;
          (*(*(v215 - 8) + 56))(v462 + v214, 1, 1, v215);
        }

        v196 = v479;
        v197 = v465;
        sub_100053C78(v136, type metadata accessor for MetricDetailViewModel);
        v216 = v449;
        sub_1000523E8(v139, v449, type metadata accessor for MetricCardView);
        sub_1000523E8(v216, v197, type metadata accessor for MetricCardView);
        v195 = 0;
      }

      else
      {
        v195 = 1;
        v120(v117, 1, 1, v118);
        sub_10000EA04(v117, &qword_1008DCF70, &unk_1006D57F0);
        v138 = v511;
        v196 = v479;
        v197 = v465;
        v126 = v464;
      }

      (*(v463 + 56))(v197, v195, 1, v126);
      sub_10001B104(v197, v196, &qword_1008DCED0, &qword_1006D5758);
      swift_storeEnumTagMultiPayload();
      sub_100059C44();
      sub_100059B80();
      v217 = v472;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v217, v502, &qword_1008DCEC0, &qword_1006D5750);
      swift_storeEnumTagMultiPayload();
      sub_100054254();
      sub_1000541C8();
      v218 = v503;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v217, &qword_1008DCEC0, &qword_1006D5750);
      sub_10001B104(v218, v138, &qword_1008DCE70, &qword_1006D5730);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v218, &qword_1008DCE70, &qword_1006D5730);
      v192 = v197;
      v193 = &qword_1008DCED0;
      v194 = &qword_1006D5758;
    }

    return sub_10000EA04(v192, v193, v194);
  }

  v141 = v498;
  v142 = v497;
  v143 = v506;
  if (v116 == 2)
  {
LABEL_8:
    sub_100007C5C(v111, v513);
    sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
    v144 = v469;
    v145 = v468;
    v146 = swift_dynamicCast();
    v147 = *(v467 + 56);
    if (v146)
    {
      v147(v144, 0, 1, v145);
      sub_1000523E8(v144, v143, type metadata accessor for TrendsCard);
      sub_100051EE4(v143, v142 + v141[5], type metadata accessor for TrendsCard);
      v148 = v499;
      v149 = v500;
      sub_10001B104(v500 + v499[7], v142 + v141[6], &qword_1008DC808, &unk_1006D4FD0);
      v150 = *(v149 + v148[8]);
      v151 = qword_1008DAB08;

      v152 = v151 == -1;
      v153 = v142;
      v154 = v503;
      v155 = v502;
      if (!v152)
      {
        swift_once();
      }

      v156 = *&qword_100925958;
      sub_10005491C(v94);
      (*(v452 + 56))(v94, 0, 1, v451);
      v157 = sub_10001DB1C(v111, v94, v156);
      sub_100007C5C(v111, v513);
      sub_10001E120(v513, v94, v157);
      sub_10000EA04(v513, &qword_1008DCC60, &qword_1006DEBC0);
      sub_10000EA04(v94, &qword_1008DCC58, &unk_1006D5620);
      sub_100053C78(v506, type metadata accessor for TrendsCard);
      *v153 = swift_getKeyPath();
      sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
      swift_storeEnumTagMultiPayload();
      *(v153 + v141[7]) = v150;
      *(v153 + v141[8]) = v157;
      v158 = v477;
      sub_1000523E8(v153, v477, type metadata accessor for TrendsCardView);
      v159 = 0;
    }

    else
    {
      v159 = 1;
      v147(v144, 1, 1, v145);
      sub_10000EA04(v144, &qword_1008DCF78, &unk_100700310);
      v154 = v503;
      v155 = v502;
      v158 = v477;
    }

    (*(v470 + 56))(v158, v159, 1, v141);
    v189 = &qword_1008DCEA8;
    v190 = &qword_1006D5748;
    sub_10001B104(v158, v481, &qword_1008DCEA8, &qword_1006D5748);
    swift_storeEnumTagMultiPayload();
    sub_100054114();
    sub_100054060();
    v191 = v482;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v191, v155, &qword_1008DCE80, &qword_1006D5738);
    swift_storeEnumTagMultiPayload();
    sub_100054254();
    sub_1000541C8();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v191, &qword_1008DCE80, &qword_1006D5738);
    sub_10001B104(v154, v511, &qword_1008DCE70, &qword_1006D5730);
    swift_storeEnumTagMultiPayload();
    sub_10005436C();
    sub_1000542E0();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v154, &qword_1008DCE70, &qword_1006D5730);
LABEL_24:
    v192 = v158;
    goto LABEL_25;
  }

  if (v114 > 4)
  {
    if (v114 <= 6)
    {
      v238 = v500;
      if (v114 ^ 5 | v115)
      {
        sub_100007C5C(v111, v513);
        sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
        v304 = v389;
        v305 = v388;
        v306 = swift_dynamicCast();
        v307 = *(v387 + 56);
        if (v306)
        {
          v307(v304, 0, 1, v305);
          v308 = v304;
          v309 = v366;
          sub_1000523E8(v308, v366, type metadata accessor for FitnessPlusSampleContentCard);
          v310 = v368;
          sub_1000523E8(v309, v368, type metadata accessor for FitnessPlusSampleContentCard);
          v311 = v499;
          v312 = v499[6];
          v313 = v416;
          v314 = *(v416 + 20);
          v315 = type metadata accessor for AppComposer();
          (*(*(v315 - 8) + 16))(v310 + v314, v238 + v312, v315);
          sub_10001B104(v238 + v311[7], v310 + *(v313 + 24), &qword_1008DC808, &unk_1006D4FD0);
          *(v310 + *(v313 + 28)) = *(v238 + v311[9]);
          v316 = v310;
          v317 = v418;
          sub_1000523E8(v316, v418, type metadata accessor for FitnessPlusSampleContentView);
          v318 = 0;
          v319 = v511;
        }

        else
        {
          v318 = 1;
          v307(v304, 1, 1, v305);
          sub_10000EA04(v304, &qword_1008DCF98, &qword_1006D5818);
          v319 = v511;
          v317 = v418;
          v313 = v416;
        }

        (*(v394 + 56))(v317, v318, 1, v313);
        sub_10001B104(v317, v436, &qword_1008DCE58, &qword_1006D5728);
        swift_storeEnumTagMultiPayload();
        sub_10006DC9C();
        sub_10006DB08();
        v341 = v438;
        _ConditionalContent<>.init(storage:)();
        sub_10001B104(v341, v487, &qword_1008DCE30, &qword_1006D5718);
        swift_storeEnumTagMultiPayload();
        sub_10006DD60();
        sub_10006DFE8();
        v342 = v488;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v341, &qword_1008DCE30, &qword_1006D5718);
        sub_10001B104(v342, v493, &qword_1008DCDE0, &qword_1006D56F8);
        swift_storeEnumTagMultiPayload();
        sub_10006C528();
        sub_10006C614();
        v343 = v494;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v342, &qword_1008DCDE0, &qword_1006D56F8);
        sub_10001B104(v343, v319, &qword_1008DCD38, &qword_1006D56B8);
        swift_storeEnumTagMultiPayload();
        sub_10005436C();
        sub_1000542E0();
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v343, &qword_1008DCD38, &qword_1006D56B8);
        v192 = v317;
        v193 = &qword_1008DCE58;
        v194 = &qword_1006D5728;
      }

      else
      {
        sub_100007C5C(v111, v513);
        sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
        v239 = v386;
        v240 = Card;
        v241 = swift_dynamicCast();
        v242 = *(v384 + 56);
        if (v241)
        {
          v242(v239, 0, 1, v240);
          v243 = v364;
          sub_1000523E8(v239, v364, type metadata accessor for FitnessPlusUpNextCard);
          v244 = v365;
          sub_100051EE4(v243, v365, type metadata accessor for FitnessPlusUpNextCard);
          v245 = v499;
          sub_10001B104(v238 + v499[7], v513, &qword_1008DC808, &unk_1006D4FD0);
          LOBYTE(v245) = *(v238 + v245[9]);
          v246 = swift_getKeyPath();
          v247 = v367;
          *v367 = v246;
          sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
          swift_storeEnumTagMultiPayload();
          v248 = View;
          sub_100051EE4(v244, v247 + *(View + 24), type metadata accessor for FitnessPlusUpNextCard);
          sub_10001B104(v513, v247 + v248[7], &qword_1008DC808, &unk_1006D4FD0);
          *(v247 + v248[8]) = v245;
          *(v247 + v248[9]) = v245 ^ 1;
          type metadata accessor for DashboardCardCellViewCache(0);
          sub_10006D128(&qword_1008DD018, type metadata accessor for DashboardCardCellViewCache, &unk_1006DB780);

          v249 = ObservedObject.init(wrappedValue:)();
          v251 = v250;
          sub_10000EA04(v513, &qword_1008DC808, &unk_1006D4FD0);
          sub_100053C78(v244, type metadata accessor for FitnessPlusUpNextCard);
          sub_100053C78(v243, type metadata accessor for FitnessPlusUpNextCard);
          v252 = (v247 + v248[5]);
          *v252 = v249;
          v252[1] = v251;
          v253 = v417;
          sub_1000523E8(v247, v417, type metadata accessor for FitnessPlusUpNextView);
          v254 = 0;
          v255 = v511;
        }

        else
        {
          v254 = 1;
          v242(v239, 1, 1, v240);
          sub_10000EA04(v239, &qword_1008DCFA8, &qword_1006D5828);
          v255 = v511;
          v253 = v417;
          v248 = View;
        }

        (*(v390 + 56))(v253, v254, 1, v248);
        sub_10001B104(v253, v436, &qword_1008DCE40, &qword_1006D5720);
        swift_storeEnumTagMultiPayload();
        sub_10006DC9C();
        sub_10006DB08();
        v334 = v438;
        _ConditionalContent<>.init(storage:)();
        sub_10001B104(v334, v487, &qword_1008DCE30, &qword_1006D5718);
        swift_storeEnumTagMultiPayload();
        sub_10006DD60();
        sub_10006DFE8();
        v335 = v488;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v334, &qword_1008DCE30, &qword_1006D5718);
        sub_10001B104(v335, v493, &qword_1008DCDE0, &qword_1006D56F8);
        swift_storeEnumTagMultiPayload();
        sub_10006C528();
        sub_10006C614();
        v336 = v494;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v335, &qword_1008DCDE0, &qword_1006D56F8);
        sub_10001B104(v336, v255, &qword_1008DCD38, &qword_1006D56B8);
        swift_storeEnumTagMultiPayload();
        sub_10005436C();
        sub_1000542E0();
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v336, &qword_1008DCD38, &qword_1006D56B8);
        v192 = v253;
        v193 = &qword_1008DCE40;
        v194 = &qword_1006D5720;
      }

      return sub_10000EA04(v192, v193, v194);
    }

    if (!(v114 ^ 7 | v115))
    {
      sub_100007C5C(v111, v513);
      sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
      v263 = v393;
      v264 = v392;
      v265 = swift_dynamicCast();
      v266 = *(v391 + 56);
      if (v265)
      {
        v266(v263, 0, 1, v264);
        v267 = v369;
        sub_1000523E8(v263, v369, type metadata accessor for CatalogTipCard);
        v268 = v370;
        sub_100051EE4(v267, v370, type metadata accessor for CatalogTipCard);
        sub_10001B104(v500 + v499[7], v513, &qword_1008DC808, &unk_1006D4FD0);
        v269 = v371;
        sub_100052EEC(v268, v513, v371);
        sub_100053C78(v267, type metadata accessor for CatalogTipCard);
        v270 = v421;
        sub_1000523E8(v269, v421, type metadata accessor for CatalogTipCardView);
        v271 = 0;
        v272 = v511;
      }

      else
      {
        v271 = 1;
        v266(v263, 1, 1, v264);
        sub_10000EA04(v263, &qword_1008DCF90, &qword_1006D5810);
        v272 = v511;
        v270 = v421;
      }

      (*(v419 + 56))(v270, v271, 1, v420);
      sub_10001B104(v270, v481, &qword_1008DCE90, &qword_1006D5740);
      swift_storeEnumTagMultiPayload();
      sub_100054114();
      sub_100054060();
      v323 = v482;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v323, v502, &qword_1008DCE80, &qword_1006D5738);
      swift_storeEnumTagMultiPayload();
      sub_100054254();
      sub_1000541C8();
      v324 = v503;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v323, &qword_1008DCE80, &qword_1006D5738);
      sub_10001B104(v324, v272, &qword_1008DCE70, &qword_1006D5730);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v324, &qword_1008DCE70, &qword_1006D5730);
      v192 = v270;
      v193 = &qword_1008DCE90;
      v194 = &qword_1006D5740;
      return sub_10000EA04(v192, v193, v194);
    }

    if (v114 ^ 8 | v115)
    {
      sub_100007C5C(v111, v513);
      sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
      v201 = v397;
      v202 = v396;
      v203 = swift_dynamicCast();
      v204 = *(v395 + 56);
      if (v203)
      {
        v204(v201, 0, 1, v202);
        v205 = v201;
        v206 = v372;
        sub_1000523E8(v205, v372, type metadata accessor for QuickStartWorkoutCard);
        v207 = v206;
        v208 = v373;
        sub_1000523E8(v207, v373, type metadata accessor for QuickStartWorkoutCard);
        v209 = started;
        sub_10001B104(v500 + v499[7], v208 + *(started + 20), &qword_1008DC808, &unk_1006D4FD0);
        v210 = v423;
        sub_1000523E8(v208, v423, type metadata accessor for QuickStartWorkoutCardView);
        v211 = 0;
        v212 = v511;
        v213 = v479;
      }

      else
      {
        v211 = 1;
        v204(v201, 1, 1, v202);
        sub_10000EA04(v201, &qword_1008DCF60, &qword_1006D57E0);
        v212 = v511;
        v213 = v479;
        v210 = v423;
        v209 = started;
      }

      (*(v398 + 56))(v210, v211, 1, v209);
      sub_10001B104(v210, v213, &qword_1008DCEE8, &qword_1006D5760);
      swift_storeEnumTagMultiPayload();
      sub_100059C44();
      sub_100059B80();
      v328 = v472;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v328, v502, &qword_1008DCEC0, &qword_1006D5750);
      swift_storeEnumTagMultiPayload();
      sub_100054254();
      sub_1000541C8();
      v329 = v503;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v328, &qword_1008DCEC0, &qword_1006D5750);
      sub_10001B104(v329, v212, &qword_1008DCE70, &qword_1006D5730);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v329, &qword_1008DCE70, &qword_1006D5730);
      v192 = v210;
      v193 = &qword_1008DCEE8;
      v194 = &qword_1006D5760;
      return sub_10000EA04(v192, v193, v194);
    }

    goto LABEL_8;
  }

  if (v114 > 1)
  {
    if (!(v114 ^ 2 | v115))
    {
      sub_100007C5C(v111, v513);
      sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
      type metadata accessor for HistoryItemsCard(0);
      if (swift_dynamicCast())
      {
        v256 = v512;
        v257 = v403;
        v258 = v354;
        sub_10001B104(v500 + v499[7], v354 + *(v403 + 24), &qword_1008DC808, &unk_1006D4FD0);
        *v258 = swift_getKeyPath();
        sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
        swift_storeEnumTagMultiPayload();
        *(v258 + *(v257 + 20)) = v256;
        v259 = v407;
        sub_1000523E8(v258, v407, type metadata accessor for HistoryItemsCardView);
        v260 = 0;
        v261 = v511;
        v262 = v444;
      }

      else
      {
        v260 = 1;
        v261 = v511;
        v262 = v444;
        v259 = v407;
        v257 = v403;
      }

      (*(v402 + 56))(v259, v260, 1, v257);
      sub_10001B104(v259, v427, &qword_1008DCDB0, &qword_1006D56E8);
      swift_storeEnumTagMultiPayload();
      sub_10006BEE4();
      sub_10006BE30();
      v320 = v431;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v320, v262, &qword_1008DCDA0, &qword_1006D56E0);
      swift_storeEnumTagMultiPayload();
      sub_10006BF98();
      sub_10006C3F8();
      v321 = v442;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v320, &qword_1008DCDA0, &qword_1006D56E0);
      sub_10001B104(v321, v493, &qword_1008DCD48, &qword_1006D56C0);
      swift_storeEnumTagMultiPayload();
      sub_10006C528();
      sub_10006C614();
      v322 = v494;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v321, &qword_1008DCD48, &qword_1006D56C0);
      sub_10001B104(v322, v261, &qword_1008DCD38, &qword_1006D56B8);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v322, &qword_1008DCD38, &qword_1006D56B8);
      v192 = v259;
      v193 = &qword_1008DCDB0;
      v194 = &qword_1006D56E8;
      return sub_10000EA04(v192, v193, v194);
    }

    v173 = v500;
    if (v114 ^ 3 | v115)
    {
      sub_100007C5C(v111, v513);
      sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
      v273 = v383;
      v274 = v382;
      v275 = swift_dynamicCast();
      v276 = *(v381 + 56);
      if (v275)
      {
        v276(v273, 0, 1, v274);
        v277 = v362;
        sub_1000523E8(v273, v362, type metadata accessor for FriendsHighlightCard);
        v278 = v499;
        v279 = v413;
        v280 = v363;
        sub_100051EE4(v277, v363 + *(v413 + 28), type metadata accessor for FriendsHighlightCard);
        sub_10001B104(v173 + v278[7], v280 + v279[8], &qword_1008DC808, &unk_1006D4FD0);
        LOBYTE(v278) = *(v173 + v278[9]);
        *v280 = swift_getKeyPath();
        sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
        swift_storeEnumTagMultiPayload();
        v281 = v279[6];
        v282 = objc_allocWithZone(type metadata accessor for MessagesAppInstallationObserver(0));

        *(v280 + v281) = [v282 init];
        type metadata accessor for DashboardCardCellViewCache(0);
        sub_10006D128(&qword_1008DD018, type metadata accessor for DashboardCardCellViewCache, &unk_1006DB780);
        v283 = ObservedObject.init(wrappedValue:)();
        v285 = v284;
        sub_100053C78(v277, type metadata accessor for FriendsHighlightCard);
        v286 = (v280 + v279[5]);
        *v286 = v283;
        v286[1] = v285;
        *(v280 + v279[9]) = v278;
        v287 = v414;
        sub_1000523E8(v280, v414, type metadata accessor for FriendsHighlightCardView);
        v288 = 0;
        v289 = v511;
        v290 = v475;
      }

      else
      {
        v288 = 1;
        v276(v273, 1, 1, v274);
        sub_10000EA04(v273, &qword_1008DCFB0, &qword_1006D5830);
        v289 = v511;
        v287 = v414;
        v290 = v475;
        v279 = v413;
      }

      (*(v412 + 56))(v287, v288, 1, v279);
      sub_10001B104(v287, v290, &qword_1008DCE18, &qword_1006D5710);
      swift_storeEnumTagMultiPayload();
      sub_1001614D4();
      sub_100161588();
      v330 = v466;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v330, v487, &qword_1008DCDF0, &qword_1006D5700);
      swift_storeEnumTagMultiPayload();
      sub_10006DD60();
      sub_10006DFE8();
      v331 = v488;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v330, &qword_1008DCDF0, &qword_1006D5700);
      sub_10001B104(v331, v493, &qword_1008DCDE0, &qword_1006D56F8);
      swift_storeEnumTagMultiPayload();
      sub_10006C528();
      sub_10006C614();
      v332 = v494;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v331, &qword_1008DCDE0, &qword_1006D56F8);
      sub_10001B104(v332, v289, &qword_1008DCD38, &qword_1006D56B8);
      swift_storeEnumTagMultiPayload();
      sub_10005436C();
      sub_1000542E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v332, &qword_1008DCD38, &qword_1006D56B8);
      v192 = v287;
      v193 = &qword_1008DCE18;
      v194 = &qword_1006D5710;
      return sub_10000EA04(v192, v193, v194);
    }

    sub_100007C5C(v111, v513);
    sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
    v174 = v380;
    v175 = v379;
    v176 = swift_dynamicCast();
    v177 = *(v378 + 56);
    if (v176)
    {
      v177(v174, 0, 1, v175);
      v178 = v408;
      sub_1000523E8(v174, v408, type metadata accessor for AwardsCard);
      v179 = v410;
      v180 = v358;
      sub_100051EE4(v178, v358 + *(v410 + 20), type metadata accessor for AwardsCard);
      v181 = v411;
      v182 = v409;
      if (qword_1008DAB08 != -1)
      {
        swift_once();
      }

      v183 = *&qword_100925958;
      sub_10005491C(v94);
      (*(v452 + 56))(v94, 0, 1, v451);
      v184 = sub_10001DB1C(v111, v94, v183);
      sub_100007C5C(v111, v513);
      sub_10001E120(v513, v94, v184);
      sub_10000EA04(v513, &qword_1008DCC60, &qword_1006DEBC0);
      sub_10000EA04(v94, &qword_1008DCC58, &unk_1006D5620);
      v185 = v499;
      sub_10001B104(v173 + v499[7], v180 + v179[7], &qword_1008DC808, &unk_1006D4FD0);
      LOBYTE(v185) = *(v173 + v185[9]);
      v186 = type metadata accessor for GeometryProxy();
      v187 = v359;
      (*(*(v186 - 8) + 56))(v359, 1, 1, v186);
      *v180 = swift_getKeyPath();
      sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
      swift_storeEnumTagMultiPayload();
      *(v180 + v179[6]) = v184;
      *(v180 + v179[8]) = v185;
      sub_10001B104(v187, v360, &unk_1008DC740, &qword_1006D4F00);
      State.init(wrappedValue:)();
      sub_10000EA04(v187, &unk_1008DC740, &qword_1006D4F00);
      sub_100053C78(v408, type metadata accessor for AwardsCard);
      sub_1000523E8(v180, v181, type metadata accessor for AwardsCardView);
      v188 = 0;
    }

    else
    {
      v188 = 1;
      v177(v174, 1, 1, v175);
      sub_10000EA04(v174, &qword_1008DCFD0, &qword_1006D5858);
      v181 = v411;
      v179 = v410;
      v182 = v409;
    }

    (*(v182 + 56))(v181, v188, 1, v179);
    v189 = &qword_1008DCDC8;
    v190 = &qword_1006D56F0;
    sub_10001B104(v181, v427, &qword_1008DCDC8, &qword_1006D56F0);
    swift_storeEnumTagMultiPayload();
    sub_10006BEE4();
    sub_10006BE30();
    v325 = v431;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v325, v444, &qword_1008DCDA0, &qword_1006D56E0);
    swift_storeEnumTagMultiPayload();
    sub_10006BF98();
    sub_10006C3F8();
    v326 = v442;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v325, &qword_1008DCDA0, &qword_1006D56E0);
    sub_10001B104(v326, v493, &qword_1008DCD48, &qword_1006D56C0);
    swift_storeEnumTagMultiPayload();
    sub_10006C528();
    sub_10006C614();
    v327 = v494;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v326, &qword_1008DCD48, &qword_1006D56C0);
    sub_10001B104(v327, v511, &qword_1008DCD38, &qword_1006D56B8);
    swift_storeEnumTagMultiPayload();
    sub_10005436C();
    sub_1000542E0();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v327, &qword_1008DCD38, &qword_1006D56B8);
    v192 = v181;
LABEL_25:
    v193 = v189;
    v194 = v190;
    return sub_10000EA04(v192, v193, v194);
  }

  if (!(v114 | v115))
  {
    sub_100007C5C(v111, v513);
    sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
    v220 = swift_dynamicCast();
    v221 = *(v103 + 56);
    if (v220)
    {
      v221(v101, 0, 1, v102);
      sub_1000523E8(v101, v108, type metadata accessor for ActivityRingsCard);
      sub_100051EE4(v108, v105, type metadata accessor for ActivityRingsCard);
      sub_10001B104(v500 + v499[7], v513, &qword_1008DC808, &unk_1006D4FD0);
      sub_10005491C(v399);
      if (qword_1008DAB08 != -1)
      {
        swift_once();
      }

      v222 = *&qword_100925958;
      sub_10005491C(v94);
      (*(v452 + 56))(v94, 0, 1, v451);
      v223 = sub_10001DB1C(v111, v94, v222);
      sub_100007C5C(v111, &v512);
      sub_10001E120(&v512, v94, v223);
      sub_10000EA04(&v512, &qword_1008DCC60, &qword_1006DEBC0);
      sub_10000EA04(v94, &qword_1008DCC58, &unk_1006D5620);
      v224 = swift_getKeyPath();
      v225 = v400;
      *v400 = v224;
      sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
      swift_storeEnumTagMultiPayload();
      v226 = v401;
      sub_100051EE4(v105, v225 + *(v401 + 24), type metadata accessor for ActivityRingsCard);
      sub_10001B104(v513, v225 + v226[7], &qword_1008DC808, &unk_1006D4FD0);
      v227 = (v225 + v226[8]);
      type metadata accessor for DashboardCardCellViewCache(0);
      sub_10006D128(&qword_1008DD018, type metadata accessor for DashboardCardCellViewCache, &unk_1006DB780);

      v228 = ObservedObject.init(wrappedValue:)();
      v230 = v229;
      sub_10000EA04(v513, &qword_1008DC808, &unk_1006D4FD0);
      sub_100053C78(v105, type metadata accessor for ActivityRingsCard);
      v231 = v226;
      sub_100053C78(v108, type metadata accessor for ActivityRingsCard);
      *v227 = v228;
      v227[1] = v230;
      v232 = v451;
      *(v225 + v226[9]) = v223;
      v233 = (v225 + v226[10]);
      v506 = xmmword_1006D5580;
      *v233 = xmmword_1006D5580;
      v233[1] = xmmword_1006D4E50;
      v505 = xmmword_1006D4E50;
      v234 = v399;
      v235 = (*(v452 + 88))(v399, v232);
      v236 = 0;
      if (v235 == enum case for DynamicTypeSize.xSmall(_:))
      {
        v237 = v511;
        v158 = v406;
      }

      else
      {
        v237 = v511;
        v158 = v406;
        if (v235 != enum case for DynamicTypeSize.small(_:) && v235 != enum case for DynamicTypeSize.medium(_:) && v235 != enum case for DynamicTypeSize.large(_:))
        {
          v236 = 1;
          if (v235 != enum case for DynamicTypeSize.xLarge(_:) && v235 != enum case for DynamicTypeSize.xxLarge(_:) && v235 != enum case for DynamicTypeSize.xxxLarge(_:))
          {
            v236 = 2;
            if (v235 != enum case for DynamicTypeSize.accessibility1(_:) && v235 != enum case for DynamicTypeSize.accessibility2(_:) && v235 != enum case for DynamicTypeSize.accessibility3(_:) && v235 != enum case for DynamicTypeSize.accessibility4(_:) && v235 != enum case for DynamicTypeSize.accessibility5(_:))
            {
              (*(v452 + 8))(v234, v232);
              v236 = 1;
            }
          }
        }
      }

      v344 = v400;
      v345 = (v400 + *(v231 + 20));
      *v345 = v236;
      v345[1] = v223;
      v346 = v505;
      *(v345 + 1) = v506;
      *(v345 + 2) = v346;
      v345[6] = 0.0;
      v347 = v352;
      sub_1000523E8(v344, v352, type metadata accessor for ActivityRingsCardView);
      sub_1000523E8(v347, v158, type metadata accessor for ActivityRingsCardView);
      v333 = 0;
    }

    else
    {
      v333 = 1;
      v221(v101, 1, 1, v102);
      sub_10000EA04(v101, &qword_1008DD010, &qword_1006D5898);
      v237 = v511;
      v158 = v406;
      v231 = v401;
    }

    (*(v377 + 56))(v158, v333, 1, v231);
    v189 = &qword_1008DCD68;
    v190 = &qword_1006D56D0;
    sub_10001B104(v158, v429, &qword_1008DCD68, &qword_1006D56D0);
    swift_storeEnumTagMultiPayload();
    sub_10007108C();
    sub_100070EEC();
    v348 = v432;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v348, v444, &qword_1008DCD58, &qword_1006D56C8);
    swift_storeEnumTagMultiPayload();
    sub_10006BF98();
    sub_10006C3F8();
    v349 = v442;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v348, &qword_1008DCD58, &qword_1006D56C8);
    sub_10001B104(v349, v493, &qword_1008DCD48, &qword_1006D56C0);
    swift_storeEnumTagMultiPayload();
    sub_10006C528();
    sub_10006C614();
    v350 = v494;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v349, &qword_1008DCD48, &qword_1006D56C0);
    sub_10001B104(v350, v237, &qword_1008DCD38, &qword_1006D56B8);
    swift_storeEnumTagMultiPayload();
    sub_10005436C();
    sub_1000542E0();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v350, &qword_1008DCD38, &qword_1006D56B8);
    goto LABEL_24;
  }

  sub_100007C5C(v111, v513);
  sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
  v291 = v375;
  v292 = v376;
  v293 = swift_dynamicCast();
  v294 = *(v374 + 56);
  if (v293)
  {
    v294(v291, 0, 1, v292);
    v295 = v353;
    sub_1000523E8(v291, v353, type metadata accessor for LoadCard);
    v296 = CardView;
    v297 = v356;
    sub_100051EE4(v295, v356 + *(CardView + 20), type metadata accessor for LoadCard);
    sub_10001B104(v500 + v499[7], v297 + *(v296 + 24), &qword_1008DC808, &unk_1006D4FD0);
    *v297 = swift_getKeyPath();
    sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
    swift_storeEnumTagMultiPayload();
    v298 = v297 + *(v296 + 28);
    type metadata accessor for BalanceDataProvider(0);
    sub_10006D128(&qword_1008DCD90, type metadata accessor for BalanceDataProvider, &unk_1006DBB08);
    *v298 = Environment.init<A>(_:)();
    v298[8] = v299 & 1;
    sub_10006D128(&qword_1008DCD88, type metadata accessor for LoadCardView, &unk_1007013A8);
    v300 = v355;
    View.environment<A>(_:)();
    sub_100053C78(v297, type metadata accessor for LoadCardView);
    v301 = v404;
    v302 = v439;
    v303 = v405;
    (*(v404 + 32))(v439, v300, v405);
    (*(v301 + 56))(v302, 0, 1, v303);
    sub_100053C78(v295, type metadata accessor for LoadCard);
  }

  else
  {
    v294(v291, 1, 1, v292);
    sub_10000EA04(v291, &qword_1008DCFE8, &qword_1006D5870);
    v302 = v439;
    (*(v404 + 56))(v439, 1, 1, v405);
  }

  v337 = v511;
  sub_10001B104(v302, v429, &qword_1008DCD80, &qword_1006D56D8);
  swift_storeEnumTagMultiPayload();
  sub_10007108C();
  sub_100070EEC();
  v338 = v432;
  _ConditionalContent<>.init(storage:)();
  sub_10001B104(v338, v444, &qword_1008DCD58, &qword_1006D56C8);
  swift_storeEnumTagMultiPayload();
  sub_10006BF98();
  sub_10006C3F8();
  v339 = v442;
  _ConditionalContent<>.init(storage:)();
  sub_10000EA04(v338, &qword_1008DCD58, &qword_1006D56C8);
  sub_10001B104(v339, v493, &qword_1008DCD48, &qword_1006D56C0);
  swift_storeEnumTagMultiPayload();
  sub_10006C528();
  sub_10006C614();
  v340 = v494;
  _ConditionalContent<>.init(storage:)();
  sub_10000EA04(v339, &qword_1008DCD48, &qword_1006D56C0);
  sub_10001B104(v340, v337, &qword_1008DCD38, &qword_1006D56B8);
  swift_storeEnumTagMultiPayload();
  sub_10005436C();
  sub_1000542E0();
  _ConditionalContent<>.init(storage:)();
  sub_10000EA04(v340, &qword_1008DCD38, &qword_1006D56B8);
  return sub_10000EA04(v439, &qword_1008DCD80, &qword_1006D56D8);
}

uint64_t sub_100051EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100051F4C@<X0>(void *a1@<X8>)
{
  v3 = sub_100140278(&qword_1008DCC58, &unk_1006D5620);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4 - 8];
  sub_10015F17C(v1, a1);
  if (qword_1008DAB08 != -1)
  {
    swift_once();
  }

  v6 = *&qword_100925958;
  v7 = *(type metadata accessor for DashboardCardView(0) + 20);
  sub_10005491C(v5);
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 0, 1, v8);
  v10 = sub_10001DB1C((v1 + v7), v5, v6);
  sub_100007C5C(v1 + v7, v22);
  sub_10001E120(v22, v5, v10);
  sub_10000EA04(v22, &qword_1008DCC60, &qword_1006DEBC0);
  sub_10000EA04(v5, &qword_1008DCC58, &unk_1006D5620);
  v11 = (a1 + *(sub_100140278(&qword_1008DCC68, &qword_1006D5630) + 36));
  *v11 = 1;
  v11[1] = v10;
  *(v11 + 16) = 0;
  sub_10005491C(v5);
  v9(v5, 0, 1, v8);
  v12 = sub_10001DB1C((v1 + v7), v5, v6);
  sub_100007C5C(v1 + v7, v22);
  v13 = sub_10001E120(v22, v5, v12);
  LOBYTE(v8) = v14;
  sub_10000EA04(v22, &qword_1008DCC60, &qword_1006DEBC0);
  sub_10000EA04(v5, &qword_1008DCC58, &unk_1006D5620);
  v15 = a1 + *(sub_100140278(&qword_1008DCC70, &qword_1006D5638) + 36);
  *v15 = 1;
  *(v15 + 1) = v13;
  v15[16] = v8 & 1;
  v16 = static Alignment.center.getter();
  v18 = v17;
  result = sub_100140278(&qword_1008DCC78, &qword_1006D5640);
  v20 = (a1 + *(result + 36));
  *v20 = v16;
  v20[1] = v18;
  return result;
}

uint64_t sub_1000521F8()
{
  v1 = sub_100140278(&qword_1008DCD18, &qword_1006D56A8);
  __chkstk_darwin(v1);
  v3 = v15 - v2;
  sub_10004C5EC(v0, (v15 - v2));
  sub_100140278(&qword_1008DCF58, &qword_1006D7B40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D1F70;
  *(v4 + 32) = static FitnessAccessibilityIdentifier.SummaryView.base.getter();
  *(v4 + 40) = v5;
  v17 = 0;
  v18 = 0xE000000000000000;
  v6 = (v0 + *(type metadata accessor for DashboardCardView(0) + 20));
  v7 = v6[3];
  v8 = v6[4];
  sub_1000066AC(v6, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v11 = v10;
  LOBYTE(v8) = v12;
  v15[1] = v9;
  v15[2] = v10;
  v16 = v12;
  _print_unlocked<A, B>(_:_:)();
  sub_10001D4F8(v9, v11, v8);
  v13 = v18;
  *(v4 + 48) = v17;
  *(v4 + 56) = v13;
  static FitnessAccessibilityIdentifier.build(_:)();

  sub_1000543F8(&qword_1008DCD10, &qword_1008DCD18, &qword_1006D56A8, sub_100161448);
  View.accessibilityIdentifier(_:)();

  return sub_10000EA04(v3, &qword_1008DCD18, &qword_1006D56A8);
}

uint64_t sub_1000523E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for QuickStartWorkoutCardView(uint64_t a1)
{
  result = qword_1008E77A8;
  if (!qword_1008E77A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MetricCard(uint64_t a1)
{
  result = qword_1008F4ED8;
  if (!qword_1008F4ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10005250C()
{
  result = qword_1008DC818;
  if (!qword_1008DC818)
  {
    sub_100141EEC(&qword_1008DC810, &unk_1006D4FE0);
    sub_10015C4FC(&qword_1008DC820, &qword_1008DC828, &qword_1006D57A0, sub_10015C580);
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840, &qword_1006D4FF0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC818);
  }

  return result;
}

uint64_t type metadata accessor for AwardsCard(uint64_t a1)
{
  result = qword_1008E80B8;
  if (!qword_1008E80B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FriendsHighlightCard(uint64_t a1)
{
  result = qword_1008EE3C0;
  if (!qword_1008EE3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TrendsCard(uint64_t a1)
{
  result = qword_1008F2F60;
  if (!qword_1008F2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FitnessPlusSampleContentView(uint64_t a1)
{
  result = qword_1008EAB38;
  if (!qword_1008EAB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FitnessPlusUpNextView(uint64_t a1)
{
  result = qword_1008EEFE0;
  if (!qword_1008EEFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AwardsCardView(uint64_t a1)
{
  result = qword_1008DC710;
  if (!qword_1008DC710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FitnessPlusSampleContentCard(uint64_t a1)
{
  result = qword_1008E08F0;
  if (!qword_1008E08F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FriendsHighlightCardView(uint64_t a1)
{
  result = qword_1008F65F8;
  if (!qword_1008F65F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FriendCardView(uint64_t a1)
{
  result = qword_1008E3BE0;
  if (!qword_1008E3BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LoadCardView(uint64_t a1)
{
  result = qword_1008F6AC8;
  if (!qword_1008F6AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for HistoryItemsCardView(uint64_t a1)
{
  result = qword_1008E2F18;
  if (!qword_1008E2F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100052954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1000529D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100140278(&unk_1008EE8E0, qword_1006E2D40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100052B3C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttributedString();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100140278(&unk_1008EE8E0, qword_1006E2D40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t type metadata accessor for ActivitySharingFriendListItem(uint64_t a1)
{
  result = qword_1008E4A00;
  if (!qword_1008E4A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ActivityRingsCardView(uint64_t a1)
{
  result = qword_1008EF218;
  if (!qword_1008EF218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100052D18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CatalogTipSectionItem(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100052DD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100140278(&qword_1008E4E80, &qword_100700A40);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100052EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100140278(&unk_1008E4D90, &unk_1006D8F40);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v73 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v7;
  __chkstk_darwin(v8);
  v74 = &v69 - v9;
  v10 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v75 = &v69 - v11;
  v12 = type metadata accessor for Artwork();
  v88 = *(v12 - 8);
  v89 = v12;
  __chkstk_darwin(v12);
  v85 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008EF830, &qword_100703120);
  v82 = *(v14 - 8);
  v83 = v14;
  __chkstk_darwin(v14);
  v81 = &v69 - v15;
  v16 = type metadata accessor for CatalogTipSectionItem(0);
  __chkstk_darwin(v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008E4E80, &qword_100700A40);
  __chkstk_darwin(v19 - 8);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  v25 = sub_100140278(&unk_1008EAF20, &unk_1006E33E0);
  __chkstk_darwin(v25 - 8);
  v80 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v69 - v28;
  *a3 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for CatalogTipCardView(0);
  sub_100053AC0(a1, a3 + *(v30 + 20), type metadata accessor for CatalogTipCard);
  v84 = v30;
  v31 = *(v30 + 24);
  v86 = a3;
  v87 = a2;
  sub_10001B104(a2, a3 + v31, &qword_1008DC808, &unk_1006D4FD0);
  v32 = *(type metadata accessor for CatalogTipCard(0) + 36);
  v90 = a1;
  sub_10001B104(a1 + v32, v24, &qword_1008E4E80, &qword_100700A40);
  v33 = type metadata accessor for CatalogTipSection(0);
  v34 = *(*(v33 - 8) + 48);
  v35 = v34(v24, 1, v33);
  v71 = v18;
  if (v35 == 1)
  {
    sub_10000EA04(v24, &qword_1008E4E80, &qword_100700A40);
    v36 = v88;
    v37 = v29;
  }

  else
  {
    sub_100053AC0(&v24[*(v33 + 36)], v18, type metadata accessor for CatalogTipSectionItem);
    sub_100053C18(v24, type metadata accessor for CatalogTipSection);
    v38 = *(v16 + 20);
    v70 = v21;
    v39 = v88;
    (*(v88 + 16))(v29, &v18[v38], v89);
    sub_100053C18(v18, type metadata accessor for CatalogTipSectionItem);
    v36 = v39;
    v37 = v29;
    v21 = v70;
  }

  v40 = v37;
  (*(v36 + 56))();
  sub_10001B104(v90 + v32, v21, &qword_1008E4E80, &qword_100700A40);
  if (v34(v21, 1, v33) == 1)
  {
    sub_10000EA04(v21, &qword_1008E4E80, &qword_100700A40);
    static CropCode.standard.getter();
  }

  else
  {
    v41 = v71;
    sub_100053AC0(&v21[*(v33 + 36)], v71, type metadata accessor for CatalogTipSectionItem);
    sub_100053C18(v21, type metadata accessor for CatalogTipSection);

    sub_100053C18(v41, type metadata accessor for CatalogTipSectionItem);
  }

  v42 = type metadata accessor for TipArtworkImageLoader(0);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtC10FitnessApp21TipArtworkImageLoader__image;
  v91[0] = 0;
  sub_100140278(&qword_1008DC850, &qword_1006D5030);
  v45 = v81;
  Published.init(initialValue:)();
  (*(v82 + 32))(v43 + v44, v45, v83);
  sub_100140278(&unk_1008F13B0, &qword_1006EE0B0);
  Dependencies.resolve<A>(failureHandler:)();
  v46 = v80;
  sub_10001B104(v40, v80, &unk_1008EAF20, &unk_1006E33E0);
  v48 = v88;
  v47 = v89;
  if ((*(v88 + 48))(v46, 1, v89) == 1)
  {

    sub_10000EA04(v40, &unk_1008EAF20, &unk_1006E33E0);
    v49 = v46;
  }

  else
  {
    (*(v48 + 32))(v85, v46, v47);
    sub_1000066AC(v91, v91[3]);
    v82 = v40;
    v50 = v74;
    dispatch thunk of ArtworkImageLoading.fetchArtwork(_:size:cropCode:)();

    v51 = swift_allocObject();
    *(v51 + 16) = sub_1006741E4;
    *(v51 + 24) = v43;
    v53 = v76;
    v52 = v77;
    v54 = *(v76 + 16);
    v83 = v42;
    v55 = v73;
    v54(v73, v50, v77);
    v56 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v57 = (v72 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    (*(v53 + 32))(v58 + v56, v55, v52);
    v59 = (v58 + v57);
    *v59 = sub_10042B55C;
    v59[1] = v51;

    v60 = v75;
    Promise.init(asyncOperation:)();
    (*(v53 + 8))(v50, v52);
    v61 = v79;
    v62 = Promise.operation.getter();
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    v62(sub_100173A1C, v63);

    (*(v78 + 8))(v60, v61);
    (*(v48 + 8))(v85, v89);
    v49 = v82;
  }

  sub_10000EA04(v49, &unk_1008EAF20, &unk_1006E33E0);
  sub_100005A40(v91);
  v64 = (v86 + *(v84 + 28));
  sub_100053BC0();
  v65 = ObservedObject.init(wrappedValue:)();
  v67 = v66;
  sub_10000EA04(v87, &qword_1008DC808, &unk_1006D4FD0);
  result = sub_100053C18(v90, type metadata accessor for CatalogTipCard);
  *v64 = v65;
  v64[1] = v67;
  return result;
}

uint64_t sub_100053950()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053988()
{
  v1 = sub_100140278(&unk_1008E4D90, &unk_1006D8F40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100053A34()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for CatalogTipSectionItem(uint64_t a1)
{
  result = qword_1008EE070;
  if (!qword_1008EE070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100053AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CatalogTipSection(uint64_t a1)
{
  result = qword_1008E10A8;
  if (!qword_1008E10A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TipArtworkImageLoader(uint64_t a1)
{
  result = qword_1008F83C8;
  if (!qword_1008F83C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100053BC0()
{
  result = qword_1008F81C8;
  if (!qword_1008F81C8)
  {
    type metadata accessor for TipArtworkImageLoader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F81C8);
  }

  return result;
}

uint64_t sub_100053C18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100053C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100053CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100140278(&qword_1008DC6A8, qword_1006D5590);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CatalogTipCard(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100053E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8, qword_1006D5590);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CatalogTipCard(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100053F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100140278(&qword_1008E4E80, &qword_100700A40);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

unint64_t sub_100054060()
{
  result = qword_1008DCEA0;
  if (!qword_1008DCEA0)
  {
    sub_100141EEC(&qword_1008DCEA8, &qword_1006D5748);
    sub_10006D128(&qword_1008DCEB0, type metadata accessor for TrendsCardView, &unk_100702348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCEA0);
  }

  return result;
}

unint64_t sub_100054114()
{
  result = qword_1008DCE88;
  if (!qword_1008DCE88)
  {
    sub_100141EEC(&qword_1008DCE90, &qword_1006D5740);
    sub_10006D128(&qword_1008DCE98, type metadata accessor for CatalogTipCardView, &unk_100703190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCE88);
  }

  return result;
}

unint64_t sub_1000541C8()
{
  result = qword_1008DCEB8;
  if (!qword_1008DCEB8)
  {
    sub_100141EEC(&qword_1008DCEC0, &qword_1006D5750);
    sub_100059C44();
    sub_100059B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCEB8);
  }

  return result;
}

unint64_t sub_100054254()
{
  result = qword_1008DCE78;
  if (!qword_1008DCE78)
  {
    sub_100141EEC(&qword_1008DCE80, &qword_1006D5738);
    sub_100054114();
    sub_100054060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCE78);
  }

  return result;
}

unint64_t sub_1000542E0()
{
  result = qword_1008DCE68;
  if (!qword_1008DCE68)
  {
    sub_100141EEC(&qword_1008DCE70, &qword_1006D5730);
    sub_100054254();
    sub_1000541C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCE68);
  }

  return result;
}

unint64_t sub_10005436C()
{
  result = qword_1008DCD30;
  if (!qword_1008DCD30)
  {
    sub_100141EEC(&qword_1008DCD38, &qword_1006D56B8);
    sub_10006C528();
    sub_10006C614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCD30);
  }

  return result;
}

uint64_t sub_1000543F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100054474()
{
  result = qword_1008DCD00;
  if (!qword_1008DCD00)
  {
    sub_100141EEC(&qword_1008DCD08, &qword_1006D56A0);
    sub_1000543F8(&qword_1008DCD10, &qword_1008DCD18, &qword_1006D56A8, sub_100161448);
    sub_10006D128(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCD00);
  }

  return result;
}

uint64_t sub_10005455C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000545E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100054664()
{
  result = qword_1008DCCE8;
  if (!qword_1008DCCE8)
  {
    sub_100141EEC(&qword_1008DCC80, &qword_1006D5648);
    sub_10014A6B0(&qword_1008DCCF0, &qword_1008DCCF8, &qword_1006D5698, &protocol conformance descriptor for VStack<A>);
    sub_100054474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCCE8);
  }

  return result;
}

uint64_t sub_10005471C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_10001B104(v8, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

__n128 initializeBufferWithCopyOfBuffer for MetricsDataProvider.MetricDataCacheEntry(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void *ConditionalFrameHeightModifier.body(content:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_100140278(&qword_1008F1D80, &qword_1006F8210);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = sub_100140278(&qword_1008F1D88, &qword_1006F8218);
  __chkstk_darwin(v11);
  v13 = v19 - v12;
  if (a2 & 1) == 0 || (a4)
  {
    v18 = sub_100140278(&qword_1008F1D90, &qword_1006F8220);
    (*(*(v18 - 8) + 16))(v10, a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_10052B800();
    sub_100054C1C(&qword_1008F1DA0, &qword_1008F1D90, &qword_1006F8220);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v14 = sub_100140278(&qword_1008F1D90, &qword_1006F8220);
    (*(*(v14 - 8) + 16))(v13, a1, v14);
    v15 = &v13[*(v11 + 36)];
    v16 = v19[1];
    *v15 = v19[0];
    *(v15 + 1) = v16;
    *(v15 + 2) = v19[2];
    sub_10001B104(v13, v10, &qword_1008F1D88, &qword_1006F8218);
    swift_storeEnumTagMultiPayload();
    sub_10052B800();
    sub_100054C1C(&qword_1008F1DA0, &qword_1008F1D90, &qword_1006F8220);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v13, &qword_1008F1D88, &qword_1006F8218);
  }
}

uint64_t sub_100054C1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100054C8C(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        return a4 == a1;
      }
    }

    else if (a1 > 4)
    {
      if (a1 <= 6)
      {
        if (a1 ^ 5 | a2)
        {
          if (a6 == 3 && a4 == 6 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 5 && !a5)
        {
          return 1;
        }
      }

      else if (a1 ^ 7 | a2)
      {
        if (a1 ^ 8 | a2)
        {
          if (a6 == 3 && a4 == 9 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 3 && a4 == 8 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 7 && !a5)
      {
        return 1;
      }
    }

    else if (a1 <= 1)
    {
      if (a1 | a2)
      {
        if (a6 == 3 && a4 == 1 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && !(a5 | a4))
      {
        return 1;
      }
    }

    else if (a1 ^ 2 | a2)
    {
      if (a1 ^ 3 | a2)
      {
        if (a6 == 3 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 3 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && a4 == 2 && !a5)
    {
      return 1;
    }

    return 0;
  }

  if (!a3)
  {
    if (!a6)
    {
      return a4 == a1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_100054EC8()
{
  result = qword_1008F82E0;
  if (!qword_1008F82E0)
  {
    sub_100141EEC(&qword_1008F8278, &qword_1007031E8);
    sub_100141EEC(&qword_1008F8280, &qword_1007031F0);
    sub_1000564D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F82E0);
  }

  return result;
}

unint64_t sub_100054F90()
{
  result = qword_1008F82B0;
  if (!qword_1008F82B0)
  {
    sub_100141EEC(&qword_1008F82B8, &qword_100703208);
    sub_10014A6B0(&qword_1008F82C0, &qword_1008F82C8, &qword_100703210, &protocol conformance descriptor for HStack<A>);
    sub_10014A6B0(&qword_1008F82D0, &qword_1008F82D8, &unk_100703218, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F82B0);
  }

  return result;
}

uint64_t sub_100055074@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TipArtworkImageLoader(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void *sub_1000550B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for CatalogTipCardView(0) + 20);
  v8 = type metadata accessor for CatalogTipCard(0);
  v9 = v7 + *(v8 + 20);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  sub_10005491C(v6);
  LODWORD(v10) = sub_10001DEC8(v6, v10, v11, v12);
  (*(v4 + 8))(v6, v3);
  if (v10 == 2)
  {
    v13 = static HorizontalAlignment.leading.getter();
    v21[0] = 0;
    sub_100672D24(a1, v26);
    memcpy(v24, v26, 0x121uLL);
    memcpy(v25, v26, 0x121uLL);
    sub_10001B104(v24, v22, &qword_1008F82F8, &qword_100703238);
    sub_10000EA04(v25, &qword_1008F82F8, &qword_100703238);
    memcpy(&v19[7], v24, 0x121uLL);
    v22[0] = v13;
    v22[1] = 0;
    LOBYTE(v22[2]) = v21[0];
    memcpy(&v22[2] + 1, v19, 0x128uLL);
    sub_1006744DC(v22);
  }

  else
  {
    if (*(v7 + *(v8 + 24)) == 1)
    {
      v14 = static VerticalAlignment.top.getter();
      v25[0] = 0;
      sub_100673424(a1, v26);
      memcpy(v24, v26, 0x199uLL);
      memcpy(v21, v26, 0x199uLL);
      sub_10001B104(v24, v22, &qword_1008F82F0, &qword_100703230);
      sub_10000EA04(v21, &qword_1008F82F0, &qword_100703230);
      memcpy(&v20[7], v24, 0x199uLL);
      v26[0] = v14;
      v26[1] = 0;
      LOBYTE(v26[2]) = v25[0];
      memcpy(&v26[2] + 1, v20, 0x1A0uLL);
      sub_1006744D4(v26);
    }

    else
    {
      v15 = static HorizontalAlignment.leading.getter();
      v25[0] = 0;
      sub_100055584(a1, v26);
      memcpy(v24, v26, 0x1F1uLL);
      memcpy(v21, v26, 0x1F1uLL);
      sub_10001B104(v24, v22, &qword_1008F82E8, &qword_100703228);
      sub_10000EA04(v21, &qword_1008F82E8, &qword_100703228);
      memcpy(&v23[7], v24, 0x1F1uLL);
      v26[0] = v15;
      v26[1] = 0;
      LOBYTE(v26[2]) = v25[0];
      memcpy(&v26[2] + 1, v23, 0x1F8uLL);
      sub_100057590(v26);
    }

    memcpy(v22, v26, 0x20AuLL);
    sub_100140278(&qword_1008F82C8, &qword_100703210);
    sub_100140278(&qword_1008F82D8, &unk_100703218);
    sub_10014A6B0(&qword_1008F82C0, &qword_1008F82C8, &qword_100703210, &protocol conformance descriptor for HStack<A>);
    sub_10014A6B0(&qword_1008F82D0, &qword_1008F82D8, &unk_100703218, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    memcpy(v22, v25, 0x20AuLL);
    sub_100055D8C(v22);
  }

  memcpy(v21, v22, 0x20BuLL);
  sub_100140278(&qword_1008F82A8, &qword_100703200);
  sub_100140278(&qword_1008F82B8, &qword_100703208);
  sub_10014A6B0(&qword_1008F82A0, &qword_1008F82A8, &qword_100703200, &protocol conformance descriptor for VStack<A>);
  sub_100054F90();
  _ConditionalContent<>.init(storage:)();
  return memcpy(v18, v26, 0x20BuLL);
}

uint64_t sub_100055584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  sub_100055AD8(&ShelfLockupAttributedTagStrings.title.getter);
  v7 = Text.init(_:)();
  v9 = v8;
  v11 = v10;
  static Font.callout.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  Font.leading(_:)();

  (*(v3 + 8))(v5, v2);
  v12 = Text.font(_:)();
  v14 = v13;
  LOBYTE(v5) = v15;

  sub_10004642C(v7, v9, v11 & 1);

  static Font.Weight.semibold.getter();
  v16 = Text.fontWeight(_:)();
  v41 = v16;
  v42 = v17;
  v19 = v18;
  v21 = v20;
  v22 = v17;
  sub_10004642C(v12, v14, v5 & 1);

  KeyPath = swift_getKeyPath();
  v40 = KeyPath;
  LOBYTE(v5) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v21 & 1;
  LOBYTE(v82[0]) = v21 & 1;
  LOBYTE(v74[0]) = 0;
  LOBYTE(v45[0]) = 0;
  v33 = static VerticalAlignment.center.getter();
  LOBYTE(v45[0]) = 0;
  sub_100056DF4(v43, v82);
  memcpy(v65, v82, 0x161uLL);
  memcpy(v66, v82, 0x161uLL);
  sub_10001B104(v65, v74, &qword_1008F8378, &unk_100703320);
  sub_10000EA04(v66, &qword_1008F8378, &unk_100703320);
  memcpy(&v61[7], v65, 0x161uLL);
  LOBYTE(v3) = v45[0];
  *&v67 = v16;
  *(&v67 + 1) = v19;
  LOBYTE(v68) = v32;
  *(&v68 + 1) = *v64;
  DWORD1(v68) = *&v64[3];
  *(&v68 + 1) = v22;
  *&v69 = KeyPath;
  *(&v69 + 1) = 3;
  LOBYTE(v70) = 0;
  DWORD1(v70) = *&v63[3];
  *(&v70 + 1) = *v63;
  BYTE8(v70) = v5;
  HIDWORD(v70) = *&v62[3];
  *(&v70 + 9) = *v62;
  *&v71 = v25;
  *(&v71 + 1) = v27;
  *&v72 = v29;
  *(&v72 + 1) = v31;
  v73 = 0;
  LOBYTE(v81) = 0;
  v79 = v71;
  v80 = v72;
  v77 = v69;
  v78 = v70;
  v75 = v67;
  v76 = v68;
  v60[384] = 0;
  v74[0] = v33;
  v74[1] = 0;
  LOBYTE(v74[2]) = v45[0];
  memcpy(&v74[2] + 1, v61, 0x168uLL);
  memcpy(&v60[7], v74, 0x179uLL);
  v34 = v72;
  v35 = v44;
  *(v44 + 64) = v71;
  *(v35 + 80) = v34;
  v36 = v81;
  v37 = v76;
  *v35 = v75;
  *(v35 + 16) = v37;
  v38 = v78;
  *(v35 + 32) = v77;
  *(v35 + 48) = v38;
  *(v35 + 96) = v36;
  *(v35 + 104) = 0x4020000000000000;
  *(v35 + 112) = 0;
  memcpy((v35 + 113), v60, 0x180uLL);
  v82[0] = v33;
  v82[1] = 0;
  LOBYTE(v82[2]) = v3;
  memcpy(&v82[2] + 1, v61, 0x168uLL);
  sub_10001B104(&v67, v45, &qword_1008EE300, &qword_1006F2360);
  sub_10001B104(v74, v45, &qword_1008F8380, &qword_100703330);
  sub_10000EA04(v82, &qword_1008F8380, &qword_100703330);
  v45[0] = v41;
  v45[1] = v19;
  v46 = v32;
  *v47 = *v64;
  *&v47[3] = *&v64[3];
  v48 = v42;
  v49 = v40;
  v50 = 3;
  v51 = 0;
  *v52 = *v63;
  *&v52[3] = *&v63[3];
  v53 = v5;
  *&v54[3] = *&v62[3];
  *v54 = *v62;
  v55 = v25;
  v56 = v27;
  v57 = v29;
  v58 = v31;
  v59 = 0;
  return sub_10000EA04(v45, &qword_1008EE300, &qword_1006F2360);
}

uint64_t sub_100055AD8(uint64_t (*a1)(uint64_t))
{
  v3 = type metadata accessor for ShelfLockupAttributedTagStrings();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CatalogTipSectionItem(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E4E80, &qword_100700A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = v1 + *(type metadata accessor for CatalogTipCardView(0) + 20);
  v14 = type metadata accessor for CatalogTipCard(0);
  sub_10001B104(v13 + *(v14 + 36), v12, &qword_1008E4E80, &qword_100700A40);
  v15 = type metadata accessor for CatalogTipSection(0);
  if ((*(*(v15 - 8) + 48))(v12, 1, v15) == 1)
  {
    sub_10000EA04(v12, &qword_1008E4E80, &qword_100700A40);
    [objc_allocWithZone(NSAttributedString) init];
  }

  else
  {
    sub_100053AC0(&v12[*(v15 + 36)], v9, type metadata accessor for CatalogTipSectionItem);
    sub_100053C18(v12, type metadata accessor for CatalogTipSection);
    (*(v4 + 16))(v6, v9, v3);
    v16 = sub_100053C18(v9, type metadata accessor for CatalogTipSectionItem);
    a1(v16);
    (*(v4 + 8))(v6, v3);
  }

  return AttributedString.init(_:)();
}

void sub_100055D98(uint64_t a1)
{
  sub_100055E7C();
  if (v1 <= 0x3F)
  {
    sub_100043AA4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100055E7C()
{
  if (!qword_1008F6F50)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F6F50);
    }
  }
}

uint64_t sub_100055EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for WorkoutBrowsingViewController(uint64_t a1)
{
  result = qword_1008EBAF8;
  if (!qword_1008EBAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for QuickStartWorkoutCard(uint64_t a1)
{
  result = qword_1008F16B0;
  if (!qword_1008F16B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DashboardCardView(uint64_t a1)
{
  result = qword_1008DCC00;
  if (!qword_1008DCC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CatalogTipCardView(uint64_t a1)
{
  result = qword_1008F8228;
  if (!qword_1008F8228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CatalogTipCard(uint64_t a1)
{
  result = qword_1008E7A18;
  if (!qword_1008E7A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FriendCard(uint64_t a1)
{
  result = qword_1008F5C00;
  if (!qword_1008F5C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MetricCardView(uint64_t a1)
{
  result = qword_1008F4C58;
  if (!qword_1008F4C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LoadCard(uint64_t a1)
{
  result = qword_1008F41F0;
  if (!qword_1008F41F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ConditionalFrameWidthModifier.body(content:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_100140278(&qword_1008F1DA8, &qword_1006F8228);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v11 = sub_100140278(&qword_1008F1DB0, &qword_1006F8230);
  __chkstk_darwin(v11);
  v13 = v19 - v12;
  if (a2 & 1) == 0 || (a4)
  {
    v18 = sub_100140278(&qword_1008F1DB8, &qword_1006F8238);
    (*(*(v18 - 8) + 16))(v10, a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_10052B8A4();
    sub_100054C1C(&qword_1008F1DC8, &qword_1008F1DB8, &qword_1006F8238);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v14 = sub_100140278(&qword_1008F1DB8, &qword_1006F8238);
    (*(*(v14 - 8) + 16))(v13, a1, v14);
    v15 = &v13[*(v11 + 36)];
    v16 = v19[1];
    *v15 = v19[0];
    *(v15 + 1) = v16;
    *(v15 + 2) = v19[2];
    sub_10001B104(v13, v10, &qword_1008F1DB0, &qword_1006F8230);
    swift_storeEnumTagMultiPayload();
    sub_10052B8A4();
    sub_100054C1C(&qword_1008F1DC8, &qword_1008F1DB8, &qword_1006F8238);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v13, &qword_1008F1DB0, &qword_1006F8230);
  }
}

uint64_t sub_10005646C()
{
  sub_100141EEC(&qword_1008F8278, &qword_1007031E8);
  sub_100054EC8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000564D0()
{
  result = qword_1008F8288;
  if (!qword_1008F8288)
  {
    sub_100141EEC(&qword_1008F8280, &qword_1007031F0);
    sub_100056554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8288);
  }

  return result;
}

unint64_t sub_100056554()
{
  result = qword_1008F8290;
  if (!qword_1008F8290)
  {
    sub_100141EEC(&qword_1008F8298, &qword_1007031F8);
    sub_10014A6B0(&qword_1008F82A0, &qword_1008F82A8, &qword_100703200, &protocol conformance descriptor for VStack<A>);
    sub_100054F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8290);
  }

  return result;
}

uint64_t sub_10005660C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = type metadata accessor for AccessibilityChildBehavior();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CatalogTipCardView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v20 = sub_100140278(&qword_1008F8270, &qword_1007031E0);
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v20 - v7;
  v9 = sub_100140278(&qword_1008F8278, &qword_1007031E8);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_1000550B8(v1, v25);
  sub_100053AC0(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CatalogTipCardView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_10005759C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_100140278(&qword_1008F8280, &qword_1007031F0);
  sub_1000564D0();
  View.onTapGesture(count:perform:)();

  memcpy(v26, v25, 0x20BuLL);
  sub_10000EA04(v26, &qword_1008F8280, &qword_1007031F0);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v6 + 32))(v11, v8, v20);
  v14 = &v11[*(v9 + 36)];
  v15 = v25[5];
  *(v14 + 4) = v25[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v25[6];
  v16 = v25[1];
  *v14 = v25[0];
  *(v14 + 1) = v16;
  v17 = v25[3];
  *(v14 + 2) = v25[2];
  *(v14 + 3) = v17;
  v18 = v21;
  static AccessibilityChildBehavior.combine.getter();
  sub_100054EC8();
  View.accessibilityElement(children:)();
  (*(v22 + 8))(v18, v24);
  return sub_100056D8C(v11);
}

uint64_t sub_1000569D8()
{
  v1 = type metadata accessor for CatalogTipCardView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(v1 + 20);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CatalogTipCard(0);
  sub_10001D4F8(*(v7 + *(v9 + 20)), *(v7 + *(v9 + 20) + 8), *(v7 + *(v9 + 20) + 16));
  v10 = v7 + *(v9 + 36);
  v11 = type metadata accessor for CatalogTipSection(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v24 = v4;
    v25 = v1;
    v26 = v0;

    v12 = v10 + *(v11 + 36);
    v13 = type metadata accessor for ShelfLockupAttributedTagStrings();
    (*(*(v13 - 8) + 8))(v12, v13);
    v14 = type metadata accessor for CatalogTipSectionItem(0);
    v15 = v14[5];
    v16 = type metadata accessor for Artwork();
    v17 = *(v16 - 8);
    v23 = *(v17 + 8);
    v23(v12 + v15, v16);

    v18 = v14[8];
    if (!(*(v17 + 48))(v12 + v18, 1, v16))
    {
      v23(v12 + v18, v16);
    }

    v19 = v14[12];
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 8))(v12 + v19, v20);

    v1 = v25;
    v0 = v26;
    v3 = (v2 + 16) & ~v2;
    v4 = v24;
  }

  v21 = (v5 + *(v1 + 24));
  if (v21[3])
  {
    sub_100005A40(v21);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100056D8C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F8278, &qword_1007031E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056DF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for Font.Leading();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CatalogTipCardView(0);
  v42 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v77[0])
  {
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v55 = Image.resizable(capInsets:resizingMode:)();

    (*(v8 + 8))(v10, v7);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v105 = 1;
    v53 = v108;
    v54 = v107;
    v51 = v110;
    v52 = v109;
    v49 = v112;
    v50 = v111;
    v41 = 1;
    v11 = static Edge.Set.all.getter();
    v106 = 0;
    v48 = 0x4020000000000000;
    v46 = v11;
    v47 = 0x4000000000000000;
    v40 = 16777472;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v40 = 0;
    v41 = 0;
  }

  sub_100055AD8(&ShelfLockupAttributedTagStrings.subtitle.getter);
  v12 = Text.init(_:)();
  v36 = v12;
  v38 = v13;
  v15 = v14;
  v42 = v16;
  v39 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v37 = v15 & 1;
  v102 = v15 & 1;
  v101 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v103[55] = v116;
  *&v103[71] = v117;
  *&v103[87] = v118;
  *&v103[103] = v119;
  *&v103[7] = v113;
  *&v103[23] = v114;
  *&v103[39] = v115;
  static Font.caption.getter();
  v26 = v43;
  v25 = v44;
  (*(v43 + 104))(v5, enum case for Font.Leading.tight(_:), v44);
  v27 = v5;
  v28 = Font.leading(_:)();

  (*(v26 + 8))(v27, v25);
  KeyPath = swift_getKeyPath();
  v43 = KeyPath;
  LODWORD(v27) = static HierarchicalShapeStyle.secondary.getter();
  v30 = swift_getKeyPath();
  v104 = 0;
  v44 = v40 | v41;
  v61[0] = v55;
  v61[1] = 0;
  *&v62 = v40 | v41;
  *(&v62 + 1) = v54;
  *&v63 = v53;
  *(&v63 + 1) = v52;
  *&v64 = v51;
  *(&v64 + 1) = v50;
  *&v65 = v49;
  *(&v65 + 1) = v46;
  v66 = v47;
  v67 = 0;
  *&v68 = 0;
  *(&v68 + 1) = v48;
  v69 = 0;
  v58[112] = 0;
  *&v58[64] = v65;
  *&v58[80] = v47;
  *&v58[96] = v68;
  *v58 = v55;
  *&v58[16] = v62;
  *&v58[32] = v63;
  *&v58[48] = v64;
  *&v70 = v12;
  v31 = v38;
  *(&v70 + 1) = v38;
  v32 = v37;
  LOBYTE(v71) = v37;
  DWORD1(v71) = *&v60[3];
  *(&v71 + 1) = *v60;
  v33 = v42;
  *(&v71 + 1) = v42;
  LOBYTE(v12) = v39;
  LOBYTE(v72) = v39;
  DWORD1(v72) = *&v59[3];
  *(&v72 + 1) = *v59;
  *(&v72 + 1) = v18;
  *&v73 = v20;
  *(&v73 + 1) = v22;
  *&v74[0] = v24;
  BYTE8(v74[0]) = 0;
  *(&v74[3] + 9) = *&v103[48];
  *(&v74[2] + 9) = *&v103[32];
  *(&v74[1] + 9) = *&v103[16];
  *(v74 + 9) = *v103;
  *(&v74[7] + 1) = *&v103[111];
  *(&v74[6] + 9) = *&v103[96];
  *(&v74[5] + 9) = *&v103[80];
  *(&v74[4] + 9) = *&v103[64];
  *&v75 = KeyPath;
  *(&v75 + 1) = v28;
  LODWORD(v76[0]) = v27;
  *(&v76[0] + 1) = v30;
  v34 = v30;
  *&v76[1] = 2;
  BYTE8(v76[1]) = 0;
  *&v58[264] = v74[5];
  *&v58[280] = v74[6];
  *&v58[337] = *(v76 + 9);
  *&v58[312] = v75;
  *&v58[328] = v76[0];
  *&v58[296] = v74[7];
  *&v58[152] = v72;
  *&v58[136] = v71;
  *&v58[120] = v70;
  *&v58[216] = v74[2];
  *&v58[200] = v74[1];
  *&v58[184] = v74[0];
  *&v58[168] = v73;
  *&v58[248] = v74[4];
  *&v58[232] = v74[3];
  memcpy(v45, v58, 0x161uLL);
  v77[0] = v36;
  v77[1] = v31;
  v78 = v32;
  *v79 = *v60;
  *&v79[3] = *&v60[3];
  v80 = v33;
  v81 = v12;
  *v82 = *v59;
  *&v82[3] = *&v59[3];
  v83 = v18;
  v84 = v20;
  v85 = v22;
  v86 = v24;
  v87 = 0;
  v92 = *&v103[64];
  v93 = *&v103[80];
  *v94 = *&v103[96];
  v88 = *v103;
  v89 = *&v103[16];
  v90 = *&v103[32];
  v91 = *&v103[48];
  *&v94[15] = *&v103[111];
  v95 = v43;
  v96 = v28;
  v97 = v27;
  v98 = v34;
  v99 = 2;
  v100 = 0;
  sub_10001B104(v61, v56, &qword_1008F8388, &qword_100703368);
  sub_10001B104(&v70, v56, &qword_1008F8390, qword_100703370);
  sub_10000EA04(v77, &qword_1008F8390, qword_100703370);
  v56[0] = v55;
  v56[1] = 0;
  v56[2] = v44;
  v56[3] = v54;
  v56[4] = v53;
  v56[5] = v52;
  v56[6] = v51;
  v56[7] = v50;
  v56[8] = v49;
  v56[9] = v46;
  v56[10] = v47;
  v56[11] = 0;
  v56[12] = 0;
  v56[13] = v48;
  v57 = 0;
  return sub_10000EA04(v56, &qword_1008F8388, &qword_100703368);
}

uint64_t sub_10005759C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipCardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057614(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MetricDetailViewModel(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

id sub_10005772C()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setRoundingMode:2];
  [v0 setNumberStyle:1];
  [v0 setMaximumFractionDigits:0];
  v1 = [objc_allocWithZone(NSLengthFormatter) init];
  [v1 setNumberFormatter:v0];
  [v1 setUnitStyle:2];

  return v1;
}

unint64_t sub_100057B48()
{
  result = qword_1008F8C88;
  if (!qword_1008F8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8C88);
  }

  return result;
}

unint64_t sub_100057B9C()
{
  result = qword_1008DC648;
  if (!qword_1008DC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC648);
  }

  return result;
}

uint64_t sub_100057BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ActivitySharingReplyMenuContext(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100057D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActivitySharingReplyMenuContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100057DF8(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v8 = sub_100140278(&qword_1008DC620, &unk_1006D4D00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  sub_1000066AC(a1, a1[3]);
  sub_10005850C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = 0;
  sub_1000585AC();
  v12 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    LOBYTE(v15) = HIBYTE(a4) & 1;
    v18 = 1;
    sub_10005C14C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

double sub_100057FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-1] - v4;
  v6 = static os_log_type_t.default.getter();
  v7 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10000AFDC(v10, v11, v22);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = sub_10000AFDC(v13, v14, v22);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v6, "%s received notification %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    sub_10026E198(0, 0, v5, &unk_1006D8358, v20);
  }

  return result;
}

uint64_t sub_1000581FC(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100057DF8(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

void *sub_100058240()
{
  v1 = sub_100140278(&qword_1008DE5A0, &qword_1006D7D20);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = *v0;
  v6 = *(*v0 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v8 = v0[1];
  v17 = _swiftEmptyArrayStorage;
  result = sub_100059900(0, v6, 0);
  if (v6 <= *(v8 + 16))
  {
    v7 = v17;
    v10 = v8 + 32;
    v11 = (v5 + 48);
    do
    {
      v12 = &v4[*(v1 + 48)];
      Date.init(timeIntervalSinceReferenceDate:)();
      v13 = *v11;
      *v12 = *(v11 - 1);
      v12[16] = v13;
      v17 = v7;
      v15 = v7[2];
      v14 = v7[3];
      if (v15 >= v14 >> 1)
      {
        sub_100059900((v14 > 1), v15 + 1, 1);
        v7 = v17;
      }

      v7[2] = v15 + 1;
      sub_10005849C(v4, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15);
      v11 += 24;
      v10 += 8;
      --v6;
    }

    while (v6);
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1000583F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005849C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DE5A0, &qword_1006D7D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005850C()
{
  result = qword_1008DC608;
  if (!qword_1008DC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC608);
  }

  return result;
}

uint64_t type metadata accessor for MetricChartData(uint64_t a1)
{
  result = qword_1008DEEC0;
  if (!qword_1008DEEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000585AC()
{
  result = qword_1008DC628;
  if (!qword_1008DC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC628);
  }

  return result;
}

void *sub_100058600(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100140278(a5, a6);
  v16 = *(sub_100140278(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100140278(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1000587FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100140278(&qword_1008DC6A8, qword_1006D5590);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for MetricCard(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 24) = a2;
    return result;
  }

  v16 = sub_100140278(&unk_1008EAF50, qword_1006D4790);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = type metadata accessor for MetricFormattingHelper(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1000589E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100140278(&qword_1008DC6A8, qword_1006D5590);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MetricCard(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[7] + 24);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_100140278(&unk_1008EAF50, qword_1006D4790);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v18 = type metadata accessor for MetricFormattingHelper(0);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_100058BCC(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v90 = a4;
  v86 = a3;
  v91 = a2;
  v5 = sub_100140278(&qword_1008F5758, &qword_1006FEAE8);
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v76 = &v51 - v6;
  v7 = sub_100140278(&qword_1008F5760, &qword_1006FEAF0);
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v83 = &v51 - v8;
  v9 = sub_100140278(&qword_1008F5768, &qword_1006FEAF8);
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v73 = &v51 - v10;
  v72 = sub_100140278(&qword_1008F5770, &qword_1006FEB00);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v51 - v11;
  v69 = sub_100140278(&qword_1008F5778, &qword_1006FEB08);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v51 - v12;
  v66 = sub_100140278(&qword_1008F5780, &qword_1006FEB10);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v51 - v13;
  v63 = sub_100140278(&qword_1008F5788, &qword_1006FEB18);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v51 - v14;
  v15 = sub_100140278(&qword_1008F5790, &qword_1006FEB20);
  v81 = *(v15 - 8);
  v82 = v15;
  __chkstk_darwin(v15);
  v80 = &v51 - v16;
  v60 = sub_100140278(&qword_1008F5798, &qword_1006FEB28);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v51 - v17;
  v18 = sub_100140278(&qword_1008F57A0, &qword_1006FEB30);
  v79 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  v57 = sub_100140278(&qword_1008F57A8, &qword_1006FEB38);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v51 - v21;
  v54 = sub_100140278(&qword_1008F57B0, &qword_1006FEB40);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v23 = &v51 - v22;
  v24 = sub_100140278(&qword_1008F57B8, &qword_1006FEB48);
  v52 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v51 - v25;
  v27 = sub_100140278(&qword_1008F57C0, &qword_1006FEB50);
  v28 = *(v27 - 8);
  v88 = v27;
  v89 = v28;
  __chkstk_darwin(v27);
  v30 = &v51 - v29;
  sub_1000066AC(a1, a1[3]);
  sub_10005AA98();
  v87 = v30;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v90 <= 1u)
  {
    if (!v90)
    {
      v96 = 3;
      sub_10005C8C8();
      v32 = v87;
      v31 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v95 = v91;
      sub_10005F82C();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v79 + 8))(v20, v18);
      return (*(v89 + 8))(v32, v31);
    }

    v98 = 5;
    sub_1005F80E4();
    v33 = v80;
    v32 = v87;
    v31 = v88;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v34 = v82;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = v81;
LABEL_7:
    (*(v35 + 8))(v33, v34);
    return (*(v89 + 8))(v32, v31);
  }

  if (v90 == 2)
  {
    v106 = 11;
    sub_1005F7F94();
    v33 = v83;
    v32 = v87;
    v31 = v88;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v105 = v91;
    sub_1005F8234();
    v34 = v85;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v35 = v84;
    goto LABEL_7;
  }

  if (v91 > 4)
  {
    if (v91 <= 6)
    {
      if (v91 ^ 5 | v86)
      {
        v102 = 8;
        sub_1005F803C();
        v50 = v67;
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = *(v68 + 8);
        v41 = v50;
        v42 = &v109;
      }

      else
      {
        v101 = 7;
        sub_10005AAEC();
        v46 = v64;
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = *(v65 + 8);
        v41 = v46;
        v42 = &v108;
      }
    }

    else
    {
      if (v91 ^ 7 | v86)
      {
        if (v91 ^ 8 | v86)
        {
          v107 = 12;
          sub_1005F7F40();
          v43 = v76;
          v39 = v87;
          v38 = v88;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v45 = v77;
          v44 = v78;
        }

        else
        {
          v104 = 10;
          sub_10006169C();
          v43 = v73;
          v39 = v87;
          v38 = v88;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v45 = v74;
          v44 = v75;
        }

        (*(v45 + 8))(v43, v44);
        return (*(v89 + 8))(v39, v38);
      }

      v103 = 9;
      sub_1000613DC();
      v48 = v70;
      v39 = v87;
      v38 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v71 + 8);
      v41 = v48;
      v42 = &v110;
    }

    goto LABEL_29;
  }

  if (v91 > 1)
  {
    if (v91 ^ 2 | v86)
    {
      if (v91 ^ 3 | v86)
      {
        v100 = 6;
        sub_1005F8090();
        v49 = v61;
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = *(v62 + 8);
        v41 = v49;
        v42 = &v99;
      }

      else
      {
        v97 = 4;
        sub_100061584();
        v37 = v58;
        v39 = v87;
        v38 = v88;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = *(v59 + 8);
        v41 = v37;
        v42 = &v91;
      }
    }

    else
    {
      v94 = 2;
      sub_1005F818C();
      v47 = v55;
      v39 = v87;
      v38 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v56 + 8);
      v41 = v47;
      v42 = &v89;
    }

    goto LABEL_29;
  }

  if (v91 | v86)
  {
    v93 = 1;
    sub_1005F81E0();
    v39 = v87;
    v38 = v88;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v40 = *(v53 + 8);
    v41 = v23;
    v42 = &v86;
LABEL_29:
    v40(v41, *(v42 - 32));
    return (*(v89 + 8))(v39, v38);
  }

  v92 = 0;
  sub_100061648();
  v39 = v87;
  v38 = v88;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v52 + 8))(v26, v24);
  return (*(v89 + 8))(v39, v38);
}

void *sub_100059900(void *a1, int64_t a2, char a3)
{
  result = sub_100058600(a1, a2, a3, *v3, &qword_1008DE598, &qword_1006D7D18, &qword_1008DE5A0, &qword_1006D7D20);
  *v3 = result;
  return result;
}

uint64_t sub_100059994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MetricDetailViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100059AD4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

unint64_t sub_100059B80()
{
  result = qword_1008DCEE0;
  if (!qword_1008DCEE0)
  {
    sub_100141EEC(&qword_1008DCEE8, &qword_1006D5760);
    sub_10006D128(&qword_1008DCEF0, type metadata accessor for QuickStartWorkoutCardView, &unk_1006E7FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCEE0);
  }

  return result;
}

unint64_t sub_100059C44()
{
  result = qword_1008DCEC8;
  if (!qword_1008DCEC8)
  {
    sub_100141EEC(&qword_1008DCED0, &qword_1006D5758);
    sub_10006D128(&qword_1008DCED8, type metadata accessor for MetricCardView, &unk_1006FD178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCEC8);
  }

  return result;
}

uint64_t sub_100059D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E5C70, qword_1006F0480);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_100140278(&qword_1008ECEB8, &unk_1006F0520);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_1000059F8(0, &qword_1008DB898, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (sub_10005A1F8(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_10005A744(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_31;
  }

  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  if (*(a1 + 40) == 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        if (v15 != 1)
        {
          v16 = 0;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v15 <= 1)
        {
          v16 = 0;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (v15)
      {
        v16 = 0;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (v14 != v15)
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_31;
    }
  }

  v25 = type metadata accessor for MetricDetailViewModel(0);
  v17 = *(v25 + 36);
  v18 = *(v11 + 48);
  sub_10005A758(a1 + v17, v13);
  sub_10005A758(a2 + v17, &v13[v18]);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_10005A758(v13, v10);
    if (v19(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_10005AA50(&qword_1008ECEC0, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_10000EA04(v13, &qword_1008E5C70, qword_1006F0480);
      if ((v20 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    (*(v5 + 8))(v10, v4);
LABEL_28:
    sub_10000EA04(v13, &qword_1008ECEB8, &unk_1006F0520);
    goto LABEL_31;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_28;
  }

  sub_10000EA04(v13, &qword_1008E5C70, qword_1006F0480);
LABEL_30:
  if (*(a1 + *(v25 + 40)) == *(a2 + *(v25 + 40)))
  {
    v22 = static Date.== infix(_:_:)();
    return v22 & 1;
  }

LABEL_31:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_10005A184(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005A1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricChartData(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_12:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    sub_1000059F8(0, &qword_1008DB898, NSObject_ptr);
    v15 = *(v5 + 72);
    while (1)
    {
      sub_100307CF8(v13, v10, type metadata accessor for MetricChartData);
      sub_100307CF8(v14, v7, type metadata accessor for MetricChartData);
      if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v16 = static NSObject.== infix(_:_:)();
      sub_100307D60(v7, type metadata accessor for MetricChartData);
      sub_100307D60(v10, type metadata accessor for MetricChartData);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_100307D60(v7, type metadata accessor for MetricChartData);
    sub_100307D60(v10, type metadata accessor for MetricChartData);
    goto LABEL_12;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_10005A430(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = (v5 + 32) & ~v5;
  v8 = (v6 + v5 + v7) & ~v5;
  v9 = v8 + v6;
  v10 = (v8 + v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  v11 = *(v4 + 8);
  v11(v2 + v7, v3);
  v11(v2 + v8, v3);
  if (*(v2 + v10 + 16))
  {
  }

  return _swift_deallocObject(v2, ((((v9 + 239) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v5 | 7);
}

uint64_t sub_10005A5A4()
{
  v1 = (type metadata accessor for WorkoutItemView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[12];
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_100140278(&qword_1008E09C0, qword_1006DC5C0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005A758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E5C70, qword_1006F0480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005A7D8(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1000059F8(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v19 = v18;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = static NSObject.== infix(_:_:)();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10005AA50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005AA98()
{
  result = qword_1008F56D0;
  if (!qword_1008F56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F56D0);
  }

  return result;
}

unint64_t sub_10005AAEC()
{
  result = qword_1008F5710;
  if (!qword_1008F5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5710);
  }

  return result;
}

uint64_t sub_10005AB6C()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F4CA8, &qword_1006FD1C8);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v8 = sub_100140278(&qword_1008F4CB0, &qword_1006FD1D0);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v11 = sub_100140278(&qword_1008F4CB8, &qword_1006FD1D8);
  sub_10005AF5C(v0, &v7[*(v11 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000615D8(v7, v10);
  v12 = &v10[*(v8 + 36)];
  v13 = v17[5];
  *(v12 + 4) = v17[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v17[6];
  v14 = v17[1];
  *v12 = v17[0];
  *(v12 + 1) = v14;
  v15 = v17[3];
  *(v12 + 2) = v17[2];
  *(v12 + 3) = v15;
  static AccessibilityChildBehavior.combine.getter();
  sub_1000616F0();
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_10000EA04(v10, &qword_1008F4CB0, &qword_1006FD1D0);
}

unint64_t sub_10005ADDC(char a1)
{
  result = 0x73676E6972;
  switch(a1)
  {
    case 1:
      result = 1684107116;
      break;
    case 2:
      result = 0x79726F74736968;
      break;
    case 3:
      result = 0x63697274656DLL;
      break;
    case 4:
      result = 0x6472617761;
      break;
    case 5:
      result = 0x646E65697266;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x54676F6C61746163;
      break;
    case 10:
      result = 0x73646E657274;
      break;
    case 11:
      result = 0x646E657274;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005AF5C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v83 = a2;
  v82 = sub_100140278(&qword_1008F4CD0, &qword_1006FD1E0) - 8;
  __chkstk_darwin(v82);
  v99 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v86 = (&v78 - v5);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Font.Leading();
  v92 = *(v8 - 8);
  *&v93 = v8;
  __chkstk_darwin(v8);
  v91 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTypeSize();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v78 - v15;
  v100 = a1;
  v133 = sub_10005BA54();
  v134 = v17;
  sub_10000FCBC();
  v18 = Text.init<A>(_:)();
  v96 = v19;
  v97 = v18;
  v94 = v20;
  v98 = v21;
  sub_10005491C(v16);
  v88 = enum case for DynamicTypeSize.large(_:);
  v22 = *(v11 + 104);
  v22(v13);
  *v87 = v22;
  v80 = sub_10005BE1C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v81 = dispatch thunk of static Comparable.< infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v23(v16, v10);
  v95 = static Edge.Set.bottom.getter();
  sub_10005491C(v16);
  (v22)(v13, v88, v10);
  dispatch thunk of static Comparable.< infix(_:_:)();
  v85 = v11 + 8;
  v23(v13, v10);
  v23(v16, v10);
  v24 = 0.0;
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v94 &= 1u;
  v156 = v94;
  v153 = 0;
  static Font.footnote.getter();
  v34 = v91;
  v33 = v92;
  v35 = v93;
  (*(v92 + 104))(v91, enum case for Font.Leading.tight(_:), v93);
  *(&v93 + 1) = Font.leading(_:)();

  (*(v33 + 8))(v34, v35);
  *&v93 = swift_getKeyPath();
  v36 = v100;
  sub_10005BEF4(v84);
  v37 = Text.init(_:)();
  v90 = v38;
  v91 = v37;
  LOBYTE(v34) = v39;
  v92 = v40;
  KeyPath = swift_getKeyPath();
  sub_10005491C(v16);
  (*v87)(v13, v88, v10);
  LODWORD(v80) = dispatch thunk of static Comparable.< infix(_:_:)();
  v79 = v23;
  v23(v13, v10);
  v23(v16, v10);
  v88 = static Edge.Set.all.getter();
  v87[0] = v34 & 1;
  v152 = v34 & 1;
  v149 = 0;
  v41 = v86;
  sub_10005FD04(v36, v86);
  v42 = v36 + *(type metadata accessor for MetricCardView(0) + 20);
  v43 = type metadata accessor for MetricCard(0);
  v44 = v42 + *(v43 + 20);
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v33) = *(v44 + 16);
  sub_10005491C(v16);
  LODWORD(v36) = sub_10001DEC8(v16, v45, v46, v33);
  v79(v16, v10);
  v47 = v41 + *(v82 + 44);
  *v47 = v36 == 2;
  *(v47 + 1) = 0x404B800000000000;
  v47[16] = 0;
  v48 = v42 + *(v43 + 36);
  if (*(v48 + 40) == 1 && *(v48 + 32) == 1)
  {
    sub_1005C6C04(v84);
    v82 = Text.init(_:)();
    v100 = v49;
    v51 = v50;
    v85 = v52;
    v53 = static Edge.Set.all.getter();
    LOBYTE(v133) = v51 & 1;
    LOBYTE(v101) = 0;
    v54 = v51 & 1;
    v55 = v53;
    v84 = 0x4000000000000000;
  }

  else
  {
    v82 = 0;
    v100 = 0;
    v84 = 0;
    v85 = 0;
    v55 = 0;
    v54 = 0;
  }

  v78 = v54;
  v79 = v55;
  if (v80)
  {
    v56 = 0x4010000000000000;
  }

  else
  {
    v56 = 0x4020000000000000;
  }

  v80 = v56;
  if (v81)
  {
    v24 = -2.0;
  }

  v57 = v41;
  v58 = v99;
  sub_10001B104(v57, v99, &qword_1008F4CD0, &qword_1006FD1E0);
  *&v101 = v97;
  *(&v101 + 1) = v96;
  LOBYTE(v102) = v94;
  *(&v102 + 1) = *v155;
  DWORD1(v102) = *&v155[3];
  *(&v102 + 1) = v98;
  *&v103 = 0;
  *(&v103 + 1) = v24;
  LOBYTE(v104) = v95;
  *(&v104 + 1) = *v154;
  DWORD1(v104) = *&v154[3];
  *(&v104 + 1) = v26;
  *&v105 = v28;
  *(&v105 + 1) = v30;
  *&v106 = v32;
  BYTE8(v106) = 0;
  *(&v106 + 9) = v157[0];
  HIDWORD(v106) = *(v157 + 3);
  v107 = v93;
  v59 = v102;
  v60 = v83;
  *v83 = v101;
  v60[1] = v59;
  v61 = v103;
  v62 = v104;
  v63 = v106;
  v64 = v107;
  v60[4] = v105;
  v60[5] = v63;
  v60[2] = v61;
  v60[3] = v62;
  *&v108 = v91;
  *(&v108 + 1) = v90;
  LOBYTE(v109) = v87[0];
  DWORD1(v109) = *&v151[3];
  *(&v109 + 1) = *v151;
  *(&v109 + 1) = v92;
  *&v110 = KeyPath;
  *(&v110 + 1) = 0x3FE999999999999ALL;
  LOBYTE(v111) = v88;
  DWORD1(v111) = *&v150[3];
  *(&v111 + 1) = *v150;
  *(&v111 + 1) = 0;
  *&v112[0] = 0;
  *(&v112[0] + 1) = v56;
  *&v112[1] = 0;
  BYTE8(v112[1]) = 0;
  v65 = v108;
  v66 = v109;
  v60[6] = v64;
  v60[7] = v65;
  v67 = v110;
  v68 = v111;
  *(v60 + 185) = *(v112 + 9);
  v69 = v112[0];
  v60[10] = v68;
  v60[11] = v69;
  v60[8] = v66;
  v60[9] = v67;
  v70 = sub_100140278(&qword_1008F4CD8, &qword_1006FD248);
  sub_10001B104(v58, v60 + *(v70 + 64), &qword_1008F4CD0, &qword_1006FD1E0);
  v71 = (v60 + *(v70 + 80));
  v72 = v82;
  v73 = v100;
  *&v113 = v82;
  *(&v113 + 1) = v100;
  v74 = v85;
  *&v114 = v54;
  *(&v114 + 1) = v85;
  *&v115 = v55;
  v75 = v84;
  *(&v115 + 1) = v84;
  v116 = 0;
  memset(v117, 0, sizeof(v117));
  v71[2] = v115;
  v71[3] = 0u;
  *(v71 + 57) = *&v117[1];
  v76 = v114;
  *v71 = v113;
  v71[1] = v76;
  sub_10001B104(&v101, &v133, &qword_1008F4CE0, &qword_1006FD250);
  sub_10001B104(&v108, &v133, &qword_1008F4CE8, &qword_1006FD258);
  sub_10001B104(&v113, &v133, &qword_1008F2C30, &qword_1006F9980);
  sub_10000EA04(v86, &qword_1008F4CD0, &qword_1006FD1E0);
  v118[0] = v72;
  v118[1] = v73;
  v118[2] = v78;
  v118[3] = v74;
  v118[4] = v79;
  v118[5] = v75;
  memset(&v118[6], 0, 24);
  v119 = 0;
  sub_10000EA04(v118, &qword_1008F2C30, &qword_1006F9980);
  sub_10000EA04(v99, &qword_1008F4CD0, &qword_1006FD1E0);
  v120[0] = v91;
  v120[1] = v90;
  v121 = v87[0];
  *v122 = *v151;
  *&v122[3] = *&v151[3];
  v123 = v92;
  v124 = KeyPath;
  v125 = 0x3FE999999999999ALL;
  v126 = v88;
  *v127 = *v150;
  *&v127[3] = *&v150[3];
  v128 = 0;
  v129 = 0;
  v130 = v80;
  v131 = 0;
  v132 = 0;
  sub_10000EA04(v120, &qword_1008F4CE8, &qword_1006FD258);
  v133 = v97;
  v134 = v96;
  v135 = v94;
  *v136 = *v155;
  *&v136[3] = *&v155[3];
  v137 = v98;
  v138 = 0;
  v139 = v24;
  v140 = v95;
  *v141 = *v154;
  *&v141[3] = *&v154[3];
  v142 = v26;
  v143 = v28;
  v144 = v30;
  v145 = v32;
  v146 = 0;
  *v147 = v157[0];
  *&v147[3] = *(v157 + 3);
  v148 = v93;
  return sub_10000EA04(&v133, &qword_1008F4CE0, &qword_1006FD250);
}

uint64_t storeEnumTagSinglePayload for CardType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10005BA54()
{
  v1 = type metadata accessor for MetricCardView(0);
  v2 = v0 + *(v1 + 20);
  v3 = v2 + *(type metadata accessor for MetricCard(0) + 36);
  v4 = *(v3 + 40);
  if (v4 == 1 && !*(v3 + 32))
  {
    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0x4C41544F54;
    v6 = *(v0 + *(v1 + 24));
    v7 = 0xE500000000000000;
    if (((1 << v6) & 0x5DDBB8E070) == 0 && (((1 << v6) & 0x2224471F80) != 0 || (v4 & 1) == 0))
    {
      v7 = 0xE700000000000000;
      v5 = 0x45474152455641;
    }

    _StringGuts.grow(_:)(17);

    strcpy(v16, "METRIC_CARD_");
    BYTE5(v16[1]) = 0;
    HIWORD(v16[1]) = -5120;
    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 95;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = sub_10002A094(v6);
    String.append(_:)(v10);

    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v14;
}

uint64_t getEnumTagSinglePayload for CardType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10005BD20()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_10005BD44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005BD8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005BDD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005BE1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005BE64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005BEAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10005BEF4(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MetricCardView(0);
  v4 = *(v1 + *(v3 + 24));
  v5 = v1 + *(v3 + 20);
  v6 = v5 + *(type metadata accessor for MetricCard(0) + 36);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  if (qword_1008DAEB8 != -1)
  {
    swift_once();
  }

  v9 = qword_1008F4BF0;
  sub_10005C1A0(v4);
  v10 = Color.init(uiColor:)();
  v11 = v6;
  if (((1 << v4) & 0x5DDBB8E070) == 0)
  {
    if (((1 << v4) & 0x2224471F80) != 0)
    {
      v11 = (v6 + 8);
    }

    else
    {
      v12 = 8;
      if ((v8 & (v7 == 0)) != 0)
      {
        v12 = 0;
      }

      v11 = (v6 + v12);
    }
  }

  v13 = *v11;
  v14 = *(v6 + *(type metadata accessor for MetricDetailViewModel(0) + 40));
  v15 = v13;
  sub_10005C9EC(v13, v4, v9, 0, v10, 0, (v14 & 1) == 0, a1);
}

void sub_10005C070(uint64_t a1)
{
  sub_10005C91C(319);
  if (v1 <= 0x3F)
  {
    sub_10005C818();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AppComposer();
      if (v3 <= 0x3F)
      {
        sub_10005C6EC(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for DashboardCardCellViewCache(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10005C14C()
{
  result = qword_1008DC630;
  if (!qword_1008DC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC630);
  }

  return result;
}

id sub_10005C1A0(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
      v18 = [objc_opt_self() distanceColors];
      if (!v18)
      {
        goto LABEL_27;
      }

      v19 = v18;
      v3 = [v18 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      __break(1u);
LABEL_17:
      v20 = [objc_opt_self() powerColors];
      v3 = [v20 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      __break(1u);
LABEL_19:
      v21 = [objc_opt_self() cadenceColors];
      v3 = [v21 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      goto LABEL_28;
    case 4:
    case 11:
    case 12:
    case 13:
    case 19:
    case 23:
    case 27:
    case 30:
    case 34:
      v1 = [objc_opt_self() distanceColors];
      if (!v1)
      {
        goto LABEL_24;
      }

      v2 = v1;
      v3 = [v1 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      __break(1u);
LABEL_5:
      v4 = [objc_opt_self() elapsedTimeColors];
      if (!v4)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v5 = v4;
      v3 = [v4 nonGradientTextColor];

      if (v3)
      {
        return v3;
      }

      __break(1u);
LABEL_8:
      v6 = [objc_opt_self() paceColors];
      if (!v6)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        JUMPOUT(0x10005C588);
      }

      v7 = v6;
      v3 = [v6 nonGradientTextColor];

      if (!v3)
      {
        __break(1u);
LABEL_11:
        v8 = [objc_opt_self() elevationColors];
        v3 = [v8 nonGradientTextColor];

        if (!v3)
        {
          __break(1u);
LABEL_13:
          sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
          isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.59216, 0.4902, 0.88235, 1.0).super.isa;
          v10 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.76078, 0.63137, 1.0, 1.0).super.isa;
          v11 = type metadata accessor for GradientColors();
          v12 = objc_allocWithZone(v11);
          *&v12[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
          *&v12[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v10;
          v24.receiver = v12;
          v24.super_class = v11;
          v13 = objc_msgSendSuper2(&v24, "init");
          v14 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.63529, 0.5451, 0.88235, 1.0).super.isa;
          v15 = type metadata accessor for MetricColors();
          v16 = objc_allocWithZone(v15);
          *&v16[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v13;
          *&v16[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v14;
          v23.receiver = v16;
          v23.super_class = v15;
          v17 = objc_msgSendSuper2(&v23, "init");
          v3 = *&v17[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];
        }
      }

      return v3;
    case 5:
    case 10:
    case 14:
    case 20:
    case 24:
    case 28:
    case 31:
    case 35:
      goto LABEL_5;
    case 6:
    case 15:
    case 21:
    case 25:
    case 32:
    case 36:
      goto LABEL_11;
    case 7:
    case 16:
    case 22:
    case 26:
    case 29:
    case 33:
    case 37:
      goto LABEL_8;
    case 8:
    case 17:
      goto LABEL_17;
    case 9:
    case 18:
      goto LABEL_19;
    case 38:
      result = [objc_opt_self() fiui_meditationTeal];
      if (result)
      {
        return result;
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    default:
      goto LABEL_13;
  }
}

unint64_t sub_10005C674()
{
  result = qword_1008F4608;
  if (!qword_1008F4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4608);
  }

  return result;
}

void sub_10005C6EC(uint64_t a1)
{
  if (!qword_1008DC728)
  {
    sub_100141EEC(&qword_1008DC730, &qword_1006E7FA0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1008DC728);
    }
  }
}

uint64_t sub_10005C780()
{
  if (*v0)
  {
    return 0x65746143657A6973;
  }

  else
  {
    return 0x706D655464726163;
  }
}

unint64_t sub_10005C818()
{
  result = qword_1008DCC10;
  if (!qword_1008DCC10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1008DCC10);
  }

  return result;
}

unint64_t sub_10005C8C8()
{
  result = qword_1008F5730;
  if (!qword_1008F5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5730);
  }

  return result;
}

void sub_10005C91C(uint64_t a1)
{
  if (!qword_1008DC720)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1008DC720);
    }
  }
}

uint64_t sub_10005C9EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v9 = v8;
  LODWORD(v369) = a7;
  LODWORD(v363) = a6;
  LODWORD(v362) = a4;
  v370 = a3;
  v371 = a8;
  v365 = a2;
  v366 = a5;
  v11 = sub_100140278(&qword_1008EF8C8, &unk_1006F7030);
  __chkstk_darwin(v11 - 8);
  v335 = &v325 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v336 = &v325 - v14;
  v15 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v15 - 8);
  v357 = &v325 - v16;
  v17 = sub_100140278(&qword_1008E1900, &unk_1006E8990);
  __chkstk_darwin(v17 - 8);
  v338 = &v325 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v353 = &v325 - v20;
  __chkstk_darwin(v21);
  v337 = &v325 - v22;
  v358 = sub_100140278(&qword_1008E1908, &unk_1006DFC40);
  v356 = *(v358 - 8);
  __chkstk_darwin(v358);
  v333 = &v325 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v334 = &v325 - v25;
  __chkstk_darwin(v26);
  v332 = &v325 - v27;
  v351 = type metadata accessor for AttributedString.Runs();
  v350 = *(v351 - 8);
  __chkstk_darwin(v351);
  v349 = &v325 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AttributedString();
  v368 = *(v29 - 8);
  __chkstk_darwin(v29);
  v352 = &v325 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v359 = &v325 - v32;
  __chkstk_darwin(v33);
  v354 = &v325 - v34;
  __chkstk_darwin(v35);
  v348 = &v325 - v36;
  v37 = type metadata accessor for Locale();
  v38 = *(v37 - 8);
  v360 = v37;
  v361 = v38;
  __chkstk_darwin(v37);
  v345 = &v325 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  __chkstk_darwin(v40 - 8);
  v343 = &v325 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  __chkstk_darwin(v42 - 8);
  v342 = &v325 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  __chkstk_darwin(v44 - 8);
  v339 = &v325 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = type metadata accessor for Duration.UnitsFormatStyle();
  v340 = *(v341 - 8);
  __chkstk_darwin(v341);
  v47 = &v325 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v346 = *(v347 - 8);
  __chkstk_darwin(v347);
  v49 = &v325 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v344 = &v325 - v51;
  v52 = sub_100140278(&qword_1008EFF38, &qword_1006F4DB8);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v325 - v54;
  v56 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v56);
  __chkstk_darwin(v57);
  v61 = &v325 - v60;
  if (!a1)
  {
    v74 = type metadata accessor for MetricFormattingHelper(0);
    v75 = *(v368 + 16);
    v76 = v9 + *(v74 + 20);
    v77 = v371;

    return v75(v77, v76, v29);
  }

  v328 = v47;
  v331 = v9;
  v330 = v29;
  v62 = v58;
  v63 = v59;
  v367 = a1;
  AttributeContainer.init()();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v325 - 2) = v65;
  swift_getKeyPath();
  v329 = sub_10005F988();
  AttributeContainer.subscript.getter();

  v364 = v63;
  v68 = *(v63 + 8);
  v67 = v63 + 8;
  v66 = v68;
  v355 = v62;
  v68(v62, v56);
  v373 = v370;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v53 + 8))(v55, v52);
  v69 = v56;
  if (v369)
  {
    v373 = v366;
    sub_10005FAB0();

    AttributeContainer.subscript.setter();
    v70 = [objc_opt_self() mainBundle];
    v71 = String._bridgeToObjectiveC()();
    v72 = [v70 localizedStringForKey:v71 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v364 + 16))(v355, v61, v56);
    AttributedString.init(_:attributes:)();

    return v66(v61, v56);
  }

  v78 = v364;
  v369 = v66;
  v325 = v67;
  v326 = v61;
  v327 = v69;
  v79 = 1;
  v81 = v370;
  v80 = v371;
  v82 = v365;
  v83 = v367;
  v84 = v331;
  switch(v365)
  {
    case 1:
    case 3:
    case 4:
    case 19:
    case 23:
    case 30:
    case 34:
      goto LABEL_8;
    case 5:
    case 14:
    case 20:
    case 24:
    case 28:
    case 31:
    case 35:
      v110 = v49;
      v111 = [objc_opt_self() secondUnit];
      [v83 doubleValueForUnit:v111];

      v112 = static Duration.seconds(_:)();
      v114 = v113;
      if (v363)
      {
        v115 = [v83 _isZero];
        v116 = v369;
        if (v115)
        {
          v117 = static Color.secondary.getter();
          v118 = 0;
        }

        else
        {
          v117 = static Color.white.getter();
          sub_10005C1A0(v82);
          v118 = Color.init(uiColor:)();
        }

        sub_1004C3C38(v112, v114, v81, v362 & 1, v117, v118, v80);

        return v116(v326, v327);
      }

      else
      {
        sub_100140278(&qword_1008EF898, &qword_1006FA620);
        type metadata accessor for Duration.UnitsFormatStyle.Unit();
        v135 = v81;
        v365 = v114;
        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_1006D1F70;
        static Duration.UnitsFormatStyle.Unit.hours.getter();
        static Duration.UnitsFormatStyle.Unit.minutes.getter();
        sub_10029CB54(v136);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
        static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
        static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
        v137 = v328;
        Duration.UnitsFormatStyle.init(allowedUnits:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();
        Duration.UnitsFormatStyle.attributed.getter();
        (*(v340 + 8))(v137, v341);
        v138 = v345;
        static Locale.autoupdatingCurrent.getter();
        v139 = v344;
        Duration.UnitsFormatStyle.Attributed.locale(_:)();
        (*(v361 + 8))(v138, v360);
        v140 = *(v346 + 8);
        v141 = v347;
        v140(v110, v347);
        sub_1004D4DC8(&qword_1008EF8A0, &type metadata accessor for Duration.UnitsFormatStyle.Attributed, &protocol conformance descriptor for Duration.UnitsFormatStyle.Attributed);
        v142 = v348;
        Duration.formatted<A>(_:)();
        v373 = v135;

        AttributedString.subscript.setter();
        v143 = v369;
        if (v366)
        {
          v373 = v366;
          sub_10005FAB0();

          AttributedString.subscript.setter();
        }

        v144 = v349;
        AttributedString.runs.getter();
        sub_1004D3DAC(v144, v142, v362 & 1);
        (*(v350 + 8))(v144, v351);
        v140(v139, v141);
        (*(v368 + 32))(v371, v142, v330);

        return v143(v326, v327);
      }

    case 6:
    case 15:
    case 21:
    case 25:
    case 32:
    case 36:
      v119 = [objc_opt_self() meterUnit];
      [v83 doubleValueForUnit:v119];
      v121 = v120;

      v122 = *v84;
      v123 = [*v84 unitManager];
      if (!v123)
      {
        goto LABEL_113;
      }

      v124 = v123;
      v125 = [v123 userDistanceElevationUnit];

      v126 = [v122 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:v121];
      if (!v126)
      {
LABEL_73:
        v369(v326, v327);

        goto LABEL_76;
      }

      v127 = v126;
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v128;

      v129 = [v122 localizedShortUnitStringForDistanceUnit:v125 textCase:1];
      if (!v129)
      {
LABEL_43:
        v369(v326, v327);

        goto LABEL_76;
      }

      v130 = v129;
      v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v133 = v132;

      v373 = v131;
      v374 = v133;
      sub_10000FCBC();
      v364 = StringProtocol.localizedUppercase.getter();
      v100 = v134;
LABEL_39:

      if ((v363 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_86;
    case 7:
    case 22:
    case 26:
    case 33:
    case 37:
      goto LABEL_55;
    case 8:
    case 17:
      v169 = [objc_opt_self() localizedShortPowerUnitString];
      if (!v169)
      {
        goto LABEL_75;
      }

      v170 = v169;
      v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v151 = v171;

      v172 = objc_opt_self();
      [v83 _value];
      v156 = [objc_allocWithZone(NSNumber) initWithDouble:v173];
      v157 = [v172 localizedStringFromNumber:v156 numberStyle:0];
      goto LABEL_38;
    case 9:
    case 18:
      v145 = sub_10069ABB0(v365);
      if (v146)
      {
        goto LABEL_73;
      }

      v147 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType:v145];
      if (!v147)
      {
        goto LABEL_73;
      }

      v148 = v147;
      v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v151 = v150;

      v152 = [objc_opt_self() _countPerMinuteUnit];
      [v83 doubleValueForUnit:v152];
      v154 = v153;

      v155 = objc_opt_self();
      v156 = [objc_allocWithZone(NSNumber) initWithDouble:v154];
      v157 = [v155 localizedStringFromNumber:v156 numberStyle:0];
LABEL_38:
      v174 = v157;

      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v175;

      v373 = v149;
      v374 = v151;
      sub_10000FCBC();
      v364 = StringProtocol.localizedUppercase.getter();
      v100 = v176;
      goto LABEL_39;
    case 10:
      v177 = sub_1004D3AD8(10);
      [v83 doubleValueForUnit:v177];
      v179 = v178;

      v180 = objc_opt_self();
      v181 = [objc_allocWithZone(NSNumber) initWithDouble:v179];
      v182 = [v180 stringWithNumber:v181 decimalPrecision:1];

      if (!v182)
      {
        goto LABEL_73;
      }

      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v183;

      v184 = [objc_opt_self() mainBundle];
      v185 = String._bridgeToObjectiveC()();
      v186 = [v184 localizedStringForKey:v185 value:0 table:0];

      v364 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v188 = v187;

      v100 = v188;
      if ((v363 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_86;
    case 11:
      v189 = sub_1004D3AD8(11);
      [v83 doubleValueForUnit:v189];
      v191 = v190;

      v192 = [*v84 localizedStringWithDistanceInMeters:1 distanceUnit:0 unitStyle:2 decimalPrecision:v191];
      if (!v192)
      {
        goto LABEL_73;
      }

      v193 = v192;
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v194;

      v97 = [*(v84 + *(type metadata accessor for MetricFormattingHelper(0) + 24)) unitStringFromValue:9 unit:100.0];
      goto LABEL_11;
    case 12:
      v237 = sub_1004D3AD8(12);
      [v83 doubleValueForUnit:v237];
      v239 = v238;

      v240 = *v84;
      v241 = [*v84 localizedShortUnitStringForDistanceUnit:1];
      if (!v241)
      {
        goto LABEL_73;
      }

      v242 = v241;
      v364 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v243;

      v244 = [v240 localizedStringWithDistanceInMeters:1 distanceUnit:0 unitStyle:2 decimalPrecision:v239];
      if (!v244)
      {
        goto LABEL_43;
      }

      v98 = v244;
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v245;
      goto LABEL_12;
    case 13:
      v79 = 2;
      goto LABEL_8;
    case 16:
      v79 = 2;
      goto LABEL_55;
    case 27:
      v79 = 3;
LABEL_8:
      v85 = [objc_opt_self() meterUnit];
      [v83 doubleValueForUnit:v85];
      v87 = v86;

      v88 = *v84;
      v89 = [*v84 unitManager];
      if (!v89)
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        JUMPOUT(0x10005F6C8);
      }

      v90 = v89;
      v91 = [v89 userDistanceUnitForDistanceType:v79];

      v92 = [v88 localizedStringWithDistanceInMeters:v91 distanceUnit:0 unitStyle:objc_msgSend(objc_opt_self() decimalPrecision:"defaultPrecisionForDistanceUnit:" roundingMode:v91) decimalTrimmingMode:{2, 1, v87}];
      if (!v92)
      {
LABEL_75:

        v369(v326, v327);
LABEL_76:
        v246 = type metadata accessor for MetricFormattingHelper(0);
        return (*(v368 + 16))(v80, v84 + *(v246 + 20), v330);
      }

      v93 = v92;
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v97 = [v88 localizedShortUnitStringForDistanceUnit:v91 textCase:1];
      if (!v97)
      {

        goto LABEL_75;
      }

LABEL_11:
      v98 = v97;
      v364 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;
LABEL_12:

      if ((v363 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_86:
      v263 = [v367 _isZero];
      v351 = v94;
      if (v263)
      {
        v264 = static Color.secondary.getter();
        v366 = 0;
      }

      else
      {
        v264 = static Color.white.getter();
        sub_10005C1A0(v365);
        v366 = Color.init(uiColor:)();
      }

      v265 = v364;
      if ((v362 & 1) == 0)
      {
        v285 = objc_opt_self();

        v286 = [v285 mainBundle];
        v287 = String._bridgeToObjectiveC()();
        v288 = [v286 localizedStringForKey:v287 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
        v289 = swift_allocObject();
        *(v289 + 16) = xmmword_1006D1F70;
        v290 = v370;
        *(v289 + 56) = &type metadata for String;
        v291 = sub_10000A788();
        *(v289 + 32) = v351;
        *(v289 + 40) = v96;
        *(v289 + 96) = &type metadata for String;
        *(v289 + 104) = v291;
        *(v289 + 64) = v291;
        *(v289 + 72) = v265;
        *(v289 + 80) = v100;

        String.init(format:_:)();

        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v373 = v290;

        AttributedString.subscript.setter();
        v373 = v264;
        v292 = sub_10005FAB0();
        v370 = v264;

        v362 = v292;
        AttributedString.subscript.setter();
        v373 = v265;
        v374 = v100;
        v365 = v100;
        v293 = *(v361 + 56);
        v294 = v357;
        v361 += 56;
        v293(v357, 1, 1, v360);
        v295 = sub_1004D4DC8(&qword_1008E1918, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
        sub_10000FCBC();
        v296 = v353;
        v363 = v295;
        AttributedStringProtocol.range<A>(of:options:locale:)();
        sub_10000EA04(v294, &qword_1008EB540, &unk_1006D5E20);
        v297 = *(v356 + 48);
        if (v297(v296, 1, v358) == 1)
        {
          v298 = &qword_1008E1900;
          v299 = &unk_1006E8990;
        }

        else
        {
          v300 = v296;
          v296 = v334;
          sub_10007BE08(v300, v334);
          v301 = v336;
          static Text.Scale.secondary.getter();
          v302 = type metadata accessor for Text.Scale();
          (*(*(v302 - 8) + 56))(v301, 0, 1, v302);
          sub_10007C0F0();
          v303 = AttributedString.subscript.modify();
          sub_10007C1D8(v301, v335);
          sub_10007C248();
          AttributedSubstring.subscript.setter();
          v304 = v301;
          v265 = v364;
          sub_10000EA04(v304, &qword_1008EF8C8, &unk_1006F7030);
          v303(&v373, 0);
          v298 = &qword_1008E1908;
          v299 = &unk_1006DFC40;
        }

        sub_10000EA04(v296, v298, v299);
        v305 = v365;
        v306 = v366;
        if (v366)
        {
          v373 = v351;
          v374 = v96;

          v307._countAndFlagsBits = v265;
          v307._object = v305;
          String.append(_:)(v307);
          v308 = v357;
          v293(v357, 1, 1, v360);
          v309 = v338;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v308, &qword_1008EB540, &unk_1006D5E20);

          if (v297(v309, 1, v358) == 1)
          {

            v310 = &qword_1008E1900;
            v311 = &unk_1006E8990;
            v312 = v309;
          }

          else
          {
            v316 = v333;
            sub_10007BE08(v309, v333);

            sub_10007C0F0();
            v317 = AttributedString.subscript.modify();
            v372 = v306;
            AttributedSubstring.subscript.setter();
            v317(&v373, 0);

            v310 = &qword_1008E1908;
            v311 = &unk_1006DFC40;
            v312 = v316;
          }

          sub_10000EA04(v312, v310, v311);
        }

        (*(v368 + 32))(v371, v359, v330);

        goto LABEL_106;
      }

      v266 = objc_opt_self();

      v267 = v264;
      v268 = [v266 mainBundle];
      v269 = String._bridgeToObjectiveC()();
      v270 = [v268 localizedStringForKey:v269 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v271 = swift_allocObject();
      *(v271 + 16) = xmmword_1006D1F70;
      *(v271 + 56) = &type metadata for String;
      v272 = sub_10000A788();
      v273 = v351;
      *(v271 + 32) = v351;
      *(v271 + 40) = v96;
      *(v271 + 96) = &type metadata for String;
      *(v271 + 104) = v272;
      *(v271 + 64) = v272;
      *(v271 + 72) = v265;
      v274 = v265;
      *(v271 + 80) = v100;

      String.init(format:_:)();

      AttributeContainer.init()();
      v275 = v96;
      v276 = v354;
      AttributedString.init(_:attributes:)();
      v373 = v370;

      AttributedString.subscript.setter();
      v373 = v267;
      sub_10005FAB0();

      AttributedString.subscript.setter();
      v277 = v366;
      if (v366)
      {
        v370 = v267;
        v373 = v273;
        v374 = v275;

        v278._countAndFlagsBits = 32;
        v278._object = 0xE100000000000000;
        String.append(_:)(v278);

        v279._countAndFlagsBits = v274;
        v279._object = v100;
        String.append(_:)(v279);

        v280 = v357;
        (*(v361 + 56))(v357, 1, 1, v360);
        sub_1004D4DC8(&qword_1008E1918, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
        sub_10000FCBC();
        v281 = v337;
        AttributedStringProtocol.range<A>(of:options:locale:)();
        sub_10000EA04(v280, &qword_1008EB540, &unk_1006D5E20);

        v282 = (*(v356 + 48))(v281, 1, v358);
        v283 = v369;
        v284 = v367;
        if (v282 == 1)
        {

          v283(v326, v327);
          sub_10000EA04(v281, &qword_1008E1900, &unk_1006E8990);
        }

        else
        {
          v313 = v281;
          v314 = v332;
          sub_10007BE08(v313, v332);

          sub_10007C0F0();
          v315 = AttributedString.subscript.modify();
          v372 = v277;
          AttributedSubstring.subscript.setter();
          v315(&v373, 0);

          sub_10000EA04(v314, &qword_1008E1908, &unk_1006DFC40);
          v283(v326, v327);
        }
      }

      else
      {

        v369(v326, v327);
      }

      return (*(v368 + 32))(v371, v276, v330);
    case 29:
      v79 = 3;
LABEL_55:
      v201 = *v331;
      v202 = [*v331 unitManager];
      if (!v202)
      {
        goto LABEL_112;
      }

      v203 = v202;
      v204 = [v202 paceDistanceUnitForDistanceType:v79];

      v205 = FIUIPaceFormatForDistanceType();
      v206 = sub_10069ABB0(v82);
      v350 = v79;
      v349 = v201;
      v351 = v205;
      if (v205 == 4)
      {
        v208 = [v201 localizedSpeedUnitStringForDistanceType:v79 unitStyle:1];
        if (v208)
        {
          v209 = v208;
          v364 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v211 = v210;

LABEL_80:
          v247 = objc_opt_self();
          v248 = [v247 secondUnit];
          v249 = [v247 meterUnit];
          v250 = [v248 unitDividedByUnit:v249];

          [v83 doubleValueForUnit:v250];
          v252 = v251;

          v253 = v351;
          if (v351 == 4 && v252 == 0.0)
          {
            v254 = [objc_opt_self() mainBundle];
            v255 = String._bridgeToObjectiveC()();
            v256 = [v254 localizedStringForKey:v255 value:0 table:0];

            v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v258 = v257;
          }

          else
          {
            v259 = [v247 meterUnit];
            v260 = [objc_opt_self() quantityWithUnit:v259 doubleValue:1.0];

            v261 = [v349 localizedPaceStringWithDistance:v260 overDuration:v253 paceFormat:v350 distanceType:v252];
            if (!v261)
            {
              v369(v326, v327);

              v80 = v371;
              goto LABEL_76;
            }

            v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v258 = v262;
          }

          v80 = v371;
          v100 = v211;
          v96 = v258;
          if ((v363 & 1) == 0)
          {
LABEL_13:
            if (v362)
            {
              v101 = [objc_opt_self() mainBundle];
              v102 = String._bridgeToObjectiveC()();
              v103 = v100;
              v104 = [v101 localizedStringForKey:v102 value:0 table:0];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
              v105 = swift_allocObject();
              *(v105 + 16) = xmmword_1006D1F70;
              *(v105 + 56) = &type metadata for String;
              v106 = sub_10000A788();
              *(v105 + 32) = v94;
              *(v105 + 40) = v96;
              *(v105 + 96) = &type metadata for String;
              *(v105 + 104) = v106;
              v107 = v364;
              *(v105 + 64) = v106;
              *(v105 + 72) = v107;
              *(v105 + 80) = v103;
              String.init(format:_:)();

              AttributeContainer.init()();
              v108 = v352;
              AttributedString.init(_:attributes:)();
              v373 = v81;

              AttributedString.subscript.setter();
              v109 = v369;
              if (v366)
              {
                v373 = v366;
                sub_10005FAB0();

                AttributedString.subscript.setter();
              }

              v109(v326, v327);
              return (*(v368 + 32))(v80, v108, v330);
            }

            sub_1004C3650(v94, v96, v364, v100, v81, v366, v80);

LABEL_106:

            return v369(v326, v327);
          }

          goto LABEL_86;
        }
      }

      else
      {
        if ((v207 & 1) != 0 || v206 != 46)
        {
          v220 = [v201 localizedShortUnitStringForDistanceUnit:v204];
          if (!v220)
          {
            goto LABEL_79;
          }

          v214 = v220;
          v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v219 = v221;
        }

        else
        {
          v212 = [v201 unitManager];
          if (!v212)
          {
            goto LABEL_114;
          }

          v213 = v212;
          v214 = [v212 userLapLengthHKUnit];

          v215 = [v201 localizedShortUnitStringForDistanceUnit:FIUIDistanceUnitForHKUnit()];
          if (!v215)
          {

            goto LABEL_79;
          }

          v216 = v215;
          v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v219 = v218;

          v205 = v351;
        }

        if ((v205 - 2) < 2)
        {

          v222 = FIUINumberOfUnitsInPaceForPaceFormat();
          v223 = [objc_opt_self() mainBundle];
          v224 = String._bridgeToObjectiveC()();
          v225 = [v223 localizedStringForKey:v224 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v226 = swift_allocObject();
          *(v226 + 16) = xmmword_1006D1F70;
          v227 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v222];
          v84 = v331;
          *(v226 + 56) = sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
          *(v226 + 64) = sub_1001983C8();
          *(v226 + 32) = v227;
          *(v226 + 96) = &type metadata for String;
          *(v226 + 104) = sub_10000A788();
          *(v226 + 72) = v217;
          *(v226 + 80) = v219;
          v81 = v370;
          v364 = String.init(format:_:)();
          v211 = v228;

          goto LABEL_80;
        }

        if (v205 == 1)
        {

          v229 = [objc_opt_self() mainBundle];
          v230 = String._bridgeToObjectiveC()();
          v231 = [v229 localizedStringForKey:v230 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v232 = swift_allocObject();
          *(v232 + 16) = xmmword_1006D46C0;
          v373 = v217;
          v374 = v219;
          sub_10000FCBC();
          v233 = StringProtocol.localizedUppercase.getter();
          v235 = v234;
          *(v232 + 56) = &type metadata for String;
          v81 = v370;
          *(v232 + 64) = sub_10000A788();
          *(v232 + 32) = v233;
          *(v232 + 40) = v235;
          v84 = v331;

          v364 = String.init(format:_:)();
          v211 = v236;

          goto LABEL_80;
        }
      }

LABEL_79:
      v364 = 0;
      v211 = 0xE000000000000000;
      goto LABEL_80;
    case 38:
      v195 = [objc_opt_self() minuteUnit];
      [v83 doubleValueForUnit:v195];

      v196.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      v197 = [objc_opt_self() stringWithNumber:v196.super.super.isa decimalPrecision:1 roundingMode:6];
      if (v197)
      {
        v198 = v197;
        v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v200;
      }

      else
      {
        v96 = 0xE100000000000000;
        v199 = 48;
      }

      v318 = [objc_opt_self() mainBundle];
      v319 = String._bridgeToObjectiveC()();
      v320 = [v318 localizedStringForKey:v319 value:0 table:0];

      v321 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v323 = v322;

      v373 = v321;
      v374 = v323;
      sub_10000FCBC();
      v364 = StringProtocol.localizedUppercase.getter();
      v100 = v324;

      v80 = v371;
      v94 = v199;
      if ((v363 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_86;
    default:
      v158 = [objc_opt_self() countUnit];
      [v83 doubleValueForUnit:v158];
      v160 = v159;

      if (qword_1008DACA0 != -1)
      {
        swift_once();
      }

      v161 = qword_1008EFE90;
      v162 = objc_allocWithZone(NSNumber);
      v163 = v161;
      v164 = [v162 initWithDouble:v160];
      v165 = [v163 stringFromNumber:v164];

      v166 = v369;
      if (v165)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v373 = v366;
        sub_10005FAB0();

        v167 = v326;
        AttributeContainer.subscript.setter();
        v168 = v327;
        (*(v78 + 16))(v355, v167, v327);
        AttributedString.init(_:attributes:)();

        return v166(v167, v168);
      }

      goto LABEL_75;
  }
}

void sub_10005F784(uint64_t a1, uint64_t *a2)
{
  sub_10005F988();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

unint64_t sub_10005F82C()
{
  result = qword_1008F57D0;
  if (!qword_1008F57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F57D0);
  }

  return result;
}

void sub_10005F884(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for ActivityDashboardCardCell();
  v20.receiver = v4;
  v20.super_class = v9;
  objc_msgSendSuper2(&v20, "bounds");
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19.receiver = v4;
  v19.super_class = v9;
  objc_msgSendSuper2(&v19, "setBounds:", a1, a2, a3, a4);
  [v4 bounds];
  v22.origin.x = v11;
  v22.origin.y = v13;
  v22.size.width = v15;
  v22.size.height = v17;
  if (!CGRectEqualToRect(v21, v22))
  {
    v18 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling;
    if (*(v4 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling))
    {
      sub_1006712E8(0, v4);
      *(v4 + v18) = 0;
      sub_1006712E8(1, v4);
      *(v4 + v18) = 1;
    }
  }
}

unint64_t sub_10005F988()
{
  result = qword_1008DC590;
  if (!qword_1008DC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC590);
  }

  return result;
}

unint64_t sub_10005F9DC(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10005FBE4(&qword_1008E4E10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100060C00(a1, v2, &type metadata accessor for UUID, &qword_1008EAFA0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10005FAB0()
{
  result = qword_1008DC588;
  if (!qword_1008DC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC588);
  }

  return result;
}

uint64_t sub_10005FB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005FB54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005FB9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005FBE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005FC2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005FC74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005FCBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005FD04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v110 = a2;
  v3 = type metadata accessor for MetricCardLineChartView(0);
  __chkstk_darwin(v3);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100140278(&qword_1008F4CF0, &qword_1006FD260);
  __chkstk_darwin(v109);
  v7 = &v83 - v6;
  v107 = sub_100140278(&qword_1008F4CF8, &qword_1006FD268);
  __chkstk_darwin(v107);
  v108 = &v83 - v8;
  v9 = type metadata accessor for Locale.Language();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008E3708, &qword_1006E09A0);
  __chkstk_darwin(v11 - 8);
  v103 = &v83 - v12;
  v13 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v13 - 8);
  v97 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TimeZone();
  __chkstk_darwin(v15 - 8);
  v94 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Calendar();
  __chkstk_darwin(v17 - 8);
  v92 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Locale();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v91 = &v83 - v21;
  v22 = sub_100140278(&qword_1008E36F8, &qword_1006E0990);
  __chkstk_darwin(v22 - 8);
  v90 = &v83 - v23;
  v24 = sub_100140278(&qword_1008E3700, &qword_1006E0998);
  __chkstk_darwin(v24 - 8);
  v89 = &v83 - v25;
  v26 = type metadata accessor for Calendar.Component();
  v88 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v111 = *(v29 - 8);
  v112 = v29;
  __chkstk_darwin(v29);
  v104 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MetricFormattingHelper(0);
  __chkstk_darwin(v31 - 8);
  v105 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MetricCardBarChartView(0);
  __chkstk_darwin(v33);
  v35 = (&v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v98 = &v83 - v37;
  v106 = sub_100140278(&qword_1008F4D00, &qword_1006FD270);
  __chkstk_darwin(v106);
  v99 = &v83 - v38;
  v39 = type metadata accessor for MetricCardView(0);
  v40 = v39;
  v41 = *(a1 + *(v39 + 24));
  if (v41 <= 0x11 && ((1 << v41) & 0x21D00) != 0)
  {
    v42 = a1 + *(v39 + 20);
    v43 = v42 + *(type metadata accessor for MetricCard(0) + 36);
    v44 = *(v43 + 16);

    sub_10005C1A0(v41);
    v45 = Color.init(uiColor:)();
    sub_100060ED0(a1 + *(v40 + 36), &v5[v3[7]], type metadata accessor for MetricFormattingHelper);
    v46 = *(v43 + 32);
    v47 = *(v43 + 40);
    v48 = type metadata accessor for MetricDetailViewModel(0);
    (*(v111 + 16))(&v5[v3[9]], v43 + *(v48 + 44), v112);
    *v5 = v41;
    *(v5 + 1) = v44;
    *(v5 + 2) = v45;
    v49 = &v5[v3[8]];
    *v49 = v46;
    v49[8] = v47;
    sub_10005BE1C(&qword_1008F4D20, type metadata accessor for MetricCardLineChartView, &unk_1006EE768);
    View.accessibilityHidden(_:)();
    sub_1000611CC(v5, type metadata accessor for MetricCardLineChartView);
    v50 = &qword_1008F4CF0;
    v51 = &qword_1006FD260;
    sub_10001B104(v7, v108, &qword_1008F4CF0, &qword_1006FD260);
    swift_storeEnumTagMultiPayload();
    sub_100061430();
    sub_1000612F0();
  }

  else
  {
    v53 = a1 + *(v39 + 20);
    v54 = type metadata accessor for MetricCard(0);
    v55 = v53 + *(v54 + 36);
    v86 = *(v55 + 16);

    sub_10005C1A0(v41);
    v85 = Color.init(uiColor:)();
    v56 = *(v40 + 36);
    v84 = type metadata accessor for MetricFormattingHelper;
    sub_100060ED0(a1 + v56, v105, type metadata accessor for MetricFormattingHelper);
    v57 = *(v55 + 32);
    v87 = *(v55 + 40);
    v117[3] = v54;
    v117[4] = &off_1008627E8;
    v58 = sub_100005994(v117);
    sub_100060ED0(v53, v58, type metadata accessor for MetricCard);
    v59 = type metadata accessor for MetricDetailViewModel(0);
    v60 = *(v111 + 16);
    v61 = v55 + *(v59 + 44);
    v62 = v104;
    v63 = v112;
    v60(v104, v61, v112);
    *v35 = swift_getKeyPath();
    sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
    swift_storeEnumTagMultiPayload();
    *(v35 + v33[5]) = v41;
    *(v35 + v33[6]) = v86;
    *(v35 + v33[7]) = v85;
    sub_100060ED0(v105, v35 + v33[9], v84);
    v64 = v35 + v33[8];
    *v64 = v57;
    v65 = v87;
    v64[8] = v87;
    sub_100007C5C(v117, v35 + v33[10]);
    v60(v35 + v33[11], v62, v63);
    v86 = v57;
    v66 = v88;
    v67 = &enum case for Calendar.Component.day(_:);
    if ((v65 & (v57 == 1)) == 0)
    {
      v67 = &enum case for Calendar.Component.hour(_:);
    }

    (*(v88 + 104))(v28, *v67, v26);
    (*(v66 + 32))(v35 + v33[12], v28, v26);
    v68 = type metadata accessor for Date.FormatStyle.DateStyle();
    (*(*(v68 - 8) + 56))(v89, 1, 1, v68);
    v69 = type metadata accessor for Date.FormatStyle.TimeStyle();
    (*(*(v69 - 8) + 56))(v90, 1, 1, v69);
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    static TimeZone.autoupdatingCurrent.getter();
    static FormatStyleCapitalizationContext.unknown.getter();
    Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    v70 = [objc_allocWithZone(NSDateFormatter) init];
    *(v35 + v33[14]) = v70;
    v71 = v70;
    v72 = v93;
    static Locale.current.getter();
    v73 = v100;
    Locale.language.getter();
    (*(v95 + 8))(v72, v96);
    v74 = v103;
    Locale.Language.languageCode.getter();
    (*(v101 + 8))(v73, v102);
    v75 = type metadata accessor for Locale.LanguageCode();
    v76 = *(v75 - 8);
    if ((*(v76 + 48))(v74, 1, v75) == 1)
    {
      sub_10000EA04(v74, &qword_1008E3708, &qword_1006E09A0);
    }

    else
    {
      v77 = Locale.LanguageCode.identifier.getter();
      v79 = v78;
      (*(v76 + 8))(v74, v75);
      v115 = v77;
      v116 = v79;
      v113 = 26746;
      v114 = 0xE200000000000000;
      sub_10000FCBC();
      if ((StringProtocol.contains<A>(_:)() & 1) == 0)
      {
        v115 = v77;
        v116 = v79;
        v113 = 24938;
        v114 = 0xE200000000000000;
        StringProtocol.contains<A>(_:)();
      }
    }

    v80 = v86;
    v81 = String._bridgeToObjectiveC()();
    [v71 setLocalizedDateFormatFromTemplate:v81];

    sub_100060F38(v80, v87);
    (*(v111 + 8))(v104, v112);
    sub_1000611CC(v105, type metadata accessor for MetricFormattingHelper);
    sub_100005A40(v117);
    v82 = v98;
    sub_10006128C(v35, v98);
    sub_10005BE1C(&qword_1008F4D08, type metadata accessor for MetricCardBarChartView, &unk_1006DF9B8);
    v7 = v99;
    View.accessibilityHidden(_:)();
    sub_1000611CC(v82, type metadata accessor for MetricCardBarChartView);
    v50 = &qword_1008F4D00;
    v51 = &qword_1006FD270;
    sub_10001B104(v7, v108, &qword_1008F4D00, &qword_1006FD270);
    swift_storeEnumTagMultiPayload();
    sub_100061430();
    sub_1000612F0();
  }

  _ConditionalContent<>.init(storage:)();
  return sub_10000EA04(v7, v50, v51);
}

_WORD *storeEnumTagSinglePayload for TrendsCoachingError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t type metadata accessor for MetricCardLineChartView(uint64_t a1)
{
  result = qword_1008EC368;
  if (!qword_1008EC368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100060C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_10005FBE4(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t type metadata accessor for MetricCardBarChartView(uint64_t a1)
{
  result = qword_1008E2830;
  if (!qword_1008E2830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrendsCoachingError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_100060E68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100140278(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100060ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100060F38(uint64_t a1, char a2)
{
  v4 = sub_100140278(&unk_1008E51A0, &unk_1006E09C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = *(v8 + 104);
    if (a1)
    {
      v12(v11, enum case for Calendar.Component.day(_:), v7, v9);
    }

    else
    {
      v12(v11, enum case for Calendar.Component.hour(_:), v7, v9);
    }
  }

  else
  {
    (*(v8 + 104))(v11, enum case for Calendar.Component.month(_:), v7, v9);
  }

  v13 = type metadata accessor for Calendar();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
  sub_10000EA04(v6, &unk_1008E51A0, &unk_1006E09C0);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000611CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10006122C()
{
  result = qword_1008F9820;
  if (!qword_1008F9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F9820);
  }

  return result;
}

uint64_t sub_10006128C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricCardBarChartView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000612F0()
{
  result = qword_1008F4D18;
  if (!qword_1008F4D18)
  {
    sub_100141EEC(&qword_1008F4CF0, &qword_1006FD260);
    sub_10005BE1C(&qword_1008F4D20, type metadata accessor for MetricCardLineChartView, &unk_1006EE768);
    sub_10005BE1C(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4D18);
  }

  return result;
}

unint64_t sub_1000613DC()
{
  result = qword_1008F5700;
  if (!qword_1008F5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5700);
  }

  return result;
}

unint64_t sub_100061430()
{
  result = qword_1008F4D10;
  if (!qword_1008F4D10)
  {
    sub_100141EEC(&qword_1008F4D00, &qword_1006FD270);
    sub_10005BE1C(&qword_1008F4D08, type metadata accessor for MetricCardBarChartView, &unk_1006DF9B8);
    sub_10005BE1C(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4D10);
  }

  return result;
}

uint64_t sub_10006151C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100061584()
{
  result = qword_1008F5728;
  if (!qword_1008F5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5728);
  }

  return result;
}

uint64_t sub_1000615D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F4CA8, &qword_1006FD1C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100061648()
{
  result = qword_1008F5750;
  if (!qword_1008F5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5750);
  }

  return result;
}

unint64_t sub_10006169C()
{
  result = qword_1008F56F8;
  if (!qword_1008F56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F56F8);
  }

  return result;
}

unint64_t sub_1000616F0()
{
  result = qword_1008F4CC0;
  if (!qword_1008F4CC0)
  {
    sub_100141EEC(&qword_1008F4CB0, &qword_1006FD1D0);
    sub_1005C6E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4CC0);
  }

  return result;
}

uint64_t sub_10006177C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000617C4(uint64_t a1)
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

uint64_t sub_1000617E8(uint64_t result, int a2)
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

__n128 sub_100061808@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_100140278(&qword_1008E1C78, &unk_1006DE9F0);
  __chkstk_darwin(v3 - 8);
  v48 = &v44 - v4;
  v5 = sub_100140278(&qword_1008E28A0, &qword_1006DFA10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v49 = sub_100140278(&qword_1008E28A8, &qword_1006DFA18);
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v44 - v9;
  v53 = sub_100140278(&qword_1008E28B0, &qword_1006DFA20);
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v45 = &v44 - v10;
  v55 = sub_100140278(&qword_1008E28B8, &qword_1006DFA28);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = &v44 - v11;
  v58 = sub_100140278(&qword_1008E28C0, &qword_1006DFA30);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = &v44 - v12;
  v63 = v2;
  sub_100140278(&qword_1008E28C8, &qword_1006DFA38);
  sub_100233498();
  Chart.init(content:)();
  v13 = sub_10014A6B0(&qword_1008E28F8, &qword_1008E28A0, &qword_1006DFA10, &protocol conformance descriptor for Chart<A>);
  View.chartYAxis<A>(content:)();
  (*(v6 + 8))(v8, v5);
  v46 = type metadata accessor for MetricCardBarChartView(0);
  v14 = v2;
  v15 = *(v2 + *(v46 + 24));
  v62 = v2;
  v44 = v2;
  sub_100062474(sub_10023351C, v61, v15);
  v17 = sub_100062430(v16);
  LOBYTE(v6) = v18;

  v19 = fmax(*&v17, 1.0) * 1.6;
  if (v6)
  {
    v19 = 1.6;
  }

  v64 = 0;
  v65 = v19;
  v20 = type metadata accessor for ScaleType();
  v21 = *(*(v20 - 8) + 56);
  v22 = v48;
  v21(v48, 1, 1, v20);
  v23 = sub_100140278(&qword_1008E2900, &unk_1006DFA58);
  *&v66 = v5;
  *(&v66 + 1) = &type metadata for BuilderEmpty;
  *&v67 = v13;
  *(&v67 + 1) = &protocol witness table for BuilderEmpty;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_10023353C();
  v26 = v49;
  v27 = v47;
  View.chartYScale<A>(domain:type:)();
  sub_10000EA04(v22, &qword_1008E1C78, &unk_1006DE9F0);
  (*(v51 + 8))(v27, v26);
  v28 = sub_1000625DC(*(v14 + *(v46 + 32)), *(v14 + *(v46 + 32) + 8), 1.0);
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  v64 = v29;
  v21(v22, 1, 1, v20);
  v30 = sub_100140278(&qword_1008E1D00, &qword_1006DEAA0);
  *&v66 = v26;
  *(&v66 + 1) = v23;
  *&v67 = OpaqueTypeConformance2;
  *(&v67 + 1) = v25;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_1002335B8();
  v33 = v50;
  v34 = v22;
  v35 = v53;
  v36 = v45;
  View.chartXScale<A>(domain:type:)();
  sub_10000EA04(v34, &qword_1008E1C78, &unk_1006DE9F0);

  (*(v54 + 8))(v36, v35);
  v60 = v44;
  sub_100140278(&qword_1008E2910, &qword_1006DFA68);
  *&v66 = v35;
  *(&v66 + 1) = v30;
  *&v67 = v31;
  *(&v67 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  sub_10006468C();
  v37 = v52;
  v38 = v55;
  View.chartXAxis<A>(content:)();
  (*(v56 + 8))(v33, v38);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v39 = v59;
  (*(v57 + 32))(v59, v37, v58);
  v40 = v39 + *(sub_100140278(&qword_1008E2950, &qword_1006DFA88) + 36);
  v41 = v71;
  *(v40 + 64) = v70;
  *(v40 + 80) = v41;
  *(v40 + 96) = v72;
  v42 = v67;
  *v40 = v66;
  *(v40 + 16) = v42;
  result = v69;
  *(v40 + 32) = v68;
  *(v40 + 48) = result;
  return result;
}

uint64_t sub_100062080(uint64_t a1)
{
  v2 = type metadata accessor for MetricCardBarChartView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v9[1] = *(a1 + *(v5 + 32));
  swift_getKeyPath();
  sub_100062284(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_10006128C(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  sub_100140278(&qword_1008E29B8, &qword_1006DFAF0);
  sub_100140278(&qword_1008E28E0, &qword_1006DFA40);
  sub_10014A6B0(&qword_1008E29C0, &qword_1008E29B8, &qword_1006DFAF0, &protocol conformance descriptor for [A]);
  sub_100018D14(&qword_1008DEF18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1000622E8();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100062284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricCardBarChartView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000622E8()
{
  result = qword_1008E28D8;
  if (!qword_1008E28D8)
  {
    sub_100141EEC(&qword_1008E28E0, &qword_1006DFA40);
    sub_100141EEC(&qword_1008E28E8, &qword_1006DFA48);
    sub_100141EEC(&qword_1008E28F0, &qword_1006DFA50);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E28D8);
  }

  return result;
}

uint64_t sub_100062430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

void sub_100062474(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_100185AF4(0, v4, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = *(type metadata accessor for MetricChartData(0) - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(&v14, v9);
      if (v3)
      {
        break;
      }

      v11 = v14;
      v15 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_100185AF4((v12 > 1), v13 + 1, 1);
        v7 = v15;
      }

      v7[2] = v13 + 1;
      v7[v13 + 4] = v11;
      v9 += v10;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000625DC(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2, double a3)
{
  v3 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E5C70, qword_1006F0480);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100062880(a1, v3 & 1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000EA04(v11, &qword_1008E5C70, qword_1006F0480);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_100140278(&unk_1008E51C0, &qword_1006D8E40);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1006D1F70;
    DateInterval.start.getter();
    DateInterval.end.getter();
    Date.addingTimeInterval(_:)();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 8))(v15, v12);
    return v17;
  }
}

uint64_t sub_100062880@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v233) = a2;
  v234 = a1;
  v235 = a3;
  v3 = sub_100140278(&unk_1008E3FB0, &unk_1006DCB80);
  __chkstk_darwin(v3 - 8);
  v5 = (&v195 - v4);
  v6 = sub_100140278(&unk_1008E51A0, &unk_1006E09C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v195 - v7;
  v9 = type metadata accessor for Calendar.Identifier();
  v217 = *(v9 - 8);
  v218 = v9;
  __chkstk_darwin(v9);
  v215 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar.Component();
  v228 = *(v11 - 8);
  v229 = v11;
  __chkstk_darwin(v11);
  v220 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for DateComponents();
  v232 = *(v236 - 1);
  __chkstk_darwin(v236);
  v14 = &v195 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v227 = &v195 - v16;
  v17 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v17 - 8);
  v210 = &v195 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v219 = &v195 - v20;
  __chkstk_darwin(v21);
  v23 = &v195 - v22;
  __chkstk_darwin(v24);
  v201 = &v195 - v25;
  __chkstk_darwin(v26);
  v208 = &v195 - v27;
  __chkstk_darwin(v28);
  v216 = (&v195 - v29);
  __chkstk_darwin(v30);
  v207 = &v195 - v31;
  __chkstk_darwin(v32);
  v214 = &v195 - v33;
  __chkstk_darwin(v34);
  v200 = &v195 - v35;
  __chkstk_darwin(v36);
  v206 = &v195 - v37;
  __chkstk_darwin(v38);
  v213 = &v195 - v39;
  v40 = type metadata accessor for Calendar();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v195 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v195 - v45;
  v47 = type metadata accessor for Date();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v202 = &v195 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v209 = &v195 - v51;
  __chkstk_darwin(v52);
  v226 = &v195 - v53;
  __chkstk_darwin(v54);
  v197 = &v195 - v55;
  __chkstk_darwin(v56);
  v203 = &v195 - v57;
  __chkstk_darwin(v58);
  v211 = (&v195 - v59);
  __chkstk_darwin(v60);
  v199 = &v195 - v61;
  __chkstk_darwin(v62);
  v204 = &v195 - v63;
  __chkstk_darwin(v64);
  v223 = &v195 - v65;
  __chkstk_darwin(v66);
  v212 = &v195 - v67;
  __chkstk_darwin(v68);
  v222 = &v195 - v69;
  __chkstk_darwin(v70);
  v196 = &v195 - v71;
  __chkstk_darwin(v72);
  v198 = &v195 - v73;
  __chkstk_darwin(v74);
  v205 = &v195 - v75;
  __chkstk_darwin(v76);
  v237 = &v195 - v77;
  Date.init()();
  static Calendar.autoupdatingCurrent.getter();
  v221 = v5;
  if ((v233 & 1) == 0)
  {
    v97 = *(v41 + 56);
    v220 = (v41 + 56);
    v218 = v97;
    v97(v8, 1, 1, v40);
    v98 = type metadata accessor for TimeZone();
    v99 = *(v98 - 8);
    v100 = *(v99 + 56);
    v217 = v98;
    v216 = v100;
    v215 = (v99 + 56);
    (v100)(v5, 1, 1);
    v223 = v8;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.year.setter();
    Calendar.date(from:)();
    v234 = *(v48 + 48);
    if (v234(v23, 1, v47) == 1)
    {
      (*(v232 + 1))(v14, v236);
      (*(v41 + 8))(v46, v40);
      (*(v48 + 8))(v237, v47);
      v95 = v235;
    }

    else
    {
      v214 = v14;
      v231 = v40;
      v233 = v41;
      v101 = *(v48 + 32);
      v213 = (v48 + 32);
      v211 = v101;
      v101(v226, v23, v47);
      sub_100140278(&unk_1008E51B0, &unk_1006D8360);
      v102 = v228;
      v103 = *(v228 + 80);
      v230 = v47;
      v104 = (v103 + 32) & ~v103;
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1006D46C0;
      v106 = v229;
      (v102[13])(v105 + v104, enum case for Calendar.Component.year(_:), v229);
      sub_10001C970(v105);
      swift_setDeallocating();
      (v102[1])(v105 + v104, v106);
      swift_deallocClassInstance();
      v107 = v227;
      Calendar.dateComponents(_:from:)();

      v108 = v219;
      Calendar.date(from:)();
      v109 = (v232 + 8);
      v110 = v236;
      v229 = *(v232 + 1);
      v229(v107, v236);
      v111 = v230;
      if ((v234)(v108, 1) == 1)
      {
        v112 = *(v48 + 8);
        v112(v226, v111);
        v229(v214, v110);
        (*(v233 + 8))(v46, v231);
        v112(v237, v111);
        v23 = v108;
        v95 = v235;
      }

      else
      {
        v225 = v48;
        v140 = v209;
        v141 = v111;
        v211(v209, v108, v111);
        v218(v223, 1, 1, v231);
        v216(v221, 1, 1, v217);
        v142 = v140;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v143 = v210;
        Calendar.date(byAdding:to:wrappingComponents:)();
        v229(v107, v110);
        v144 = v234(v143, 1, v141);
        v145 = v110;
        v95 = v235;
        if (v144 != 1)
        {
          v161 = v202;
          v211(v202, v143, v141);
          v162 = v225;
          v232 = v109;
          v163 = v225[2];
          v163(v222, v142, v141);
          v163(v212, v161, v141);
          DateInterval.init(start:end:)();
          v164 = v162[1];
          v164(v161, v141);
          v164(v142, v141);
          v164(v226, v141);
          v229(v214, v236);
          (*(v233 + 8))(v46, v231);
          v164(v237, v141);
          v165 = 0;
          goto LABEL_33;
        }

        v146 = v225[1];
        v146(v140, v141);
        v146(v226, v141);
        v229(v214, v145);
        (*(v233 + 8))(v46, v231);
        v146(v237, v141);
        v23 = v143;
      }
    }

    v126 = v23;
LABEL_32:
    sub_10000EA04(v126, &unk_1008F73A0, &unk_1006DB450);
    v165 = 1;
    goto LABEL_33;
  }

  v224 = v46;
  v225 = v48;
  v230 = v47;
  v231 = v40;
  v233 = v41;
  if (!v234)
  {
    sub_100140278(&unk_1008E51B0, &unk_1006D8360);
    v113 = v228;
    v114 = v228[9];
    v115 = (*(v228 + 80) + 32) & ~*(v228 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1006D64F0;
    v117 = v116 + v115;
    v118 = v113[13];
    v119 = v229;
    (v118)(v117, enum case for Calendar.Component.year(_:), v229);
    (v118)(v117 + v114, enum case for Calendar.Component.month(_:), v119);
    LODWORD(v234) = enum case for Calendar.Component.day(_:);
    v118(v117 + 2 * v114);
    sub_10001C970(v116);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v120 = v227;
    v121 = v237;
    v122 = v224;
    Calendar.dateComponents(_:from:)();

    v123 = v213;
    Calendar.date(from:)();
    (*(v232 + 1))(v120, v236);
    v124 = v225;
    v125 = v230;
    v236 = v225[6];
    if ((v236)(v123, 1, v230) == 1)
    {
      (*(v233 + 8))(v122, v231);
      (v124[1])(v121, v125);
      v95 = v235;
      v126 = v123;
    }

    else
    {
      v149 = v124[4];
      v150 = v205;
      v227 = (v124 + 4);
      v232 = v149;
      v149();
      v151 = v220;
      (v118)(v220, v234, v119);
      v152 = v206;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      v153 = v230;
      v234 = v113[1];
      (v234)(v151, v119);
      if ((v236)(v152, 1, v153) == 1)
      {
        v154 = v124[1];
        v154(v150, v153);
        (*(v233 + 8))(v224, v231);
        v154(v237, v153);
        v126 = v152;
      }

      else
      {
        v171 = v198;
        (v232)(v198, v152, v153);
        (v118)(v151, enum case for Calendar.Component.second(_:), v119);
        v172 = v200;
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v173 = v230;
        (v234)(v151, v119);
        if ((v236)(v172, 1, v173) != 1)
        {
          v183 = v196;
          (v232)(v196, v172, v173);
          v184 = v225;
          v185 = v150;
          v186 = v173;
          v187 = v225[2];
          v187(v222, v185, v186);
          v187(v212, v183, v186);
          v95 = v235;
          DateInterval.init(start:end:)();
          v188 = v184[1];
          v188(v183, v186);
          v188(v171, v186);
          v188(v185, v186);
          (*(v233 + 8))(v224, v231);
          v188(v237, v186);
          v165 = 0;
          goto LABEL_33;
        }

        v174 = v225[1];
        v174(v171, v173);
        v174(v150, v173);
        (*(v233 + 8))(v224, v231);
        v174(v237, v173);
        v126 = v172;
      }

      v95 = v235;
    }

    goto LABEL_32;
  }

  if (v234 != 1)
  {
    sub_100140278(&unk_1008E51B0, &unk_1006D8360);
    v127 = v228;
    v128 = v228[9];
    v129 = (*(v228 + 80) + 32) & ~*(v228 + 80);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_1006D1F70;
    v131 = v130 + v129;
    v132 = v127[13];
    v133 = v229;
    v132(v131, enum case for Calendar.Component.year(_:), v229);
    v132(v131 + v128, enum case for Calendar.Component.month(_:), v133);
    sub_10001C970(v130);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v134 = v227;
    v135 = v237;
    v136 = v224;
    Calendar.dateComponents(_:from:)();

    v137 = v216;
    Calendar.date(from:)();
    v234 = *(v232 + 1);
    (v234)(v134, v236);
    v138 = v225;
    v139 = v230;
    v232 = v225[6];
    if ((v232)(v137, 1, v230) == 1)
    {
      (*(v233 + 8))(v136, v231);
      (v138[1])(v135, v139);
    }

    else
    {
      v155 = v138[4];
      v156 = v211;
      v228 = v138 + 4;
      v229 = v155;
      (v155)(v211, v137, v139);
      v226 = *(v233 + 56);
      (v226)(v8, 1, 1, v231);
      v157 = type metadata accessor for TimeZone();
      v158 = *(v157 - 8);
      v219 = *(v158 + 56);
      v220 = v157;
      v218 = (v158 + 56);
      (v219)(v221, 1, 1);
      v223 = v8;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v159 = v208;
      Calendar.date(byAdding:to:wrappingComponents:)();
      (v234)(v134, v236);
      if ((v232)(v159, 1, v139) == 1)
      {
        v160 = v138[1];
        v160(v156, v139);
        (*(v233 + 8))(v224, v231);
        v160(v237, v139);
        v137 = v159;
      }

      else
      {
        v175 = v203;
        (v229)(v203, v159, v139);
        (v226)(v223, 1, 1, v231);
        v176 = v175;
        (v219)(v221, 1, 1, v220);
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v177 = v201;
        v178 = v224;
        Calendar.date(byAdding:to:wrappingComponents:)();
        v179 = v230;
        (v234)(v134, v236);
        if ((v232)(v177, 1, v179) != 1)
        {
          v189 = v197;
          (v229)(v197, v177, v179);
          v190 = v225;
          v191 = v179;
          v192 = v225[2];
          v193 = v211;
          v192(v222, v211, v191);
          v192(v212, v189, v191);
          v95 = v235;
          DateInterval.init(start:end:)();
          v194 = v190[1];
          v194(v189, v191);
          v194(v203, v191);
          v194(v193, v191);
          (*(v233 + 8))(v178, v231);
          v194(v237, v191);
          v165 = 0;
          goto LABEL_33;
        }

        v180 = v225[1];
        v180(v176, v179);
        v180(v211, v179);
        (*(v233 + 8))(v178, v231);
        v180(v237, v179);
        v137 = v177;
      }
    }

    v95 = v235;
    v126 = v137;
    goto LABEL_32;
  }

  v79 = v217;
  v78 = v218;
  v80 = v215;
  (*(v217 + 104))(v215, enum case for Calendar.Identifier.gregorian(_:), v218);
  Calendar.init(identifier:)();
  (*(v79 + 8))(v80, v78);
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  v82 = *(v233 + 8);
  v233 += 8;
  v82(v43, v231);
  v83 = v222;
  Date.init()();
  v84 = Date._bridgeToObjectiveC()().super.isa;
  v85 = [(objc_class *)isa hk_startOfFitnessWeekBeforeDate:v84];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v225;
  v87 = v230;
  v236 = v225[1];
  v234 = (v225 + 1);
  (v236)(v83, v230);
  v88 = v228;
  v89 = v229;
  v90 = v220;
  v232 = v228[13];
  (v232)(v220, enum case for Calendar.Component.day(_:), v229);
  v91 = v214;
  v92 = v224;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v228 = v88[1];
  (v228)(v90, v89);
  v93 = v86[6];
  if (v93(v91, 1, v87) == 1)
  {
    v95 = v235;
    v94 = v236;
    v96 = v231;
    (v236)(v223, v87);
LABEL_19:
    v82(v224, v96);
    v94(v237, v87);
    v126 = v91;
    goto LABEL_32;
  }

  v227 = v82;
  v147 = v225[4];
  v148 = v204;
  v226 = (v225 + 4);
  v221 = v147;
  v147(v204, v91, v87);
  (v232)(v90, enum case for Calendar.Component.second(_:), v89);
  v91 = v207;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v87 = v230;
  (v228)(v90, v89);
  if (v93(v91, 1, v87) == 1)
  {
    v94 = v236;
    (v236)(v148, v87);
    v95 = v235;
    v96 = v231;
    v82 = v227;
    v94(v223, v87);
    goto LABEL_19;
  }

  v166 = v199;
  v221(v199, v91, v87);
  v167 = v87;
  v168 = v225[2];
  v169 = v223;
  v168(v222, v223, v167);
  v168(v212, v166, v167);
  v95 = v235;
  DateInterval.init(start:end:)();
  v170 = v236;
  (v236)(v166, v167);
  v170(v148, v167);
  v170(v169, v167);
  (v227)(v92, v231);
  v170(v237, v167);
  v165 = 0;
LABEL_33:
  v181 = type metadata accessor for DateInterval();
  return (*(*(v181 - 8) + 56))(v95, v165, 1, v181);
}