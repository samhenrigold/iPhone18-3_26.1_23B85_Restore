uint64_t sub_1006D9A34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a2;
  sub_10010FC20(&unk_10119F180, &unk_100EDE3D0);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v22 - v10;
  sub_10010FC20(&qword_10119F1F0, &qword_100EDE478);
  __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v22 - v14;
  type metadata accessor for PlaylistEditingViewController.Cell(0);
  sub_10056CABC(v11);
  (*(v7 + 104))(v9, enum case for DynamicTypeSize.accessibility3(_:), v6);
  v16 = static DynamicTypeSize.< infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v9, v6);
  v17(v11, v6);
  if (v16)
  {
    sub_1000089F8(v22, v15, &qword_10119F1A8, &qword_100EDE3E8);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_10010FC20(&qword_10119F1A8, &qword_100EDE3E8);
  (*(*(v19 - 8) + 56))(v15, v18, 1, v19);
  sub_1000089F8(v15, v13, &qword_10119F1F0, &qword_100EDE478);
  sub_1000089F8(v23, v5, &unk_10119F180, &unk_100EDE3D0);
  sub_1000089F8(v13, a3, &qword_10119F1F0, &qword_100EDE478);
  v20 = sub_10010FC20(&qword_10119F1F8, &qword_100EDE480);
  sub_1000089F8(v5, a3 + *(v20 + 48), &unk_10119F180, &unk_100EDE3D0);
  sub_1000095E8(v15, &qword_10119F1F0, &qword_100EDE478);
  sub_1000095E8(v5, &unk_10119F180, &unk_100EDE3D0);
  return sub_1000095E8(v13, &qword_10119F1F0, &qword_100EDE478);
}

uint64_t sub_1006D9D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v30 = a4;
  sub_10010FC20(&qword_10119F1A8, &qword_100EDE3E8);
  __chkstk_darwin();
  v28 = &v24[-v6];
  sub_10010FC20(&unk_10119F180, &unk_100EDE3D0);
  __chkstk_darwin();
  v8 = &v24[-v7];
  sub_10010FC20(&qword_10119F200, &qword_100EDE488);
  __chkstk_darwin();
  v27 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v24[-v10];
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = &v11[*(sub_10010FC20(&qword_10119F208, &qword_100EDE490) + 44)];
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v17 = *(a3 + 32);
  v26 = *(a3 + 40);
  v25 = *(a3 + 48);
  sub_1000089F8(a2, v8, &unk_10119F180, &unk_100EDE3D0);
  sub_1000089F8(v8, v12, &unk_10119F180, &unk_100EDE3D0);
  v18 = v12 + *(sub_10010FC20(&qword_10119F210, &qword_100EDE498) + 48);
  *v18 = v13;
  *(v18 + 8) = v14;
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  *(v18 + 32) = v17;
  *(v18 + 40) = v26;
  *(v18 + 48) = v25;
  sub_10021D0C0(v13, v14, v15);

  sub_10021D0C0(v13, v14, v15);

  sub_10011895C(v13, v14, v15);

  sub_1000095E8(v8, &unk_10119F180, &unk_100EDE3D0);
  v19 = v28;
  sub_1000089F8(v29, v28, &qword_10119F1A8, &qword_100EDE3E8);
  v20 = v27;
  sub_1000089F8(v11, v27, &qword_10119F200, &qword_100EDE488);
  v21 = v30;
  sub_1000089F8(v19, v30, &qword_10119F1A8, &qword_100EDE3E8);
  v22 = sub_10010FC20(&qword_10119F218, &unk_100EDE4A0);
  sub_1000089F8(v20, v21 + *(v22 + 48), &qword_10119F200, &qword_100EDE488);
  sub_1000095E8(v11, &qword_10119F200, &qword_100EDE488);
  sub_1000095E8(v20, &qword_10119F200, &qword_100EDE488);
  return sub_1000095E8(v19, &qword_10119F1A8, &qword_100EDE3E8);
}

double sub_1006DA0D0(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *&result = __chkstk_darwin().n128_u64[0];
  v6 = &v19 - v5;
  if (*(a1 + 16))
  {
    if (qword_10117FE30 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101219770);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      type metadata accessor for Track();
      v12 = Array.description.getter();
      v14 = sub_1000105AC(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "⏬️ Will add entries=%s", v10, 0xCu);
      sub_10000959C(v11);
    }

    static TaskPriority.userInitiated.getter();
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
    type metadata accessor for MainActor();

    v16 = v2;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    v18[5] = a1;
    sub_1001F4CB8(0, 0, v6, &unk_100EDDFE8, v18);
  }

  return result;
}

uint64_t sub_1006DA354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1006DA428, v7, v6);
}

void sub_1006DA428()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController);
  v0[10] = v1;
  if (v1)
  {
    v0[2] = v0[4];
    v6 = &async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.append<A, B>(_:) + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.append<A, B>(_:);

    v2 = swift_task_alloc();
    v0[11] = v2;
    v3 = sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
    v4 = type metadata accessor for Track();
    v0[12] = v4;
    v5 = sub_100020674(&qword_101192820, &qword_10119ED90, &unk_100ECF7A0, &protocol conformance descriptor for [A]);
    *v2 = v0;
    v2[1] = sub_1006DA588;

    (v6)(v0 + 2, v3, v4, v5, &protocol witness table for Track);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006DA588()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1006DA808;
  }

  else
  {
    v5 = sub_1006DA6C0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1006DA6C0()
{

  v1 = *(v0 + 40);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = v3;

  sub_1001F4CB8(0, 0, v1, &unk_100EDDFF8, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1006DA808()
{
  v19 = v0;

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v4 = 136315394;
    v7 = Array.description.getter();
    v9 = sub_1000105AC(v7, v8, &v18);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to add %s with error=%@", v4, 0x16u);
    sub_1000095E8(v5, &unk_101183D70, &unk_100EC6540);

    sub_10000959C(v6);
  }

  else
  {
  }

  v11 = *(v0 + 40);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;

  sub_1001F4CB8(0, 0, v11, &unk_100EDDFF8, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1006DAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = type metadata accessor for IndexPath();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006DAC1C, v7, v6);
}

uint64_t sub_1006DAC1C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1006D6360();

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = static Published.subscript.modify();
    *v4 = _swiftEmptyArrayStorage;

    v3(v0 + 2, 0);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1006D1794();
    v8 = [v7 indexPathsForSelectedItems];

    if (v8)
    {
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    v10 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView;
    [*&v6[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView] reloadData];
    if (v9)
    {
      v11 = *(v9 + 16);
      if (v11)
      {
        v12 = v0[17];
        v13 = *(v12 + 16);
        v12 += 16;
        v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
        v29 = *(v12 + 56);
        v30 = v13;
        v15 = (v12 - 8);
        do
        {
          v16 = v0[19];
          v17 = v0[16];
          v30(v16, v14, v17);
          v18 = *&v6[v10];
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v18 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

          (*v15)(v16, v17);
          v14 += v29;
          --v11;
        }

        while (v11);
      }
    }
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = sub_1006D1794();

    if ([v22 numberOfItemsInSection:0] < 1)
    {
    }

    else
    {
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[16];
      IndexPath.init(item:section:)();
      v26 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v22 scrollToItemAtIndexPath:v26 atScrollPosition:4 animated:1];

      (*(v24 + 8))(v23, v25);
    }
  }

  v27 = v0[1];

  return v27();
}

void sub_1006DAF60()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v45 - v5;
  __chkstk_darwin();
  v52 = &v45 - v7;
  v8 = type metadata accessor for Playlist.Entry();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v45 - v11;
  v12 = IndexPath.item.getter();
  v13 = IndexPath.item.getter();
  v14 = v13;
  v15 = v13;
  if (v12 >= v13)
  {
    v15 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v49 = v4;
  v53 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController;
  v16 = *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController);
  if (!v16)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v12 >= *(v17 + 16))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
LABEL_13:
    v26 = type metadata accessor for Logger();
    sub_1000060E4(v26, qword_101219770);
    v27 = v51;
    v16(v51, v55, v8);
    v28 = v50;
    sub_1000089F8(v15, v50, &qword_101191570, &qword_100ECE0B0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v47 = v14;
      v32 = v31;
      v46 = swift_slowAlloc();
      v56 = v46;
      *v32 = 136315394;
      sub_1006E1788(&qword_10119A818, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(v54 + 8);
      v36(v27, v8);
      v37 = sub_1000105AC(v33, v35, &v56);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      sub_1000089F8(v28, v49, &qword_101191570, &qword_100ECE0B0);
      v38 = String.init<A>(describing:)();
      v39 = v28;
      v40 = v38;
      v42 = v41;
      v15 = v52;
      sub_1000095E8(v39, &qword_101191570, &qword_100ECE0B0);
      v43 = sub_1000105AC(v40, v42, &v56);

      *(v32 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v29, v30, "🔃 Will move entry=%s after entry=%s", v32, 0x16u);
      swift_arrayDestroy();

      v14 = v47;
    }

    else
    {

      sub_1000095E8(v28, &qword_101191570, &qword_100ECE0B0);
      v36 = *(v54 + 8);
      v36(v27, v8);
    }

    if (*(v14 + v53))
    {

      v44 = v55;
      dispatch thunk of MusicLibraryPlaylistEditViewModel.move(_:after:)();

      sub_1000095E8(v15, &qword_101191570, &qword_100ECE0B0);
      v36(v44, v8);
      return;
    }

    goto LABEL_25;
  }

  v50 = v6;
  v48 = v2;
  v18 = v1;
  v54 = v9;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v16 = v20;
  v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
  v22 = *(v19 + 56);
  v20(v55, (v17 + v21 + v22 * v12), v8);

  if (!v14)
  {
    v25 = 1;
    v15 = v52;
LABEL_12:
    (*(v54 + 56))(v15, v25, 1, v8);
    v14 = v18;
    if (qword_10117FE30 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (*(v18 + v53))
  {

    v23 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(v23 + 16))
    {
      v24 = v23 + v21 + v22 * v15;
      v15 = v52;
      v16(v52, v24, v8);

      v25 = 0;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}

void sub_1006DB538()
{
  v1 = v0;
  v2 = sub_1006D1794();
  v3 = [v2 indexPathsForSelectedItems];

  if (v3)
  {
    type metadata accessor for IndexPath();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_101219770);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    type metadata accessor for IndexPath();
    v10 = Array.description.getter();
    v12 = sub_1000105AC(v10, v11, v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "🚮 Will remove %s indexes", v8, 0xCu);
    sub_10000959C(v9);
  }

  v13 = *&v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1006E1A68;
  *(v15 + 24) = v14;
  v19[4] = sub_100029B94;
  v19[5] = v15;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100029B9C;
  v19[3] = &unk_1010BB3F8;
  v16 = _Block_copy(v19);
  v17 = v13;
  v18 = v1;

  [v17 performBatchUpdates:v16 completion:0];
  _Block_release(v16);
}

void sub_1006DB7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Entry();
  v39 = *(v8 - 8);
  __chkstk_darwin();
  v38 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController;
  if (!*(a1 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

  v11 = *(a2 + 16);
  if (v11)
  {
    v27 = a1;
    v40 = _swiftEmptyArrayStorage;
    sub_10066CED8(0, v11, 0);
    v12 = v40;
    v13 = v5 + 16;
    v36 = *(v5 + 16);
    v37 = v5 + 16;
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v26[1] = a2;
    v15 = a2 + v14;
    v34 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v35 = v10;
    v33 = v10 + v34;
    v16 = *(v13 + 56);
    v31 = v39 + 16;
    v32 = v16;
    v29 = (v39 + 32);
    v30 = (v13 - 8);
    while (1)
    {
      v36(v7, v15, v4);
      v17 = IndexPath.item.getter();
      if ((v17 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v17 >= *(v10 + 16))
      {
        goto LABEL_13;
      }

      v18 = v38;
      v19 = *(v39 + 72);
      (*(v39 + 16))(v38, v33 + v19 * v17, v8);
      (*v30)(v7, v4);
      v40 = v12;
      v20 = v8;
      v22 = v12[2];
      v21 = v12[3];
      if (v22 >= v21 >> 1)
      {
        sub_10066CED8((v21 > 1), v22 + 1, 1);
        v18 = v38;
        v12 = v40;
      }

      v12[2] = v22 + 1;
      (*v29)(v12 + v34 + v22 * v19, v18, v20);
      v15 += v32;
      --v11;
      v8 = v20;
      v10 = v35;
      if (!v11)
      {
        a1 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_10:
  if (*(a1 + v28))
  {

    dispatch thunk of MusicLibraryPlaylistEditViewModel.remove(_:)();

    v23 = sub_1006D1794();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v23 deleteItemsAtIndexPaths:isa];

    v25 = sub_1006D251C();
    [(objc_class *)v25 setEnabled:0];

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_1006DBB84()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v53 = &v50 - v2;
  v54 = sub_10010FC20(&qword_10119EF68, &qword_100EDDFD0);
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v51 = &v50 - v3;
  v4 = sub_10010FC20(&qword_10119EF70, &qword_100EDDFD8);
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin();
  v55 = &v50 - v5;
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v50 - v11;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v59 = v14;
  v15 = type metadata accessor for Logger();
  sub_1000060E4(v15, qword_101219770);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Will present Music picker", v18, 2u);
  }

  v19 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v20 = type metadata accessor for URL();
  v21 = *(*(v20 - 8) + 56);
  v21(v12, 1, 1, v20);
  (*(v7 + 16))(v9, &v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v6);
  v22 = v19;
  v23 = Playlist.id.getter();
  v24 = v6;
  v25 = v1;
  v27 = v26;
  (*(v7 + 8))(v9, v24);
  v28 = v58;
  v21(v58, 1, 1, v20);
  v29 = v59;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0x636973754D646461, 0xE800000000000000, 5, 44, v12, 0, 0, 12, v59, 0, 0, 65280, v23, v27, 0x7473696C79616C50, 0xE800000000000000, v28, 0, 1, 2, 0, 0, 0);
  v30 = sub_10053771C();
  v32 = v31;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v33 = qword_101218AD0;
  v34 = GroupActivitiesManager.hasJoined.getter();
  v35 = GroupActivitiesManager.participantsCount.getter();
  v36 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v22) + 0xB8))(v29, v30, v32, v34 & 1, v35, *(v33 + v36));

  sub_1006E2FFC(v29, type metadata accessor for MetricsEvent.Click);
  v37 = sub_1006D64F0();
  result = [v25 view];
  if (result)
  {
    v39 = result;
    v40 = [v37 isDescendantOfView:result];

    if (v40)
    {
LABEL_11:
      sub_1006D6360();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v60) = 1;
      return static Published.subscript.setter();
    }

    result = [v25 view];
    if (result)
    {
      v41 = result;
      [result addSubview:*&v25[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView]];

      sub_1006D6360();
      swift_beginAccess();
      sub_10010FC20(&qword_10119B4B8, &unk_100ED9E30);
      v42 = v51;
      Published.projectedValue.getter();
      swift_endAccess();

      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v43 = static OS_dispatch_queue.main.getter();
      v60 = v43;
      v44 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v45 = v53;
      (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
      sub_100020674(&unk_10119EF78, &qword_10119EF68, &qword_100EDDFD0, &protocol conformance descriptor for Published<A>.Publisher);
      sub_1000206BC();
      v46 = v54;
      v47 = v55;
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v45, &qword_101182140, &unk_100EBD2A0);

      (*(v52 + 8))(v42, v46);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&unk_10119EF88, &qword_10119EF70, &qword_100EDDFD8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v48 = v57;
      v49 = Publisher<>.sink(receiveValue:)();

      (*(v56 + 8))(v47, v48);
      *&v25[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_musicPickerSubscription] = v49;

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006DC438(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1006DA0D0(v2);
  }
}

id sub_1006DC494()
{
  v1 = v0;
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101219770);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Will dismiss edit view controller", v5, 2u);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1006DC594()
{
  v1[170] = v0;
  v2 = type metadata accessor for Logger();
  v1[171] = v2;
  v1[172] = *(v2 - 8);
  v1[173] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v1[174] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v1[175] = v3;
  v1[176] = *(v3 - 8);
  v1[177] = swift_task_alloc();
  type metadata accessor for Locale();
  v1[178] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[179] = swift_task_alloc();
  v1[180] = type metadata accessor for MainActor();
  v1[181] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[182] = v5;
  v1[183] = v4;

  return _swift_task_switch(sub_1006DC77C, v5, v4);
}

uint64_t sub_1006DC77C()
{
  if (![*(v0 + 1360) isEditing])
  {
    goto LABEL_13;
  }

  if (sub_1006D65D8())
  {
    v1 = 1;
  }

  else
  {
    v1 = *(*(v0 + 1360) + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges);
  }

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  *(v0 + 1472) = sub_1000060E4(*(v0 + 1368), qword_101219770);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "🏮Save button called, hasChanges=%{BOOL}d", v4, 8u);
  }

  if (v1)
  {
    v5 = *(v0 + 1360);
    v6 = sub_1006D6A4C();
    *(v0 + 1480) = sub_1006D2BA8();
    *(v0 + 1136) = 0u;
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0;
    *(v0 + 1176) = 255;
    *(v0 + 1184) = 0;
    PresentationSource.init(viewController:position:)(v5, v0 + 1136, v0 + 1040);
    v7 = swift_task_alloc();
    *(v0 + 1488) = v7;
    *v7 = v0;
    v7[1] = sub_1006DC9DC;

    return sub_1004F475C(v0 + 1040, v6 & 1);
  }

  else
  {
LABEL_13:

    sub_1006DC494();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1006DC9DC(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 1497) = a1;

  sub_10012BA6C(v3 + 1040);
  v4 = *(v2 + 1464);
  v5 = *(v2 + 1456);

  return _swift_task_switch(sub_1006DCB30, v5, v4);
}

void sub_1006DCB30()
{
  v102 = v0;
  if (*(v0 + 1497) == 1)
  {
    [*(v0 + 1360) setEditing:0 animated:1];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter((v0 + 1248));

    v2 = String.trim()();

    v3 = (v2._object >> 56) & 0xF;
    if ((v2._object & 0x2000000000000000) == 0)
    {
      v3 = v2._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter((v0 + 1264));
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
    }

    v4 = *(v0 + 1360);
    v5 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController;
    if (*&v4[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController])
    {

      dispatch thunk of MusicLibraryPlaylistEditViewModel.name.setter();

      if (*&v4[v5])
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter((v0 + 1280));

        dispatch thunk of MusicLibraryPlaylistEditViewModel.description.setter();

        v99 = v4;
        v100 = v5;
        if (*&v4[v5])
        {
          v6 = *(v0 + 1416);
          v7 = *(v0 + 1408);
          v8 = *(v0 + 1400);
          v9 = *(v0 + 1360);
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter((v0 + 1496));

          dispatch thunk of MusicLibraryPlaylistEditViewModel.isVisiblePlaylist.setter();

          (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v8);
          v10 = sub_1006CF48C();
          v11 = *(v7 + 8);
          v1 = (v7 + 8);
          v11(v6, v8);
          LOBYTE(v6) = sub_100031064(0, v10);

          if ((v6 & 1) == 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter((v0 + 288)), , , v12 = *(v0 + 384), v13 = *(v0 + 400), *(v0 + 248) = v12, *(v0 + 264) = v13, v14 = *(v0 + 416), *(v0 + 280) = v14, v15 = *(v0 + 320), v16 = *(v0 + 336), *(v0 + 184) = v15, *(v0 + 200) = v16, v18 = *(v0 + 352), v17 = *(v0 + 368), *(v0 + 216) = v18, *(v0 + 232) = v17, v20 = *(v0 + 288), v19 = *(v0 + 304), *(v0 + 152) = v20, *(v0 + 168) = v19, *(v0 + 112) = v12, *(v0 + 128) = v13, *(v0 + 144) = v14, *(v0 + 48) = v15, *(v0 + 64) = v16, *(v0 + 80) = v18, *(v0 + 96) = v17, *(v0 + 16) = v20, *(v0 + 32) = v19, sub_1000D8FCC((v0 + 16)) == 1))
          {

LABEL_14:
            v4 = v99;
            goto LABEL_15;
          }

          v68 = *(v0 + 96);
          *(v0 + 488) = *(v0 + 80);
          *(v0 + 504) = v68;
          v69 = *(v0 + 128);
          *(v0 + 520) = *(v0 + 112);
          *(v0 + 536) = v69;
          v70 = *(v0 + 32);
          *(v0 + 424) = *(v0 + 16);
          *(v0 + 440) = v70;
          v71 = *(v0 + 64);
          *(v0 + 456) = *(v0 + 48);
          *(v0 + 472) = v71;
          if (sub_1005024E0((v0 + 424)) == 1)
          {
            if (!*&v4[v5])
            {
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter((v0 + 1352));

            v72 = *(v0 + 1352);
            v73 = [v72 CGImage];

            dispatch thunk of MusicLibraryPlaylistEditViewModel.userImage.setter();
            sub_1000095E8(v0 + 152, &qword_1011842B0, &qword_100EBFE30);
          }

          else
          {
            v1 = *(v0 + 456);
            if (v1)
            {
              v74 = *(v0 + 448);
              v75 = *(v0 + 464);
              v76 = *(v0 + 472);
              v78 = *(v0 + 480);
              v77 = *(v0 + 488);
              v79 = *(v0 + 496);
              *(v0 + 1192) = v74;
              *(v0 + 1200) = v1;
              *(v0 + 1208) = v75;
              *(v0 + 1216) = v76;
              *(v0 + 1224) = v78;
              *(v0 + 1232) = v77;
              *(v0 + 1240) = v79;
              sub_1001F43A0(v74, v1, v75, v76, v78, v77, v79);
              sub_100501164(v0 + 16, v0 + 808);
              v95 = v76;
              v96 = v78;
              v97 = v77;
              v98 = v79;
              sub_1001F43A0(v74, v1, v75, v76, v78, v77, v79);
              PlaylistCovers.Recipe.init(from:)((v0 + 1192), (v0 + 936));
              PlaylistCovers.Recipe.rawJSONRepresentation()();
              if (v80)
              {
                v81 = *(v0 + 1384);
                v82 = *(v0 + 1376);
                v83 = *(v0 + 1368);

                sub_1001F4410(v0 + 936);
                v84 = Logger.playlistCovers.unsafeMutableAddressor();
                (*(v82 + 16))(v81, v84, v83);
                swift_errorRetain();
                v85 = Logger.logObject.getter();
                v86 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v85, v86))
                {
                  v87 = swift_slowAlloc();
                  v88 = swift_slowAlloc();
                  *v87 = 138543362;
                  swift_errorRetain();
                  v89 = _swift_stdlib_bridgeErrorToNSError();
                  *(v87 + 4) = v89;
                  *v88 = v89;
                  _os_log_impl(&_mh_execute_header, v85, v86, "Failed to encode recipe with error=%{public}@", v87, 0xCu);
                  sub_1000095E8(v88, &unk_101183D70, &unk_100EC6540);

                  sub_1005011C0(v0 + 16);
                  sub_1000095E8(v0 + 152, &qword_1011842B0, &qword_100EBFE30);

                  sub_1001F4464(v74, v1, v75, v95, v96, v97, v98);
                }

                else
                {
                  sub_1001F4464(v74, v1, v75, v95, v96, v97, v98);

                  sub_1005011C0(v0 + 16);
                  sub_1000095E8(v0 + 152, &qword_1011842B0, &qword_100EBFE30);
                }

                (*(*(v0 + 1376) + 8))(*(v0 + 1384), *(v0 + 1368));
              }

              else
              {
                sub_1001F4410(v0 + 936);
                if (!*&v99[v100])
                {
LABEL_56:
                  __break(1u);
                  return;
                }

                MusicLibraryPlaylistEditViewModel.rawCoverArtworkRecipe.setter();
                sub_1001F4464(v74, v1, v75, v76, v78, v97, v79);
                sub_1005011C0(v0 + 16);
                sub_1000095E8(v0 + 152, &qword_1011842B0, &qword_100EBFE30);
              }

              goto LABEL_14;
            }

            v90 = *(v0 + 96);
            *(v0 + 616) = *(v0 + 80);
            *(v0 + 632) = v90;
            v91 = *(v0 + 128);
            *(v0 + 648) = *(v0 + 112);
            *(v0 + 664) = v91;
            v92 = *(v0 + 32);
            *(v0 + 552) = *(v0 + 16);
            *(v0 + 568) = v92;
            v93 = *(v0 + 64);
            *(v0 + 584) = *(v0 + 48);
            *(v0 + 600) = v93;
            sub_100502200(v0 + 552, v0 + 680);

            sub_1005011C0(v0 + 16);
            sub_1000095E8(v0 + 152, &qword_1011842B0, &qword_100EBFE30);
          }

LABEL_15:
          v21 = *(v0 + 1360);
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v22, v23))
          {
            v34 = *(v0 + 1360);

LABEL_29:
            v59 = *(v0 + 1392);
            v60 = *(v0 + 1360);
            v61 = [v60 navigationItem];
            sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
            v62 = static UIBarButtonItem.loading.getter();
            [v61 setRightBarButtonItem:v62 animated:1];

            v63 = type metadata accessor for TaskPriority();
            (*(*(v63 - 8) + 56))(v59, 1, 1, v63);
            v64 = v60;
            v65 = static MainActor.shared.getter();
            v66 = swift_allocObject();
            v66[2] = v65;
            v66[3] = &protocol witness table for MainActor;
            v66[4] = v64;
            sub_1001F4CB8(0, 0, v59, &unk_100EDDE98, v66);

            goto LABEL_30;
          }

          v24 = swift_slowAlloc();
          v101[0] = swift_slowAlloc();
          *v24 = 136316674;
          if (*&v4[v100])
          {

            v25 = dispatch thunk of MusicLibraryPlaylistEditViewModel.name.getter();
            v27 = v26;

            *(v0 + 1296) = v25;
            *(v0 + 1304) = v27;
            sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
            v28 = String.init<A>(describing:)();
            v30 = sub_1000105AC(v28, v29, v101);

            *(v24 + 4) = v30;
            *(v24 + 12) = 2080;
            v1 = *(v0 + 1360);
            if (*&v4[v100])
            {

              v31 = dispatch thunk of MusicLibraryPlaylistEditViewModel.isVisiblePlaylist.getter();

              if (v31 == 2 || (v31 & 1) == 0)
              {
                v32 = 0xE500000000000000;
                v33 = 0x65736C6166;
              }

              else
              {
                v32 = 0xE400000000000000;
                v33 = 1702195828;
              }

              v35 = sub_1000105AC(v33, v32, v101);

              *(v24 + 14) = v35;
              *(v24 + 22) = 2080;
              v1 = *(v0 + 1360);
              if (*&v4[v100])
              {

                v36 = dispatch thunk of MusicLibraryPlaylistEditViewModel.userImage.getter();

                *(v0 + 1344) = v36;
                sub_10010FC20(&qword_10119EF30, &qword_100EDDEA8);
                v37 = String.init<A>(describing:)();
                v39 = sub_1000105AC(v37, v38, v101);

                *(v24 + 24) = v39;
                *(v24 + 32) = 2080;
                v1 = *(v0 + 1360);
                if (*&v4[v100])
                {

                  v40 = dispatch thunk of MusicLibraryPlaylistEditViewModel.description.getter();
                  v42 = v41;

                  *(v0 + 1312) = v40;
                  *(v0 + 1320) = v42;
                  v43 = String.init<A>(describing:)();
                  v45 = sub_1000105AC(v43, v44, v101);

                  *(v24 + 34) = v45;
                  *(v24 + 42) = 2080;
                  v1 = *(v0 + 1360);
                  if (*&v4[v100])
                  {

                    v46 = MusicLibraryPlaylistEditViewModel.rawCoverArtworkRecipe.getter();
                    v48 = v47;

                    *(v0 + 1328) = v46;
                    *(v0 + 1336) = v48;
                    v49 = String.init<A>(describing:)();
                    v51 = sub_1000105AC(v49, v50, v101);

                    *(v24 + 44) = v51;
                    *(v24 + 52) = 2048;
                    v1 = *(v0 + 1360);
                    if (*&v4[v100])
                    {

                      v52 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

                      v53 = *(v52 + 16);

                      *(v24 + 54) = v53;
                      *(v24 + 62) = 2080;
                      v54 = *&v4[v100];
                      v4 = *(v0 + 1360);
                      if (v54)
                      {

                        dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

                        type metadata accessor for Playlist.Entry();
                        v55 = Array.description.getter();
                        v57 = v56;

                        v58 = sub_1000105AC(v55, v57, v101);

                        *(v24 + 64) = v58;
                        _os_log_impl(&_mh_execute_header, v22, v23, "🔒 Will save playlist with:\n    - name=%s\n    - isVisible=%s\n    - userImage=%s\n    - description=%s\n    - rawCoverArtworkRecipe=%s\n    - %ld entries=%s", v24, 0x48u);
                        swift_arrayDestroy();

                        goto LABEL_29;
                      }

                      goto LABEL_54;
                    }

LABEL_53:

                    __break(1u);
LABEL_54:

                    __break(1u);
                    goto LABEL_55;
                  }

LABEL_52:

                  __break(1u);
                  goto LABEL_53;
                }

LABEL_51:

                __break(1u);
                goto LABEL_52;
              }

LABEL_50:

              __break(1u);
              goto LABEL_51;
            }

LABEL_49:

            __break(1u);
            goto LABEL_50;
          }

LABEL_48:
          v94 = *(v0 + 1360);

          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_30:

  v67 = *(v0 + 8);

  v67();
}

