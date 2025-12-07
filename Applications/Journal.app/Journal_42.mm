double sub_100475EC4(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v4 - 8);
  v40 = v38 - v5;
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941D50;
  v7 = a1[3];
  v8 = a1[4];
  v39 = a1;
  sub_10000CA14(a1, v7);
  (*(v8 + 32))(v59, v7, v8);
  v9 = sub_100517E30();
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() tokenWithIcon:v9 text:v10];

  v55 = v59[2];
  v56 = v59[3];
  v57 = v59[4];
  v58 = v60;
  v53 = v59[0];
  v54 = v59[1];
  sub_1001A9170(v59, &v47);
  [v11 setRepresentedObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  sub_1001A911C(v59);
  *(inited + 32) = v11;
  sub_1004742F8(inited, 0, 0xE000000000000000);
  swift_setDeallocating();
  swift_arrayDestroy();
  v38[1] = v2;
  v12 = [v2 searchBar];
  v13 = [v12 searchTextField];

  v14 = [v13 tokens];
  sub_1000065A8(0, &qword_100AD5178, UISearchToken_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
LABEL_29:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_30:
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_31;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_3:
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  do
  {
    v38[0] = v18;
    v19 = v17;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v20 = *(v15 + 8 * v19 + 32);
      }

      v21 = v20;
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if ([v20 representedObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v41 = 0u;
        v42 = 0u;
      }

      v47 = v41;
      v48 = v42;
      if (!*(&v42 + 1))
      {
        sub_100004F84(&v47, &qword_100AD13D0, &unk_100942DB0);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0;
        goto LABEL_6;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        v58 = 0;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v53 = 0u;
        goto LABEL_6;
      }

      if (*(&v53 + 1))
      {
        break;
      }

LABEL_6:
      v49 = v55;
      v50 = v56;
      v51 = v57;
      v52 = v58;
      v47 = v53;
      v48 = v54;
      sub_100004F84(&v47, &qword_100AD68D0, &unk_1009572E0);
      ++v19;
      if (v17 == v16)
      {
        v18 = v38[0];
        goto LABEL_31;
      }
    }

    v49 = v55;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    v22 = v38[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1003E6688(0, *(v22 + 2) + 1, 1, v22);
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v26 = v22;
    if (v25 >= v24 >> 1)
    {
      v26 = sub_1003E6688((v24 > 1), v25 + 1, 1, v22);
    }

    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v27 = v47;
    v41 = v47;
    v42 = v48;
    *(v26 + 2) = v25 + 1;
    v28 = &v26[11 * v25];
    v18 = v26;
    *(v28 + 3) = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    *(v28 + 14) = v46;
    *(v28 + 5) = v30;
    *(v28 + 6) = v31;
    *(v28 + 4) = v29;
    *(v28 + 2) = v27;
  }

  while (v17 != v16);
LABEL_31:

  v32 = type metadata accessor for TaskPriority();
  v33 = v40;
  (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100086C04(v39, &v53);
  type metadata accessor for MainActor();

  v35 = static MainActor.shared.getter();
  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = &protocol witness table for MainActor;
  v36[4] = v34;
  v36[5] = v18;
  sub_100364784(&v53, (v36 + 6));

  sub_1003E9628(0, 0, v33, &unk_100957320, v36);

  return result;
}

uint64_t sub_1004764C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  type metadata accessor for MainActor();
  v6[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[17] = v8;
  v6[18] = v7;

  return _swift_task_switch(sub_100476564, v8, v7);
}

uint64_t sub_100476564()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[15];
    v0[19] = *(Strong + OBJC_IVAR____TtC7Journal25SuggestedSearchController_searchSession);
    v3 = Strong;

    sub_100086C04(v2, (v0 + 2));
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_1004766A0;
    v5 = v0[14];

    return sub_10019E8C8(0, 0, v5, (v0 + 2), 0);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1004766A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;

  sub_100004F84(v4 + 16, &unk_100AE4E00, &qword_1009454C0);
  v5 = *(v3 + 144);
  v6 = *(v3 + 136);

  return _swift_task_switch(sub_100476804, v6, v5);
}

uint64_t sub_100476804()
{
  if (v0[21] == 1)
  {

LABEL_8:
    v6 = v0[1];

    return v6();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {

    goto LABEL_8;
  }

  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_100476928;
  v4 = v0[21];
  v3 = v0[22];

  return sub_100475644(v4, v3);
}

uint64_t sub_100476928()
{
  v1 = *v0;
  v2 = *(*v0 + 184);

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return _swift_task_switch(sub_100476AA8, v4, v3);
}

uint64_t sub_100476AA8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100476B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v7 - 8);
  v46 = &v42 - v8;
  v52 = type metadata accessor for Font.TextStyle();
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for JournalMembershipBadge(0);
  __chkstk_darwin(v51);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v12 = a1;
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  v45 = v12;
  if (!v13)
  {
    goto LABEL_13;
  }

  v42 = v3;
  v43 = a2;
  v44 = a3;
  v66 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v53 = objc_opt_self();
  v15 = v12 + 32;
  v48 = enum case for Font.TextStyle.footnote(_:);
  v47 = (v9 + 104);
  v16 = v13 - 1;
  v17 = v49;
  v18 = v51;
  while (1)
  {
    v19 = *(v15 + 16);
    v60 = *v15;
    v61 = v19;
    v20 = *(v15 + 32);
    v21 = *(v15 + 48);
    v22 = *(v15 + 64);
    v65 = *(v15 + 80);
    v23 = v65;
    v63 = v21;
    v64 = v22;
    v62 = v20;
    if (v65)
    {
      v24 = *(&v64 + 1);
      *v17 = 0;
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = v24;
      *(v17 + 32) = v23;
      *(v17 + 40) = 1;
      v54 = *(v18 + 32);
      v55 = v16;
      v56 = v15;
      v57[0] = 0x4030000000000000;
      v25 = *v47;
      v26 = v50;
      v27 = v48;
      v28 = v52;
      (*v47)(v50, v48, v52);
      sub_1001A9170(&v60, v58);
      sub_10009BA68();

      ScaledMetric.init(wrappedValue:relativeTo:)();
      *&v58[0] = 0x4038000000000000;
      v25(v26, v27, v28);
      ScaledMetric.init(wrappedValue:relativeTo:)();
      *&v58[0] = 0x4040000000000000;
      v29 = v27;
      v30 = v28;
      v16 = v55;
      v15 = v56;
      v25(v26, v29, v30);
      ScaledMetric.init(wrappedValue:relativeTo:)();
      v31 = [objc_opt_self() currentTraitCollection];
      v32 = sub_1003AC4EC(v31);

      sub_100479D70(v17, type metadata accessor for JournalMembershipBadge);
      if (v32)
      {
        goto LABEL_10;
      }

      if (*(&v63 + 1))
      {
LABEL_7:
        v33 = String._bridgeToObjectiveC()();
        v32 = [objc_opt_self() _systemImageNamed:v33];

        goto LABEL_10;
      }
    }

    else
    {
      sub_1001A9170(&v60, v58);
      if (*(&v63 + 1))
      {
        goto LABEL_7;
      }
    }

    v32 = 0;
LABEL_10:
    v34 = String._bridgeToObjectiveC()();
    v35 = [v53 tokenWithIcon:v32 text:v34];

    v58[3] = v63;
    v58[4] = v64;
    v59 = v65;
    v58[0] = v60;
    v58[1] = v61;
    v58[2] = v62;
    sub_1001A9170(&v60, v57);
    [v35 setRepresentedObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    sub_1001A911C(&v60);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!v16)
    {
      break;
    }

    --v16;
    v15 += 88;
  }

  v14 = v66;
  a2 = v43;
  a3 = v44;
LABEL_13:
  a1 = v45;
LABEL_15:
  sub_1004742F8(v14, a2, a3);

  v36 = type metadata accessor for TaskPriority();
  v37 = v46;
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v39 = static MainActor.shared.getter();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = &protocol witness table for MainActor;
  v40[4] = v38;
  v40[5] = a1;
  v40[6] = a2;
  v40[7] = a3;

  sub_1003E9628(0, 0, v37, &unk_100957308, v40);

  return result;
}

uint64_t sub_1004770CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[13] = v9;
  v7[14] = v8;

  return _swift_task_switch(sub_100477168, v9, v8);
}

uint64_t sub_100477168()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0[15] = *(Strong + OBJC_IVAR____TtC7Journal25SuggestedSearchController_searchSession);
    v2 = Strong;

    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_10047727C;
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[9];

    return sub_1001A2CE0(v6, v4, v5);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10047727C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = a2;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);

  return _swift_task_switch(sub_1004773C8, v6, v5);
}

uint64_t sub_1004773C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_1004774D4;
    v4 = v0[17];
    v3 = v0[18];

    return sub_100475644(v4, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1004774D4()
{
  v1 = *v0;
  v2 = *(*v0 + 152);

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_100477654, v4, v3);
}

uint64_t sub_100477654()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100477714()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedSearchController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100477830(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v4 - 8);
  v6 = &v60 - v5;
  v7 = type metadata accessor for EntryListType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v60 - v12;
  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 window];

  if (v16)
  {

    v17 = [a1 searchBar];
    v18 = [v17 searchTextField];

    v19 = [v18 text];
    if (v19)
    {
      v61 = v9;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = [v2 searchBar];
      v23 = [v22 searchTextField];

      v24 = [v23 tokens];
      sub_1000065A8(0, &qword_100AD5178, UISearchToken_ptr);
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v25 >> 62)
      {
LABEL_47:
        v26 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v65 = v6;
      v66 = v13;
      v62 = v21;
      v64 = v2;
      if (!v26)
      {
        v67 = _swiftEmptyArrayStorage;
        goto LABEL_31;
      }

      v6 = 0;
      v67 = _swiftEmptyArrayStorage;
      v21 = &unk_1009572E0;
      while (1)
      {
        v13 = v6;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v13 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v27 = *(v25 + 8 * v13 + 32);
          }

          v28 = v27;
          v6 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v29 = [v27 representedObject];
          if (v29)
          {
            v2 = v29;
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v68 = 0u;
            v69 = 0u;
          }

          v74 = v68;
          v75 = v69;
          if (!*(&v69 + 1))
          {
            sub_100004F84(&v74, &qword_100AD13D0, &unk_100942DB0);
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v84 = 0u;
            v85 = 0;
            goto LABEL_10;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            v85 = 0;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v80 = 0u;
            goto LABEL_10;
          }

          if (*(&v80 + 1))
          {
            break;
          }

LABEL_10:
          v76 = v82;
          v77 = v83;
          v78 = v84;
          v79 = v85;
          v74 = v80;
          v75 = v81;
          sub_100004F84(&v74, &qword_100AD68D0, &unk_1009572E0);
          ++v13;
          if (v6 == v26)
          {
            goto LABEL_31;
          }
        }

        v76 = v82;
        v77 = v83;
        v78 = v84;
        v79 = v85;
        v74 = v80;
        v75 = v81;
        v30 = v67;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_1003E6688(0, *(v30 + 2) + 1, 1, v30);
        }

        v2 = *(v30 + 2);
        v32 = *(v30 + 3);
        if (v2 >= v32 >> 1)
        {
          v30 = sub_1003E6688((v32 > 1), v2 + 1, 1, v30);
        }

        v70 = v76;
        v71 = v77;
        v72 = v78;
        v73 = v79;
        v33 = v74;
        v68 = v74;
        v69 = v75;
        *(v30 + 2) = v2 + 1;
        v67 = v30;
        v34 = &v30[11 * v2];
        *(v34 + 3) = v69;
        v35 = v70;
        v36 = v71;
        v37 = v72;
        *(v34 + 14) = v73;
        *(v34 + 5) = v36;
        *(v34 + 6) = v37;
        *(v34 + 4) = v35;
        *(v34 + 2) = v33;
        if (v6 == v26)
        {
LABEL_31:

          v38 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_currentEntryListType;
          v39 = v64;
          swift_beginAccess();
          v40 = v66;
          sub_100022B50(&v39[v38], v66);
          v41 = sub_1000F24EC(&qword_100AD47A0, &qword_100941E20);
          v42 = *(*(v41 - 8) + 56);
          v43 = v61;
          v42(v61, 2, 2, v41);
          v44 = sub_100023858(v40, v43);
          sub_100479D70(v43, type metadata accessor for EntryListType);
          sub_100479D70(v40, type metadata accessor for EntryListType);
          if ((v44 & 1) == 0 && (sub_100478038() & 1) == 0)
          {
            if (qword_100AD0A58 != -1)
            {
              swift_once();
            }

            if (sub_100771E70())
            {
              v45 = v66;
              v42(v66, 2, 2, v41);
              swift_beginAccess();
              sub_100479A7C(v45, &v39[v38]);
              swift_endAccess();
              sub_100479D70(v45, type metadata accessor for EntryListType);
              v46 = *&v39[OBJC_IVAR____TtC7Journal25SuggestedSearchController_entryListViewModel];
              sub_100022B50(&v39[v38], v43);
              v47 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
              swift_beginAccess();
              sub_100479AE0(v43, v46 + v47);
              swift_endAccess();
            }
          }

          v48 = [v39 traitCollection];
          v49 = [v48 userInterfaceIdiom];

          v51 = v62;
          v50 = v63;
          if (!v49)
          {
            v52 = HIBYTE(v62) & 0xF;
            if ((v62 & 0x2000000000000000) == 0)
            {
              v52 = v63 & 0xFFFFFFFFFFFFLL;
            }

            if (!v52 && !*(v67 + 2))
            {
              *&v82 = 0;
              v80 = 0u;
              v81 = 0u;
              UIViewController.contentUnavailableConfiguration.setter();
              sub_10055AEAC();
            }
          }

          v53 = sub_1004722E0();
          v54 = type metadata accessor for TaskPriority();
          v55 = v65;
          (*(*(v54 - 8) + 56))(v65, 1, 1, v54);
          v56 = swift_allocObject();
          swift_unknownObjectWeakInit();
          type metadata accessor for MainActor();

          v57 = static MainActor.shared.getter();
          v58 = swift_allocObject();
          *(v58 + 16) = v57;
          *(v58 + 24) = &protocol witness table for MainActor;
          *(v58 + 32) = v56;
          *(v58 + 40) = v50;
          v59 = v67;
          *(v58 + 48) = v51;
          *(v58 + 56) = v59;
          *(v58 + 64) = v53 & 1;

          sub_1003E9628(0, 0, v55, &unk_1009572F8, v58);

          return;
        }
      }
    }
  }
}

uint64_t sub_100478038()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v60 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v59 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for CustomRecentlyDeletedSearchSuggestionItem(0);
  __chkstk_darwin(v58);
  v57 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for UUID();
  v73 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntryListType(0);
  __chkstk_darwin(v8 - 8);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = v56 - v12;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v69 = v56 - v15;
  v16 = [v0 searchBar];
  v17 = [v16 searchTextField];

  v18 = [v17 tokens];
  sub_1000065A8(0, &qword_100AD5178, UISearchToken_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
LABEL_48:
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v10;
  v70 = v1;
  if (!v21)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v10 = 0;
  v22 = _swiftEmptyArrayStorage;
  while (2)
  {
    v71 = v22;
    v23 = v10;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v20 + 16))
        {
          goto LABEL_46;
        }

        v24 = *(v19 + 8 * v23 + 32);
      }

      v25 = v24;
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v26 = [v24 representedObject];
      if (v26)
      {
        v1 = v26;
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v74 = 0u;
        v75 = 0u;
      }

      v80 = v74;
      v81 = v75;
      if (!*(&v75 + 1))
      {
        sub_100004F84(&v80, &qword_100AD13D0, &unk_100942DB0);
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0.0;
        goto LABEL_7;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        v91 = 0.0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v86 = 0u;
        goto LABEL_7;
      }

      if (*(&v86 + 1))
      {
        break;
      }

LABEL_7:
      v82 = v88;
      v83 = v89;
      v84 = v90;
      v85 = v91;
      v80 = v86;
      v81 = v87;
      sub_100004F84(&v80, &qword_100AD68D0, &unk_1009572E0);
      ++v23;
      if (v10 == v21)
      {
        v22 = v71;
        goto LABEL_29;
      }
    }

    v82 = v88;
    v83 = v89;
    v84 = v90;
    v85 = v91;
    v80 = v86;
    v81 = v87;
    v27 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1003E6688(0, *(v27 + 2) + 1, 1, v27);
    }

    v1 = *(v27 + 2);
    v29 = *(v27 + 3);
    v30 = v27;
    if (v1 >= v29 >> 1)
    {
      v30 = sub_1003E6688((v29 > 1), v1 + 1, 1, v27);
    }

    v76 = v82;
    v77 = v83;
    v78 = v84;
    v79 = v85;
    v31 = v80;
    v74 = v80;
    v75 = v81;
    *(v30 + 2) = v1 + 1;
    v22 = v30;
    v32 = &v30[11 * v1];
    *(v32 + 3) = v75;
    v33 = v76;
    v34 = v77;
    v35 = v78;
    v32[14] = v79;
    *(v32 + 5) = v34;
    *(v32 + 6) = v35;
    *(v32 + 4) = v33;
    *(v32 + 2) = v31;
    if (v10 != v21)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v36 = *(v22 + 2);
  v67 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_currentEntryListType;
  swift_beginAccess();
  v10 = v65;
  v20 = v69;
  v66 = v36;
  if (v36)
  {
    v37 = 0;
    v56[1] = "AppNavSidebarController";
    v61 = (v73 + 8);
    v62 = (v73 + 32);
    v38 = 4;
    v71 = v22;
    do
    {
      if (v37 >= *(v22 + 2))
      {
        goto LABEL_47;
      }

      v39 = *&v22[v38 + 2];
      v86 = *&v22[v38];
      v87 = v39;
      v40 = *&v22[v38 + 4];
      v41 = *&v22[v38 + 6];
      v42 = *&v22[v38 + 8];
      v91 = v22[v38 + 10];
      v89 = v41;
      v90 = v42;
      v88 = v40;
      v43 = *(&v86 + 1);
      v73 = v86;
      sub_100022B50(v70 + v67, v20);
      v44 = v20;
      v45 = v68;
      sub_100022B50(v44, v68);
      v46 = sub_1000F24EC(&qword_100AD47A0, &qword_100941E20);
      v47 = *(v46 - 8);
      v1 = *(v47 + 48);
      v19 = v47 + 48;
      if ((v1)(v45, 2, v46))
      {
        sub_1001A9170(&v86, &v80);

        sub_100479D70(v45, type metadata accessor for EntryListType);
        v20 = v69;
        sub_100022B50(v69, v10);
        if ((v1)(v10, 2, v46) != 1)
        {
          sub_100479D70(v20, type metadata accessor for EntryListType);
          sub_100479D70(v10, type metadata accessor for EntryListType);
          sub_1001A911C(&v86);

          v22 = v71;
          goto LABEL_32;
        }

        v72 = v43;
        sub_100479D70(v10, type metadata accessor for EntryListType);
        v48 = v57;
        UUID.init()();
        v49 = v48 + *(v58 + 20);
        *v49 = 0;
        *(v49 + 8) = 0;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v19 = String.init(localized:table:bundle:locale:comment:)();
        v51 = v50;
        sub_100479D70(v48, type metadata accessor for CustomRecentlyDeletedSearchSuggestionItem);
      }

      else
      {
        v52 = v63;
        v53 = v64;
        (*v62)(v63, v45, v64);
        sub_1001A9170(&v86, &v80);
        v72 = v43;

        v19 = UUID.uuidString.getter();
        v51 = v54;
        (*v61)(v52, v53);
        v20 = v69;
      }

      v22 = v71;
      sub_100479D70(v20, type metadata accessor for EntryListType);
      if (v73 == v19 && v72 == v51)
      {
        sub_1001A911C(&v86);

LABEL_44:

        return 1;
      }

      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1001A911C(&v86);

      if (v1)
      {
        goto LABEL_44;
      }

      v10 = v65;
LABEL_32:
      ++v37;
      v38 += 11;
    }

    while (v66 != v37);
  }

  return 0;
}

uint64_t sub_100478920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 208) = a8;
  *(v8 + 120) = a6;
  *(v8 + 128) = a7;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  type metadata accessor for MainActor();
  *(v8 + 136) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 144) = v10;
  *(v8 + 152) = v9;

  return _swift_task_switch(sub_1004789C0, v10, v9);
}

uint64_t sub_1004789C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 120);
    *(v0 + 160) = *(Strong + OBJC_IVAR____TtC7Journal25SuggestedSearchController_searchSession);
    v3 = Strong;

    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    v4[1] = sub_100478B08;
    v5 = *(v0 + 208);
    v6 = *(v0 + 128);
    v7 = *(v0 + 112);

    return sub_10019E8C8(v7, v2, v6, v0 + 16, v5);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100478B08(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;

  sub_100004F84(v4 + 16, &unk_100AE4E00, &qword_1009454C0);
  v5 = *(v3 + 152);
  v6 = *(v3 + 144);

  return _swift_task_switch(sub_100478C6C, v6, v5);
}

uint64_t sub_100478C6C()
{
  if (v0[22] == 1)
  {

LABEL_8:
    v6 = v0[1];

    return v6();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {

    goto LABEL_8;
  }

  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_100478D90;
  v4 = v0[22];
  v3 = v0[23];

  return sub_100475644(v4, v3);
}

uint64_t sub_100478D90()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_100478EF0, v3, v2);
}

uint64_t sub_100478EF0()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100479178()
{
  result = qword_100AE4DC0;
  if (!qword_100AE4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4DC0);
  }

  return result;
}

unint64_t sub_1004791D0()
{
  result = qword_100AE4DC8;
  if (!qword_100AE4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4DC8);
  }

  return result;
}

