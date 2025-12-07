uint64_t sub_100418C44(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100418D84, v4, v3);
}

uint64_t sub_100418D84()
{
  v1 = v0[3];
  v2 = v0[26];

  v0[30] = v1;
  v3 = v0[21];
  v4 = v0[22];

  return _swift_task_switch(sub_100418FA4, v3, v4);
}

uint64_t sub_100418DF4(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100418F34, v4, v3);
}

uint64_t sub_100418F34()
{
  v1 = v0[5];
  v2 = v0[26];

  v0[30] = v1;
  v3 = v0[21];
  v4 = v0[22];

  return _swift_task_switch(sub_100418FA4, v3, v4);
}

uint64_t sub_100418FA4()
{
  v31 = v0;
  v1 = *(v0 + 240);

  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);

    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v3);
    v8 = *(v0 + 240);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 200);
    v13 = *(v0 + 144);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);
    v18 = *(v0 + 88);
    if (v11)
    {
      v28 = *(v0 + 104);
      v29 = *(v0 + 120);
      v19 = swift_slowAlloc();
      v27 = v12;
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315138;
      v21 = _typeName(_:qualified:)();
      v26 = v13;
      v23 = sub_100004060(v21, v22, &v30);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: unable to find reminder cell", v19, 0xCu);
      sub_100004758(v20);

      (*(v16 + 8))(v28, v18);
      (*(v14 + 8))(v26, v29);
    }

    else
    {

      (*(v16 + 8))(v17, v18);
      (*(v14 + 8))(v13, v15);
    }

    v8 = 0;
  }

  v24 = *(v0 + 8);

  return v24(v8);
}

uint64_t sub_100419210(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 192) = a3;
  *(v4 + 24) = a1;
  *(v4 + 48) = swift_getObjectType();
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_100058000(&qword_100782980, &unk_10063E6A0);
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  sub_100058000(&unk_100771B10, qword_10062E540);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v7 = type metadata accessor for IndexPath();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 144) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v9;
  *(v4 + 160) = v8;

  return _swift_task_switch(sub_100419420, v9, v8);
}

uint64_t sub_100419420()
{
  v68 = v0;
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100782920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100004060(v5, v6, &v67);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_100004060(0xD000000000000030, 0x8000000100686270, &v67);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 112);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);
    v15 = *(v0 + 24);

    sub_1000079B4(v11, &unk_100771B10, qword_10062E540);
    (*(v13 + 16))(v12, v15, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v22 = 136315394;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100004060(v23, v24, &v67);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      sub_10041B7A8(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v20 + 8))(v19, v21);
      v29 = sub_100004060(v26, v28, &v67);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: indexPath not found {columnID: %s}", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v52 = 0;
    goto LABEL_20;
  }

  v30 = *(v0 + 40);
  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 120));
  v31 = *(v30 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView);
  *(v0 + 168) = v31;
  v32 = UICollectionView.visibleCellForItem(at:)();
  if (v32)
  {
    v33 = v32;
    v34 = v32;
    [v31 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [v34 bounds];
    [v31 convertRect:v34 fromCoordinateSpace:?];
    v44 = v43;
    v46 = v45;
    v70.origin.x = v36;
    v70.origin.y = v38;
    v70.size.width = v40;
    v70.size.height = v42;
    MinY = CGRectGetMinY(v70);
    v71.origin.x = v36;
    v71.origin.y = v38;
    v71.size.width = v40;
    v71.size.height = v42;
    v73.size.height = CGRectGetHeight(v71);
    v72.origin.x = v36;
    v72.origin.y = v38;
    v72.size.width = v40;
    v72.size.height = v42;
    v73.origin.x = v44;
    v73.origin.y = MinY;
    v73.size.width = v46;
    if (!CGRectContainsRect(v72, v73))
    {
      v48 = *(v0 + 192);
      v49 = *(v0 + 32);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v31 scrollToItemAtIndexPath:isa atScrollPosition:v49 animated:v48];
    }

    v51 = v33;
    goto LABEL_19;
  }

  v53 = *(v0 + 192);
  v54 = *(v0 + 32);
  v55 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v31 scrollToItemAtIndexPath:v55 atScrollPosition:v54 animated:v53];

  if ((v53 & 1) == 0)
  {

    [v31 layoutIfNeeded];
    v61 = *(v0 + 168);
    v62 = IndexPath._bridgeToObjectiveC()().super.isa;
    v34 = [v61 cellForItemAtIndexPath:v62];

    v51 = v34;
LABEL_19:
    v64 = *(v0 + 128);
    v63 = *(v0 + 136);
    v65 = *(v0 + 120);
    v52 = sub_10041B398(v51);

    (*(v64 + 8))(v63, v65);
LABEL_20:

    v66 = *(v0 + 8);

    return v66(v52);
  }

  v56 = *(v0 + 136);
  *(v0 + 16) = *(*(v0 + 40) + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_willDisplayCell);
  sub_100058000(&qword_100782988, &qword_10063E6B0);
  sub_10000E188(&qword_100782990, &qword_100782988, &qword_10063E6B0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.rem_bufferedValues.getter();
  v57 = swift_task_alloc();
  *(v0 + 176) = v57;
  *(v57 + 16) = v56;
  v58 = swift_task_alloc();
  *(v0 + 184) = v58;
  *v58 = v0;
  v58[1] = sub_100419B9C;
  v59 = *(v0 + 104);

  return sub_100419F30(v59, &unk_10063E6C0, v57);
}

uint64_t sub_100419B9C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[10];
    v7 = v2[11];

    (*(v7 + 8))(v5, v6);
    sub_1000079B4(v4, &unk_100771B10, qword_10062E540);
    v8 = v2[19];
    v9 = v2[20];

    return _swift_task_switch(sub_100419D14, v8, v9);
  }
}

uint64_t sub_100419D14()
{

  v1 = v0[21];
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v1 cellForItemAtIndexPath:isa];

  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = sub_10041B398(v3);

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100419E20(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100419EB8, v4, v3);
}

uint64_t sub_100419EB8()
{

  v1 = static IndexPath.== infix(_:_:)();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100419F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for IndexPath();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_100058000(&unk_100771B10, qword_10062E540);
  v4[9] = swift_task_alloc();
  v6 = sub_100058000(&qword_100782980, &unk_10063E6A0);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_100058000(&qword_100782998, &qword_10063E6D0);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10041A0FC, 0, 0);
}

uint64_t sub_10041A0FC()
{
  (*(v0[11] + 16))(v0[12], v0[5], v0[10]);
  sub_10000E188(&qword_1007829A0, &qword_100782980, &unk_10063E6A0, &protocol conformance descriptor for AsyncPublisher<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000E188(&qword_1007829A8, &qword_100782998, &qword_10063E6D0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_10041A248;
  v3 = v0[13];
  v4 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_10041A248()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v3 = sub_10041A56C;
  }

  else
  {
    v3 = sub_10041A374;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10041A374()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v0[7] + 56))(v0[2], 1, 1, v0[6]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8];
    v7 = v0[3];
    v8 = *(v3 + 32);
    v0[18] = v8;
    v0[19] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v6, v1, v2);
    v11 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_10041A5F8;
    v10 = v0[8];

    return v11(v10);
  }
}

uint64_t sub_10041A56C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10041A5F8(char a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = *(v4 + 112);
    v5 = *(v4 + 120);
    v7 = *(v4 + 104);
    (*(*(v4 + 56) + 8))(*(v4 + 64), *(v4 + 48));
    (*(v6 + 8))(v5, v7);
    v8 = sub_10041A924;
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    v8 = sub_10041A758;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10041A758()
{
  if (*(v0 + 176) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    v4 = *(v0 + 16);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    v1(v4, v2, v3);
    (*(*(v0 + 56) + 56))(*(v0 + 16), 0, 1, *(v0 + 48));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v7 = sub_10000E188(&qword_1007829A8, &qword_100782998, &qword_10063E6D0, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_10041A248;
    v9 = *(v0 + 104);
    v10 = *(v0 + 72);

    return dispatch thunk of AsyncIteratorProtocol.next()(v10, v9, v7);
  }
}

uint64_t sub_10041A924()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10041A9B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v37 = a1;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v38 = &v33 - v12;
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_100782920);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v16 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = sub_100004060(v17, v18, v40);
    v34 = v14;
    v20 = a2;
    v21 = v19;

    *(v16 + 4) = v21;
    a2 = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100004060(0xD00000000000002ALL, 0x8000000100674E00, v40);
    v22 = v34;
    _os_log_impl(&_mh_execute_header, v34, v15, "%s: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10000B0D8(a2, v40);
  sub_100058000(&qword_1007829B8, &qword_10063E708);
  type metadata accessor for TTRIBoardEditableColumnHeader(0);
  if (swift_dynamicCast())
  {
    v23 = v39;
    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    UIView.ancestorView<A>(ofType:)();
    v24 = v40[0];
    if (v40[0])
    {
      v25 = [*(v4 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView) indexPathForCell:v40[0]];
      if (v25)
      {
        v26 = v38;
        v27 = v25;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10041AE10(v24, v26, v4, a3 & 1, ObjectType);
        (*(v9 + 8))(v26, v8);
        return;
      }
    }

    else
    {
    }
  }

  sub_10000B0D8(a2, v40);
  type metadata accessor for TTRIBoardReminderCell(0);
  if (swift_dynamicCast())
  {
    v28 = v39;
    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    UIView.ancestorView<A>(ofType:)();
    v29 = v40[0];
    if (v40[0])
    {
      v30 = [*(v4 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView) indexPathForCell:v40[0]];
      if (v30)
      {
        v31 = v36;
        v32 = v30;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10041AE10(v29, v31, v4, a3 & 1, ObjectType);
        sub_10041B0E8(v28, v29, v37, a3 & 1, ObjectType);

        (*(v9 + 8))(v31, v8);
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

void sub_10041AE10(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100782920);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100004060(v12, v13, &v30);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100004060(0xD000000000000018, 0x8000000100686390, &v30);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(a3 + OBJC_IVAR____TtC9Reminders37TTRIRemindersBoardScrollingController_mainCollectionView);
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [a1 bounds];
  [v15 convertRect:a1 fromCoordinateSpace:?];
  v25 = v24;
  v27 = v26;
  v32.origin.x = v17;
  v32.origin.y = v19;
  v32.size.width = v21;
  v32.size.height = v23;
  MinY = CGRectGetMinY(v32);
  v33.origin.x = v17;
  v33.origin.y = v19;
  v33.size.width = v21;
  v33.size.height = v23;
  v35.size.height = CGRectGetHeight(v33);
  v34.origin.x = v17;
  v34.origin.y = v19;
  v34.size.width = v21;
  v34.size.height = v23;
  v35.origin.x = v25;
  v35.origin.y = MinY;
  v35.size.width = v27;
  if (!CGRectContainsRect(v34, v35))
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v15 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:a4 & 1];
  }
}

void sub_10041B0E8(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (qword_1007672B8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100782920);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100004060(v13, v14, &v18);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100004060(0xD000000000000020, 0x8000000100686360, &v18);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(a2 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_scrollingController);
  if (v16)
  {
    v17 = v16;
    sub_1005DF210(a3, a1, a4 & 1);
  }

  else
  {
    __break(1u);
  }
}

void *sub_10041B398(void *result)
{
  if (result)
  {
    v1 = result;
    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      return v3;
    }

    else
    {
      v5 = qword_1007672B8;
      v6 = v1;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003E30(v7, qword_100782920);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "TTRIRemindersBoardScrollingController: unexpected cell type", v10, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10041B4B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10041B550;

  return sub_100419E20(a1, v4);
}

uint64_t sub_10041B550(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10041B64C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.ItemID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10001AA3C;

  return sub_100416AA4(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t sub_10041B7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10041B7F0(uint64_t a1)
{
  v15 = a1;
  v2 = *((swift_isaMask & *v1) + 0x50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v6 = &v13 - v5;
  if (sub_10052A9A8())
  {
    if (sub_10052A99C())
    {
      return;
    }
  }

  else if (sub_10052A990())
  {
    return;
  }

  sub_10052A8CC();
  v8 = v7;
  if (Array.endIndex.getter())
  {
    v13 = v4;
    v9 = 0;
    v14 = *((swift_isaMask & *v1) + 0x2F0);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v3 + 16))(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v13 != 8)
        {
          __break(1u);
          return;
        }

        v16 = v12;
        (*(v3 + 16))(v6, &v16, v2);
        swift_unknownObjectRelease();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          return;
        }
      }

      v14(v6, v15 & 1);
      (*(v3 + 8))(v6, v2);
      ++v9;
      if (v11 == Array.endIndex.getter())
      {
        goto LABEL_15;
      }
    }
  }
}

uint64_t sub_10041BA9C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007829C0);
  v1 = sub_100003E30(v0, qword_1007829C0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_10041BB64(void *a1, void *a2)
{
  v3 = v2;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[4] = a1;
  v3[5] = 0;
  v6 = _swiftEmptyArrayStorage;
  v3[6] = 0;
  v3[7] = _swiftEmptyArrayStorage;
  v7 = a1;
  v8 = [v7 shareeContext];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 sharees];

    sub_100003540(0, &qword_10076BC70, REMSharee_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3[7] = v6;

  v11 = NSUndoManager.observeChanges<A>(target:handler:)();

  v3[5] = v11;

  return v3;
}

uint64_t sub_10041BC9C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100406610();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10041BCEC()
{
  if (*(v0 + 40))
  {
    sub_100003540(0, &qword_100788D40, NSUndoManager_ptr);

    static NSUndoManager.removeObserver(with:)();

    sub_10003B788(v0 + 16);

    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

void sub_10041BDB8(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
LABEL_52:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_53;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_53:
    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100003E30(v50, qword_1007829C0);

    osloga = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(osloga, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = [*(v2 + 32) objectID];
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&_mh_execute_header, osloga, v51, "Requested to add sharees but no sharees are provided {list.objectID: %@}", v52, 0xCu);
      sub_100094164(v53);
    }

    return;
  }

  v3 = sub_10041D460();
  if (!v3)
  {
    goto LABEL_53;
  }

  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  v5 = v3;

  v6 = [*(v2 + 32) shareeContext];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 sharees];

    sub_100003540(0, &qword_10076BC70, REMSharee_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  *(v2 + 56) = v9;

  v10 = *(v2 + 56);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v2;
  if (v11)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    do
    {
      v14 = v12;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v15 = *(v10 + 8 * v14 + 32);
        }

        v16 = v15;
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v17 = [v15 address];
        if (v17)
        {
          break;
        }

        ++v14;
        if (v12 == v11)
        {
          goto LABEL_27;
        }
      }

      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100546970(0, *(v13 + 2) + 1, 1, v13);
      }

      v22 = *(v13 + 2);
      v21 = *(v13 + 3);
      if (v22 >= v21 >> 1)
      {
        v13 = sub_100546970((v21 > 1), v22 + 1, 1, v13);
      }

      *(v13 + 2) = v22 + 1;
      v23 = &v13[16 * v22];
      v2 = v63;
      *(v23 + 4) = v19;
      *(v23 + 5) = v61;
    }

    while (v12 != v11);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

LABEL_27:

  v24 = sub_1004B61FC(v13);

  v67 = v24;
  v25 = [*(v2 + 32) sharedOwnerAddress];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    sub_10058CBA4(v66, v27, v29);
  }

  v31 = sub_10041DBC0(v30, &v67);

  v32 = v31 >> 62;
  if (v31 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_31;
    }

LABEL_62:

    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100003E30(v55, qword_1007829C0);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      v60 = [*(v2 + 32) objectID];
      *(v58 + 4) = v60;
      *v59 = v60;
      _os_log_impl(&_mh_execute_header, v56, v57, "All sharees requested to add are already existing {list.objectID: %@}", v58, 0xCu);
      sub_100094164(v59);
    }

    goto LABEL_67;
  }

  if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_62;
  }

LABEL_31:
  if (qword_1007672C0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100003E30(v33, qword_1007829C0);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v34, v35))
  {

LABEL_49:
    v66[0] = *(v2 + 56);

    sub_1000816AC(v31);
    sub_10041C644(v66[0]);

LABEL_67:

    return;
  }

  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  *v36 = 134218498;
  oslog = v38;
  v66[0] = v38;
  if (v32)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v36 + 4) = v39;

  *(v36 + 12) = 2112;
  v40 = [*(v2 + 32) objectID];
  *(v36 + 14) = v40;
  *v37 = v40;
  *(v36 + 22) = 2080;
  v62 = v37;
  if (v32)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v41 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v41)
  {
LABEL_48:
    sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    v46 = Array.description.getter();
    v48 = v47;

    v49 = sub_100004060(v46, v48, v66);

    *(v36 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v34, v35, "Going to add %ld new sharees to list {list.objectID: %@, newShareeIDs: %s}", v36, 0x20u);
    sub_100094164(v62);

    sub_100004758(oslog);

    v2 = v63;
    goto LABEL_49;
  }

  v66[2] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v42 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v43 = *(v31 + 8 * v42 + 32);
      }

      v44 = v43;
      ++v42;
      v45 = [v43 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v41 != v42);
    goto LABEL_48;
  }

  __break(1u);
}

void sub_10041C644(unint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = [v3 store];
  v5 = [objc_allocWithZone(REMSaveRequest) initWithStore:v4];

  v6 = [v5 updateList:v3];
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v6 setSharingStatus:v7 != 0];
  sub_100003540(0, &qword_10076BC70, REMSharee_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 setSharees:isa];

  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = v10;
  v14[4] = sub_10041DE1C;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100009DE4;
  v14[3] = &unk_1007271E8;
  v12 = _Block_copy(v14);
  v13 = v3;

  [v5 saveWithQueue:v9 completion:v12];
  _Block_release(v12);
}

double sub_10041C880(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 56);
  if (v5 >> 62)
  {
    goto LABEL_63;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:
    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100003E30(v45, qword_1007829C0);

    v46 = a1;
    osloga = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(osloga, v39))
    {
      goto LABEL_69;
    }

    v40 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v40 = 138412546;
    v48 = [*(v4 + 32) objectID];
    *(v40 + 4) = v48;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v46;
    *v47 = v48;
    v47[1] = v46;
    v49 = v46;
    v44 = "Requested to delete a sharee but the list is not shared to anyone {list.objectID: %@, shareeID: %@}";
    goto LABEL_68;
  }

  while (1)
  {
    v6 = sub_10041D460();
    if (!v6)
    {
      goto LABEL_64;
    }

    v7 = *(v4 + 32);
    *(v4 + 32) = v6;
    v8 = v6;

    v9 = [*(v4 + 32) shareeContext];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 sharees];

      sub_100003540(0, &qword_10076BC70, REMSharee_ptr);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    *(v4 + 56) = v12;

    v13 = *(v4 + 56);
    v14 = v13 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v59 = v4;
    if (!v14)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v15 = *(v13 + 8 * v4 + 32);
      }

      v16 = v15;
      v17 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v18 = [v15 objectID];
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v4;
      if (v17 == v14)
      {
        v4 = v59;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_64;
    }
  }