uint64_t sub_1006DD994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for Locale();
  v4[3] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[4] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_1006DDB28, v7, v6);
}

void sub_1006DDB28()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController);
  v0[14] = v1;
  if (v1)
  {
    v4 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save());

    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_1006DDBFC;
    v3 = v0[9];

    v4(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006DDBFC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_1006DE18C;
  }

  else
  {
    (*(v2[7] + 8))(v2[9], v2[6]);

    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_1006DDD34;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1006DDD34()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_dataSource);
  v0[17] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1006DDF08;

    return sub_10081BB60();
  }

  else
  {

    v4 = v0[5];
    v5 = v0[2];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = v5;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    sub_1001F4CB8(0, 0, v4, &unk_100EDDF58, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1006DDF08()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return _swift_task_switch(sub_1006DE048, v4, v3);
}

uint64_t sub_1006DE048()
{

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;
  sub_1001F4CB8(0, 0, v1, &unk_100EDDF58, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006DE18C()
{

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error committing playlist changes with error=%@", v4, 0xCu);
    sub_1000095E8(v5, &unk_101183D70, &unk_100EC6540);
  }

  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  v30 = v0[2];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v10 message:0 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() actionWithTitle:v12 style:0 handler:0];

  [v11 addAction:v13];
  sub_100009F78(0, &qword_10119EF38, UIAlertAction_ptr);
  _StringGuts.grow(_:)(25);

  (*(v8 + 16))(v7, v30 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v9);
  Playlist.id.getter();
  (*(v8 + 8))(v7, v9);
  v14 = MusicItemID.description.getter();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 96;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = sub_1006E1288(_swiftEmptyArrayStorage);
  v20 = static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(0xD000000000000017, 0x8000000100E55550, 0xD000000000000016, 0x8000000100E55570, _swiftEmptyArrayStorage, v19, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 1);

  if (v20)
  {
    [v11 addAction:v20];
  }

  v21 = v0[5];
  v22 = v0[2];
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = v22;
  v25 = v11;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v24;
  v27[5] = v25;
  sub_1001F4CB8(0, 0, v21, &unk_100EDDF48, v27);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1006DE6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006DE788, v6, v5);
}

uint64_t sub_1006DE788()
{

  sub_1006DC494();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006DE7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006DE884, v7, v6);
}

uint64_t sub_1006DE884()
{
  v1 = v0[3];
  v2 = v0[2];

  [v2 presentViewController:v1 animated:1 completion:0];
  [v2 setEditing:1 animated:1];
  v3 = v0[1];

  return v3();
}

void sub_1006DE91C()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 isEditing])
  {
    goto LABEL_13;
  }

  if (sub_1006D65D8())
  {
    v7 = 1;
  }

  else
  {
    v7 = v0[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges];
  }

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, qword_101219770);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "🏮Cancel button called, hasChanges=%{BOOL}d", v11, 8u);
  }

  if (v7)
  {
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v2);
    Playlist.name.getter();
    (*(v3 + 8))(v6, v2);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v12 = String._bridgeToObjectiveC()();

    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:0];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v16 = v1;
    v17 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1006E1814;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10027D328;
    aBlock[3] = &unk_1010BB308;
    v18 = _Block_copy(aBlock);

    v19 = objc_opt_self();
    v20 = [v19 actionWithTitle:v17 style:2 handler:v18];
    _Block_release(v18);

    [v14 addAction:v20];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v19 actionWithTitle:v21 style:1 handler:0];

    [v14 addAction:v22];
    v23 = [v14 popoverPresentationController];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1006D20F4();
      [v24 setBarButtonItem:v25];
    }

    [v16 presentViewController:v14 animated:1 completion:0];
  }

  else
  {
LABEL_13:

    sub_1006DC494();
  }
}

void sub_1006DEEF8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];

    UIEdgeInsets.vertical.getter();
    [v3 additionalSafeAreaInsets];
    UIEdgeInsets.vertical.getter();
    v9 = static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(2u, a1, a2, a3 & 1, 0);
    v11 = v10;
    [v3 preferredContentSize];
    if (v9 != v13 || v11 != v12)
    {
      [v3 setPreferredContentSize:{v9, v11}];
      v15 = [v3 navigationController];
      if (v15)
      {
        v16 = v15;
        [v15 setPreferredContentSize:{v9, v11}];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1006DF074()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 6)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillShowNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIKeyboardWillShowNotification, 0, 1, 1, sub_1006E17D0, v5);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    *&v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillHideNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIKeyboardWillHideNotification, 0, 1, 1, sub_1006E17D8, v6);
  }

  return result;
}

void sub_1006DF21C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    KeyboardAvoidance.init(notification:)(v20, v6);
    if (v21 != 2)
    {
      v24 = v20[2];
      v25 = v20[3];
      v26 = v20[4];
      v22 = v20[0];
      v23 = v20[1];
      v27 = v21;
      v9 = *&v8[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataHeaderView];
      if (v9)
      {
        v10 = swift_allocObject();
        v11 = v25;
        *(v10 + 48) = v24;
        *(v10 + 64) = v11;
        *(v10 + 80) = v26;
        *(v10 + 96) = v27;
        v12 = v23;
        *(v10 + 16) = v22;
        *(v10 + 32) = v12;
        *(v10 + 104) = v8;
        v13 = swift_allocObject();
        *(v13 + 16) = v8;
        *(v13 + 24) = v9;
        v14 = v25;
        *(v13 + 64) = v24;
        *(v13 + 80) = v14;
        *(v13 + 96) = v26;
        *(v13 + 112) = v27;
        v15 = v23;
        *(v13 + 32) = v22;
        *(v13 + 48) = v15;
        v16 = v9;
        v17 = v8;
        v18 = v16;
        KeyboardAvoidance.animate(alongsideKeyboard:completion:)(sub_1006E31EC, v10, sub_1006E1808, v13);

        return;
      }

      KeyboardAvoidance.animateContentScrollView(in:)(v8);
    }
  }
}

void sub_1006DF454(uint64_t a1, char *a2, void *a3)
{
  v41 = 1;
  sub_1006D2BA8();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v44);

  if (v44 == 1)
  {
    v5 = sub_1006D1794();
    [a3 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [a3 superview];
    [v5 convertRect:v14 fromView:{v7, v9, v11, v13}];
    v40 = v15;
    v17 = v16;

    v18 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView;
    [*&a2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView] adjustedContentInset];
    v20 = v19;
    v21 = [a2 view];
    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = v21;
    v39 = v17 - v20;
    [v21 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v48.origin.x = v24;
    v48.origin.y = v26;
    v48.size.width = v28;
    v48.size.height = v30;
    Width = CGRectGetWidth(v48);
    [*&a2[v18] adjustedContentInset];
    v41 = 0;
    if (qword_10117F800 != -1)
    {
      v38 = v32;
      swift_once();
      v32 = v38;
    }

    *&v33 = v40;
    *(&v33 + 1) = v39;
    v34 = v32 + *&qword_101218EC8;
  }

  else
  {
    v33 = 0uLL;
    Width = 0.0;
    v34 = 0.0;
  }

  v44 = v33;
  v45 = Width;
  v46 = v34;
  v47 = v41;
  KeyboardAvoidance.recommendedScrollRect(in:preferredVisibleRect:)(a2, &v44, v42);
  if ((v43 & 1) == 0)
  {
    v36 = *v42;
    v35 = *&v42[1];
    v37 = sub_1006D1794();
    [v37 setContentOffset:1 animated:{v36, v35}];
  }
}

double sub_1006DF6D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    KeyboardAvoidance.init(notification:)(v15, v6);
    if (v16 == 2)
    {
    }

    else
    {
      v19 = v15[2];
      v20 = v15[3];
      v21 = v15[4];
      v17 = v15[0];
      v18 = v15[1];
      v22 = v16;
      v10 = swift_allocObject();
      v11 = v20;
      *(v10 + 48) = v19;
      *(v10 + 64) = v11;
      *(v10 + 80) = v21;
      *(v10 + 96) = v22;
      v12 = v18;
      *(v10 + 16) = v17;
      *(v10 + 32) = v12;
      *(v10 + 104) = v9;
      v13 = v9;
      KeyboardAvoidance.animate(alongsideKeyboard:completion:)(sub_1006E17E0, v10, 0, 0);
    }
  }

  return result;
}

id sub_1006DF8B0(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaylistEditingViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1006DFAFC(uint64_t a1)
{
  type metadata accessor for Playlist();
  if (v1 <= 0x3F)
  {
    sub_1006E0700(319, &qword_10119EC80, &qword_10119EC88, &qword_100EDDAF8, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1006E2F7C(319, &qword_10119EC90, _s8MetadataO4ViewVMa, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1006E0700(319, &qword_10119EC98, qword_10119ECA0, &qword_100EDDB00, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1006DFD34(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin();
  _s8MetadataO4ViewVMa(0);
  __chkstk_darwin();
  sub_1006E1C24(a1, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(sub_10010FC20(&qword_10119EFD8, &qword_100EDE068));
  v8 = UIHostingController.init(rootView:)();
  v9 = [v8 view];
  if (!v9)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 invalidateIntrinsicContentSize];

  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v11 = [v8 parentViewController];
  if (v11 && (v12 = v11, sub_100009F78(0, &qword_101183D40, UIViewController_ptr), v13 = a2, v14 = static NSObject.== infix(_:_:)(), v12, v13, (v14 & 1) != 0))
  {
    v15 = 1;
  }

  else
  {
    [a2 addChildViewController:v8];
    v15 = 0;
  }

  v16 = [v3 subviews];
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = [v8 view];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;

  v23 = v19;
  __chkstk_darwin();
  *(&v22 - 2) = &v23;
  v20 = sub_10044B140(sub_1006E1C88, (&v22 - 4), v17);

  v21 = v8;
  if ((v20 & 1) == 0)
  {
    v21 = [v8 view];

    if (v21)
    {
      UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v21, 0);
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_10:

  if ((v15 & 1) == 0)
  {
    [v8 didMoveToParentViewController:a2];
  }
}

id sub_1006E0038(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for PlaylistEditingViewController.HeaderView(0, *((swift_isaMask & *v8) + 0x50), *((swift_isaMask & *v8) + 0x58), a8);
  v15.receiver = v8;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1006E00FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PlaylistEditingViewController.HeaderView(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1006E01C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PlaylistEditingViewController.HeaderView(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1006E0250()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1006E02C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1006E0338()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1006E03AC()
{
  v1 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource__isPresentingPicker;
  v2 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource__selectedTracks;
  v4 = sub_10010FC20(&qword_10119B4B8, &unk_100ED9E30);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource__suggestedSongsViewModel;
  v6 = sub_10010FC20(&unk_10119EF20, &qword_100EDDD60);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource_playlist, &unk_1011814D0, &qword_100EC12A0);

  return swift_deallocClassInstance();
}

void sub_1006E0534(uint64_t a1)
{
  sub_100008E30();
  if (v1 <= 0x3F)
  {
    sub_1006E0700(319, &qword_10119B390, &qword_10119ED90, &unk_100ECF7A0, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_1006E2F7C(319, &qword_10119ED98, &type metadata accessor for MusicSuggestedSongsViewModel, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_1006E2F7C(319, &qword_10119EDA0, &type metadata accessor for Playlist, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1006E0700(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1006E0764@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1006E07A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource_playlist;
  swift_beginAccess();
  return sub_1000089F8(v3 + v4, a1, &unk_1011814D0, &qword_100EC12A0);
}

uint64_t sub_1006E0818(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10055F0D4(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1006E0894@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  sub_10010FC20(&qword_10119EEF0, &qword_100ED30B0);
  __chkstk_darwin();
  v5 = (&v20 - v4);
  v6 = sub_10010FC20(&qword_10119EEF8, &qword_100EDDC70);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  __chkstk_darwin();
  v29 = &v20 - v8;
  v9 = type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource(0);
  v25 = type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource;
  sub_1006E1788(&unk_10119EF00, type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource, &unk_100EDDC38);

  v24 = v9;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v21 = a2;
  v22 = v35;
  v23 = v36;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v34);

  *v5 = v34;
  v10 = enum case for MusicPicker.Reason.editingPlaylist(_:);
  v11 = type metadata accessor for MusicPicker.Reason();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v5, v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  v13 = sub_10010FC20(&qword_101180F00, &qword_100ED9EF0);
  v14 = type metadata accessor for Track();
  v18 = sub_10011881C();
  v19 = sub_1006E1788(&qword_1011950F8, &type metadata accessor for Track, &protocol conformance descriptor for Track);
  View.musicPicker<A>(isPresented:selection:reason:onCompletion:)();

  sub_1000095E8(v5, &qword_10119EEF0, &qword_100ED30B0);
  v35 = v21;
  v30 = v13;
  v31 = v14;
  v32 = v18;
  v33 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1006E1788(&unk_10119EEE0, v25, &unk_100EDDBE4);
  v15 = v26;
  v16 = v29;
  View.musicPickerUserExperienceObserver<A>(_:)();

  return (*(v27 + 8))(v16, v15);
}

void sub_1006E0D14(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1006E0D94(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1006E0E08(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1006E0E88(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1006E0FD0(uint64_t a1)
{
  result = sub_1006E1788(&unk_10119EEE0, type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource, &unk_100EDDBE4);
  *(a1 + 8) = result;
  return result;
}

void sub_1006E1028(uint64_t a1, void *a2)
{
  type metadata accessor for Playlist();
  v4 = __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  v8 = objc_allocWithZone(type metadata accessor for PlaylistEditingViewController(0));
  v9 = a2;
  v10 = sub_1006E13A0(v6, a2);

  v11 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
  [v11 setModalPresentationStyle:2];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v11, 0, 1, 0, 0);
}

void sub_1006E1178(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1006E11F8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1006E1288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&unk_10119EF40, &unk_100EDDF60);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10002BC44(v7, v8);
      result = sub_10000F8B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_1006E13A0(uint64_t a1, void *a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___mainLayout] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___cancelNavigationBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___doneNavigationBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___deleteToolBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___addToolBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___metadataViewModel] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataHeaderView] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerDataSource] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_musicPickerSubscription] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editControllerEntriesSubscription] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataTitleSubscription] = 0;
  v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges] = 0;
  v5 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_dataSource;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_dataSource] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_currentUserUploadImage] = 0;
  v6 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___headerRegistration;
  v7 = sub_10010FC20(&qword_10119EC88, &qword_100EDDAF8);
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataView;
  v9 = _s8MetadataO4ViewVMa(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___cellRegistration;
  v11 = sub_10010FC20(qword_10119ECA0, &qword_100EDDB00);
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillShowNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillHideNotificationObserver] = 0;
  v12 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v2[v12], a1, v13);
  *&v2[v5] = a2;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for PlaylistEditingViewController(0);
  v15 = a2;
  v16 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v17 = String._bridgeToObjectiveC()();

  [v16 setTitle:v17];

  (*(v14 + 8))(a1, v13);
  return v16;
}

uint64_t sub_1006E1788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006E1838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1006DD994(a1, v4, v5, v6);
}

uint64_t sub_1006E18EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1006DE7EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1006E19AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1006DE6F0(a1, v4, v5, v6);
}

uint64_t sub_1006E1A70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1006DA354(a1, v4, v5, v7, v6);
}

uint64_t sub_1006E1B30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1006DAB1C(a1, v4, v5, v6);
}

uint64_t sub_1006E1C24(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataO4ViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1006E1CA8()
{
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___mainLayout) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___cancelNavigationBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___doneNavigationBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___deleteToolBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___addToolBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___metadataViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataHeaderView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_musicPickerSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editControllerEntriesSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataTitleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_currentUserUploadImage) = 0;
  v1 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___headerRegistration;
  v2 = sub_10010FC20(&qword_10119EC88, &qword_100EDDAF8);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataView;
  v4 = _s8MetadataO4ViewVMa(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___cellRegistration;
  v6 = sub_10010FC20(qword_10119ECA0, &qword_100EDDB00);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillShowNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillHideNotificationObserver) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006E1EDC(__n128 a1)
{
  v2 = type metadata accessor for Playlist.EditableComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  v10 = __chkstk_darwin();
  v12 = &v16 - v11;
  (*(v7 + 16))(v9, v1 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v6, v10);
  Playlist.editableComponents.getter();
  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_1000095E8(v12, &unk_10118D240, &unk_100EC8F50);
    v13 = 0;
  }

  else
  {
    static Playlist.EditableComponents.tracklist.getter();
    sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
    v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v14 = *(v3 + 8);
    v14(v5, v2);
    v14(v12, v2);
  }

  return v13 & 1;
}

uint64_t sub_1006E2168(__n128 a1)
{
  v2 = type metadata accessor for Playlist.EditableComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D240, &unk_100EC8F50);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v16 - v11;
  if ([v1 isEditing])
  {
    (*(v7 + 16))(v9, v1 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v6);
    Playlist.editableComponents.getter();
    (*(v7 + 8))(v9, v6);
    if ((*(v3 + 48))(v12, 1, v2) != 1)
    {
      static Playlist.EditableComponents.tracklist.getter();
      sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
      v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v14 = *(v3 + 8);
      v14(v5, v2);
      v14(v12, v2);
      return v13 & 1;
    }

    sub_1000095E8(v12, &unk_10118D240, &unk_100EC8F50);
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1006E2408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v31 = a1;
  v5 = type metadata accessor for Playlist();
  v32 = *(v5 - 8);
  __chkstk_darwin();
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v8 = &v29 - v7;
  v9 = sub_10010FC20(&qword_10119B4B8, &unk_100ED9E30);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v29 - v11;
  v13 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v29 - v15;
  v17 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource__isPresentingPicker;
  LOBYTE(v36) = 0;
  Published.init(initialValue:)();
  v18 = v13;
  v19 = v31;
  (*(v14 + 32))(v4 + v17, v16, v18);
  v20 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource__selectedTracks;
  v36 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
  Published.init(initialValue:)();
  v21 = v9;
  v22 = v32;
  (*(v10 + 32))(v4 + v20, v12, v21);
  v23 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource_playlist;
  v24 = *(v22 + 56);
  v24(v4 + OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource_playlist, 1, 1, v5);
  v25 = *(v22 + 16);
  v25(v8, v19, v5);
  v24(v8, 0, 1, v5);
  v26 = v33;
  swift_beginAccess();
  sub_10006B010(v8, v4 + v23, &unk_1011814D0, &qword_100EC12A0);
  swift_endAccess();
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    type metadata accessor for MusicSuggestedSongsViewModel();
    v25(v30, v19, v5);
    v27 = MusicSuggestedSongsViewModel.__allocating_init(playlist:)();
  }

  dispatch thunk of MusicSuggestedSongsViewModel.playlistEditViewModel.setter();
  swift_beginAccess();
  v35 = v27;
  type metadata accessor for MusicSuggestedSongsViewModel();
  Published.init(initialValue:)();
  swift_endAccess();
  (*(v22 + 8))(v19, v5);
  return v4;
}