uint64_t sub_100479224()
{
  if (sub_1004722E0())
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

id sub_100479270()
{
  v1 = sub_1002F6F2C(1, *&v0[OBJC_IVAR____TtC7Journal25SuggestedSearchController_recentSearchesManager]);

  return [v0 updateSearchResultsForSearchController:{v0, v1}];
}

double sub_1004792BC()
{
  v1 = [v0 searchBar];
  [v1 resignFirstResponder];

  return sub_100475AB0();
}

uint64_t sub_100479314(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10041DF1C(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10047937C()
{
  result = qword_100AE4DD0;
  if (!qword_100AE4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4DD0);
  }

  return result;
}

double sub_1004793D0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1004793E4()
{
  result = qword_100AE4DE0;
  if (!qword_100AE4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4DE0);
  }

  return result;
}

void sub_100479438()
{
  *(v0 + OBJC_IVAR____TtC7Journal25SuggestedSearchController_timelineDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal25SuggestedSearchController_suggestedSearchFieldDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal25SuggestedSearchController_stateToRestore) = xmmword_100945C40;
  v1 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_recentSearchesManager;
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  *(v0 + v1) = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100479530(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    if ([v2 representedObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v4 = 0u;
    }

    v5 = v3;
    v6 = v4;
    if (*(&v4 + 1))
    {
      sub_1000F24EC(&qword_100AD6668, &unk_100945350);
      if (swift_dynamicCast())
      {
        if (*(&v8 + 1))
        {
          sub_100364784(&v7, v10);
          sub_100475EC4(v10);
          swift_unknownObjectRelease();
          sub_10000BA7C(v10);
          return;
        }
      }

      else
      {
        v9 = 0;
        v7 = 0u;
        v8 = 0u;
      }
    }

    else
    {
      sub_100004F84(&v5, &qword_100AD13D0, &unk_100942DB0);
      v7 = 0u;
      v8 = 0u;
      v9 = 0;
    }

    sub_100004F84(&v7, &unk_100AE4E00, &qword_1009454C0);
    if ([v2 representedObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v10[0] = v7;
    v10[1] = v8;
    if (*(&v8 + 1))
    {
      if (swift_dynamicCast())
      {
        sub_100476B08(v5, *(&v5 + 1), v6);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
      sub_100004F84(v10, &qword_100AD13D0, &unk_100942DB0);
    }
  }
}

void sub_100479754()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7Journal25SuggestedSearchController_resultsViewController];
    *(v3 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_suggestions) = 0;

    v4 = OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchSuggestionItemMap;
    swift_beginAccess();
    *(v3 + v4) = &_swiftEmptyDictionarySingleton;

    v5 = *(v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
      if (v6)
      {
        v11 = 0;
        v7 = [v6 performFetch:&v11];
        v8 = v11;
        if (v7)
        {

          v9 = v8;
        }

        else
        {
          v10 = v11;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }
    }
  }
}

uint64_t sub_1004798F0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 88))(1, ObjectType, v2);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004799A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032EC8;

  return sub_100478920(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100479A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryListType(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100479AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryListType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100479B44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032EC8;

  return sub_1004770CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100479C18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1004764C8(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_100479D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD6880, &qword_100945470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100479D70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100479DE4()
{
  result = qword_100AE4E20;
  if (!qword_100AE4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4E20);
  }

  return result;
}

unint64_t sub_100479E3C()
{
  result = qword_100AE4E28;
  if (!qword_100AE4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4E28);
  }

  return result;
}

unint64_t sub_100479E94()
{
  result = qword_100AE4E30;
  if (!qword_100AE4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4E30);
  }

  return result;
}

uint64_t sub_100479F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v7 = __chkstk_darwin(v6 - 8);
  v8 = (*(a2 + 8))(a1, a2, v7);
  v10 = v9;
  v11 = (*(a2 + 16))(a1, a2);
  if (!v10)
  {
    if (!v12)
    {
      return 0;
    }

    v22 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v22 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      return v11;
    }

LABEL_17:

    return 0;
  }

  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    if (v13)
    {
      return v8;
    }

    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
LABEL_15:

    goto LABEL_17;
  }

  v15 = v11;
  v16 = v12;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  v18._countAndFlagsBits = v8;
  v18._object = v10;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);
  v19._countAndFlagsBits = 548913696;
  v19._object = 0xA400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = v15;
  v20._object = v16;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v8 = String.init(localized:defaultValue:table:bundle:locale:comment:)();

  return v8;
}

uint64_t sub_10047A1AC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE4E40);
  v1 = sub_10000617C(v0, qword_100AE4E40);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10047A274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return _swift_task_switch(sub_10047A308, v5, v7);
}

uint64_t sub_10047A308()
{
  v1 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [v1 initWithURL:v3 options:0];
  v0[8] = v5;

  v6 = objc_allocWithZone(AVAssetExportSession);
  v7 = v5;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 initWithAsset:v7 presetName:v8];
  v0[9] = v9;

  if (v9)
  {
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_10047A49C;
    v11 = v0[5];
    v12 = v0[2];
    v13 = v0[3];

    return AVAssetExportSession.export(to:as:isolation:)(v11, AVFileTypeQuickTimeMovie, v12, v13);
  }

  else
  {

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_10047A49C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_10047A640;
  }

  else
  {
    v5 = sub_10047A5D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10047A5D8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_10047A640()
{
  if (qword_100ACFDC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AE4E40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "AVAssetExportSession export status is failed, error: %@", v7, 0xCu);
    sub_10012B714(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_10047A7F4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v9 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v10 = *((swift_isaMask & *v8) + 0x58);
  v11 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v12 = v8;
  v10(11, v11);

  v13 = *(v1 + OBJC_IVAR____TtC7Journal24StateOfMindAssetGridView_previousSizeType);
  if (v13 == 8 || (result = sub_10003C2FC(*(v1 + v9), v13), (result & 1) == 0))
  {
    result = [*(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView) superview];
    if (result)
    {

      result = [*(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel) superview];
      if (result)
      {

        result = [*(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel) superview];
        if (result)
        {

          result = [*(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel) superview];
          if (result)
          {

            sub_100005508();
            v15 = static OS_dispatch_queue.main.getter();
            v16 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_10047E710;
            aBlock[5] = v16;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100006C7C;
            aBlock[3] = &unk_100A6E518;
            v17 = _Block_copy(aBlock);

            static DispatchQoS.unspecified.getter();
            aBlock[0] = _swiftEmptyArrayStorage;
            sub_1000826D8();
            sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
            sub_100006610();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v17);

            (*(v19 + 8))(v4, v2);
            return (*(v18 + 8))(v7, v5);
          }
        }
      }
    }
  }

  return result;
}

void sub_10047ABB4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v4 = Strong[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    v5 = Strong;
    sub_1000F7D38(v4);
    sub_1000F9008();
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    aBlock[4] = sub_1000FBC28;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A6E568;
    v8 = _Block_copy(aBlock);
    v9 = v5;

    [v6 animateWithDuration:1 delay:v8 options:0 animations:0.11 completion:0.0];
    _Block_release(v8);
    [*&v9[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView] setClipsToBounds:1];
    v10 = *&v9[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel];

    sub_1000746FC();
    v11 = *&v9[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel];

    sub_1000746FC();
    v12 = *&v9[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel];

    sub_1000746FC();
    v13 = *&v9[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel];

    sub_1000746FC();
    v14 = *&v9[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView];

    sub_1000746FC();
    v15 = v2[v3];
    if (v15 > 3)
    {
      if (v2[v3] > 5u)
      {
        if (v15 == 6)
        {
          sub_10047AE68();
        }

        else
        {
          sub_10047D42C();
        }

        goto LABEL_9;
      }

      if (v15 == 4)
      {
        sub_10047AF50();
        goto LABEL_9;
      }
    }

    else if (v15 >= 3)
    {
      sub_10047CA40();
LABEL_9:
      v16 = v2[v3];

      v9[OBJC_IVAR____TtC7Journal24StateOfMindAssetGridView_previousSizeType] = v16;
      return;
    }

    sub_10047BB8C();
    goto LABEL_9;
  }
}

double sub_10047AE68()
{
  [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView) setHidden:0];
  [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel) setHidden:1];
  v1 = *(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView);
  sub_100013178(8.0);

  return result;
}