LABEL_21:

  v20 = _swiftEmptyArrayStorage < 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0;
  if (v20)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = _swiftEmptyArrayStorage[2];
  }

  v22 = *(v4 + 56);
  if (v22 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 == v23 && a3)
  {
    if (v20)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (v24)
      {
LABEL_32:
        v4 = 0;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v4 >= _swiftEmptyArrayStorage[2])
            {
              goto LABEL_62;
            }

            v25 = _swiftEmptyArrayStorage[v4 + 4];
          }

          v26 = v25;
          v27 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_61;
          }

          v28 = [v25 address];
          if (!v28)
          {
            goto LABEL_33;
          }

          v29 = v28;
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          if (v30 == a2 && v32 == a3)
          {

            goto LABEL_34;
          }

          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v34)
          {
          }

          else
          {
LABEL_33:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

LABEL_34:
          ++v4;
          if (v27 == v24)
          {
            v4 = v59;
            break;
          }
        }
      }
    }

    else
    {
      v24 = _swiftEmptyArrayStorage[2];
      if (v24)
      {
        goto LABEL_32;
      }
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = *(v4 + 56);
  if (v36 >> 62)
  {
    if (v35 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_55;
    }
  }

  else if (v35 == *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_55:

    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100003E30(v37, qword_1007829C0);

    v38 = a1;
    osloga = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(osloga, v39))
    {
      goto LABEL_69;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412546;
    v42 = [*(v4 + 32) objectID];
    *(v40 + 4) = v42;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v38;
    *v41 = v42;
    v41[1] = v38;
    v43 = v38;
    v44 = "The sharee requested to delete does not exist {list.objectID: %@, shareeID: %@}";
LABEL_68:
    _os_log_impl(&_mh_execute_header, osloga, v39, v44, v40, 0x16u);
    sub_100058000(&unk_10076DF80, &qword_10062F730);
    swift_arrayDestroy();

LABEL_69:

    return result;
  }

  if (qword_1007672C0 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100003E30(v51, qword_1007829C0);

  v52 = a1;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412546;
    v57 = [*(v4 + 32) objectID];
    *(v55 + 4) = v57;
    *(v55 + 12) = 2112;
    *(v55 + 14) = v52;
    *v56 = v57;
    v56[1] = v52;
    v58 = v52;
    _os_log_impl(&_mh_execute_header, v53, v54, "Going to delete sharee from list {list.objectID: %@, shareeID: %@}", v55, 0x16u);
    sub_100058000(&unk_10076DF80, &qword_10062F730);
    swift_arrayDestroy();
  }

  sub_10041C644(_swiftEmptyArrayStorage);

  return result;
}

void sub_10041D0EC()
{
  v1 = v0;
  v2 = *(v0 + 56);
  if (v2 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_15;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  v3 = sub_10041D460();
  if (v3)
  {
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v5 = v3;

    v6 = [*(v1 + 32) shareeContext];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 sharees];

      sub_100003540(0, &qword_10076BC70, REMSharee_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    *(v1 + 56) = v9;

    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_1007829C0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [*(v1 + 32) objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Going to remove stop sharing list, i.e. remove all sharees {list.objectID: %@}", v13, 0xCu);
      sub_100094164(v14);
    }

    sub_10041C644(_swiftEmptyArrayStorage);
    return;
  }

LABEL_15:
  if (qword_1007672C0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_1007829C0);

  oslog = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = [*(v1 + 32) objectID];
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, oslog, v17, "Requested to stop sharing the list but the list is not shared to anyone {list.objectID: %@}", v18, 0xCu);
    sub_100094164(v19);
  }
}

id sub_10041D460()
{
  v1 = v0;
  v2 = [*(v0 + 32) store];
  v3 = [*(v1 + 32) objectID];
  v18 = 0;
  v4 = [v2 fetchListWithObjectID:v3 error:&v18];

  v5 = v18;
  if (!v4)
  {
    v6 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_1007829C0);
    swift_errorRetain();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v10 = 136315394;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_100004060(v13, v14, &v18);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      v16 = [*(v1 + 32) objectID];
      *(v10 + 14) = v16;
      *v11 = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "TTRListSharingInteractor failed to fetch updated list {error: %s, list.objectID: %@}", v10, 0x16u);
      sub_100094164(v11);

      sub_100004758(v12);
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

double sub_10041D70C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_1007829C0);
    swift_errorRetain();
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v38[0] = v11;
      *v9 = 136315394;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = sub_100004060(v12, v13, v38);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      v15 = [v6 objectID];
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update sharees for list {error: %s, list.objectID: %@}", v9, 0x16u);
      sub_100094164(v10);

      sub_100004758(v11);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1007672C0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003E30(v17, qword_1007829C0);
    v18 = a2;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      v23 = [v18 objectID];
      *(v21 + 4) = v23;
      *v22 = v23;
      *(v21 + 12) = 2048;
      if (a3 >> 62)
      {
        v24 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v24 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 14) = v24;

      _os_log_impl(&_mh_execute_header, v19, v20, "Updated sharees to list {list.objectID: %@, sharees.count: %ld}", v21, 0x16u);
      sub_100094164(v22);
    }

    else
    {
    }
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = *(Strong + 56);

    v29 = sub_10041D460();
    if (v29)
    {
      v30 = *(v27 + 32);
      *(v27 + 32) = v29;
      v31 = v29;

      v32 = [*(v27 + 32) shareeContext];
      if (v32)
      {
        v33 = v32;
        v34 = [v32 sharees];

        sub_100003540(0, &qword_10076BC70, REMSharee_ptr);
        v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v35 = _swiftEmptyArrayStorage;
      }

      *(v27 + 56) = v35;

      v37 = sub_100126964(v36, v28);

      if ((v37 & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
      {
      }

      else
      {
        sub_100406610();

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return result;
}

void *sub_10041DBC0(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = a1 + 32;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = v2;
    while (1)
    {
      if (v4)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_26;
        }

        a1 = *(v26 + 8 * v3);
      }

      v6 = a1;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v8 = [a1 address];
      if (v8)
      {
        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = *a2;
        if (*(*a2 + 16))
        {
          v14 = v4;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v15 = Hasher._finalize()();
          v16 = -1 << *(v13 + 32);
          v17 = v15 & ~v16;
          if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v19 = (*(v13 + 48) + 16 * v17);
              v20 = *v19 == v10 && v19[1] == v12;
              if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v4 = v14;
            v5 = v23;
            v2 = v24;
            goto LABEL_6;
          }

LABEL_21:

          v4 = v14;
          v5 = v23;
          v2 = v24;
        }

        else
        {
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = specialized ContiguousArray._endMutation()();
LABEL_6:
      if (v3 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v22 = a1;
    v2 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v22;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10041DE28()
{

  return swift_deallocClassInstance();
}

double sub_10041DE8C()
{
  swift_beginAccess();
  *(v0 + 24) = &_swiftEmptySetSingleton;

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListPresentationTreeConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListPresentationTreeConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10041E054()
{
  result = qword_100782B40;
  if (!qword_100782B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782B40);
  }

  return result;
}

unint64_t sub_10041E0BC()
{
  result = qword_100782B48;
  if (!qword_100782B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782B48);
  }

  return result;
}

uint64_t *sub_10041E110(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_10041E278(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_10041E348(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_10041E474(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_10041E608(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_10041E734(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_10041E8F0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_10041E958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t type metadata accessor for TTRIRemindersListNavigationBarEditingTarget(uint64_t a1)
{
  result = qword_100782BC0;
  if (!qword_100782BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10041EA14(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_10041EA8C()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100004758((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_10041EAF8@<X0>(uint64_t (**a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:))
  {
    goto LABEL_2;
  }

  if (v18 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:))
    {
      v26 = v39[9];
      v27 = v39[10];
      sub_10000C36C(v39 + 6, v26);
      (*(v27 + 16))(v26, v27);
      v29 = v28;
      ObjectType = swift_getObjectType();
      v31 = (*(v29 + 144))(ObjectType, v29);
      swift_unknownObjectRelease();
      v32 = type metadata accessor for TTRICollectionViewCellSelectionOption();
      v33 = *(*(v32 - 8) + 104);
      if (v43)
      {
        v33(v44, enum case for TTRICollectionViewCellSelectionOption.selectItem(_:), v32);
        return (*(v15 + 8))(v17, v14);
      }

      a1 = (v15 + 8);
      if (v31)
      {
        v38 = &enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:);
LABEL_39:
        v33(v44, *v38, v32);
        return (*a1)(v17, v14);
      }
    }

    else
    {
      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
      {
        (*(v15 + 8))(v17, v14);
        goto LABEL_21;
      }

      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
      {
LABEL_2:
        (*(v15 + 8))(v17, v14);
        goto LABEL_3;
      }

      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
      {
        goto LABEL_3;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    v38 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
    goto LABEL_39;
  }

  (*(v15 + 96))(v17, v14);
  (*(v11 + 32))(v13, v17, v10);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v40 + 8))(v9, v7);
  v24 = v41;
  v23 = v42;
  v25 = (*(v41 + 88))(v6, v42);
  if (v25 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    if (v25 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
    {
      (*(v24 + 8))(v6, v23);
      if ((v43 & 1) == 0)
      {
        v34 = TTRRemindersListViewModel.SectionHeader.isTitleEditable.getter();
        (*(v11 + 8))(v13, v10);
        if (v34)
        {
          v19 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
          goto LABEL_4;
        }

LABEL_3:
        v19 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
LABEL_4:
        v20 = *v19;
        v21 = type metadata accessor for TTRICollectionViewCellSelectionOption();
        return (*(*(v21 - 8) + 104))(v44, v20, v21);
      }
    }

    else
    {
      if (v25 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        goto LABEL_7;
      }

      if (v25 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    (*(v11 + 8))(v13, v10);
    goto LABEL_3;
  }

LABEL_7:
  (*(v11 + 8))(v13, v10);
  (*(v24 + 8))(v6, v23);
LABEL_21:
  v36 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  if (v43)
  {
    v37 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
  }

  else
  {
    v37 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
  }

  return (*(*(v36 - 8) + 104))(v44, *v37, v36);
}

void *sub_10041F1C4(int a1, uint64_t a2)
{
  LODWORD(v3) = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v8);
  v50 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = *(a2 + 16);
  if (v15)
  {
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v55 = *(v16 + 56);
    v43 = v18;
    v19 = a2 + v18;
    v52 = (v5 + 88);
    v53 = v17;
    v51 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:);
    v46 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:);
    v42 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:);
    v41 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:);
    v40 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:);
    v39 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:);
    v38 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:);
    v37 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:);
    v36 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:);
    v35 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:);
    v34 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:);
    v33 = enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:);
    v47 = (v16 - 8);
    v48 = (v16 + 16);
    v49 = (v5 + 8);
    v20 = _swiftEmptyArrayStorage;
    v45 = v3;
    v44 = v4;
    v54 = v16;
    v17(v14, v19, v8, v12);
    while (1)
    {
      TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
      v23 = (*v52)(v7, v4);
      if (v23 == v51)
      {
        goto LABEL_8;
      }

      if (v23 == v46)
      {
        (*v49)(v7, v4);
        v21 = v55;
        if (v3)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }

      if (v23 != v42)
      {
        break;
      }

      (*v49)(v7, v4);
      v21 = v55;
      if (v3 != 1)
      {
LABEL_4:
        (*v47)(v14, v8);
        goto LABEL_5;
      }

LABEL_10:
      v24 = *v48;
      (*v48)(v50, v14, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004A1C48(0, v20[2] + 1, 1);
        v21 = v55;
        v20 = v56;
      }

      v3 = v20[2];
      v26 = v20[3];
      if (v3 >= v26 >> 1)
      {
        sub_1004A1C48((v26 > 1), v3 + 1, 1);
        v21 = v55;
        v20 = v56;
      }

      v20[2] = v3 + 1;
      v24(v20 + v43 + v3 * v21, v50, v8);
      LOBYTE(v3) = v45;
      v4 = v44;
LABEL_5:
      v19 += v21;
      if (!--v15)
      {
        return v20;
      }

      v53(v14, v19, v8, v22);
    }

    if (v23 == v41 || v23 == v40 || v23 == v39 || v23 == v38 || v23 == v37 || v23 == v36)
    {
LABEL_8:
      (*v49)(v7, v4);
    }

    else if (v23 != v35 && v23 != v34 && v23 != v33)
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v21 = v55;
    if (v3 != 2)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10041F674@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_100058000(&qword_10076E8D0, &unk_10063ABA0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = v1[9];
  v10 = v1[10];
  sub_10000C36C(v1 + 6, v9);
  (*(v10 + 16))(v9, v10);
  v12 = v11;
  ObjectType = swift_getObjectType();
  (*(v12 + 152))(ObjectType, v12);
  swift_unknownObjectRelease();
  v14 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380, &qword_10062DE60);
    v16 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    goto LABEL_7;
  }

  TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
  (*(v15 + 8))(v5, v14);
  v17 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v8, 0, 1, v17);
  v19 = (*(v18 + 88))(v8, v17);
  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:))
  {
    goto LABEL_7;
  }

  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
  {
    v20 = type metadata accessor for TTRIEditableSectionsPresentationTreeMaker();
    v21 = &off_1007168A0;
LABEL_8:
    result = swift_allocObject();
    a1[3] = v20;
    a1[4] = v21;
    *a1 = result;
    return result;
  }

  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
  {
LABEL_7:
    v20 = type metadata accessor for TTRIDefaultPresentationTreeMaker();
    v21 = &off_1007168C8;
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

char *sub_10041F98C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  if (![Strong isViewLoaded])
  {
    v2 = 0;
    goto LABEL_7;
  }

  result = sub_1003C1420();
  v2 = *&result[qword_10078A540];
  if (v2)
  {
    v3 = result;
    v4 = v2;

LABEL_7:
    swift_unknownObjectRelease();
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041FA10()
{
  v0 = sub_100058000(&unk_100781850, &unk_10063D2D0);
  __chkstk_darwin(v0 - 8);
  v32 = &v26 - v1;
  v2 = sub_100058000(&qword_10076E0D0, &unk_100635D70);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v34 = sub_100058000(&qword_10076E0C8, &qword_100631BE8);
  __chkstk_darwin(v34);
  v33 = &v26 - v5;
  v6 = type metadata accessor for TTREditingStateOption.InputType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v36 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100058000(&qword_100781878, qword_10063EB20);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v14 = &v26 - v13;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    TTRRemindersListTreeViewModelUpdateContext.treeViewUpdatesComputeIfNeeded()();
    sub_1003C6F1C(v14);
    TTRRemindersListTreeViewModelUpdateContext.itemToStartEditing.getter();
    v16 = sub_100058000(&unk_1007756F0, &unk_100631C00);
    if ((*(*(v16 - 8) + 48))(v4, 1, v16) == 1)
    {
      (*(v35 + 8))(v14, v37);
      swift_unknownObjectRelease();
      return sub_1000079B4(v4, &qword_10076E0D0, &unk_100635D70);
    }

    else
    {
      v17 = *(v16 + 48);
      v18 = v34;
      v27 = *(v34 + 48);
      v28 = v17;
      v30 = v9;
      v31 = v11;
      v29 = *(v11 + 32);
      v19 = v33;
      v29(v33, v4, v10);
      v20 = *(v7 + 32);
      v20(&v19[v27], &v4[v28], v6);
      v21 = *(v18 + 48);
      v29(v36, v19, v10);
      v22 = &v19[v21];
      v23 = v30;
      v20(v30, v22, v6);
      v24 = v32;
      (*(v7 + 16))(v32, v23, v6);
      (*(v7 + 56))(v24, 0, 1, v6);
      v25 = v36;
      sub_1003C78EC(v36, v24);
      swift_unknownObjectRelease();
      sub_1000079B4(v24, &unk_100781850, &unk_10063D2D0);
      (*(v7 + 8))(v23, v6);
      (*(v31 + 8))(v25, v10);
      return (*(v35 + 8))(v14, v37);
    }
  }

  return result;
}

void sub_10041FEF8()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v0 = sub_1003C1420();
    __chkstk_darwin(v0);
    v2 = *(v1 + qword_10078A548);
    if (v2)
    {
      v3 = v2;
      sub_1001A0494(0, 0, 0, 0, v3, sub_10042189C);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10041FFCC(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(v3 + 16);
    v11(v8, a1, v2);
    v12 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    v11(v5, v10 + v12, v2);
    swift_beginAccess();
    (*(v3 + 24))(v10 + v12, v8, v2);
    swift_endAccess();
    sub_10038A3F8(v5);
    swift_unknownObjectRelease();
    v13 = *(v3 + 8);
    v13(v5, v2);
    return (v13)(v8, v2);
  }

  return result;
}

uint64_t sub_100420180(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    v8 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
    swift_beginAccess();
    (*(v3 + 24))(v7 + v8, v5, v2);
    swift_endAccess();
    sub_10037D260();
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_1004202C8(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  if ([Strong isViewLoaded])
  {
    v4 = *&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController];
    if (v4)
    {
      v5 = *(*&v4[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_scrollSessionController] + 24);
      if (v5 && (*(v5 + 24) & 1) != 0)
      {
        v6 = v4;
LABEL_9:
        swift_beginAccess();

        sub_10059A6B0(v9);
        swift_endAccess();

        swift_unknownObjectRelease();

        return;
      }

      v7 = *(*&v4[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView] + qword_10078A540);
      if (v7)
      {
        v8 = v4;
        if ([v7 hasActiveDrop])
        {
          goto LABEL_9;
        }

        (*&v8[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_reloadItemsImmediately])(a1);

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_12:

  swift_unknownObjectRelease();
}

char *sub_100420428(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10000C36C(a1, a1[3]);
    v4 = dispatch thunk of TTRRemindersListEditingState.isEditingTable.getter();
    sub_10037C41C();
    if ((v4 ^ [v3 isEditing]))
    {
      UIViewController.endFirstResponderEditing()();
      v5.receiver = v3;
      v5.super_class = type metadata accessor for TTRIShowRemindersViewController(0);
      objc_msgSendSuper2(&v5, "setEditing:animated:", v4 & 1, 1);
      [*&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController] setEditing:v4 & 1 animated:1];
      sub_10037DD70(1, 1);
      sub_10037FFC0();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100420544(uint64_t a1)
{
  v2 = type metadata accessor for TTRSharedWithYouHighlight();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775700, &unk_10062E390);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_10076E0B8, &qword_100631BE0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_swHighlightToShowInNavBar;
    swift_beginAccess();
    v15 = *(v9 + 48);
    sub_1004217E4(v13 + v14, v11);
    v21 = a1;
    sub_1004217E4(a1, &v11[v15]);
    v16 = *(v3 + 48);
    if (v16(v11, 1, v2) == 1)
    {
      if (v16(&v11[v15], 1, v2) == 1)
      {
        swift_unknownObjectRelease();
        return sub_1000079B4(v11, &qword_100775700, &unk_10062E390);
      }
    }

    else
    {
      sub_1004217E4(v11, v8);
      if (v16(&v11[v15], 1, v2) != 1)
      {
        (*(v3 + 32))(v5, &v11[v15], v2);
        sub_100421854(&qword_10076E0C0, &type metadata accessor for TTRSharedWithYouHighlight, &protocol conformance descriptor for TTRSharedWithYouHighlight);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        v19 = *(v3 + 8);
        v19(v5, v2);
        v19(v8, v2);
        sub_1000079B4(v11, &qword_100775700, &unk_10062E390);
        v17 = v21;
        if (v18)
        {
          return swift_unknownObjectRelease();
        }

        goto LABEL_8;
      }

      (*(v3 + 8))(v8, v2);
    }

    sub_1000079B4(v11, &qword_10076E0B8, &qword_100631BE0);
    v17 = v21;
LABEL_8:
    swift_beginAccess();
    sub_10013EC94(v17, v13 + v14);
    swift_endAccess();
    sub_10037C41C();
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1004208B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  result = sub_1003C1420();
  v5 = *&result[qword_10078A548];
  if (!v5)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v5;
  v8 = sub_1000DE654(a1);

  if (!v8)
  {
    goto LABEL_9;
  }

  type metadata accessor for TTRIRemindersListReminderCell();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();

LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  v9 = TTRIRemindersListReminderCell.viewForAnchoringPopover.getter();
  if (!v9)
  {

LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v10 = v9;
  static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();

  swift_unknownObjectRelease();
  v11 = 0;
LABEL_11:
  v12 = type metadata accessor for TTRIPopoverAnchor();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, v11, 1, v12);
}

uint64_t sub_1004209F4(uint64_t a1)
{
  v1 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v2 + 104))(v4, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v1);
    v5 = TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v2 + 8))(v4, v1);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    v7 = type metadata accessor for PromiseError();
    sub_100421854(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for PromiseError.cancelled(_:), v7);
    sub_100058000(&qword_1007845B0, &qword_10063D2C0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100420BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ([Strong isViewLoaded])
    {
      v7 = sub_1003C1420();
      sub_1001D5404(a1, a2);

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, 1, 1, v9);
}

void sub_100420CD4(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, a1, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v9 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_firstVisibleItemToRestore;
    swift_beginAccess();
    sub_10030DB18(v4, v6 + v9);
    swift_endAccess();
    v10 = [v6 viewIfLoaded];
    [v10 setNeedsLayout];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100420E58()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = sub_1003C6E64();
    swift_unknownObjectRelease();
    return v1 & 1;
  }

  return result;
}