uint64_t sub_1006E2810(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t sub_1006E2874(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1006D38D0(v8, a1, v4, v5, v6, v7);
}

uint64_t _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_1006E29C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1006D2380(a1, v4, v5, v6);
}

uint64_t sub_1006E2AAC(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1006E2B0C(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1006CD550(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1006E2C2C(uint64_t a1)
{
  v4 = *(sub_10010FC20(&unk_10119F040, &qword_100ECF3F0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_1006CE4A0(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_1006E2D44(uint64_t *a1)
{
  v3 = *(sub_10010FC20(&unk_10119F040, &qword_100ECF3F0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1006CF02C(a1, v1 + v4, v5);
}

unint64_t sub_1006E2DEC()
{
  result = qword_10119F0A0;
  if (!qword_10119F0A0)
  {
    sub_1001109D0(&qword_10118C2B0, &qword_100ECDEF0);
    sub_1006E1788(&unk_1011A4730, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F0A0);
  }

  return result;
}

void sub_1006E2EC8(uint64_t a1)
{
  type metadata accessor for Playlist.Entry();
  if (v1 <= 0x3F)
  {
    sub_1006E2F7C(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1006E2F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1006E2FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1006E305C()
{
  result = qword_10119F1B0;
  if (!qword_10119F1B0)
  {
    sub_1001109D0(&qword_10119F1A0, &qword_100EDE3E0);
    sub_100501E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F1B0);
  }

  return result;
}

unint64_t sub_1006E30E8()
{
  result = qword_10119F220;
  if (!qword_10119F220)
  {
    sub_1001109D0(&unk_10119F170, &unk_100EDE3C0);
    sub_100020674(&qword_10119F1C8, &qword_10119F168, &qword_100EDE3B8, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&qword_10119F1D0, &qword_10119F150, &qword_100EDE3A0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F220);
  }

  return result;
}

unint64_t sub_1006E3204()
{
  result = qword_10119F230;
  if (!qword_10119F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F230);
  }

  return result;
}

uint64_t sub_1006E3258()
{
  sub_1005FF400();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1006E3294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  sub_1001109D0(&qword_10119F2C0, &qword_100EDE660);
  v4 = type metadata accessor for ModifiedContent();
  v80 = *(type metadata accessor for _ConditionalContent() - 8);
  __chkstk_darwin();
  v79 = &v73 - v5;
  v85 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v73 - v8;
  v84 = v9;
  v10 = type metadata accessor for _ConditionalContent();
  v83 = *(v10 - 8);
  __chkstk_darwin();
  v82 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v73 - v12;
  v13 = type metadata accessor for UserInterfaceSizeClass();
  v93 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v73 - v16;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v19 = (&v73 - v18);
  v90 = v10;
  v20 = type metadata accessor for _ConditionalContent();
  v88 = *(v20 - 8);
  v89 = v20;
  __chkstk_darwin();
  v87 = &v73 - v21;
  v22 = v2;
  sub_10056CAE4(v19);
  v23 = v93;
  if ((*(v93 + 48))(v19, 1, v13) == 1)
  {
    sub_1006E3D6C(a1, 0);
    v24 = *(a1 + 24);
    v25 = sub_1006E4100();
    v124 = v24;
    v125 = v25;
    WitnessTable = swift_getWitnessTable();
    sub_100663950();
    v27 = *(v85 + 8);
    v27(v7, v4);
    sub_100663950();
    v122 = WitnessTable;
    v123 = WitnessTable;
    v120 = swift_getWitnessTable();
    v121 = WitnessTable;
    v28 = v90;
    v29 = swift_getWitnessTable();
    v30 = v87;
    sub_100653970(v7, v28, v4, v29, WitnessTable);
    v27(v7, v4);
    v27(v92, v4);
    v31 = v30;
  }

  else
  {
    v75 = v4;
    v76 = a1;
    v81 = v22;
    v32 = v7;
    v33 = v84;
    (*(v23 + 32))(v17, v19, v13);
    (*(v23 + 16))(v15, v17, v13);
    v34 = *(v23 + 88);
    v78 = v13;
    v35 = v34(v15, v13);
    v77 = v17;
    if (v35 == enum case for UserInterfaceSizeClass.compact(_:))
    {
      v36 = v32;
      v37 = v76;
      sub_1006E3D6C(v76, 0);
      v38 = *(v37 + 24);
      v39 = sub_1006E4100();
      v81 = v38;
      v100 = v38;
      v101 = v39;
      v40 = v75;
      v41 = swift_getWitnessTable();
      v42 = v92;
      sub_100663950();
      v43 = *(v85 + 8);
      v43(v32, v40);
      sub_100663950();
      v44 = v79;
      sub_100653970(v36, v40, v40, v41, v41);
      v98 = v41;
      v99 = v41;
      v45 = swift_getWitnessTable();
      sub_100653878(v44, v33, v40, v45, v41);
      (*(v80 + 8))(v44, v33);
      v43(v36, v40);
      v43(v42, v40);
    }

    else
    {
      v74 = v15;
      v46 = (v85 + 8);
      v47 = v33;
      v48 = v92;
      v40 = v75;
      v49 = v76;
      if (v35 == enum case for UserInterfaceSizeClass.regular(_:))
      {
        sub_1006E3D6C(v76, 1);
        v50 = *(v49 + 24);
        v51 = sub_1006E4100();
        v81 = v50;
        v96 = v50;
        v97 = v51;
        v52 = swift_getWitnessTable();
        sub_100663950();
        v53 = *v46;
        (*v46)(v32, v40);
        sub_100663950();
        v54 = v79;
        sub_100653878(v32, v40, v40, v52, v52);
        v94 = v52;
        v95 = v52;
        v55 = swift_getWitnessTable();
        sub_100653878(v54, v47, v40, v55, v52);
        (*(v80 + 8))(v54, v47);
        v53(v32, v40);
        v53(v48, v40);
      }

      else
      {
        sub_1006E3D6C(v76, 0);
        v56 = *(v49 + 24);
        v57 = sub_1006E4100();
        v81 = v56;
        v110 = v56;
        v111 = v57;
        v58 = swift_getWitnessTable();
        sub_100663950();
        v59 = *v46;
        (*v46)(v32, v40);
        sub_100663950();
        v108 = v58;
        v109 = v58;
        v60 = swift_getWitnessTable();
        sub_100653970(v32, v47, v40, v60, v58);
        v59(v32, v40);
        v59(v48, v40);
        (*(v93 + 8))(v74, v78);
      }
    }

    v61 = v90;
    v31 = v87;
    v62 = sub_1006E4100();
    v106 = v81;
    v107 = v62;
    v63 = swift_getWitnessTable();
    v104 = v63;
    v105 = v63;
    v102 = swift_getWitnessTable();
    v103 = v63;
    v64 = swift_getWitnessTable();
    v65 = v82;
    v66 = v86;
    sub_100663950();
    sub_100653878(v65, v61, v40, v64, v63);
    v67 = *(v83 + 8);
    v67(v65, v61);
    v68 = v66;
    v24 = v81;
    v67(v68, v61);
    (*(v93 + 8))(v77, v78);
  }

  v69 = sub_1006E4100();
  v118 = v24;
  v119 = v69;
  v70 = swift_getWitnessTable();
  v116 = v70;
  v117 = v70;
  v114 = swift_getWitnessTable();
  v115 = v70;
  v112 = swift_getWitnessTable();
  v113 = v70;
  v71 = v89;
  swift_getWitnessTable();
  sub_100663950();
  return (*(v88 + 8))(v31, v71);
}

uint64_t sub_1006E3D6C(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*v2)(v9, v6);
  swift_getKeyPath();
  v11[15] = a2;
  View.environment<A>(_:_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1006E3E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v6 = *(type metadata accessor for AdaptativeContainer(0, a3, a4, a4) + 36);
  *(a5 + v6) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1006E3F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1006E3F74();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_1006E3F74()
{
  result = qword_10119F238[0];
  if (!qword_10119F238[0])
  {
    sub_1001109D0(&unk_1011891F8, qword_100EDB130);
    sub_1006E3204();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10119F238);
  }

  return result;
}

void sub_1006E4010(uint64_t a1)
{
  sub_10001F7E8();
  if (v1 <= 0x3F)
  {
    sub_100237820(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1006E4100()
{
  result = qword_10119F2C8;
  if (!qword_10119F2C8)
  {
    sub_1001109D0(&qword_10119F2C0, &qword_100EDE660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F2C8);
  }

  return result;
}

unint64_t sub_1006E42D0(void *a1, void *a2, uint64_t a3)
{
  v72 = a3;
  v74 = a1;
  v77 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v76 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117F7A0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    v6 = sub_1000060E4(v5, qword_101218E00);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v10 = v9;
    v11 = os_log_type_enabled(v8, v9);
    v75 = v7;
    if (v11)
    {
      v12 = v6;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v79[0] = v14;
      *v13 = 136446210;
      v15 = v7;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000105AC(v17, v19, v79);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v8, v10, "╭ NavigationStack for tab=%{public}s", v13, 0xCu);
      sub_10000959C(v14);

      v6 = v12;
    }

    v21 = v72;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v66 = v6;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v79[0] = v26;
      *v25 = 136446210;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v27 = Array.description.getter();
      v29 = sub_1000105AC(v27, v28, v79);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "| proposedViewControllers=%{public}s", v25, 0xCu);
      sub_10000959C(v26);
    }

    v30 = v75;
    v31 = v21;
    v79[0] = _swiftEmptyArrayStorage;
    if (v21 >> 62)
    {
      break;
    }

    a2 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_23;
    }

LABEL_8:
    v32 = 0;
    v33 = v21 & 0xC000000000000001;
    v34 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v33)
      {
        v35 = sub_10004056C(v32, v31);
      }

      else
      {
        if (v32 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v35 = *(v31 + 8 * v32 + 32);
      }

      v36 = v35;
      v37 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v78 = v35;
      if (sub_1006E4BA8(&v78, v30, v74))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v30 = v75;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v31 = v72;
      }

      else
      {
      }

      ++v32;
      if (v37 == a2)
      {
        v38 = v79[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  a2 = _CocoaArrayWrapper.endIndex.getter();
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_23:
  v38 = _swiftEmptyArrayStorage;
LABEL_24:
  v39 = [v74 traitCollection];
  v40 = [v39 userInterfaceIdiom];

  if (v40)
  {
    if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
    {
      goto LABEL_47;
    }

    for (i = *(v38 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v42 = 0;
      v74 = (v38 & 0xC000000000000001);
      v65 = "LibraryView.Shows";
      v69 = 0x8000000100E3C290;
      v43 = &protocol witness table for UITraitOverrides;
      v68 = "LibraryView.Songs";
      v70 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent;
      v71 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary;
      v67 = "nt";
      v64[9] = "LibraryView.Playlists";
      v64[10] = "LibraryView.RecentlyAdded";
      v64[7] = "LibraryView.Albums";
      v64[8] = "LibraryView.Artists";
      v64[6] = "LibraryView.MadeForYou";
      v64[5] = "LibraryView.MusicVideos";
      v64[4] = "LibraryView.Genres";
      v64[3] = "LibraryView.Compilations";
      v64[2] = "LibraryView.Composers";
      v64[1] = "LibraryView.Downloaded";
      v72 = i;
      while (1)
      {
        if (v74)
        {
          v45 = sub_10004056C(v42, v38);
        }

        else
        {
          if (v42 >= *(v38 + 16))
          {
            goto LABEL_46;
          }

          v45 = *(v38 + 8 * v42 + 32);
        }

        v46 = v45;
        v47 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        v48 = v38;
        v49 = v73;
        v50 = *(v73 + v71);

        UIViewController.traitOverrides.getter();
        v79[0] = v50;
        sub_100137E8C();
        v51 = v43;
        dispatch thunk of UIMutableTraits.subscript.setter();
        UIViewController.traitOverrides.setter();
        v52 = *(v49 + v70);
        _s8FacetTabCMa();
        v53 = swift_dynamicCastClass();
        if (v53)
        {
          v54 = v68;
          v38 = v48;
          switch(*(v53 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier))
          {
            case 5:
              goto LABEL_41;
            case 0xB:
              v54 = v65;
LABEL_41:
              if ((v54 | 0x8000000000000000) != v69)
              {
                goto LABEL_42;
              }

              goto LABEL_30;
            default:
LABEL_42:
              v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (((v55 | v52) & 1) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_30;
          }
        }

        v38 = v48;
        if (v52)
        {
LABEL_30:
          v44 = sub_10010E29C(&off_10109C208);
        }

        else
        {
LABEL_43:
          v44 = &_swiftEmptySetSingleton;
        }

        UIViewController.traitOverrides.getter();
        v79[0] = v44;
        sub_100217F14();
        v43 = v51;
        dispatch thunk of UIMutableTraits.subscript.setter();
        UIViewController.traitOverrides.setter();

        ++v42;
        if (v47 == v72)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }
  }

LABEL_48:

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v79[0] = v59;
    *v58 = 136446210;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v60 = Array.description.getter();
    v62 = sub_1000105AC(v60, v61, v79);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v56, v57, "╰ Returning effectiveViewControllers=%{public}s", v58, 0xCu);
    sub_10000959C(v59);
  }

  return v38;
}

uint64_t sub_1006E4BA8(void **a1, void *a2, void *a3)
{
  v5 = *a1;
  if (sub_1003FF32C())
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_101218E00);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v44 = v11;
      *v10 = 136446210;
      v12 = v7;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_1000105AC(v14, v16, &v44);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "| ❌ viewController should be removed from stack: %{public}s", v10, 0xCu);
      sub_10000959C(v11);
    }

    return 0;
  }

  type metadata accessor for MusicTab.Group();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    return 1;
  }

  v20 = v19;
  v21 = a2;
  v22 = [a3 selectedTab];
  if (v22)
  {
    v23 = v22;
    sub_100009F78(0, &qword_101181F70, UITab_ptr);
    v24 = v21;
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {

      return 1;
    }
  }

  v26 = v5;
  v27 = [v21 viewController];
  if (!v27)
  {

    goto LABEL_19;
  }

  v28 = v27;
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v29 = static NSObject.== infix(_:_:)();

  if ((v29 & 1) == 0)
  {
LABEL_19:

    return 1;
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000060E4(v30, qword_101218E00);
  v31 = v26;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    buf = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *buf = 136446210;
    v34 = v31;
    v35 = [v34 description];
    v41 = v33;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_1000105AC(v36, v38, &v44);

    *(buf + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v41, "| ❌ viewController is not displayable: %{public}s", buf, 0xCu);
    sub_10000959C(v43);
  }

  v40 = (*((swift_isaMask & *v20) + 0x58))(a3);
  return v40 & 1;
}

id sub_1006E52A0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  v14 = a6(v12);

  return v14;
}

void sub_1006E5330(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup);
  sub_100009F78(0, &qword_10118DF60, UITabGroup_ptr);
  v4 = v3;
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {

    sub_1003DCE8C(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {

      sub_1003DB364();
    }

    else
    {
      if (qword_10117F7B0 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000060E4(v8, qword_101218E30);
      v9 = a1;
      oslog = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v20 = v12;
        *v11 = 136446210;
        v13 = v9;
        v14 = [v13 description];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_1000105AC(v15, v17, &v20);

        *(v11 + 4) = v18;
        sub_10000959C(v12);
      }
    }
  }
}

void sub_1006E55A0(void *a1)
{
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v3 = &v20 - v2;
  v4 = type metadata accessor for MusicPin();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Track();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6PinTabCMa(0);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
    v14 = v12;
    swift_beginAccess();
    (*(v5 + 16))(v7, v14 + v13, v4);
    v15 = a1;
    sub_1003121A8(v3);
    (*(v5 + 8))(v7, v4);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_1006E6824(v3);
    }

    else
    {
      (*(v9 + 32))(v11, v3, v8);
      v16 = [v15 viewController];
      if (v16)
      {
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = swift_conformsToProtocol2();
        if (v19)
        {
          (*(v19 + 56))(v11, ObjectType, v19);
        }

        (*(v9 + 8))(v11, v8);
      }

      else
      {
        (*(v9 + 8))(v11, v8);
      }
    }
  }
}

id sub_1006E58A8(void *a1)
{
  v92 = a1;
  v2 = type metadata accessor for UICellConfigurationState();
  v89 = *(v2 - 8);
  __chkstk_darwin();
  v88 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for UITabSidebarItem.Content();
  v93 = *(v94 - 8);
  __chkstk_darwin();
  v87[1] = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = (v87 - v5);
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v7 = *(v6 - 8);
  v102 = v6;
  v103 = v7;
  __chkstk_darwin();
  v9 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v87 - v10;
  v12 = type metadata accessor for UIListContentConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v87 - v16;
  v18 = [objc_opt_self() itemFromRequest:a1];
  UITabSidebarItem.defaultContentConfiguration()();
  v106 = v2;
  v107 = &protocol witness table for UICellConfigurationState;
  sub_10001C8B8(v105);
  UITabSidebarItem.configurationState.getter();
  v100 = v17;
  v19 = v13;
  v20 = v101;
  UIListContentConfiguration.updated(for:)();
  v21 = *(v19 + 8);
  v22 = v15;
  v23 = v102;
  v97 = v19 + 8;
  v98 = v12;
  v96 = v21;
  v21(v22, v12);
  sub_10000959C(v105);
  UITabSidebarItem.defaultBackgroundConfiguration()();
  v90 = v2;
  v106 = v2;
  v107 = &protocol witness table for UICellConfigurationState;
  v24 = v93;
  sub_10001C8B8(v105);
  UITabSidebarItem.configurationState.getter();
  v99 = v11;
  UIBackgroundConfiguration.updated(for:)();
  v25 = v9;
  v26 = v94;
  v27 = *(v103 + 8);
  v95 = v25;
  v27();
  sub_10000959C(v105);
  UITabSidebarItemRequest.content.getter();
  v28 = v24[11](v20, v26);
  if (v28 == enum case for UITabSidebarItem.Content.tab(_:))
  {
    v24[12](v20, v26);
    v29 = *v20;
    swift_getObjectType();
    v30 = swift_conformsToProtocol2();
    if (v30 && v29)
    {
      v31 = v30;
      v91 = v27;
      ObjectType = swift_getObjectType();
      v33 = (*(v31 + 16))(ObjectType, v31);
      v34 = v100;
      if (v33)
      {
        UITabSidebarItem.accessories.setter();
      }

      v35 = v88;
      UITabSidebarItem.configurationState.getter();
      (*(v31 + 24))(v34, v35, ObjectType, v31);

      v36 = v35;
      v37 = v34;
      (*(v89 + 8))(v36, v90);
      goto LABEL_24;
    }

    v37 = v100;
  }

  else
  {
    v91 = v27;
    if (v28 == enum case for UITabSidebarItem.Content.action(_:))
    {
      v24[12](v20, v26);
      v101 = *v20;
      v38 = [v101 identifier];
      v37 = v100;
      if (qword_10117FC90 != -1)
      {
        swift_once();
      }

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
      if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
      {
      }

      else
      {
        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v53 & 1) == 0)
        {

LABEL_24:
          v27 = v91;
          goto LABEL_25;
        }
      }

      v54 = [objc_opt_self() defaultMetrics];
      [v54 scaledValueForValue:28.0];
      v56 = v55;
      [v54 scaledValueForValue:28.0];

      v57 = UIListContentConfiguration.imageProperties.modify();
      v58 = UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify();
      *v59 = v56;
      v58(v104, 0);
      v57(v105, 0);
      v60 = objc_opt_self();
      v61 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      [v61 scaledValueForValue:25.0];
      v63 = v62;

      v64 = [v60 systemFontOfSize:v63 weight:UIFontWeightLight];
      v93 = objc_opt_self();
      v65 = [v93 configurationWithFont:v64 scale:3];

      v66 = v65;
      v67 = v88;
      UITabSidebarItem.configurationState.getter();
      v68 = UICellConfigurationState.isEditing.getter();
      (*(v89 + 8))(v67, v90);
      v69 = objc_opt_self();
      v70 = &selRef_systemGrayColor;
      if ((v68 & 1) == 0)
      {
        v70 = &selRef_tintColor;
      }

      v71 = [v69 *v70];
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100EBE270;
      *(v72 + 32) = v71;
      v73 = v18;
      v74 = objc_opt_self();
      v75 = v71;
      v94 = v19;
      v76 = v75;
      *(v72 + 40) = [v74 clearColor];
      v77 = v74;
      v18 = v73;
      *(v72 + 48) = [v77 tertiarySystemFillColor];
      sub_100009F78(0, &qword_101180C98, UIColor_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v23 = v102;

      v79 = [v93 _configurationWithHierarchicalColors:isa];

      v80 = [v66 configurationByApplyingConfiguration:v79];
      v81 = v80;
      v82 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
      v82(v105, 0);

      v19 = v94;
      goto LABEL_24;
    }

    v37 = v100;
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000060E4(v43, qword_101218E00);
    v92 = v18;
    v44 = v18;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      v48 = v105[0];
      *v47 = 136446210;
      LODWORD(v90) = v46;
      UITabSidebarItem.content.getter();
      v49 = String.init<A>(describing:)();
      v51 = v24;
      v52 = sub_1000105AC(v49, v50, v105);

      *(v47 + 4) = v52;
      v24 = v51;
      _os_log_impl(&_mh_execute_header, v45, v90, "Unhandled sidebar item content type %{public}s", v47, 0xCu);
      sub_10000959C(v48);
      v37 = v100;

      v23 = v102;
    }

    v27 = v91;
    v24[1](v101, v26);
    v18 = v92;
  }

LABEL_25:
  v83 = v98;
  v106 = v98;
  v107 = &protocol witness table for UIListContentConfiguration;
  v84 = sub_10001C8B8(v105);
  (*(v19 + 16))(v84, v37, v83);
  UITabSidebarItem.contentConfiguration.setter();
  v85 = v99;
  (*(v103 + 16))(v95, v99, v23);
  UITabSidebarItem.backgroundConfiguration.setter();
  (v27)(v85, v23);
  v96(v37, v83);
  return v18;
}

uint64_t sub_1006E642C(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2 || !a1)
  {
    return 0;
  }

  v3 = v2;
  v4 = qword_10117F7A0;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101218E00);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1000105AC(v14, v16, &v21);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Building trailing swipe actions for tab=%{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  ObjectType = swift_getObjectType();
  v19 = (*(v3 + 32))(ObjectType, v3);

  return v19;
}