void sub_10047AF50()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel;
  [*&v0[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel] setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel;
  [*&v0[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel] setHidden:1];
  v4 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel;
  [*&v0[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel] setHidden:0];
  v91 = v4;
  [*&v0[v4] setTextAlignment:4];
  [*&v0[v3] setTextAlignment:4];
  v92 = v2;
  [*&v0[v2] setTextAlignment:4];
  [*&v0[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView] setHidden:0];
  v90 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel;
  [*&v0[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel] setHidden:1];
  v5 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView;
  v6 = *&v0[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView];
  v7 = [v6 superview];
  if (v7)
  {
    v8 = v7;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v6 leadingAnchor];
    v10 = [v8 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    [v11 setConstant:8.0];
    if (v11)
    {
      [v11 setActive:1];
    }
  }

  else
  {
    v11 = 0;
    v8 = v6;
  }

  v12 = *(v1 + v5);
  v13 = [v12 superview];
  if (v13)
  {
    v14 = v13;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v12 topAnchor];
    v16 = [v14 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:8.0];
    if (v17)
    {
      [v17 setActive:1];
    }
  }

  else
  {
    v17 = 0;
    v14 = v12;
  }

  v18 = *(v1 + v5);
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [v18 heightAnchor];
  v20 = [v18 widthAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 multiplier:1.0];

  [v21 setActive:1];
  v22 = [*(v1 + v5) widthAnchor];
  v23 = [v1 heightAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];

  [v24 setActive:1];
  v25 = *(v1 + v5);
  v26 = sub_100028DA0(0, 1, 8.0);

  v27 = *(v1 + v5);
  v28 = *&v92[v1];
  v29 = v27;
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v28 leadingAnchor];
  v31 = [v29 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  [v32 setConstant:8.0];
  [v32 setActive:1];

  v33 = *(v1 + v91);
  v34 = *&v92[v1];
  v35 = v33;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = [v34 bottomAnchor];
  v37 = [v35 topAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  [v38 setConstant:0.0];
  [v38 setActive:1];

  v39 = *&v92[v1];
  v40 = [v39 superview];
  if (v40)
  {
    v41 = v40;
    [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    v42 = [v39 trailingAnchor];
    v43 = [v41 trailingAnchor];
    v44 = [v42 constraintLessThanOrEqualToAnchor:v43];

    [v44 setConstant:-8.0];
    if (v44)
    {
      [v44 setActive:1];
    }
  }

  else
  {
    v44 = 0;
    v41 = v39;
  }

  v45 = *&v92[v1];
  v46 = [v45 superview];
  if (v46)
  {
    v47 = v46;
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    v48 = [v45 topAnchor];
    v49 = [v47 topAnchor];
    v50 = [v48 constraintGreaterThanOrEqualToAnchor:v49];

    [v50 setConstant:8.0];
    if (v50)
    {
      [v50 setActive:1];
    }
  }

  else
  {
    v50 = 0;
    v47 = v45;
  }

  v51 = [*&v92[v1] bottomAnchor];
  v52 = [*(v1 + v5) centerYAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  LODWORD(v54) = 1132068864;
  [v53 setPriority:v54];
  [v53 setActive:1];

  v55 = [*(v1 + v91) topAnchor];
  v56 = [*(v1 + v5) centerYAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  LODWORD(v58) = 1132068864;
  [v57 setPriority:v58];
  [v57 setActive:1];

  v59 = *(v1 + v5);
  v60 = *(v1 + v91);
  v61 = v59;
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  v62 = [v60 leadingAnchor];
  v63 = [v61 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  [v64 setConstant:8.0];
  [v64 setActive:1];

  v65 = *&v92[v1];
  v66 = *(v1 + v91);
  v67 = v65;
  [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  v68 = [v66 topAnchor];
  v69 = [v67 bottomAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  [v70 setConstant:0.0];
  [v70 setActive:1];

  v71 = *(v1 + v91);
  v72 = [v71 superview];
  if (v72)
  {
    v73 = v72;
    [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
    v74 = [v71 trailingAnchor];
    v75 = [v73 trailingAnchor];
    v76 = [v74 constraintLessThanOrEqualToAnchor:v75];

    [v76 setConstant:-8.0];
    if (v76)
    {
      [v76 setActive:1];
    }
  }

  else
  {
    v76 = 0;
    v73 = v71;
  }

  v77 = *(v1 + v91);
  v78 = sub_100028DA0(2, 1, 8.0);

  v79 = *(v1 + v91);
  v80 = objc_opt_self();
  v81 = v79;
  v82 = [v80 secondaryLabelColor];
  [v81 setTextColor:v82];

  v83 = *(v1 + v90);
  v84 = sub_100028DA0(0, 1, 0.0);

  v85 = *(v1 + v90);
  v86 = [v85 superview];
  if (v86)
  {
    v87 = v86;
    [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
    v88 = [v87 centerXAnchor];
    v89 = [v85 centerXAnchor];
    v93 = [v89 constraintEqualToAnchor:v88];

    [v93 setConstant:0.0];
    if (v93)
    {
      [v93 setActive:1];
    }

    else
    {
      v93 = 0;
    }
  }

  else
  {
    v93 = 0;
    v87 = v85;
  }
}

void sub_10047BB8C()
{
  v1 = v0;
  v111 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel;
  [*&v0[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel] setHidden:0];
  v113 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel;
  v2 = *&v0[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel];
  v3 = [v2 text];
  v4 = v3;
  if (v3)
  {
  }

  [v2 setHidden:v4 == 0];

  v110 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel;
  [*(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel) setHidden:0];
  [*(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView) setHidden:0];
  v109 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel;
  [*(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel) setHidden:1];
  v114 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView;
  v5 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView);
  v6 = [v5 superview];
  if (v6)
  {
    v7 = v6;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v5 leadingAnchor];
    v9 = [v7 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    [v10 setConstant:8.0];
    if (v10)
    {
      [v10 setActive:1];
    }
  }

  else
  {
    v10 = 0;
    v7 = v5;
  }

  v11 = *&v114[v1];
  v12 = [v11 superview];
  if (v12)
  {
    v13 = v12;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v11 topAnchor];
    v15 = [v13 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:8.0];
    if (v16)
    {
      [v16 setActive:1];
    }
  }

  else
  {
    v16 = 0;
    v13 = v11;
  }

  v17 = *&v114[v1];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [v17 heightAnchor];
  v19 = [v17 widthAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 multiplier:1.0];

  [v20 setActive:1];
  v21 = *&v114[v1];
  [v1 frame];
  v23 = v22 + -16.0;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v21 widthAnchor];
  v25 = [v24 constraintEqualToConstant:v23];

  [v25 setActive:1];
  v26 = *&v114[v1];
  v27 = sub_100028DA0(0, 1, 8.0);

  v28 = *&v114[v1];
  v29 = *&v111[v1];
  v30 = v28;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [v29 leadingAnchor];
  v32 = [v30 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  [v33 setConstant:8.0];
  [v33 setActive:1];

  v34 = *(v1 + v113);
  v35 = *&v111[v1];
  v36 = v34;
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = [v35 bottomAnchor];
  v38 = [v36 topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  [v39 setConstant:0.0];
  [v39 setActive:1];

  v40 = *&v111[v1];
  v41 = [v40 superview];
  if (v41)
  {
    v42 = v41;
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = [v40 trailingAnchor];
    v44 = [v42 trailingAnchor];
    v45 = [v43 constraintLessThanOrEqualToAnchor:v44];

    [v45 setConstant:-8.0];
    if (v45)
    {
      [v45 setActive:1];
    }

    v46 = &selRef_setSuggestedName_;
  }

  else
  {
    v45 = 0;
    v42 = v40;
    v46 = &selRef_setSuggestedName_;
  }

  [*&v111[v1] setTextAlignment:4];
  v47 = *&v111[v1];
  v48 = [v47 superview];
  if (v48)
  {
    v49 = v48;
    [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
    v50 = [v47 topAnchor];
    v51 = [v49 topAnchor];
    v52 = [v50 constraintGreaterThanOrEqualToAnchor:v51];

    [v52 setConstant:8.0];
    if (v52)
    {
      [v52 setActive:1];
    }
  }

  else
  {
    v52 = 0;
    v49 = v47;
  }

  v53 = *&v114[v1];
  v54 = *(v1 + v113);
  v55 = v53;
  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
  v56 = [v54 v46[232]];
  v57 = [v55 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  [v58 setConstant:8.0];
  [v58 setActive:1];

  v59 = *&v111[v1];
  v60 = *(v1 + v113);
  v61 = v59;
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  v62 = [v60 topAnchor];
  v63 = [v61 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  [v64 setConstant:0.0];
  [v64 setActive:1];

  v65 = [*(v1 + v113) centerYAnchor];
  v66 = [*&v114[v1] centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  LODWORD(v68) = 1132068864;
  [v67 setPriority:v68];
  [v67 setActive:1];

  v69 = *(v1 + v113);
  v70 = [v69 superview];
  if (v70)
  {
    v71 = v70;
    [v69 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72 = [v69 trailingAnchor];
    v73 = [v71 trailingAnchor];
    v74 = [v72 constraintLessThanOrEqualToAnchor:v73];

    [v74 setConstant:-8.0];
    if (v74)
    {
      [v74 setActive:1];
    }

    v75 = &selRef_setSuggestedName_;
  }

  else
  {
    v74 = 0;
    v71 = v69;
    v75 = &selRef_setSuggestedName_;
  }

  [*(v1 + v113) setTextAlignment:4];
  v76 = *(v1 + v113);
  v77 = objc_opt_self();
  v78 = v76;
  v112 = v77;
  v79 = [v77 secondaryLabelColor];
  [v78 setTextColor:v79];

  v80 = *&v114[v1];
  v81 = *(v1 + v110);
  v82 = v80;
  [v81 setTranslatesAutoresizingMaskIntoConstraints:0];
  v83 = [v81 v75[232]];
  v84 = [v82 trailingAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];

  [v85 setConstant:8.0];
  [v85 setActive:1];

  v86 = *(v1 + v113);
  v87 = *(v1 + v110);
  v88 = v86;
  [v87 setTranslatesAutoresizingMaskIntoConstraints:0];
  v89 = [v87 topAnchor];
  v90 = [v88 bottomAnchor];
  v91 = [v89 constraintEqualToAnchor:v90];

  [v91 setConstant:0.0];
  [v91 setActive:1];

  v92 = *(v1 + v110);
  v93 = [v92 superview];
  if (v93)
  {
    v94 = v93;
    [v92 setTranslatesAutoresizingMaskIntoConstraints:0];
    v95 = [v92 trailingAnchor];
    v96 = [v94 trailingAnchor];
    v97 = [v95 constraintLessThanOrEqualToAnchor:v96];

    [v97 setConstant:-8.0];
    if (v97)
    {
      [v97 setActive:1];
    }
  }

  else
  {
    v97 = 0;
    v94 = v92;
  }

  v98 = *(v1 + v110);
  v99 = sub_100028DA0(2, 1, 8.0);

  [*(v1 + v110) setTextAlignment:4];
  v100 = *(v1 + v110);
  v101 = [v112 tertiaryLabelColor];
  [v100 setTextColor:v101];

  v102 = *(v1 + v109);
  v103 = sub_100028DA0(0, 1, 0.0);

  v104 = *(v1 + v109);
  v105 = [v104 superview];
  if (v105)
  {
    v106 = v105;
    [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
    v107 = [v106 centerXAnchor];
    v108 = [v104 centerXAnchor];
    v115 = [v108 constraintEqualToAnchor:v107];

    [v115 setConstant:0.0];
    if (v115)
    {
      [v115 setActive:1];
    }

    else
    {
      v115 = 0;
    }
  }

  else
  {
    v115 = 0;
    v106 = v104;
  }
}

void sub_10047CA40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel) setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel) setHidden:0];
  [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView) setHidden:0];
  v72 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel) setHidden:1];
  [*(v0 + v2) setTextAlignment:1];
  [*(v0 + v3) setTextAlignment:1];
  v73 = v3;
  v4 = *(v0 + v3);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 secondaryLabelColor];
  [v6 setTextColor:v7];

  v8 = *(v1 + v2);
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v8 topAnchor];
    v12 = [v10 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    [v13 setConstant:12.0];
    if (v13)
    {
      [v13 setActive:1];
    }
  }

  else
  {
    v13 = 0;
    v10 = v8;
  }

  v14 = *(v1 + v2);
  v15 = [v14 superview];
  if (v15)
  {
    v16 = v15;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v14 leadingAnchor];
    v18 = [v16 leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:8.0];
    if (v19)
    {
      [v19 setActive:1];
    }
  }

  else
  {
    v19 = 0;
    v16 = v14;
  }

  v20 = *(v1 + v2);
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v20 trailingAnchor];
    v24 = [v22 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    [v25 setConstant:-8.0];
    if (v25)
    {
      [v25 setActive:1];
    }
  }

  else
  {
    v25 = 0;
    v22 = v20;
  }

  v26 = *&v73[v1];
  v27 = sub_100028DA0(0, 1, 12.0);

  v28 = *&v73[v1];
  v29 = [v28 superview];
  if (v29)
  {
    v30 = v29;
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [v28 leadingAnchor];
    v32 = [v30 leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    [v33 setConstant:12.0];
    if (v33)
    {
      [v33 setActive:1];
    }
  }

  else
  {
    v33 = 0;
    v30 = v28;
  }

  v34 = *&v73[v1];
  v35 = [v34 superview];
  if (v35)
  {
    v36 = v35;
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [v34 trailingAnchor];
    v38 = [v36 trailingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setConstant:-12.0];
    if (v39)
    {
      [v39 setActive:1];
    }
  }

  else
  {
    v39 = 0;
    v36 = v34;
  }

  v40 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView;
  v41 = *(v1 + v2);
  v42 = *(v1 + OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView);
  v43 = v41;
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = [v42 topAnchor];
  v45 = [v43 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  [v46 setConstant:5.0];
  [v46 setActive:1];

  v47 = *&v73[v1];
  v48 = *(v1 + v40);
  v49 = v47;
  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = [v48 bottomAnchor];
  v51 = [v49 topAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  [v52 setConstant:-5.0];
  [v52 setActive:1];

  v53 = *(v1 + v40);
  v54 = [v53 superview];
  if (v54)
  {
    v55 = v54;
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = [v53 leadingAnchor];
    v57 = [v55 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    [v58 setConstant:12.0];
    if (v58)
    {
      [v58 setActive:1];
    }
  }

  else
  {
    v58 = 0;
    v55 = v53;
  }

  v59 = *(v1 + v40);
  v60 = [v59 superview];
  if (v60)
  {
    v61 = v60;
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v62 = [v59 trailingAnchor];
    v63 = [v61 trailingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    [v64 setConstant:-12.0];
    if (v64)
    {
      [v64 setActive:1];
    }
  }

  else
  {
    v64 = 0;
    v61 = v59;
  }

  v65 = *(v1 + v72);
  v66 = sub_100028DA0(0, 1, 0.0);

  v67 = *(v1 + v72);
  v68 = [v67 superview];
  if (v68)
  {
    v69 = v68;
    [v67 setTranslatesAutoresizingMaskIntoConstraints:0];
    v70 = [v69 centerXAnchor];
    v71 = [v67 centerXAnchor];
    v74 = [v71 constraintEqualToAnchor:v70];

    [v74 setConstant:0.0];
    if (v74)
    {
      [v74 setActive:1];
    }

    else
    {
      v74 = 0;
    }
  }

  else
  {
    v74 = 0;
    v69 = v67;
  }
}

void sub_10047D42C()
{
  v1 = v0;
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel;
  [*&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_primaryLabel] setHidden:{0, v4}];
  v8 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel;
  [*&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_secondaryLabel] setHidden:0];
  v128 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel;
  [*&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_typeLabel] setHidden:0];
  v9 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel;
  [*&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_footnoteLabel] setHidden:0];
  [*&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_gradientView] setHidden:0];
  [*&v1[v7] setTextAlignment:1];
  v129 = v8;
  [*&v1[v8] setTextAlignment:1];
  v127 = v9;
  [*&v1[v9] setAlpha:1.0];
  (*(v3 + 104))(v6, enum case for JournalFeatureFlags.fullScreenViewer(_:), v2);
  v10 = JournalFeatureFlags.isEnabled.getter();
  (*(v3 + 8))(v6, v2);
  v11 = *&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView];
  v12 = [v11 superview];
  v13 = v12;
  if (v10)
  {
    if (v12)
    {
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [v11 topAnchor];
      v15 = [v13 topAnchor];
      v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15];

      v17 = 10.0;
      [v16 setConstant:10.0];
      if (!v16)
      {
LABEL_5:

        goto LABEL_12;
      }

LABEL_4:
      [v16 setActive:1];
      goto LABEL_5;
    }

    v16 = 0;
    v17 = 10.0;
  }

  else
  {
    if (v12)
    {
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v18 = [v11 topAnchor];
      v19 = [v13 topAnchor];
      v16 = [v18 constraintGreaterThanOrEqualToAnchor:v19];

      [v16 setConstant:85.0];
      v17 = 75.0;
      if (!v16)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v16 = 0;
    v17 = 75.0;
  }

  v13 = v11;
LABEL_12:

  v20 = *&v1[v127];
  v21 = sub_100028DA0(2, 1, v17);

  v22 = OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView;
  v23 = *&v1[v7];
  v24 = *&v1[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_valenceImageView];
  v25 = v23;
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [v24 bottomAnchor];
  v27 = [v25 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  [v28 setConstant:-24.0];
  [v28 setActive:1];

  v29 = *&v1[v22];
  v30 = [v29 superview];
  if (v30)
  {
    v31 = v30;
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [v29 leadingAnchor];
    v33 = [v31 leadingAnchor];
    v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33];

    [v34 setConstant:24.0];
    if (v34)
    {
      [v34 setActive:1];
    }

    v35 = &selRef_setSuggestedName_;
  }

  else
  {
    v34 = 0;
    v31 = v29;
    v35 = &selRef_setSuggestedName_;
  }

  v36 = *&v1[v22];
  v37 = [v36 superview];
  if (v37)
  {
    v38 = v37;
    [v36 v35[278]];
    v39 = [v36 trailingAnchor];
    v40 = [v38 trailingAnchor];
    v41 = [v39 constraintLessThanOrEqualToAnchor:v40];

    [v41 setConstant:-24.0];
    if (v41)
    {
      [v41 setActive:1];
    }
  }

  else
  {
    v41 = 0;
    v38 = v36;
  }

  v42 = *&v1[v22];
  [v42 v35[278]];
  v43 = [v42 heightAnchor];
  v44 = [v42 widthAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 multiplier:1.0];

  [v45 setActive:1];
  v46 = [*&v1[v22] centerYAnchor];
  v47 = [v1 centerYAnchor];
  v48 = [v46 constraintLessThanOrEqualToAnchor:v47 constant:-50.0];

  [v48 setActive:1];
  v49 = *&v1[v22];
  v50 = [v49 superview];
  if (v50)
  {
    v51 = v50;
    [v49 v35[278]];
    v52 = [v51 centerXAnchor];
    v53 = [v49 centerXAnchor];
    v54 = [v53 constraintEqualToAnchor:v52];

    [v54 setConstant:0.0];
    if (v54)
    {
      [v54 setActive:1];
    }
  }

  else
  {
    v54 = 0;
    v51 = v49;
  }

  v55 = *&v1[v128];
  v56 = *&v1[v7];
  v57 = v55;
  [v56 v35[278]];
  v58 = [v56 bottomAnchor];
  v59 = [v57 topAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  [v60 setConstant:0.0];
  [v60 setActive:1];

  v61 = *&v1[v7];
  v62 = [v61 superview];
  if (v62)
  {
    v63 = v62;
    [v61 v35[278]];
    v64 = [v61 leadingAnchor];
    v65 = [v63 leadingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];

    [v66 setConstant:16.0];
    if (v66)
    {
      [v66 setActive:1];
    }

    v67 = &selRef_setSuggestedName_;

    v35 = &selRef_setSuggestedName_;
  }

  else
  {
    v66 = 0;
    v63 = v61;
    v67 = &selRef_setSuggestedName_;
  }

  v68 = *&v1[v7];
  v69 = [v68 superview];
  if (v69)
  {
    v70 = v69;
    [v68 v35[278]];
    v71 = [v68 trailingAnchor];
    v72 = [v70 trailingAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];

    [v73 setConstant:-16.0];
    if (v73)
    {
      [v73 setActive:1];
    }
  }

  else
  {
    v73 = 0;
    v70 = v68;
  }

  v74 = *&v1[v128];
  v75 = [v74 superview];
  if (v75)
  {
    v76 = v75;
    [v74 v35[278]];
    v77 = [v74 leadingAnchor];
    v78 = [v76 leadingAnchor];
    v79 = [v77 constraintEqualToAnchor:v78];

    [v79 setConstant:16.0];
    if (v79)
    {
      [v79 setActive:1];
    }
  }

  else
  {
    v79 = 0;
    v76 = v74;
  }

  v80 = *&v1[v128];
  v81 = [v80 superview];
  if (v81)
  {
    v82 = v81;
    [v80 v35[278]];
    v83 = [v80 trailingAnchor];
    v84 = [v82 trailingAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];

    [v85 setConstant:-16.0];
    if (v85)
    {
      [v85 setActive:1];
    }
  }

  else
  {
    v85 = 0;
    v82 = v80;
  }

  v86 = *&v1[v129];
  v87 = [v86 superview];
  if (v87)
  {
    v88 = v87;
    [v86 v35[278]];
    v89 = [v86 leadingAnchor];
    v90 = [v88 leadingAnchor];
    v91 = [v89 constraintEqualToAnchor:v90];

    [v91 setConstant:16.0];
    if (v91)
    {
      [v91 setActive:1];
    }
  }

  else
  {
    v91 = 0;
    v88 = v86;
  }

  v92 = *&v1[v129];
  v93 = [v92 superview];
  if (v93)
  {
    v94 = v93;
    [v92 v35[278]];
    v95 = [v92 trailingAnchor];
    v96 = [v94 trailingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96];

    [v97 setConstant:-16.0];
    if (v97)
    {
      [v97 setActive:1];
    }
  }

  else
  {
    v97 = 0;
    v94 = v92;
  }

  v98 = *&v1[v128];
  v99 = *&v1[v129];
  v100 = v98;
  [v99 v35[278]];
  v101 = [v99 v67[292]];
  v102 = [v100 bottomAnchor];
  v103 = [v101 constraintEqualToAnchor:v102];

  [v103 setConstant:2.0];
  [v103 setActive:1];

  v104 = v35;
  v105 = v127;
  v106 = *&v1[v127];
  v107 = [v106 superview];
  if (v107)
  {
    v108 = v107;
    [v106 v104[278]];
    v109 = [v106 leadingAnchor];
    v110 = [v108 leadingAnchor];
    v111 = [v109 constraintEqualToAnchor:v110];

    [v111 setConstant:16.0];
    if (v111)
    {
      [v111 setActive:1];
    }

    v112 = &selRef_setSuggestedName_;
    v113 = &selRef_setSuggestedName_;
  }

  else
  {
    v111 = 0;
    v108 = v106;
    v112 = &selRef_setSuggestedName_;
    v113 = &selRef_setSuggestedName_;
  }

  v114 = *&v1[v105];
  v115 = [v114 superview];
  if (v115)
  {
    v116 = v115;
    [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
    v117 = [v114 v113[293]];
    v118 = [v116 v113[293]];
    v119 = [v117 constraintEqualToAnchor:v118];

    [v119 setConstant:-16.0];
    if (v119)
    {
      [v119 setActive:1];
    }
  }

  else
  {
    v119 = 0;
    v116 = v114;
  }

  v120 = *&v1[v129];
  v121 = *&v1[v105];
  v122 = v120;
  [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
  v123 = [v121 v112[292]];
  v124 = [v122 bottomAnchor];
  v125 = [v123 constraintEqualToAnchor:v124];

  [v125 setConstant:6.0];
  [v125 setActive:1];
}

id sub_10047E640()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindAssetGridView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StateOfMindAssetGridView(uint64_t a1)
{
  result = qword_100AE4E88;
  if (!qword_100AE4E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10047E748(uint64_t a1)
{
  type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    sub_100087C9C();
    if (v2 <= 0x3F)
    {
      sub_100280704(319, &qword_100AE4F98, &type metadata for TextAlignment);
      if (v3 <= 0x3F)
      {
        sub_100280704(319, &qword_100ADB020, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_1001E6300(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10047E900(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_10047E94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[2] = a2;
  v4 = sub_1000F24EC(&qword_100AE4FC8, &qword_100957608);
  __chkstk_darwin(v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = type metadata accessor for AttributedString.Index();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000F24EC(&qword_100ADA540, &qword_100957640);
  __chkstk_darwin(v23);
  v24 = v22 - v14;
  v15 = type metadata accessor for AttributedString.CharacterView();
  v16 = sub_100482EE4(&qword_100AE5028, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v22[3] = v15;
  v22[1] = v16;
  dispatch thunk of Collection.startIndex.getter();
  sub_100482EE4(&qword_100AE5038, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v22[0] = v2;
    v18 = *(v11 + 32);
    v18(v9, v13, v10);
    (*(v11 + 16))(&v9[*(v4 + 48)], a1, v10);
    sub_1000082B4(v9, v6, &qword_100AE4FC8, &qword_100957608);
    v19 = *(v4 + 48);
    v20 = v24;
    v18(v24, v6, v10);
    v21 = *(v11 + 8);
    v21(&v6[v19], v10);
    sub_100021CEC(v9, v6, &qword_100AE4FC8, &qword_100957608);
    v18((v20 + *(v23 + 36)), &v6[*(v4 + 48)], v10);
    v21(v6, v10);
    dispatch thunk of Collection.subscript.getter();
    return sub_100004F84(v20, &qword_100ADA540, &qword_100957640);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10047ECB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t sub_10047ED24(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_10047EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10047EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

void sub_10047F198(uint64_t a1, uint64_t *a2)
{
  sub_100221DFC();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_10047F1DC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v4 = type metadata accessor for AttributedString();
  v81 = *(v4 - 8);
  v82 = v4;
  __chkstk_darwin(v4);
  v80 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v74 = *(v8 - 8);
  __chkstk_darwin(v8);
  v73 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F2A18(&qword_100AE4FB0, &unk_1009575D0);
  v10 = *(a1 + 2);
  sub_1000F2A18(&unk_100AE16A0, &qword_10094CE30);
  v76 = v10;
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(a1 + 3);
  v13 = sub_10000B58C(&qword_100AD2760, &unk_100AE16A0, &qword_10094CE30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v75 = v12;
  v92 = v12;
  v93 = v13;
  WitnessTable = swift_getWitnessTable();
  v90 = v11;
  v91 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1000F2A18(&qword_100AD21E8, &unk_100940500);
  type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100ADB5A0, &qword_10094FCC0);
  type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100ADB5B0, &qword_10094B1B0);
  type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100AD21B0, &qword_10094B160);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100AE4FB8, &unk_1009575E0);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  v88 = swift_getWitnessTable();
  v89 = &protocol witness table for Text;
  v62 = swift_getWitnessTable();
  v15 = type metadata accessor for VStack();
  v71 = *(v15 - 8);
  __chkstk_darwin(v15);
  v65 = &v58 - v16;
  sub_1000F2A18(&qword_100ADB250, &qword_10096F330);
  v17 = type metadata accessor for ModifiedContent();
  v67 = *(v17 - 8);
  __chkstk_darwin(v17);
  v64 = &v58 - v18;
  v19 = swift_getWitnessTable();
  v20 = sub_10000B58C(&qword_100ADB248, &qword_100ADB250, &qword_10096F330, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v60 = v19;
  v86 = v19;
  v87 = v20;
  v21 = swift_getWitnessTable();
  v90 = v17;
  v91 = v21;
  v61 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v63 = &v58 - v23;
  type metadata accessor for AccessibilityAttachmentModifier();
  v69 = OpaqueTypeMetadata2;
  v24 = type metadata accessor for ModifiedContent();
  v72 = *(v24 - 8);
  __chkstk_darwin(v24);
  v68 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v70 = &v58 - v27;
  v28 = v2;
  v29 = v2 + *(a1 + 13);
  v30 = *v29;
  if (*(v29 + 8) == 1)
  {
    v31 = v74;
    v32 = v73;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v32 = v73;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v34 = sub_1000467F0(v30, 0);
    v31 = v74;
    (*(v74 + 8))(v32, v8, v34);
  }

  if (static TextAlignment.== infix(_:_:)())
  {
    v35 = static HorizontalAlignment.center.getter();
  }

  else
  {
    v35 = static HorizontalAlignment.leading.getter();
  }

  if ((*(v28 + *(a1 + 9)) & 1) == 0)
  {
    v74 = v8;
    v36 = v28 + *(a1 + 14);
    v37 = *v36;
    if (*(v36 + 8) != 1)
    {
      v59 = v35;

      static os_log_type_t.fault.getter();
      v38 = static Log.runtimeIssuesLog.getter();
      v73 = a1;
      v39 = v38;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v40 = sub_1000467F0(v37, 0);
      (*(v31 + 8))(v32, v74, v40);
      v35 = v59;
    }
  }

  __chkstk_darwin(v35);
  v41 = v75;
  *(&v58 - 4) = v76;
  *(&v58 - 3) = v41;
  *(&v58 - 2) = v28;
  v42 = v65;
  VStack.init(alignment:spacing:content:)();
  if (qword_100ACFCE8 != -1)
  {
    swift_once();
  }

  v43 = v64;
  View.transition(_:)();
  (*(v71 + 8))(v42, v15);
  v44 = v77;
  static AccessibilityChildBehavior.ignore.getter();
  v45 = v63;
  v46 = v61;
  View.accessibilityElement(children:)();
  (*(v78 + 8))(v44, v79);
  (*(v67 + 8))(v43, v17);
  (*(v81 + 16))(v80, v28, v82);
  v47 = Text.init(_:)();
  v49 = v48;
  LOBYTE(v43) = v50;
  v90 = v17;
  v91 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v68;
  v53 = v69;
  View.accessibilityLabel(_:)();
  sub_1000594D0(v47, v49, v43 & 1);

  (*(v66 + 8))(v45, v53);
  v54 = sub_100482EE4(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v84 = OpaqueTypeConformance2;
  v85 = v54;
  swift_getWitnessTable();
  v55 = v70;
  sub_10053057C();
  v56 = *(v72 + 8);
  v56(v52, v24);
  sub_10053057C();
  return (v56)(v55, v24);
}

uint64_t sub_10047FDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v363 = a2;
  v369 = a1;
  v348 = a4;
  v5 = sub_1000F2A18(&qword_100AE4FB0, &unk_1009575D0);
  sub_1000F2A18(&unk_100AE16A0, &qword_10094CE30);
  v6 = type metadata accessor for ModifiedContent();
  v7 = sub_10000B58C(&qword_100AD2760, &unk_100AE16A0, &qword_10094CE30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v342 = a3;
  v427 = a3;
  v428 = v7;
  WitnessTable = swift_getWitnessTable();
  *&v418 = v6;
  *(&v418 + 1) = WitnessTable;
  v312 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000F2A18(&qword_100AD21E8, &unk_100940500);
  v10 = type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100ADB5A0, &qword_10094FCC0);
  v11 = type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100ADB5B0, &qword_10094B1B0);
  v12 = type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100AD21B0, &qword_10094B160);
  v13 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  v360 = type metadata accessor for ModifiedContent();
  v361 = type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100AE4FB8, &unk_1009575E0);
  v15 = type metadata accessor for ModifiedContent();
  v289 = v5;
  swift_getTupleTypeMetadata3();
  v364 = type metadata accessor for TupleView();
  v288 = *(v364 - 8);
  __chkstk_darwin(v364);
  v287 = &v281 - v16;
  v285 = sub_1000F24EC(&qword_100AE4FC0, &unk_1009575F0);
  __chkstk_darwin(v285);
  v284 = &v281 - v17;
  v18 = type metadata accessor for EnvironmentValues();
  v282 = *(v18 - 8);
  v283 = v18;
  __chkstk_darwin(v18);
  v281 = &v281 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ContentTransition();
  v309 = *(v20 - 8);
  v310 = v20;
  __chkstk_darwin(v20);
  v308 = &v281 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000F24EC(&qword_100AE1670, &qword_10094AFF0);
  __chkstk_darwin(v22 - 8);
  v295 = &v281 - v23;
  v298 = *(v363 - 8);
  __chkstk_darwin(v24);
  v296 = &v281 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = swift_checkMetadataState();
  v297 = *(v300 - 8);
  __chkstk_darwin(v300);
  v294 = &v281 - v26;
  v313 = OpaqueTypeMetadata2;
  v301 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(v27);
  v299 = &v281 - v28;
  v316 = v10;
  v303 = *(v10 - 8);
  __chkstk_darwin(v29);
  v302 = &v281 - v30;
  v319 = v11;
  v305 = *(v11 - 8);
  __chkstk_darwin(v31);
  v304 = &v281 - v32;
  v323 = v12;
  v307 = *(v12 - 8);
  __chkstk_darwin(v33);
  v306 = &v281 - v34;
  v324 = v13;
  v311 = *(v13 - 8);
  __chkstk_darwin(v35);
  v341 = &v281 - v36;
  v325 = v14;
  v315 = *(v14 - 8);
  __chkstk_darwin(v37);
  v314 = &v281 - v38;
  v318 = *(v360 - 8);
  __chkstk_darwin(v39);
  v317 = &v281 - v40;
  v321 = *(v361 - 8);
  __chkstk_darwin(v41);
  v320 = &v281 - v42;
  v339 = *(v15 - 8);
  v340 = v15;
  __chkstk_darwin(v43);
  v286 = &v281 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v322 = &v281 - v46;
  __chkstk_darwin(v47);
  v355 = &v281 - v48;
  v336 = sub_1000F24EC(&qword_100ADB538, &qword_100957600);
  __chkstk_darwin(v336);
  v337 = &v281 - v49;
  v293 = sub_1000F24EC(&qword_100AE4FC8, &qword_100957608);
  __chkstk_darwin(v293);
  v292 = &v281 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v291 = &v281 - v52;
  v373 = type metadata accessor for AttributedString.Index();
  v368 = *(v373 - 8);
  __chkstk_darwin(v373);
  v370 = &v281 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v371 = &v281 - v55;
  __chkstk_darwin(v56);
  v331 = &v281 - v57;
  v372 = type metadata accessor for AttributedString.CharacterView();
  v328 = *(v372 - 1);
  __chkstk_darwin(v372);
  v374 = &v281 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_1000F24EC(&qword_100AE4FD0, &qword_100957610);
  __chkstk_darwin(v327);
  v343 = &v281 - v59;
  v330 = sub_1000F24EC(&qword_100AE4FD8, &qword_100957618);
  __chkstk_darwin(v330);
  v326 = &v281 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v329 = &v281 - v62;
  v367 = type metadata accessor for AttributedSubstring();
  v357 = *(v367 - 8);
  __chkstk_darwin(v367);
  v335 = &v281 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v356 = &v281 - v65;
  __chkstk_darwin(v66);
  v344 = &v281 - v67;
  __chkstk_darwin(v68);
  v338 = &v281 - v69;
  v70 = type metadata accessor for AttributedString();
  v333 = *(v70 - 8);
  v334 = v70;
  __chkstk_darwin(v70);
  v359 = &v281 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = sub_1000F24EC(&qword_100AE4FE0, &qword_100957620);
  v366 = *(v350 - 1);
  __chkstk_darwin(v350);
  v73 = &v281 - v72;
  v349 = sub_1000F24EC(&qword_100AE4FE8, &qword_100957628);
  v354 = *(v349 - 8);
  __chkstk_darwin(v349);
  v75 = &v281 - v74;
  v76 = sub_1000F24EC(&qword_100AE4FF0, &qword_100957630);
  v365 = *(v76 - 8);
  __chkstk_darwin(v76);
  v376 = &v281 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v80 = &v281 - v79;
  v375 = type metadata accessor for AttributedString.Runs();
  v81 = *(v375 - 8);
  __chkstk_darwin(v375);
  v83 = &v281 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000F24EC(&qword_100AE4FF8, &qword_100957638);
  __chkstk_darwin(v84 - 8);
  v86 = &v281 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v352 = &v281 - v88;
  v358 = sub_1000F24EC(&qword_100ADA540, &qword_100957640);
  __chkstk_darwin(v358);
  v290 = &v281 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v90);
  v332 = &v281 - v91;
  __chkstk_darwin(v92);
  v362 = &v281 - v93;
  v347 = type metadata accessor for _ConditionalContent();
  v346 = *(v347 - 8);
  __chkstk_darwin(v347);
  v345 = &v281 - v94;
  AttributedString.runs.getter();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_100221DFC();
  AttributedString.Runs.subscript.getter();

  (*(v81 + 8))(v83, v375);
  v95 = *(v365 + 16);
  v351 = v80;
  v95(v376, v80, v76);
  sub_10000B58C(&qword_100AE5000, &qword_100AE4FF0, &qword_100957630, &protocol conformance descriptor for AttributedString.Runs.AttributesSlice1<A>);
  v353 = v76;
  dispatch thunk of Sequence.makeIterator()();
  sub_10000B58C(&qword_100AE5008, &qword_100AE4FE8, &qword_100957628, &protocol conformance descriptor for AttributedString.Runs.AttributesSlice1<A>.Iterator);
  v96 = v349;
  dispatch thunk of IteratorProtocol.next()();
  v97 = v350;
  v98 = *(v366 + 48);
  v376 = (v366 + 48);
  v375 = v98;
  if (v98(v86, 1, v350) == 1)
  {
LABEL_2:
    (*(v354 + 8))(v75, v96);
    (*(v365 + 8))(v351, v353);
    v99 = 1;
    v100 = v352;
  }

  else
  {
    while (1)
    {
      sub_100021CEC(v86, v73, &qword_100AE4FE0, &qword_100957620);
      if ((v73[8] & 1) == 0 && *v73 == 2)
      {
        break;
      }

      sub_100004F84(v73, &qword_100AE4FE0, &qword_100957620);
      dispatch thunk of IteratorProtocol.next()();
      if ((v375)(v86, 1, v97) == 1)
      {
        goto LABEL_2;
      }
    }

    (*(v354 + 8))(v75, v96);
    (*(v365 + 8))(v351, v353);
    v100 = v352;
    sub_100021CEC(v73, v352, &qword_100AE4FE0, &qword_100957620);
    v99 = 0;
  }

  (*(v366 + 56))(v100, v99, 1, v97);
  v101 = (v375)(v100, 1, v97);
  v102 = v373;
  if (v101 == 1)
  {
    sub_100004F84(v100, &qword_100AE4FF8, &qword_100957638);
    (*(v333 + 16))(v359, v369, v334);
    v103 = Text.init(_:)();
    v105 = v104;
    *&v418 = v103;
    *(&v418 + 1) = v104;
    v107 = v106 & 1;
    LOBYTE(v419) = v106 & 1;
    *(&v419 + 1) = v108;
    v109 = v364;
    v110 = swift_getWitnessTable();
    v111 = v345;
    sub_10047EFEC(&v418, v109, &type metadata for Text, v110, &protocol witness table for Text);
    sub_1000594D0(v103, v105, v107);

LABEL_35:
    v425 = swift_getWitnessTable();
    v426 = &protocol witness table for Text;
    v278 = v347;
    swift_getWitnessTable();
    sub_10053057C();
    return (*(v346 + 8))(v111, v278);
  }

  v112 = v100 + *(v97 + 12);
  v113 = v332;
  sub_100021CEC(v112, v332, &qword_100ADA540, &qword_100957640);
  v114 = v113;
  v115 = v362;
  sub_100021CEC(v114, v362, &qword_100ADA540, &qword_100957640);
  v376 = sub_100482EE4(&qword_100AE5010, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v117 = v368 + 16;
  v118 = v329;
  v366 = *(v368 + 16);
  (v366)(v329, v115, v102);
  sub_10000B58C(&qword_100AE5018, &qword_100AE4FD8, &qword_100957618, &protocol conformance descriptor for PartialRangeUpTo<A>);
  AttributedString.subscript.getter();
  sub_100004F84(v118, &qword_100AE4FD8, &qword_100957618);
  v365 = sub_100482EE4(&qword_100AE5020, &type metadata accessor for AttributedSubstring, &protocol conformance descriptor for AttributedSubstring);
  dispatch thunk of AttributedStringProtocol.characters.getter();
  sub_100482EE4(&qword_100AE5028, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v119 = v331;
  v120 = v372;
  dispatch thunk of Collection.endIndex.getter();
  v121 = (v117 - 8);
  v368 = v117;
  v375 = v117 + 16;
  while (1)
  {
    v122 = v371;
    dispatch thunk of Collection.startIndex.getter();
    v123 = dispatch thunk of static Equatable.== infix(_:_:)();
    v124 = v119;
    v125 = *v121;
    (*v121)(v122, v102);
    if (v123)
    {
      break;
    }

    sub_100482EE4(&qword_100AE5030, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    v126 = v370;
    dispatch thunk of BidirectionalCollection.index(before:)();
    v127 = dispatch thunk of Collection.subscript.read();

    (v127)(&v418, 0);

    LOBYTE(v127) = Character.isWhitespace.getter();
    swift_bridgeObjectRelease_n();
    if ((v127 & 1) == 0)
    {
      v102 = v373;
      v125(v126, v373);
      v120 = v372;
      break;
    }

    v102 = v373;
    v125(v124, v373);
    (*v375)(v124, v126, v102);
    v120 = v372;
    v119 = v124;
  }

  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    goto LABEL_37;
  }

  v128 = v326;
  v129 = v120;
  v130 = v366;
  (v366)(v326, v124, v102);
  v131 = v343;
  v132 = v374;
  sub_10047E94C(v128, v343);
  sub_100004F84(v128, &qword_100AE4FD8, &qword_100957618);
  v125(v124, v102);
  (*(v328 + 8))(v132, v129);
  v133 = *(v327 + 36);
  sub_100482EE4(&qword_100AE5038, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v134 = v291;
  v130(v291, v131, v102);
  v135 = v131;
  v136 = v293;
  v130((v134 + *(v293 + 48)), v135 + v133, v102);
  v137 = v292;
  sub_1000082B4(v134, v292, &qword_100AE4FC8, &qword_100957608);
  v374 = *(v136 + 48);
  v138 = *v375;
  v139 = v290;
  (*v375)(v290, v137, v102);
  v125((v137 + v374), v102);
  sub_100021CEC(v134, v137, &qword_100AE4FC8, &qword_100957608);
  v138(v139 + *(v358 + 36), v137 + *(v136 + 48), v102);
  v125(v137, v102);
  v140 = sub_10000B58C(&qword_100ADA548, &qword_100ADA540, &qword_100957640, &protocol conformance descriptor for Range<A>);
  v141 = v338;
  v354 = v140;
  v142 = v344;
  v143 = v367;
  dispatch thunk of AttributedStringProtocol.subscript.getter();
  sub_100004F84(v139, &qword_100ADA540, &qword_100957640);
  sub_100004F84(v343, &qword_100AE4FD0, &qword_100957610);
  v144 = v357;
  v145 = *(v357 + 8);
  v374 = v357 + 8;
  v372 = v145;
  (v145)(v142, v143);
  v146 = *(v144 + 16);
  v357 = v144 + 16;
  v344 = v146;
  (v146)(v356, v141, v143);
  AttributedString.init(_:)();
  v147 = Text.init(_:)();
  v149 = v148;
  v151 = v150;
  v153 = type metadata accessor for InsightsXSmallLabel(0, v363, v342, v152);
  LODWORD(v375) = *(v369 + *(v153 + 36));
  v370 = v153;
  if (v375)
  {
    static Font.headline.getter();
  }

  else
  {
  }

  v371 = Text.font(_:)();
  v365 = v154;
  v156 = v155;
  v353 = v157;

  sub_1000594D0(v147, v149, v151 & 1);

  v158 = static HierarchicalShapeStyle.secondary.getter();
  v159 = v336;
  v160 = *(v336 + 36);
  v161 = enum case for BlendMode.plusDarker(_:);
  v162 = type metadata accessor for BlendMode();
  v163 = *(v162 - 8);
  v164 = *(v163 + 104);
  v165 = v163 + 104;
  v166 = v337;
  LODWORD(v351) = v161;
  v164(&v337[v160], v161, v162);
  v167 = v166 + *(v159 + 40);
  LODWORD(v343) = enum case for BlendMode.plusLighter(_:);
  v352 = v162;
  v350 = v164;
  v349 = v165;
  (v164)(v167);
  *v166 = v158;
  v168 = sub_10000B58C(&qword_100ADB5B8, &qword_100ADB538, &qword_100957600, &unk_10095EF20);
  v169 = v371;
  v170 = v365;
  v334 = v168;
  v171 = Text.foregroundStyle<A>(_:)();
  v173 = v172;
  LOBYTE(v160) = v174;
  v176 = v175;
  sub_1000594D0(v169, v170, v156 & 1);

  sub_100004F84(v166, &qword_100ADB538, &qword_100957600);
  v177 = v370;
  v178 = v369;
  v179 = *(v369 + *(v370 + 10));
  v180 = static MatchedGeometryProperties.position.getter();
  v181 = *(v177 + 11);
  v424 = v160 & 1;
  *&v418 = v171;
  *(&v418 + 1) = v173;
  LOBYTE(v419) = v160 & 1;
  *(&v419 + 1) = *v423;
  DWORD1(v419) = *&v423[3];
  *(&v419 + 1) = v176;
  LOBYTE(v420) = 0;
  *(&v420 + 1) = *v422;
  DWORD1(v420) = *&v422[3];
  v371 = v179;
  *(&v420 + 1) = v179;
  *v421 = v180;
  *&v421[8] = *(v178 + v181);
  v421[24] = 1;
  v182 = *(v178 + *(v177 + 12));
  v183 = v356;
  AttributedString.subscript.getter();
  v184 = v296;
  v182(v183);
  (v372)(v183, v367);
  v185 = v177;
  if (!v375)
  {
    sub_1000F24EC(&qword_100AD7DC8, &qword_100946C30);
    ScaledMetric.wrappedValue.getter();
  }

  static Font.Weight.bold.getter();
  v186 = type metadata accessor for Font.Design();
  v187 = v295;
  (*(*(v186 - 8) + 56))(v295, 1, 1, v186);
  static Font.system(size:weight:design:)();
  sub_100004F84(v187, &qword_100AE1670, &qword_10094AFF0);
  v188 = v294;
  v189 = v363;
  View.font(_:)();

  (*(v298 + 8))(v184, v189);
  v191 = v299;
  v190 = v300;
  v192 = v312;
  View.tracking(_:)();
  (*(v297 + 8))(v188, v190);
  LODWORD(v395[0]) = static HierarchicalShapeStyle.primary.getter();
  *&v397[0] = v190;
  *(&v397[0] + 1) = v192;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v194 = v302;
  v195 = v313;
  View.foregroundStyle<A>(_:)();
  (*(v301 + 8))(v191, v195);
  v196 = sub_10000B58C(&qword_100AD21E0, &qword_100AD21E8, &unk_100940500, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v416 = OpaqueTypeConformance2;
  v417 = v196;
  v197 = v316;
  v198 = swift_getWitnessTable();
  v199 = v304;
  View.lineLimit(_:)();
  (*(v303 + 8))(v194, v197);
  v200 = sub_10000B58C(&qword_100ADB598, &qword_100ADB5A0, &qword_10094FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v414 = v198;
  v415 = v200;
  v201 = v319;
  v202 = swift_getWitnessTable();
  v203 = v306;
  View.minimumScaleFactor(_:)();
  (*(v305 + 8))(v199, v201);
  v204 = v308;
  static ContentTransition.numericText(countsDown:)();
  v205 = sub_10000B58C(&qword_100ADB5A8, &qword_100ADB5B0, &qword_10094B1B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v412 = v202;
  v413 = v205;
  v206 = v323;
  v207 = swift_getWitnessTable();
  v208 = sub_10047ECB0(v204, v206, v207);
  (*(v309 + 8))(v204, v310, v208);
  (*(v307 + 8))(v203, v206);
  if (v375)
  {
    v363 = 0x4055000000000000;
    v365 = 0xC018000000000000;
    goto LABEL_30;
  }

  v209 = v178 + *(v185 + 14);
  v210 = *v209;
  if (*(v209 + 8) == 1)
  {
    if (v210)
    {
LABEL_27:
      v365 = 0;
      v363 = 0;
      goto LABEL_30;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v211 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v212 = v281;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v213 = sub_1000467F0(v210, 0);
    (*(v282 + 8))(v212, v283, v213);
    if (v397[0])
    {
      goto LABEL_27;
    }
  }

  v365 = 0;
  v363 = 0;
LABEL_30:
  static Alignment.center.getter();
  v214 = sub_10000B58C(&qword_100AD21A8, &qword_100AD21B0, &qword_10094B160, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v410 = v207;
  v411 = v214;
  v215 = v324;
  v216 = swift_getWitnessTable();
  v217 = v314;
  v218 = v341;
  View.frame(width:height:alignment:)();
  (*(v311 + 8))(v218, v215);
  static Alignment.center.getter();
  v408 = v216;
  v409 = &protocol witness table for _FrameLayout;
  v279 = v325;
  v280 = swift_getWitnessTable();
  v219 = v317;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v315 + 8))(v217, v279);
  static Edge.Set.bottom.getter();
  v406 = v280;
  v407 = &protocol witness table for _FlexFrameLayout;
  v220 = v360;
  v221 = swift_getWitnessTable();
  v222 = v320;
  View.padding(_:_:)();
  (*(v318 + 8))(v219, v220);
  LOBYTE(v397[0]) = 1;
  static UnitPoint.center.getter();
  sub_100482E90(0, v223, v224, v225);
  v404 = v221;
  v405 = &protocol witness table for _PaddingLayout;
  v226 = v361;
  v227 = swift_getWitnessTable();
  sub_100482EE4(&qword_100AE5040, sub_100482E90, &unk_100957568);
  v228 = v322;
  View.matchedGeometryEffect<A>(id:in:properties:anchor:isSource:)();
  (*(v321 + 8))(v222, v226);
  v229 = sub_10000B58C(&qword_100AE5048, &qword_100AE4FB8, &unk_1009575E0, &protocol conformance descriptor for _MatchedGeometryEffect<A>);
  v402 = v227;
  v403 = v229;
  v230 = v340;
  v231 = swift_getWitnessTable();
  sub_10053057C();
  v232 = v339 + 8;
  v233 = *(v339 + 8);
  v233(v228, v230);
  v234 = *(v358 + 36);
  v235 = v362;
  v236 = v373;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v237 = v284;
    (v366)(v284, v235 + v234, v236);
    sub_10000B58C(&qword_100AE5050, &qword_100AE4FC0, &unk_1009575F0, &protocol conformance descriptor for PartialRangeFrom<A>);
    v238 = v356;
    AttributedString.subscript.getter();
    sub_100004F84(v237, &qword_100AE4FC0, &unk_1009575F0);
    v239 = v335;
    sub_10048295C(j___sSJ12isWhitespaceSbvg, 0, v335);
    v240 = v367;
    (v372)(v238, v367);
    (v344)(v238, v239, v240);
    AttributedString.init(_:)();
    v241 = Text.init(_:)();
    v243 = v242;
    v245 = v244;
    v365 = v232;
    v363 = v233;
    v361 = v231;
    if (v375)
    {
      static Font.title2.getter();
    }

    else
    {
    }

    v246 = Text.font(_:)();
    v248 = v247;
    v250 = v249;

    sub_1000594D0(v241, v243, v245 & 1);

    v251 = Text.bold()();
    v253 = v252;
    v255 = v254;
    v376 = v256;
    sub_1000594D0(v246, v248, v250 & 1);

    LODWORD(v246) = static HierarchicalShapeStyle.secondary.getter();
    v257 = v336;
    v258 = v337;
    v259 = v352;
    v260 = v350;
    (v350)(&v337[*(v336 + 36)], v351, v352);
    v260(&v258[*(v257 + 40)], v343, v259);
    *v258 = v246;
    v261 = Text.foregroundStyle<A>(_:)();
    v263 = v262;
    LOBYTE(v259) = v264;
    v266 = v265;
    sub_1000594D0(v251, v253, v255 & 1);

    sub_100004F84(v258, &qword_100ADB538, &qword_100957600);
    v267 = static MatchedGeometryProperties.position.getter();
    static UnitPoint.center.getter();
    v401 = v259 & 1;
    *&v391 = v261;
    *(&v391 + 1) = v263;
    LOBYTE(v392) = v259 & 1;
    *(&v392 + 1) = *v400;
    DWORD1(v392) = *&v400[3];
    *(&v392 + 1) = v266;
    LOBYTE(v393) = 2;
    *(&v393 + 1) = *v399;
    DWORD1(v393) = *&v399[3];
    *(&v393 + 1) = v371;
    LODWORD(v394[0]) = v267;
    *(&v394[0] + 1) = v268;
    *&v394[1] = v269;
    BYTE8(v394[1]) = 1;
    v388 = v420;
    v389[0] = *v421;
    *(v389 + 9) = *&v421[9];
    v386 = v418;
    v387 = v419;
    v390[0] = &v386;
    v270 = v340;
    v271 = v286;
    (*(v339 + 16))(v286, v355, v340);
    v384 = v393;
    v385[0] = v394[0];
    *(v385 + 9) = *(v394 + 9);
    v382 = v391;
    v383 = v392;
    v390[1] = v271;
    v390[2] = &v382;
    sub_1000082B4(&v418, v397, &qword_100AE4FB0, &unk_1009575D0);
    sub_1000082B4(&v391, v397, &qword_100AE4FB0, &unk_1009575D0);
    v381[0] = v289;
    v381[1] = v270;
    v381[2] = v289;
    v378 = sub_100483060();
    v379 = v361;
    v380 = v378;
    v272 = v287;
    sub_10047ED24(v390, 3uLL, v381);
    v395[2] = v384;
    v396[0] = v385[0];
    *(v396 + 9) = *(v385 + 9);
    v395[1] = v383;
    v395[0] = v382;
    sub_100004F84(v395, &qword_100AE4FB0, &unk_1009575D0);
    v273 = v363;
    (v363)(v271, v270);
    v397[2] = v388;
    *v398 = v389[0];
    *&v398[9] = *(v389 + 9);
    v397[1] = v387;
    v397[0] = v386;
    sub_100004F84(v397, &qword_100AE4FB0, &unk_1009575D0);
    v274 = v364;
    v275 = swift_getWitnessTable();
    v111 = v345;
    sub_10047EEF4(v272, v274, &type metadata for Text, v275, &protocol witness table for Text);
    sub_100004F84(&v391, &qword_100AE4FB0, &unk_1009575D0);
    sub_100004F84(&v418, &qword_100AE4FB0, &unk_1009575D0);
    (*(v288 + 8))(v272, v274);
    v276 = v367;
    v277 = v372;
    (v372)(v335, v367);
    v273(v355, v270);
    v277(v338, v276);
    sub_100004F84(v362, &qword_100ADA540, &qword_100957640);
    goto LABEL_35;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_10048295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v42 = a2;
  v38 = sub_1000F24EC(&qword_100AE4FC8, &qword_100957608);
  __chkstk_darwin(v38);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v39 = sub_1000F24EC(&qword_100ADA540, &qword_100957640);
  __chkstk_darwin(v39);
  v40 = &v33 - v10;
  v11 = type metadata accessor for AttributedString.CharacterView();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AE4FD0, &qword_100957610);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  v19 = type metadata accessor for AttributedSubstring();
  v20 = sub_100482EE4(&qword_100AE5020, &type metadata accessor for AttributedSubstring, &protocol conformance descriptor for AttributedSubstring);
  v37 = v19;
  v35 = v20;
  dispatch thunk of AttributedStringProtocol.characters.getter();
  v43 = a1;
  v44 = v42;
  sub_100482EE4(&qword_100AE5028, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  Collection.trimmingPrefix(while:)();
  (*(v12 + 8))(v14, v11);
  v21 = *(v16 + 44);
  v22 = type metadata accessor for AttributedString.Index();
  sub_100482EE4(&qword_100AE5038, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  v23 = v18;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v25 = *(v22 - 8);
    v26 = v25[2];
    v34 = v18;
    v26(v9, v18, v22);
    v27 = v38;
    v26(&v9[*(v38 + 48)], &v23[v21], v22);
    v28 = v36;
    sub_1000082B4(v9, v36, &qword_100AE4FC8, &qword_100957608);
    v29 = *(v27 + 48);
    v42 = v4;
    v30 = v25[4];
    v31 = v40;
    v30(v40, v28, v22);
    v32 = v25[1];
    v32(v28 + v29, v22);
    sub_100021CEC(v9, v28, &qword_100AE4FC8, &qword_100957608);
    v30((v31 + *(v39 + 36)), v28 + *(v27 + 48), v22);
    v32(v28, v22);
    sub_10000B58C(&qword_100ADA548, &qword_100ADA540, &qword_100957640, &protocol conformance descriptor for Range<A>);
    dispatch thunk of AttributedStringProtocol.subscript.getter();
    sub_100004F84(v31, &qword_100ADA540, &qword_100957640);
    return sub_100004F84(v34, &qword_100AE4FD0, &qword_100957610);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100482E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_100AE4FA8)
  {
    v4 = _s2IDOMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_100AE4FA8);
    }
  }
}

uint64_t sub_100482EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100482F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedSubstring();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString();
  v9 = __chkstk_darwin(v8 - 8);
  (*(v5 + 16))(v7, a1, v4, v9);
  AttributedString.init(_:)();
  result = Text.init(_:)();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

unint64_t sub_100483060()
{
  result = qword_100AE5058;
  if (!qword_100AE5058)
  {
    sub_1000F2A18(&qword_100AE4FB0, &unk_1009575D0);
    sub_10000B58C(&qword_100AE5048, &qword_100AE4FB8, &unk_1009575E0, &protocol conformance descriptor for _MatchedGeometryEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5058);
  }

  return result;
}

double sub_10048314C(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v40 - v7;
  v58 = type metadata accessor for IndexPath();
  v52 = *(v58 - 8);
  __chkstk_darwin(v58);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v8;
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v51 = v1;
  v12 = *(*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry] + OBJC_IVAR____TtC7Journal14EntryViewModel_fullScreenAssets);
  if (v12 >> 62)
  {
LABEL_25:
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = OBJC_IVAR____TtC7Journal5Asset_id;

  if (v13)
  {
    v15 = 0;
    v56 = v12 & 0xFFFFFFFFFFFFFF8;
    v57 = v12 & 0xC000000000000001;
    v43 = v52 + 16;
    v42 = v52 + 32;
    v41 = (v52 + 8);
    v47 = v11;
    v48 = a1;
    v45 = v13;
    v46 = v12;
    v44 = v14;
    do
    {
      if (v57)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_22:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *(v56 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v16 = *(v12 + 8 * v15 + 32);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_22;
        }
      }

      v60 = v17;
      v18 = v16;
      if (static UUID.== infix(_:_:)())
      {
        v55 = v18;
        IndexPath.init(row:section:)();
        v19 = type metadata accessor for TaskPriority();
        v54 = *(v19 - 8);
        v20 = v59;
        (*(v54 + 56))(v59, 1, 1, v19);
        v21 = v52;
        v22 = v49;
        v23 = v58;
        (*(v52 + 16))(v49, v11, v58);
        type metadata accessor for MainActor();
        v53 = v51;
        v24 = static MainActor.shared.getter();
        v25 = v5;
        v26 = v20;
        v27 = (*(v21 + 80) + 40) & ~*(v21 + 80);
        v28 = swift_allocObject();
        *(v28 + 2) = v24;
        v29 = v53;
        *(v28 + 3) = &protocol witness table for MainActor;
        *(v28 + 4) = v29;
        v30 = *(v21 + 32);
        v31 = v26;
        v5 = v25;
        v30(&v28[v27], v22, v23);
        v32 = v31;
        v33 = v54;
        sub_1001E6194(v32, v25);
        LODWORD(v24) = (*(v33 + 48))(v25, 1, v19);

        if (v24 == 1)
        {
          sub_1003EAA74(v25);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v33 + 8))(v25, v19);
        }

        v34 = *(v28 + 2);
        swift_unknownObjectRetain();

        if (v34)
        {
          swift_getObjectType();
          v35 = dispatch thunk of Actor.unownedExecutor.getter();
          v37 = v36;
          swift_unknownObjectRelease();
        }

        else
        {
          v35 = 0;
          v37 = 0;
        }

        v12 = v46;
        sub_1003EAA74(v59);
        v38 = swift_allocObject();
        *(v38 + 16) = &unk_100957708;
        *(v38 + 24) = v28;
        if (v37 | v35)
        {
          v61 = 0;
          v62 = 0;
          v63 = v35;
          v64 = v37;
        }

        v13 = v45;
        swift_task_create();

        v11 = v47;
        (*v41)(v47, v58);
        a1 = v48;
      }

      else
      {
      }

      ++v15;
    }

    while (v60 != v13);
  }

  return result;
}

uint64_t sub_10048368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for IndexPath();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for JournalFeatureFlags();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v9;
  v5[13] = v8;

  return _swift_task_switch(sub_1004837E0, v9, v8);
}

uint64_t sub_1004837E0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.fullScreenViewer(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[2];
    v6 = static MainActor.shared.getter();
    v0[14] = v6;
    v7 = swift_task_alloc();
    v0[15] = v7;
    *(v7 + 16) = v5;
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_100483A24;

    return withCheckedContinuation<A>(isolation:function:_:)(v8, v6, &protocol witness table for MainActor, 0xD000000000000019, 0x80000001008F53D0, sub_1004841A8, v7, &type metadata for () + 1);
  }

  else
  {
    v9 = sub_10054B1CC();
    v0[17] = v9;
    if (v9)
    {
      v10 = *(v0[2] + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
      v11 = swift_task_alloc();
      v0[18] = v11;
      *v11 = v0;
      v11[1] = sub_100483DB0;
      v12 = v0[3];

      return sub_100163090(v10, v12);
    }

    else
    {

      v13 = v0[1];

      return v13();
    }
  }
}

uint64_t sub_100483A24()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_100483B84, v3, v2);
}

uint64_t sub_100483B84()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  (*(v2 + 16))(v1, v4, v3);
  v6 = *&v5[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];

  v7 = sub_100437D24(v1, v6, [v5 isEditing] ^ 1u);
  [v7 setEditing:{objc_msgSend(v5, "isEditing")}];
  *&v7[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_delegate + 8] = &off_100A6E678;
  swift_unknownObjectWeakAssign();
  v8 = [v5 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 5)
  {
    v10 = v0[2];

    [v10 showViewController:v7 sender:v10];
  }

  else
  {
    v11 = v0[3];
    v12 = [objc_allocWithZone(type metadata accessor for FullScreenAssetNavigationController()) initWithRootViewController:v7];

    sub_1004841B0();
    v13 = v12;
    v14 = sub_1004B71D4(v11);
    [v13 setPreferredTransition:v14];

    v15 = UIViewController.forPresenting.getter();
    [v15 presentViewController:v13 animated:1 completion:0];

    v7 = v13;
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100483DB0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_100483EF4, v3, v2);
}

uint64_t sub_100483EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100483F68(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD4E78, &unk_1009439A0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10066362C(sub_1001608FC, v8);

  return result;
}

uint64_t sub_1004840B0(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10048368C(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1004841B0()
{
  result = qword_100ADE550;
  if (!qword_100ADE550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADE550);
  }

  return result;
}

void sub_1004841FC(uint64_t a1)
{
  v2 = v1;
  v123 = type metadata accessor for AssetType();
  v113 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v118 = v104 - v6;
  if (qword_100ACFDD0 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    v8 = sub_10000617C(v7, qword_100AE5068);

    v104[1] = v8;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    v11 = os_log_type_enabled(v9, v10);
    v104[0] = v2;
    v105 = a1;
    if (v11)
    {
      v2 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v126 = v12;
      *v2 = 136315138;
      v13 = Array.description.getter();
      v15 = sub_100008458(v13, v14, &v126);

      *(v2 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Applying filters: %s", v2, 0xCu);
      sub_10000BA7C(v12);
    }

    v126 = _swiftEmptyArrayStorage;
    sub_1000065A8(0, &unk_100AD5AF0, NSCompoundPredicate_ptr);
    static NSPredicate.timelineEntries.getter();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v2 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v112 = *(v105 + 16);
    if (!v112)
    {
      break;
    }

    v16 = 0;
    v119 = (v113 + 8);
    v120 = v113 + 16;
    v110 = "assets.@count == 0";
    v111 = v105 + 32;
    v106 = "ANY assets.contentType IN %@";
    v108 = "AND entryDate < %@";
    v107 = xmmword_100941D60;
    v115 = xmmword_100940080;
    v109 = xmmword_100941D50;
    while (1)
    {
      v114 = v16;
      v17 = (v111 + 24 * v16);
      v18 = *v17;
      a1 = v17[1];
      v19 = *(v17 + 1);
      v20 = *(v17 + 2);
      if (v18 == 2)
      {

        v122 = v20;
        if (!v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
        sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
        v21 = swift_allocObject();
        *(v21 + 16) = v115;
        *(v21 + 56) = &type metadata for Bool;
        *(v21 + 64) = &protocol witness table for Bool;
        *(v21 + 32) = v18 & 1;

        v2 = NSPredicate.init(format:_:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v122 = v20;
        if (!v19)
        {
          goto LABEL_40;
        }
      }

      LODWORD(v116) = a1;
      v22 = *(v19 + 2);
      v117 = v19;
      if (v22)
      {
        v125 = _swiftEmptyArrayStorage;

        sub_1001999C0(0, v22, 0);
        v23 = v125;
        v24 = v19 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
        v25 = *(v113 + 72);
        v26 = *(v113 + 16);
        do
        {
          v27 = v118;
          v28 = v123;
          v26(v118, v24, v123);
          v29 = AssetType.rawValue.getter();
          v31 = v30;
          (*v119)(v27, v28);
          v125 = v23;
          v33 = *(v23 + 2);
          v32 = *(v23 + 3);
          if (v33 >= v32 >> 1)
          {
            sub_1001999C0((v32 > 1), v33 + 1, 1);
            v23 = v125;
          }

          *(v23 + 2) = v33 + 1;
          v34 = &v23[2 * v33];
          *(v34 + 4) = v29;
          *(v34 + 5) = v31;
          v24 += v25;
          --v22;
        }

        while (v22);
        v20 = v122;
        v19 = v117;
      }

      else
      {

        v23 = _swiftEmptyArrayStorage;
      }

      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v35 = swift_allocObject();
      *(v35 + 16) = v109;
      v2 = sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
      sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
      v36 = swift_allocObject();
      *(v36 + 16) = v115;
      *(v36 + 56) = sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
      *(v36 + 64) = sub_10000B58C(&qword_100AD3C00, &qword_100AD60A0, &qword_100943DB0, &protocol conformance descriptor for [A]);
      *(v36 + 32) = v23;
      *(v35 + 32) = NSPredicate.init(format:_:)();
      v125 = v35;
      v37 = static AssetType.mediaTypes.getter();
      a1 = *(v19 + 2);
      if (!a1)
      {
LABEL_31:

        a1 = v116;
        goto LABEL_37;
      }

      v38 = 0;
LABEL_25:
      if (v38 >= *(v19 + 2))
      {
        __break(1u);
        goto LABEL_97;
      }

      v39 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v40 = *(v113 + 72);
      (*(v113 + 16))(v121, v19 + v39 + v40 * v38++, v123);
      v41 = v37 + v39;
      v42 = *(v37 + 16) + 1;
      do
      {
        if (!--v42)
        {
          (*v119)(v121, v123);
          v19 = v117;
          if (v38 == a1)
          {
            goto LABEL_31;
          }

          goto LABEL_25;
        }

        sub_1004874AC(&qword_100ADC690, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
        v41 += v40;
      }

      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
      (*v119)(v121, v123);

      sub_1004871D8();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100486D70();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = v116;
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_37:
      isa = Array._bridgeToObjectiveC()().super.isa;

      v2 = [objc_opt_self() orPredicateWithSubpredicates:isa];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_40:
      if (a1 != 2 && (a1 & 1) != 0)
      {
        sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
        v2 = NSPredicate.init(format:_:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (!v20)
      {

        goto LABEL_9;
      }

      v125 = _swiftEmptyArrayStorage;
      v124 = _swiftEmptyArrayStorage;
      if (v20 >> 62)
      {
        break;
      }

      v44 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
        goto LABEL_48;
      }

LABEL_73:
      v116 = _swiftEmptyArrayStorage;
      v117 = _swiftEmptyArrayStorage;
LABEL_74:

      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v68 = swift_allocObject();
      *(v68 + 16) = v107;
      sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
      v2 = sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
      v69 = swift_allocObject();
      *(v69 + 16) = v115;
      v70 = sub_1000F24EC(&unk_100AEED10, &qword_100964F50);
      *(v69 + 56) = v70;
      v71 = sub_10000B58C(&qword_100AE5098, &unk_100AEED10, &qword_100964F50, &protocol conformance descriptor for [A]);
      *(v69 + 64) = v71;
      *(v69 + 32) = v117;
      *(v68 + 32) = NSPredicate.init(format:_:)();
      v72 = swift_allocObject();
      *(v72 + 16) = v115;
      *(v72 + 56) = v70;
      *(v72 + 64) = v71;
      *(v72 + 32) = v116;
      *(v68 + 40) = NSPredicate.init(format:_:)();
      v73 = Array._bridgeToObjectiveC()().super.isa;

      v74 = [objc_opt_self() orPredicateWithSubpredicates:v73];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v2 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_9:
      v16 = v114 + 1;
      if (v114 + 1 == v112)
      {
        goto LABEL_77;
      }
    }

    v44 = _CocoaArrayWrapper.endIndex.getter();
    if (!v44)
    {
      goto LABEL_73;
    }

LABEL_48:
    type metadata accessor for JournalEntryMO();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (v44 >= 1)
    {
      v46 = ObjCClassFromMetadata;
      v47 = 0;
      v48 = v20 & 0xC000000000000001;
      v116 = _swiftEmptyArrayStorage;
      v117 = _swiftEmptyArrayStorage;
      while (1)
      {
        v49 = v48 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v20 + 8 * v47 + 32);
        v50 = v49;
        v51 = [v49 entityName];
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v55 = [v46 entityName];
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        if (v56 == v52 && v58 == v54)
        {
          break;
        }

        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v60)
        {
          goto LABEL_62;
        }

        type metadata accessor for JournalEntryAssetMO();
        v62 = [swift_getObjCClassFromMetadata() entityName];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        if (v63 == v52 && v65 == v54)
        {

          v20 = v122;
LABEL_69:
          v67 = v50;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v116 = v124;
          goto LABEL_51;
        }

        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v20 = v122;
        if (v66)
        {
          goto LABEL_69;
        }

LABEL_51:
        if (v44 == ++v47)
        {
          goto LABEL_74;
        }
      }

LABEL_62:

      v61 = v50;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = v122;
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v117 = v125;
      goto LABEL_51;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

LABEL_77:
  sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
  v75 = Array._bridgeToObjectiveC()().super.isa;

  v76 = [objc_opt_self() andPredicateWithSubpredicates:v75];

  [objc_opt_self() deleteCacheWithName:0];
  v77 = v76;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    *(v80 + 4) = v77;
    *v81 = v77;
    v82 = v77;
    _os_log_impl(&_mh_execute_header, v78, v79, "Applying filter fetchRequest.predicate: %@", v80, 0xCu);
    sub_100004F84(v81, &unk_100AD4BB0, &unk_100941E50);
  }

  v83 = OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController;
  v84 = v104[0];
  v85 = *(v104[0] + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v85)
  {
    v86 = [v85 fetchRequest];
    [v86 setPredicate:v77];
  }

  v87 = OBJC_IVAR____TtC7Journal18EntryListViewModel_currentFilters;
  *(v84 + OBJC_IVAR____TtC7Journal18EntryListViewModel_currentFilters) = v105;

  v88 = *(v84 + v83);
  if (v88)
  {
    v125 = 0;
    if (![v88 performFetch:&v125])
    {
      v97 = v84;
      v98 = v125;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      *(v97 + v87) = 0;

      swift_errorRetain();
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 138412290;
        swift_errorRetain();
        v103 = _swift_stdlib_bridgeErrorToNSError();
        *(v101 + 4) = v103;
        *v102 = v103;
        _os_log_impl(&_mh_execute_header, v99, v100, "Apply filter fetch error: %@", v101, 0xCu);
        sub_100004F84(v102, &unk_100AD4BB0, &unk_100941E50);
      }

      else
      {
      }

      return;
    }

    v89 = v125;
  }

  v90 = Logger.logObject.getter();
  v91 = v84;
  v92 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v90, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 134217984;
    v94 = *(v91 + v83);
    if (v94)
    {
      v95 = [v94 fetchedObjects];
      if (v95)
      {
        type metadata accessor for JournalEntryMO();
        v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v96 >> 62)
        {
          v95 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v95 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }
    }

    else
    {
      v95 = 0;
    }

    *(v93 + 4) = v95;

    _os_log_impl(&_mh_execute_header, v90, v92, "Filter result count: %ld", v93, 0xCu);
  }

  else
  {
  }
}

uint64_t sub_100485470(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for EntryListType(0);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v5;
  v2[18] = v6;

  return _swift_task_switch(sub_100485620, v5, v6);
}

uint64_t sub_100485620()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[7];
  v4 = v0[8];
  v6 = swift_allocObject();
  v0[19] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v7 = swift_task_alloc();
  v0[20] = v7;
  v8 = sub_1000F24EC(&unk_100AEED10, &qword_100964F50);
  *v7 = v0;
  v7[1] = sub_1004857A4;
  v9 = v0[15];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 5, v9, sub_100487468, v6, v8);
}

void sub_1004857A4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);

    v3 = v2[17];
    v4 = v2[18];

    _swift_task_switch(sub_10048593C, v3, v4);
  }
}

uint64_t sub_10048593C()
{
  v77 = v1;

  v3 = v1[5];
  if (_swiftEmptyArrayStorage >> 62)
  {
    v27 = v1[5];
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100496D54(_swiftEmptyArrayStorage);
    }

    else
    {
      v28 = _swiftEmptySetSingleton;
    }

    v73 = v28;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100496D54(_swiftEmptyArrayStorage);
    }

    else
    {
      v4 = _swiftEmptySetSingleton;
    }

    v3 = v27;
  }

  else
  {
    v4 = _swiftEmptySetSingleton;
    v73 = _swiftEmptySetSingleton;
  }

  v70 = v1;
  v74 = v4;
  if (v3 >> 62)
  {
    v29 = v3;
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v29;
    v5 = v30;
    if (v30)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_5:
      v6 = v3;
      type metadata accessor for JournalEntryMO();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if (v5 >= 1)
      {
        v7 = 0;
        v8 = v6;
        v71 = v6 & 0xC000000000000001;
        v9 = v6;
        while (1)
        {
          v10 = v71 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v8 + 8 * v7 + 32);
          v11 = v10;
          v12 = [v10 entityName];
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          v16 = [ObjCClassFromMetadata entityName];
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          if (v17 == v13 && v19 == v15)
          {
            break;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_17;
          }

          type metadata accessor for JournalEntryAssetMO();
          v22 = [swift_getObjCClassFromMetadata() entityName];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          if (v23 == v13 && v25 == v15)
          {
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v26 & 1) == 0)
            {

              goto LABEL_19;
            }
          }

LABEL_18:
          sub_100288038(v76, v11);

LABEL_19:
          ++v7;
          v8 = v9;
          if (v5 == v7)
          {
            goto LABEL_29;
          }
        }

LABEL_17:

        goto LABEL_18;
      }

      __break(1u);
LABEL_78:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_55:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if ((v0 & 0xC000000000000001) != 0)
      {
        goto LABEL_56;
      }

LABEL_61:
      if (*(v0 + 16) >= 1)
      {
        goto LABEL_57;
      }

LABEL_62:

      goto LABEL_63;
    }
  }

LABEL_29:

  if (qword_100ACFDD8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000617C(v31, qword_100AE5080);
  v0 = v74;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134218240;
    if ((v73 & 0xC000000000000001) != 0)
    {
      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *(v73 + 16);
    }

    *(v34 + 4) = v35;

    *(v34 + 12) = 2048;
    if ((v74 & 0xC000000000000001) != 0)
    {
      v36 = __CocoaSet.count.getter();
    }

    else
    {
      v36 = *(v74 + 16);
    }

    *(v34 + 14) = v36;

    _os_log_impl(&_mh_execute_header, v32, v33, "Entry Object ID Count: %ld, Asset Object ID Count: %ld)", v34, 0x16u);
  }

  else
  {
  }

  v37 = v70[12];
  v38 = v70[8];
  v75 = _swiftEmptyArrayStorage;
  v39 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
  swift_beginAccess();
  sub_100022B50(v38 + v39, v37);
  v40 = sub_1000F24EC(&qword_100AD47A0, &qword_100941E20);
  v41 = (*(*(v40 - 8) + 48))(v37, 2, v40);
  if (v41)
  {
    if (v41 == 1)
    {
      sub_1000065A8(0, &unk_100AD5AF0, NSCompoundPredicate_ptr);
      static NSPredicate.recentlyDeletedEntries.getter();
    }

    else
    {
      sub_1000065A8(0, &unk_100AD5AF0, NSCompoundPredicate_ptr);
      static NSPredicate.timelineEntries.getter();
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    (*(v70[10] + 32))(v70[11], v70[12], v70[9]);
    sub_1000065A8(0, &unk_100AD5AF0, NSCompoundPredicate_ptr);
    static NSPredicate.timelineEntriesFor(journalID:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v43 = v70[10];
    v42 = v70[11];
    v44 = v70[9];
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v43 + 8))(v42, v44);
  }

  v76[0] = _swiftEmptyArrayStorage;
  if ((v73 & 0xC000000000000001) != 0)
  {
    v45 = __CocoaSet.count.getter();
  }

  else
  {
    v45 = *(v73 + 16);
  }

  v2 = &unk_100940000;
  if (v45 >= 1)
  {
    sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
    sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100940080;
    *(v46 + 56) = sub_1000F24EC(&qword_100AD3760, qword_100941E80);
    *(v46 + 64) = sub_10000B58C(&qword_100AD3768, &qword_100AD3760, qword_100941E80, &protocol conformance descriptor for Set<A>);
    *(v46 + 32) = v73;
    NSPredicate.init(format:_:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_55;
    }

    goto LABEL_78;
  }

  if ((v74 & 0xC000000000000001) == 0)
  {
    goto LABEL_61;
  }

LABEL_56:
  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_62;
  }