uint64_t sub_100420EBC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1003C78EC(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100420F28(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1003C7C3C(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100420F80(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1003C7DB8(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100420FDC(uint64_t a1, char a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = sub_1003C8DF4(a1, a2 & 1);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = type metadata accessor for PromiseError();
    sub_100421854(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PromiseError.cancelled(_:), v6);
    sub_100058000(&unk_10078A2F0, &unk_100631BC0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_1004210F8(uint64_t a1, uint64_t a2, char a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003C8908(a1, a2, a3 & 1);
    v7 = v6;
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {
    v9 = type metadata accessor for PromiseError();
    sub_100421854(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for PromiseError.cancelled(_:), v9);
    sub_100058000(&qword_1007845B0, &qword_10063D2C0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10042122C(uint64_t a1, int a2)
{
  v23 = a2;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:))
  {
LABEL_2:
    (*(v13 + 8))(v15, v12);
LABEL_3:
    v17 = 0;
    return v17 & 1;
  }

  if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 32))(v11, v15, v8);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    (*(v24 + 8))(v7, v5);
    v19 = v25;
    v18 = v26;
    v20 = (*(v25 + 88))(v4, v26);
    if (v20 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
    {
      (*(v9 + 8))(v11, v8);
      (*(v19 + 8))(v4, v18);
      v17 = v23 ^ 1;
      return v17 & 1;
    }

    if (v20 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:) || v20 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
    {
      (*(v9 + 8))(v11, v8);
      (*(v19 + 8))(v4, v18);
      goto LABEL_3;
    }
  }

  else
  {
    if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:))
    {
      (*(v13 + 8))(v15, v12);
      v17 = 1;
      return v17 & 1;
    }

    if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
    {
      goto LABEL_2;
    }

    v17 = 0;
    if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
    {
      return v17 & 1;
    }

    v20 = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  if (v20 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_3;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100421734(void (*a1)(id))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_1003C1420();
    v3 = *&v2[qword_10078A540];
    if (v3)
    {
      v4 = v2;
      v5 = v3;

      a1(v5);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1004217E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100775700, &unk_10062E390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100421854(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004218BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return Set.contains(_:)();
}

uint64_t sub_100421968(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return Set.init()();
}

uint64_t sub_1004219EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  return Set.removeAll(where:)();
}

uint64_t sub_100421AB4(char a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v18 - v15;
  if (a1)
  {
    (*(v9 + 16))(v12, v18, AssociatedTypeWitness, v14);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.insert(_:)();
    return (*(v9 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.remove(_:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100421D40()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100782D00);
  v1 = sub_100003E30(v0, qword_100782D00);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100421E08(void *a1, uint64_t a2)
{
  [a1 setContactStore:a2];
  [a1 setAllowsEditing:0];
  [a1 setAllowsActions:0];
  [a1 setDisplayMode:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong pushViewController:a1 animated:1];
  }
}

void sub_100421EE8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(REMICloudIsOffDataView) initWithStore:a1];
  v8 = 0;
  v4 = [v3 fetchICloudIsOffCloudConfigurationPropertiesWithError:&v8];
  if (v4)
  {
    v5 = v4;
    v6 = v8;

    *a2 = v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100421FD4()
{
  if (!*(v0 + 72))
  {
    *(v0 + 72) = (*(v0 + 80))();

    swift_unknownObjectRelease();
  }
}

BOOL sub_1004221D8()
{
  v1 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_100421FD4();
  v11 = v0[9];
  if (v11)
  {
    swift_unknownObjectRetain();
    Date.init()();
    swift_beginAccess();
    sub_10000C36C(v0 + 4, v0[7]);
    dispatch thunk of TTRICloudIsOffUserDefaults.lastICloudIsOffPromptDate.getter();
    swift_endAccess();
    v12 = *(v5 + 48);
    if (v12(v3, 1, v4) == 1)
    {
      static Date.distantPast.getter();
      if (v12(v3, 1, v4) != 1)
      {
        sub_1004226FC(v3);
      }
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
    }

    Date.timeIntervalSince(_:)();
    v19 = v18;
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v10, v4);
    [v11 iCloudIsOffTimeIntervalSinceLastPrompt];
    v22 = v21;
    swift_unknownObjectRelease();
    return v19 < v22;
  }

  else
  {
    if (qword_1007672D0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100782DB8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "TTRICloudIsOffProvider: Failed to fetch REMICloudIsOffCloudConfiguration properties", v16, 2u);
    }

    return 0;
  }
}

uint64_t sub_1004224FC()
{
  sub_100004758((v0 + 32));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_10042254C()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_appleAccounts];

    if (!v2)
    {
      return 0;
    }

    sub_1004226B0();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
LABEL_19:
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = ACAccountDataclassReminders;
    do
    {
      v7 = v4 != v5;
      if (v4 == v5)
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = [v8 isEnabledForDataclass:v6];

      ++v5;
    }

    while (!v10);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004226B0()
{
  result = qword_10076DB48;
  if (!qword_10076DB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076DB48);
  }

  return result;
}

uint64_t sub_1004226FC(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007757F0, &unk_10062DE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100422764(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_100458BB0, v8);
}

uint64_t *sub_100422838(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListListType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v26 - v11;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  v13 = *(a1 + 16);
  *(v3 + 32) = a1;
  swift_beginAccess();
  v14 = *(v13 + 48);
  *(v3 + 56) = *(v13 + 40);
  *(v3 + 64) = v14;
  v15 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  (*(v7 + 16))(v12, v13 + v15, v6);
  (*(v7 + 104))(v9, enum case for TTRRemindersListListType.groceries(_:), v6);
  sub_10001F128(&qword_10077A0D0, &type metadata accessor for TTRRemindersListListType, &protocol conformance descriptor for TTRRemindersListListType);

  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v16(v12, v6);
  *(v3 + 72) = v26[1] == v27;
  [TTRListDetailCreationChangeItem.storage.getter() copyWithZone:0];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for TTRListDetailCreationChangeItem.Storage(0);
  if (swift_dynamicCast())
  {
    v17 = v27;
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100770AC8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_beginAccess();
      v23 = *(v13 + 32);

      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to set initialListStorage by copying REMListStorage {listID: %@}", v21, 0xCu);
      sub_1000079B4(v22, &unk_10076DF80, &qword_10062F730);
    }

    else
    {
    }

    v17 = 0;
  }

  *(v3 + 48) = v17;
  v24 = NSUndoManager.observeChanges<A>(target:handler:)();

  *(v3 + 40) = v24;

  return v3;
}

uint64_t *sub_100422C90(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  v6 = TTRListEditor.changeItem.getter();
  *(v3 + 32) = a1;
  v7 = [v6 name];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v3 + 56) = v8;
  *(v3 + 64) = v10;
  REMListChangeItem.ttrGroceryContext.getter();
  if (v25)
  {
    sub_10000C36C(v24, v25);
    ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758(v24);
  }

  else
  {
    sub_1000079B4(v24, &qword_1007757E0, &qword_100636780);
    ShouldCategorizeGrocery = 0;
  }

  *(v3 + 72) = ShouldCategorizeGrocery & 1;
  v12 = [v6 storage];
  [v12 copyWithZone:0];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003540(0, &qword_100770BF0, REMListStorage_ptr);
  if (swift_dynamicCast())
  {
    v13 = v23;
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100770AC8);
    v15 = v6;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = [v15 objectID];

      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to set initialListStorage by copying REMListStorage {listID: %@}", v18, 0xCu);
      sub_1000079B4(v19, &unk_10076DF80, &qword_10062F730);
    }

    else
    {
    }

    v13 = 0;
  }

  *(v3 + 48) = v13;
  v21 = NSUndoManager.observeChanges<A>(target:handler:)();

  *(v3 + 40) = v21;

  return v3;
}

uint64_t *sub_100422FC0(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  v6 = TTRSmartListEditor.changeItem.getter();
  *(v3 + 32) = a1;
  v7 = [v6 customContext];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 name];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  *(v3 + 56) = v10;
  *(v3 + 64) = v12;
  *(v3 + 72) = 0;
  v13 = [v6 storage];
  [v13 copyWithZone:0];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003540(0, &qword_100770CD0, REMSmartListStorage_ptr);
  if (swift_dynamicCast())
  {
    v14 = v24;
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100770AC8);
    v16 = v6;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v16 objectID];

      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to set initialListStorage by copying REMListStorage {listID: %@}", v19, 0xCu);
      sub_1000079B4(v20, &unk_10076DF80, &qword_10062F730);
    }

    else
    {
    }

    v14 = 0;
  }

  *(v3 + 48) = v14;
  v22 = NSUndoManager.observeChanges<A>(target:handler:)();

  *(v3 + 40) = v22;

  return v3;
}

uint64_t *sub_1004232BC(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  v6 = TTRTemplateEditor.changeItem.getter();
  *(v3 + 32) = a1;
  v7 = [v6 name];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v3 + 56) = v8;
  *(v3 + 64) = v10;
  *(v3 + 72) = 0;
  v11 = [v6 storage];
  [v11 copyWithZone:0];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003540(0, &qword_100770DB0, REMTemplateStorage_ptr);
  if (swift_dynamicCast())
  {
    v12 = v22;
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100770AC8);
    v14 = v6;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = [v14 objectID];

      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to set initialListStorage by copying REMListStorage {listID: %@}", v17, 0xCu);
      sub_1000079B4(v18, &unk_10076DF80, &qword_10062F730);
    }

    else
    {
    }

    v12 = 0;
  }

  *(v3 + 48) = v12;
  v20 = NSUndoManager.observeChanges<A>(target:handler:)();

  *(v3 + 40) = v20;

  return v3;
}

id sub_100423588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100313CFC;
  v17 = &unk_1007283D8;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10044EA48;
  v17 = &unk_1007283B0;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  sub_1000301AC(a4, a5);
  sub_1000301AC(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

uint64_t sub_100423728(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1004237C4, v5, v4);
}

uint64_t sub_1004237C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1004238C8;
    v3 = v0[2];
    v4 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for TTRIAccountsListsPresenter.Action);
  }

  else
  {

    v5 = v0[1];

    return v5(3);
  }
}

uint64_t sub_1004238C8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  *(v1 + 81) = *(v1 + 80);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_10045A20C, v4, v3);
}

uint64_t sub_100423A0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100423AA8, v5, v4);
}

uint64_t sub_100423AA8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1001DFE2C;
    v3 = v0[2];
    v4 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for TTRIAccountsListsPresenter.RemoveSectionsFromListConfirmationAlertResponse);
  }

  else
  {

    v5 = v0[1];

    return v5(3);
  }
}

void sub_100423BDC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection.PinnedListSelection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == enum case for TTRAccountsListsViewModel.FallbackSelection.treeViewItem(_:))
  {
    (*(v14 + 96))(v17, v13);
    (*(v10 + 32))(v12, v17, v9);
    sub_100058000(&unk_10076BAA0, &unk_10062FD90);
    v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10062D400;
    (*(v10 + 16))(v20 + v19, v12, v9);
    (*(v14 + 8))(a1, v13);
    (*(v10 + 8))(v12, v9);
    *v36 = v20;
    type metadata accessor for TTRIAccountsListsSelection(0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return;
  }

  v21 = v36;
  if (v18 == enum case for TTRAccountsListsViewModel.FallbackSelection.pinnedList(_:))
  {
    (*(v14 + 96))(v17, v13);
    (*(v4 + 32))(v8, v17, v3);
    v22 = v35;
    (*(v4 + 16))(v35, v8, v3);
    v23 = (*(v4 + 88))(v22, v3);
    if (v23 == enum case for TTRAccountsListsViewModel.FallbackSelection.PinnedListSelection.predefinedSmartList(_:))
    {
      (*(v14 + 8))(a1, v13);
      (*(v4 + 8))(v8, v3);
      (*(v4 + 96))(v22, v3);
      v24 = type metadata accessor for TTRListType.PredefinedSmartListType();
      v25 = &enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
LABEL_10:
      (*(*(v24 - 8) + 32))(v21, v22);
      v27 = *v25;
      v28 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v28 - 8) + 104))(v21, v27, v28);
      type metadata accessor for TTRIAccountsListsSelection(0);
      goto LABEL_11;
    }

    if (v23 == enum case for TTRAccountsListsViewModel.FallbackSelection.PinnedListSelection.pinnedUserCreatedList(_:))
    {
      (*(v14 + 8))(a1, v13);
      (*(v4 + 8))(v8, v3);
      (*(v4 + 96))(v22, v3);
      v24 = type metadata accessor for TTRAccountsListsViewModel.List();
      v25 = &enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
      goto LABEL_10;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_100782E90);
    v30 = sub_100008E04(_swiftEmptyArrayStorage);
    v31 = sub_100008E04(_swiftEmptyArrayStorage);
    v32 = "Unknown pinned list type";
    v33 = 24;
  }

  else
  {
    if (v18 == enum case for TTRAccountsListsViewModel.FallbackSelection.hashtags(_:))
    {
      (*(v14 + 8))(a1, v13);
      (*(v14 + 96))(v17, v13);
      v26 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v26 - 8) + 32))(v21, v17, v26);
      type metadata accessor for TTRIAccountsListsSelection(0);
      goto LABEL_11;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100003E30(v29, qword_100782E90);
    v30 = sub_100008E04(_swiftEmptyArrayStorage);
    v31 = sub_100008E04(_swiftEmptyArrayStorage);
    v32 = "Unknown fallback selection";
    v33 = 26;
  }

  sub_1003F9818(v32, v33, 2uLL, v30, v31);
  __break(1u);
}

void sub_100424288(uint64_t a1)
{
  v2 = v1;
  v49 = type metadata accessor for TTRAccountsListsViewModel.List();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v49);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = v45 - v8;
  __chkstk_darwin(v9);
  v48 = (v45 - v10);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v13 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v13;
  v14 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("respond to share invitation {list.objectID: %@}", 47, 2, v14);

  v15 = TTRAccountsListsViewModel.remList(for:)();

  if (!v15)
  {
    goto LABEL_9;
  }

  if ([v15 sharingStatus] != 3)
  {

LABEL_9:
    v23 = v49;
    (*(v4 + 16))(v6, a1, v49);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v4 + 8))(v6, v23);
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to get placeholder list for share invitation for {list.objectID: %@}", v26, 0xCu);
      sub_1000079B4(v27, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      (*(v4 + 8))(v6, v23);
    }

    return;
  }

  v16 = [v15 account];
  if ([v16 type] == 3)
  {
    sub_10000B0D8(v2 + 112, &v50);
    v45[1] = sub_10000C36C(&v50, v52);
    v17 = TTRAccountsListsViewModel.List.name.getter();
    v46 = v18;
    v47 = v17;
    v19 = [v15 sharedOwnerName];
    if (v19)
    {
      v20 = v19;
      v45[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v45[0] = 0;
      v22 = 0;
    }

    v39 = swift_allocObject();
    swift_weakInit();
    v41 = v48;
    v40 = v49;
    (*(v4 + 16))(v48, a1, v49);
    v42 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v39;
    *(v43 + 24) = v15;
    (*(v4 + 32))(v43 + v42, v41, v40);

    v44 = v15;
    sub_1002A5474(v47, v46, v45[0], v22, sub_100452320, v43);

    sub_100004758(&v50);
  }

  else
  {
    v29 = v47;
    v30 = v49;
    (*(v4 + 16))(v47, a1, v49);
    v31 = v16;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v34 = 138412802;
      v36 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v4 + 8))(v29, v30);
      *(v34 + 4) = v36;
      *v35 = v36;
      *(v34 + 12) = 2112;
      v37 = [v31 objectID];
      *(v34 + 14) = v37;
      v35[1] = v37;
      *(v34 + 22) = 2080;
      v50 = 0;
      v51 = 0xE000000000000000;
      v53 = [v31 type];
      type metadata accessor for REMAccountType(0);
      _print_unlocked<A, B>(_:_:)();
      v38 = sub_100004060(v50, v51, &v54);

      *(v34 + 24) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Responding to share invitation is not supported for the account {list.objectID: %@, account.objectID: %@, account.type: %s}", v34, 0x20u);
      sub_100058000(&unk_10076DF80, &qword_10062F730);
      swift_arrayDestroy();

      sub_100004758(v48);
    }

    else
    {

      (*(v4 + 8))(v29, v30);
    }
  }
}

void sub_1004249C8(uint64_t a1, int a2)
{
  v25 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.List();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TTRListType();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v11 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v11;
  v12 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Show reminders for list {list.objectID: %@}", 43, 2, v12);

  v13 = TTRAccountsListsViewModel.remList(for:)();

  if (v13)
  {
    swift_getObjectType();
    *v8 = TTRAccountsListsViewModel.List.objectID.getter();
    v8[8] = 0;
    v14 = v26;
    (*(v6 + 104))(v8, enum case for TTRListType.list(_:), v26);
    dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
    (*(v6 + 8))(v8, v14);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_100451390(v13, v25 & 1, Strong);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v17 = v23;
    v16 = v24;
    (*(v23 + 16))(v5, a1, v24);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v17 + 8))(v5, v16);
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to find remList in viewModel -- failed to show reminders {list.objectID: %@}", v20, 0xCu);
      sub_1000079B4(v21, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      (*(v17 + 8))(v5, v16);
    }
  }
}

void sub_100424E14(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRListType();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v10 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v10;
  v11 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Show reminders for custom smart list {smartList.objectID: %@}", 61, 2, v11);

  v12 = TTRAccountsListsViewModel.remSmartList(for:)();

  if (v12)
  {
    swift_getObjectType();
    *v7 = TTRAccountsListsViewModel.List.objectID.getter();
    v13 = v25;
    (*(v5 + 104))(v7, enum case for TTRListType.customSmartList(_:), v25);
    dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
    (*(v5 + 8))(v7, v13);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      sub_10000C36C((Strong + 48), *(Strong + 72));
      sub_100393C18(v12, v15, &off_100721100, v26);

      sub_100004758(v26);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v17 = v23;
    v16 = v24;
    (*(v23 + 16))(v4, a1, v24);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v17 + 8))(v4, v16);
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to find remSmartList in viewModel -- failed to show reminders {smartList.objectID: %@}", v20, 0xCu);
      sub_1000079B4(v21, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      (*(v17 + 8))(v4, v16);
    }
  }
}