uint64_t sub_1006E6628(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2 || !a1)
  {
    return 0;
  }

  v3 = v2;
  v4 = qword_10117F7A0;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101218E00);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1000105AC(v14, v16, &v21);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Building context menu configuration for tab=%{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  ObjectType = swift_getObjectType();
  v19 = (*(v3 + 40))(ObjectType, v3);

  return v19;
}

uint64_t sub_1006E6824(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1006E688C()
{
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v1 = &v9 - v0;
  v2 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_10118CDC0, &unk_100EC89D0);
    return 1;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118CDD0, &unk_100EC89E0);
    v7 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

BOOL sub_1006E6A78()
{
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v1 = &v9 - v0;
  v2 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_1011846C0, &unk_100ED13F0);
    return 1;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118D1E0, &unk_100EC03B0);
    v7 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

BOOL sub_1006E6C64()
{
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v1 = &v9 - v0;
  v2 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&qword_10118D1C8, &unk_100EC8EE8);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &qword_10118D1B8, &qword_100EC8ED8);
    return 1;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &qword_10118D1C8, &unk_100EC8EE8);
    v7 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

BOOL sub_1006E6E50()
{
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v1 = &v9 - v0;
  v2 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_1011846E0, &qword_100EC8E40);
    return 1;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_101184700, &unk_100EC03C0);
    v7 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

uint64_t sub_1006E703C()
{
  v0 = type metadata accessor for Artist();
  v19 = *(v0 - 8);
  v20 = v0;
  __chkstk_darwin();
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Composer();
  v21 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Genre();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006F4654(v22, v11, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v17 = v21;
      (*(v21 + 32))(v5, v11, v3);
      v13 = Composer.name.getter();
      (*(v17 + 8))(v5, v3);
    }

    else
    {
      (*(v7 + 32))(v9, v11, v6);
      v13 = Genre.name.getter();
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    v15 = v19;
    v14 = v20;
    (*(v19 + 32))(v2, v11, v20);
    v13 = Artist.name.getter();
    (*(v15 + 8))(v2, v14);
  }

  return v13;
}

char *sub_1006E7454(uint64_t a1, int a2)
{
  v3 = v2;
  v47 = a2;
  v45 = a1;
  v4 = 0xD000000000000013;
  *&v48 = swift_getObjectType();
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v44 - v8;
  __chkstk_darwin();
  v11 = &v44 - v10;
  v12 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___globalHeaderRegistration;
  v13 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v14 = *(*(v13 - 8) + 56);
  v14(&v3[v12], 1, 1, v13);
  v14(&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___headerRegistration], 1, 1, v13);
  v15 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___gridCellRegistration;
  v16 = sub_10010FC20(&qword_101184578, &qword_100EC02B8);
  (*(*(v16 - 8) + 56))(&v3[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___listCellRegistration;
  v18 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView] = 0;
  v19 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_prefetchingController;
  v20 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v3[v19] = sub_10003AAD8(0xD00000000000001DLL, 0x8000000100E55670);
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_dragDropController] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController] = 0;
  v21 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___actionMetricsReportingContext;
  v22 = type metadata accessor for Actions.MetricsReportingContext(0);
  v23 = &v3[v21];
  v24 = v45;
  (*(*(v22 - 8) + 56))(v23, 1, 1, v22);
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___shuffleBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroup] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextAndFilterBarButtonGroup] = 0;
  sub_1006F4654(v24, &v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_scope], _s6AlbumsV5ScopeOMa);
  sub_1006F4654(v24, v11, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v26 = 0x8000000100E41720;
      sub_1006F46CC(v11, _s6AlbumsV5ScopeOMa);
      v4 = 0xD000000000000010;
    }

    else
    {
      sub_1006F46CC(v11, _s6AlbumsV5ScopeOMa);
      v26 = 0xED00007365726E65;
      v4 = 0x477972617262694CLL;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v26 = 0x8000000100E41700;
    sub_1006F46CC(v11, _s6AlbumsV5ScopeOMa);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v4 = 0x417972617262694CLL;
    v26 = 0xED0000736D75626CLL;
  }

  else
  {
    v26 = 0x8000000100E41740;
  }

  v27 = v48;
  v28 = v47;
  _s23LayoutVariantControllerCMa();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_layoutVariantController] = sub_10059A684(v4, v26, 0);
  sub_1006F4654(v24, v9, _s6AlbumsV5ScopeOMa);
  v29 = v28 & 1;
  v30 = v46;
  sub_1002884E4(v9, v29, v46);
  sub_10010FC20(&qword_101184618, &unk_100EC0350);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController] = sub_1003A1E94(v30);
  v49.receiver = v3;
  v49.super_class = v27;
  v31 = objc_msgSendSuper2(&v49, "initWithNibName:bundle:", 0, 0);
  sub_1006E703C();
  v32 = String._bridgeToObjectiveC()();

  [v31 setTitle:v32];

  sub_1006F4654(v31 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_scope, v9, _s6AlbumsV5ScopeOMa);
  swift_storeEnumTagMultiPayload();
  v33 = sub_10028C5F4(v9, v7);
  sub_1006F46CC(v7, _s6AlbumsV5ScopeOMa);
  sub_1006F46CC(v9, _s6AlbumsV5ScopeOMa);
  if (v33)
  {
    v34 = 3;
  }

  else
  {
    v34 = 1;
  }

  UIViewController.playActivityFeatureIdentifier.setter(v34);
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v35 = swift_allocObject();
  v48 = xmmword_100EBC6B0;
  *(v35 + 16) = xmmword_100EBC6B0;
  v36 = sub_100217F14();
  *(v35 + 32) = &type metadata for LibraryFilterTrait;
  *(v35 + 40) = v36;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v37 = swift_allocObject();
  *(v37 + 16) = v48;
  v38 = sub_100137E8C();
  *(v37 + 32) = &type metadata for MusicLibraryTrait;
  *(v37 + 40) = v38;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v39 = [v31 traitCollection];

  v40 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  LOBYTE(v37) = v41;

  if ((v37 & 1) == 0)
  {
    v42 = [v31 navigationItem];
    [v42 setLargeTitleDisplayMode:v40];
  }

  sub_1006F46CC(v24, _s6AlbumsV5ScopeOMa);
  return v31;
}

void sub_1006E7BC8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v59.receiver = v0;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "viewDidLoad");
  v3 = sub_1006E8204();
  v4 = sub_1006E85EC();
  [v3 setCollectionViewLayout:v4];

  v5 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView;
  v6 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_prefetchingController];
  [*&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView] setPrefetchDataSource:v6];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  v9 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v10 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v11 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider + 8);
  *v9 = sub_1006F4734;
  v9[1] = v8;

  sub_100020438(v10, v11);

  v12 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v13 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v14 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8);
  *v12 = sub_1006E8B3C;
  v12[1] = 0;
  sub_100020438(v13, v14);
  sub_1006E9010();
  v15 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_layoutVariantController];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v15 + 16);
  v18 = *(v15 + 24);
  *(v15 + 16) = sub_1006F473C;
  *(v15 + 24) = v16;

  sub_100020438(v17, v18);

  v19 = *&v1[v5];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = &v19[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v22 = *&v19[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v23 = *&v19[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate + 8];
  *v21 = sub_1006F4748;
  v21[1] = v20;
  v24 = v19;

  sub_100020438(v22, v23);

  v25 = sub_1006E935C();
  v26 = [v1 traitCollection];
  v27 = [v26 horizontalSizeClass];

  [*(v25 + 32) setHidesNavigationBarDuringPresentation:v27 == 1];

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  *(v28 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v29 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v29[2];
  v32 = v29[3];
  v29[2] = sub_1006F4750;
  v29[3] = v30;

  sub_100020438(v31, v32);

  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v29[4];
  v35 = v29[5];
  v29[4] = sub_1006F4758;
  v29[5] = v33;

  sub_100020438(v34, v35);

  v36 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = *(v36 + 88);
  v39 = *(v36 + 96);
  *(v36 + 88) = sub_1006F4760;
  *(v36 + 96) = v37;

  sub_100020438(v38, v39);

  v40 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v55[3] = v40;
  v41 = sub_10001C8B8(v55);
  sub_1006EAC58(v41);
  v56[3] = v40;
  v42 = sub_10001C8B8(v56);
  sub_1006EAEDC(v42);
  v57[3] = sub_10010FC20(&qword_101184578, &qword_100EC02B8);
  v43 = sub_10001C8B8(v57);
  sub_1006EB164(v43);
  v58[3] = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  v44 = sub_10001C8B8(v58);
  sub_1006EB3DC(v44);
  swift_arrayDestroy();
  v45 = *&v1[v5];
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0u;
  *(v47 + 40) = 0u;
  *(v47 + 56) = 0u;
  *(v47 + 72) = 0u;
  *(v47 + 88) = 1;
  *(v47 + 96) = 0;
  v48 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v49 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
  *(v47 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v47 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v47 + 16) = v45;
  *(v47 + 24) = sub_1006F4768;
  *(v47 + 32) = v46;
  *(v47 + 40) = 0;
  v50 = *(v47 + 56);
  v51 = *(v47 + 64);
  *(v47 + 64) = 0;
  *(v47 + 48) = 0;
  *(v47 + 56) = 0;
  v52 = v45;
  swift_retain_n();
  sub_100020438(v50, v51);
  v53 = *(v47 + 72);
  v54 = *(v47 + 80);
  *(v47 + 72) = 0;
  *(v47 + 80) = 0;
  sub_100020438(v53, v54);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_dragDropController] = v47;

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
}

id sub_1006E8204()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView];
LABEL_6:
    v44 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v46.receiver = v16;
    v46.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v46, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v45.receiver = v27;
    v45.super_class = v14;
    objc_msgSendSuper2(&v45, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = sub_1006ED700();
      v42 = UIView.withAccessibilityIdentifier(_:)(v38, v39, v40, v41);

      v43 = *&v1[v10];
      *&v1[v10] = v42;
      v12 = v42;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1006E85EC()
{
  v1 = sub_1006E8204();
  v2 = v1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*&v0[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_layoutVariantController] + 32);
  }

  v4 = *&v0[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView];
  v5 = [v0 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v3)
  {
    v7 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    if (v6 == 1)
    {
      v9 = objc_opt_self();
      v10 = [v9 fractionalWidthDimension:1.0];
      v11 = [v9 estimatedDimension:65.0];
      v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

      UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

      v13 = String._bridgeToObjectiveC()();

      v14 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:v13 alignment:1];

      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100EBC6C0;
      *(v15 + 32) = v14;
      sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
      v16 = v14;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 setBoundarySupplementaryItems:isa];

      v18 = *(v8 + 16);
      *(v8 + 16) = v16;
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
    *(v20 + 80) = 0;
    *(v20 + 88) = v8;
    v21 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v26[4] = sub_1002193FC;
    v26[5] = v20;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_1005A63A8;
    v26[3] = &unk_1010BBA88;
    v22 = _Block_copy(v26);

    v23 = [v21 initWithSectionProvider:v22 configuration:v7];

    _Block_release(v22);

    return v23;
  }

  else
  {
    v25 = sub_10059B450(v4, v6 == 1, static MPCPlayerCommandRequest.isAvailable(in:), 0);

    return v25;
  }
}

void sub_1006E89D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1006E8204();
    v8 = v7[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if ((v8 & 1) != 0 || *(*&v6[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_layoutVariantController] + 32) == 1)
    {
      v9 = [objc_opt_self() currentTraitCollection];
      [v9 displayScale];
    }

    else
    {
      v10 = *&v6[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView];
      v11 = sub_100189858();

      v11(a1, a2);
    }
  }
}

unint64_t sub_1006E8B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin();
  v6 = &v25 - v5;
  v7 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = type metadata accessor for Album();
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184720, &qword_100EC03D8);
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v25 - v18;
  sub_1000089F8(a1, v31, &unk_101183F30, qword_100EBF960);
  if (!v32)
  {
    sub_1000095E8(v31, &unk_101183F30, qword_100EBF960);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_7;
  }

  v20 = swift_dynamicCast();
  (*(v17 + 56))(v15, v20 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_7:
    sub_1000095E8(v15, &unk_101184720, &qword_100EC03D8);
    v24 = type metadata accessor for Artwork();
    return (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  }

  (*(v17 + 32))(v19, v15, v16);
  v21 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v21 + 16))
  {
    (*(v8 + 16))(v10, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v23 = v28;
    MusicItemCollection.subscript.getter();
    (*(v27 + 8))(v6, v23);
    Album.artwork.getter();
    (*(v25 + 8))(v13, v26);
    return (*(v17 + 8))(v19, v16);
  }

  __break(1u);
  return result;
}

void sub_1006E9010()
{
  v1 = v0;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  *(v2 + 32) = sub_1006F2564();
  v3 = [v0 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 != 1)
  {
    LOBYTE(v4) = sub_100395798();
  }

  v5 = sub_1006F24EC();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007E953C(v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 setHidden:v4 & 1];

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v12 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups];

  sub_1003BBFC8(0, 0, v12);

  v13 = [v1 navigationItem];
  sub_100009F78(0, &unk_1011842F0, UIBarButtonItemGroup_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setTrailingItemGroups:isa];
}

void sub_1006E9240(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1006E8204();
    v5 = sub_1006E85EC();

    sub_100189E04(v5);
  }
}

void sub_1006E92C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((*(a1 + 56) ^ *(a2 + 56)))
    {
      v7 = sub_1006E8204();
      v8 = sub_1006E85EC();
      sub_100189E04(v8);
    }
  }
}

uint64_t sub_1006E935C()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1006E9400(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin();
  v8 = &v40 - v7;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v40 - v11;
  v48 = *(sub_10010FC20(&unk_101184720, &qword_100EC03D8) - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v15 = &v40 - v14;
  __chkstk_darwin();
  v45 = &v40 - v16;
  __chkstk_darwin();
  v50 = &v40 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v40 = v8;
  v41 = v15;
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = a3;
  RequestResponse.Revision.content.getter(v12);
  v18 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  v19 = *(*(v18 - 8) + 48);
  if (v19(v12, 1, v18) == 1)
  {
    sub_1000095E8(v12, &unk_1011846E0, &qword_100EC8E40);
    v20 = 1;
    v21 = v50;
    v23 = v46;
    v22 = v47;
  }

  else
  {
    v23 = v46;
    v22 = v47;
    v21 = v50;
    (v46[2].isa)(v50, v12, v47);
    sub_1000095E8(v12, &unk_101184700, &unk_100EC03C0);
    v20 = 0;
  }

  (v23[7].isa)(v21, v20, 1, v22);
  v47 = sub_1006E8204();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  if (v19(v10, 1, v18) == 1)
  {
    sub_1000095E8(v10, &unk_1011846E0, &qword_100EC8E40);
    v46 = 0;
  }

  else
  {
    v25 = v40;
    (v23[2].isa)(v40, v10, v22);
    sub_1000095E8(v10, &unk_101184700, &unk_100EC03C0);
    v46 = MusicLibrarySectionedResponse.sections.getter();
    (v23[1].isa)(v25, v22);
  }

  v26 = v45;
  sub_1000089F8(v21, v45, &unk_101184720, &qword_100EC03D8);
  if ((v23[6].isa)(v26, 1, v22) == 1)
  {
    sub_1000095E8(v26, &unk_101184720, &qword_100EC03D8);
    v45 = 0;
  }

  else
  {
    v45 = MusicLibrarySectionedResponse.sections.getter();
    (v23[1].isa)(v26, v22);
  }

  v27 = Strong;
  v28 = [*(sub_1006E935C() + 32) searchBar];
  LODWORD(v40) = [v28 isFirstResponder];

  v29 = v50;
  v30 = v41;
  sub_1000089F8(v50, v41, &unk_101184720, &qword_100EC03D8);
  v31 = *(v48 + 80);
  v32 = swift_allocObject();
  v33 = v44;
  v32[2] = v43;
  v32[3] = v33;
  v32[4] = v27;
  sub_10003D17C(v30, v32 + ((v31 + 40) & ~v31), &unk_101184720, &qword_100EC03D8);
  v34 = v42;
  sub_1000089F8(v29, v42, &unk_101184720, &qword_100EC03D8);
  v35 = swift_allocObject();
  *(v35 + 16) = v27;
  sub_10003D17C(v34, v35 + ((v31 + 24) & ~v31), &unk_101184720, &qword_100EC03D8);
  v36 = v27;

  v37 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v38 = sub_1006F4854();
  v39 = v47;
  UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v46, v45, 0, 0, 1, v40 ^ 1, sub_1006F4770, v32, sub_1006E9C68, 0, sub_1006E9CF8, 0, sub_1006F47E4, v35, 0, 0, v37, v38);

  return sub_1000095E8(v29, &unk_101184720, &qword_100EC03D8);
}