LABEL_57:
  sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
  sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
  v47 = swift_allocObject();
  *(v47 + 16) = v2[8];
  *(v47 + 56) = sub_1000F24EC(&qword_100AD3760, qword_100941E80);
  *(v47 + 64) = sub_10000B58C(&qword_100AD3768, &qword_100AD3760, qword_100941E80, &protocol conformance descriptor for Set<A>);
  *(v47 + 32) = v0;
  NSPredicate.init(format:_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_63:
  sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v49 = objc_opt_self();
  v50 = [v49 orPredicateWithSubpredicates:isa];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v51 = v70[8];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v52 = Array._bridgeToObjectiveC()().super.isa;

  v53 = [v49 andPredicateWithSubpredicates:v52];

  [objc_opt_self() deleteCacheWithName:0];
  v54 = OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController;
  v55 = *(v51 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v55 && (v56 = [v55 fetchRequest], objc_msgSend(v56, "setPredicate:", v53), v56, (v57 = *(v51 + v54)) != 0))
  {
    v58 = v70;
    v70[6] = 0;
    v59 = [v57 performFetch:v70 + 6];
    v60 = v70[6];
    if (v59)
    {
      v61 = v60;

      goto LABEL_71;
    }

    v64 = v60;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      swift_errorRetain();
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v69;
      *v68 = v69;
      _os_log_impl(&_mh_execute_header, v65, v66, "Update fetch request error: %@", v67, 0xCu);
      sub_100004F84(v68, &unk_100AD4BB0, &unk_100941E50);
    }

    else
    {
    }
  }

  else
  {
  }

  v58 = v70;