void *sub_100425274(uint64_t a1, int a2)
{
  v17 = a2;
  v3 = type metadata accessor for TTRListType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v9 = TTRListType.PredefinedSmartListType.rawValue.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("select pre-defined smart list {type: %@}", 40, 2, v11);

  swift_getObjectType();
  v12 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v12 - 8) + 16))(v6, a1, v12);
  (*(v4 + 104))(v6, enum case for TTRListType.predefinedSmartList(_:), v3);
  dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
  (*(v4 + 8))(v6, v3);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
    sub_1004516B4(a1, v15, v17 & 1, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100425510(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRListType();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v10 = TTRAccountsListsViewModel.Group.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v10;
  v11 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Show reminders for group {group.objectID: %@}", 45, 2, v11);

  v12 = TTRAccountsListsViewModel.remList(for:)();

  if (v12)
  {
    swift_getObjectType();
    *v7 = TTRAccountsListsViewModel.Group.objectID.getter();
    v7[8] = 1;
    v13 = v25;
    (*(v5 + 104))(v7, enum case for TTRListType.list(_:), v25);
    dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
    (*(v5 + 8))(v7, v13);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_100451390(v12, 0, Strong);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v16 = v23;
    v15 = v24;
    (*(v23 + 16))(v4, a1, v24);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = TTRAccountsListsViewModel.Group.objectID.getter();
      (*(v16 + 8))(v4, v15);
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to find remList for group in viewModel -- failed to show reminders {group.objectID: %@}", v19, 0xCu);
      sub_1000079B4(v20, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      (*(v16 + 8))(v4, v15);
    }
  }
}

void *sub_100425958(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getObjectType();
    v8 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
    v9 = sub_10000C36C(v7 + 6, v7[9]);
    sub_10044F500(a1, a2, a3 & 1, v8, v7, *v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100425A10()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplatesListStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = TTRAccountsListsViewModel.remAccountForTemplates.getter();

  if (v12)
  {
    sub_10000C36C((v0 + 112), *(v0 + 136));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      (*(v3 + 104))(v5, enum case for TTRTemplatesListStyle.browser(_:), v2);
      v8 = sub_1004D06B4(v5, v12, v1, &off_100727CA8);
      v9 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v8];
      [v9 setModalPresentationStyle:2];

      swift_unknownObjectRelease();
      (*(v3 + 8))(v5, v2);
      [v7 presentViewController:v9 animated:1 completion:0];
    }

    else
    {
      v10 = v12;
    }
  }
}

void sub_100425C0C(uint64_t a1)
{
  v2 = *v1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = TTRAccountsListsViewModel.remAccount(for:)();

  if (v7)
  {
    v26 = v7;
    type metadata accessor for TTRUserDefaults();
    v8 = static TTRUserDefaults.appUserDefaults.getter();
    v25[1] = v2;
    v9 = v8;
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v10 = sub_100058000(&qword_1007757E8, &unk_100635E60);
    v11 = &v6[*(v10 + 48)];
    v12 = &v6[*(v10 + 80)];
    v13 = enum case for REMUserOperation.openRecentlyDeletedList(_:);
    v14 = type metadata accessor for REMUserOperation();
    (*(*(v14 - 8) + 104))(v6, v13, v14);
    *v11 = TTRUserDefaults.activitySessionId.getter();
    v11[1] = v15;
    v27 = v9;
    TTRUserDefaults.activitySessionBeginTime.getter();
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v16 = _typeName(_:qualified:)();
    v18 = v17;

    v28 = v16;
    v29 = v18;
    v19._countAndFlagsBits = 0x756F636341202D20;
    v19._object = 0xEE007473694C746ELL;
    String.append(_:)(v19);
    v20 = v29;
    *v12 = v28;
    *(v12 + 1) = v20;
    (*(v4 + 104))(v6, enum case for REMAnalyticsEvent.userOperation(_:), v3);
    REMAnalyticsManager.post(event:)();

    (*(v4 + 8))(v6, v3);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      swift_getObjectType();
      v23 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
      v24 = v26;
      sub_100451434(v26, v23, v22);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100425F04(uint64_t a1)
{
  v1 = sub_100058000(&qword_100783140, &qword_10063F158);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for REMAccountsListDataView.Model();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
    swift_beginAccess();
    sub_10000794C(v9 + v10, v3, &qword_100783140, &qword_10063F158);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_1000079B4(v3, &qword_100783140, &qword_10063F158);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_10001AFE0(v7, 0, 2, 1);

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

id sub_100426100(void *a1, char a2)
{
  v4 = type metadata accessor for TTRITipKitSignal();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    return sub_1004548C8();
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_10000C36C((Strong + 48), *(Strong + 72));
      sub_100450A40(1, a1, v10, *v11);
      swift_unknownObjectRelease();
    }

    (*(v5 + 104))(v7, enum case for TTRITipKitSignal.tappedUpgradeButton(_:), v4);
    TTRITipKitSignal.donate(signalContext:)(0);
    return (*(v5 + 8))(v7, v4);
  }
}

void *sub_100426264(uint64_t a1)
{
  v2 = type metadata accessor for TTRListType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  (*(v3 + 104))(v5, enum case for TTRListType.tagged(_:), v2);
  dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
  (*(v3 + 8))(v5, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
    v10 = sub_10000C36C(v8 + 6, v8[9]);
    sub_10044F0EC(a1, v9, v8, *v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100426408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&qword_10077FDA8, &qword_10063F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = type metadata accessor for TTRRemindersListListType();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_100426520(a1, 0, 0, v6);

    return sub_1000079B4(v6, &qword_10077FDA8, &qword_10063F1B0);
  }

  return result;
}

void sub_100426520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v45 = a4;
  v42 = a2;
  v41 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10077FDA8, &qword_10063F1B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for TTRRemindersListListType();
  v43 = *(v12 - 8);
  __chkstk_darwin(v12);
  v39 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v16 = TTRAccountsListsViewModel.Account.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v16;
  v17 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Add New List on account {account.objectID: %@}", 46, 2, v17);

  v18 = TTRAccountsListsViewModel.remAccount(for:)();

  if (v18)
  {
    v19 = [v18 store];
    v20 = [objc_allocWithZone(REMSaveRequest) initWithStore:v19];

    type metadata accessor for TTRListDetailCreationChangeItem(0);
    swift_allocObject();
    v21 = v20;
    v22 = v18;
    v23 = TTRListDetailCreationChangeItem.init(saveRequest:account:)(v21, v22);
    v24 = v44;
    if (v44)
    {
      swift_beginAccess();
      *(v23 + 5) = v42;
      *(v23 + 6) = v24;
    }

    sub_10000794C(v45, v11, &qword_10077FDA8, &qword_10063F1B0);
    v25 = v43;
    if ((*(v43 + 48))(v11, 1, v12) == 1)
    {
      sub_1000079B4(v11, &qword_10077FDA8, &qword_10063F1B0);
    }

    else
    {
      v34 = v39;
      (*(v25 + 32))(v39, v11, v12);
      v35 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
      swift_beginAccess();
      (*(v25 + 40))(&v23[v35], v34, v12);
      swift_endAccess();
    }

    sub_10000C36C((v5 + 112), *(v5 + 136));
    v36 = sub_10045015C(v23, v5, v5, &off_100727CA8);
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v38 = Strong;
      [Strong presentViewController:v36 animated:1 completion:0];
    }
  }

  else
  {
    v26 = v40;
    v27 = a1;
    v28 = v41;
    (*(v40 + 16))(v8, v27, v41);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = TTRAccountsListsViewModel.Account.objectID.getter();
      (*(v26 + 8))(v8, v28);
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to find model for account -- Failed to add new list {account.objectID: %@}", v31, 0xCu);
      sub_1000079B4(v32, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      (*(v26 + 8))(v8, v28);
    }
  }
}

double sub_100426B20(void *a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100426B94(a1, v4);
  }

  return result;
}

void sub_100426B94(void *a1, void *a2)
{
  v3 = v2;
  v100 = a2;
  v97 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v96 = *(v97 - 1);
  __chkstk_darwin(v97);
  v95 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v102 = *(v6 - 8);
  v103 = v6;
  __chkstk_darwin(v6);
  v105 = (v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v104 = v81 - v9;
  v10 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100058000(&qword_100783180, &qword_10063F1C8);
  v13 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = v81 - v14;
  if (qword_1007672D8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    v16 = sub_100003E30(v15, qword_100782E90);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v18 = TTRAccountsListsViewModel.Account.objectID.getter();
    *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    *(inited + 48) = v18;
    v19 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
    sub_10000FD44("Add New Group on account {account.objectID: %@}", 47, 2, v19);

    v20 = a1;
    a1 = TTRAccountsListsViewModel.remAccount(for:)();

    if (!a1)
    {
      v48 = v96;
      v49 = v95;
      v50 = v97;
      (*(v96 + 16))(v95, v20, v97);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        v55 = TTRAccountsListsViewModel.Account.objectID.getter();
        (*(v48 + 8))(v49, v50);
        *(v53 + 4) = v55;
        *v54 = v55;
        _os_log_impl(&_mh_execute_header, v51, v52, "Failed to find model account - Failed to add new group {account.objectID: %@}", v53, 0xCu);
        sub_1000079B4(v54, &unk_10076DF80, &qword_10062F730);
      }

      else
      {

        (*(v48 + 8))(v49, v50);
      }

      return;
    }

    v21 = v3;
    v97 = v20;
    v81[1] = v16;
    swift_getObjectType();
    v22 = *(v13 + 104);
    v23 = v98;
    v86 = v21;
    v24 = v99;
    v22(v98, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v99);
    v25 = dispatch thunk of TTRAccountsListsInteractorType.createNewGroup(account:groupContext:lists:position:)();
    v26 = *(v13 + 8);
    v13 += 8;
    v26(v23, v24);
    v27 = [v25 sublistContext];
    if (!v27)
    {
      __break(1u);
LABEL_23:
      v79 = sub_100008E04(_swiftEmptyArrayStorage);
      v80 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown list type", 17, 2uLL, v79, v80);
      __break(1u);
      return;
    }

    v83 = v27;
    v84 = v25;
    v100 = [v25 saveRequest];
    v85 = a1;
    v82 = [v100 updateAccount:a1];
    v28 = v86;

    v29 = TTRAccountsListsViewModel.remListsOrCustomSmartLists(in:)();

    v30 = *(v29 + 16);
    if (!v30)
    {
      break;
    }

    v107[0] = _swiftEmptyArrayStorage;
    sub_1004A1F60(0, v30, 0);
    v3 = 0;
    v31 = v107[0];
    v98 = (v29 + ((*(v102 + 80) + 32) & ~*(v102 + 80)));
    v97 = (v102 + 16);
    v95 = (v102 + 88);
    v94 = enum case for TTRListOrCustomSmartList.list(_:);
    v88 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
    v93 = (v102 + 96);
    v92 = (v102 + 8);
    v87 = enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:);
    v91 = (v101 + 104);
    v90 = enum case for TTRListOrCustomSmartListChangeItem.list(_:);
    v89 = v101 + 32;
    v99 = v29;
    v96 = v30;
    while (v3 < *(v29 + 16))
    {
      v32 = v12;
      v13 = v10;
      v33 = v102;
      v34 = v103;
      v35 = *(v102 + 16);
      v36 = v104;
      a1 = v97;
      v35(v104, &v98[*(v102 + 72) * v3], v103);
      v37 = v105;
      v35(v105, v36, v34);
      v38 = (*(v33 + 88))(v37, v34);
      v39 = &selRef_updateList_;
      v40 = v90;
      if (v38 != v94)
      {
        v39 = &selRef_updateSmartList_;
        v40 = v87;
        if (v38 != v88)
        {
          goto LABEL_23;
        }
      }

      v41 = v105;
      v42 = v103;
      (*v93)(v105, v103);
      v43 = *v41;
      v44 = [v100 *v39];

      (*v92)(v104, v42);
      v12 = v32;
      *v32 = v44;
      v10 = v13;
      (*v91)(v32, v40, v13);
      v107[0] = v31;
      v46 = v31[2];
      v45 = v31[3];
      if (v46 >= v45 >> 1)
      {
        sub_1004A1F60((v45 > 1), v46 + 1, 1);
        v31 = v107[0];
      }

      ++v3;
      v31[2] = v46 + 1;
      (*(v101 + 32))(v31 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v46, v32, v13);
      v29 = v99;
      if (v96 == v3)
      {

        v47 = v86;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v47 = v28;

  v31 = _swiftEmptyArrayStorage;
LABEL_16:
  v105 = *sub_10000C36C((v47 + 112), *(v47 + 136));
  v56 = objc_allocWithZone(TTRUndoManager);
  v57 = String._bridgeToObjectiveC()();
  v58 = [v56 initWithDebugIdentifier:v57];

  type metadata accessor for TTRIGroupDetailInteractor();
  v59 = swift_allocObject();
  v59[3] = 0;
  swift_unknownObjectWeakInit();
  v59[7] = 0;
  v60 = v82;
  v59[4] = v82;
  type metadata accessor for TTRListEditor();
  sub_10001F128(&qword_10077C780, &type metadata accessor for TTRListEditor, &protocol conformance descriptor for TTRListEditor);
  v61 = v58;
  v104 = v60;
  v62 = v84;
  TTRUndoableEditing.init(changeItem:undoManager:)();
  v59[8] = v107[0];
  v63 = v83;
  v59[5] = v83;
  v59[6] = v31;
  v64 = v63;
  v59[7] = NSUndoManager.observeChanges<A>(target:handler:)();

  v65 = type metadata accessor for TTRIGroupDetailRouter();
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v109 = v65;
  v110 = &off_100729B00;
  v107[0] = v66;
  type metadata accessor for TTRIGroupDetailPresenter();
  v67 = swift_allocObject();
  v68 = sub_10000AE84(v107, v65);
  v69 = __chkstk_darwin(v68);
  v71 = (v81 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71, v69);
  v73 = *v71;
  *(v67 + 88) = v65;
  *(v67 + 96) = &off_100729B00;
  *(v67 + 64) = v73;
  *(v67 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v67 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v67 + 48) = v59;
  *(v67 + 56) = &off_10071E7D8;
  *(v67 + 112) = v61;
  *(v67 + 104) = 0;
  v74 = v61;

  sub_100004758(v107);
  type metadata accessor for TTRIGroupDetailViewController();
  v107[0] = v67;
  v107[1] = &off_100718120;
  v108 = 0;
  v109 = v74;
  sub_10001F128(&qword_10078C0F0, type metadata accessor for TTRIGroupDetailViewController, &unk_100645950);
  static TTRTypedController<>.instantiateFromStoryboard(with:)();

  v75 = v106;
  v76 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v106];

  v59[3] = &off_100718110;
  swift_unknownObjectWeakAssign();

  *(v67 + 24) = &off_10072E100;
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  *(v67 + 40) = &off_100727C98;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v78 = Strong;
    [Strong presentViewController:v76 animated:1 completion:0];
  }
}

void sub_10042797C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v5 - 8);
  v29 = v26 - v6;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = a1;
    v16 = Strong;

    v28 = TTRTimeZoneOverrideMenuPresenterCapability.recentTimeZoneOverrides(prefix:)();

    static TimeZone.ttr_default.getter();
    v17 = v13;
    v27 = v13;
    v18 = *(v16 + 192);
    v19 = swift_allocObject();
    *(v19 + 2) = v16;
    *(v19 + 3) = v15;
    v26[1] = v16;
    *(v19 + 4) = a2;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
    (*(v8 + 16))(v10, v17, v7);
    type metadata accessor for MainActor();

    v21 = static MainActor.shared.getter();
    v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 2) = v21;
    *(v24 + 3) = &protocol witness table for MainActor;
    *(v24 + 4) = v28;
    (*(v8 + 32))(&v24[v22], v10, v7);
    *&v24[v23] = v18;
    v25 = &v24[(v23 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v25 = sub_100452438;
    v25[1] = v19;
    sub_10009E31C(0, 0, v29, &unk_10062E3E0, v24);

    (*(v8 + 8))(v27, v7);
  }

  else
  {
    a1(_swiftEmptyArrayStorage);
  }
}

double sub_100427CCC(uint64_t a1, uint64_t a2, void (*a3)(void *))
{

  sub_1000815D0(v4);
  sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  static TTRLocalizableStrings.TimeZone.other.getter();

  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  a3(_swiftEmptyArrayStorage);

  return result;
}

void *sub_100427E1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C((a2 + 112), *(a2 + 136));
  sub_10001F128(&qword_100783138, type metadata accessor for TTRIAccountsListsPresenter, &unk_10063EF68);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    static TimeZone.ttr_default.getter();
    Date.init()();
    v13 = static TTRITimeZonePickerAssembly.createViewControllerForModalPresentation(delegate:currentTimeZone:date:)();
    (*(v4 + 8))(v6, v3);
    [v12 presentViewController:v13 animated:1 completion:0];

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

Class sub_100428028(void *a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v5 = type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v49 - v10;
  v56 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsTemplates.getter();
  v55 = sub_10001F128(&unk_10078D420, &type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities, &protocol conformance descriptor for TTRAccountsListsViewModel.AccountsCapabilities);
  v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  if ((v12 & 1) == 0)
  {
    v14 = [objc_opt_self() daemonUserDefaults];
    v15 = [v14 timeZoneOverrideEnabled];

    if (!v15)
    {
      return 0;
    }
  }

  v52 = v13;
  v53 = v3;
  v58 = _swiftEmptyArrayStorage;
  v16 = String._bridgeToObjectiveC()();
  v51 = objc_opt_self();
  v17 = [v51 _systemImageNamed:v16];

  v18 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v19._countAndFlagsBits = 0x73694C2074696445;
  v50 = "v16@?0@?<v@?@NSArray>8";
  v20._object = 0x8000000100671220;
  v19._object = 0xEA00000000007374;
  v20._countAndFlagsBits = 0xD00000000000001ELL;
  TTRLocalizedString(_:comment:)(v19, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v54;
  *(v21 + 24) = a2;
  v54 = v17;

  v49[1] = v18;
  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v23 = v58;

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsTemplates.getter();
  v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v25 = v52;
  v52(v8, v5);
  v25(v11, v5);
  if (v24)
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = [v51 _systemImageNamed:v26];

    v28._countAndFlagsBits = 0x6574616C706D6554;
    v28._object = 0xE900000000000073;
    v29._object = (v50 | 0x8000000000000000);
    v29._countAndFlagsBits = 0xD00000000000001ELL;
    TTRLocalizedString(_:comment:)(v28, v29);
    swift_allocObject();
    swift_weakInit();
    v30 = v27;
    v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v23 = v58;
  }

  v32 = [objc_opt_self() daemonUserDefaults];
  v33 = [v32 timeZoneOverrideEnabled];

  if (v33 && (static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000FD678;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10010C96C;
    aBlock[3] = &unk_100728108;
    v36 = _Block_copy(aBlock);

    v37 = [v34 elementWithUncachedProvider:v36];
    _Block_release(v36);
    sub_100003540(0, &unk_10076B890, UIMenu_ptr);
    v38._countAndFlagsBits = 0x6E6F5A20656D6954;
    v39._object = (v50 | 0x8000000000000000);
    v38._object = 0xE900000000000065;
    v39._countAndFlagsBits = 0xD00000000000001ELL;
    v40 = TTRLocalizedString(_:comment:)(v38, v39);
    v41 = String._bridgeToObjectiveC()();
    v42 = [v51 _systemImageNamed:v41];

    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10062D420;
    *(v43 + 32) = v37;
    v59.value.super.isa = v42;
    v59.is_nil = 0;
    v44 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v40, 0, v59, 0, 0xFFFFFFFFFFFFFFFFLL, v43, v48).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v23 = v58;
  }

  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v60.value.super.isa = 0;
  v60.is_nil = 0;
  v46.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v45, 0, v60, 0, 0xFFFFFFFFFFFFFFFFLL, v23, v48).super.super.isa;

  return v46.super.super.isa;
}