uint64_t sub_1006E9AAC(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_101184720, &qword_100EC03D8);
  v7 = __chkstk_darwin();
  v9 = &v16 - v8;
  a1(v7);
  v10 = *(a3 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_prefetchingController);
  sub_1000089F8(a4, v9, &unk_101184720, &qword_100EC03D8);
  v11 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1000095E8(v9, &unk_101184720, &qword_100EC03D8);
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = v11;
    v13 = sub_10001C8B8(&v17);
    (*(v12 + 32))(v13, v9, v11);
  }

  v14 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v17, v10 + v14, &unk_101183F30, qword_100EBF960);
  return swift_endAccess();
}

uint64_t sub_1006E9C68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Album();
  sub_1006F4908(&unk_101192760, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_1006E9CF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicFavoriteStatus();
  v45 = *(v3 - 8);
  __chkstk_darwin();
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v42 - v5;
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  __chkstk_darwin();
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v11 = &v42 - v10;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v42 - v13;
  __chkstk_darwin();
  v16 = &v42 - v15;
  v17 = Album.title.getter();
  v19 = v18;
  v49 = a2;
  if (v17 == Album.title.getter() && v19 == v20)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v22 = Album.artistName.getter();
  v24 = v23;
  if (v22 == Album.artistName.getter() && v24 == v25)
  {

    v26 = v47;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v26 = v47;
    if ((v27 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v47 = v3;
  Album.artwork.getter();
  Album.artwork.getter();
  v28 = *(v9 + 48);
  sub_1000089F8(v16, v11, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(v14, &v11[v28], &unk_101188920, &qword_100EBCC50);
  v29 = *(v48 + 48);
  if (v29(v11, 1, v26) == 1)
  {
    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v16, &unk_101188920, &qword_100EBCC50);
    if (v29(&v11[v28], 1, v26) == 1)
    {
      sub_1000095E8(v11, &unk_101188920, &qword_100EBCC50);
LABEL_17:
      v36 = v43;
      Album.favoriteStatus.getter();
      v37 = v44;
      Album.favoriteStatus.getter();
      v31 = static MusicFavoriteStatus.== infix(_:_:)();
      v38 = *(v45 + 8);
      v39 = v37;
      v40 = v47;
      v38(v39, v47);
      v38(v36, v40);
      return v31 & 1;
    }

    goto LABEL_14;
  }

  v30 = v46;
  sub_1000089F8(v11, v46, &unk_101188920, &qword_100EBCC50);
  if (v29(&v11[v28], 1, v26) == 1)
  {
    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v16, &unk_101188920, &qword_100EBCC50);
    (*(v48 + 8))(v30, v26);
LABEL_14:
    sub_1000095E8(v11, &unk_101191420, &unk_100EC9120);
    goto LABEL_15;
  }

  v32 = v48;
  v33 = v42;
  (*(v48 + 32))(v42, &v11[v28], v26);
  sub_1006F4908(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v32 + 8);
  v35(v33, v26);
  sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
  sub_1000095E8(v16, &unk_101188920, &qword_100EBCC50);
  v35(v46, v26);
  sub_1000095E8(v11, &unk_101188920, &qword_100EBCC50);
  if (v34)
  {
    goto LABEL_17;
  }

LABEL_15:
  v31 = 0;
  return v31 & 1;
}

double sub_1006EA304(char *a1, uint64_t a2)
{
  sub_10010FC20(&unk_101184720, &qword_100EC03D8);
  __chkstk_darwin();
  v5 = &v27 - v4;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v8 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - v10;
  sub_1006E9010();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v7);

  v12 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1000095E8(v7, &unk_1011846E0, &qword_100EC8E40);
    v13 = 1;
  }

  else
  {
    (*(v9 + 16))(v11, v7, v8);
    sub_1000095E8(v7, &unk_101184700, &unk_100EC03C0);
    v14 = MusicLibrarySectionedResponse.isEmpty.getter(v8);
    (*(v9 + 8))(v11, v8);
    v13 = !v14;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v15 = sub_1006E8204();
  [v15 setBouncesVertically:v13 & 1];

  [*&a1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v13 & 1];
  v16 = sub_1006E935C();
  sub_1000089F8(a2, v5, &unk_101184720, &qword_100EC03D8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_1000095E8(v5, &unk_101184720, &qword_100EC03D8);
  }

  else
  {
    v17 = MusicLibrarySectionedResponse.isEmpty.getter(v8);
    (*(v9 + 8))(v5, v8);
    if (!v17)
    {
      v26 = *(v16 + 64);
      *(v16 + 64) = 1;
      if (v26)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v18 = (*(*&a1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v19 = v18[1];
  if (!v19)
  {
    v25 = *(v16 + 64);
    *(v16 + 64) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = *v18 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v21 = v20;
  }

  v22 = v21 != 0;
  v23 = *(v16 + 64);
  *(v16 + 64) = v22;
  if (v23 != v22)
  {
LABEL_12:
    sub_10043EAB8();
  }

LABEL_13:

  return result;
}

double sub_1006EA6CC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v3 = &v14[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v3);

    v7 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
    if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
    {
      sub_1000095E8(v3, &unk_1011846E0, &qword_100EC8E40);
      v8 = _swiftEmptyArrayStorage;
    }

    else
    {
      v8 = *&v3[*(v7 + 36)];

      sub_1000095E8(v3, &unk_101184700, &unk_100EC03C0);
    }

    v9 = v8[2];

    v10 = sub_1006EA9D4();
    swift_getKeyPath();
    v15 = v10;
    sub_1006F4908(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa, &unk_100ED73D4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v10 + 48);

    if ((v9 == 0) == v11)
    {
    }

    else
    {
      v12 = *&v6[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource];
      v13 = v9 == 0;
      if (((v9 == 0) ^ *(v12 + 48)))
      {
        swift_getKeyPath();
        __chkstk_darwin();
        *&v14[-16] = v12;
        v14[-8] = v13;
        v15 = v12;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {

        *(v12 + 48) = v13;
      }
    }
  }

  return result;
}

uint64_t sub_1006EA9D4()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource;
  if (*(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s17PlayShuffleHeaderV10DataSourceCMa(0);
    v2 = swift_allocObject();
    *(v2 + 48) = 0;

    ObservationRegistrar.init()();
    *(v2 + 16) = sub_1006F49A8;
    *(v2 + 24) = v3;
    *(v2 + 32) = sub_1003C141C;
    *(v2 + 40) = v4;

    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_1006EAAF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController);
    v11 = Strong;

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = *(v10 + 48);
    v14 = *(*v13 + 96);
    swift_beginAccess();
    sub_1006F4654(v13 + v14, v7, _s6AlbumsVMa);
    v15 = &v7[*(v5 + 28)];

    *v15 = a1;
    v15[1] = v12;
    sub_100378808(v7);
  }

  return result;
}

uint64_t sub_1006EAC58@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_1006EAEDC@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_1006EB164@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10119F3B0, &unk_100EC0400);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___gridCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10119F3B0, &unk_100EC0400);
  v8 = sub_10010FC20(&qword_101184578, &qword_100EC02B8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10119F3B0, &unk_100EC0400);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10119F3B0, &unk_100EC0400);
  return swift_endAccess();
}

uint64_t sub_1006EB3DC@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&qword_101192A50, &unk_100EC0460);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &qword_101192A50, &unk_100EC0460);
  v9 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1000095E8(v7, &qword_101192A50, &unk_100EC0460);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v8, &qword_101192A50, &unk_100EC0460);
  return swift_endAccess();
}

char *sub_1006EB67C(uint64_t a1, uint64_t a2)
{
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v6 = &v27 - v5;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v8 = &v27 - v7;
  v9 = type metadata accessor for Album();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v27 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v28 = v12;
    v17 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController;

    sub_10037C8AC(a1, v8);

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000095E8(v8, &unk_101184730, &unk_100ECB920);
      return 0;
    }

    else
    {
      (*(v10 + 32))(v14, v8, v9);
      v18 = *(*&v16[v17] + 48);
      v19 = *(*v18 + 96);
      swift_beginAccess();
      sub_1006F4654(v18 + v19, v4, _s6AlbumsVMa);
      sub_100288ABC(v6);
      sub_1006F46CC(v4, _s6AlbumsVMa);
      v20 = type metadata accessor for MusicPlaybackIntentDescriptor();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v6, 1, v20) == 1)
      {
        sub_1000095E8(v6, &unk_10118CDB0, &unk_100EC0360);
        v22 = 0;
      }

      else
      {
        v22 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v21 + 8))(v6, v20);
      }

      v23 = sub_100799E1C(v22);
      v24 = sub_100797240(&off_10109C230, v23);

      v25 = v28;
      (*(v10 + 16))(v28, v14, v9);
      v26 = sub_10079BA94(v24, v25);

      (*(v10 + 8))(v14, v9);
      return v26;
    }
  }

  return result;
}

void sub_1006EBAE4(char a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  v4 = sub_1006E8204();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v5 = [v2 transitionCoordinator];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = sub_1006F472C;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1007E9F28;
    v11[3] = &unk_1010BB920;
    v8 = _Block_copy(v11);

    [v6 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  type metadata accessor for ApplicationMainMenu();
  v9 = sub_100314AEC();
  if (v9)
  {
    v10 = v9;
    sub_1007CA9DC(v2, v9);
  }
}

double sub_1006EBC90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  return result;
}

uint64_t sub_1006EBD5C(char a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1, v4);
  v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v8 = MetricsEvent.Page.libraryAlbumsList.unsafeMutableAddressor();
  sub_1006F4654(v8, v6, type metadata accessor for MetricsEvent.Page);
  v9 = sub_10053771C();
  v11 = v10;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v12 = qword_101218AD0;
  v13 = GroupActivitiesManager.hasJoined.getter();
  v14 = GroupActivitiesManager.participantsCount.getter();
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v7) + 0xA0))(v6, v9, v11, v13 & 1, v14, *(v12 + v15));

  return sub_1006F46CC(v6, type metadata accessor for MetricsEvent.Page);
}

void sub_1006EC074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10010FC20(&unk_10118D330, &qword_100ED15D0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v10 = Strong;

  v11 = sub_1006E6E50();

  if (v11)
  {

LABEL_4:
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    UICollectionViewCell.contentConfiguration.setter();
    return;
  }

  sub_1006EA9D4();
  sub_1003C13C8();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  *(&v13 + 1) = v5;
  v14 = sub_100020674(&unk_10118D340, &unk_10118D330, &qword_100ED15D0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(&v12);
  UIHostingConfiguration.margins(_:_:)();

  (*(v6 + 8))(v8, v5);
  UICollectionViewCell.contentConfiguration.setter();
}

void sub_1006EC270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a1;
  v22[1] = a4;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - v9;
  v11 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v22 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v19 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
    if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
    {
      sub_1000095E8(v6, &unk_1011846E0, &qword_100EC8E40);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_101184700, &unk_100EC03C0);
    v20 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v21 = IndexPath.section.getter();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v20 + 16))
    {
      (*(v12 + 16))(v14, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v11);

      (*(v12 + 32))(v16, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v22[2], v22[3], v23);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v16, v11);
      return;
    }

    __break(1u);
  }
}

void sub_1006EC62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_10118D2C0, &unk_100ED1530);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v13[-2] = a3;
    v13[-1] = v9;
    v10 = v9;
    sub_10010FC20(&unk_101184760, &unk_100EC0410);
    v11 = _s8GridCellVMa(255);
    v12 = sub_1006F4908(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v5;
    v13[4] = sub_100020674(&unk_101184770, &qword_10118D2C0, &unk_100ED1530, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1006EC878@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a1;
  v44 = a2;
  v43 = type metadata accessor for MusicFavoriteStatus();
  v2 = *(v43 - 8);
  __chkstk_darwin();
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v37 - v5;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v9 = &v37 - v8;
  v10 = _s8GridCellVMa(0);
  __chkstk_darwin();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Album();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v13, &protocol witness table for Album, v9);
  v14 = sub_1006E8204();
  v15 = *&v14[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v15, 0, 0, 1, 0x3FF0000000000000, 0, 2, v45);
  v16 = Corner.medium.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v20 - 8) + 56))(v7, 1, 11, v20);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v9, v7, 0, 1, v45, v17, v18, v19, v12);
  v21 = sub_10034DFAC();
  v39 = v22;
  v40 = v21;
  v38 = sub_10034E12C();
  v24 = v23;
  v25 = v41;
  Album.favoriteStatus.getter();
  v26 = v4;
  v27 = v4;
  v28 = v43;
  (*(v2 + 104))(v27, enum case for MusicFavoriteStatus.favorited(_:), v43);
  v29 = static MusicFavoriteStatus.== infix(_:_:)();
  v30 = *(v2 + 8);
  v30(v26, v28);
  v30(v25, v28);
  Album.contentRating.getter();
  v31 = &v12[v10[5]];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  *&v12[v10[6]] = 0x3FF0000000000000;
  v32 = &v12[v10[7]];
  v33 = v39;
  *v32 = v40;
  *(v32 + 1) = v33;
  v34 = &v12[v10[8]];
  *v34 = v38;
  v34[1] = v24;
  v12[v10[9]] = v29 & 1;
  v12[v10[11]] = 0;
  v35 = v10[12];
  *&v12[v35] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  sub_1006F4908(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_1006F4908(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);

  View.artworkCaching(owner:)();

  return sub_1006F46CC(v12, _s8GridCellVMa);
}

void sub_1006ECD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10010FC20(&unk_10118D320, &unk_100EC9050);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v18 - v11;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v18[-4] = a3;
    v18[-3] = v13;
    v18[-2] = a5;
    v14 = v13;
    sub_10010FC20(&unk_1011847A0, &unk_100EC0470);
    v15 = _s8ListCellVMa(255);
    v16 = sub_1006F4908(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
    v18[0] = v15;
    v18[1] = v16;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v17 = *(v8 + 8);
    v17(v10, v7);
    static Edge.Set.vertical.getter();
    v18[3] = v7;
    v18[4] = sub_100020674(&unk_1011847B0, &unk_10118D320, &unk_100EC9050, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v18);
    UIHostingConfiguration.margins(_:_:)();
    v17(v12, v7);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1006ED000@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v60 = a1;
  v61 = a2;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v62 = &v50[-v2];
  v59 = type metadata accessor for MusicFavoriteStatus();
  v3 = *(v59 - 8);
  __chkstk_darwin();
  v53 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v52 = &v50[-v5];
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v9 = &v50[-v8];
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = v11;
  v12 = _s8ListCellVMa(0);
  __chkstk_darwin();
  v14 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for Album();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v15, &protocol witness table for Album, v9);
  ArtworkImage.Size.init(cgSize:)(0x4050000000000000, 0x4050000000000000, 0, v66);
  v16 = Corner.small.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v20 - 8) + 56))(v7, 1, 11, v20);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v9, v7, 0, 1, v66, v17, v18, v19, v11);
  v21 = sub_10034DFAC();
  v56 = v22;
  v57 = v21;
  v23 = sub_10034E12C();
  v54 = v24;
  v55 = v23;
  v25 = v52;
  Album.favoriteStatus.getter();
  v26 = v53;
  v27 = v59;
  (*(v3 + 104))(v53, enum case for MusicFavoriteStatus.favorited(_:), v59);
  v51 = static MusicFavoriteStatus.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v26, v27);
  v28(v25, v27);
  Album.contentRating.getter();
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
  swift_allocObject();
  OptionalObservableObject.init(publisher:)(&v63);
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
  swift_allocObject();
  v59 = OptionalObservableObject.init(publisher:)(&v63);
  v29 = static HierarchicalShapeStyle.primary.getter();
  *(v14 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v14 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v14 = v29;
  v14[40] = 0;
  v30 = &v14[v12[6]];
  v31 = v12[9];
  v32 = v12[10];
  v33 = type metadata accessor for ContentRating();
  (*(*(v33 - 8) + 56))(&v14[v32], 1, 1, v33);
  v53 = &v14[v12[11]];
  v34 = v12[14];
  *&v14[v34] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v35 = v58;
  sub_1006F4654(v58, &v14[v12[5]], type metadata accessor for ArtworkImage.Info);
  v30[1] = 0;
  v30[2] = 0;
  *v30 = 0;
  v36 = &v14[v12[7]];
  v37 = v56;
  *v36 = v57;
  v36[1] = v37;
  v38 = &v14[v12[8]];
  v39 = v54;
  *v38 = v55;
  v38[1] = v39;
  v14[v31] = v51 & 1;
  v40 = &v14[v32];
  v41 = v62;
  sub_100123348(v62, v40);
  v42 = &v14[v12[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480, &protocol conformance descriptor for OptionalObservableObject<A>);

  *v42 = ObservedObject.init(wrappedValue:)();
  v42[1] = v43;
  v44 = &v14[v12[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300, &qword_100EBCE20, &protocol conformance descriptor for OptionalObservableObject<A>);
  v45 = ObservedObject.init(wrappedValue:)();
  v47 = v46;

  sub_1000095E8(v41, &unk_10118D2F0, &unk_100EBCE10);
  sub_1006F46CC(v35, type metadata accessor for ArtworkImage.Info);
  *v44 = v45;
  v44[1] = v47;
  v48 = v53;
  *v53 = 0;
  v48[1] = 0;
  sub_1006F4908(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_1006F4908(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);

  View.artworkCaching(owner:)();

  return sub_1006F46CC(v14, _s8ListCellVMa);
}

unint64_t sub_1006ED700()
{
  v1 = type metadata accessor for Genre();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006F4654(v0, v6, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v2 + 32))(v4, v6, v1);
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v15._countAndFlagsBits = 0x2E7972617262694CLL;
      v15._object = 0xEF2E7365726E6547;
      Genre.name.getter();
      v9 = String.removeSpaces()();

      String.append(_:)(v9);

      v10._countAndFlagsBits = 2003134806;
      v10._object = 0xE400000000000000;
      String.append(_:)(v10);
      v11 = AccessibilityIdentifier.init(name:)(v15);
      (*(v2 + 8))(v4, v1);
      return v11;
    }

    v13 = 0xD00000000000001ELL;
    v12 = 0x8000000100E55710;
LABEL_11:
    v11 = AccessibilityIdentifier.init(name:)(*&v13);
    sub_1006F46CC(v6, _s6AlbumsV5ScopeOMa);
    return v11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v12 = 0x8000000100E556F0;
    v13 = 0xD00000000000001ALL;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v8 = AccessibilityIdentifier.libraryAlbumsView.unsafeMutableAddressor();
  }

  else
  {
    v8 = AccessibilityIdentifier.libraryCompilationsView.unsafeMutableAddressor();
  }

  v11 = *v8;

  return v11;
}

uint64_t sub_1006ED9C4@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v31 - v5;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011838D0, &unk_100EC0320);
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_1006F45C8(v10, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v37 = v1;
  sub_1000095E8(v10, &unk_1011838D0, &unk_100EC0320);
  v14 = MetricsEvent.Page.libraryAlbumsList.unsafeMutableAddressor();
  sub_1006F4654(v14, v6, type metadata accessor for MetricsEvent.Page);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = v4;
  v17 = *(*(v15 - 8) + 56);
  v17(v6, 0, 1, v15);
  v36 = v16;
  sub_1000089F8(v6, v16, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v18 = sub_10053771C();
  v34 = v19;
  v35 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v12[5];
  v17(&a1[v23], 1, 1, v15);
  v24 = v12[7];
  v25 = &a1[v12[6]];
  v26 = v12[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v36, &a1[v23], &unk_1011838F0, &qword_100EC1070);
  v27 = v34;
  *v25 = v35;
  *(v25 + 1) = v27;
  *&a1[v24] = 0;
  *&a1[v26] = 0;
  v28 = &a1[v12[9]];
  *v28 = v33 & 1;
  *(v28 + 1) = v32;
  *(v28 + 2) = v22;
  sub_1006F4654(a1, v8, type metadata accessor for Actions.MetricsReportingContext);
  (*(v13 + 56))(v8, 0, 1, v12);
  v29 = v37;
  swift_beginAccess();
  sub_10006B010(v8, v29 + v11, &unk_1011838D0, &unk_100EC0320);
  return swift_endAccess();
}

uint64_t sub_1006EE0D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v18 - v8;
  v10 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v11 = *v10 == a2 && v10[1] == a3;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v12 != a3)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
LABEL_14:
        sub_1006EAEDC(v9);
        goto LABEL_15;
      }

      strcpy(v18, "Unknown kind=");
      v18[7] = -4864;
      v15._countAndFlagsBits = a2;
      v15._object = a3;
      String.append(_:)(v15);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_14;
  }

  sub_1006EAC58(v9);
LABEL_15:
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v16 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  return v16;
}