LABEL_71:

  v62 = v58[1];

  return v62();
}

uint64_t sub_100486558(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  sub_100006118(v8, a2);
  v9 = sub_10000617C(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_10000617C(v8, a4);
  v11 = *(*(v8 - 8) + 16);

  return v11(v9, v10, v8);
}

uint64_t sub_100486620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v72 = a2;
  v4 = type metadata accessor for MergeableColor();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD68C0, &unk_100941E70);
  __chkstk_darwin(v6 - 8);
  v66 = &v63 - v7;
  v8 = type metadata accessor for ColorResource();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v73 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  v76 = *(v13 - 1);
  __chkstk_darwin(v13);
  v65 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v69 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v63 - v22;
  type metadata accessor for JournalMO();
  static JournalMO.defaultJournalID.getter();
  v24 = a1;
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v70 = v19;
  v25 = v19;
  v26 = v18;
  (*(v25 + 8))(v23, v18);
  if ((a1 & 1) == 0)
  {
    sub_1004874AC(&qword_100AD4C68, &type metadata accessor for JournalMO, &protocol conformance descriptor for JournalMO);
    v39 = v78;
    v40 = static Identifiable<>.fetch(id:context:)();
    if (v39)
    {

      v38 = 1;
      v37 = v77;
      v30 = v13;
      return (*(v76 + 56))(v37, v38, 1, v30);
    }

    v41 = v40;
    v30 = v13;
    if (v40)
    {
      v42 = JournalMO.title.getter();
      if (v43)
      {
        v44 = v43;
        v75 = v42;
        (*(v70 + 16))(v69, v24, v26);
        v45 = v66;
        JournalMO.color.getter();
        v47 = v67;
        v46 = v68;
        v48 = (*(v67 + 48))(v45, 1, v68);
        v78 = 0;
        if (v48)
        {
          sub_100004F84(v45, &unk_100AD68C0, &unk_100941E70);
          v74 = 0;
        }

        else
        {
          v49 = v64;
          (*(v47 + 16))(v64, v45, v46);
          sub_100004F84(v45, &unk_100AD68C0, &unk_100941E70);
          v74 = sub_10007C744();
          (*(v47 + 8))(v49, v46);
        }

        v50 = JournalMO.symbolName.getter();
        v52 = v51;
        v53 = JournalMO.emoji.getter();
        v55 = v54;
        v56 = v65;
        UUID.init()();

        (*(v70 + 32))(v56 + v30[5], v69, v26);
        v57 = (v56 + v30[6]);
        v58 = v74;
        *v57 = v75;
        v57[1] = v44;
        *(v56 + v30[7]) = v58;
        v59 = (v56 + v30[8]);
        *v59 = v50;
        v59[1] = v52;
        v60 = (v56 + v30[9]);
        *v60 = v53;
        v60[1] = v55;
        v61 = v56 + v30[10];
        *v61 = 0;
        *(v61 + 8) = 0;
        v37 = v77;
        sub_1004874F4(v56, v77);
        v38 = 0;
        return (*(v76 + 56))(v37, v38, 1, v30);
      }
    }

    v38 = 1;
    v37 = v77;
    return (*(v76 + 56))(v37, v38, 1, v30);
  }

  static JournalMO.defaultJournalID.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v28;
  sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  v30 = v13;
  if (qword_100AD0BE0 != -1)
  {
    swift_once();
  }

  v31 = v75;
  v32 = sub_10000617C(v75, qword_100B312B0);
  v74[2](v73, v32, v31);
  v33 = UIColor.init(resource:)();
  UUID.init()();
  v34 = &v17[v13[6]];
  *v34 = v27;
  v34[1] = v29;
  *&v17[v13[7]] = v33;
  *&v17[v13[8]] = xmmword_100957710;
  v35 = &v17[v13[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v17[v13[10]];
  *v36 = 0;
  v36[8] = 0;
  v37 = v77;
  sub_1004874F4(v17, v77);
  v38 = 0;
  return (*(v76 + 56))(v37, v38, 1, v30);
}

uint64_t sub_100486D70()
{
  sub_1001999C0(0, 4, 0);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  *&v2 = *&v1 + 1;
  if (*&v1 >= *&v0 >> 1)
  {
    sub_1001999C0((*&v0 > 1uLL), *&v1 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v2;
  v3 = &_swiftEmptyArrayStorage[2 * *&v1];
  *(v3 + 4) = 0x636973756DLL;
  v3[5] = -3.24180904e178;
  v4 = _swiftEmptyArrayStorage[3];
  v5 = *&v1 + 2;
  if (*&v2 >= *&v4 >> 1)
  {
    sub_1001999C0((*&v4 > 1uLL), v5, 1);
  }

  *&_swiftEmptyArrayStorage[2] = v5;
  v6 = &_swiftEmptyArrayStorage[2 * *&v2];
  v6[4] = 1.82017314e-306;
  v6[5] = -1.39234638e188;
  v8 = _swiftEmptyArrayStorage[2];
  v7 = _swiftEmptyArrayStorage[3];
  *&v9 = *&v8 + 1;
  if (*&v8 >= *&v7 >> 1)
  {
    sub_1001999C0((*&v7 > 1uLL), *&v8 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9;
  v10 = &_swiftEmptyArrayStorage[2 * *&v8];
  *(v10 + 4) = 1802465122;
  v10[5] = -4.94660803e173;
  v11 = _swiftEmptyArrayStorage[3];
  v12 = *&v8 + 2;
  if (*&v9 >= *&v11 >> 1)
  {
    sub_1001999C0((*&v11 > 1uLL), v12, 1);
  }

  *&_swiftEmptyArrayStorage[2] = v12;
  v13 = &_swiftEmptyArrayStorage[2 * *&v9];
  v13[4] = -2.31584178e77;
  *(v13 + 5) = 0x80000001008DC410;
  sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
  sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100940080;
  *(v14 + 56) = sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
  *(v14 + 64) = sub_10000B58C(&qword_100AD3C00, &qword_100AD60A0, &qword_100943DB0, &protocol conformance descriptor for [A]);
  *(v14 + 32) = _swiftEmptyArrayStorage;
  return NSPredicate.init(format:_:)();
}

uint64_t sub_1004871D8()
{
  v23 = type metadata accessor for AssetType();
  v0 = *(v23 - 8);
  __chkstk_darwin(v23);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = static AssetType.mediaTypes.getter();
  v4 = *(v3 + 16);
  if (v4)
  {
    v24 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v4, 0);
    v5 = v24;
    v7 = *(v0 + 16);
    v6 = v0 + 16;
    v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v21 = *(v6 + 56);
    v22 = v7;
    v19 = v3;
    v20 = (v6 - 8);
    do
    {
      v9 = v23;
      v10 = v6;
      v22(v2, v8, v23);
      v11 = AssetType.rawValue.getter();
      v13 = v12;
      (*v20)(v2, v9);
      v24 = v5;
      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        sub_1001999C0((v14 > 1), v15 + 1, 1);
        v5 = v24;
      }

      *(v5 + 2) = v15 + 1;
      v16 = &v5[2 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      v8 += v21;
      --v4;
      v6 = v10;
    }

    while (v4);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
  sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100940080;
  *(v17 + 56) = sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
  *(v17 + 64) = sub_10000B58C(&qword_100AD3C00, &qword_100AD60A0, &qword_100943DB0, &protocol conformance descriptor for [A]);
  *(v17 + 32) = v5;
  return NSPredicate.init(format:_:)();
}

uint64_t sub_100487468@<X0>(uint64_t *a1@<X8>)
{
  result = static JournalDataUtilities.fetchObjectIds(objectURIs:context:)();
  *a1 = result;
  return result;
}

uint64_t sub_1004874AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004874F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100487558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[7] = a3;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[14] = v8;
  v5[15] = v10;

  return _swift_task_switch(sub_100487664, v8, v10);
}

uint64_t sub_100487664()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *&v3[OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate];
  *(v0 + 128) = v4;
  type metadata accessor for SyncDataMO();
  v5 = static SyncDataMO.fetchRequest()();
  *(v0 + 136) = v5;
  v6 = swift_allocObject();
  *(v0 + 144) = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  *(v0 + 216) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = *(v2 + 104);
  *(v0 + 152) = v7;
  *(v0 + 160) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1);
  v4;
  v8 = v5;
  v9 = v3;
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  v11 = sub_1000F24EC(&qword_100AE4500, &unk_1009566C0);
  *v10 = v0;
  v10[1] = sub_1004877EC;
  v12 = *(v0 + 104);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 48, v12, sub_10048F19C, v6, v11);
}

void sub_1004877EC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[13];
    v4 = v2[10];
    v5 = v2[11];
    v6 = *(v5 + 8);
    v2[22] = v6;
    v2[23] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);

    v7 = v2[14];
    v8 = v2[15];

    _swift_task_switch(sub_10048793C, v7, v8);
  }
}