double sub_100428808(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100425A10();
  }

  return result;
}

uint64_t sub_100428860@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{

  v5 = TTRAccountsListsViewModel.remAccount(for:)();

  if (v5 && (v6 = [v5 groupContext], v5, v6))
  {
    v7 = sub_100058000(&qword_100783290, &qword_10063F418);
    v8 = *(v7 + 48);
    v9 = type metadata accessor for TTRAccountsListsViewModel.Account();
    (*(*(v9 - 8) + 16))(a3, a1, v9);
    *(a3 + v8) = v6;
    return (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
  }

  else
  {
    v11 = sub_100058000(&qword_100783290, &qword_10063F418);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }
}

void sub_1004289C4(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v4 = &v45[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v45[-v6];
  v8 = type metadata accessor for TTRAccountsListsViewModel.List();
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  __chkstk_darwin(v8);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v61 = &v45[-v13];
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v45[-v19];
  v21 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v21);
  v23 = &v45[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100459530(a1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_10045164C(v23, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  if (!EnumCaseMultiPayload)
  {
    v25 = *v23;
    v69 = *(*v23 + 16);
    if (!v69)
    {
LABEL_32:

      return;
    }

    v26 = 0;
    LODWORD(v68) = enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:);
    v67 = v15 + 88;
    v64 = enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:);
    v65 = enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:);
    v59 = enum case for TTRAccountsListsViewModel.Item.account(_:);
    v60 = enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:);
    v57 = enum case for TTRAccountsListsViewModel.Item.customSmartList(_:);
    v58 = enum case for TTRAccountsListsViewModel.Item.list(_:);
    v56 = enum case for TTRAccountsListsViewModel.Item.group(_:);
    v54 = enum case for TTRAccountsListsViewModel.Item.permissionSection(_:);
    v52 = enum case for TTRAccountsListsViewModel.Item.tipSection(_:);
    v53 = enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:);
    v50 = enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:);
    v51 = enum case for TTRAccountsListsViewModel.Item.tip(_:);
    v48 = enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:);
    v49 = enum case for TTRAccountsListsViewModel.Item.hashtags(_:);
    v27 = (v15 + 8);
    v47 = enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:);
    v66 = (v15 + 96);
    v55 = (v63 + 32);
    v63 += 8;
    v46 = enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:);
    while (1)
    {
      if (v26 >= *(v25 + 16))
      {
        __break(1u);
LABEL_37:
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_100003E30(v39, qword_100782E90);
        v40 = sub_100008E04(_swiftEmptyArrayStorage);
        v41 = sub_100008E04(_swiftEmptyArrayStorage);
        v42 = "Unknown item type";
        v43 = 17;
LABEL_43:
        sub_1003F9818(v42, v43, 2uLL, v40, v41);
        __break(1u);
        return;
      }

      v29 = *(v15 + 16);
      v29(v20, v25 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v26, v14);
      v29(v17, v20, v14);
      v30 = (*(v15 + 88))(v17, v14);
      if (v30 == v68)
      {
        (*v27)(v20, v14);
        (*v66)(v17, v14);
        v28 = type metadata accessor for UUID();
        (*(*(v28 - 8) + 8))(v17, v28);
      }

      else
      {
        if (v30 != v65 && v30 != v64 && v30 != v60 && v30 != v59)
        {
          if (v30 == v58 || v30 == v57)
          {
            (*v66)(v17, v14);
            v32 = v61;
            (*v55)(v61, v17, v62);
            sub_100429C6C(v32);
            (*v63)(v32, v62);
LABEL_28:
            (*v27)(v20, v14);
            goto LABEL_6;
          }

          if (v30 != v56 && v30 != v54 && v30 != v53 && v30 != v52 && v30 != v51 && v30 != v50 && v30 != v49 && v30 != v48)
          {
            if (v30 != v47 && v30 != v46)
            {
              goto LABEL_37;
            }

            goto LABEL_28;
          }
        }

        v31 = *v27;
        (*v27)(v20, v14);
        v31(v17, v14);
      }

LABEL_6:
      if (v69 == ++v26)
      {
        goto LABEL_32;
      }
    }
  }

  v34 = v68;
  v33 = v69;
  (*(v68 + 32))(v7, v23, v69);
  (*(v34 + 16))(v4, v7, v33);
  v35 = (*(v34 + 88))(v4, v33);
  if (v35 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
  {
    v36 = *(v34 + 8);
    v36(v7, v33);
    v36(v4, v33);
  }

  else
  {
    if (v35 != enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100003E30(v44, qword_100782E90);
      v40 = sub_100008E04(_swiftEmptyArrayStorage);
      v41 = sub_100008E04(_swiftEmptyArrayStorage);
      v42 = "Unknown pinnedListSelection type";
      v43 = 32;
      goto LABEL_43;
    }

    (*(v34 + 96))(v4, v33);
    v37 = v62;
    v38 = v63;
    (*(v63 + 32))(v11, v4, v62);
    sub_100429650(v11);
    (*(v38 + 8))(v11, v37);
    (*(v34 + 8))(v7, v33);
  }
}

void sub_100429250(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2, v8);
  v11 = (*(v3 + 88))(v5, v2);
  if (v11 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v3 + 96))(v5, v2);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v5, v12);
    return;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_7;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v10, v5, v6);
    sub_100429C6C(v10);
    (*(v7 + 8))(v10, v6);
    return;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_7:
    (*(v3 + 8))(v5, v2);
  }

  else if (v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100782E90);
    v15 = sub_100008E04(_swiftEmptyArrayStorage);
    v16 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v15, v16);
    __break(1u);
  }
}

void sub_100429650(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v38 = v5;
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for TTRListOrCustomSmartList();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v42 = &v33 - v12;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v15 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v15;
  v16 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Unpin List with id {list.objectID: %@}", 38, 2, v16);

  TTRAccountsListsViewModel.listOrCustomSmartList(for:)();

  v17 = v43;
  if ((*(v43 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &unk_10076DF20, &unk_10063BD50);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to find listOrCustomSmartList to unpin list", v20, 2u);
    }
  }

  else
  {
    v34 = *(v17 + 32);
    v21 = v42;
    v34(v42, v8, v9);
    v36 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.unpinList.getter();
    v33 = v2;
    v35 = String._bridgeToObjectiveC()();

    v22 = v17;
    v23 = v37;
    (*(v17 + 16))(v37, v21, v9);
    v25 = v39;
    v24 = v40;
    v26 = v41;
    (*(v40 + 16))(v39, a1, v41);
    v27 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v28 = (v10 + *(v24 + 80) + v27) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v33;
    v34((v29 + v27), v23, v9);
    (*(v24 + 32))(v29 + v28, v25, v26);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_100456DDC;
    *(v30 + 24) = v29;
    aBlock[4] = sub_100068444;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_1007289A0;
    v31 = _Block_copy(aBlock);

    v32 = v35;
    [v36 withActionName:v35 block:v31];
    _Block_release(v31);

    (*(v43 + 8))(v42, v9);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if (v32)
    {
      __break(1u);
    }
  }
}

void sub_100429C6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v43 = v5;
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for TTRListOrCustomSmartList();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v11;
  __chkstk_darwin(v12);
  v48 = &v36 - v13;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v16 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v16;
  v17 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Pin List with id {list.objectID: %@}", 36, 2, v17);

  v42 = a1;
  TTRAccountsListsViewModel.listOrCustomSmartList(for:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &unk_10076DF20, &unk_10063BD50);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to find listOrCustomSmartList to pin list", v20, 2u);
    }
  }

  else
  {
    v21 = v9;
    v22 = *(v10 + 32);
    v23 = v48;
    v22(v48, v8, v21);

    v24 = TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(1);

    if (v24)
    {
      sub_10043FA6C();
      (*(v10 + 8))(v23, v21);
    }

    else
    {
      v40 = objc_opt_self();
      static TTRLocalizableStrings.UndoAction.pinList.getter();
      v39 = String._bridgeToObjectiveC()();

      v25 = *(v10 + 16);
      v37 = v22;
      v25(v47, v23, v21);
      v27 = v44;
      v26 = v45;
      v28 = v46;
      (*(v45 + 16))(v44, v42, v46);
      v29 = (*(v10 + 80) + 24) & ~*(v10 + 80);
      v30 = *(v26 + 80);
      v38 = v2;
      v31 = (v41 + v30 + v29) & ~v30;
      v32 = swift_allocObject();
      *(v32 + 16) = v2;
      v37(v32 + v29, v47, v21);
      (*(v26 + 32))(v32 + v31, v27, v28);
      v33 = swift_allocObject();
      *(v33 + 16) = sub_100456F58;
      *(v33 + 24) = v32;
      aBlock[4] = sub_100068444;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_100728A18;
      v34 = _Block_copy(aBlock);

      v35 = v39;
      [v40 withActionName:v39 block:v34];
      _Block_release(v34);

      (*(v10 + 8))(v48, v21);
      LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

      if (v34)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_10042A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_10042A370, v7, v6);
}

uint64_t sub_10042A370()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_10042A468;
    v3 = v0[6];

    return sub_10042A5AC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10042A468()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10045A2D8, v3, v2);
}

uint64_t sub_10042A5AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v7;
  v2[15] = v6;

  return _swift_task_switch(sub_10042A758, v7, v6);
}

void sub_10042A758()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    v5 = v0[12];
    v6 = v0[10];
    v7 = v0[11];

    (*(v7 + 96))(v5, v6);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v5, v8);
LABEL_8:
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_100782E90);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Trying to delete unexpected item", v15, 2u);
    }

    v16 = v0[1];

    v16(0);
    return;
  }

  if (v4 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
LABEL_7:
    v9 = v0[12];
    v10 = v0[10];
    v11 = v0[11];

    (*(v11 + 8))(v9, v10);
    goto LABEL_8;
  }

  if (v4 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    v17 = v0[12];
    v18 = v0[9];
    v19 = v0[7];
    v20 = v0[8];
    (*(v0[11] + 96))(v17, v0[10]);
    (*(v20 + 32))(v18, v17, v19);
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_10042AD50;
    v22 = v0[9];
    v23 = 0;
LABEL_19:

    sub_100436358(v22, v23);
    return;
  }

  if (v4 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    v24 = v0[12];
    v25 = v0[9];
    v26 = v0[7];
    v27 = v0[8];
    (*(v0[11] + 96))(v24, v0[10]);
    (*(v27 + 32))(v25, v24, v26);
    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_10042AF28;
    v22 = v0[9];
    v23 = 1;
    goto LABEL_19;
  }

  if (v4 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    v29 = v0[12];
    v31 = v0[5];
    v30 = v0[6];
    v32 = v0[4];
    (*(v0[11] + 96))(v29, v0[10]);
    (*(v31 + 32))(v30, v29, v32);
    v33 = swift_task_alloc();
    v0[18] = v33;
    *v33 = v0;
    v33[1] = sub_10042B100;
    v34 = v0[6];

    sub_1004444EC(v34);
  }

  else
  {
    if (v4 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_7;
    }

    if (v4 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {

      goto LABEL_8;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003E30(v35, qword_100782E90);
    v36 = sub_100008E04(_swiftEmptyArrayStorage);
    v37 = sub_100008E04(_swiftEmptyArrayStorage);

    sub_1003F9818("Unknown item type", 17, 2uLL, v36, v37);
  }
}

uint64_t sub_10042AD50(char a1)
{
  v2 = *v1;
  *(*v1 + 152) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_10042AE78, v4, v3);
}

uint64_t sub_10042AE78()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10042AF28(char a1)
{
  v2 = *v1;
  *(*v1 + 153) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_10042B050, v4, v3);
}

uint64_t sub_10042B050()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 153);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10042B100(char a1)
{
  v2 = *v1;
  *(*v1 + 154) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_10042B228, v4, v3);
}

uint64_t sub_10042B228()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 154);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10042B2D8(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListVisibility();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v19 = &enum case for TTRListType.PredefinedSmartListVisibility.hidden(_:);
LABEL_8:
    (*(v6 + 104))(v9, *v19, v5, v7);
    swift_getObjectType();
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setPredefinedSmartListVisibility(_:for:)();
    (*(v6 + 8))(v9, v5);
    return 1;
  }

  v10 = TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(1);

  if (!v10)
  {
    v19 = &enum case for TTRListType.PredefinedSmartListVisibility.visible(_:);
    goto LABEL_8;
  }

  static TTRLocalizableStrings.AccountsList.cantShowSmartListAlertTitle.getter();
  static TTRLocalizableStrings.AccountsList.cantShowSmartListAlertMessage.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() actionWithTitle:v14 style:1 handler:0];

  [v13 addAction:v15];
  sub_10000C36C((v3 + 112), *(v3 + 136));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong presentViewController:v13 animated:1 completion:0];
  }

  return 0;
}

double sub_10042B560(uint64_t a1, char *a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10001AFE0(a2, 1, a3 & 1, 1);
  }

  return result;
}

void sub_10042B5DC(uint64_t a1)
{
  v2 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14, v16);
    return;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v17 = TTRAccountsListsViewModel.SmartList.shouldBeVisible.getter();
    TTRAccountsListsViewModel.SmartList.type.getter();
    sub_10042B2D8((v17 & 1) == 0, v5);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
    return;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.account(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_5:
    (*(v11 + 8))(v14, v10);
  }

  else if (v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100782E90);
    v19 = sub_100008E04(_swiftEmptyArrayStorage);
    v20 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v19, v20);
    __break(1u);
  }
}

void sub_10042BAA0(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v17);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100459530(a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_10045164C(v19, type metadata accessor for TTRIAccountsListsSelection);
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = v35;
    (*(v35 + 32))(v9, v19, v4);
    (*(v22 + 16))(v6, v9, v4);
    v23 = (*(v22 + 88))(v6, v4);
    if (v23 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v24 = *(v22 + 8);
      v24(v9, v4);
      v24(v6, v4);
    }

    else if (v23 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      (*(v22 + 96))(v6, v4);
      v26 = v32;
      v25 = v33;
      v27 = v34;
      (*(v33 + 32))(v32, v6, v34);
      sub_10042C520(v26);
      (*(v25 + 8))(v26, v27);
      (*(v22 + 8))(v9, v4);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100003E30(v28, qword_100782E90);
      v29 = sub_100008E04(_swiftEmptyArrayStorage);
      v30 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinnedListSelection", 27, 2uLL, v29, v30);
      __break(1u);
    }
  }

  else
  {
    v21 = *v19;
    if (*(v21 + 16))
    {
      (*(v11 + 16))(v13, v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

      (*(v11 + 32))(v16, v13, v10);
      sub_10042BF78(v16);
      (*(v11 + 8))(v16, v10);
    }

    else
    {
    }
  }
}

void sub_10042BF78(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  else
  {
    if (v15 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_7;
    }

    if (v15 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
    {
      (*(v11 + 96))(v14, v10);
      (*(v7 + 32))(v9, v14, v6);
      sub_10042C520(v9);
      (*(v7 + 8))(v9, v6);
      return;
    }

    if (v15 == enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      (*(v11 + 96))(v14, v10);
      (*(v3 + 32))(v5, v14, v2);
      sub_10042CCFC(v5);
      (*(v3 + 8))(v5, v2);
      return;
    }

    if (v15 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_7:
      (*(v11 + 8))(v14, v10);
    }

    else if (v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100003E30(v21, qword_100782E90);
      v22 = sub_100008E04(_swiftEmptyArrayStorage);
      v23 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2uLL, v22, v23);
      __break(1u);
      goto LABEL_29;
    }
  }

  if (qword_1007672D8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003E30(v17, qword_100782E90);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Trying to edit unexpected item", v20, 2u);
  }
}

void sub_10042C520(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRITipKitSignal();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v45 - v10;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v13 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v13;
  v14 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Edit List Details {objectID: %@}", 32, 2, v14);

  v15 = TTRAccountsListsViewModel.remList(for:)();

  if (v15)
  {
    v16 = v49;
    (*(v7 + 104))(v49, enum case for REMNavigationSpecifier.ListPathSpecifier.DetailSection.none(_:), v6);

    TTRModuleState.initialLoadPromise.getter();

    v17 = swift_allocObject();
    swift_weakInit();
    v18 = v48;
    (*(v7 + 16))(v48, v16, v6);
    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v15;
    (*(v7 + 32))(v20 + v19, v18, v6);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1004569EC;
    *(v21 + 24) = v20;
    v22 = v15;
    v23 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v7 + 8))(v16, v6);
    v24 = v50;
    v25 = v51;
    v26 = v52;
    (*(v51 + 104))(v50, enum case for TTRITipKitSignal.tappedNameAndAppearanceAction(_:), v52);
    v27 = static TTRITipKitSignalContext.AccountsList.SwipeCell.list.getter();
LABEL_7:
    TTRITipKitSignal.donate(signalContext:)(*&v27);

    (*(v25 + 8))(v24, v26);
    return;
  }

  v29 = TTRAccountsListsViewModel.remSmartList(for:)();

  if (v29)
  {
    v30 = v49;
    (*(v7 + 104))(v49, enum case for REMNavigationSpecifier.ListPathSpecifier.DetailSection.none(_:), v6);

    TTRModuleState.initialLoadPromise.getter();

    v31 = swift_allocObject();
    swift_weakInit();
    v32 = v48;
    (*(v7 + 16))(v48, v30, v6);
    v33 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = v29;
    (*(v7 + 32))(v34 + v33, v32, v6);
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1004568BC;
    *(v35 + 24) = v34;
    v22 = v29;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v7 + 8))(v30, v6);
    v24 = v50;
    v25 = v51;
    v26 = v52;
    (*(v51 + 104))(v50, enum case for TTRITipKitSignal.tappedNameAndAppearanceAction(_:), v52);
    v27 = static TTRITipKitSignalContext.AccountsList.SwipeCell.smartList.getter();
    goto LABEL_7;
  }

  v38 = v45;
  v37 = v46;
  v39 = v47;
  (*(v46 + 16))(v45, a1, v47);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    v44 = TTRAccountsListsViewModel.List.objectID.getter();
    (*(v37 + 8))(v38, v39);
    *(v42 + 4) = v44;
    *v43 = v44;
    _os_log_impl(&_mh_execute_header, v40, v41, "Failed to find REMList or REMSmartList -- failed to edit list {list.objectID: %@}", v42, 0xCu);
    sub_1000079B4(v43, &unk_10076DF80, &qword_10062F730);
  }

  else
  {

    (*(v37 + 8))(v38, v39);
  }
}