void *sub_1006EE434(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v52 = &v46 - v4;
  v5 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin();
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for UICellAccessory.DisplayedState();
  v49 = *(v51 - 8);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v13 = sub_10010FC20(&qword_101184578, &qword_100EC02B8);
  v47 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v46 - v14;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v55 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v46 - v17;
  __chkstk_darwin();
  v19 = &v46 - v18;
  sub_10037C8AC(a2, &v46 - v18);
  v57 = v2;
  v20 = sub_1006E8204();
  v21 = v20[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v21 & 1) != 0 || (*(*&v57[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_layoutVariantController] + 32))
  {
    v22 = v57;
    sub_1006EB3DC(v12);
    v23 = sub_1007F7A18(v12, a2, v19);
    (*(v10 + 8))(v12, v9);
    sub_10010FC20(&unk_101184740, &qword_100ED5D60);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_100EBC6B0;
    v24 = v49;
    v25 = v51;
    (*(v49 + 104))(v8, enum case for UICellAccessory.DisplayedState.always(_:), v51);
    v26 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v26 - 8) + 56))(v52, 1, 1, v26);
    v27 = v50;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v53 + 8))(v27, v54);
    (*(v24 + 8))(v8, v25);
    UICollectionViewListCell.accessories.setter();
    v28 = [v22 traitCollection];
    v29 = [v28 userInterfaceIdiom];

    if (v29 != 6)
    {
      v30 = v23;
      [v30 directionalLayoutMargins];
      [v30 setDirectionalLayoutMargins:?];
    }

    v31 = v55;
    sub_1000089F8(v19, v55, &unk_101184730, &unk_100ECB920);
    v32 = type metadata accessor for Album();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v31, 1, v32) == 1)
    {
      sub_1000095E8(v31, &unk_101184730, &unk_100ECB920);
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
    }

    else
    {
      *(&v59 + 1) = v32;
      v60 = &protocol witness table for Album;
      v34 = sub_10001C8B8(&v58);
      (*(v33 + 32))(v34, v31, v32);
    }
  }

  else
  {
    sub_1006EB164(v15);
    v35 = sub_1007F74DC(v15, a2, v19);
    (*(v47 + 8))(v15, v13);
    v36 = Corner.medium.unsafeMutableAddressor();
    v37 = *v36;
    v38 = v36[1];
    v39 = *(v36 + 16);
    v40 = swift_allocObject();
    *(v40 + 16) = v37;
    *(v40 + 24) = v38;
    *(v40 + 32) = v39;
    UICollectionViewCell.configurationUpdateHandler.setter();
    v41 = v48;
    sub_1000089F8(v19, v48, &unk_101184730, &unk_100ECB920);
    v42 = type metadata accessor for Album();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v41, 1, v42) == 1)
    {
      sub_1000095E8(v41, &unk_101184730, &unk_100ECB920);
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
    }

    else
    {
      *(&v59 + 1) = v42;
      v60 = &protocol witness table for Album;
      v44 = sub_10001C8B8(&v58);
      (*(v43 + 32))(v44, v41, v42);
    }

    v23 = sub_1004F24B0(&v58);
  }

  sub_1000095E8(v19, &unk_101184730, &unk_100ECB920);
  sub_1000095E8(&v58, &qword_1011A3DD0, &unk_100EC03F0);
  return v23;
}

BOOL sub_1006EED78(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = UICollectionView.isDraggingCell(at:)();

  (*(v6 + 8))(v8, v5);
  return (v10 & 1) == 0;
}

void sub_1006EEE6C(void *a1, uint64_t a2)
{
  v93 = a1;
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v79 = &v79 - v4;
  v5 = type metadata accessor for IndexPath();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin();
  v88 = v6;
  v89 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v87 = &v79 - v7;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v86 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v79 - v9;
  __chkstk_darwin();
  v94 = &v79 - v10;
  v82 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v83 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v79 - v12;
  __chkstk_darwin();
  v81 = &v79 - v13;
  v14 = sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v79 - v16;
  v18 = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v22 = &v79 - v21;
  v23 = type metadata accessor for Album();
  __chkstk_darwin();
  v80 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v79 - v25;
  __chkstk_darwin();
  v96 = &v79 - v26;
  __chkstk_darwin();
  v97 = &v79 - v27;
  v99 = v2;
  v28 = *&v2[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController];
  v92 = a2;
  v29 = a2;
  v31 = v30;
  sub_10037C8AC(v29, v22);
  v32 = *(v31 + 48);
  v100 = v23;
  if (v32(v22, 1, v23) == 1)
  {
    sub_1000095E8(v22, &unk_101184730, &unk_100ECB920);
  }

  else
  {
    v98 = v31;
    v33 = v97;
    v34 = v100;
    (*(v31 + 32))(v97, v22, v100);
    v35 = *(v28 + 48);
    v36 = *(*v35 + 96);
    swift_beginAccess();
    sub_1006F4654(v35 + v36, v20, _s6AlbumsVMa);
    type metadata accessor for TitledSection();
    MusicLibrarySectionedRequest.init()();

    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest.filterItems(text:)(*&v20[*(v18 + 28)]);
    sub_1002897C8(v17);
    sub_100289CA8();
    sub_10028A010(v17);
    sub_1006F46CC(v20, _s6AlbumsVMa);
    LOBYTE(v35) = MusicLibrarySectionedRequest.includeOnlyDownloadedContent.getter();
    (*(v15 + 8))(v17, v14);
    v37 = *(v31 + 16);
    v38 = v96;
    v39 = v33;
    v40 = v34;
    v37(v96, v39, v34);
    v41 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v42 = *(v41 + 48);
    v43 = *(v41 + 64);
    v44 = v81;
    sub_1006F4654(&v99[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_scope], v81, _s6AlbumsV5ScopeOMa);
    v45 = _s6AlbumsV5ScopeOMa(0);
    (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    *(v44 + v42) = v35 & 1;
    *(v44 + v43) = 0;
    swift_storeEnumTagMultiPayload();
    v46 = type metadata accessor for URL();
    v47 = v94;
    (*(*(v46 - 8) + 56))(v94, 1, 1, v46);
    v48 = v95;
    v37(v95, v38, v40);
    v49 = v84;
    sub_1006F4654(v44, v84, type metadata accessor for ContainerDetail.Source);
    v50 = v85;
    v51 = v98;
    sub_1000089F8(v47, v85, &qword_101183A20, &unk_100EBCF80);
    v52 = v80;
    v37(v80, v48, v40);
    v53 = v83;
    sub_1006F4654(v49, v83, type metadata accessor for ContainerDetail.Source);
    v54 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    v55 = v87;
    (*(*(v54 - 8) + 56))(v87, 1, 1, v54);
    v56 = v86;
    sub_1000089F8(v50, v86, &qword_101183A20, &unk_100EBCF80);
    v57 = sub_1004E34D0(v52, v53, v55, v56);
    sub_1000095E8(v50, &qword_101183A20, &unk_100EBCF80);
    sub_1006F46CC(v49, type metadata accessor for ContainerDetail.Source);
    v58 = *(v51 + 8);
    v59 = v100;
    v58(v95, v100);
    v60 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v61 = sub_100137F64(v57, v60);
    sub_1000095E8(v94, &qword_101183A20, &unk_100EBCF80);
    sub_1006F46CC(v44, type metadata accessor for ContainerDetail.Source);
    v62 = v96;
    v98 = v51 + 8;
    v96 = v58;
    v58(v62, v59);
    v63 = v99;
    *&v61[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*&v99[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_prefetchingController] + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);

    sub_100009F78(0, &qword_101184710, UIViewControllerTransition_ptr);
    v64 = objc_allocWithZone(UIZoomTransitionOptions);
    v65 = v61;
    v66 = [v64 init];
    UIZoomTransitionOptions.alignmentRectProvider.setter();
    v67 = v89;
    v68 = v90;
    v69 = v91;
    (*(v90 + 16))(v89, v92, v91);
    v70 = (*(v68 + 80) + 24) & ~*(v68 + 80);
    v71 = swift_allocObject();
    v72 = v93;
    *(v71 + 16) = v93;
    (*(v68 + 32))(v71 + v70, v67, v69);
    v73 = v72;
    v74 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

    [v65 setPreferredTransition:v74];
    v75 = [v63 navigationController];
    if (v75)
    {
      v76 = v75;
      v77 = v79;
      UIViewController.traitOverrides.getter();
      v78 = type metadata accessor for UITraitOverrides();
      (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
      UINavigationController.push(_:traitOverrides:animated:)(v65, v77, 1);

      sub_1000095E8(v77, &unk_10119F3A0, &qword_100EC7CD0);
      (v96)(v97, v100);
    }

    else
    {
      (v96)(v97, v100);
    }
  }
}

uint64_t sub_1006EFADC(uint64_t a1)
{
  type metadata accessor for Album();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_100735238(v4, 1);
}

unint64_t sub_1006EFB9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v109 = a3;
  v110 = a4;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v118 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v116 = v7;
  v117 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v100 - v8;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v10 = &v100 - v9;
  v112 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v113 = v11;
  v114 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v100 - v12;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v16 = &v100 - v15;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v108 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v100 - v18;
  __chkstk_darwin();
  v20 = &v100 - v19;
  __chkstk_darwin();
  v22 = &v100 - v21;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v119 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v100 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = Strong;
  v104 = v10;
  v106 = v5;
  v107 = v4;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100EBC6B0;
  v28 = type metadata accessor for Album();
  *(v27 + 56) = v28;
  *(v27 + 64) = &protocol witness table for Album;
  v29 = sub_10001C8B8((v27 + 32));
  (*(*(v28 - 8) + 16))(v29, v109, v28);
  v30 = [v26 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v105 = v138[0];
  v31 = *(*&v26[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController] + 48);
  v32 = *(*v31 + 96);
  swift_beginAccess();
  sub_1006F4654(v31 + v32, v14, _s6AlbumsVMa);
  sub_100288ABC(v16);
  sub_1006F46CC(v14, _s6AlbumsVMa);
  PlaybackIntentDescriptor.IntentType.init(_:)(v16, v22);
  memset(v138, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v33 = qword_101218AD8;
  sub_1000089F8(v22, v20, &unk_1011838E0, &unk_100EC1670);
  v34 = v33;
  v35 = UIViewController.playActivityInformation.getter();
  v109 = v36;
  v103 = v37;
  v39 = v38;
  sub_1000089F8(v138, &v130, &unk_101183910, &unk_100EBDD00);
  v120 = v26;
  if (*(&v131 + 1))
  {
    sub_100059A8C(&v130, &v134);
    v40 = v34;
    v41 = v104;
  }

  else
  {
    v102 = v35;
    *&v139 = v26;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v43 = v26;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v142, &v134);
      v40 = v34;
      v41 = v104;
    }

    else
    {
      v144 = 0;
      v142 = 0u;
      v143 = 0u;
      *&v134 = v43;
      v44 = v43;
      v45 = String.init<A>(reflecting:)();
      v135 = &type metadata for Player.CommandIssuerIdentity;
      v136 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v134 = v45;
      *(&v134 + 1) = v46;
      v40 = v34;
      v41 = v104;
      if (*(&v143 + 1))
      {
        sub_1000095E8(&v142, &unk_101183910, &unk_100EBDD00);
      }
    }

    v35 = v102;
    if (*(&v131 + 1))
    {
      sub_1000095E8(&v130, &unk_101183910, &unk_100EBDD00);
    }
  }

  v47 = v122;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v40, v20, v35, v109, v103, v39, &v134, v122);
  sub_1000095E8(v138, &unk_101183910, &unk_100EBDD00);
  sub_1000095E8(v22, &unk_1011838E0, &unk_100EC1670);
  v48 = type metadata accessor for Actions.PlaybackContext(0);
  v49 = *(v48 - 8);
  (*(v49 + 56))(v47, 0, 1, v48);
  v50 = type metadata accessor for PlaylistContext(0);
  (*(*(v50 - 8) + 56))(v123, 1, 1, v50);
  v51 = type metadata accessor for IndexPath();
  v52 = *(v51 - 8);
  (*(v52 + 16))(v41, v110, v51);
  (*(v52 + 56))(v41, 0, 1, v51);
  v53 = v120;
  sub_100376EDC(v41, v138);
  sub_1000095E8(v41, &unk_10118BCE0, &qword_100EC6450);
  v54 = v121;
  sub_1006ED9C4(v121);
  v55 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  sub_100008FE4(v27 + 32, v137);

  sub_1000089F8(v138, &v130, &unk_1011845E0, &unk_100EBF3A0);
  if (v133 == 1)
  {
    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    v145 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v53, &v142, &v134);
    v56 = v119;
    if (v133 != 1)
    {
      sub_1000095E8(&v130, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v130, &v134);
    v56 = v119;
  }

  swift_getObjectType();
  v57 = swift_conformsToProtocol2();
  if (v57)
  {
    v104 = v57;
    v58 = v53;
    v109 = v53;
  }

  else
  {
    v109 = 0;
    v104 = 0;
  }

  v110 = swift_allocBox();
  v60 = v59;
  sub_1000089F8(v122, v56, &unk_10118AB20, &unk_100EBF390);
  v61 = *(v49 + 48);
  if (v61(v56, 1, v48) == 1)
  {
    v62 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v63 = v111;
    (*(*(v62 - 8) + 56))(v111, 1, 1, v62);
    v132 = 0;
    v130 = 0u;
    v131 = 0u;
    v64 = v63;
    v65 = v108;
    sub_1000089F8(v64, v108, &unk_1011838E0, &unk_100EC1670);
    v103 = v40;
    v66 = UIViewController.playActivityInformation.getter();
    v101 = v68;
    v102 = v67;
    v70 = v69;
    sub_1000089F8(&v130, &v128, &unk_101183910, &unk_100EBDD00);
    if (v129)
    {
      sub_100059A8C(&v128, &v139);
    }

    else
    {
      v127 = v53;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v71 = v53;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v124, &v139);
        v56 = v119;
      }

      else
      {
        v126 = 0;
        v124 = 0u;
        v125 = 0u;
        *&v139 = v71;
        v72 = v71;
        v73 = String.init<A>(reflecting:)();
        *(&v140 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v141 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v139 = v73;
        *(&v139 + 1) = v74;
        v56 = v119;
        if (*(&v125 + 1))
        {
          sub_1000095E8(&v124, &unk_101183910, &unk_100EBDD00);
        }
      }

      v53 = v120;
      v65 = v108;
      if (v129)
      {
        sub_1000095E8(&v128, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v103, v65, v66, v102, v101, v70, &v139, v60);
    sub_1000095E8(&v130, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v111, &unk_1011838E0, &unk_100EC1670);
    if (v61(v56, 1, v48) != 1)
    {
      sub_1000095E8(v56, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_1006F45C8(v56, v60, type metadata accessor for Actions.PlaybackContext);
  }

  v75 = *(v48 + 28);
  sub_1000089F8(&v60[v75], &v139, &unk_101183910, &unk_100EBDD00);
  if (*(&v140 + 1))
  {
    sub_100059A8C(&v139, &v130);
  }

  else
  {
    *&v130 = v53;
    v76 = v53;
    v77 = String.init<A>(reflecting:)();
    *(&v131 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v132 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v130 = v77;
    *(&v130 + 1) = v78;
    if (*(&v140 + 1))
    {
      sub_1000095E8(&v139, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_100EBDC20;
  *(v79 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v79 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v79 + 32) = 0x4D747865746E6F43;
  *(v79 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v130, v79 + 72);
  v80 = static Player.CommandIssuer<>.combining(_:)(v79);
  v82 = v81;

  sub_10000959C(&v130);
  *(&v131 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v132 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v130 = v80;
  *(&v130 + 1) = v82;
  sub_10006B010(&v130, &v60[v75], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v137, &v130);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v119 = String.init<A>(describing:)();
  v111 = v83;
  v108 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v137, &v128);
  sub_10012B7A8(&v134, &v130);
  v84 = v117;
  sub_1000089F8(v121, v117, &unk_1011838D0, &unk_100EC0320);
  v85 = v114;
  sub_1000089F8(v123, v114, &unk_1011845D0, &unk_100EBF380);
  v86 = (*(v115 + 80) + 160) & ~*(v115 + 80);
  v87 = (v116 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
  v89 = (*(v112 + 80) + v88 + 8) & ~*(v112 + 80);
  v116 = (v89 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v89 + v113 + 31) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  sub_100059A8C(&v128, v91 + 16);
  *(v91 + 56) = v105;
  sub_10012B828(&v130, v91 + 64);
  sub_10003D17C(v84, v91 + v86, &unk_1011838D0, &unk_100EC0320);
  *(v91 + v87) = v108;
  *(v91 + v88) = v110;
  sub_10003D17C(v85, v91 + v89, &unk_1011845D0, &unk_100EBF380);
  v92 = v91 + v116;
  v93 = v104;
  *v92 = v109;
  *(v92 + 8) = v93;
  *(v92 + 16) = 2;
  v94 = (v91 + v90);
  *v94 = variable initialization expression of Library.Context.playlistVariants;
  v94[1] = 0;
  swift_unknownObjectRetain();

  v95 = v118;
  UUID.init()();
  v96 = UUID.uuidString.getter();
  v98 = v97;
  (*(v106 + 8))(v95, v107);
  v146._countAndFlagsBits = v119;
  v146._object = v111;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v139, v146, v96, v98, sub_1001CFB84, v91);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v134);
  sub_10000959C(v137);

  v42 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v134 = v139;
  sub_100015BB0(&v134);
  v130 = v140;
  sub_100015BB0(&v130);

  sub_1000095E8(v121, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(v138, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v123, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v122, &unk_10118AB20, &unk_100EBF390);
  return v42;
}

id sub_1006F0E08(void *a1, void *a2, void *a3)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v7 = &v26 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v26 - v13;
  aBlock[0] = [a2 identifier];
  sub_10010FC20(&unk_1011846A0, &unk_100EC8F60);
  v15 = swift_dynamicCast();
  v16 = *(v9 + 56);
  if (v15)
  {
    v16(v7, 0, 1, v8);
    v26 = a1;
    v17 = *(v9 + 32);
    v17(v14, v7, v8);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v11, v14, v8);
    v19 = *(v9 + 80);
    v27 = a3;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    v22 = v26;
    *(v21 + 16) = v18;
    *(v21 + 24) = v22;
    v17((v21 + v20), v11, v8);
    aBlock[4] = sub_1006F442C;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BB790;
    v23 = _Block_copy(aBlock);
    v24 = v22;

    [v27 addAnimations:v23];
    _Block_release(v23);
    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    v16(v7, 1, 1, v8);
    sub_1000095E8(v7, &unk_10118BCE0, &qword_100EC6450);
    return [a3 setPreferredCommitStyle:0];
  }
}

void sub_1006F1150(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1006EEE6C(a2, a3);
  }
}

id sub_1006F125C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = sub_10023D4E4(v9, 0, 1);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_1006F13BC()
{
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v8 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v8 - 8) + 48))(v1, 1, v8) == 1)
  {
    sub_1000095E8(v1, &unk_1011846E0, &qword_100EC8E40);
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_101184700, &unk_100EC03C0);
    (*(v3 + 32))(v7, v5, v2);
    if (MusicLibrarySectionedResponse.isEmpty.getter(v2))
    {
      *(&v12 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v13 = &protocol witness table for UIContentUnavailableConfiguration;
      v9 = sub_10001C8B8(&v11);
      sub_1007DC7A4(v9);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v3 + 8))(v7, v2);
    }

    (*(v3 + 8))(v7, v2);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

id sub_1006F174C()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v7 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_1006F496C, v4, v6);

    v8 = *(v0 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_1006F1830(uint64_t a1)
{
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1006E8204();
    v7 = v6[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if (v7)
    {
      isa = 0;
    }

    else
    {

      isa = sub_100597E50().super.super.isa;
    }

    v20[4] = isa;
    v9 = *(*&v5[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController] + 48);
    v10 = *(*v9 + 96);
    swift_beginAccess();
    sub_1006F4654(v9 + v10, v2, _s6AlbumsVMa);
    v11 = swift_allocObject();
    swift_weakInit();

    v13 = sub_100211A04(sub_100219544, v11, v12);

    sub_1006F46CC(v2, _s6AlbumsVMa);

    v14 = 0;
    v20[5] = v13;
    v19 = _swiftEmptyArrayStorage;
    while (v14 != 2)
    {
      v15 = v20[v14++ + 4];
      if (v15)
      {
        v16 = v15;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v19;
      }
    }

    sub_10010FC20(&qword_10118CE10, &qword_100ED1950);
    swift_arrayDestroy();
  }

  return v4;
}

objc_class *sub_1006F1AB8()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);

    v5 = SymbolButton.Intent.title.getter(0);
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1006F4950;
    *(v10 + 24) = v4;
    *(v10 + 32) = 0;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(0);
    v17 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14, v15, v16);

    v18 = *(v11 + v1);
    *(v11 + v1) = v17;
    v3 = v17;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

void sub_1006F1CBC(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v7 = v29 - v6;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v11 = v29 - v10;
  v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v29[1] = v3;
    v30 = a2;
    v18 = *(*(Strong + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController) + 48);
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_1006F4654(v18 + v19, v9, _s6AlbumsVMa);
    v20 = type metadata accessor for Album();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    sub_100289108(v7, v11);
    sub_1000095E8(v7, &unk_101184730, &unk_100ECB920);
    sub_1006F46CC(v9, _s6AlbumsVMa);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1000095E8(v11, &unk_10118CDB0, &unk_100EC0360);
      v21 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      (*(v13 + 16))(v5, v15, v12);
      swift_storeEnumTagMultiPayload();
      v33 = 0;
      memset(v32, 0, sizeof(v32));
      v31[0] = v17;
      v23 = v17;
      v24 = String.init<A>(reflecting:)();
      v31[3] = &type metadata for Player.CommandIssuerIdentity;
      v31[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v31[0] = v24;
      v31[1] = v25;
      v26 = v23;
      v27 = v30;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v32, 3, 0, 0, 1, 0, 1, v30, v17, v31);
      (*(v13 + 8))(v15, v12);
      v28 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
    }
  }

  else
  {
    v22 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }
}

objc_class *sub_1006F21A8()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___shuffleBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___shuffleBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___shuffleBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);

    v5 = SymbolButton.Intent.title.getter(1);
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1006F49A8;
    *(v10 + 24) = v4;
    *(v10 + 32) = 1;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(1);
    v17 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14, v15, v16);

    v18 = *(v11 + v1);
    *(v11 + v1) = v17;
    v3 = v17;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