uint64_t sub_10048793C()
{
  v29 = v0;

  v1 = *(v0 + 48);
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 216);
    v4 = *(v0 + 96);
    v5 = *(v0 + 80);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = swift_allocObject();
    *(v0 + 200) = v8;
    v8[2] = v1;
    v8[3] = v7;
    v8[4] = v6;
    v2(v4, v3, v5);
    v9 = v1;

    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_100487CD4;
    v11 = *(v0 + 96);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_10048EF04, v8, &type metadata for () + 1);
  }

  else
  {
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 72);
    v13 = type metadata accessor for Logger();
    sub_10000617C(v13, qword_100AE50A0);

    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v27 = *(v0 + 64);
      v17 = *(v0 + 56);
      v18 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v18 = 136446723;
      type metadata accessor for UUID();
      sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = sub_100008458(v19, v20, &v28);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2160;
      *(v18 + 14) = 1752392040;
      *(v18 + 22) = 2081;
      *(v0 + 16) = v17;
      *(v0 + 24) = v27;

      sub_1000F24EC(&unk_100AE4870, &qword_100945360);
      v22 = String.init<A>(describing:)();
      v24 = sub_100008458(v22, v23, &v28);

      *(v18 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s Unable to save CloudKit userID: %{private,mask.hash}s", v18, 0x20u);
      swift_arrayDestroy();
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

void sub_100487CD4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 176))(*(v2 + 96), *(v2 + 80));

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);

    _swift_task_switch(sub_100487E20, v3, v4);
  }
}

uint64_t sub_100487E20()
{
  v16 = v0;
  if (qword_100ACFDE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AE50A0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  if (v4)
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v0[4] = v7;
    v0[5] = v6;

    sub_1000F24EC(&unk_100AE4870, &qword_100945360);
    v10 = String.init<A>(describing:)();
    v12 = sub_100008458(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saved CloudKit UserID: %{private,mask.hash}s", v8, 0x16u);
    sub_10000BA7C(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100488010(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[8] = v6;
  v3[9] = v8;

  return _swift_task_switch(sub_100488118, v6, v8);
}

uint64_t sub_100488118()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *&v3[OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate];
  *(v0 + 80) = v4;
  type metadata accessor for SyncDataMO();
  v5 = static SyncDataMO.fetchRequest()();
  *(v0 + 88) = v5;
  v6 = swift_allocObject();
  *(v0 + 96) = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  *(v0 + 168) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = *(v2 + 104);
  *(v0 + 104) = v7;
  *(v0 + 112) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1);
  v4;
  v8 = v5;
  v9 = v3;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  v11 = sub_1000F24EC(&qword_100AE4500, &unk_1009566C0);
  *v10 = v0;
  v10[1] = sub_1004882A0;
  v12 = *(v0 + 56);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v12, sub_10048F19C, v6, v11);
}

void sub_1004882A0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[7];
    v4 = v2[4];
    v5 = v2[5];
    v6 = *(v5 + 8);
    v2[16] = v6;
    v2[17] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);

    v7 = v2[8];
    v8 = v2[9];

    _swift_task_switch(sub_1004883F0, v7, v8);
  }
}

uint64_t sub_1004883F0()
{
  v23 = v0;

  v1 = *(v0 + 16);
  *(v0 + 144) = v1;
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 168);
    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = swift_allocObject();
    *(v0 + 152) = v6;
    *(v6 + 16) = v1;
    v2(v4, v3, v5);
    v7 = v1;
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_1004886DC;
    v9 = *(v0 + 48);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_10048EBD8, v6, &type metadata for () + 1);
  }

  else
  {
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 24);
    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100AE50A0);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      type metadata accessor for UUID();
      sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = sub_100008458(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s (removeSyncEngineStateDataAsync) StatedataPrint Unable to get self.store", v15, 0xCu);
      sub_10000BA7C(v16);
    }

    v20 = *(v0 + 8);

    return v20();
  }
}

void sub_1004886DC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 128))(*(v2 + 48), *(v2 + 32));

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);

    _swift_task_switch(sub_100488828, v3, v4);
  }
}

uint64_t sub_100488828()
{
  if (qword_100ACFDE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AE50A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 144);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Removed CloudKit state sync token", v6, 2u);
  }

  else
  {

    v2 = v5;
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_100488960(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10048F16C;
  *(v9 + 24) = v8;
  v12[4] = sub_100177C4C;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10001A7D4;
  v12[3] = &unk_100A6EB50;
  v10 = _Block_copy(v12);

  v11 = v6;

  [v11 performBlockAndWait:v10];
  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }
}

id sub_100488AFC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  if (*&v0[OBJC_IVAR____TtC7Journal13CoreDataStack_remoteChangeObservationTask])
  {

    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    Task.cancel()();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CoreDataStack(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100488D28(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = ObjectType;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10048F00C;
  *(v4 + 24) = v3;
  v7[4] = sub_100177C4C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10001A7D4;
  v7[3] = &unk_100A6E9C0;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v6 performBlockAndWait:v5];
  _Block_release(v5);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t sub_10048903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[19] = v8;
  v5[20] = v10;

  return _swift_task_switch(sub_100489170, v8, v10);
}

uint64_t sub_100489170()
{
  v1 = [*(v0 + 72) recordName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 168) = v2;
  *(v0 + 176) = v4;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_100489248;
  v6 = *(v0 + 80);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);

  return sub_10077505C(v8, v7, v2, v4, v6);
}

uint64_t sub_100489248(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 192) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return _swift_task_switch(sub_100489370, v4, v3);
}

uint64_t sub_100489370()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    v5 = swift_allocObject();
    *(v0 + 200) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    *(v0 + 384) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    (*(v3 + 104))(v2);
    v6 = v4;
    v7 = v1;
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    v9 = sub_1000F24EC(&qword_100AE5118, &qword_1009577B8);
    *v8 = v0;
    v8[1] = sub_1004895C8;
    v10 = *(v0 + 144);
    v11 = sub_10048EFD0;
    v12 = v0 + 48;
    v13 = v5;
  }

  else
  {
    v14 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    *(v0 + 388) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);
    v17 = *(v0 + 136);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);
    v20 = *(v0 + 80);
    v21 = swift_allocObject();
    *(v0 + 216) = v21;
    v21[2] = v15;
    v21[3] = v16;
    v21[4] = v20;
    v22 = *(v19 + 104);
    *(v0 + 224) = v22;
    *(v0 + 232) = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v22(v17, v14, v18);

    v23 = v20;
    v24 = swift_task_alloc();
    *(v0 + 240) = v24;
    v9 = sub_1000F24EC(&qword_100ADF608, &qword_100950CD8);
    *v24 = v0;
    v24[1] = sub_100489A38;
    v10 = *(v0 + 136);
    v11 = sub_1003444F0;
    v12 = v0 + 16;
    v13 = v21;
  }

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v10, v11, v13, v9);
}

void sub_1004895C8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[13] + 8))(v2[18], v2[12]);

    v3 = v2[19];
    v4 = v2[20];

    _swift_task_switch(sub_10048971C, v3, v4);
  }
}

uint64_t sub_10048971C()
{
  v28 = v0;
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 192);

    v3 = *(v0 + 8);

    return v3(v1);
  }

  else
  {
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100AE50A0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 192);
    if (v8)
    {
      v11 = *(v0 + 168);
      v10 = *(v0 + 176);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100008458(v11, v10, &v27);
      _os_log_impl(&_mh_execute_header, v6, v7, "Found JournalEntryMO for record id %s, but failed to create record", v12, 0xCu);
      sub_10000BA7C(v13);
    }

    else
    {
    }

    v14 = *(v0 + 384);
    *(v0 + 388) = v14;
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);
    v17 = *(v0 + 136);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);
    v20 = *(v0 + 80);
    v21 = swift_allocObject();
    *(v0 + 216) = v21;
    v21[2] = v15;
    v21[3] = v16;
    v21[4] = v20;
    v22 = *(v19 + 104);
    *(v0 + 224) = v22;
    *(v0 + 232) = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v22(v17, v14, v18);

    v23 = v20;
    v24 = swift_task_alloc();
    *(v0 + 240) = v24;
    v25 = sub_1000F24EC(&qword_100ADF608, &qword_100950CD8);
    *v24 = v0;
    v24[1] = sub_100489A38;
    v26 = *(v0 + 136);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v26, sub_1003444F0, v21, v25);
  }
}

void sub_100489A38()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[17];
    v4 = v2[12];
    v5 = v2[13];
    v6 = *(v5 + 8);
    v2[31] = v6;
    v2[32] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);

    v7 = v2[19];
    v8 = v2[20];

    _swift_task_switch(sub_100489B88, v7, v8);
  }
}

uint64_t sub_100489B88()
{
  v1 = *(v0 + 16);
  *(v0 + 264) = v1;
  v2 = *(v0 + 224);
  v3 = *(v0 + 388);
  if (v1)
  {
    v4 = *(v0 + 128);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = swift_allocObject();
    *(v0 + 272) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v2(v4, v3, v5);
    v8 = v6;
    v9 = v1;
    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    v11 = sub_1000F24EC(&qword_100AE5118, &qword_1009577B8);
    *v10 = v0;
    v10[1] = sub_100489DB0;
    v12 = *(v0 + 128);
    v13 = sub_10048EF90;
    v14 = v0 + 40;
    v15 = v7;
  }

  else
  {
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 120);
    v19 = *(v0 + 96);
    v20 = *(v0 + 80);
    v21 = swift_allocObject();
    *(v0 + 288) = v21;
    v21[2] = v17;
    v21[3] = v16;
    v21[4] = v20;
    v2(v18, v3, v19);

    v22 = v20;
    v23 = swift_task_alloc();
    *(v0 + 296) = v23;
    v11 = sub_1000F24EC(&qword_100AE5110, &qword_1009577B0);
    *v23 = v0;
    v23[1] = sub_10048A200;
    v12 = *(v0 + 120);
    v13 = sub_10048EF30;
    v14 = v0 + 24;
    v15 = v21;
  }

  return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v12, v13, v15, v11);
}

void sub_100489DB0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 248))(*(v2 + 128), *(v2 + 96));

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);

    _swift_task_switch(sub_100489EFC, v3, v4);
  }
}

uint64_t sub_100489EFC()
{
  v27 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 264);

    v3 = *(v0 + 8);

    return v3(v1);
  }

  else
  {
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100AE50A0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 264);
    if (v8)
    {
      v11 = *(v0 + 168);
      v10 = *(v0 + 176);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100008458(v11, v10, &v26);
      _os_log_impl(&_mh_execute_header, v6, v7, "Found JournalEntryAssetMO for record id %s, but failed to create record", v12, 0xCu);
      sub_10000BA7C(v13);
    }

    else
    {
    }

    v14 = *(v0 + 224);
    v15 = *(v0 + 388);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 120);
    v19 = *(v0 + 96);
    v20 = *(v0 + 80);
    v21 = swift_allocObject();
    *(v0 + 288) = v21;
    v21[2] = v17;
    v21[3] = v16;
    v21[4] = v20;
    v14(v18, v15, v19);

    v22 = v20;
    v23 = swift_task_alloc();
    *(v0 + 296) = v23;
    v24 = sub_1000F24EC(&qword_100AE5110, &qword_1009577B0);
    *v23 = v0;
    v23[1] = sub_10048A200;
    v25 = *(v0 + 120);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 24, v25, sub_10048EF30, v21, v24);
  }
}

void sub_10048A200()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 248))(*(v2 + 120), *(v2 + 96));

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);

    _swift_task_switch(sub_10048A34C, v3, v4);
  }
}

uint64_t sub_10048A34C()
{
  v1 = *(v0 + 24);
  *(v0 + 304) = v1;
  if (v1)
  {
    v2 = *(v0 + 224);
    v3 = *(v0 + 388);
    v4 = *(v0 + 112);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = swift_allocObject();
    *(v0 + 312) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v2(v4, v3, v5);
    v8 = v6;
    v9 = v1;
    v10 = swift_task_alloc();
    *(v0 + 320) = v10;
    v11 = sub_1000F24EC(&qword_100AE5118, &qword_1009577B8);
    *v10 = v0;
    v10[1] = sub_10048A66C;
    v12 = *(v0 + 112);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 32, v12, sub_10048EF50, v7, v11);
  }

  else
  {
    if (qword_100AD0050 != -1)
    {
      swift_once();
    }

    v13 = qword_100B2FC28;
    *(v0 + 328) = qword_100B2FC28;
    v14 = *(v13 + 32);
    *(v0 + 392) = v14;
    v15 = -1;
    v16 = -1 << v14;
    if (-(-1 << v14) < 64)
    {
      v15 = ~(-1 << -v16);
    }

    v17 = v15 & *(v13 + 64);

    if (v17)
    {
      v18 = 0;
LABEL_14:
      *(v0 + 336) = v17;
      *(v0 + 344) = v18;
      v20 = (*(v13 + 56) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
      v21 = *v20;
      *(v0 + 352) = *v20;
      v22 = v20[1];
      v23 = swift_task_alloc();
      *(v0 + 360) = v23;
      *v23 = v0;
      v23[1] = sub_10048AB18;
      v24 = *(v0 + 168);
      v25 = *(v0 + 176);
      v26 = *(v0 + 80);
      v28 = *(v0 + 56);
      v27 = *(v0 + 64);

      return static ManagedObjectCloudKitSyncing.recordForObjectWithID(_:context:includeUnsavedObjects:)(v28, v27, v24, v25, v26, 0, v21, v22);
    }

    else
    {
      v19 = 0;
      while (((63 - v16) >> 6) - 1 != v19)
      {
        v18 = v19 + 1;
        v17 = *(v13 + 8 * v19++ + 72);
        if (v17)
        {
          goto LABEL_14;
        }
      }

      v29 = *(v0 + 8);

      return v29(0);
    }
  }
}

void sub_10048A66C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 248))(*(v2 + 112), *(v2 + 96));

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);

    _swift_task_switch(sub_10048A7B8, v3, v4);
  }
}

uint64_t sub_10048A7B8()
{
  v31 = v0;
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 304);