void sub_10042CCFC(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v116 = *(v4 - 1);
  __chkstk_darwin(v4);
  v115 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v113 = &v93 - v7;
  v8 = type metadata accessor for TTRListOrCustomSmartList();
  v119 = *(v8 - 8);
  v120 = v8;
  __chkstk_darwin(v8);
  v122 = (&v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v121 = &v93 - v11;
  v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v118 = *(v12 - 8);
  __chkstk_darwin(v12);
  v117 = (&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&unk_10076B870, &qword_10062FC08);
  __chkstk_darwin(v14 - 8);
  v16 = &v93 - v15;
  v104 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100003E30(v18, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v21 = TTRAccountsListsViewModel.Group.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v21;
  v22 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  v105 = v19;
  sub_10000FD44("Edit Group Details {objectID: %@}", 33, 2, v22);

  v23 = a1;
  v24 = TTRAccountsListsViewModel.remList(for:)();

  if (!v24)
  {
    goto LABEL_18;
  }

  v114 = v4;

  v25 = v24;
  v26 = [v24 account];
  v27 = [v26 objectID];

  TTRAccountsListsViewModel.account(with:)();

  v28 = v103;
  v29 = v104;
  if ((*(v103 + 48))(v16, 1, v104) == 1)
  {

    sub_1000079B4(v16, &unk_10076B870, &qword_10062FC08);
LABEL_17:
    v4 = v114;
LABEL_18:
    v52 = v116;
    v53 = v115;
    (*(v116 + 2))(v115, v23, v4);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      v58 = TTRAccountsListsViewModel.Group.objectID.getter();
      v52[1](v53, v4);
      *(v56 + 4) = v58;
      *v57 = v58;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to find models group -- failed to edit group {group.objectID: %@}", v56, 0xCu);
      sub_1000079B4(v57, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      v52[1](v53, v4);
    }

    return;
  }

  v99 = v25;
  a1 = v102;
  (*(v28 + 32))(v102, v16, v29);

  v30 = TTRAccountsListsViewModel.remAccount(for:)();

  if (!v30)
  {
    (*(v28 + 8))(a1, v29);

    goto LABEL_17;
  }

  swift_getObjectType();
  v31 = dispatch thunk of TTRAccountsListsInteractorType.changeItem(for:)();
  v32 = [v31 saveRequest];
  v33 = [v31 sublistContext];
  if (!v33)
  {
    v59 = v116 + 16;
    v60 = v113;
    v61 = v114;
    (*(v116 + 2))(v113, v23, v114);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();
    v64 = v59 - 8;
    if (!os_log_type_enabled(v62, v63))
    {

      (*v64)(v60, v61);
      goto LABEL_29;
    }

    v65 = swift_slowAlloc();
    v116 = v32;
    v66 = v65;
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    v68 = TTRAccountsListsViewModel.Group.objectID.getter();
    (*v64)(v60, v61);
    *(v66 + 4) = v68;
    *v67 = v68;
    _os_log_impl(&_mh_execute_header, v62, v63, "Tried to edit group without a sublist context {objectID: %@}", v66, 0xCu);
    sub_1000079B4(v67, &unk_10076DF80, &qword_10062F730);

LABEL_28:
LABEL_29:
    (*(v103 + 8))(v102, v104);
    return;
  }

  v95 = v33;
  v96 = v31;
  v116 = v32;
  v97 = v30;
  v4 = [v32 updateAccount:v30];

  v34 = TTRAccountsListsViewModel.remListsOrCustomSmartLists(in:)();

  v35 = *(v34 + 16);
  v98 = v2;
  if (!v35)
  {

    v16 = _swiftEmptyArrayStorage;
LABEL_24:
    v122 = *sub_10000C36C((v2 + 112), *(v2 + 136));
    v69 = objc_allocWithZone(TTRUndoManager);
    v70 = String._bridgeToObjectiveC()();
    v71 = [v69 initWithDebugIdentifier:v70];

    type metadata accessor for TTRIGroupDetailInteractor();
    v72 = swift_allocObject();
    v72[3] = 0;
    swift_unknownObjectWeakInit();
    v72[7] = 0;
    v72[4] = v4;
    type metadata accessor for TTRListEditor();
    sub_10001F128(&qword_10077C780, &type metadata accessor for TTRListEditor, &protocol conformance descriptor for TTRListEditor);
    v73 = v71;
    v121 = v4;
    v74 = v96;
    TTRUndoableEditing.init(changeItem:undoManager:)();
    v72[8] = v124[0];
    v75 = v95;
    v72[5] = v95;
    v72[6] = v16;
    v76 = v75;
    v72[7] = NSUndoManager.observeChanges<A>(target:handler:)();

    v77 = type metadata accessor for TTRIGroupDetailRouter();
    v78 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v126 = v77;
    v127 = &off_100729B00;
    v124[0] = v78;
    type metadata accessor for TTRIGroupDetailPresenter();
    v79 = swift_allocObject();
    v80 = sub_10000AE84(v124, v77);
    v81 = __chkstk_darwin(v80);
    v83 = (&v93 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v84 + 16))(v83, v81);
    v85 = *v83;
    *(v79 + 88) = v77;
    *(v79 + 96) = &off_100729B00;
    *(v79 + 64) = v85;
    *(v79 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v79 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v79 + 48) = v72;
    *(v79 + 56) = &off_10071E7D8;
    *(v79 + 112) = v73;
    *(v79 + 104) = 1;
    v86 = v73;

    sub_100004758(v124);
    type metadata accessor for TTRIGroupDetailViewController();
    v124[0] = v79;
    v124[1] = &off_100718120;
    v125 = 1;
    v126 = v86;
    sub_10001F128(&qword_10078C0F0, type metadata accessor for TTRIGroupDetailViewController, &unk_100645950);
    static TTRTypedController<>.instantiateFromStoryboard(with:)();

    v87 = v123;
    v88 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v123];

    v72[3] = &off_100718110;
    swift_unknownObjectWeakAssign();

    *(v79 + 24) = &off_10072E100;
    swift_unknownObjectWeakAssign();

    swift_beginAccess();
    *(v79 + 40) = &off_100727C98;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectWeakAssign();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v90 = Strong;
      [Strong presentViewController:v88 animated:1 completion:0];
    }

    else
    {
    }

    goto LABEL_28;
  }

  v94 = v4;
  v124[0] = _swiftEmptyArrayStorage;
  sub_1004A1F60(0, v35, 0);
  v36 = 0;
  v16 = v124[0];
  v115 = (v34 + ((*(v119 + 80) + 32) & ~*(v119 + 80)));
  v114 = (v119 + 16);
  v112 = v119 + 88;
  v111 = enum case for TTRListOrCustomSmartList.list(_:);
  v101 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
  v110 = (v119 + 96);
  v109 = (v119 + 8);
  v100 = enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:);
  v108 = (v118 + 104);
  v107 = enum case for TTRListOrCustomSmartListChangeItem.list(_:);
  v106 = v118 + 32;
  v113 = v34;
  while (1)
  {
    if (v36 >= *(v34 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v4 = v35;
    v2 = v12;
    v37 = v119;
    v38 = v120;
    v39 = *(v119 + 16);
    v40 = v121;
    a1 = v114;
    v39(v121, &v115[*(v119 + 72) * v36], v120);
    v41 = v122;
    v39(v122, v40, v38);
    v42 = (*(v37 + 88))(v41, v38);
    v43 = &selRef_updateList_;
    v44 = v107;
    if (v42 != v111)
    {
      v43 = &selRef_updateSmartList_;
      v44 = v100;
      if (v42 != v101)
      {
        break;
      }
    }

    v45 = v122;
    v46 = v120;
    (*v110)(v122, v120);
    v47 = *v45;
    v48 = [v116 *v43];

    (*v109)(v121, v46);
    v49 = v117;
    *v117 = v48;
    v12 = v2;
    (*v108)(v49, v44, v2);
    v124[0] = v16;
    v51 = *(v16 + 2);
    v50 = *(v16 + 3);
    if (v51 >= v50 >> 1)
    {
      sub_1004A1F60((v50 > 1), v51 + 1, 1);
      v16 = v124[0];
    }

    ++v36;
    *(v16 + 2) = v51 + 1;
    (*(v118 + 32))(&v16[((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v51], v49, v2);
    v35 = v4;
    v34 = v113;
    if (v4 == v36)
    {

      v2 = v98;
      v4 = v94;
      goto LABEL_24;
    }
  }

  v91 = sub_100008E04(_swiftEmptyArrayStorage);
  v92 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown list type", 17, 2uLL, v91, v92);
  __break(1u);
}

void sub_10042DDB8(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_10045164C(v15, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v7 + 32))(v12, v15, v6);
    (*(v7 + 16))(v9, v12, v6);
    v20 = (*(v7 + 88))(v9, v6);
    if (v20 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v21 = *(v7 + 8);
      v21(v12, v6);
      v21(v9, v6);
      return;
    }

    if (v20 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      (*(v7 + 96))(v9, v6);
      v22 = v3;
      (*(v3 + 32))(v5, v9, v2);

      v23 = TTRAccountsListsViewModel.remList(for:)();

      if (v23)
      {
        v24 = REMList.autoCategorizationContext.getter();
        if (v24)
        {
          v25 = v24;
          [v24 shouldAutoCategorizeItems];

          (*(v22 + 8))(v5, v2);
          (*(v7 + 8))(v12, v6);
          return;
        }
      }

      (*(v22 + 8))(v5, v2);
      (*(v7 + 8))(v12, v6);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100003E30(v26, qword_100782E90);
      v27 = sub_100008E04(_swiftEmptyArrayStorage);
      v28 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinnedListSelection type", 32, 2uLL, v27, v28);
      __break(1u);
    }
  }

  else if (*(*v15 + 16) == 1 && (type metadata accessor for TTRAccountsListsViewModel.Item(), , v17 = TTRAccountsListsViewModel.remList(for:)(), , v17))
  {
    v18 = REMList.autoCategorizationContext.getter();
    if (v18)
    {
      v19 = v18;
      [v18 shouldAutoCategorizeItems];
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_10042E2B0(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_10045164C(v16, type metadata accessor for TTRIAccountsListsSelection);
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = v36;
    (*(v36 + 32))(v9, v16, v4);
    (*(v24 + 16))(v6, v9, v4);
    v25 = (*(v24 + 88))(v6, v4);
    if (v25 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v26 = *(v24 + 8);
      v26(v9, v4);
      v26(v6, v4);
    }

    else if (v25 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      (*(v24 + 96))(v6, v4);
      v28 = v33;
      v27 = v34;
      v29 = v35;
      (*(v34 + 32))(v33, v6, v35);
      sub_10042EBF8(v28);
      (*(v27 + 8))(v28, v29);
      (*(v24 + 8))(v9, v4);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_100782E90);
      v31 = sub_100008E04(_swiftEmptyArrayStorage);
      v32 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinnedListSelection", 27, 2uLL, v31, v32);
      __break(1u);
    }
  }

  else
  {
    v18 = *(*v16 + 16);
    if (v18)
    {
      v21 = *(v11 + 16);
      v19 = v11 + 16;
      v20 = v21;
      v22 = *v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v23 = *(v19 + 56);
      do
      {
        v20(v13, v22, v10);
        sub_10042E740(v13);
        (*(v19 - 8))(v13, v10);
        v22 += v23;
        --v18;
      }

      while (v18);
    }
  }
}

void sub_10042E740(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v7 + 96))(v10, v6);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  else
  {
    if (v11 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_7;
    }

    if (v11 == enum case for TTRAccountsListsViewModel.Item.list(_:))
    {
      (*(v7 + 96))(v10, v6);
      (*(v3 + 32))(v5, v10, v2);
      sub_10042EBF8(v5);
      (*(v3 + 8))(v5, v2);
      return;
    }

    if (v11 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_7:
      (*(v7 + 8))(v10, v6);
    }

    else if (v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100003E30(v17, qword_100782E90);
      v18 = sub_100008E04(_swiftEmptyArrayStorage);
      v19 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2uLL, v18, v19);
      __break(1u);
      goto LABEL_28;
    }
  }

  if (qword_1007672D8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_100782E90);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Trying to auto-categorize unexpected item", v16, 2u);
  }
}

void sub_10042EBF8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;

  v26 = TTRAccountsListsViewModel.remList(for:)();

  if (v26)
  {
    v10 = REMList.autoCategorizationContext.getter();
    if (v10)
    {
      v11 = v10;
      if ([v10 shouldAutoCategorizeItems])
      {
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
        type metadata accessor for MainActor();

        v13 = v26;
        v14 = static MainActor.shared.getter();
        v15 = swift_allocObject();
        v15[2] = v14;
        v15[3] = &protocol witness table for MainActor;
        v15[4] = v2;
        v15[5] = v13;
        sub_10009E31C(0, 0, v9, &unk_10063F3E0, v15);
      }

      else
      {
        swift_getObjectType();
        dispatch thunk of TTRAccountsListsInteractorType.updateAutoCategorization(for:shouldAutoCategorizeItems:deleteExistingSections:)();
        type metadata accessor for TTRUserDefaults();
        v17 = static TTRUserDefaults.appUserDefaults.getter();
        type metadata accessor for REMAnalyticsManager();
        v25 = static REMAnalyticsManager.shared.getter();
        v18 = sub_100058000(&qword_1007757E8, &unk_100635E60);
        v19 = &v6[*(v18 + 48)];
        v20 = &v6[*(v18 + 80)];
        v21 = enum case for REMUserOperation.autoCategorizeEnable(_:);
        v22 = type metadata accessor for REMUserOperation();
        (*(*(v22 - 8) + 104))(v6, v21, v22);
        *v19 = TTRUserDefaults.activitySessionId.getter();
        v19[1] = v23;
        TTRUserDefaults.activitySessionBeginTime.getter();
        *v20 = _typeName(_:qualified:)();
        v20[1] = v24;
        (*(v4 + 104))(v6, enum case for REMAnalyticsEvent.userOperation(_:), v3);
        REMAnalyticsManager.post(event:)();

        (*(v4 + 8))(v6, v3);
      }
    }

    else
    {
      v16 = v26;
    }
  }
}

void sub_10042EFC4(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_10045164C(v16, type metadata accessor for TTRIAccountsListsSelection);
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = v36;
    (*(v36 + 32))(v9, v16, v4);
    (*(v24 + 16))(v6, v9, v4);
    v25 = (*(v24 + 88))(v6, v4);
    if (v25 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v26 = *(v24 + 8);
      v26(v9, v4);
      v26(v6, v4);
    }

    else if (v25 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      (*(v24 + 96))(v6, v4);
      v28 = v33;
      v27 = v34;
      v29 = v35;
      (*(v34 + 32))(v33, v6, v35);
      sub_10042F924(v28, 0);
      (*(v27 + 8))(v28, v29);
      (*(v24 + 8))(v9, v4);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_100782E90);
      v31 = sub_100008E04(_swiftEmptyArrayStorage);
      v32 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinnedListSelection", 27, 2uLL, v31, v32);
      __break(1u);
    }
  }

  else
  {
    v18 = *(*v16 + 16);
    if (v18)
    {
      v21 = *(v11 + 16);
      v19 = v11 + 16;
      v20 = v21;
      v22 = *v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v23 = *(v19 + 56);
      do
      {
        v20(v13, v22, v10);
        sub_10042F45C(v13, 0);
        (*(v19 - 8))(v13, v10);
        v22 += v23;
        --v18;
      }

      while (v18);
    }
  }
}

void sub_10042F45C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v9 + 96))(v12, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v12, v14);
  }

  else
  {
    if (v13 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for TTRAccountsListsViewModel.Item.list(_:))
    {
      (*(v9 + 96))(v12, v8);
      (*(v5 + 32))(v7, v12, v4);
      sub_10042F924(v7, a2 & 1);
      (*(v5 + 8))(v7, v4);
      return;
    }

    if (v13 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v13 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_7:
      (*(v9 + 8))(v12, v8);
    }

    else if (v13 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v13 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100782E90);
      v20 = sub_100008E04(_swiftEmptyArrayStorage);
      v21 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2uLL, v20, v21);
      __break(1u);
      goto LABEL_28;
    }
  }

  if (qword_1007672D8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_100782E90);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Trying to share unexpected item", v18, 2u);
  }
}