id sub_1006F23AC()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_1006F1AB8();
    *(v4 + 40) = sub_1006F21A8();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v6 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem);

    v7 = v6;
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0xE000000000000000;
    isa = UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(v4, v7, v8).super.super.isa;
    v10 = objc_allocWithZone(UIBarButtonItemGroup);
    v11 = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v10 initWithBarButtonItems:v11 representativeItem:isa];

    v13 = *(v5 + v1);
    *(v5 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void *sub_1006F24EC()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups;
  if (*(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups);
  }

  else
  {
    v3 = v0;
    v4 = sub_1006F23AC();
    v2 = UIBarButtonItemGroup.split()();

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_1006F2564()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextAndFilterBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_1003A6784();
    *(v4 + 40) = sub_1006F174C();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v6 = static UIBarButtonItem.contextBarButtonItem(representativeOf:)(v4);
    v7 = objc_allocWithZone(UIBarButtonItemGroup);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithBarButtonItems:isa representativeItem:v6];

    v10 = *(v5 + v1);
    *(v5 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t type metadata accessor for LibraryAlbumsViewController(uint64_t a1)
{
  result = qword_10119F390;
  if (!qword_10119F390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006F2908(uint64_t a1)
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_101184570, &qword_101184578, &qword_100EC02B8);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &qword_101184580, &qword_101184588, &unk_100EC02C0);
      if (v3 <= 0x3F)
      {
        _s6AlbumsV5ScopeOMa(319);
        if (v4 <= 0x3F)
        {
          sub_1002114E8(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1006F2B00()
{
  v1 = v0;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011845C0, &unk_100EC0310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBE260;
  v5 = sub_10031E9F8(xmmword_100EBE260);
  isa = sub_100597E50().super.super.isa;
  v7 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v4 + 32) = v5;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = v8;
  v10 = sub_10031EA10(v9);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v36[3] = v11;
  v36[4] = v13;
  v14._countAndFlagsBits = 0x74726F532ELL;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  v16 = *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController);
  v17 = *(v16 + 48);
  v18 = *(*v17 + 96);
  swift_beginAccess();
  sub_1006F4654(v17 + v18, v3, _s6AlbumsVMa);
  v19 = swift_allocObject();
  swift_weakInit();

  v21 = sub_100211A04(sub_100217D1C, v19, v20);

  sub_1006F46CC(v3, _s6AlbumsVMa);

  if (v21)
  {
    v22 = [v21 children];

    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v15 = 0;
  }

  *(v4 + 64) = v15;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = v21;
  v24 = sub_10031EA10(v23);
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v36[0] = v25;
  v36[1] = v27;
  v28._countAndFlagsBits = 0x7265746C69462ELL;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v29 = String._bridgeToObjectiveC()();

  v30 = *(v16 + 48);
  v31 = *(*v30 + 96);
  swift_beginAccess();
  sub_1006F4654(v30 + v31, v3, _s6AlbumsVMa);
  v32 = swift_allocObject();
  swift_weakInit();

  v33 = sub_100397C74(sub_1006F34A0, v32);

  sub_1006F46CC(v3, _s6AlbumsVMa);

  if (v33)
  {
    v34 = [v33 children];

    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v29 = 0;
  }

  *(v4 + 96) = v29;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = v33;
  return v4;
}

void sub_1006F2EF4(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Music19ApplicationMainMenu_submenuProviders;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  v7 = (v5 + 16 + 16 * v6);
  while (v6)
  {
    --v6;
    v8 = *v7;
    v7 -= 2;
    if (v8 == a1)
    {
      if (qword_10117F580 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000060E4(v9, qword_101218A28);
      v10 = a1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22[0] = v21;
        *v13 = 136446210;
        v14 = v10;
        v15 = [v14 description];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = sub_1000105AC(v16, v18, v22);

        *(v13 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v11, v12, "Resign active submenuProvider=%{public}s", v13, 0xCu);
        sub_10000959C(v21);
      }

      swift_beginAccess();
      v20 = sub_1004F3F70(v6);
      swift_endAccess();

      sub_100059768();
      return;
    }
  }
}

uint64_t sub_1006F3114(char *a1)
{
  _s6AlbumsVMa(0);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&a1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController];
  v6 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v7 = sub_10049CB78();

  v8 = *(v5 + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_1006F4654(v8 + v9, v4, _s6AlbumsVMa);
  v4[8] = v7 & 1;
  return sub_100378808(v4);
}

uint64_t sub_1006F3250(char *a1)
{
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s6AlbumsVMa(0);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&a1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController];
  v9 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v10 = v20[1];
  v11 = *(v8 + 48);
  v12 = *(*v11 + 96);
  swift_beginAccess();
  sub_1006F4654(v11 + v12, v7, _s6AlbumsVMa);

  *v7 = v10;
  v13 = v7 + *(v4 + 36);
  v14 = *v13;
  if (v13[1])
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  sub_100375F10(v15 | v14);
  if ((v16 & 0xFF00) == 0x200)
  {
    sub_1006F4654(v7 + *(v4 + 24), v3, _s6AlbumsV5ScopeOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 3)
    {
      sub_1006F46CC(v3, _s6AlbumsV5ScopeOMa);
LABEL_10:
      LOBYTE(v18) = 1;
      LOBYTE(v16) = 4;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_10;
    }

    LOBYTE(v16) = 0;
    LOBYTE(v18) = 1;
  }

  else
  {
    v18 = (v16 >> 8) & 1;
  }

LABEL_11:
  *v13 = v16;
  v13[1] = v18;
  sub_10028ACDC(v15 | v14);
  return sub_100378808(v7);
}

double sub_1006F34A8(void *a1)
{
  v2 = sub_1006E8204();
  v3 = sub_1006E85EC();
  [v2 setCollectionViewLayout:v3];

  sub_1006E9010();
  v4 = sub_1006E935C();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [*(v4 + 32) setHidesNavigationBarDuringPresentation:v6 == 1];

  return result;
}

uint64_t sub_1006F3564()
{
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_1011846E0, &qword_100EC8E40);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_101184700, &unk_100EC03C0);
    v8 = MusicLibrarySectionedResponse.sections.getter();
    (*(v3 + 8))(v5, v2);
    v7 = *(v8 + 16);
  }

  return v7;
}

uint64_t sub_1006F3768(unint64_t a1)
{
  v19 = a1;
  v1 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v18 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&qword_1011846D8, &unk_100EC0390);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - v12;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &unk_1011846E0, &qword_100EC8E40);
    return 0;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &unk_101184700, &unk_100EC03C0);
  v16 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v16 + 16) <= v19)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C140, &qword_1011815C0, &unk_100EBD040, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v17 = dispatch thunk of Collection.distance(from:to:)();
  (*(v18 + 8))(v3, v1);
  return v17;
}

id sub_1006F3B84(uint64_t a1)
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v3 = &v39 - v2;
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v55 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v39 - v7;
  __chkstk_darwin();
  v10 = &v39 - v9;
  v11 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  v15 = __chkstk_darwin();
  v16 = &v39 - v12;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v53 = v10;
  v54 = v11;
  v17 = *(v11 + 16);
  v18 = *(v11 + 80);
  v56 = v13;
  v50 = v17;
  v51 = v14;
  (v17)(&v39 - v12, a1 + ((v18 + 32) & ~v18), v13, v15);
  sub_10037C8AC(v16, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    (*(v54 + 8))(v16, v56);
    sub_1000095E8(v3, &unk_101184730, &unk_100ECB920);
    return 0;
  }

  v45 = ~v18;
  v52 = v16;
  v20 = v5;
  v49 = *(v5 + 32);
  v40 = v18;
  v21 = v8;
  v22 = v5 + 32;
  v23 = v53;
  v49(v53, v3, v4);
  v43 = v22;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v48 = v20;
  v41 = *(v20 + 16);
  v41(v21, v23, v4);
  v24 = *(v20 + 80);
  v25 = v4;
  v42 = v24 | 7;
  v44 = swift_allocObject();
  v49((v44 + ((v24 + 16) & ~v24)), v21, v4);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v55;
  v27 = v25;
  v46 = v25;
  v41(v55, v23, v25);
  v28 = v51;
  v29 = v56;
  v50(v51, v52, v56);
  v30 = (v24 + 24) & ~v24;
  v31 = (v6 + v40 + v30) & v45;
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  v49((v32 + v30), v26, v27);
  v33 = v54;
  (*(v54 + 32))(v32 + v31, v28, v29);
  v34 = objc_opt_self();
  v61 = sub_1006F4490;
  v62 = v44;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100747E6C;
  v60 = &unk_1010BB830;
  v35 = _Block_copy(&aBlock);

  v61 = sub_1006F44F0;
  v62 = v32;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100747EBC;
  v60 = &unk_1010BB858;
  v36 = _Block_copy(&aBlock);

  v37 = isa;
  v38 = [v34 configurationWithIdentifier:isa previewProvider:v35 actionProvider:v36];

  _Block_release(v36);
  _Block_release(v35);
  (*(v48 + 8))(v53, v46);
  (*(v33 + 8))(v52, v56);

  return v38;
}

void sub_1006F41A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___globalHeaderRegistration;
  v3 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  v4(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___headerRegistration, 1, 1, v3);
  v5 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___gridCellRegistration;
  v6 = sub_10010FC20(&qword_101184578, &qword_100EC02B8);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___listCellRegistration;
  v8 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView) = 0;
  v9 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_prefetchingController;
  v10 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v9) = sub_10003AAD8(0xD00000000000001DLL, 0x8000000100E55670);
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController) = 0;
  v11 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___actionMetricsReportingContext;
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___shuffleBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextAndFilterBarButtonGroup) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006F442C()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1006F1150(v2, v3, v4);
}