LABEL_3:

    v3 = *(v0 + 8);

    return v3(v1);
  }

  if (qword_100ACFDE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000617C(v5, qword_100AE50A0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 304);
  if (v8)
  {
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100008458(v11, v10, &v30);
    _os_log_impl(&_mh_execute_header, v6, v7, "Found JournalEntryAssetFileAttachmentMO for record id %s, but failed to create record", v12, 0xCu);
    sub_10000BA7C(v13);
  }

  else
  {
  }

  if (qword_100AD0050 != -1)
  {
    swift_once();
  }

  v14 = qword_100B2FC28;
  *(v0 + 328) = qword_100B2FC28;
  v15 = *(v14 + 32);
  *(v0 + 392) = v15;
  v16 = -1;
  v17 = -1 << v15;
  if (-(-1 << v15) < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v14 + 64);

  if (!v18)
  {
    v20 = 0;
    while (((63 - v17) >> 6) - 1 != v20)
    {
      v19 = v20 + 1;
      v18 = *(v14 + 8 * v20++ + 72);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    v1 = 0;
    goto LABEL_3;
  }

  v19 = 0;
LABEL_20:
  *(v0 + 336) = v18;
  *(v0 + 344) = v19;
  v21 = (*(v14 + 56) + ((v19 << 10) | (16 * __clz(__rbit64(v18)))));
  v22 = *v21;
  *(v0 + 352) = *v21;
  v23 = v21[1];
  v24 = swift_task_alloc();
  *(v0 + 360) = v24;
  *v24 = v0;
  v24[1] = sub_10048AB18;
  v25 = *(v0 + 168);
  v26 = *(v0 + 176);
  v27 = *(v0 + 80);
  v29 = *(v0 + 56);
  v28 = *(v0 + 64);

  return static ManagedObjectCloudKitSyncing.recordForObjectWithID(_:context:includeUnsavedObjects:)(v29, v28, v25, v26, v27, 0, v22, v23);
}

uint64_t sub_10048AB18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_10048AFE0;
  }

  else
  {
    v4[47] = a1;
    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_10048AC40;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10048AC40()
{
  v33 = v0;
  v1 = *(v0 + 376);
  if (v1)
  {
    if (qword_100ACFDE0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *(v0 + 344);
    v17 = (*(v0 + 336) - 1) & *(v0 + 336);
    if (v17)
    {
      v18 = *(v0 + 328);
LABEL_16:
      *(v0 + 336) = v17;
      *(v0 + 344) = v16;
      v23 = (*(v18 + 56) + ((v16 << 10) | (16 * __clz(__rbit64(v17)))));
      v24 = *v23;
      *(v0 + 352) = *v23;
      v25 = v23[1];
      v26 = swift_task_alloc();
      *(v0 + 360) = v26;
      *v26 = v0;
      v26[1] = sub_10048AB18;
      v27 = *(v0 + 168);
      v28 = *(v0 + 176);
      v29 = *(v0 + 80);
      v31 = *(v0 + 56);
      v30 = *(v0 + 64);

      return static ManagedObjectCloudKitSyncing.recordForObjectWithID(_:context:includeUnsavedObjects:)(v31, v30, v27, v28, v29, 0, v24, v25);
    }

    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v18 = *(v0 + 328);
      if (v22 >= (((1 << *(v0 + 392)) + 63) >> 6))
      {

        v19 = 0;
        goto LABEL_9;
      }

      v17 = *(v18 + 8 * v22 + 64);
      ++v16;
      if (v17)
      {
        v16 = v22;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AE50A0);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v8 = 136315650;
    v9 = CKRecord.recordType.getter();
    v11 = sub_100008458(v9, v10, &v32);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008458(v12, v13, &v32);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    v15 = sub_100008458(v7, v6, &v32);

    *(v8 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully created %s record from %s with id: %s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = *(v0 + 376);
LABEL_9:

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_10048AFE0()
{
  v16 = v0;
  if (qword_100ACFDE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AE50A0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[22];
    v14 = v0[21];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008458(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = sub_100008458(v14, v4, &v15);

    *(v5 + 14) = v10;
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v11;
    *v6 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed creating record from %s object with %s. Error: %@", v5, 0x20u);
    sub_100004F84(v6, &unk_100AD4BB0, &unk_100941E50);

    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

unint64_t sub_10048B2CC()
{
  result = qword_100AD1510;
  if (!qword_100AD1510)
  {
    sub_1000F2A18(&qword_100AD1508, &unk_100954530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1510);
  }

  return result;
}

void sub_10048B330(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SyncDataMO();
  v7 = static SyncDataMO.fetchRequest()();
  v8 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

LABEL_3:
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AE50A0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to fetch sync data: %@", v12, 0xCu);
      sub_100004F84(v13, &unk_100AD4BB0, &unk_100941E50);
    }

    else
    {
    }

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (v8 >> 62)
  {
    v17 = v8;
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v17;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_12;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v8 + 32);
LABEL_12:
      v16 = v15;

      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_31;
  }

  v19 = [*(a2 + OBJC_IVAR____TtC7Journal13CoreDataStack_container) viewContext];
  v20 = [v19 persistentStoreCoordinator];

  if (!v20 || ((v21 = [v20 persistentStores], sub_1000065A8(0, &qword_100AE5BC0, NSPersistentStore_ptr), v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v21, v22 >> 62) ? (v23 = _CocoaArrayWrapper.endIndex.getter()) : (v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v20, !v23) || (*(a2 + OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess) & 1) == 0))
  {
    if (qword_100ACFDE0 == -1)
    {
LABEL_23:
      v25 = type metadata accessor for Logger();
      sub_10000617C(v25, qword_100AE50A0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "unable to create SyncDataMO since database is not open", v28, 2u);
      }

      goto LABEL_26;
    }

LABEL_31:
    swift_once();
    goto LABEL_23;
  }

  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a1];
  v30 = 0;
  if (![a1 save:&v30])
  {
    v29 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_3;
  }

  v24 = v30;

LABEL_27:
  *a3 = v16;
}

void sub_10048B7BC(void *a1@<X0>, char *a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for SyncDataMO();
  v8 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {
LABEL_2:
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AE50A0);
    v10 = a3;
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v11, v12))
    {

      goto LABEL_14;
    }

    v13 = swift_slowAlloc();
    v42 = a4;
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v13 = 136446466;
    type metadata accessor for UUID();
    sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = sub_100008458(v15, v16, &v43);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s Unable to fetch sync data: %@", v13, 0x16u);
    sub_100004F84(v14, &unk_100AD4BB0, &unk_100941E50);
    a4 = v42;

    sub_10000BA7C(v41);

LABEL_6:

LABEL_14:
    *a4 = 0;
    return;
  }

  if (v8 >> 62)
  {
    v21 = v8;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v21;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_12;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v8 + 32);
LABEL_12:
      v20 = v19;

      *a4 = v20;
      return;
    }

    __break(1u);
LABEL_29:
    swift_once();
LABEL_24:
    v32 = type metadata accessor for Logger();
    sub_10000617C(v32, qword_100AE50A0);
    v33 = a3;
    v11 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v11, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43 = v36;
      *v35 = 136446210;
      type metadata accessor for UUID();
      sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = sub_100008458(v37, v38, &v43);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v11, v34, "%{public}s Unable to crete SyncDataMO since database was not open", v35, 0xCu);
      sub_10000BA7C(v36);
    }

    goto LABEL_6;
  }

  v23 = [*&a3[OBJC_IVAR____TtC7Journal13CoreDataStack_container] viewContext];
  v24 = [v23 persistentStoreCoordinator];

  if (!v24 || ((v25 = [v24 persistentStores], sub_1000065A8(0, &qword_100AE5BC0, NSPersistentStore_ptr), v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v25, v26 >> 62) ? (v27 = _CocoaArrayWrapper.endIndex.getter()) : (v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v24, !v27) || a3[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess] != 1))
  {
    if (qword_100ACFDE0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a1];
  v43 = 0;
  v29 = [a1 save:&v43];
  v30 = v43;
  if (!v29)
  {
    v40 = v43;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_2;
  }

  *a4 = v28;
  v31 = v30;
}

void sub_10048BDC0(uint64_t a1)
{
  v2 = type metadata accessor for CKSyncEngine.State.Serialization();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10001DDD0(&qword_100AE5100, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;

  sub_100049ED8(v9, v11);
  sub_10048C32C(v9, v11);
  sub_1000340DC(v9, v11);
  if (qword_100ACFDE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000617C(v12, qword_100AE50A0);
  v13 = *(v3 + 16);
  v13(v8, a1, v2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v14;
    v17 = v16;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v17 = 136315138;
    v13(v26, v8, v2);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v3 + 8))(v8, v2);
    v21 = sub_100008458(v18, v20, &v27);

    *(v17 + 4) = v21;
    v22 = v25;
    _os_log_impl(&_mh_execute_header, v25, v15, "Updated CloudKit state sync token in CoreData. Value: %s", v17, 0xCu);
    sub_10000BA7C(v24);

    sub_1000340DC(v9, v11);
  }

  else
  {
    sub_1000340DC(v9, v11);

    (*(v3 + 8))(v8, v2);
  }
}

void sub_10048C32C(uint64_t a1, unint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10048EF24;
  *(v7 + 24) = v6;
  v11[4] = sub_100028EF4;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001A7D4;
  v11[3] = &unk_100A6E880;
  v8 = _Block_copy(v11);
  v9 = v2;
  v10 = v5;
  sub_100199918(a1, a2);

  [v10 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

uint64_t sub_10048C4B0@<X0>(void *a2@<X8>)
{
  sub_1000F24EC(&qword_100AE4500, &unk_1009566C0);
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (v17 && (v4 = [v17 statedata], v17, v4))
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v8 = type metadata accessor for CKSyncEngine.State.Serialization();
    sub_10001DDD0(&qword_100AE5108, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v2)
    {

      if (qword_100ACFDE0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000617C(v9, qword_100AE50A0);
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v14;
        *v13 = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "Failed to deserialize state token: %@", v12, 0xCu);
        sub_100004F84(v13, &unk_100AD4BB0, &unk_100941E50);

        sub_1000340DC(v5, v7);
      }

      else
      {
        sub_1000340DC(v5, v7);
      }

      return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
    }

    else
    {
      sub_1000340DC(v5, v7);

      return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    }
  }

  else
  {
    v15 = type metadata accessor for CKSyncEngine.State.Serialization();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }
}

void sub_10048C830(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1000F24EC(&qword_100AE4500, &unk_1009566C0);
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (v9)
  {
    if (a4 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    [v9 setStatedata:isa];
  }

  else
  {
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000617C(v6, qword_100AE50A0);
    isa = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(isa, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, isa, v7, "Unable to retrieve SyncDataMO", v8, 2u);
    }
  }
}

void sub_10048C9A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CKSyncEngine.State.Serialization();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v38 = a1;
  sub_1000F24EC(&qword_100AE4500, &unk_1009566C0);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v9 = v39;
  if (v39)
  {
    v10 = [v39 metadata];
    if (v10)
    {
      v36 = a2;
      v11 = v10;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      sub_100049ED8(v12, v14);
      CKSyncEngine.State.Serialization.init(deprecatedData:)();
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_10001DDD0(&qword_100AE5100, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
      v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v2)
      {
        (*(v6 + 8))(v8, v5);

        sub_1000340DC(v12, v14);

        return;
      }

      v33 = v5;
      v34 = v15;
      v35 = v16;

      if (qword_100ACFDE0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000617C(v26, qword_100AE50A0);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Migrating deprecated sync state token", v29, 2u);
      }

      [v9 setMetadata:0];
      v30 = v34;
      v31 = v35;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v9 setStatedata:isa];
      sub_1000340DC(v12, v14);
      sub_1000340DC(v30, v31);

      a2 = v36;
      v5 = v33;
      (*(v6 + 32))(v36, v8, v33);
      v21 = 0;
    }

    else
    {
      if (qword_100ACFDE0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000617C(v22, qword_100AE50A0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "No deprecated metadata found", v25, 2u);
      }

      v21 = 1;
    }
  }

  else
  {
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000617C(v17, qword_100AE50A0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Couldn't find sync data while attempting to migrate deprecated metadata", v20, 2u);
    }

    v21 = 1;
  }

  (*(v6 + 56))(a2, v21, 1, v5);
}

void sub_10048CEA0(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __chkstk_darwin(Strong);
    *&v34[-16] = a2;
    *&v34[-8] = v13;
    sub_1000F24EC(&qword_100AE4500, &unk_1009566C0);
    NSManagedObjectContext.performAndWait<A>(_:)();
    v14 = v37;
    if (v37)
    {
      if (a4)
      {
        v15 = String._bridgeToObjectiveC()();
      }

      else
      {
        v15 = 0;
      }

      [v14 setUserId:v15];

      if (qword_100ACFDE0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000617C(v26, qword_100AE50A0);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v38 = a4;
        v39[0] = v30;
        *v29 = 141558275;
        *(v29 + 4) = 1752392040;
        *(v29 + 12) = 2081;
        v37 = a3;

        sub_1000F24EC(&unk_100AE4870, &qword_100945360);
        v31 = String.init<A>(describing:)();
        v33 = sub_100008458(v31, v32, v39);

        *(v29 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "Updated CloudKit UserID. %{private,mask.hash}s", v29, 0x16u);
        sub_10000BA7C(v30);
      }
    }

    else
    {
      if (qword_100ACFDE0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000617C(v16, qword_100AE50A0);

      v14 = v12;
      v12 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v12, v17))
      {

        return;
      }

      v18 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39[0] = v36;
      *v18 = 136446723;
      (*(v8 + 16))(v10, v14 + OBJC_IVAR____TtC7Journal13CoreDataStack_sessionID, v7);
      sub_10001DDD0(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = v17;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v8 + 8))(v10, v7);
      v22 = sub_100008458(v19, v21, v39);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2160;
      *(v18 + 14) = 1752392040;
      *(v18 + 22) = 2081;
      v37 = a3;
      v38 = a4;

      sub_1000F24EC(&unk_100AE4870, &qword_100945360);
      v23 = String.init<A>(describing:)();
      v25 = sub_100008458(v23, v24, v39);

      *(v18 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v12, v35, "%{public}s Unable to save CloudKit userID: %{private,mask.hash}s", v18, 0x20u);
      swift_arrayDestroy();
    }
  }
}

void sub_10048D3CC(uint64_t *a3@<X8>)
{
  sub_1000F24EC(&qword_100AE4500, &unk_1009566C0);
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (v15)
  {
    v4 = [v15 userId];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = qword_100ACFDE0;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000617C(v9, qword_100AE50A0);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 141558275;
        *(v12 + 4) = 1752392040;
        *(v12 + 12) = 2081;
        v14 = sub_100008458(v5, v7, &v15);

        *(v12 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "Fetched CloudKit UserID: %{private,mask.hash}s", v12, 0x16u);
        sub_10000BA7C(v13);
      }

      else
      {
      }
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a3 = v5;
  a3[1] = v7;
}

void sub_10048D600(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a1;
    v4 = String._bridgeToObjectiveC()();
    a1 = v3;
  }

  else
  {
    v4 = 0;
  }

  [a1 setUserId:v4];
}

uint64_t sub_10048D664(uint64_t a1, uint64_t a2)
{
  v3[5] = v2;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[10] = v6;
  v3[11] = v8;

  return _swift_task_switch(sub_10048D76C, v6, v8);
}

uint64_t sub_10048D76C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *&v3[OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate];
  *(v0 + 96) = v4;
  type metadata accessor for SyncDataMO();
  v5 = static SyncDataMO.fetchRequest()();
  *(v0 + 104) = v5;
  v6 = swift_allocObject();
  *(v0 + 112) = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  *(v0 + 184) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v7 = *(v2 + 104);
  *(v0 + 120) = v7;
  *(v0 + 128) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1);
  v4;
  v8 = v5;
  v9 = v3;
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  v11 = sub_1000F24EC(&qword_100AE4500, &unk_1009566C0);
  *v10 = v0;
  v10[1] = sub_10048D8F4;
  v12 = *(v0 + 72);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 32, v12, sub_10048EB9C, v6, v11);
}

void sub_10048D8F4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[9];
    v4 = v2[6];
    v5 = v2[7];
    v6 = *(v5 + 8);
    v2[18] = v6;
    v2[19] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);

    v7 = v2[10];
    v8 = v2[11];

    _swift_task_switch(sub_10048DA44, v7, v8);
  }
}

uint64_t sub_10048DA44()
{
  v1 = *(v0 + 32);
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 184);
    v4 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = swift_allocObject();
    *(v0 + 168) = v6;
    *(v6 + 16) = v1;
    v2(v4, v3, v5);
    v7 = v1;
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    v9 = sub_1000F24EC(&unk_100AE4870, &qword_100945360);
    *v8 = v0;
    v8[1] = sub_10048DC90;
    v10 = *(v0 + 64);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v10, sub_10048EBBC, v6, v9);
  }

  else
  {
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100AE50A0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not find CloudKit UserID in CoreData", v14, 2u);
    }

    v15 = *(v0 + 8);

    return v15(0, 0);
  }
}

void sub_10048DC90()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 144))(*(v2 + 64), *(v2 + 48));

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);

    _swift_task_switch(sub_10048DDDC, v3, v4);
  }
}

uint64_t sub_10048DDDC()
{
  v18 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1)
  {
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100AE50A0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 160);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;

      v10 = sub_100008458(v2, v1, &v17);

      *(v8 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Fetched CloudKit UserID: %{private,mask.hash}s", v8, 0x16u);
      sub_10000BA7C(v9);
    }

    else
    {
    }
  }

  else
  {

    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100AE50A0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not find CloudKit UserID in CoreData", v14, 2u);
    }

    v2 = 0;
  }

  v15 = *(v0 + 8);

  return v15(v2, v1);
}

void sub_10048E084(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 userId];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_10048E0F8()
{
  *(v0 + 40) = *(v0 + 208);
  sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_10048E184()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 304);
    (*(v2 + 256))(*(v2 + 144), *(v2 + 128));

    _swift_task_switch(sub_10048E2D4, 0, 0);
  }
}

uint64_t sub_10048E2D4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);

  (*(v5 + 8))(v3, v4);
  if (v1 != v2)
  {
    v17 = *(v0 + 296);
    v18 = *(v0 + 272);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v19 = *(v18 + 8 * v17 + 32);
    }

    *(v0 + 288) = v19;
    *(v0 + 296) = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      v34 = *(v0 + 232);
      v33 = *(v0 + 344);
      v20 = *(v0 + 144);
      v21 = *(v0 + 120);
      v32 = *(v0 + 128);
      v22 = *(v0 + 112);
      v23 = *(v0 + 88);
      v24 = *(v0 + 96);
      v25 = *(v0 + 56);
      v26 = [v19 objectIDNotification];
      static Notification._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 304) = [v25 viewContext];
      (*(v24 + 16))(v22, v21, v23);
      v27 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v28 = swift_allocObject();
      *(v0 + 312) = v28;
      *(v28 + 16) = v25;
      (*(v24 + 32))(v28 + v27, v22, v23);
      v34(v20, v33, v32);
      v29 = v25;
      v11 = swift_task_alloc();
      *(v0 + 320) = v11;
      *v11 = v0;
      *(v11 + 8) = sub_10048E184;
      v6 = *(v0 + 144);
      v7 = sub_10048F0FC;
      v9 = &type metadata for () + 1;
      v8 = v28;

      return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v6, v7, v8, v9);
    }

    __break(1u);
    goto LABEL_23;
  }

  v10 = *(v0 + 280);
  if (v10)
  {
    v11 = v10 - 1;
    if (!__OFSUB__(v10, 1))
    {
      v12 = *(v0 + 272);
      if ((v12 & 0xC000000000000001) == 0)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v12 + 8 * v11 + 32);
          goto LABEL_8;
        }

        __break(1u);
        return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v6, v7, v8, v9);
      }

LABEL_25:
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:

      v14 = [v13 token];

      if (v14)
      {
        v15 = *(v0 + 192);
        v16 = *(v15 + 16);
        *(v15 + 16) = v14;
      }

      goto LABEL_18;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_18:
  static Clock<>.continuous.getter();
  v30 = swift_task_alloc();
  *(v0 + 328) = v30;
  *v30 = v0;
  v30[1] = sub_100094B3C;

  return sub_10003FA1C(250000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10048E678()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);

  (*(v3 + 8))(v1, v2);
  sub_100004F84(v4, &qword_100AF6E60, &unk_100944898);

  v5 = *(v0 + 8);

  return v5();
}

void sub_10048E788(uint64_t a1@<X0>, void *a2@<X1>, double **a3@<X8>)
{
  v6 = [objc_opt_self() fetchRequest];
  if (v6)
  {
    sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
    sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100940050;
    *(v7 + 56) = &type metadata for String;
    v8 = sub_100031B20();
    *(v7 + 64) = v8;
    *(v7 + 32) = 0x4449656C646E7562;
    *(v7 + 40) = 0xE800000000000000;
    v9 = v6;
    v10 = v6;
    v11 = static AppInfo.bundleIdentifier.getter();
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v8;
    *(v7 + 72) = v11;
    *(v7 + 80) = v12;
    v13 = NSPredicate.init(format:_:)();
    [v10 setPredicate:v13];

    v6 = v9;
  }

  v14 = objc_opt_self();
  swift_beginAccess();
  v15 = [v14 fetchHistoryAfterToken:*(a1 + 16)];
  [v15 setFetchRequest:v6];
  *&v25 = 0;
  v16 = [a2 executeRequest:v15 error:&v25];
  v17 = v25;
  if (!v16)
  {
    v21 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();

LABEL_9:
    v19 = 0;
    v25 = 0u;
    v26 = 0u;
LABEL_10:
    sub_100004F84(&v25, &qword_100AD13D0, &unk_100942DB0);
    goto LABEL_11;
  }

  v18 = v16;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  v20 = v17;
  if (!v19)
  {

    goto LABEL_9;
  }

  if ([v19 result])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_10;
  }

  sub_1000F24EC(&qword_100AE5120, &qword_1009577D0);
  if (swift_dynamicCast())
  {
    v22 = v23;

    goto LABEL_12;
  }

LABEL_11:

  v22 = _swiftEmptyArrayStorage;
LABEL_12:
  *a3 = v22;
}

void sub_10048EABC(void *a1)
{
  v2 = [a1 viewContext];
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v2 mergeChangesFromContextDidSaveNotification:isa];

  v4 = [objc_opt_self() defaultCenter];
  v5 = [a1 viewContext];
  [v4 postNotificationName:NSManagedObjectContextDidSaveNotification object:v5];
}