void sub_10042F924(uint64_t a1, int a2)
{
  v3 = v2;
  v112 = a2;
  v117 = *v2;
  v122 = type metadata accessor for TTRAccountsListsViewModel.List();
  v5 = *(v122 - 1);
  __chkstk_darwin(v122);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v111 - v9;
  v116 = type metadata accessor for REMAnalyticsEvent();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for REMUserOperation();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v113 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRListSharingUIType();
  v119 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_1007831D0, &qword_10063F270);
  __chkstk_darwin(v16 - 8);
  v18 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v111 - v20;
  __chkstk_darwin(v22);
  v123 = &v111 - v23;
  if ((TTRAccountsListsViewModel.List.canBeShared.getter() & 1) == 0)
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100003E30(v50, qword_100782E90);
    v51 = a1;
    v52 = v122;
    (*(v5 + 16))(v7, v51, v122);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v53, v54))
    {

      (*(v5 + 8))(v7, v52);
      return;
    }

    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    v57 = TTRAccountsListsViewModel.List.objectID.getter();
    (*(v5 + 8))(v7, v52);
    *(v55 + 4) = v57;
    *v56 = v57;
    v58 = "Cannot share list {list.objectID: %@}";
    v59 = v54;
    goto LABEL_21;
  }

  v24 = TTRAccountsListsViewModel.remList(for:)();

  v118 = v24;
  if (!v24)
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100003E30(v60, qword_100782E90);
    v61 = a1;
    v62 = v122;
    (*(v5 + 16))(v10, v61, v122);
    v53 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v53, v63))
    {

      (*(v5 + 8))(v10, v62);
      return;
    }

    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    v64 = TTRAccountsListsViewModel.List.objectID.getter();
    (*(v5 + 8))(v10, v62);
    *(v55 + 4) = v64;
    *v56 = v64;
    v58 = "Failed to find REMList -- failed to edit list {list.objectID: %@}";
    v59 = v63;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v53, v59, v58, v55, 0xCu);
    sub_1000079B4(v56, &unk_10076DF80, &qword_10062F730);

    return;
  }

  v122 = v18;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003E30(v25, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v27 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v27;
  v28 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List share list {objectID: %@}", 40, 2, v28);

  v29 = v121;
  v111 = *(v120 + 56);
  v111(v123, 1, 1, v121);
  v30 = v118;
  v31 = [v118 account];
  REMAccount.listSharingUIType.getter();

  v32 = (*(v119 + 88))(v15, v13);
  if (v32 == enum case for TTRListSharingUIType.cloudKit(_:))
  {
    if (![v30 isShared] || (v112 & 1) != 0)
    {
      sub_10000C36C(v3 + 14, v3[17]);
      sub_1002A5A68(v30);
      v45 = v123;
      sub_1000079B4(v123, &qword_1007831D0, &qword_10063F270);
      v72 = enum case for REMSharedListUserOperationDetail.cloudKitShare(_:);
      v73 = type metadata accessor for REMSharedListUserOperationDetail();
      v74 = *(v73 - 8);
      (*(v74 + 104))(v45, v72, v73);
      (*(v74 + 56))(v45, 0, 1, v73);
      v75 = enum case for REMUserOperation.startSharedList(_:);
      v40 = v120;
LABEL_44:
      (*(v40 + 104))(v45, v75, v29);
      v111(v45, 0, 1, v29);
      goto LABEL_45;
    }

    v33 = type metadata accessor for TTRIListSharingController();
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v34[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list] = v30;
    v130.receiver = v34;
    v130.super_class = v33;
    v35 = v30;
    v36 = objc_msgSendSuper2(&v130, "init");
    v37 = v3[19];
    v3[19] = v36;
    v38 = v36;

    *&v38[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_delegate + 8] = &off_100727B90;
    swift_unknownObjectWeakAssign();
    v39 = sub_1005AB938();
    v40 = v120;
    if (v39)
    {
      v41 = v39;
      sub_10000C36C(v3 + 14, v3[17]);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v43 = Strong;
        v44 = [Strong presentedViewController];
        v45 = v123;
        if (v44)
        {
          v46 = v44;
          v47 = swift_allocObject();
          *(v47 + 16) = v43;
          *(v47 + 24) = v41;
          *(v47 + 32) = 1;
          v128 = sub_100233C2C;
          v129 = v47;
          aBlock = _NSConcreteStackBlock;
          v125 = 1107296256;
          v126 = sub_10001047C;
          v127 = &unk_100728810;
          v48 = _Block_copy(&aBlock);
          v49 = v43;
          v43 = v41;

          [v46 dismissViewControllerAnimated:1 completion:v48];
          _Block_release(v48);

          v38 = v49;
          v30 = v118;
        }

        else
        {
          [v43 presentViewController:v41 animated:1 completion:0];
          v46 = v41;
        }

        v38 = v46;
        v29 = v121;
      }

      else
      {
        v43 = v41;
        v45 = v123;
      }

      sub_1000079B4(v45, &qword_1007831D0, &qword_10063F270);
      v91 = enum case for REMSharedListUserOperationDetail.cloudKitShare(_:);
      v92 = type metadata accessor for REMSharedListUserOperationDetail();
      v93 = *(v92 - 8);
      (*(v93 + 104))(v45, v91, v92);
      (*(v93 + 56))(v45, 0, 1, v92);
      v75 = enum case for REMUserOperation.manageSharedList(_:);
      goto LABEL_44;
    }
  }

  else
  {
    if (v32 == enum case for TTRListSharingUIType.custom(_:))
    {
      v65 = sub_10000C36C(v3 + 14, v3[17]);
      v30 = v118;
      sub_1004504F8(v118, v3, *v65);
      v66 = [v30 isShared];
      v45 = v123;
      sub_1000079B4(v123, &qword_1007831D0, &qword_10063F270);
      v67 = enum case for REMSharedListUserOperationDetail.calDAVShare(_:);
      v68 = type metadata accessor for REMSharedListUserOperationDetail();
      v69 = *(v68 - 8);
      v70 = v67;
      v29 = v121;
      (*(v69 + 104))(v21, v70, v68);
      (*(v69 + 56))(v21, 0, 1, v68);
      v40 = v120;
      v71 = &enum case for REMUserOperation.manageSharedList(_:);
      if (!v66)
      {
        v71 = &enum case for REMUserOperation.startSharedList(_:);
      }

      (*(v120 + 104))(v21, *v71, v29);
      v111(v21, 0, 1, v29);
      sub_100016588(v21, v45, &qword_1007831D0, &qword_10063F270);
      goto LABEL_45;
    }

    v30 = v118;
    if (v32 != enum case for TTRListSharingUIType.unsupported(_:))
    {
      v109 = sub_100008E04(_swiftEmptyArrayStorage);
      v110 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown list sharing ui type", 28, 2uLL, v109, v110);
      __break(1u);
      return;
    }

    v76 = v118;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v79 = 138412802;
      v81 = [v76 objectID];
      *(v79 + 4) = v81;
      *v80 = v81;
      *(v79 + 12) = 2080;
      aBlock = 0;
      v125 = 0xE000000000000000;
      v82 = [v76 account];
      v83 = [v82 type];

      v131 = v83;
      type metadata accessor for REMAccountType(0);
      _print_unlocked<A, B>(_:_:)();
      v84 = sub_100004060(aBlock, v125, &v132);

      *(v79 + 14) = v84;
      v30 = v118;
      *(v79 + 22) = 2080;
      aBlock = 0;
      v125 = 0xE000000000000000;
      v85 = [v76 canBeShared];
      v86 = v85 == 0;
      if (v85)
      {
        v87 = 1702195828;
      }

      else
      {
        v87 = 0x65736C6166;
      }

      if (v86)
      {
        v88 = 0xE500000000000000;
      }

      else
      {
        v88 = 0xE400000000000000;
      }

      v89 = v88;
      String.append(_:)(*&v87);

      v90 = sub_100004060(aBlock, v125, &v132);

      *(v79 + 24) = v90;
      _os_log_impl(&_mh_execute_header, v77, v78, "Trying to share a list that doesn't support sharing. Probably list.canBeShared is wrong. {listID: %@, accountType: %s, canBeShared: %s}", v79, 0x20u);
      sub_1000079B4(v80, &unk_10076DF80, &qword_10062F730);

      swift_arrayDestroy();
    }

    v29 = v121;
    v40 = v120;
  }

  v45 = v123;
LABEL_45:
  v94 = v122;
  sub_10000794C(v45, v122, &qword_1007831D0, &qword_10063F270);
  if ((*(v40 + 48))(v94, 1, v29) == 1)
  {
    sub_1000079B4(v45, &qword_1007831D0, &qword_10063F270);

    v95 = v94;
  }

  else
  {
    v96 = v113;
    (*(v40 + 32))(v113, v94, v29);
    type metadata accessor for REMAnalyticsManager();
    v122 = static REMAnalyticsManager.shared.getter();
    v97 = sub_100058000(&qword_1007757E8, &unk_100635E60);
    v98 = v114;
    v99 = &v114[*(v97 + 48)];
    v100 = &v114[*(v97 + 80)];
    (*(v40 + 16))(v114, v96, v29);
    type metadata accessor for TTRUserDefaults();
    v101 = static TTRUserDefaults.appUserDefaults.getter();
    v102 = TTRUserDefaults.activitySessionId.getter();
    v104 = v103;

    *v99 = v102;
    v99[1] = v104;
    v105 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.activitySessionBeginTime.getter();

    *v100 = _typeName(_:qualified:)();
    v100[1] = v106;
    v107 = v115;
    v108 = v116;
    (*(v115 + 104))(v98, enum case for REMAnalyticsEvent.userOperation(_:), v116);
    REMAnalyticsManager.post(event:)();

    (*(v107 + 8))(v98, v108);
    (*(v40 + 8))(v96, v121);
    v95 = v123;
  }

  sub_1000079B4(v95, &qword_1007831D0, &qword_10063F270);
}

void sub_100430AB4()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v53 = *(v0 - 8);
  __chkstk_darwin(v0);
  v44 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v48 = &v43 - v3;
  v4 = sub_100058000(&unk_10078D410, &unk_10062FC10);
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - v5;
  v7 = sub_100058000(&unk_10076B880, &unk_10063BDF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = sub_100058000(&unk_10076B870, &qword_10062FC08);
  __chkstk_darwin(v14 - 8);
  v51 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  __chkstk_darwin(v19);
  v52 = &v43 - v20;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100003E30(v21, qword_100782E90);
  v23 = sub_100008E04(_swiftEmptyArrayStorage);
  v45 = v22;
  sub_10000FD44("Add Groceries List", 18, 2, v23);

  v43 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;

  TTRAccountsListsViewModel.accountCollection.getter();

  v46 = v13;
  v47 = v8;
  (*(v8 + 16))(v10, v13, v7);
  swift_getOpaqueTypeConformance2();
  dispatch thunk of Sequence.makeIterator()();
  v49 = v7;
  swift_getAssociatedConformanceWitness();
  v24 = v6;
  v25 = v4;
  dispatch thunk of IteratorProtocol.next()();
  v54 = *(v53 + 48);
  v55 = v53 + 48;
  v26 = v54(v18, 1, v0);
  v27 = v48;
  if (v26 == 1)
  {
LABEL_7:
    (*(v50 + 8))(v24, v25);
    (*(v47 + 8))(v46, v49);
    v30 = 1;
    v31 = v52;
  }

  else
  {
    v28 = *(v53 + 32);
    v29 = (v53 + 8);
    while (1)
    {
      v28(v27, v18, v0);
      if (TTRAccountsListsViewModel.Account.supportsGroceriesList.getter())
      {
        break;
      }

      (*v29)(v27, v0);
      dispatch thunk of IteratorProtocol.next()();
      if (v54(v18, 1, v0) == 1)
      {
        goto LABEL_7;
      }
    }

    (*(v50 + 8))(v24, v25);
    (*(v47 + 8))(v46, v49);
    v31 = v52;
    v28(v52, v27, v0);
    v30 = 0;
  }

  v32 = v53;
  (*(v53 + 56))(v31, v30, 1, v0);
  v33 = v51;
  sub_10000794C(v31, v51, &unk_10076B870, &qword_10062FC08);
  if (v54(v33, 1, v0) == 1)
  {
    sub_1000079B4(v33, &unk_10076B870, &qword_10062FC08);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "No account supporting groceries", v36, 2u);
    }
  }

  else
  {
    v37 = v44;
    (*(v32 + 32))(v44, v33, v0);

    v38 = TTRAccountsListsViewModel.Account.objectID.getter();
    v39 = TTRAccountsListsViewModel.remAccount(for:)();

    if (v39)
    {
      swift_getObjectType();
      swift_allocObject();
      swift_weakInit();

      dispatch thunk of TTRAccountsListsInteractorType.createNewGroceriesList(account:completion:)();

      (*(v32 + 8))(v37, v0);
      sub_1000079B4(v31, &unk_10076B870, &qword_10062FC08);

      return;
    }

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Can't get account for adding groceries list", v42, 2u);
    }

    (*(v32 + 8))(v37, v0);
  }

  sub_1000079B4(v31, &unk_10076B870, &qword_10062FC08);
}

double sub_10043128C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRListType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getObjectType();
    *v6 = [a1 objectID];
    v6[8] = 0;
    (*(v4 + 104))(v6, enum case for TTRListType.list(_:), v3);
    dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
    (*(v4 + 8))(v6, v3);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;

      sub_100451390(a1, 0, v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_100431434(void *a1, uint64_t a2)
{
  v4 = *v2;
  static TTRLocalizableStrings.RecentlyDeletedList.deleteAllConfirmationAlertTitle.getter();
  static TTRLocalizableStrings.RecentlyDeletedList.deleteAllConfirmationAlertMessage(withCount:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v8 style:1 handler:0];

  [v7 addAction:v10];
  static TTRLocalizableStrings.Common.alertDeleteButton.getter();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = v4;

  v13 = a1;
  v14 = String._bridgeToObjectiveC()();

  v19[4] = sub_1004590A4;
  v19[5] = v12;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1001762CC;
  v19[3] = &unk_1007290D0;
  v15 = _Block_copy(v19);

  v16 = [v9 actionWithTitle:v14 style:2 handler:v15];
  _Block_release(v15);

  [v7 addAction:v16];
  sub_10000C36C(v2 + 14, v2[17]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

uint64_t sub_100431708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for REMAnalyticsEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for TTRUserDefaults();
    v29 = static TTRUserDefaults.appUserDefaults.getter();
    type metadata accessor for REMAnalyticsManager();
    v30 = static REMAnalyticsManager.shared.getter();
    v11 = sub_100058000(&qword_1007757E8, &unk_100635E60);
    v12 = &v9[*(v11 + 48)];
    v13 = *(v11 + 80);
    v31 = a3;
    v14 = &v9[v13];
    v15 = enum case for REMRDLUserOperationDetail.rdl_permanentlyDeleteAll(_:);
    v16 = type metadata accessor for REMRDLUserOperationDetail();
    v17 = *(v16 - 8);
    v28[1] = a4;
    v18 = v17;
    (*(v17 + 104))(v9, v15, v16);
    (*(v18 + 56))(v9, 0, 1, v16);
    v19 = enum case for REMUserOperation.permanentlyDeleteReminder(_:);
    v20 = type metadata accessor for REMUserOperation();
    (*(*(v20 - 8) + 104))(v9, v19, v20);
    v21 = v29;
    *v12 = TTRUserDefaults.activitySessionId.getter();
    v12[1] = v22;
    TTRUserDefaults.activitySessionBeginTime.getter();
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v23 = _typeName(_:qualified:)();
    v25 = v24;

    v32 = v23;
    v33 = v25;
    v26._countAndFlagsBits = 0x756F636341202D20;
    v26._object = 0xEE007473694C746ELL;
    String.append(_:)(v26);
    v27 = v33;
    *v14 = v32;
    *(v14 + 1) = v27;
    (*(v7 + 104))(v9, enum case for REMAnalyticsEvent.userOperation(_:), v6);
    REMAnalyticsManager.post(event:)();

    (*(v7 + 8))(v9, v6);
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.permanentlyHideAllInRecentlyDeletedList(with:)();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100431A28(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.List();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v15 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v48 = &v45 - v19;
  v20 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v20);
  v22 = (&v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100459530(a1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_10045164C(v22, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  if (!EnumCaseMultiPayload)
  {
    v24 = *v22;
    if (!*(v24 + 16))
    {

      v35 = type metadata accessor for TTRAccountsListsViewModel.Item();
      v27 = v48;
      (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
      goto LABEL_19;
    }

    v25 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v26 = *(v25 - 8);
    v27 = v48;
    (*(v26 + 16))(v48, v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v25);

    (*(v26 + 56))(v27, 0, 1, v25);
    sub_10000794C(v27, v17, &unk_100771B40, &unk_10062FB70);
    v28 = (*(v26 + 88))(v17, v25);
    if (v28 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v26 + 96))(v17, v25);
      v29 = type metadata accessor for UUID();
      (*(*(v29 - 8) + 8))(v17, v29);
LABEL_19:
      sub_1000079B4(v27, &unk_100771B40, &unk_10062FB70);
      return;
    }

    if (v28 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_18;
    }

    if (v28 == enum case for TTRAccountsListsViewModel.Item.list(_:))
    {
      (*(v26 + 96))(v17, v25);
      v37 = v46;
      v36 = v47;
      (*(v46 + 32))(v14, v17, v47);

      v38 = TTRAccountsListsViewModel.remList(for:)();

      if (v38)
      {
        sub_1004322F4(v38);
      }

      (*(v37 + 8))(v14, v36);
      goto LABEL_19;
    }

    if (v28 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:))
    {
LABEL_18:
      (*(v26 + 8))(v17, v25);
      goto LABEL_19;
    }

    if (v28 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      (*(v26 + 8))(v17, v25);
      v27 = v48;
      goto LABEL_19;
    }

    v27 = v48;
    if (v28 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_19;
    }

    (*(v26 + 8))(v17, v25);
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100003E30(v39, qword_100782E90);
    v40 = sub_100008E04(_swiftEmptyArrayStorage);
    v41 = sub_100008E04(_swiftEmptyArrayStorage);
    v42 = "Unknown item type";
    v43 = 17;
LABEL_43:
    sub_1003F9818(v42, v43, 2uLL, v40, v41);
    __break(1u);
    return;
  }

  (*(v3 + 32))(v8, v22, v2);
  (*(v3 + 16))(v5, v8, v2);
  v30 = (*(v3 + 88))(v5, v2);
  if (v30 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
  {
    v31 = *(v3 + 8);
    v31(v8, v2);
    v31(v5, v2);
    return;
  }

  if (v30 != enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100003E30(v44, qword_100782E90);
    v40 = sub_100008E04(_swiftEmptyArrayStorage);
    v41 = sub_100008E04(_swiftEmptyArrayStorage);
    v42 = "Unknown pinnedListSelection type";
    v43 = 32;
    goto LABEL_43;
  }

  (*(v3 + 96))(v5, v2);
  v33 = v46;
  v32 = v47;
  (*(v46 + 32))(v11, v5, v47);

  v34 = TTRAccountsListsViewModel.remList(for:)();

  if (v34)
  {
    sub_1004322F4(v34);
  }

  (*(v33 + 8))(v11, v32);
  (*(v3 + 8))(v8, v2);
}

void sub_1004322F4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRListToCustomSmartListConverterValidation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  swift_getObjectType();
  v52 = a1;
  v13 = dispatch thunk of TTRAccountsListsInteractorType.changeItem(for:)();
  swift_getObjectType();
  v63 = sub_100003540(0, &qword_10076CAB0, REMListChangeItem_ptr);
  v64 = &protocol witness table for REMListChangeItem;
  aBlock = v13;
  v59 = v13;
  dispatch thunk of TTRListToCustomSmartListConverterType.prevalidate(list:)();
  sub_100004758(&aBlock);
  TTRListToCustomSmartListConverterValidation.alertTitleString.getter();
  TTRListToCustomSmartListConverterValidation.alertDetailString.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();
  v16 = v5;

  v17 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v18 = *(v5 + 16);
  v57 = v12;
  v18(v9, v12, v4);
  v55 = *(v5 + 88);
  v19 = v55(v9, v4);
  v54 = enum case for TTRListToCustomSmartListConverterValidation.ok(_:);
  v58 = v2;
  if (v19 == enum case for TTRListToCustomSmartListConverterValidation.ok(_:))
  {
    v53 = v18;
    (*(v5 + 96))(v9, v4);
    v48 = *(v9 + 2);

    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v20 = String._bridgeToObjectiveC()();
    v51 = v5;
    v21 = v20;

    v49 = objc_opt_self();
    v22 = [v49 actionWithTitle:v21 style:1 handler:0];
    v50 = v22;

    [v17 addAction:v22];
    static TTRLocalizableStrings.ConvertToCustomSmartListAlert.makeConfirmButtonString.getter();
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v25 = v59;
    v24[2] = v23;
    v24[3] = v25;
    v26 = v52;
    v27 = v48;
    v24[4] = v52;
    v24[5] = v27;
    v28 = v25;

    v29 = v26;
    v30 = String._bridgeToObjectiveC()();

    v64 = sub_100459594;
    v65 = v24;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_1001762CC;
    v63 = &unk_100729238;
    v31 = _Block_copy(&aBlock);

    v32 = [v49 actionWithTitle:v30 style:0 handler:v31];
    _Block_release(v31);
    v16 = v51;

    [v17 addAction:v32];
    v33 = v57;
  }

  else
  {
    v33 = v57;
    if (v19 != enum case for TTRListToCustomSmartListConverterValidation.cannotConvertDefaultList(_:))
    {
      if (v19 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertSharedList(_:) || v19 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertLegacyLists(_:))
      {
        goto LABEL_9;
      }

      if (v19 != enum case for TTRListToCustomSmartListConverterValidation.defaultListInDifferentAccount(_:))
      {
        goto LABEL_20;
      }
    }

    v53 = v18;
    static TTRLocalizableStrings.Common.settingsButton.getter();
    v34 = String._bridgeToObjectiveC()();

    v64 = sub_10011CA1C;
    v65 = 0;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_1001762CC;
    v63 = &unk_1007291E8;
    v35 = _Block_copy(&aBlock);

    v32 = [objc_opt_self() actionWithTitle:v34 style:0 handler:v35];
    _Block_release(v35);

    [v17 addAction:v32];
  }

  v18 = v53;
LABEL_9:
  v36 = v56;
  v18(v56, v33, v4);
  v37 = v55(v36, v4);
  if (v37 == v54)
  {
    (*(v16 + 8))(v36, v4);
    v38 = v58;
LABEL_16:
    sub_10000C36C((v38 + 112), *(v38 + 136));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v43 = Strong;
      [Strong presentViewController:v17 animated:1 completion:0];

      v44 = v17;
      v17 = v43;
    }

    else
    {
      v44 = v59;
    }

    (*(v16 + 8))(v33, v4);
    return;
  }

  v39 = v4;
  v38 = v58;
  if (v37 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertDefaultList(_:) || v37 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertSharedList(_:) || v37 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertLegacyLists(_:) || v37 == enum case for TTRListToCustomSmartListConverterValidation.defaultListInDifferentAccount(_:))
  {
    static TTRLocalizableStrings.Common.alertOKButton.getter();
    v40 = String._bridgeToObjectiveC()();

    v41 = [objc_opt_self() actionWithTitle:v40 style:0 handler:0];

    [v17 addAction:v41];
    [v17 setPreferredAction:v41];

    v4 = v39;
    goto LABEL_16;
  }

LABEL_20:
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100003E30(v45, qword_100782E90);
  v46 = sub_100008E04(_swiftEmptyArrayStorage);
  v47 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown validation type", 23, 2uLL, v46, v47);
  __break(1u);
}

double sub_100432AB8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_100782E90);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v10 = [a3 objectID];
    *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    *(inited + 48) = v10;
    v11 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
    sub_10000FD44("Convert List to Custom Smart List {objectID: %@}", 48, 2, v11);

    v12 = [a4 objectID];
    swift_getObjectType();
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;

    dispatch thunk of TTRListToCustomSmartListConverterType.convert(listID:reminders:completionHandler:)();
  }

  return result;
}