uint64_t sub_1006F4490()
{
  v1 = *(type metadata accessor for Album() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1006EFADC(v2);
}

unint64_t sub_1006F44F0(uint64_t a1)
{
  v3 = *(type metadata accessor for Album() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1006EFB9C(a1, v7, (v1 + v4), v8);
}

uint64_t sub_1006F45C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006F4654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006F46CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006F4770()
{
  v1 = *(sub_10010FC20(&unk_101184720, &qword_100EC03D8) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1006E9AAC(v2, v3, v4, v5);
}

double sub_1006F47E4()
{
  v1 = *(sub_10010FC20(&unk_101184720, &qword_100EC03D8) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1006EA304(v2, v3);
}

unint64_t sub_1006F4854()
{
  result = qword_10119F3C0[0];
  if (!qword_10119F3C0[0])
  {
    sub_1001109D0(&qword_1011846D8, &unk_100EC0390);
    sub_1006F4908(&unk_10118D190, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    result = swift_getWitnessTable();
    atomic_store(result, qword_10119F3C0);
  }

  return result;
}

uint64_t sub_1006F4908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006F49AC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicItemState(255, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v5);
  swift_getWitnessTable();
  type metadata accessor for ObservedObject();
  if (v6 <= 0x3F && v3 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      sub_1006F5528(319);
      if (v8 <= 0x3F)
      {
        sub_1006F558C(319, &qword_101197850, &type metadata accessor for State);
        if (v9 <= 0x3F)
        {
          sub_1006F558C(319, qword_10118F2D0, &type metadata accessor for Environment);
          if (v10 <= 0x3F)
          {
            sub_1006FA870(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
            if (v11 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1006F4BAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v3 - 8);
  v32 = *(v4 + 84);
  v31 = *(v5 + 84);
  if (v32 <= v31)
  {
    v6 = *(v5 + 84);
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v30 = type metadata accessor for GenericMusicItem();
  v7 = *(v30 - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 > v6)
  {
    v6 = v9;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v6;
  }

  v11 = *(type metadata accessor for ColorScheme() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v4 + 80);
  v14 = *(v4 + 64);
  v15 = *(v5 + 80);
  v16 = *(v5 + 64);
  if (v8)
  {
    v17 = 7;
  }

  else
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v7 + 80) & 0xF8 | 7;
  if (a2 <= v10)
  {
    goto LABEL_39;
  }

  v19 = *(v11 + 80) & 0xF8 | 7;
  v20 = v12 + ((v19 + ((((v17 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v16 + v18 + ((v14 + v15 + ((v13 + 16) & ~v13)) & ~v15)) & ~v18) + 31) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v19) + 1;
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_20;
  }

  v24 = ((a2 - v10 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v24))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v24 <= 0xFF)
    {
      if (v24 < 2)
      {
        goto LABEL_39;
      }

LABEL_20:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_39;
      }

LABEL_28:
      v25 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v25 = 0;
      }

      if (v20)
      {
        if (v20 > 3)
        {
          LODWORD(v20) = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            LODWORD(v20) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v20) = *a1;
          }
        }

        else if (v20 == 1)
        {
          LODWORD(v20) = *a1;
        }

        else
        {
          LODWORD(v20) = *a1;
        }
      }

      return v10 + (v20 | v25) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_28;
    }
  }

LABEL_39:
  if ((v6 & 0x80000000) != 0)
  {
    v27 = (a1 + v13 + 16) & ~v13;
    if (v32 == v10)
    {
      v28 = *(v4 + 48);
    }

    else
    {
      v27 = (v27 + v14 + v15) & ~v15;
      if (v31 != v10)
      {
        v29 = (*(v7 + 48))((v27 + v16 + v18) & ~v18, v8, v30);
        if (v29 >= 2)
        {
          return v29 - 1;
        }

        else
        {
          return 0;
        }
      }

      v28 = *(v5 + 48);
    }

    return v28(v27);
  }

  v26 = *(a1 + 1);
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  return (v26 + 1);
}

void sub_1006F4FE4(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v40 = v5;
  v6 = *(v4 - 8);
  v38 = *(v6 + 84);
  v39 = *(v5 + 84);
  if (v39 <= v38)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v36 = type metadata accessor for GenericMusicItem();
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  v37 = v10;
  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = 0;
  v14 = *(type metadata accessor for ColorScheme() - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v5 + 80);
  v17 = *(v5 + 64);
  v18 = *(v6 + 80);
  v19 = *(v6 + 64);
  v20 = *(v8 + 80) & 0xF8 | 7;
  v21 = *(v8 + 64);
  if (!v9)
  {
    ++v21;
  }

  v22 = *(v14 + 80) & 0xF8 | 7;
  v23 = v15 + ((v22 + ((((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v19 + v20 + ((v17 + v18 + ((v16 + 16) & ~v16)) & ~v18)) & ~v20) + 31) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v22) + 1;
  if (a3 > v12)
  {
    if (v23 <= 3)
    {
      v24 = ((a3 - v12 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v24))
      {
        v13 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v13 = v25;
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
  }

  if (v12 < a2)
  {
    v26 = ~v12 + a2;
    if (v23 < 4)
    {
      v27 = (v26 >> (8 * v23)) + 1;
      if (v23)
      {
        v28 = v26 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v28;
            if (v13 > 1)
            {
LABEL_65:
              if (v13 == 2)
              {
                *(a1 + v23) = v27;
              }

              else
              {
                *(a1 + v23) = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v13 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v28;
        *(a1 + 2) = BYTE2(v28);
      }

      if (v13 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v26;
      v27 = 1;
      if (v13 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v13)
    {
      *(a1 + v23) = v27;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v23) = 0;
  }

  else if (v13)
  {
    *(a1 + v23) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if ((v11 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v29 = (a1 + v16 + 16) & ~v16;
  if (v39 == v12)
  {
    v30 = *(v40 + 56);
    v31 = a2;

LABEL_54:
    v30(v29, v31);
    return;
  }

  v29 = (v29 + v17 + v18) & ~v18;
  if (v38 == v12)
  {
    v30 = *(v6 + 56);
    v31 = a2;

    goto LABEL_54;
  }

  v32 = ((v29 + v19 + v20) & ~v20);
  if (v37 >= a2)
  {
    v35 = *(v8 + 56);

    v35(v32, a2 + 1, v9, v36);
  }

  else
  {
    v33 = (v21 + 7) & 0xFFFFFFF8;
    if (v33 != -8)
    {
      v34 = v32;
      bzero(v32, (v33 + 8));
      *v34 = ~v37 + a2;
    }
  }
}

void sub_1006F5528(uint64_t a1)
{
  if (!qword_10119F448)
  {
    sub_1001109D0(&unk_101189DA0, &unk_100EBF370);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10119F448);
    }
  }
}

void sub_1006F558C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1006F5624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v108 = a1;
  v109 = a2;
  v4 = a1 - 8;
  v107 = *(a1 - 8);
  __chkstk_darwin();
  v105 = v5;
  v106 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for EnvironmentValues();
  v84 = *(v85 - 8);
  __chkstk_darwin();
  v83 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for ColorScheme();
  v101 = *(v104 - 8);
  __chkstk_darwin();
  v87 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v81 - v8;
  __chkstk_darwin();
  v82 = (&v81 - v9);
  __chkstk_darwin();
  v103 = &v81 - v10;
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v96 = *(v11 - 8);
  v97 = v11;
  __chkstk_darwin();
  v95 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v81 - v13;
  v100 = sub_10010FC20(&qword_10119F450, &qword_100EDE808) - 8;
  __chkstk_darwin();
  v92 = &v81 - v14;
  v94 = sub_10010FC20(&qword_10119F458, &qword_100EDE810) - 8;
  __chkstk_darwin();
  v110 = &v81 - v15;
  v98 = sub_10010FC20(&qword_10119F460, &qword_100EDE818);
  __chkstk_darwin();
  v102 = &v81 - v16;
  v99 = type metadata accessor for MusicFavoriteStatus();
  v17 = *(v99 - 8);
  __chkstk_darwin();
  v90 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = &v81 - v19;
  v88 = v4;
  v20 = *(v4 + 44);
  v21 = *(v4 + 24);
  v22 = *(v4 + 32);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = *(AssociatedConformanceWitness + 16);
  v25 = swift_checkMetadataState();
  LOBYTE(v4) = v24(v25, AssociatedConformanceWitness);
  v26 = v88;
  v91 = (*(v22 + 56))(v2 + v20, v21, v22);
  v27 = v89;
  (*(AssociatedConformanceWitness + 24))(v25, AssociatedConformanceWitness);
  v28 = v90;
  v29 = v99;
  (*(v17 + 104))(v90, enum case for MusicFavoriteStatus.favorited(_:), v99);
  v30 = v27;
  v31 = v28;
  static MusicFavoriteStatus.== infix(_:_:)();
  v32 = *(v17 + 8);
  v32(v31, v29);
  v32(v30, v29);
  v33 = v3;
  v34 = v26;
  v35 = v33 + *(v26 + 56);
  v36 = *v35;
  v37 = *(v35 + 8);
  v112 = v36;
  v113 = v37;
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  State.wrappedValue.getter();
  LODWORD(v32) = v111;
  v38 = v92;
  sub_1006F6174(v33, v4 & 1, v21, v22, v92);
  v39 = (v38 + *(v100 + 60));
  v99 = v21;
  v100 = v22;
  sub_1006F6A48(v33, v32, v91 & 1, v21, v22, v39);
  v40 = *(**(v33 + 8) + 256);

  v42 = v93;
  v40(v41);

  v43 = v95;
  v44 = v96;
  v45 = v97;
  (*(v96 + 104))(v95, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v97);
  v46 = v43;
  LOBYTE(v43) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v47 = *(v44 + 8);
  v47(v46, v45);
  v47(v42, v45);
  if (v43)
  {
    v48 = 1.0;
  }

  else
  {
    v48 = 0.5;
  }

  v49 = v110;
  sub_10003D17C(v38, v110, &qword_10119F450, &qword_100EDE808);
  *(v49 + *(v94 + 44)) = v48;
  KeyPath = swift_getKeyPath();
  v51 = v33 + *(v34 + 60);
  v52 = *v51;
  if (*(v51 + 8) != 1)
  {

    v58 = static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v59, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v60 = v83;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v61 = sub_1000D8F20(v52, 0);
    (*(v84 + 8))(v60, v85, v61);
    if (v112 != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v97 = KeyPath;
    v53 = v108;
    v62 = v82;
    sub_10056CEEC(v82);
    v63 = v101;
    v56 = *(v101 + 32);
    v64 = v87;
    v65 = v62;
    v57 = v104;
    v56(v87, v65, v104);
    v66 = (*(v63 + 88))(v64, v57);
    v55 = v102;
    v54 = v103;
    if (v66 == enum case for ColorScheme.light(_:))
    {
      v67 = v86;
      (*(v63 + 104))(v86, enum case for ColorScheme.dark(_:), v57);
    }

    else
    {
      v68 = *(v63 + 104);
      v67 = v86;
      if (v66 == enum case for ColorScheme.dark(_:))
      {
        (v68)(v86, enum case for ColorScheme.light(_:), v57);
      }

      else
      {
        v68(v86);
        (*(v63 + 8))(v87, v57);
      }
    }

    v56(v54, v67, v57);
    KeyPath = v97;
    goto LABEL_14;
  }

  if (v52)
  {
    goto LABEL_8;
  }

LABEL_6:
  v53 = v108;
  v54 = v103;
  sub_10056CEEC(v103);
  v55 = v102;
  v56 = *(v101 + 32);
  v57 = v104;
LABEL_14:
  v69 = (v55 + *(v98 + 36));
  v70 = sub_10010FC20(&qword_10118F360, &qword_100ECBB40);
  v56(v69 + *(v70 + 28), v54, v57);
  *v69 = KeyPath;
  sub_10003D17C(v110, v55, &qword_10119F458, &qword_100EDE810);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v71 = *(*qword_101218AC8 + 456);
  v72 = sub_10010FC20(&qword_10119F468, &qword_100EDE850);
  v73 = v109;
  v71();
  v75 = v106;
  v74 = v107;
  (*(v107 + 16))(v106, v33, v53);
  v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v77 = swift_allocObject();
  v78 = v100;
  *(v77 + 16) = v99;
  *(v77 + 24) = v78;
  (*(v74 + 32))(v77 + v76, v75, v53);
  result = sub_10003D17C(v55, v73, &qword_10119F460, &qword_100EDE818);
  v80 = (v73 + *(v72 + 56));
  *v80 = sub_1006F9C60;
  v80[1] = v77;
  return result;
}

void sub_1006F6174(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  sub_1006F6200(a3, a4, a5);
  v10 = sub_10010FC20(qword_10119F510, &qword_100EDE958);
  sub_1006F6658(a1, a3, a4, (a5 + *(v10 + 68)));
  sub_1006F6900(v7, (a5 + *(v10 + 72)));
}

uint64_t sub_1006F6200@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v53 = a3;
  sub_10010FC20(&qword_1011831D0, &unk_100EC4CD0);
  __chkstk_darwin();
  v6 = v44 - v5;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v8 = v44 - v7;
  v9 = type metadata accessor for Text.Suffix();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin();
  v50 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemCell(0, a1, a2, v11);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 32);
  v14 = swift_checkMetadataState();
  v54[0] = v13(v14, AssociatedConformanceWitness);
  v54[1] = v15;
  sub_100009838();
  v16 = Text.init<A>(_:)();
  v47 = v17;
  v48 = v16;
  v49 = v18;
  v54[6] = v16;
  v54[7] = v17;
  v46 = v19 & 1;
  v55 = v19 & 1;
  v56 = v18;
  (*(AssociatedConformanceWitness + 72))(v14, AssociatedConformanceWitness);
  LOBYTE(v8) = TextBadge.init(for:isPlayable:)(v8, 1);
  static FavoriteBadgeConfiguration.default.getter(v54);
  TextBadge.view(favoriteBadgeConfiguration:)(v54, v8, v20);
  v22 = v21;
  v24 = v23;
  v45 = v25;
  v44[1] = v26;
  sub_10028E664(v54);
  (*(AssociatedConformanceWitness + 24))(v14, AssociatedConformanceWitness);
  v27 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  LOBYTE(a1) = TextBadge.init(for:)(v6);
  static FavoriteBadgeConfiguration.default.getter(v54);
  TextBadge.view(favoriteBadgeConfiguration:)(v54, a1, v28);
  v30 = v29;
  v32 = v31;
  LOBYTE(v6) = v33;
  sub_10028E664(v54);
  v34 = static Text.+ infix(_:_:)();
  v36 = v35;
  LOBYTE(v8) = v37;
  sub_10011895C(v30, v32, v6 & 1);

  sub_10011895C(v22, v24, v45 & 1);

  v38 = v50;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v34, v36, v8 & 1);

  v39 = v53;
  View.textSuffix(_:)();
  (*(v51 + 8))(v38, v52);
  sub_10011895C(v48, v47, v46);

  v40 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10010FC20(&qword_101187818, &unk_100ED7870);
  v43 = (v39 + *(result + 36));
  *v43 = KeyPath;
  v43[1] = v40;
  return result;
}

void sub_1006F6658(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  __chkstk_darwin();
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ItemCell(0, v11, v12, v13);
  (*(v8 + 16))(v10, a1 + *(v14 + 40), a2);
  swift_getDynamicType();
  (*(v8 + 8))(v10, a2);
  v15 = (*(a3 + 48))(a2, a3);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v15)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = *(AssociatedConformanceWitness + 40);
    v22 = swift_checkMetadataState();
    v38 = v21(v22, AssociatedConformanceWitness);
    v39 = v23;
    sub_100009838();
    v24 = Text.init<A>(_:)();
    v26 = v25;
    LOBYTE(AssociatedConformanceWitness) = v27;
    static Font.caption.getter();
    v28 = Text.font(_:)();
    v30 = v29;
    v32 = v31;

    sub_10011895C(v24, v26, AssociatedConformanceWitness & 1);

    LODWORD(v38) = static HierarchicalShapeStyle.secondary.getter();
    v33 = v28;
    v16 = Text.foregroundStyle<A>(_:)();
    v17 = v34;
    LOBYTE(v26) = v35;
    v19 = v36;
    sub_10011895C(v33, v30, v32 & 1);

    v18 = v26 & 1;
  }

  *a4 = v16;
  a4[1] = v17;
  a4[2] = v18;
  a4[3] = v19;
}

void sub_1006F6900(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    Image.init(systemName:)();
    v3 = Text.init(_:)();
    v5 = v4;
    v7 = v6;
    static Font.callout.getter();
    v8 = Text.font(_:)();
    v10 = v9;
    v12 = v11;

    sub_10011895C(v3, v5, v7 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v13 = Text.foregroundStyle<A>(_:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_10011895C(v8, v10, v12 & 1);

    v20 = v17 & 1;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v20 = 0;
    v19 = 0;
  }

  *a2 = v13;
  a2[1] = v15;
  a2[2] = v20;
  a2[3] = v19;
}

uint64_t sub_1006F6A48@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v32 = a3;
  v39 = a6;
  v10 = sub_10010FC20(&qword_10119F478, &qword_100EDE860);
  v36 = *(v10 - 8);
  v37 = v10;
  __chkstk_darwin();
  v33 = (&v30 - v11);
  sub_10010FC20(&qword_10119F480, &qword_100EDE868);
  __chkstk_darwin();
  v38 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v30 - v13;
  type metadata accessor for ItemCell(0, a4, a5, v14);
  v15 = *(a5 + 32);
  v15(a4, a5);
  v16 = sub_100042A50();

  v34 = a2;
  if (v16)
  {
    v17 = static Alignment.center.getter();
    v30 = v18;
    v31 = v17;
    sub_1006F6E88(a2 & 1, v32 & 1, a4, a5, v44);
    memcpy(v40, v44, sizeof(v40));
    memcpy(v41, v44, 0x108uLL);
    sub_1000089F8(v40, v43, &qword_10119F4A0, &qword_100EDE888);
    sub_1000095E8(v41, &qword_10119F4A0, &qword_100EDE888);
    memcpy(v42, v40, 0x108uLL);
    static Alignment.trailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    v43[0] = v31;
    v43[1] = v30;
    memcpy(&v43[2], v42, 0x108uLL);
    UIScreen.Dimensions.size.getter();
    memcpy(v44, v43, 0x148uLL);
  }

  else
  {
    sub_1006F9CEC(v44);
  }

  v15(a4, a5);
  v19 = 1;
  v20 = sub_100042A50();

  v21 = v35;
  if (v20)
  {
    v22 = static Alignment.leading.getter();
    v23 = v33;
    *v33 = v22;
    *(v23 + 8) = v24;
    v25 = sub_10010FC20(&qword_10119F498, &qword_100EDE880);
    sub_1006F7A04(a1, v34 & 1, a4, a5, v23 + *(v25 + 44));
    sub_1006F9D2C(v23, v21);
    v19 = 0;
  }

  (*(v36 + 56))(v21, v19, 1, v37);
  memcpy(v41, v44, sizeof(v41));
  v26 = v38;
  sub_1000089F8(v21, v38, &qword_10119F480, &qword_100EDE868);
  memcpy(v42, v41, sizeof(v42));
  v27 = v39;
  memcpy(v39, v41, 0x148uLL);
  v28 = sub_10010FC20(&qword_10119F488, &qword_100EDE870);
  sub_1000089F8(v26, v27 + *(v28 + 48), &qword_10119F480, &qword_100EDE868);
  sub_1000089F8(v42, v43, &qword_10119F490, &qword_100EDE878);
  sub_1000095E8(v21, &qword_10119F480, &qword_100EDE868);
  sub_1000095E8(v26, &qword_10119F480, &qword_100EDE868);
  memcpy(v43, v41, sizeof(v43));
  return sub_1000095E8(v43, &qword_10119F490, &qword_100EDE878);
}

void *sub_1006F6E88@<X0>(char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a6;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006F7094(a2 & 1, a4, a5, v22);
  if (a3)
  {
    Image.init(systemName:)();
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v14 = Image.resizable(capInsets:resizingMode:)();

    (*(v11 + 8))(v13, v10);
    v15 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v17 = *(&v22[16] + 8);
    v18 = *(&v22[17] + 8);
    v19 = *(&v22[18] + 8);
  }

  else
  {
    v14 = 0;
    KeyPath = 0;
    v15 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *&v22[12] = v14;
  *(&v22[12] + 1) = KeyPath;
  *&v22[13] = v15;
  *(&v22[13] + 8) = v17;
  *(&v22[14] + 8) = v18;
  *(&v22[15] + 8) = v19;
  return memcpy(v21, v22, 0x108uLL);
}

double sub_1006F7094@<D0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for ItemCell(0, a2, a3, a3);
  (*(a3 + 32))(a2, a3);
  v9 = sub_100042A50();

  if ((v9 & 1) != 0 || (sub_1006F7668(v8) & 1) == 0)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = *(AssociatedConformanceWitness + 48);
    v33 = swift_checkMetadataState();
    v34 = v32(v33, AssociatedConformanceWitness);
    if (v35)
    {
      HIDWORD(v36) = 0;
      v37 = 0xE000000000000000;
    }

    else
    {
      *&v82 = v34;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
    }

    DWORD1(v82) = HIDWORD(v36);
    *(&v82 + 1) = v37;
    sub_100009838();
    v38 = Text.init<A>(_:)();
    v40 = v39;
    v42 = v41;
    LODWORD(v82) = static HierarchicalShapeStyle.secondary.getter();
    v43 = Text.foregroundStyle<A>(_:)();
    v45 = v44;
    v47 = v46;
    sub_10011895C(v38, v40, v42 & 1);

    v48 = Text.monospacedDigit()();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_10011895C(v43, v45, v47 & 1);

    KeyPath = swift_getKeyPath();
    v56 = swift_getKeyPath();
    v79 = v52 & 1;
    v78 = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(&v80[6] + 7) = *&v80[21];
    *(&v80[8] + 7) = *&v80[23];
    *(&v80[10] + 7) = *&v80[25];
    *(&v80[12] + 7) = v81;
    *(v80 + 7) = *&v80[15];
    *(&v80[2] + 7) = *&v80[17];
    *(&v80[4] + 7) = *&v80[19];
    v63 = v48;
    v64 = v50;
    LOBYTE(v65) = v52 & 1;
    v66 = v54;
    v67 = KeyPath;
    v68 = 0x3FE0000000000000;
    v69 = v56;
    v70 = 1;
    v71[0] = 0;
    v74 = *&v80[6];
    v73 = *&v80[4];
    v72 = *&v80[2];
    *&v71[1] = *v80;
    *&v77[15] = *(&v81 + 1);
    *v77 = *&v80[12];
    v76 = *&v80[10];
    v75 = *&v80[8];
    sub_1002D8E38(&v63);
    sub_10010FC20(&qword_10119F4A8, &qword_100EDE920);
    sub_10010FC20(&qword_10119F4B0, &qword_100EDE928);
    sub_1006F9D9C();
    sub_1006F9E28();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v10 tintColor];
    v12 = [v10 labelColor];
    v13 = [v12 colorWithAlphaComponent:0.35];

    v14 = [v10 labelColor];
    v15 = [v14 colorWithAlphaComponent:0.2];

    v16 = [v10 labelColor];
    v17 = [v16 colorWithAlphaComponent:0.6];

    UIScreen.Dimensions.size.getter();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v82) = 0;
    LOBYTE(v63) = a1 & 1;
    v64 = v19;
    v65 = v21;
    v66 = v23;
    v67 = v25;
    LOBYTE(v68) = v26;
    v69 = v27;
    v70 = v28;
    *v71 = v29;
    *&v71[8] = v30;
    v71[16] = 0;
    sub_1002D8E44(&v63);
    sub_10010FC20(&qword_10119F4A8, &qword_100EDE920);
    sub_10010FC20(&qword_10119F4B0, &qword_100EDE928);
    sub_1006F9D9C();
    sub_1006F9E28();
    _ConditionalContent<>.init(storage:)();
  }

  v57 = v91;
  a4[8] = v90;
  a4[9] = v57;
  a4[10] = v92[0];
  *(a4 + 169) = *(v92 + 9);
  v58 = v87;
  a4[4] = v86;
  a4[5] = v58;
  v59 = v89;
  a4[6] = v88;
  a4[7] = v59;
  v60 = v83;
  *a4 = v82;
  a4[1] = v60;
  result = *&v84;
  v62 = v85;
  a4[2] = v84;
  a4[3] = v62;
  return result;
}

uint64_t sub_1006F7668(uint64_t a1)
{
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v7 = type metadata accessor for GenericMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v23 - v11;
  sub_10010FC20(&qword_10119F470, &qword_100EDE858);
  v28 = v1;
  State.wrappedValue.getter();
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    v14 = v6;
  }

  else
  {
    v24 = v10;
    v26 = v8;
    v27 = v12;
    v23 = *(v8 + 32);
    v23(v12, v6, v7);
    v25 = *(a1 + 36);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = *(AssociatedConformanceWitness + 80);
    v17 = swift_checkMetadataState();
    v16(v17, AssociatedConformanceWitness);
    if (v13(v4, 1, v7) != 1)
    {
      v19 = v24;
      v23(v24, v4, v7);
      sub_1006FBE4C(&qword_1011951D8, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      sub_1006FBE4C(&qword_10119F4F8, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      v20 = v27;
      v18 = static MusicItem<>.==~ infix(_:_:)();
      v21 = *(v26 + 8);
      v21(v19, v7);
      v21(v20, v7);
      return v18 & 1;
    }

    (*(v26 + 8))(v27, v7);
    v14 = v4;
  }

  sub_1000095E8(v14, &unk_101189DA0, &unk_100EBF370);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1006F7A04@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a2;
  v17 = a1;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v9 = &v17 - v8;
  type metadata accessor for ItemCell(0, a3, a4, v10);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 64);
  v13 = swift_checkMetadataState();
  v12(v13, AssociatedConformanceWitness);
  v14 = sub_10010FC20(&qword_10119F500, &qword_100EDE948);
  v15 = *(v14 + 40);
  *(a5 + v15) = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  swift_storeEnumTagMultiPayload();
  sub_1000089F8(v9, a5, &unk_101188920, &qword_100EBCC50);
  sub_1006F7BD8(v18 & 1, a3, a4, (a5 + *(v14 + 36)));
  return sub_1000095E8(v9, &unk_101188920, &qword_100EBCC50);
}

uint64_t sub_1006F7BD8@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, double *a4@<X8>)
{
  v6 = type metadata accessor for ItemCell(0, a2, a3, a3);
  result = sub_1006F7668(v6);
  if (result)
  {
    static Color.black.getter();
    v37 = Color.opacity(_:)();

    v8 = static Alignment.center.getter();
    v35 = v9;
    v36 = v8;
    v10 = WaveformPlayIndicator.ColorPalette.overlay.unsafeMutableAddressor();
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = *v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    LOBYTE(v39[0]) = a1 & 1;
    v39[1] = v14;
    v39[2] = v15;
    v39[3] = v16;
    v39[4] = v17;
    LOBYTE(v40) = v18;
    v41 = v19;
    v42 = v21;
    v43 = v23;
    v44 = v25;
    LOBYTE(v45) = 0;
    v28 = v35;
    v27 = v36;
    v46 = v36;
    v47 = v35;
    v33 = v40;
    v34 = v39[0];
    v29 = v45;
    v48[0] = a1 & 1;
    v49 = v14;
    v50 = v15;
    v51 = v16;
    v52 = v17;
    v53 = v18;
    v54 = v19;
    v55 = v21;
    v56 = v23;
    v57 = v25;
    v58 = 0;
    v59 = v36;
    v60 = v35;
    sub_1000089F8(v39, v38, &qword_10119F508, &qword_100EDE950);
    result = sub_1000095E8(v48, &qword_10119F508, &qword_100EDE950);
    v31 = v33;
    v30 = v34;
    v32 = v37;
  }

  else
  {
    v32 = 0;
    v30 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v31 = 0;
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
    v26 = 0;
  }

  *a4 = v32;
  *(a4 + 1) = v30;
  *(a4 + 2) = v14;
  *(a4 + 3) = v15;
  *(a4 + 4) = v16;
  *(a4 + 5) = v17;
  *(a4 + 6) = v31;
  *(a4 + 7) = v20;
  *(a4 + 8) = v22;
  *(a4 + 9) = v24;
  *(a4 + 10) = v26;
  *(a4 + 11) = v29;
  *(a4 + 12) = v27;
  *(a4 + 13) = v28;
  return result;
}

uint64_t sub_1006F7DB4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v23[-v11];
  v13 = *a1;
  if (*a1)
  {
    v14 = [*a1 tracklist];
    sub_1001CC118(v12);
  }

  else
  {
    v16 = type metadata accessor for GenericMusicItem();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  v17 = type metadata accessor for ItemCell(0, a3, a4, v15);
  sub_1000089F8(v12, v9, &unk_101189DA0, &unk_100EBF370);
  sub_10010FC20(&qword_10119F470, &qword_100EDE858);
  State.wrappedValue.setter();
  sub_1000095E8(v12, &unk_101189DA0, &unk_100EBF370);
  if (v13)
  {
    v18 = [v13 state] != 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = (a2 + *(v17 + 48));
  v20 = *v19;
  v21 = *(v19 + 1);
  v23[16] = v20;
  v24 = v21;
  v23[15] = v18;
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  return State.wrappedValue.setter();
}

uint64_t sub_1006F7FBC@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v5 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v14 - v10;
  v14[4] = v5;
  v14[5] = v4;
  v15 = a1[2];
  v16 = v2;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_100663950();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_100663950();
  return (v12)(v11, v6);
}

uint64_t sub_1006F81AC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v10 = *(a2 - 8);
  __chkstk_darwin();
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v29 - v12;
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v29 - v18;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  type metadata accessor for Cell(0, &v34);
  sub_100663950();
  v24 = a4;
  sub_100663950();
  (*(v15 + 16))(v17, v19, a3);
  v34 = v17;
  v25 = v30;
  (*(v10 + 16))(v30, v13, a2);
  v35 = v25;
  v33[0] = a3;
  v33[1] = a2;
  v31 = a5;
  v32 = v24;
  sub_1006769F4(&v34, 2uLL, v33);
  v26 = *(v10 + 8);
  v26(v13, a2);
  v27 = *(v15 + 8);
  v27(v19, a3);
  v26(v30, a2);
  return (v27)(v17, a3);
}

uint64_t sub_1006F8430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = *(a1 + 32);
  type metadata accessor for Optional();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v14 - v10;
  v14[4] = v4;
  v14[5] = v5;
  v14[6] = v3;
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  v17 = v14[0];
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_100663950();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_100663950();
  return (v12)(v11, v6);
}

uint64_t sub_1006F8694@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a7;
  v34 = a6;
  v42 = a1;
  v44 = a8;
  v33 = a3;
  type metadata accessor for Optional();
  v32 = a2;
  swift_getTupleTypeMetadata2();
  v41 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v43 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v32 - v16;
  v17 = type metadata accessor for Optional();
  v35 = *(v17 - 8);
  v18 = v35;
  __chkstk_darwin();
  v45 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v32 - v20;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v21 = v38;
  v60 = a6;
  v61 = v38;
  type metadata accessor for Title(0, &v56);
  v55[2] = v21;
  v37 = swift_getWitnessTable();
  v22 = v42;
  sub_100663950();
  static HorizontalAlignment.leading.getter();
  v46 = v32;
  v47 = v33;
  v48 = a4;
  v49 = a5;
  v50 = v34;
  v51 = v21;
  v52 = v22;
  VStack.init(alignment:spacing:content:)();
  v23 = swift_getWitnessTable();
  v24 = v39;
  sub_100663950();
  v25 = v43;
  v26 = *(v43 + 8);
  v26(v15, v13);
  v27 = *(v18 + 16);
  v28 = v45;
  v29 = v36;
  v27(v45, v36, v17);
  v56 = v28;
  (*(v25 + 16))(v15, v24, v13);
  v57 = v15;
  v55[0] = v17;
  v55[1] = v13;
  v53 = v37;
  v54 = v23;
  sub_1006769F4(&v56, 2uLL, v55);
  v26(v24, v13);
  v30 = *(v35 + 8);
  v30(v29, v17);
  v26(v15, v13);
  return (v30)(v45, v17);
}

uint64_t sub_1006F8AF8@<X0>(char *a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v28 = a5;
  v29 = a6;
  v31 = a7;
  v32 = a4;
  v27 = a3;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v26 - v12;
  v14 = *(a1 - 1);
  __chkstk_darwin();
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v26 - v17;
  v19 = v32;
  sub_100663950();
  v36 = a1;
  v37 = a2;
  v20 = v28;
  v38 = v27;
  v39 = v19;
  v40 = v28;
  v41 = v29;
  type metadata accessor for Title(0, &v36);
  v35[2] = v20;
  WitnessTable = swift_getWitnessTable();
  sub_100663950();
  (*(v14 + 16))(v16, v18, a1);
  v36 = v16;
  v22 = v30;
  (*(v10 + 16))(v30, v13, v9);
  v37 = v22;
  v35[0] = a1;
  v35[1] = v9;
  v33 = v32;
  v34 = WitnessTable;
  sub_1006769F4(&v36, 2uLL, v35);
  v23 = *(v10 + 8);
  v23(v13, v9);
  v24 = *(v14 + 8);
  v24(v18, a1);
  v23(v22, v9);
  return (v24)(v16, a1);
}

uint64_t sub_1006F8DC0@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v4 = a1[1].n128_u64[1];
  type metadata accessor for Optional();
  v5 = a1[1].n128_u64[0];
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v14 - v10;
  static VerticalAlignment.center.getter();
  v14[4] = v5;
  v14[5] = v4;
  v15 = a1[2];
  v16 = v2;
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_100663950();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_100663950();
  return (v12)(v11, v6);
}