id sub_10048EBD8()
{
  v1 = *(v0 + 16);
  [v1 setStatedata:0];
  return [v1 setMetadata:0];
}

void sub_10048EC28(void *a1)
{
  v2 = type metadata accessor for ProtectedData.ProtectedDataState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v3 + 104))(v5, enum case for ProtectedData.ProtectedDataState.available(_:), v2);
  v9 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    if ([a1 hasChanges])
    {
      v17 = 0;
      if ([a1 save:&v17])
      {
        v11 = v17;
      }

      else
      {
        v16 = v17;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  else
  {
    if (qword_100ACFDE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000617C(v12, qword_100AE50A0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Protected data is not available, won't attempt to save the context", v15, 2u);
    }
  }
}

id sub_10048EF50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007539D4(*(v1 + 24));
  *a1 = result;
  return result;
}

id sub_10048EF90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10071C490(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_10048EFD0@<X0>(uint64_t *a1@<X8>)
{
  result = JournalEntryMO.cloudKitRecord.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10048F030(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_10048F1C0()
{
  v1 = v0;
  v69 = type metadata accessor for CharacterSet();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = 0;
  v7 = 0;
  if (*(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked) == 1)
  {
    if (qword_100AD07D0 != -1)
    {
      swift_once();
    }

    v7 = *(&xmmword_100B30B80 + 1);
    v6 = xmmword_100B30B80;
  }

  v8 = sub_100049F2C();
  if (v8)
  {
    v9 = sub_10053256C(v8);
    v11 = v10;
    v13 = v12;

    v15 = 0;
    v16 = 0;
    if ((v11 & 1) != 0 && v9)
    {
      v77 = v9;
      LOBYTE(v78) = 1;
      String.init<A>(describing:)();
      String.LocalizationValue.init(_:)();
      static Locale.current.getter();
      v15 = String.init(localized:table:bundle:locale:comment:)();
    }

    v74 = v16;
    v17 = sub_100049F2C();
    if (v17 && (sub_10053256C(v17), v19 = v18, v20, v19))
    {
      v21 = [v19 string];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v15 = 0;
    v74 = 0;
  }

  if (sub_10005AAB0(128))
  {
    v25 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset);
    if (v25)
    {
      v26 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset + 8);
      ObjectType = swift_getObjectType();
      v25 = (*(v26 + 80))(ObjectType, v26);
    }
  }

  else
  {
    v25 = 0;
  }

  v28 = sub_10048F8F0(v25);
  v70 = v29;

  v30 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
  v31 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v31 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v6;
  v75 = v15;
  v73 = v22;
  v72 = v24;
  v71 = v28;
  if (v32 >= 2)
  {
    if (qword_100AD07C0 != -1)
    {
      swift_once();
    }

    sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100940080;
    *(v33 + 56) = &type metadata for Int;
    *(v33 + 64) = &protocol witness table for Int;
    *(v33 + 32) = v32;
    v34 = static String.localizedStringWithFormat(_:_:)();
    v36 = v35;

    goto LABEL_33;
  }

  v37 = *(v1 + v30);
  if (v37 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_26;
    }

LABEL_32:
    v34 = 0;
    v36 = 0;
    goto LABEL_33;
  }

  result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_26:
  if ((v37 & 0xC000000000000001) != 0)
  {

    v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v39 = v66;
  }

  else
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v39 = *(v37 + 32);
  }

  v40 = v39;
  v34 = sub_10048F8F0(v39);
  v36 = v41;

LABEL_33:
  v42 = sub_100081D68();
  v44 = v43;
  if (v43)
  {
    v45 = v42;
    v77 = v42;
    v78 = v43;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_1000777B4();
    v46 = StringProtocol.trimmingCharacters(in:)();
    v48 = v47;
    (*(v68 + 8))(v3, v69);

    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      if (qword_100AD0828 != -1)
      {
        swift_once();
      }

      sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_100940080;
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = sub_100031B20();
      *(v50 + 32) = v45;
      *(v50 + 40) = v44;
      v44 = String.init(format:_:)();
      v52 = v51;
      goto LABEL_42;
    }

    v44 = 0;
  }

  v52 = 0;
LABEL_42:
  sub_1000F24EC(&qword_100AD38F0, &unk_100941FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100946E40;
  *(inited + 32) = v76;
  *(inited + 40) = v7;
  v54 = sub_1000819F8();
  if (v54)
  {
    v55 = v54;
    v56 = [v54 string];

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  v60 = v75;
  v61 = v70;
  *(inited + 48) = v57;
  *(inited + 56) = v59;
  v62 = v74;
  *(inited + 64) = v60;
  *(inited + 72) = v62;
  v63 = v72;
  *(inited + 80) = v73;
  *(inited + 88) = v63;
  *(inited + 96) = v71;
  *(inited + 104) = v61;
  *(inited + 112) = v34;
  *(inited + 120) = v36;
  *(inited + 128) = v44;
  *(inited + 136) = v52;
  sub_10009BB20(2570, 0xE200000000000000, inited);
  v65 = v64;
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AE4870, &qword_100945360);
  swift_arrayDestroy();
  return v65;
}

uint64_t sub_10048F8F0(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  sub_1000F24EC(&qword_100AD38F0, &unk_100941FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  v3 = *&a1[OBJC_IVAR____TtC7Journal5Asset_title];
  v4 = a1;
  if (v3)
  {
    v5 = [v3 string];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(inited + 32) = v3;
  *(inited + 40) = v7;
  *(inited + 48) = sub_1000751F4();
  *(inited + 56) = v9;
  type metadata accessor for Asset(0);
  v10 = a1;
  sub_1000F24EC(&qword_100AE5128, &qword_1009577E8);
  if (swift_dynamicCast())
  {
    sub_100018480(v18, v20);
    v11 = v21;
    v12 = v22;
    sub_10000CA14(v20, v21);
    v13 = (*(v12 + 8))(v11, v12);
    v15 = v14;
    inited = sub_10009B77C(1, 3, 1, inited);
    *(inited + 16) = 3;
    *(inited + 64) = v13;
    *(inited + 72) = v15;
    sub_10000BA7C(v20);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_10048FB1C(v18);
  }

  sub_10009BB20(8236, 0xE200000000000000, inited);
  v8 = v16;

  return v8;
}

uint64_t sub_10048FB1C(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE5130, &unk_1009577F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10048FC28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenAudioTranscriptionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10048FCDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_recordingViewModel);
  if (v1)
  {
    swift_getKeyPath();
    sub_1001937E4();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + 64);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v2 + 136))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

void sub_10048FD9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal32FullScreenAudioTranscriptionView_recordingViewModel);
  if (v1)
  {
    swift_getKeyPath();
    sub_1001937E4();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + 64);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v2 + 128))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

void sub_10048FE64()
{
  v0 = sub_1004927E8();
  if ((v1 & 1) == 0)
  {
    if (v0 == 1)
    {
      if (qword_100AD0728 == -1)
      {
LABEL_7:

        return;
      }

LABEL_12:
      swift_once();
      goto LABEL_7;
    }

    if (!v0)
    {
      if (qword_100AD0720 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    if ((v0 - 2) > 0x1B)
    {
      sub_100493894();
    }

    else
    {
      sub_100492BF0();
    }
  }
}

uint64_t sub_10048FF40(int a1, int a2, uint64_t a3)
{
  v4 = v3;
  v86 = a3;
  v74 = a2;
  v87 = a1;
  v78 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v93 = *(v8 - 8);
  v94 = v8;
  __chkstk_darwin(v8);
  v92 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v88 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for TimeZone();
  __chkstk_darwin(v12 - 8);
  v85 = &v73[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v84 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v16 - 8);
  v83 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1000F24EC(&qword_100AD4280, &unk_100954D10);
  __chkstk_darwin(v18 - 8);
  v20 = &v73[-v19];
  v21 = sub_1000F24EC(&qword_100AD4288, &qword_10096FE10);
  __chkstk_darwin(v21 - 8);
  v23 = &v73[-v22];
  v24 = type metadata accessor for Date.FormatStyle();
  v96 = *(v24 - 8);
  v97 = v24;
  __chkstk_darwin(v24);
  v75 = &v73[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v82 = &v73[-v27];
  __chkstk_darwin(v28);
  v91 = &v73[-v29];
  __chkstk_darwin(v30);
  v95 = &v73[-v31];
  __chkstk_darwin(v32);
  v34 = &v73[-v33];
  v35 = type metadata accessor for Calendar.Component();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v73[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = type metadata accessor for Calendar();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v73[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Calendar.current.getter();
  (*(v36 + 104))(v38, enum case for Calendar.Component.year(_:), v35);
  v98 = v4;
  v43 = Calendar.compare(_:to:toGranularity:)();
  v44 = v35;
  v45 = v34;
  (*(v36 + 8))(v38, v44);
  (*(v40 + 8))(v42, v39);
  v46 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v46 - 8) + 56))(v23, 1, 1, v46);
  v47 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v47 - 8) + 56))(v20, 1, 1, v47);
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  if (!v87)
  {
    v55 = v75;
    if (!v43)
    {
      goto LABEL_13;
    }

    v56 = v76;
    static Date.FormatStyle.Symbol.Weekday.wide.getter();
    Date.FormatStyle.weekday(_:)();
    (*(v77 + 8))(v56, v78);
    v57 = v88;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v58 = v82;
    Date.FormatStyle.month(_:)();
    (*(v89 + 8))(v57, v90);
    v52 = *(v96 + 8);
    v54 = v97;
    v52(v55, v97);
    v59 = v92;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    v60 = v91;
    Date.FormatStyle.day(_:)();
    (*(v93 + 8))(v59, v94);
    v61 = v58;
LABEL_10:
    v52(v61, v54);
    v65 = v79;
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    v51 = v95;
    Date.FormatStyle.year(_:)();
    v67 = v80;
    v66 = v81;
LABEL_15:
    (*(v67 + 8))(v65, v66);
    v52(v60, v54);
    goto LABEL_16;
  }

  if (v87 != 1)
  {
    if (!v43)
    {
      if (v74)
      {
        v68 = v76;
        static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
LABEL_14:
        v69 = v82;
        Date.FormatStyle.weekday(_:)();
        (*(v77 + 8))(v68, v78);
        v70 = v88;
        static Date.FormatStyle.Symbol.Month.abbreviated.getter();
        v60 = v91;
        Date.FormatStyle.month(_:)();
        (*(v89 + 8))(v70, v90);
        v52 = *(v96 + 8);
        v71 = v69;
        v54 = v97;
        v52(v71, v97);
        v65 = v92;
        static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
        v51 = v95;
        Date.FormatStyle.day(_:)();
        v67 = v93;
        v66 = v94;
        goto LABEL_15;
      }

LABEL_13:
      v68 = v76;
      static Date.FormatStyle.Symbol.Weekday.wide.getter();
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v43)
  {
LABEL_9:
    v62 = v88;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v63 = v82;
    Date.FormatStyle.month(_:)();
    (*(v89 + 8))(v62, v90);
    v64 = v92;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    v60 = v91;
    Date.FormatStyle.day(_:)();
    (*(v93 + 8))(v64, v94);
    v52 = *(v96 + 8);
    v61 = v63;
    v54 = v97;
    goto LABEL_10;
  }

  if ((v74 & 1) == 0)
  {
    goto LABEL_13;
  }

  v48 = v88;
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  v49 = v91;
  Date.FormatStyle.month(_:)();
  (*(v89 + 8))(v48, v90);
  v50 = v92;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  v51 = v95;
  Date.FormatStyle.day(_:)();
  (*(v93 + 8))(v50, v94);
  v52 = *(v96 + 8);
  v53 = v49;
  v54 = v97;
  v52(v53, v97);
LABEL_16:
  sub_100067EB4(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v52(v51, v54);
  v52(v45, v54);
  return v99;
}

uint64_t sub_100490A14(uint64_t a1, uint64_t a2, int a3)
{
  v209 = a3;
  v212 = a2;
  v193 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v188 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v215 = *(v221 - 8);
  __chkstk_darwin(v221);
  v151 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for Date.FormatStyle.DateStyle();
  v214 = *(v220 - 8);
  __chkstk_darwin(v220);
  v150 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v157 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v179 = &v149 - v11;
  __chkstk_darwin(v12);
  v172 = &v149 - v13;
  v202 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v199 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v200 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for Date.IntervalFormatStyle();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v163 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v164 = &v149 - v19;
  __chkstk_darwin(v20);
  v165 = &v149 - v21;
  __chkstk_darwin(v22);
  v166 = &v149 - v23;
  __chkstk_darwin(v24);
  v167 = &v149 - v25;
  __chkstk_darwin(v26);
  v168 = &v149 - v27;
  __chkstk_darwin(v28);
  v169 = &v149 - v29;
  v186 = sub_1000F24EC(&qword_100AD2680, &unk_100940CC0);
  __chkstk_darwin(v186);
  v185 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v184 = &v149 - v32;
  v183 = sub_1000F24EC(&qword_100AE0D70, &unk_1009521E0);
  __chkstk_darwin(v183);
  v187 = &v149 - v33;
  v34 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v34 - 8);
  v211 = &v149 - v35;
  v36 = type metadata accessor for TimeZone();
  __chkstk_darwin(v36 - 8);
  v219 = &v149 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Locale();
  __chkstk_darwin(v38 - 8);
  v218 = &v149 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v40 - 8);
  v210[1] = &v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000F24EC(&qword_100AD4280, &unk_100954D10);
  __chkstk_darwin(v42 - 8);
  v217 = &v149 - v43;
  v44 = sub_1000F24EC(&qword_100AD4288, &qword_10096FE10);
  __chkstk_darwin(v44 - 8);
  v216 = &v149 - v45;
  v46 = type metadata accessor for Date.FormatStyle();
  v207 = *(v46 - 8);
  v208 = v46;
  __chkstk_darwin(v46);
  v152 = &v149 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v153 = &v149 - v49;
  __chkstk_darwin(v50);
  v154 = &v149 - v51;
  __chkstk_darwin(v52);
  v155 = &v149 - v53;
  __chkstk_darwin(v54);
  v156 = &v149 - v55;
  __chkstk_darwin(v56);
  v173 = &v149 - v57;
  __chkstk_darwin(v58);
  v174 = &v149 - v59;
  __chkstk_darwin(v60);
  v175 = &v149 - v61;
  __chkstk_darwin(v62);
  v176 = &v149 - v63;
  __chkstk_darwin(v64);
  v177 = &v149 - v65;
  __chkstk_darwin(v66);
  v178 = &v149 - v67;
  __chkstk_darwin(v68);
  v222 = &v149 - v69;
  v70 = type metadata accessor for Calendar.Component();
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = &v149 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Date();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v206 = &v149 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v79 = &v149 - v78;
  v80 = type metadata accessor for Calendar();
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v83 = &v149 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  static Date.now.getter();
  (*(v71 + 104))(v73, enum case for Calendar.Component.year(_:), v70);
  v213 = a1;
  v210[0] = Calendar.compare(_:to:toGranularity:)();
  (*(v71 + 8))(v73, v70);
  v205 = *(v75 + 8);
  v205(v79, v74);
  v84 = v80;
  v85 = v211;
  (*(v81 + 8))(v83, v84);
  v86 = *(v214 + 56);
  v161 = v214 + 56;
  v160 = v86;
  v86(v216, 1, 1, v220);
  v87 = *(v215 + 56);
  v159 = v215 + 56;
  v158 = v87;
  v87(v217, 1, 1, v221);
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  v162 = v83;
  v88 = v75;
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  sub_1000082B4(v212, v85, &unk_100AD4790, &unk_10093B4E0);
  if ((*(v75 + 48))(v85, 1, v74) == 1)
  {
    sub_100004F84(v85, &unk_100AD4790, &unk_10093B4E0);
    if (v210[0])
    {
      v89 = v179;
      if (v209)
      {
        static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
      }

      else
      {
        static Date.FormatStyle.Symbol.Weekday.wide.getter();
      }

      v120 = v173;
      v121 = v222;
      Date.FormatStyle.weekday(_:)();
      (*(v197 + 8))(v89, v198);
      v122 = v194;
      static Date.FormatStyle.Symbol.Month.abbreviated.getter();
      v123 = v174;
      Date.FormatStyle.month(_:)();
      (*(v195 + 8))(v122, v196);
      v124 = *(v207 + 8);
      v125 = v120;
      v126 = v208;
      v124(v125, v208);
      v127 = v188;
      static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
      v128 = v175;
      Date.FormatStyle.day(_:)();
      (*(v189 + 8))(v127, v190);
      v124(v123, v126);
      v129 = v180;
      static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
      v130 = v176;
      Date.FormatStyle.year(_:)();
      (*(v181 + 8))(v129, v182);
      v124(v128, v126);
      v131 = v199;
      static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
      v132 = v200;
      static Date.FormatStyle.Symbol.Hour.conversationalDefaultDigits(amPM:)();
      (*(v201 + 8))(v131, v202);
      v133 = v177;
      Date.FormatStyle.hour(_:)();
      (*(v203 + 8))(v132, v204);
      v124(v130, v126);
      v134 = v191;
      static Date.FormatStyle.Symbol.Minute.defaultDigits.getter();
      v135 = v210;
    }

    else
    {
      v118 = v157;
      if (v209)
      {
        static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
      }

      else
      {
        static Date.FormatStyle.Symbol.Weekday.wide.getter();
      }

      v137 = v152;
      v121 = v222;
      Date.FormatStyle.weekday(_:)();
      (*(v197 + 8))(v118, v198);
      v138 = v194;
      static Date.FormatStyle.Symbol.Month.abbreviated.getter();
      v139 = v153;
      Date.FormatStyle.month(_:)();
      (*(v195 + 8))(v138, v196);
      v124 = *(v207 + 8);
      v140 = v137;
      v126 = v208;
      v124(v140, v208);
      v141 = v188;
      static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
      v142 = v154;
      Date.FormatStyle.day(_:)();
      (*(v189 + 8))(v141, v190);
      v124(v139, v126);
      v143 = v199;
      static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
      v144 = v200;
      static Date.FormatStyle.Symbol.Hour.conversationalDefaultDigits(amPM:)();
      (*(v201 + 8))(v143, v202);
      v133 = v155;
      Date.FormatStyle.hour(_:)();
      (*(v203 + 8))(v144, v204);
      v124(v142, v126);
      v134 = v191;
      static Date.FormatStyle.Symbol.Minute.defaultDigits.getter();
      v135 = &v188;
    }

    v145 = *(v135 - 32);
    Date.FormatStyle.minute(_:)();
    (*(v192 + 8))(v134, v193);
    v124(v133, v126);
    sub_100067EB4(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    v124(v145, v126);
    v124(v121, v126);
    return v223;
  }

  v90 = v210[0];
  v212 = v75 + 8;
  v91 = *(v75 + 32);
  v92 = v206;
  v91(v206, v85, v74);
  sub_100067EB4(&qword_100AD2698, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v93 = v213;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v95 = *(v88 + 16);
    v96 = v184;
    v95(v184, v93, v74);
    v97 = v186;
    v95((v96 + *(v186 + 48)), v92, v74);
    v98 = v185;
    sub_1000082B4(v96, v185, &qword_100AD2680, &unk_100940CC0);
    v99 = *(v97 + 48);
    v100 = v187;
    v91(v187, v98, v74);
    v101 = (v98 + v99);
    v102 = v205;
    v205(v101, v74);
    sub_100497098(v96, v98);
    v103 = *(v97 + 48);
    v104 = v100;
    v91(&v100[*(v183 + 36)], v98 + v103, v74);
    v102(v98, v74);
    v105 = v74;
    if (v90)
    {
      v160(v216, 1, 1, v220);
      v158(v217, 1, 1, v221);
      static Locale.autoupdatingCurrent.getter();
      static Calendar.autoupdatingCurrent.getter();
      static TimeZone.autoupdatingCurrent.getter();
      v106 = v163;
      Date.IntervalFormatStyle.init(date:time:locale:calendar:timeZone:)();
      v107 = v164;
      Date.IntervalFormatStyle.year()();
      v108 = *(v170 + 8);
      v109 = v171;
      v108(v106, v171);
      v110 = v194;
      static Date.FormatStyle.Symbol.Month.abbreviated.getter();
      v111 = v165;
      Date.IntervalFormatStyle.month(_:)();
      (*(v195 + 8))(v110, v196);
      v108(v107, v109);
      v112 = v166;
      Date.IntervalFormatStyle.day()();
      v108(v111, v109);
      v113 = v199;
      static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
      v114 = v200;
      static Date.FormatStyle.Symbol.Hour.conversationalDefaultDigits(amPM:)();
      (*(v201 + 8))(v113, v202);
      v115 = v167;
      Date.IntervalFormatStyle.hour(_:)();
      (*(v203 + 8))(v114, v204);
      v108(v112, v109);
      v116 = v168;
      Date.IntervalFormatStyle.minute()();
      v108(v115, v109);
      v117 = v172;
      if (v209)
      {
        static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
      }

      else
      {
        static Date.FormatStyle.Symbol.Weekday.wide.getter();
      }

      v136 = v169;
      Date.IntervalFormatStyle.weekday(_:)();
      (*(v197 + 8))(v117, v198);
      v108(v116, v109);
      sub_100067EB4(&qword_100AE51B0, &type metadata accessor for Date.IntervalFormatStyle, &protocol conformance descriptor for Date.IntervalFormatStyle);
      Range<>.formatted<A>(_:)();
      v108(v136, v109);
      sub_100004F84(v104, &qword_100AE0D70, &unk_1009521E0);
      v205(v206, v74);
      (*(v207 + 8))(v222, v208);
      return v223;
    }

    v119 = v150;
    if (v209)
    {
      static Date.FormatStyle.DateStyle.abbreviated.getter();
    }

    else
    {
      static Date.FormatStyle.DateStyle.long.getter();
    }

    v146 = v206;
    v147 = v151;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v148 = Range<>.formatted(date:time:)();
    (*(v215 + 8))(v147, v221);
    (*(v214 + 8))(v119, v220);
    sub_100004F84(v104, &qword_100AE0D70, &unk_1009521E0);
    v205(v146, v105);
    (*(v207 + 8))(v222, v208);
    return v148;
  }

  else
  {
    __break(1u);
  }

  return result;
}