void sub_100432D0C(uint64_t a1)
{
  v46 = a1;
  v45 = type metadata accessor for TTRAccountsListsViewModel.List();
  v1 = *(v45 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v45);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v40 - v4;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  __chkstk_darwin(v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v46, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v15 + 96))(v18, v14);
    (*(v11 + 32))(v13, v18, v10);
    TTRAccountsListsViewModel.SmartList.type.getter();
    (*(v11 + 8))(v13, v10);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = v41;
    v23 = v42 + 32;
    v22 = *(v42 + 32);
    v24 = v43;
    v22(v41, v9, v43);
    v25 = (*(v23 + 48) + 24) & ~*(v23 + 48);
    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    v22((v26 + v25), v21, v24);
    v27 = sub_10045708C;
LABEL_5:
    v34 = v27;
    v35 = objc_opt_self();
    aBlock[4] = v34;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10044EA48;
    aBlock[3] = &unk_100728A68;
    v36 = _Block_copy(aBlock);
    swift_retain_n();

    [v35 configurationWithIdentifier:0 previewProvider:0 actionProvider:v36];

    _Block_release(v36);

    return;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v15 + 96))(v18, v14);
    v28 = *(v1 + 32);
    v29 = v40;
    v30 = v45;
    v28(v40, v18, v45);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = v44;
    v28(v44, v29, v30);
    v33 = (*(v1 + 80) + 24) & ~*(v1 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v31;
    v28((v26 + v33), v32, v30);
    v27 = sub_100457060;
    goto LABEL_5;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_100003E30(v37, qword_100782E90);
  v38 = sub_100008E04(_swiftEmptyArrayStorage);
  v39 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2uLL, v38, v39);
  __break(1u);
}

UIMenu sub_1004332E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  static TTRLocalizableStrings.AccountsList.hidePredefinedSmartListText.getter();
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v5 + 16))(v7, a3, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, v7, v4);
  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v14 = TTRListType.PredefinedSmartListType.longTitle.getter();
  v16 = v15;
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10062D420;
  *(v17 + 32) = v13;
  v20 = v17;
  v18._countAndFlagsBits = v14;
  v18._object = v16;
  v23.value.super.isa = 0;
  v23.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v23, 0, 0xFFFFFFFFFFFFFFFFLL, v20, v21);
}

double sub_1004335A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for TTRListType.PredefinedSmartListVisibility();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getObjectType();
    (*(v4 + 104))(v6, enum case for TTRListType.PredefinedSmartListVisibility.hidden(_:), v3);
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setPredefinedSmartListVisibility(_:for:)();
    (*(v4 + 8))(v6, v3);
  }

  return result;
}

Class sub_1004336F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v4 = TTRAccountsListsViewModel.List.isCustomSmartList.getter();
  v5 = sub_100433774(a3, v4 & 1);

  return v5;
}

Class sub_100433774(uint64_t a1, int a2)
{
  v90 = a2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v93 = v6;
  v94 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = _swiftEmptyArrayStorage;
  TTRAccountsListsViewModel.List.pinState.getter();
  v11 = (v8[11])(v10, v7);
  p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
  v91 = v2;
  v92 = a1;
  if (v11 != enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
  {
    if (v11 == enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
    {
      goto LABEL_12;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_100782E90);
    v8 = _swiftEmptyArrayStorage;
    v17 = sub_100008E04(_swiftEmptyArrayStorage);
    v18 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown pin state", 17, 2uLL, v17, v18);
    __break(1u);
    goto LABEL_8;
  }

  (v8[12])(v10, v7);
  LODWORD(v8) = *v10;
  if (v8 != 1)
  {
LABEL_8:
    v19 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v19];

    v15 = static TTRLocalizableStrings.AccountsList.pinText.getter();
    goto LABEL_9;
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() _systemImageNamed:v13];

  v15 = static TTRLocalizableStrings.AccountsList.unpinText.getter();
LABEL_9:
  v89 = v15;
  sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v94;
  (*(v5 + 16))(v94, a1, v4);
  v22 = v4;
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v8;
  *(v24 + 24) = v20;
  v25 = v24 + v23;
  v4 = v22;
  (*(v5 + 32))(v25, v21, v22);
  v26 = v14;
  v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  a1 = v92;
  p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
LABEL_12:
  if (TTRAccountsListsViewModel.List.canEdit.getter())
  {
    v28 = String._bridgeToObjectiveC()();
    v29 = [objc_opt_self() _systemImageNamed:v28];

    if (v90)
    {
      static TTRLocalizableStrings.AccountsList.showSmartListInfoText.getter();
    }

    else
    {
      static TTRLocalizableStrings.AccountsList.showListInfoText.getter();
    }

    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = v94;
    (*(v5 + 16))(v94, a1, v4);
    v32 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    (*(v5 + 32))(v33 + v32, v31, v4);
    v34 = v29;
    v35 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    a1 = v92;
    p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
  }

  if (TTRAccountsListsViewModel.List.canBeShared.getter())
  {
    v36 = TTRAccountsListsViewModel.List.isShared.getter();
    v89 = v5;
    if ((v36 & 1) != 0 && (, v37 = TTRAccountsListsViewModel.remList(for:)(), , v37) && (v38 = [v37 account], v37, v39 = objc_msgSend(v38, "accountTypeHost"), v38, LODWORD(v38) = objc_msgSend(v39, "isCalDav"), v39, v38))
    {
      v40 = v4;
      v41._object = 0x8000000100672600;
      v42._countAndFlagsBits = 0xD00000000000002DLL;
      v42._object = 0x8000000100686AA0;
      v41._countAndFlagsBits = 0xD000000000000012;
      v43 = TTRLocalizedString(_:comment:)(v41, v42);
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;
      LODWORD(v86) = 0;
    }

    else
    {
      v40 = v4;
      v44._countAndFlagsBits = 0x694C206572616853;
      v45._countAndFlagsBits = 0xD000000000000025;
      v45._object = 0x8000000100686A70;
      v44._object = 0xEA00000000007473;
      v46 = TTRLocalizedString(_:comment:)(v44, v45);
      countAndFlagsBits = v46._countAndFlagsBits;
      object = v46._object;
      LODWORD(v86) = 1;
    }

    v47 = String._bridgeToObjectiveC()();
    v48 = [objc_opt_self() _systemImageNamed:v47];

    v49 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = v89;
    v52 = v94;
    v84 = *(v89 + 16);
    v84(v94, a1, v40);
    v53 = (*(v51 + 80) + 24) & ~*(v51 + 80);
    v81[1] = *(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v50;
    v55 = *(v51 + 32);
    v82 = v53;
    v83 = v55;
    v87 = v40;
    v55(v54 + v53, v52, v40);
    v56 = v48;
    countAndFlagsBits = v49;
    v57 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((v86 & TTRAccountsListsViewModel.List.isShared.getter()) == 1)
    {
      object = v57;
      v86 = v56;
      v58._object = 0x8000000100672600;
      v59._countAndFlagsBits = 0xD00000000000002DLL;
      v59._object = 0x8000000100686AA0;
      v58._countAndFlagsBits = 0xD000000000000012;
      TTRLocalizedString(_:comment:)(v58, v59);
      v60 = String._bridgeToObjectiveC()();
      v61 = [objc_opt_self() _systemImageNamed:v60];

      v62 = swift_allocObject();
      swift_weakInit();
      v63 = v94;
      v64 = v87;
      v84(v94, a1, v87);
      v4 = v64;
      v65 = v82;
      v66 = swift_allocObject();
      *(v66 + 16) = v62;
      v83(v66 + v65, v63, v4);
      v67 = v61;
      v57 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = v89;
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      p_ivar_lyt = (&TTRIAccountsListsTagsHeaderCell + 16);
      v56 = v86;
    }

    else
    {
      v4 = v87;
      p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
      v5 = v89;
    }
  }

  v68 = String._bridgeToObjectiveC()();
  v69 = [objc_opt_self() p:v68 ivar:?lyt[472]];

  if (v90)
  {
    static TTRLocalizableStrings.RemindersList.deleteCustomSmartListActionText.getter();
  }

  else
  {
    static TTRLocalizableStrings.RemindersList.deleteListActionText.getter();
  }

  sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = v94;
  (*(v5 + 16))(v94, v92, v4);
  v72 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = v70;
  (*(v5 + 32))(v73 + v72, v71, v4);
  v74 = v69;
  v75 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v76 = v95;
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  v96.value.super.isa = 0;
  v96.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v77, 0, v96, 0, 0xFFFFFFFFFFFFFFFFLL, v76, v80).super.super.isa;

  return isa;
}

void sub_1004344B8(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v102 = *(v2 - 8);
  v103 = v2;
  __chkstk_darwin(v2);
  v4 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for TTRAccountsListsViewModel.List();
  v111 = *(v107 - 8);
  __chkstk_darwin(v107);
  v109 = v5;
  v110 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v99 - v7;
  v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
  countAndFlagsBits = *(v8 - 8);
  v105 = v8;
  v9 = *(countAndFlagsBits + 64);
  __chkstk_darwin(v8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v99 - v12;
  v14 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v106 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = _swiftEmptyArrayStorage;
  (*(v18 + 16))(v21, a1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v18 + 96))(v21, v17);
    v101 = v15;
    v23 = *(v15 + 32);
    v100 = v14;
    v23(v106, v21, v14);
    TTRAccountsListsViewModel.SmartList.type.getter();
    static TTRLocalizableStrings.AccountsList.hidePredefinedSmartListText.getter();
    sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
    v24 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = countAndFlagsBits;
    v27 = v105;
    (*(countAndFlagsBits + 16))(v10, v13, v105);
    v28 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    (*(v26 + 32))(v29 + v28, v10, v27);
    v30 = objc_allocWithZone(UIAccessibilityCustomAction);

    v31 = String._bridgeToObjectiveC()();

    v116 = sub_100456890;
    v117 = v29;
    aBlock = _NSConcreteStackBlock;
    v113 = 1107296256;
    v114 = sub_10044E9F0;
    v115 = &unk_1007286F8;
    v32 = _Block_copy(&aBlock);
    [v30 initWithName:v31 image:v24 actionHandler:v32];

    _Block_release(v32);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v33 = v100;
    v34 = v101;
    if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v26 + 8))(v13, v27);
    v34[1](v106, v33);
    return;
  }

  if (v22 != enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_100003E30(v98, qword_100782E90);
    v43 = sub_100008E04(_swiftEmptyArrayStorage);
    v44 = sub_100008E04(_swiftEmptyArrayStorage);
    v45 = "Unknown item type";
    goto LABEL_40;
  }

  (*(v18 + 96))(v21, v17);
  v35 = v111;
  v36 = v107;
  v105 = *(v111 + 32);
  v106 = (v111 + 32);
  v105(v108, v21, v107);
  TTRAccountsListsViewModel.List.pinState.getter();
  v38 = v102;
  v37 = v103;
  v39 = (*(v102 + 88))(v4, v103);
  if (v39 == enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
  {
    (*(v38 + 96))(v4, v37);
    v40 = *v4;
    if (v40 == 1)
    {
      static TTRLocalizableStrings.AccountsList.unpinText.getter();
    }

    else
    {
      static TTRLocalizableStrings.AccountsList.pinText.getter();
    }

    sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
    v46 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();

    v47 = swift_allocObject();
    swift_weakInit();
    v49 = v35 + 16;
    v48 = *(v35 + 16);
    v50 = v110;
    v41 = v108;
    v48(v110, v108, v36);
    v51 = (*(v49 + 64) + 25) & ~*(v49 + 64);
    v52 = swift_allocObject();
    *(v52 + 16) = v47;
    *(v52 + 24) = v40;
    v53 = v52 + v51;
    v36 = v107;
    v105(v53, v50, v107);
    v54 = objc_allocWithZone(UIAccessibilityCustomAction);

    v55 = String._bridgeToObjectiveC()();

    v116 = sub_100456630;
    v117 = v52;
    aBlock = _NSConcreteStackBlock;
    v113 = 1107296256;
    v114 = sub_10044E9F0;
    v115 = &unk_100728568;
    v56 = _Block_copy(&aBlock);
    [v54 initWithName:v55 image:v46 actionHandler:v56];

    _Block_release(v56);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_17;
  }

  v41 = v108;
  if (v39 != enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100003E30(v42, qword_100782E90);
    v43 = sub_100008E04(_swiftEmptyArrayStorage);
    v44 = sub_100008E04(_swiftEmptyArrayStorage);
    v45 = "Unknown pin state";
LABEL_40:
    sub_1003F9818(v45, 17, 2uLL, v43, v44);
    __break(1u);
    return;
  }

LABEL_17:
  if (TTRAccountsListsViewModel.List.canEdit.getter())
  {
    if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
    {
      static TTRLocalizableStrings.AccountsList.showSmartListInfoText.getter();
    }

    else
    {
      static TTRLocalizableStrings.AccountsList.showListInfoText.getter();
    }

    v57 = v111;
    sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
    v58 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v59 = swift_allocObject();
    swift_weakInit();
    v60 = v110;
    (*(v57 + 16))(v110, v41, v36);
    v61 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v59;
    v105(v62 + v61, v60, v36);
    v63 = objc_allocWithZone(UIAccessibilityCustomAction);

    v64 = String._bridgeToObjectiveC()();

    v116 = sub_1004567D8;
    v117 = v62;
    aBlock = _NSConcreteStackBlock;
    v113 = 1107296256;
    v114 = sub_10044E9F0;
    v115 = &unk_1007286A8;
    v65 = _Block_copy(&aBlock);
    [v63 initWithName:v64 image:v58 actionHandler:v65];

    _Block_release(v65);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (TTRAccountsListsViewModel.List.canBeShared.getter())
  {
    v66._countAndFlagsBits = 0x694C206572616853;
    v67._countAndFlagsBits = 0xD000000000000025;
    v67._object = 0x8000000100686A70;
    v66._object = 0xEA00000000007473;
    countAndFlagsBits = TTRLocalizedString(_:comment:)(v66, v67)._countAndFlagsBits;
    v102 = sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
    v68 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v69 = swift_allocObject();
    swift_weakInit();
    v70 = v110;
    v71 = v111 + 16;
    v101 = *(v111 + 16);
    (v101)(v110, v41, v36);
    v72 = (*(v71 + 64) + 24) & ~*(v71 + 64);
    v73 = swift_allocObject();
    *(v73 + 16) = v69;
    v103 = v72;
    v105(v73 + v72, v70, v36);
    v74 = objc_allocWithZone(UIAccessibilityCustomAction);

    v75 = String._bridgeToObjectiveC()();

    v116 = sub_1004566DC;
    v117 = v73;
    aBlock = _NSConcreteStackBlock;
    v113 = 1107296256;
    v114 = sub_10044E9F0;
    v115 = &unk_100728608;
    v76 = _Block_copy(&aBlock);
    [v74 initWithName:v75 image:v68 actionHandler:v76];

    _Block_release(v76);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v77 = TTRAccountsListsViewModel.List.isShared.getter();
    v36 = v107;
    if (v77)
    {
      v78._object = 0x8000000100672600;
      v79._countAndFlagsBits = 0xD00000000000002DLL;
      v79._object = 0x8000000100686AA0;
      v78._countAndFlagsBits = 0xD000000000000012;
      TTRLocalizedString(_:comment:)(v78, v79);
      v80 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
      v81 = swift_allocObject();
      swift_weakInit();
      v82 = v110;
      (v101)(v110, v41, v36);
      v83 = v103;
      v84 = swift_allocObject();
      *(v84 + 16) = v81;
      v105(v84 + v83, v82, v36);
      v85 = objc_allocWithZone(UIAccessibilityCustomAction);

      v86 = String._bridgeToObjectiveC()();

      v116 = sub_1004567A4;
      v117 = v84;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_10044E9F0;
      v115 = &unk_100728658;
      v87 = _Block_copy(&aBlock);
      [v85 initWithName:v86 image:v80 actionHandler:v87];

      _Block_release(v87);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v41 = v108;
    }
  }

  v88 = v41;
  if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
  {
    static TTRLocalizableStrings.RemindersList.deleteCustomSmartListActionText.getter();
  }

  else
  {
    static TTRLocalizableStrings.RemindersList.deleteListActionText.getter();
  }

  v89 = v111;
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  v90 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
  v91 = swift_allocObject();
  swift_weakInit();
  v92 = v110;
  (*(v89 + 16))(v110, v88, v36);
  v93 = (*(v89 + 80) + 24) & ~*(v89 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = v91;
  v105(v94 + v93, v92, v36);
  v95 = objc_allocWithZone(UIAccessibilityCustomAction);

  v96 = String._bridgeToObjectiveC()();

  v116 = sub_1004566A8;
  v117 = v94;
  aBlock = _NSConcreteStackBlock;
  v113 = 1107296256;
  v114 = sub_10044E9F0;
  v115 = &unk_1007285B8;
  v97 = _Block_copy(&aBlock);
  [v95 initWithName:v96 image:v90 actionHandler:v97];

  _Block_release(v97);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(v89 + 8))(v88, v36);
}

BOOL sub_10043570C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for TTRListType.PredefinedSmartListVisibility();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    (*(v4 + 104))(v6, enum case for TTRListType.PredefinedSmartListVisibility.hidden(_:), v3);
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setPredefinedSmartListVisibility(_:for:)();
    (*(v4 + 8))(v6, v3);
  }

  return Strong != 0;
}

BOOL sub_100435864(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      sub_100429650(a4);
    }

    else
    {
      sub_100429C6C(a4);
    }
  }

  return Strong != 0;
}

BOOL sub_1004358E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10042C520(a3);
  }

  return Strong != 0;
}

uint64_t sub_10043594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1004359E4, v7, v6);
}

uint64_t sub_1004359E4()
{
  v0[2] = *(v0[3] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_100435AA8;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_100435AA8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10045A294, v3, v2);
}