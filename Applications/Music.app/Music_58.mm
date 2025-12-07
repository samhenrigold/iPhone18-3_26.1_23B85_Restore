double sub_100671FDC(uint64_t a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v2 = &v8 - v1;
  _s14descr101092F61V17RootPlaylistsViewVMa(0);
  _s14descr101092F61V16PlaylistsManagerCMa(0);
  sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa, &unk_100ED1200);
  v3 = StateObject.wrappedValue.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v3;
  sub_1001F4CB8(0, 0, v2, &unk_100EDB620, v6);

  return result;
}

void sub_100672184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[2] = _s14descr101092F61V17RootPlaylistsViewVMa(0);
  __chkstk_darwin();
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v21 - v6;
  if (qword_10117F1F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_1000060E4(v8, qword_101218608);
  sub_100674080(a3, v7, _s14descr101092F61V17RootPlaylistsViewVMa);
  v21[1] = v9;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    _s14descr101092F61V16PlaylistsManagerCMa(0);
    sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa, &unk_100ED1200);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v22);

    v13 = *(v22 + 16);

    sub_1006744DC(v7, _s14descr101092F61V17RootPlaylistsViewVMa);
    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v10, v11, "Playlists loaded: %ld", v12, 0xCu);
  }

  else
  {
    sub_1006744DC(v7, _s14descr101092F61V17RootPlaylistsViewVMa);
  }

  if (qword_10117FA68 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v22);

  v14 = *(v22 + 16);

  _s14descr101092F61V16PlaylistsManagerCMa(0);
  sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa, &unk_100ED1200);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v22);

  v15 = *(v22 + 16);

  if (v14 != v15)
  {
    sub_100674080(a3, v5, _s14descr101092F61V17RootPlaylistsViewVMa);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v22);

      v19 = *(v22 + 16);

      *(v18 + 4) = v19;
      *(v18 + 12) = 2048;
      StateObject.wrappedValue.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v22);

      v20 = *(v22 + 16);

      sub_1006744DC(v5, _s14descr101092F61V17RootPlaylistsViewVMa);
      *(v18 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Playlists mismatch between Preferences.shared.selectedPlaylists count (%ld) and playlistsManager.playlists.count (%ld)", v18, 0x16u);
    }

    else
    {
      sub_1006744DC(v5, _s14descr101092F61V17RootPlaylistsViewVMa);
    }
  }
}

double sub_10067273C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&qword_10119CBF0, &qword_100EDB690);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v22 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v20 - v9;
  v10 = *(_s14descr101092F61V17RootPlaylistsViewVMa(0) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  sub_100674080(a1, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s14descr101092F61V17RootPlaylistsViewVMa);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_100673E88(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v23 = a2;

  sub_10010FC20(&qword_1011937C8, "\n?\n");
  sub_10010FC20(&qword_10119CBF8, &qword_100EDB698);
  sub_100020674(&qword_10119CC00, &qword_1011937C8, "\n?\n", &protocol conformance descriptor for [A]);
  sub_100020674(&qword_10119CC08, &qword_10119CBF8, &qword_100EDB698, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_1006743DC(&unk_1011A4BD0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v14 = v21;
  ForEach<>.init(_:content:)();
  v15 = *(v7 + 16);
  v16 = v22;
  v15(v22, v14, v6);
  *a3 = sub_10024F1B0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = sub_100674378;
  *(a3 + 32) = v13;
  v17 = sub_10010FC20(&qword_10119CC10, &qword_100EDB6A0);
  v15((a3 + *(v17 + 48)), v16, v6);
  KeyValueObservationTrigger.keyPath.getter(sub_10024F1B0, 0);
  v18 = *(v7 + 8);

  v18(v14, v6);
  v18(v16, v6);
  sub_1000D8FC4(sub_10024F1B0, 0);

  return result;
}

void sub_100672AF8()
{
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v34 = &v30 - v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v30 = &v30 - v2;
  v37 = sub_10010FC20(&qword_10119CC38, &unk_100EDB6C0);
  __chkstk_darwin();
  v38 = (&v30 - v3);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v36 = (&v30 - v4);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v30 - v9;
  _s14descr101092F61V17RootPlaylistsViewVMa(0);
  v35 = v0;
  _s14descr101092F61V16PlaylistsManagerCMa(0);
  sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa, &unk_100ED1200);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v39);

  if (!*(v39 + 2))
  {

    return;
  }

  (*(v6 + 16))(v8, &v39[(*(v6 + 80) + 32) & ~*(v6 + 80)], v5);

  v31 = v6;
  v32 = v10;
  v11 = *(v6 + 32);
  v33 = v5;
  v11(v10, v8, v5);
  _s14descr101092F61V20PlaybackStateManagerCMa(0);
  sub_1006743DC(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa, &unk_100ECB248);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v39);

  v12 = v39;
  if (v39)
  {
    v13 = [v39 state];
  }

  else
  {
    v13 = 0;
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v36;
  static Published.subscript.getter(v36);

  v15 = v38;
  v16 = *(v37 + 48);
  *v38 = v13;
  sub_100452540(v14, v15 + v16);
  v17 = v31;
  if (v13 == 4)
  {
    v21 = v38;
    v19 = v33;
    v24 = (*(v31 + 48))(v38 + v16, 1, v33);
    v20 = v32;
    if (v24 == 1)
    {
LABEL_10:
      StateObject.wrappedValue.getter();
      v22 = type metadata accessor for Playlist.Entry();
      v23 = v34;
      (*(*(v22 - 8) + 56))(v34, 1, 1, v22);
      sub_100410208(v20, v23);

      sub_1000095E8(v23, &qword_101191570, &qword_100ECE0B0);
      (*(v17 + 8))(v20, v19);
      sub_1000095E8(v21, &qword_10119CC38, &unk_100EDB6C0);
      return;
    }
  }

  else
  {
    v18 = v13 == 2;
    v20 = v32;
    v19 = v33;
    v21 = v38;
    if (!v18 || (*(v31 + 48))(v38 + v16, 1, v33) == 1)
    {
      goto LABEL_10;
    }
  }

  sub_1000095E8(v21 + v16, &unk_1011814D0, &qword_100EC12A0);
  v25 = StateObject.wrappedValue.getter();
  v26 = type metadata accessor for TaskPriority();
  v27 = v30;
  (*(*(v26 - 8) + 56))(v30, 1, 1, v26);
  type metadata accessor for MainActor();

  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v25;
  sub_1001F524C(0, 0, v27, &unk_100ECE100, v29);

  (*(v17 + 8))(v20, v19);
}

uint64_t sub_100673220(uint64_t a1)
{
  sub_10010FC20(&qword_10119CC18, &qword_100EDB6A8);
  __chkstk_darwin();
  v10 = a1;
  sub_1006733E4(a1, &v9[-v2]);
  _s14descr101092F61V16PlaylistCellViewVMa(0);
  sub_1006743DC(&qword_10119CC20, _s14descr101092F61V16PlaylistCellViewVMa, &unk_100ED5334);
  v3 = _s14descr101092F61V19PlaylistDetailsViewVMa(255);
  v4 = sub_1001109D0(&qword_10119CC28, &unk_100EDB6B0);
  v5 = sub_1006743DC(&qword_10119CBD0, _s14descr101092F61V19PlaylistDetailsViewVMa, &unk_100ECDF14);
  v6 = sub_100009838();
  v7 = sub_100674424();
  v11 = v3;
  v12 = &type metadata for String;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  swift_getOpaqueTypeConformance2();
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_1006733E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[1] = a2;
  v3 = type metadata accessor for ArtworkImage.ReusePolicy();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v10 = v38 - v9;
  v38[0] = sub_10010FC20(&qword_10119CC28, &unk_100EDB6B0);
  __chkstk_darwin();
  v12 = v38 - v11;
  v13 = _s14descr101092F61V19PlaylistDetailsViewVMa(0);
  __chkstk_darwin();
  v15 = (v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v16 + 36);
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 16))(v15 + v17, a1, v18);
  *v15 = swift_getKeyPath();
  sub_10010FC20(&unk_101193FC0, &qword_100EDB580);
  swift_storeEnumTagMultiPayload();
  v19 = v15 + v13[5];
  *v19 = sub_100462628;
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = v15 + v13[6];
  *v20 = sub_10024F1B0;
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = v15 + v13[7];
  *v21 = sub_100462684;
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = v15 + v13[8];
  LOBYTE(v39) = 0;
  State.init(wrappedValue:)();
  v23 = *(&v41[0] + 1);
  *v22 = v41[0];
  *(v22 + 1) = v23;
  v39 = Playlist.name.getter();
  v40 = v24;
  Playlist.artworkViewModel.getter(v10);
  Playlist.variant.getter();
  v25 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v25 - 8) + 56))(v8, 0, 11, v25);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v41);
  (*(v4 + 104))(v6, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v3);
  v26 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v10, v8, v41, v6, v12);
  (*(v4 + 8))(v6, v3, v26);
  sub_1006744DC(v8, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v10, &unk_10118A5E0, &unk_100EBCD90);
  v27 = &v12[*(sub_10010FC20(&qword_1011968F0, &qword_100ED53A8) + 36)];
  *v27 = 0;
  *(v27 + 4) = 257;
  v28 = &v12[*(v38[0] + 36)];
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #10.0 }

  *v28 = _Q0;
  *&v28[*(sub_10010FC20(&qword_101185680, &qword_100EC1010) + 36)] = 256;
  sub_1006743DC(&qword_10119CBD0, _s14descr101092F61V19PlaylistDetailsViewVMa, &unk_100ECDF14);
  sub_100009838();
  sub_100674424();
  View.navigationTitle<A, B>(_:icon:)();
  sub_1000095E8(v12, &qword_10119CC28, &unk_100EDB6B0);

  return sub_1006744DC(v15, _s14descr101092F61V19PlaylistDetailsViewVMa);
}

uint64_t sub_100673954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(_s14descr101092F61V16PlaylistCellViewVMa(0) + 24);
  v5 = type metadata accessor for Playlist();
  result = (*(*(v5 - 8) + 16))(a2 + v4, a1, v5);
  *a2 = sub_100462628;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = sub_10024F1B0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1006739F8@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10119CB68, &qword_100EDB528);
  sub_1001109D0(&qword_10119CB70, &qword_100EDB530);
  sub_100673B28();
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  Color.MusicTint.normal.unsafeMutableAddressor();
  KeyPath = swift_getKeyPath();

  v3 = AnyShapeStyle.init<A>(_:)();
  result = sub_10010FC20(&qword_10119CB90, &qword_100EDB570);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  return result;
}

unint64_t sub_100673B28()
{
  result = qword_10119CB78;
  if (!qword_10119CB78)
  {
    sub_1001109D0(&qword_10119CB70, &qword_100EDB530);
    sub_100020674(&qword_10119CB80, &qword_10119CB88, &qword_100EDB538, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CB78);
  }

  return result;
}

double sub_100673BE0@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_100673C5C(uint64_t a1, uint64_t *a2)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_1000089F8(a1, &v8 - v5, &unk_1011814D0, &qword_100EC12A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v6, v4, &unk_1011814D0, &qword_100EC12A0);

  static Published.subscript.setter();
  return sub_1000095E8(v6, &unk_1011814D0, &qword_100EC12A0);
}

void sub_100673D8C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100673E0C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100673E88(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr101092F61V17RootPlaylistsViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100673EEC()
{
  v1 = *(_s14descr101092F61V17RootPlaylistsViewVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100671FDC(v2);
}

void sub_100673F4C(uint64_t a1, uint64_t a2)
{
  v5 = *(_s14descr101092F61V17RootPlaylistsViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100672184(a1, a2, v6);
}

uint64_t sub_100673FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100502564(a1, v4, v5, v6);
}

uint64_t sub_100674080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1006740E8()
{
  result = qword_10119CBD8;
  if (!qword_10119CBD8)
  {
    sub_1001109D0(&qword_10119CBB0, &qword_100EDB638);
    sub_1001109D0(&qword_10119CBB8, &qword_100EDB648);
    type metadata accessor for MultimodalListStyle();
    sub_100020674(&qword_10119CBC8, &qword_10119CBB8, &qword_100EDB648, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_1006743DC(&qword_10119CBD0, _s14descr101092F61V19PlaylistDetailsViewVMa, &unk_100ECDF14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CBD8);
  }

  return result;
}

uint64_t sub_10067423C()
{
  v1 = _s14descr101092F61V17RootPlaylistsViewVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10010FC20(&unk_101193FC0, &qword_100EDB580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for MultimodalListStyle.Layout();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1000D8FC4(*(v3 + *(v1 + 20)), *(v3 + *(v1 + 20) + 8));
  sub_1000D8FC4(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_1006743DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100674424()
{
  result = qword_10119CC30;
  if (!qword_10119CC30)
  {
    sub_1001109D0(&qword_10119CC28, &unk_100EDB6B0);
    sub_100597D0C();
    sub_100020674(&qword_1011A16F0, &qword_101185680, &qword_100EC1010, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CC30);
  }

  return result;
}

uint64_t sub_1006744DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10067453C()
{
  result = qword_10119CC40;
  if (!qword_10119CC40)
  {
    sub_1001109D0(&qword_10119CB90, &qword_100EDB570);
    sub_100020674(&qword_10119CC48, &qword_10119CC50, &qword_100EDB760, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100020674(&qword_10119CC58, &qword_10119CC60, &qword_100EDB768, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CC40);
  }

  return result;
}

uint64_t sub_100674620@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v5 = &enum case for MusicTabID.browse(_:);
      }

      else
      {
        v5 = &enum case for MusicTabID.radio(_:);
      }
    }

    else if (a1)
    {
      v5 = &enum case for MusicTabID.listenNow(_:);
    }

    else
    {
      v5 = &enum case for MusicTabID.library(_:);
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v5 = &enum case for MusicTabID.search(_:);
    }

    else
    {
      v5 = &enum case for MusicTabID.videos(_:);
    }
  }

  else
  {
    if (a1 == 6)
    {
      v3 = 0x7473696C79616C70;
      v4 = 0xE900000000000073;
    }

    else if (a1 == 7)
    {
      v3 = 0x79616C50696E696DLL;
      v4 = 0xEA00000000007265;
    }

    else
    {
      v3 = 0x6669636570736E75;
      v4 = 0xEB00000000646569;
    }

    *a2 = v3;
    a2[1] = v4;
    v5 = &enum case for MusicTabID.other(_:);
  }

  v6 = *v5;
  v7 = type metadata accessor for MusicTabID();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

double sub_100674774(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 7)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (a2 == 8)
  {
    v2 = 2;
LABEL_5:
    Hasher._combine(_:)(v2);
    return result;
  }

  Hasher._combine(_:)(0);
  String.hash(into:)();

  return result;
}

uint64_t sub_1006748BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100675840(a2);
  *a1 = result;
  return result;
}

Swift::Int sub_1006748EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100674774(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10067493C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100674774(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_100674980(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 8)
  {
    return v3 == 8;
  }

  if ((v3 - 7) >= 2u)
  {
    return sub_100017984(v2, v3);
  }

  return 0;
}

uint64_t sub_1006749CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10117FB10 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101219298);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    swift_unknownObjectRetain();
    sub_10010FC20(&qword_10119CD88, &qword_100EDB908);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Initializing new authority with provider: %{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_100674B64()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = [*(v0 + 16) selectedTab];
  if (!v1 || (v2 = v1, v3 = sub_10003F0FC(), v2, v3 == 7))
  {
    v3 = 1;
  }

  return sub_1006BD694(v3);
}

uint64_t sub_100674BE4(uint64_t a1)
{
  if (*(v1 + 16) && (v2 = sub_1006BD694(a1)) != 0)
  {
    v3 = v2;
    if (qword_10117FB10 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_101219298);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v7 = 136446466;
      type metadata accessor for MusicStackAuthority();

      v8 = String.init<A>(describing:)();
      v10 = sub_1000105AC(v8, v9, &v23);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;
      v11 = String.init<A>(describing:)();
      v13 = sub_1000105AC(v11, v12, &v23);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Returning stack authority=%{public}s for tab=%{public}s", v7, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_10117FB10 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_101219298);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446210;
      v19 = String.init<A>(describing:)();
      v21 = sub_1000105AC(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to retrieve stack authority for tab=%{public}s", v17, 0xCu);
      sub_10000959C(v18);
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100674EDC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MusicTabsAuthority.TabID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 7)
  {
    v8 = v7 - 6;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100674FD8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 7)
  {
    return v1 - 6;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100674FEC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 6;
  }

  return result;
}

unint64_t sub_100675010()
{
  result = qword_10119CD68;
  if (!qword_10119CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CD68);
  }

  return result;
}

unint64_t sub_100675068()
{
  result = qword_10119CD70;
  if (!qword_10119CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CD70);
  }

  return result;
}

unint64_t sub_1006750C0()
{
  result = qword_10119CD78;
  if (!qword_10119CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CD78);
  }

  return result;
}

unint64_t sub_100675118()
{
  result = qword_10119CD80;
  if (!qword_10119CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CD80);
  }

  return result;
}

void *sub_10067516C()
{
  if (*(v0 + 16))
  {
    return sub_1006BD21C();
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1006751A0()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
  if (v2)
  {
  }

  return v2;
}

uint64_t sub_1006751FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    if (a1)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    v5 = (v3 + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
    v6 = *(v3 + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
    a2 = v5[1];
    *v5 = a1;
    v5[1] = v4;
    a1 = v6;
  }

  return sub_100020438(a1, a2);
}

uint64_t (*sub_10067522C(uint64_t *a1))(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
    v5 = *v4;
    v6 = v4[1];
    sub_100030444(*v4, v6);
    if (v5)
    {
      *a1 = v5;
      a1[1] = v6;
      return sub_100675BC4;
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
      return sub_1006752E8;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    return sub_1006752DC;
  }
}

uint64_t sub_1006752EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (!*a1)
  {
    v2 = 0;
  }

  v3 = (a1[2] + OBJC_IVAR____TtC5Music16TabBarController_onMusicTabsChanged);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  return sub_100020438(v4, v5);
}

void sub_100675318(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = [v3 selectedTab];
    if (!v4 || (v5 = v4, v6 = sub_10003F0FC(), v5, v6 == 7))
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 8;
  }

  *a1 = v6;
}

double sub_100675390(unsigned __int8 *result)
{
  if (*(v1 + 16))
  {
    return sub_1006BD30C(*result);
  }

  return v2;
}

void (*sub_1006753BC(uint64_t a1))()
{
  v3 = *(v1 + 16);
  *a1 = v3;
  if (v3)
  {
    v4 = [v3 selectedTab];
    if (!v4 || (v5 = v4, v6 = sub_10003F0FC(), v5, v6 == 7))
    {
      v6 = 1;
    }

    *(a1 + 8) = v6;
    return sub_100675478;
  }

  else
  {
    *(a1 + 8) = 8;
    return UIScreen.Dimensions.size.getter;
  }
}

uint64_t (*sub_1006754A0())(unsigned __int8 *a1)
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged);
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = v2[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  return sub_100675BC8;
}

uint64_t sub_100675530(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_100675BC0;
    v7 = *(v2 + 16);
    if (v7)
    {
LABEL_3:
      v8 = (v7 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged);
      v9 = *v8;
      v10 = v8[1];
      *v8 = v6;
      v8[1] = v5;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = *(v2 + 16);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = v6;
  v10 = v5;
LABEL_6:

  return sub_100020438(v9, v10);
}

uint64_t (*sub_1006755D8(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  if (v3 && (v4 = (v3 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged), v5 = *v4, v6 = v4[1], sub_100030444(*v4, v6), v5))
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1006757A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_100675684;
}

uint64_t sub_100675684(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = a1[1];
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_10067576C;
LABEL_6:
      v8 = v6;
      goto LABEL_8;
    }
  }

  else if (v3)
  {
    v7 = a1[1];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v7;
    v6 = sub_100675BC0;
    goto LABEL_6;
  }

  v8 = 0;
  v5 = 0;
LABEL_8:
  v9 = a1[2];
  if (v9)
  {
    v10 = (v9 + OBJC_IVAR____TtC5Music16TabBarController_onSelectedMusicTabChanged);
    v11 = *v10;
    v12 = v10[1];
    *v10 = v8;
    v10[1] = v5;
    v5 = v12;
    v8 = v11;
  }

  return sub_100020438(v8, v5);
}

uint64_t sub_10067576C(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1006757D0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219298);
  sub_1000060E4(v0, qword_101219298);
  return static Logger.music(_:)(0x6874754173626154, 0xED0000797469726FLL);
}

uint64_t sub_100675840(uint64_t a1)
{
  v2 = type metadata accessor for MusicTabID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v21 - v7;
  v9 = *(v3 + 16);
  v9(&v21 - v7, a1, v2, v6);
  v10 = *(v3 + 88);
  v11 = v10(v8, v2);
  if (v11 == enum case for MusicTabID.listenNow(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 1;
  }

  if (v11 == enum case for MusicTabID.browse(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 2;
  }

  if (v11 == enum case for MusicTabID.videos(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 5;
  }

  if (v11 == enum case for MusicTabID.radio(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 3;
  }

  if (v11 == enum case for MusicTabID.library(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  v13 = *(v3 + 8);
  if (v11 == enum case for MusicTabID.search(_:))
  {
    v13(a1, v2);
    return 4;
  }

  v14 = v8;
  v15 = *(v3 + 8);
  v13(v14, v2);
  (v9)(v5, a1, v2);
  if (v10(v5, v2) != enum case for MusicTabID.other(_:))
  {
    v15(a1, v2);
    v15(v5, v2);
    return 9;
  }

  v16 = v15;
  (*(v3 + 96))(v5, v2);
  v17 = *v5;
  v18 = *(v5 + 1);
  if (v17 != 0x79616C50696E696DLL || v18 != 0xEA00000000007265)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v16(a1, v2);
    if (v20)
    {
      return 7;
    }

    return 9;
  }

  v15(a1, v2);
  return 7;
}

uint64_t sub_100675BF8()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1012192B0 = result;
  *algn_1012192B8 = v1;
  return result;
}

void sub_100675D08(char *a1)
{
  v3 = OBJC_IVAR____TtC5Music29MCDSharePlayTogetherViewModel_session;
  v4 = *&a1[OBJC_IVAR____TtC5Music29MCDSharePlayTogetherViewModel_session];
  v5 = objc_allocWithZone(type metadata accessor for SharePlayTogetherSessionManagementViewController(0));
  *&v1[OBJC_IVAR____TtC5Music41MCDSharePlayTogetherSessionViewController_contentViewController] = sub_10074B30C(v4);
  v20.receiver = v1;
  v20.super_class = type metadata accessor for MCDSharePlayTogetherSessionViewController();
  v6 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", 0, 0);
  v7 = OBJC_IVAR____TtC5Music41MCDSharePlayTogetherSessionViewController_contentViewController;
  v8 = *&v6[OBJC_IVAR____TtC5Music41MCDSharePlayTogetherSessionViewController_contentViewController];
  v9 = v6;
  [v9 addChildViewController:v8];
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [objc_opt_self() clearColor];
  [v11 setBackgroundColor:v12];

  v13 = [v9 view];
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = [*&v6[v7] view];
  if (v14)
  {
    v15 = v14;
    [v13 addSubview:v14];

    sub_100676468();
    v16 = *&a1[v3];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = *((swift_isaMask & *v16) + 0x360);
    v19 = v16;

    v18(sub_1006769E4, v17);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100675F48(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1006769EC;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010B9CE0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002473C();
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_1006761C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      v4 = [v3 popViewControllerAnimated:1];
    }
  }
}

void sub_1006762E0(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for MCDSharePlayTogetherSessionViewController();
  objc_msgSendSuper2(&v14, "viewDidLayoutSubviews");
  v2 = [*&v1[OBJC_IVAR____TtC5Music41MCDSharePlayTogetherSessionViewController_contentViewController] view];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v3 setFrame:{v7, v9, v11, v13}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100676468()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  v3 = UIView.forAutolayout.getter();

  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v4 = static UIFont.preferredFont(forTextStyle:weight:)();
  v5 = objc_opt_self();
  v6 = [v5 configurationWithFont:v4];

  v7 = [v5 configurationWithScale:3];
  v8 = [v6 configurationByApplyingConfiguration:v7];

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6D0;
  v10 = objc_opt_self();
  *(v9 + 32) = [v10 labelColor];
  *(v9 + 40) = [v10 tintColor];
  sub_100009F78(0, &qword_101180C98, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v5 configurationWithPaletteColors:isa];

  v13 = [v8 configurationByApplyingConfiguration:v12];
  [v3 setSymbolConfiguration:v13];

  v14 = v3;
  [v14 setContentMode:1];
  v15 = [objc_allocWithZone(UILabel) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = String._bridgeToObjectiveC()();

  [v15 setText:v16];

  v17 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v15 setFont:v17];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6D0;
  *(v18 + 32) = v14;
  *(v18 + 40) = v15;
  v19 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v20 = v15;
  v21 = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v19 initWithArrangedSubviews:v21];

  [v22 setAxis:0];
  [v22 setSpacing:3.0];
  v23 = [v24 navigationItem];
  [v23 setTitleView:v22];
}

id sub_10067697C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MCDSharePlayTogetherSessionViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1006769F4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin();
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

    v6 = swift_getTupleTypeMetadata();
  }

  __chkstk_darwin();
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
      v28 = *TupleTypeMetadata++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

NSString sub_100676BC4()
{
  result = String._bridgeToObjectiveC()();
  qword_1012192C0 = result;
  return result;
}

uint64_t sub_100676CF4(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = _s13TracklistCellCMa();
  v2 = objc_msgSendSuper2(&v5, "_bridgedConfigurationState");
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_10117FB20 != -1)
  {
    swift_once();
  }

  v3 = qword_1012192C0;
  AnyHashable.init<A>(_:)();
  return UICellConfigurationState.subscript.setter();
}

uint64_t sub_100676DD0(uint64_t a1)
{
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v3 = &v19[-v2];
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v19[-v8];
  static UIBackgroundConfiguration.listPlainCell()();
  v10 = type metadata accessor for UICellConfigurationState();
  v21 = v10;
  v22 = &protocol witness table for UICellConfigurationState;
  v11 = sub_10001C8B8(v20);
  (*(*(v10 - 8) + 16))(v11, a1, v10);
  UIBackgroundConfiguration.updated(for:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_10000959C(v20);
  if (qword_10117FB20 != -1)
  {
    swift_once();
  }

  UICellConfigurationState.subscript.getter();
  if (v21)
  {
    if (swift_dynamicCast() & 1) != 0 && (v19[7])
    {
      v13 = [*HI.Color.prominentBackgroundColor.unsafeMutableAddressor() colorWithAlphaComponent:0.22];
      UIBackgroundConfiguration.backgroundColor.setter();
      v14 = UICellConfigurationState.traitCollection.getter();
      v15 = [v14 userInterfaceIdiom];

      if (v15 == 1)
      {
        v16 = UICellConfigurationState.traitCollection.getter();
        v17 = [v16 horizontalSizeClass];

        if (v17 == 2)
        {
          UIBackgroundConfiguration.cornerRadius.setter();
          UIBackgroundConfiguration.backgroundInsets.setter();
        }
      }
    }
  }

  else
  {
    sub_1000095E8(v20, &qword_10118E0A0, &unk_100ECA380);
  }

  (*(v5 + 16))(v3, v9, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (v12)(v9, v4);
}

id sub_1006772D8(void *a1)
{
  *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data] = xmmword_100EDB9A0;
  v3 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_metrics];
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0x20000;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  *(v3 + 6) = 0;
  v3[56] = 0;
  v1[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent] = 0;
  v6.receiver = v1;
  v6.super_class = _s13TracklistCellCMa();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1006773AC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s13TracklistCellCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100677418(uint64_t a1)
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

uint64_t sub_100677434(uint64_t a1, unsigned int a2)
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

uint64_t sub_100677490(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1006774F0(void *result, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Tracklist.LeadingNumberState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Tracklist.LeadingNumberState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_100677664@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v164 = *(v3 - 8);
  v165 = v3;
  __chkstk_darwin();
  v163 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v161 = *(v5 - 8);
  v162 = v5;
  __chkstk_darwin();
  v160 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DynamicTypeSize();
  v157 = *(v7 - 8);
  v158 = v7;
  __chkstk_darwin();
  v114 = (&v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v159 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v156 = &v109 - v10;
  v11 = type metadata accessor for Tracklist.LeadingIcon(255);
  v205 = v11;
  v206 = sub_1001109D0(&qword_10119D110, &qword_100EDBD30);
  v207 = sub_1001109D0(&qword_10119D118, &qword_100EDBD38);
  v208 = sub_1001109D0(&qword_10119D120, &qword_100EDBD40);
  v209 = &type metadata for Spacer;
  v155 = a1;
  v13 = a1[2];
  v12 = a1[3];
  v14 = a1[4];
  v174 = a1[5];
  v15 = a1[6];
  v200 = v13;
  v201 = v12;
  v16 = v12;
  v169 = v15;
  v170 = v12;
  v202 = v14;
  v203 = v174;
  v204 = v15;
  v210 = type metadata accessor for Tracklist.TrailingIcons(255, &v200);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Tracklist.VerticalTextStack(255, v13, v14, v17);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v205 = v11;
  v206 = sub_1001109D0(&qword_10119D128, &qword_100EDBD48);
  v207 = sub_1001109D0(&qword_10119D130, &qword_100EDBD50);
  sub_1001109D0(&qword_10119D138, &unk_100EDBD58);
  v171 = v14;
  v172 = v13;
  type metadata accessor for Tracklist.HorizontalTextStack(255, v13, v14, v18);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&unk_101184E90, &unk_100EC0AA0);
  v208 = type metadata accessor for ModifiedContent();
  v209 = sub_1001109D0(&qword_101199330, &qword_100ED7DE0);
  v200 = v13;
  v201 = v16;
  v202 = v14;
  v203 = v174;
  v204 = v15;
  v210 = type metadata accessor for Tracklist.TrailingIcons(255, &v200);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  v113 = type metadata accessor for _ConditionalContent();
  v19 = type metadata accessor for Group();
  v116 = *(v19 - 8);
  __chkstk_darwin();
  v115 = &v109 - v20;
  v112 = v19;
  v21 = type metadata accessor for ModifiedContent();
  v136 = *(v21 - 8);
  __chkstk_darwin();
  v168 = &v109 - v22;
  v23 = type metadata accessor for ModifiedContent();
  v148 = *(v23 - 8);
  __chkstk_darwin();
  v143 = &v109 - v24;
  v25 = type metadata accessor for ModifiedContent();
  v149 = *(v25 - 8);
  __chkstk_darwin();
  v145 = &v109 - v26;
  WitnessTable = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v198 = WitnessTable;
  v199 = v28;
  v111 = swift_getWitnessTable();
  v197 = v111;
  v110 = swift_getWitnessTable();
  v195 = v110;
  v196 = &protocol witness table for _PaddingLayout;
  v138 = v21;
  v119 = swift_getWitnessTable();
  v193 = v119;
  v194 = &protocol witness table for _PaddingLayout;
  v151 = v23;
  v120 = swift_getWitnessTable();
  v191 = v120;
  v192 = &protocol witness table for _FlexFrameLayout;
  v29 = swift_getWitnessTable();
  v205 = v25;
  v206 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v125 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v122 = &v109 - v31;
  type metadata accessor for AccessibilityAttachmentModifier();
  v127 = OpaqueTypeMetadata2;
  v32 = type metadata accessor for ModifiedContent();
  v130 = *(v32 - 8);
  __chkstk_darwin();
  v126 = &v109 - v33;
  v34 = type metadata accessor for ModifiedContent();
  v134 = *(v34 - 8);
  __chkstk_darwin();
  v133 = &v109 - v35;
  v36 = _s17ContextMenuButtonVMa(255);
  v152 = v25;
  v205 = v25;
  v206 = v29;
  v121 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v117 = OpaqueTypeConformance2;
  v189 = OpaqueTypeConformance2;
  v190 = v38;
  v132 = v32;
  v118 = swift_getWitnessTable();
  v187 = v118;
  v150 = v38;
  v188 = v38;
  v39 = swift_getWitnessTable();
  v40 = sub_10068DDB4(&qword_101198C40, _s17ContextMenuButtonVMa, &unk_100ED7CB8);
  v141 = v34;
  v205 = v34;
  v206 = v36;
  v123 = v36;
  v124 = v40;
  v128 = v39;
  v207 = v39;
  v208 = v40;
  v129 = *(swift_getOpaqueTypeMetadata2() - 8);
  __chkstk_darwin();
  v167 = &v109 - v41;
  v131 = v42;
  v43 = type metadata accessor for ModifiedContent();
  v137 = *(v43 - 8);
  __chkstk_darwin();
  v135 = &v109 - v44;
  sub_1001109D0(&qword_1011879E8, &qword_100EE1CF0);
  v139 = v43;
  v45 = type metadata accessor for ModifiedContent();
  v144 = *(v45 - 8);
  __chkstk_darwin();
  v140 = &v109 - v46;
  sub_1001109D0(&qword_101184D00, &qword_100EC11B0);
  v147 = v45;
  v47 = type metadata accessor for ModifiedContent();
  v153 = *(v47 - 8);
  v154 = v47;
  __chkstk_darwin();
  v142 = &v109 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v109 - v49;
  v50 = v171;
  v51 = v172;
  v175 = v172;
  v176 = v170;
  v177 = v171;
  v178 = v174;
  v179 = v169;
  v180 = v173;
  v52 = v115;
  Group<A>.init(content:)();
  static Edge.Set.trailing.getter();
  v53 = v112;
  View.padding(_:_:)();
  (*(v116 + 1))(v52, v53);
  static Edge.Set.vertical.getter();
  v54 = v50;
  v55 = *(v50 + 24);
  swift_unknownObjectRetain();
  v56 = v156;
  v116 = v55;
  (v55)(v51, v54);
  swift_unknownObjectRelease();
  v57 = type metadata accessor for ArtworkImage.Info(0);
  v115 = *(*(v57 - 8) + 48);
  (v115)(v56, 1, v57);
  sub_1000095E8(v56, &unk_10119F000, &qword_100EC31D0);
  v58 = v114;
  sub_10056CABC(v114);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 != 1)
  {
    DynamicTypeSize.isAccessibilitySize.getter();
  }

  (*(v157 + 8))(v58, v158);
  v59 = v143;
  v60 = v138;
  v61 = v168;
  View.padding(_:_:)();
  (*(v136 + 8))(v61, v60);
  swift_unknownObjectRetain();
  v62 = v159;
  v63 = v171;
  v64 = v172;
  v116();
  swift_unknownObjectRelease();
  (v115)(v62, 1, v57);
  sub_1000095E8(v62, &unk_10119F000, &qword_100EC31D0);
  static Alignment.center.getter();
  v65 = v151;
  v66 = v145;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v148 + 8))(v59, v65);
  v67 = v160;
  static AccessibilityChildBehavior.combine.getter();
  v68 = v122;
  v69 = v152;
  View.accessibilityElement(children:)();
  (*(v161 + 8))(v67, v162);
  (*(v149 + 8))(v66, v69);
  v70 = v163;
  static AccessibilityTraits.isButton.getter();
  v72 = v126;
  v71 = v127;
  View.accessibilityAddTraits(_:)();
  (*(v164 + 8))(v70, v165);
  (*(v125 + 8))(v68, v71);
  v73 = AccessibilityIdentifier.trackListCell.unsafeMutableAddressor();
  v74 = *v73;
  v75 = v73[1];
  v76 = v73[2];
  v77 = v73[3];

  v78 = v132;
  v79 = v133;
  View.accessibilityIdentifier(_:)(v74, v75, v76, v77, v132, v118);

  (*(v130 + 8))(v72, v78);
  __chkstk_darwin();
  v80 = v64;
  v81 = v63;
  v174 = swift_checkMetadataState();
  v82 = v141;
  v83 = v128;
  v84 = v124;
  View.accessibilityActions<A>(_:)();
  (*(v134 + 8))(v79, v82);
  sub_10010FC20(&unk_101181640, &qword_100EBD090);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_100EBC6B0;
  v86 = v81;
  v87 = *(v81 + 48);
  swift_unknownObjectRetain();
  v88 = v87(v80, v81);
  v90 = v89;
  swift_unknownObjectRelease();
  *(v85 + 32) = v88;
  *(v85 + 40) = v90;
  v205 = v82;
  v206 = v174;
  v207 = v83;
  v208 = v84;
  v91 = swift_getOpaqueTypeConformance2();
  sub_100009838();
  v92 = v135;
  v93 = v131;
  v94 = v167;
  View.accessibilityInputLabels<A>(_:)();

  (*(v129 + 8))(v94, v93);
  static Animation.linear(duration:)();
  v95 = v86;
  v96 = *(v86 + 120);
  swift_unknownObjectRetain();
  LOBYTE(v85) = v96(v172, v95);
  swift_unknownObjectRelease();
  LOBYTE(v205) = v85 & 1;
  v185 = v91;
  v186 = v150;
  v97 = v139;
  v98 = swift_getWitnessTable();
  v99 = v140;
  View.animation<A>(_:value:)();

  (*(v137 + 8))(v92, v97);
  if (qword_10117FBD0 != -1)
  {
    swift_once();
  }

  v100 = sub_100020674(&qword_1011879E0, &qword_1011879E8, &qword_100EE1CF0, &protocol conformance descriptor for _AnimationModifier<A>);
  v183 = v98;
  v184 = v100;
  v101 = v147;
  v102 = swift_getWitnessTable();
  v103 = v142;
  View.font(_:)();
  (*(v144 + 8))(v99, v101);
  v104 = sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v181 = v102;
  v182 = v104;
  v105 = v154;
  swift_getWitnessTable();
  v106 = v146;
  sub_100663950();
  v107 = *(v153 + 8);
  v107(v103, v105);
  sub_100663950();
  return (v107)(v106, v105);
}

uint64_t sub_100678C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v76 = a1;
  v78 = a7;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v71 = v62 - v12;
  v13 = type metadata accessor for Tracklist.LeadingIcon(255);
  v87 = v13;
  v88 = sub_1001109D0(&qword_10119D128, &qword_100EDBD48);
  v89 = sub_1001109D0(&qword_10119D130, &qword_100EDBD50);
  sub_1001109D0(&qword_10119D138, &unk_100EDBD58);
  type metadata accessor for Tracklist.VerticalTextStack(255, a2, a4, v14);
  type metadata accessor for Tracklist.HorizontalTextStack(255, a2, a4, v15);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  sub_1001109D0(&unk_101184E90, &unk_100EC0AA0);
  v90 = type metadata accessor for ModifiedContent();
  v91 = sub_1001109D0(&qword_101199330, &qword_100ED7DE0);
  v82 = a2;
  v83 = a3;
  v84 = a4;
  v85 = a5;
  v86 = a6;
  v16 = a6;
  v72 = a6;
  v92 = type metadata accessor for Tracklist.TrailingIcons(255, &v82);
  swift_getTupleTypeMetadata();
  v17 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v67 = v17;
  v66 = WitnessTable;
  v19 = type metadata accessor for HStack();
  v70 = *(v19 - 8);
  __chkstk_darwin();
  v69 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = v62 - v21;
  __chkstk_darwin();
  v68 = v62 - v22;
  v87 = v13;
  v88 = sub_1001109D0(&qword_10119D110, &qword_100EDBD30);
  v89 = sub_1001109D0(&qword_10119D118, &qword_100EDBD38);
  v90 = sub_1001109D0(&qword_10119D120, &qword_100EDBD40);
  v91 = &type metadata for Spacer;
  v82 = a2;
  v83 = a3;
  v84 = a4;
  v85 = a5;
  v86 = v16;
  v92 = type metadata accessor for Tracklist.TrailingIcons(255, &v82);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v23 = type metadata accessor for TupleView();
  v24 = swift_getWitnessTable();
  v62[2] = v23;
  v62[1] = v24;
  v25 = type metadata accessor for VStack();
  v64 = *(v25 - 8);
  __chkstk_darwin();
  v27 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = v62 - v28;
  v77 = v19;
  v29 = type metadata accessor for _ConditionalContent();
  v74 = *(v29 - 8);
  v75 = v29;
  __chkstk_darwin();
  v73 = v62 - v30;
  v79 = a2;
  v87 = a2;
  v88 = a3;
  v31 = a4;
  v89 = a4;
  v90 = a5;
  v32 = a5;
  v33 = v72;
  v91 = v72;
  type metadata accessor for Tracklist.Cell(0, &v87);
  v34 = v76;

  v35 = sub_1006796C0();

  v36 = v34;
  if (sub_100679A18())
  {
    static HorizontalAlignment.leading.getter();
    __chkstk_darwin();
    v62[-8] = v79;
    v62[-7] = a3;
    v62[-6] = v31;
    v62[-5] = v32;
    v62[-4] = v33;
    v62[-3] = v34;
    LOBYTE(v62[-2]) = v35 & 1;
    VStack.init(alignment:spacing:content:)();
    v37 = swift_getWitnessTable();
    v38 = v63;
    sub_100663950();
    v39 = *(v64 + 8);
    v39(v27, v25);
    sub_100663950();
    v40 = v77;
    v41 = swift_getWitnessTable();
    v42 = v73;
    sub_100653878(v27, v25, v40, v37, v41);
    v39(v27, v25);
    v39(v38, v25);
  }

  else
  {
    v43 = v25;
    v64 = v32;
    v44 = *(v31 + 24);
    swift_unknownObjectRetain();
    v45 = v71;
    v44(v79, v31);
    swift_unknownObjectRelease();
    v46 = type metadata accessor for ArtworkImage.Info(0);
    v47 = (*(*(v46 - 8) + 48))(v45, 1, v46);
    sub_1000095E8(v45, &unk_10119F000, &qword_100EC31D0);
    if (qword_10117FB28 != -1)
    {
      swift_once();
    }

    v48 = v36;
    v49 = v64;
    v50 = v79;
    if (byte_10119CDC0 == 1 || v47 != 1)
    {
      static VerticalAlignment.center.getter();
    }

    else
    {
      static VerticalAlignment.firstTextLineCenter.getter();
    }

    __chkstk_darwin();
    v62[-8] = v50;
    v62[-7] = a3;
    v62[-6] = v31;
    v62[-5] = v49;
    v62[-4] = v33;
    v62[-3] = v48;
    LOBYTE(v62[-2]) = v35 & 1;
    v51 = v65;
    HStack.init(alignment:spacing:content:)();
    v52 = v77;
    v53 = swift_getWitnessTable();
    v54 = v68;
    sub_100663950();
    v55 = *(v70 + 8);
    v55(v51, v52);
    v56 = v69;
    sub_100663950();
    v57 = swift_getWitnessTable();
    v42 = v73;
    sub_100653970(v56, v43, v52, v57, v53);
    v55(v56, v52);
    v55(v54, v52);
  }

  v58 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v80 = v58;
  v81 = v59;
  v60 = v75;
  swift_getWitnessTable();
  sub_100663950();
  return (*(v74 + 8))(v42, v60);
}

uint64_t sub_1006796C0()
{
  v1 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin();
  v26 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v24 - v3;
  v4 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = *(*v0 + 256);
  v12(v9);
  (*(v5 + 104))(v8, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v4);
  v13 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v15 = (v14)(v11, v4);
  if (v13)
  {
    return 1;
  }

  v17 = v29;
  (v12)(v15);
  if ((*(v5 + 88))(v17, v4) == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v5 + 96))(v17, v4);
    v19 = v27;
    v18 = v28;
    v20 = v25;
    (*(v27 + 32))(v25, v17, v28);
    v21 = v26;
    (*(v19 + 104))(v26, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v18);
    v22 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
    v23 = *(v19 + 8);
    v23(v21, v18);
    v23(v20, v18);
    if (v22)
    {
      return 1;
    }
  }

  else
  {
    v14(v17, v4);
  }

  return 0;
}

uint64_t sub_100679A18()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v5 = &v8 - v4;
  sub_10056CAE4((&v8 - v4));
  sub_10056CABC(v3);
  v6 = sub_10068D7BC(v5, v3);
  (*(v1 + 8))(v3, v0);
  sub_1000095E8(v5, &unk_101184290, &qword_100EC0E60);
  return v6 & 1;
}

uint64_t sub_100679B88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a2;
  v77 = a8;
  v79 = a5;
  v71 = *(type metadata accessor for Tracklist.VerticalTextStack(0, a3, a5, a4) - 8);
  __chkstk_darwin();
  v70 = &v55 - v14;
  v72 = v15;
  v76 = type metadata accessor for ModifiedContent();
  v73 = *(v76 - 8);
  __chkstk_darwin();
  v75 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = &v55 - v17;
  v65 = type metadata accessor for DynamicTypeSize();
  v64 = *(v65 - 1);
  __chkstk_darwin();
  v56 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v55 - v19;
  v101 = type metadata accessor for Tracklist.LeadingIcon(255);
  v102 = sub_1001109D0(&qword_10119D110, &qword_100EDBD30);
  v103 = sub_1001109D0(&qword_10119D118, &qword_100EDBD38);
  v104 = sub_1001109D0(&qword_10119D120, &qword_100EDBD40);
  v105 = &type metadata for Spacer;
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v99 = a6;
  v100 = a7;
  v106 = type metadata accessor for Tracklist.TrailingIcons(255, &v96);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v20 = type metadata accessor for HStack();
  v60 = *(v20 - 8);
  __chkstk_darwin();
  v22 = &v55 - v21;
  v63 = *(type metadata accessor for ModifiedContent() - 8);
  __chkstk_darwin();
  v62 = &v55 - v23;
  v58 = v24;
  v68 = type metadata accessor for ModifiedContent();
  v66 = *(v68 - 8);
  __chkstk_darwin();
  v67 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v55 - v26;
  __chkstk_darwin();
  v80 = &v55 - v27;
  static VerticalAlignment.center.getter();
  v81 = a3;
  v82 = a4;
  v28 = v79;
  v83 = v79;
  v84 = a6;
  v85 = a7;
  v86 = a1;
  v87 = v78;
  v59 = v22;
  HStack.init(alignment:spacing:content:)();
  v69 = a3;
  v101 = a3;
  v102 = a4;
  v103 = v28;
  v104 = a6;
  v105 = a7;
  type metadata accessor for Tracklist.Cell(0, &v101);
  v29 = v57;
  sub_10056CABC(v57);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v64 + 8))(v29, v65);
  }

  else
  {
    v30 = v64;
    v31 = v56;
    v32 = v65;
    (*(v64 + 104))(v56, enum case for DynamicTypeSize.accessibility3(_:), v65);
    static DynamicTypeSize.< infix(_:_:)();
    v33 = *(v30 + 8);
    v33(v31, v32);
    v33(v29, v32);
  }

  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v35 = v62;
  v36 = v59;
  View.frame(width:height:alignment:)();
  (*(v60 + 8))(v36, v20);
  static Edge.Set.bottom.getter();
  if (qword_10117FBA0 != -1)
  {
    swift_once();
  }

  v94 = WitnessTable;
  v95 = &protocol witness table for _FrameLayout;
  v37 = v58;
  v38 = swift_getWitnessTable();
  v39 = v61;
  View.padding(_:_:)();
  (*(v63 + 8))(v35, v37);
  v92 = v38;
  v93 = &protocol witness table for _PaddingLayout;
  v40 = v68;
  v63 = swift_getWitnessTable();
  sub_100663950();
  v41 = v66;
  v42 = *(v66 + 8);
  v64 = v66 + 8;
  v65 = v42;
  (v42)(v39, v40);
  swift_unknownObjectRetain();
  v43 = v70;
  sub_10067BAC8(v78 & 1, v69, v79, v70);
  static Edge.Set.leading.getter();
  v44 = v72;
  v45 = swift_getWitnessTable();
  v46 = v75;
  View.padding(_:_:)();
  (*(v71 + 8))(v43, v44);
  v90 = v45;
  v91 = &protocol witness table for _PaddingLayout;
  v47 = v76;
  v48 = swift_getWitnessTable();
  v49 = v74;
  sub_100663950();
  v50 = v73;
  v51 = *(v73 + 8);
  v51(v46, v47);
  v52 = v67;
  (*(v41 + 16))(v67, v80, v40);
  v101 = v52;
  (*(v50 + 16))(v46, v49, v47);
  v102 = v46;
  v96 = v40;
  v97 = v47;
  v88 = v63;
  v89 = v48;
  sub_1006769F4(&v101, 2uLL, &v96);
  v51(v49, v47);
  v53 = v65;
  (v65)(v80, v40);
  v51(v46, v47);
  return v53(v52, v40);
}

uint64_t sub_10067A600@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = a4;
  LODWORD(v130) = a2;
  v138 = a1;
  v124 = a8;
  *&v150 = a3;
  *(&v150 + 1) = a4;
  *&v151 = a5;
  *(&v151 + 1) = a6;
  *v152 = a7;
  v126 = type metadata accessor for Tracklist.TrailingIcons(0, &v150);
  v121 = *(v126 - 8);
  __chkstk_darwin();
  v125 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = v104 - v14;
  v127 = type metadata accessor for Tracklist.LeadingNumber(0);
  v118 = *(v127 - 8);
  __chkstk_darwin();
  v107 = (v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = sub_10010FC20(&qword_10119D118, &qword_100EDBD38);
  __chkstk_darwin();
  v122 = v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v128 = v104 - v17;
  v116 = type metadata accessor for Tracklist.Artwork(0);
  v115 = *(v116 - 8);
  __chkstk_darwin();
  v106 = v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for ArtworkImage.Info(0);
  v133 = *(v129 - 8);
  __chkstk_darwin();
  v105 = v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10010FC20(&qword_10119D110, &qword_100EDBD30);
  __chkstk_darwin();
  v132 = v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v135 = v104 - v21;
  v117 = type metadata accessor for Font.TextStyle();
  v112 = *(v117 - 8);
  __chkstk_darwin();
  v113 = v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v24 = v104 - v23;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v114 = v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v104 - v26;
  v28 = type metadata accessor for Tracklist.LeadingIcon(0);
  __chkstk_darwin();
  v131 = v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = v104 - v30;
  __chkstk_darwin();
  v134 = v104 - v32;
  *&v150 = a3;
  *(&v150 + 1) = v10;
  v33 = a5;
  *&v151 = a5;
  *(&v151 + 1) = a6;
  *v152 = a7;
  v34 = type metadata accessor for Tracklist.Cell(0, &v150);
  v35 = v138;
  v108 = sub_10067B730(v34);
  v110 = v33[3];
  v36 = v110;
  v111 = v33 + 3;
  swift_unknownObjectRetain();
  v136 = a3;
  v36(a3, v33);
  swift_unknownObjectRelease();
  v37 = *(v133 + 48);
  v133 += 48;
  v109 = v37;
  LOBYTE(v36) = v37(v27, 1, v129) != 1;
  sub_1000095E8(v27, &unk_10119F000, &qword_100EC31D0);
  v137 = v33;
  v38 = v33[12];
  swift_unknownObjectRetain();
  v104[1] = v33 + 12;
  v104[0] = v38;
  v38(a3, v33);
  swift_unknownObjectRelease();
  v39 = type metadata accessor for SocialProfile();
  LOBYTE(v10) = (*(*(v39 - 8) + 48))(v24, 1, v39) != 1;
  sub_1000095E8(v24, &qword_101186E00, &qword_100EC31E0);
  v40 = v35[4];
  *(v31 + 24) = v35[5];
  *(v31 + 40) = v35[6];
  *(v31 + 49) = *(v35 + 105);
  *v31 = v108;
  v31[1] = v36;
  v31[2] = v10;
  v31[3] = v130;
  *(v31 + 8) = v40;
  v41 = v28;
  *&v150 = 0x4020000000000000;
  v42 = enum case for Font.TextStyle.largeTitle(_:);
  v43 = *(v112 + 104);
  v44 = v113;
  v45 = v117;
  v43(v113, enum case for Font.TextStyle.largeTitle(_:), v117);
  v46 = sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&v150 = 0x4018000000000000;
  v43(v44, v42, v45);
  v113 = v46;
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v117 = v41;
  v47 = *(v41 + 44);
  *&v31[v47] = swift_getKeyPath();
  v48 = sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  v49 = v114;
  swift_storeEnumTagMultiPayload();
  sub_10068DF34(v31, v134, type metadata accessor for Tracklist.LeadingIcon);
  swift_unknownObjectRetain();
  v110(v136, v137);
  swift_unknownObjectRelease();
  if (v109(v49, 1, v129) == 1)
  {
    sub_1000095E8(v49, &unk_10119F000, &qword_100EC31D0);
    (*(v115 + 56))(v135, 1, 1, v116);
  }

  else
  {
    v50 = v105;
    sub_10068DF34(v49, v105, type metadata accessor for ArtworkImage.Info);
    v51 = v106;
    sub_10068DF9C(v50, v106, type metadata accessor for ArtworkImage.Info);
    v52 = v138;
    v53 = v116;
    swift_unknownObjectRetain();
    v54 = v136;
    v55 = v137;
    (v104[0])(v136, v137);
    swift_unknownObjectRelease();
    v56 = v55[11];
    swift_unknownObjectRetain();
    v57 = v56(v54, v55);
    v59 = v58;
    swift_unknownObjectRelease();
    sub_10068E244(v50, type metadata accessor for ArtworkImage.Info);
    v60 = *(v52 + 56);
    v61 = (v51 + v53[6]);
    *v61 = v57;
    v61[1] = v59;
    *(v51 + v53[7]) = v60;
    v62 = v53[8];
    *(v51 + v62) = swift_getKeyPath();
    sub_10010FC20(&qword_101194F38, &qword_100ED2DE0);
    swift_storeEnumTagMultiPayload();
    v63 = v53[9];
    *(v51 + v63) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v64 = v135;
    sub_10068DF34(v51, v135, type metadata accessor for Tracklist.Artwork);
    (*(v115 + 56))(v64, 0, 1, v53);
  }

  v65 = v130 & 1;
  v66 = v137;
  v67 = v137[4];
  swift_unknownObjectRetain();
  v68 = v67(v136, v66);
  v70 = v69;
  LODWORD(v66) = v69;
  swift_unknownObjectRelease();
  if (v66 <= 0xFD)
  {
    v71 = v137;
    v130 = v68;
    v72 = v65;
    v73 = v136;
    v133 = v48;
    v74 = v137[11];
    swift_unknownObjectRetain();
    v75 = v74(v73, v71);
    v77 = v76;
    swift_unknownObjectRelease();
    v78 = v71[15];
    swift_unknownObjectRetain();
    v79 = v73;
    v65 = v72;
    LOBYTE(v74) = v78(v79, v71);
    swift_unknownObjectRelease();
    v80 = v107;
    *v107 = v130;
    *(v80 + 8) = v70;
    *(v80 + 9) = v72;
    *(v80 + 16) = v75;
    *(v80 + 24) = v77;
    *(v80 + 32) = v74 & 1;
    *(v80 + 40) = 0;
    v81 = v127;
    *&v150 = 0x4044000000000000;
    ScaledMetric.init(wrappedValue:)();
    *&v150 = 0x4036000000000000;
    ScaledMetric.init(wrappedValue:)();
    v82 = *(v81 + 44);
    *(v80 + v82) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v83 = *(v81 + 48);
    *(v80 + v83) = swift_getKeyPath();
    sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
    swift_storeEnumTagMultiPayload();
    sub_10068DF34(v80, v128, type metadata accessor for Tracklist.LeadingNumber);
  }

  v84 = v128;
  (*(v118 + 56))();
  v85 = v138;
  v86 = v137;
  v87 = v137[5];
  swift_unknownObjectRetain();
  v88 = v136;
  v89 = v87(v136, v86);
  swift_unknownObjectRelease();
  if (v89)
  {
    v90 = v65;
  }

  else
  {
    v90 = 2;
  }

  LODWORD(v133) = v90;
  v91 = *(v85 + 32);
  v92 = *(v85 + 48);
  v93 = *(v85 + 80);
  v150 = *(v85 + 64);
  v151 = v93;
  *v152 = *(v85 + 96);
  *&v152[9] = *(v85 + 105);
  swift_unknownObjectRetain();

  v94 = v125;
  sub_10067B8DC(v91, v92, &v150, v88, v86, v125);
  v95 = v126;
  WitnessTable = swift_getWitnessTable();
  v97 = v123;
  sub_100663950();
  v98 = v121;
  v99 = *(v121 + 8);
  v99(v94, v95);
  v100 = v131;
  sub_10068DF9C(v134, v131, type metadata accessor for Tracklist.LeadingIcon);
  v149[0] = v100;
  v101 = v132;
  sub_1000089F8(v135, v132, &qword_10119D110, &qword_100EDBD30);
  v149[1] = v101;
  v102 = v122;
  sub_1000089F8(v84, v122, &qword_10119D118, &qword_100EDBD38);
  v148 = v133;
  v149[2] = v102;
  v149[3] = &v148;
  v146 = 0;
  v147 = 1;
  v149[4] = &v146;
  (*(v98 + 16))(v94, v97, v95);
  v149[5] = v94;
  v145[0] = v117;
  v145[1] = v119;
  v145[2] = v120;
  v145[3] = sub_10010FC20(&qword_10119D120, &qword_100EDBD40);
  v145[4] = &type metadata for Spacer;
  v145[5] = v95;
  v139 = sub_10068DDB4(&qword_10119D140, type metadata accessor for Tracklist.LeadingIcon, &unk_100EDC158);
  v140 = sub_10068E004();
  v141 = sub_10068E0B8();
  v142 = sub_10068E16C();
  v143 = &protocol witness table for Spacer;
  v144 = WitnessTable;
  sub_1006769F4(v149, 6uLL, v145);
  v99(v97, v95);
  sub_1000095E8(v84, &qword_10119D118, &qword_100EDBD38);
  sub_1000095E8(v135, &qword_10119D110, &qword_100EDBD30);
  sub_10068E244(v134, type metadata accessor for Tracklist.LeadingIcon);
  v99(v94, v95);
  sub_1000095E8(v102, &qword_10119D118, &qword_100EDBD38);
  sub_1000095E8(v132, &qword_10119D110, &qword_100EDBD30);
  return sub_10068E244(v131, type metadata accessor for Tracklist.LeadingIcon);
}

uint64_t sub_10067B730(uint64_t a1)
{
  v2 = type metadata accessor for MusicFavoriteStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v14 - v6;

  dispatch thunk of MusicLibrary.ItemState.favoriteStatus.getter();

  (*(v3 + 104))(v5, enum case for MusicFavoriteStatus.favorited(_:), v2);
  v8 = static MusicFavoriteStatus.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v9(v7, v2);
  if (v8)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  v13 = *(a1 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v13) = v12(v13, v11);
  swift_unknownObjectRelease();
  if (v13)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10067B8DC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v14 = *(*a1 + class metadata base offset for MusicLibrary.ItemState);
  v13 = *(*a1 + class metadata base offset for MusicLibrary.ItemState + 8);
  v15 = *(*a2 + 88);
  *a6 = ObservedObject.init(wrappedValue:)();
  *(a6 + 8) = v16;
  *(a6 + 16) = sub_10060CECC(a1);
  *(a6 + 24) = v17;
  *(a6 + 32) = sub_10060CE3C(a2, a4, a5, v13);
  *(a6 + 40) = v18;
  v19 = a3[1];
  *(a6 + 48) = *a3;
  *(a6 + 64) = v19;
  *(a6 + 80) = a3[2];
  *(a6 + 89) = *(a3 + 41);
  v24[0] = a4;
  v24[1] = v14;
  v24[2] = a5;
  v24[3] = v15;
  v24[4] = v13;
  v20 = type metadata accessor for Tracklist.TrailingIcons(0, v24);
  v21 = *(v20 + 72);
  *(a6 + v21) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v22 = *(v20 + 76);
  *(a6 + v22) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  swift_storeEnumTagMultiPayload();
  if (qword_10117FBE8 != -1)
  {
    swift_once();
  }

  v24[0] = qword_101219390;
  sub_100363C0C();
  return ScaledMetric.init(wrappedValue:)();
}

uint64_t sub_10067BAC8@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = ObservedObject.init(wrappedValue:)();
  *(a4 + 8) = v9;
  *(a4 + 16) = a1;
  v11 = *(type metadata accessor for Tracklist.VerticalTextStack(0, a2, a3, v10) + 40);
  *(a4 + v11) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10067BB64@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v124 = a6;
  v125 = a7;
  v115 = a4;
  LODWORD(v114) = a2;
  v112 = a8;
  v149 = a3;
  v150 = a4;
  v151 = a5;
  v152 = a6;
  v153 = a7;
  v113 = type metadata accessor for Tracklist.TrailingIcons(0, &v149);
  v109 = *(v113 - 8);
  __chkstk_darwin();
  v111 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v110 = &v91 - v12;
  sub_1001109D0(&qword_10119D138, &unk_100EDBD58);
  type metadata accessor for Tracklist.VerticalTextStack(255, a3, a5, v13);
  type metadata accessor for Tracklist.HorizontalTextStack(255, a3, a5, v14);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v101 = type metadata accessor for TupleView();
  v103 = *(type metadata accessor for Group() - 8);
  __chkstk_darwin();
  v102 = &v91 - v15;
  v104 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v106 = *(v17 - 8);
  __chkstk_darwin();
  v116 = &v91 - v18;
  sub_1001109D0(&unk_101184E90, &unk_100EC0AA0);
  v107 = v17;
  v122 = type metadata accessor for ModifiedContent();
  v108 = *(v122 - 8);
  __chkstk_darwin();
  v121 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v91 - v20;
  __chkstk_darwin();
  v130 = &v91 - v21;
  v118 = sub_10010FC20(&qword_10119D128, &qword_100EDBD48);
  __chkstk_darwin();
  v120 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v129 = &v91 - v23;
  v100 = type metadata accessor for Font.TextStyle();
  v123 = *(v100 - 8);
  __chkstk_darwin();
  v99 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v26 = &v91 - v25;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v28 = &v91 - v27;
  v117 = type metadata accessor for Tracklist.LeadingIcon(0);
  __chkstk_darwin();
  v119 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v91 - v30;
  __chkstk_darwin();
  v128 = &v91 - v32;
  v149 = a3;
  v150 = v115;
  v151 = a5;
  v152 = v124;
  v153 = v125;
  v91 = type metadata accessor for Tracklist.Cell(0, &v149);
  LODWORD(v98) = sub_10067B730(v91);
  v33 = a5[3];
  swift_unknownObjectRetain();
  v127 = a3;
  v33(a3, a5);
  swift_unknownObjectRelease();
  v34 = type metadata accessor for ArtworkImage.Info(0);
  LOBYTE(v33) = (*(*(v34 - 8) + 48))(v28, 1, v34) != 1;
  sub_1000095E8(v28, &unk_10119F000, &qword_100EC31D0);
  v126 = a5;
  v35 = a5[12];
  swift_unknownObjectRetain();
  v35(a3, a5);
  swift_unknownObjectRelease();
  v36 = type metadata accessor for SocialProfile();
  LOBYTE(v17) = (*(*(v36 - 8) + 48))(v26, 1, v36) != 1;
  sub_1000095E8(v26, &qword_101186E00, &qword_100EC31E0);
  v37 = *(a1 + 64);
  *(v31 + 24) = *(a1 + 80);
  *(v31 + 40) = *(a1 + 96);
  *(v31 + 49) = *(a1 + 105);
  *v31 = v98;
  v31[1] = v33;
  v31[2] = v17;
  v93 = v114 & 1;
  v31[3] = v114;
  *(v31 + 8) = v37;
  v38 = v117;
  v149 = 0x4020000000000000;
  v39 = enum case for Font.TextStyle.largeTitle(_:);
  v40 = *(v123 + 104);
  v123 += 104;
  v42 = v99;
  v41 = v100;
  v40(v99, enum case for Font.TextStyle.largeTitle(_:), v100);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v149 = 0x4018000000000000;
  v40(v42, v39, v41);
  v43 = v126;
  v44 = v127;
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v45 = *(v38 + 44);
  v46 = v91;
  *&v31[v45] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v47 = v31;
  v48 = v115;
  sub_10068DF34(v47, v128, type metadata accessor for Tracklist.LeadingIcon);
  v49 = v129;
  sub_10067CB9C(a1, v114, v44, v48, v43, v124, v125, v129);
  LODWORD(v38) = *(a1 + 16);
  v50 = sub_10067D68C(v46);
  v51 = v49 + *(v118 + 36);
  v92 = v38;
  *v51 = v38;
  *(v51 + 1) = 1;
  *(v51 + 8) = v50;
  *(v51 + 16) = v52 & 1;
  v123 = a1;
  v53 = v43[5];
  swift_unknownObjectRetain();
  LOBYTE(v49) = v53(v44, v43);
  swift_unknownObjectRelease();
  if (v49)
  {
    v114 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    LODWORD(v100) = 1;
  }

  else
  {
    sub_10067D8B0(v46);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LODWORD(v100) = 0;
    v114 = v166;
    v98 = v170;
    v99 = v168;
    LOBYTE(v138) = 1;
    LOBYTE(v178[0]) = v167;
    LOBYTE(v172) = v169;
    v94 = 1;
    v95 = v167;
    v96 = v169;
    v97 = v171;
    LOBYTE(v149) = 0;
  }

  __chkstk_darwin();
  v54 = v127;
  *(&v91 - 8) = v127;
  *(&v91 - 7) = v48;
  v55 = v126;
  v57 = v124;
  v56 = v125;
  *(&v91 - 6) = v126;
  *(&v91 - 5) = v57;
  v58 = v123;
  *(&v91 - 4) = v56;
  *(&v91 - 3) = v58;
  *(&v91 - 16) = v93;
  WitnessTable = swift_getWitnessTable();
  v60 = v102;
  Group<A>.init(content:)();
  v61 = sub_10067E828(v46);
  v63 = v62;
  v165 = WitnessTable;
  v64 = v104;
  v65 = swift_getWitnessTable();
  LOWORD(v149) = v92;
  v150 = v61;
  LOBYTE(v151) = v63 & 1;
  View.modifier<A>(_:)();
  (*(v103 + 8))(v60, v64);
  v66 = *(v55 + 120);
  swift_unknownObjectRetain();
  v67 = v66(v54, v55);
  swift_unknownObjectRelease();
  v68 = v122;
  if (v67)
  {
    if (qword_10117FBE0 != -1)
    {
      swift_once();
    }
  }

  v69 = sub_10068E2BC();
  v158[8] = v65;
  v158[9] = v69;
  v70 = v107;
  v71 = swift_getWitnessTable();
  v72 = v105;
  v73 = v116;
  View.foregroundColor(_:)();

  (*(v106 + 8))(v73, v70);
  v74 = sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v158[6] = v71;
  v158[7] = v74;
  v125 = swift_getWitnessTable();
  sub_100663950();
  v75 = v108;
  v76 = *(v108 + 8);
  v124 = v108 + 8;
  v116 = v76;
  (v76)(v72, v68);
  if (qword_10117FBC0 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v105 = v172;
  v106 = v174;
  v115 = v176;
  v107 = v177;
  v164 = 1;
  v162 = v173;
  v160 = v175;
  v77 = *(v123 + 32);
  v78 = *(v123 + 48);
  v79 = *(v123 + 80);
  v178[0] = *(v123 + 64);
  v178[1] = v79;
  *v179 = *(v123 + 96);
  *&v179[9] = *(v123 + 105);
  swift_unknownObjectRetain();

  v80 = v111;
  sub_10067B8DC(v77, v78, v178, v127, v126, v111);
  v81 = v113;
  v126 = swift_getWitnessTable();
  v82 = v110;
  sub_100663950();
  v83 = v109;
  v127 = *(v109 + 8);
  v127(v80, v81);
  v84 = v119;
  sub_10068DF9C(v128, v119, type metadata accessor for Tracklist.LeadingIcon);
  v158[0] = v84;
  v85 = v120;
  sub_1000089F8(v129, v120, &qword_10119D128, &qword_100EDBD48);
  v149 = 0;
  v150 = v94;
  v151 = v114;
  v152 = v95;
  v153 = v99;
  v154 = v96;
  v155 = v98;
  v156 = v97;
  v157 = v100;
  v158[1] = v85;
  v158[2] = &v149;
  v87 = v121;
  v86 = v122;
  (*(v75 + 16))(v121, v130, v122);
  v138 = 0;
  v139 = v164;
  *v140 = *v163;
  *&v140[3] = *&v163[3];
  v141 = v105;
  v142 = v162;
  *v143 = *v161;
  *&v143[3] = *&v161[3];
  v144 = v106;
  v145 = v160;
  *v146 = *v159;
  *&v146[3] = *&v159[3];
  v147 = v115;
  v148 = v107;
  v158[3] = v87;
  v158[4] = &v138;
  (*(v83 + 16))(v80, v82, v81);
  v158[5] = v80;
  v137[0] = v117;
  v137[1] = v118;
  v137[2] = sub_10010FC20(&qword_10119D130, &qword_100EDBD50);
  v137[3] = v86;
  v137[4] = sub_10010FC20(&qword_101199330, &qword_100ED7DE0);
  v137[5] = v81;
  v131 = sub_10068DDB4(&qword_10119D140, type metadata accessor for Tracklist.LeadingIcon, &unk_100EDC158);
  v132 = sub_10068E310();
  v133 = sub_10068E44C();
  v134 = v125;
  v135 = sub_100617DA4();
  v136 = v126;
  sub_1006769F4(v158, 6uLL, v137);
  v88 = v127;
  v127(v82, v81);
  v89 = v116;
  (v116)(v130, v86);
  sub_1000095E8(v129, &qword_10119D128, &qword_100EDBD48);
  sub_10068E244(v128, type metadata accessor for Tracklist.LeadingIcon);
  v88(v80, v81);
  v89(v121, v86);
  sub_1000095E8(v120, &qword_10119D128, &qword_100EDBD48);
  return sub_10068E244(v119, type metadata accessor for Tracklist.LeadingIcon);
}

uint64_t sub_10067CB9C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v80 = a2;
  v94 = a8;
  v15 = type metadata accessor for Tracklist.LeadingNumber(0);
  v97 = *(v15 - 8);
  v98 = v15;
  __chkstk_darwin();
  v82 = &v79[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10010FC20(&qword_10119D1C8, &qword_100EDBE20);
  v89 = *(v17 - 8);
  v90 = v17;
  __chkstk_darwin();
  v81 = &v79[-v18];
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v85 = &v79[-v19];
  v84 = type metadata accessor for ArtworkImage.Info(0);
  v83 = *(v84 - 8);
  __chkstk_darwin();
  v95 = &v79[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_10119D1D0, &qword_100EDBE28);
  __chkstk_darwin();
  v93 = &v79[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v92 = &v79[-v22];
  sub_10010FC20(&qword_10119D118, &qword_100EDBD38);
  __chkstk_darwin();
  v91 = &v79[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v86 = &v79[-v24];
  __chkstk_darwin();
  v87 = &v79[-v25];
  __chkstk_darwin();
  v27 = &v79[-v26];
  v99 = a3;
  v100 = a4;
  v28 = a4;
  v101 = a5;
  v102 = a6;
  v29 = a6;
  v103 = a7;
  type metadata accessor for Tracklist.Cell(0, &v99);
  v30 = a5[4];
  swift_unknownObjectRetain();
  v96 = a3;
  v31 = v30(a3, a5);
  v33 = v32;
  LODWORD(a3) = v32;
  swift_unknownObjectRelease();
  v88 = v27;
  if (a3 <= 0xFD)
  {
    v99 = v31;
    LOBYTE(v100) = v33;
    sub_10067D4AC(&v99, v80 & 1, a1, v96, v28, a5, v29, a7, v27);
    v34 = *(v97 + 56);
    v34(v27, 0, 1, v98);
  }

  else
  {
    v34 = *(v97 + 56);
    v34(v27, 1, 1, v98);
  }

  v35 = a5[3];
  swift_unknownObjectRetain();
  v36 = v85;
  v35(v96, a5);
  swift_unknownObjectRelease();
  v37 = (*(v83 + 48))(v36, 1, v84);
  v38 = v95;
  if (v37 == 1)
  {
    sub_1000095E8(v36, &unk_10119F000, &qword_100EC31D0);
    v39 = 1;
    v41 = v97;
    v40 = v98;
    v42 = v92;
    v43 = v90;
    v44 = v88;
    v45 = v87;
  }

  else
  {
    sub_10068DF34(v36, v95, type metadata accessor for ArtworkImage.Info);
    v46 = v81;
    sub_10068DF9C(v38, v81, type metadata accessor for ArtworkImage.Info);
    v47 = a5[12];
    v48 = type metadata accessor for Tracklist.Artwork(0);
    swift_unknownObjectRetain();
    v49 = v96;
    v47(v96, a5);
    swift_unknownObjectRelease();
    v50 = a5[11];
    swift_unknownObjectRetain();
    v51 = v49;
    v52 = v46;
    v53 = v50(v51, a5);
    v55 = v54;
    swift_unknownObjectRelease();
    v56 = *(a1 + 56);
    v57 = &v46[v48[6]];
    *v57 = v53;
    v57[1] = v55;
    *&v46[v48[7]] = v56;
    v58 = v48[8];
    *&v46[v58] = swift_getKeyPath();
    sub_10010FC20(&qword_101194F38, &qword_100ED2DE0);
    swift_storeEnumTagMultiPayload();
    v59 = v48[9];
    *&v46[v59] = swift_getKeyPath();
    sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
    swift_storeEnumTagMultiPayload();

    v60 = static Edge.Set.leading.getter();
    v45 = v87;
    if (qword_10117FB98 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    sub_10068E244(v95, type metadata accessor for ArtworkImage.Info);
    v43 = v90;
    v69 = v52 + *(v90 + 36);
    *v69 = v60;
    *(v69 + 8) = v62;
    *(v69 + 16) = v64;
    *(v69 + 24) = v66;
    *(v69 + 32) = v68;
    *(v69 + 40) = 0;
    v42 = v92;
    sub_10003D17C(v52, v92, &qword_10119D1C8, &qword_100EDBE20);
    v39 = 0;
    v41 = v97;
    v40 = v98;
    v44 = v88;
  }

  (*(v89 + 56))(v42, v39, 1, v43);
  v70 = v86;
  sub_1000089F8(v44, v86, &qword_10119D118, &qword_100EDBD38);
  if ((*(v41 + 48))(v70, 1, v40) == 1)
  {
    sub_1000095E8(v70, &qword_10119D118, &qword_100EDBD38);
    v71 = 1;
  }

  else
  {
    v72 = v70;
    v73 = v82;
    sub_10068DF34(v72, v82, type metadata accessor for Tracklist.LeadingNumber);
    sub_10068DF34(v73, v45, type metadata accessor for Tracklist.LeadingNumber);
    v71 = 0;
  }

  v34(v45, v71, 1, v40);
  v74 = v93;
  sub_1000089F8(v42, v93, &qword_10119D1D0, &qword_100EDBE28);
  v75 = v91;
  sub_1000089F8(v45, v91, &qword_10119D118, &qword_100EDBD38);
  v76 = v94;
  sub_1000089F8(v74, v94, &qword_10119D1D0, &qword_100EDBE28);
  v77 = sub_10010FC20(qword_10119D1D8, &unk_100EDBE30);
  sub_1000089F8(v75, v76 + *(v77 + 48), &qword_10119D118, &qword_100EDBD38);
  sub_1000095E8(v45, &qword_10119D118, &qword_100EDBD38);
  sub_1000095E8(v42, &qword_10119D1D0, &qword_100EDBE28);
  sub_1000095E8(v44, &qword_10119D118, &qword_100EDBD38);
  sub_1000095E8(v75, &qword_10119D118, &qword_100EDBD38);
  return sub_1000095E8(v74, &qword_10119D1D0, &qword_100EDBE28);
}

uint64_t sub_10067D4AC@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a6;
  v25 = *a1;
  v14 = *(a1 + 8);
  v27[0] = a4;
  v27[1] = a5;
  v27[2] = a6;
  v27[3] = a7;
  v27[4] = a8;
  type metadata accessor for Tracklist.Cell(0, v27);
  v15 = *(v10 + 88);
  swift_unknownObjectRetain();
  v16 = v15(a4, v10);
  v18 = v17;
  swift_unknownObjectRelease();
  v19 = *(v10 + 120);
  swift_unknownObjectRetain();
  LOBYTE(v10) = v19(a4, v10);
  swift_unknownObjectRelease();
  v20 = *(a3 + 56);
  *a9 = v25;
  *(a9 + 8) = v14;
  *(a9 + 9) = a2;
  *(a9 + 16) = v16;
  *(a9 + 24) = v18;
  *(a9 + 32) = v10 & 1;
  *(a9 + 40) = v20;
  v21 = type metadata accessor for Tracklist.LeadingNumber(0);
  v27[0] = 0x4044000000000000;
  sub_100363C0C();

  ScaledMetric.init(wrappedValue:)();
  v27[0] = 0x4036000000000000;
  ScaledMetric.init(wrappedValue:)();
  v22 = *(v21 + 44);
  *(a9 + v22) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v23 = *(v21 + 48);
  *(a9 + v23) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10067D68C(uint64_t a1)
{
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v14 - v7;
  if (sub_10067EA04(a1) && (*(v1 + 16) & 1) == 0)
  {
    if (qword_10117FC10 != -1)
    {
      swift_once();
    }

    v10 = *&qword_1012193B8;
    sub_10056CABC(v8);
    if (qword_10117FB28 != -1)
    {
      swift_once();
    }

    if (byte_10119CDC0)
    {
      (*(v4 + 8))(v8, v3);
      v11 = 48.0;
    }

    else
    {
      (*(v4 + 104))(v6, enum case for DynamicTypeSize.accessibility3(_:), v3);
      v12 = static DynamicTypeSize.< infix(_:_:)();
      v13 = *(v4 + 8);
      v13(v6, v3);
      v13(v8, v3);
      v11 = 72.0;
      if (v12)
      {
        v11 = 48.0;
      }
    }

    *&result = v10 + v11;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

double sub_10067D8B0(uint64_t a1)
{
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v3 = &v15 - v2;
  v4 = *(a1 + 32);
  v5 = v4[4];
  v6 = *(a1 + 16);
  swift_unknownObjectRetain();
  v5(v6, v4);
  v8 = v7;
  swift_unknownObjectRelease();
  result = 0.0;
  if (v8 >= -2)
  {
    v10 = v4[5];
    swift_unknownObjectRetain();
    v11 = v10(v6, v4);
    swift_unknownObjectRelease();
    if (v11)
    {
      if (qword_10117FB70 != -1)
      {
        swift_once();
      }

      return *&qword_101219308;
    }

    else
    {
      v12 = v4[3];
      swift_unknownObjectRetain();
      v12(v6, v4);
      swift_unknownObjectRelease();
      v13 = type metadata accessor for ArtworkImage.Info(0);
      v14 = (*(*(v13 - 8) + 48))(v3, 1, v13);
      sub_1000095E8(v3, &unk_10119F000, &qword_100EC31D0);
      result = 12.0;
      if (v14 == 1)
      {
        if (qword_10117FBB0 != -1)
        {
          swift_once();
        }

        return *&qword_101219358;
      }
    }
  }

  return result;
}

uint64_t sub_10067DAB4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a2;
  v54 = a8;
  v45 = type metadata accessor for Tracklist.VerticalTextStack(255, a3, a5, a4);
  v46 = type metadata accessor for Tracklist.HorizontalTextStack(255, a3, a5, v13);
  v50 = type metadata accessor for _ConditionalContent();
  v51 = *(type metadata accessor for Group() - 8);
  __chkstk_darwin();
  v39 = &v34 - v14;
  v40 = v15;
  v16 = type metadata accessor for ModifiedContent();
  v52 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v34 - v19;
  v58 = a3;
  v47 = a4;
  v59 = a4;
  v60 = a5;
  v48 = a6;
  v61 = a6;
  v62 = a7;
  v49 = a7;
  v20 = type metadata accessor for Tracklist.Cell(0, &v58);
  v21 = *(a5 + 40);
  swift_unknownObjectRetain();
  LOBYTE(a6) = v21(a3, a5);
  swift_unknownObjectRelease();
  if (a6)
  {
    sub_10067D8B0(v20);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v44 = v67[7];
    v43 = v69;
    v42 = v71;
    v38 = v72;
    LOBYTE(v58) = 1;
    LOBYTE(v67[0]) = v68;
    LOBYTE(v57[0]) = v70;
    v37 = 1;
    v36 = v68;
    v35 = v70;
    v22 = v41 & 1;
  }

  else
  {
    v37 = 0;
    v44 = 0;
    v36 = 0;
    v43 = 0;
    v35 = 0;
    v42 = 0;
    v38 = 0;
    v22 = 2;
  }

  __chkstk_darwin();
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v67[5] = WitnessTable;
  v67[6] = v24;
  v25 = swift_getWitnessTable();
  v26 = v39;
  Group<A>.init(content:)();
  static Alignment.center.getter();
  v67[4] = v25;
  v32 = v40;
  v33 = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v51 + 8))(v26, v32);
  v67[2] = v33;
  v67[3] = &protocol witness table for _FlexFrameLayout;
  v27 = swift_getWitnessTable();
  v28 = v53;
  sub_100663950();
  v29 = v52;
  v30 = *(v52 + 8);
  v30(v18, v16);
  v58 = v22;
  v59 = 0;
  v60 = v37;
  v61 = v44;
  v62 = v36;
  v63 = v43;
  v64 = v35;
  v65 = v42;
  v66 = v38;
  v67[0] = &v58;
  (*(v29 + 16))(v18, v28, v16);
  v67[1] = v18;
  v57[0] = sub_10010FC20(&qword_10119D138, &unk_100EDBD58);
  v57[1] = v16;
  v55 = sub_10068E504();
  v56 = v27;
  sub_1006769F4(v67, 2uLL, v57);
  v30(v28, v16);
  return (v30)(v18, v16);
}

uint64_t sub_10067E128@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a7;
  v49 = a6;
  v53 = a4;
  v9 = a3;
  v51 = a2;
  v57 = a8;
  v11 = type metadata accessor for Tracklist.HorizontalTextStack(0, a3, a5, a4);
  v48 = *(v11 - 8);
  __chkstk_darwin();
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v44 - v13;
  v15 = type metadata accessor for Tracklist.VerticalTextStack(0, v9, a5, v14);
  v45 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v44 - v18;
  v19 = type metadata accessor for DynamicTypeSize();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = (&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v24 = (&v44 - v23);
  v25 = type metadata accessor for _ConditionalContent();
  v55 = *(v25 - 8);
  v56 = v25;
  __chkstk_darwin();
  v54 = &v44 - v26;
  v27 = *(a1 + 96);
  *&v60 = v9;
  *(&v60 + 1) = v53;
  v52 = v9;
  v53 = a5;
  *&v61 = a5;
  *(&v61 + 1) = v49;
  *&v62[0] = v50;
  type metadata accessor for Tracklist.Cell(0, &v60);
  sub_10056CAE4(v24);
  sub_10056CABC(v22);
  LOBYTE(v9) = sub_10068D124(v24, v22, v27);
  (*(v20 + 8))(v22, v19);
  sub_1000095E8(v24, &unk_101184290, &qword_100EC0E60);
  if (v9)
  {
    swift_unknownObjectRetain();
    sub_10067BAC8(v51 & 1, v52, v53, v17);
    WitnessTable = swift_getWitnessTable();
    v29 = v44;
    sub_100663950();
    v30 = *(v45 + 8);
    v30(v17, v15);
    sub_100663950();
    v31 = swift_getWitnessTable();
    v32 = v54;
    sub_100653878(v17, v15, v11, WitnessTable, v31);
    v30(v17, v15);
    v33 = v29;
    v34 = v15;
  }

  else
  {
    v35 = *(a1 + 80);
    v60 = *(a1 + 64);
    v61 = v35;
    v62[0] = *(a1 + 96);
    *(v62 + 9) = *(a1 + 105);
    swift_unknownObjectRetain();
    v36 = v47;
    sub_10067E764(v51 & 1, &v60, v52, v53, v47);
    v37 = swift_getWitnessTable();
    v38 = v46;
    sub_100663950();
    v30 = *(v48 + 8);
    v30(v36, v11);
    sub_100663950();
    v39 = swift_getWitnessTable();
    v32 = v54;
    sub_100653970(v36, v15, v11, v39, v37);
    v30(v36, v11);
    v33 = v38;
    v34 = v11;
  }

  v30(v33, v34);
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v58 = v40;
  v59 = v41;
  v42 = v56;
  swift_getWitnessTable();
  sub_100663950();
  return (*(v55 + 8))(v32, v42);
}

uint64_t sub_10067E764@<X0>(char a1@<W1>, _OWORD *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = ObservedObject.init(wrappedValue:)();
  *(a5 + 8) = v11;
  *(a5 + 16) = a1;
  v12 = a2[1];
  *(a5 + 24) = *a2;
  *(a5 + 40) = v12;
  *(a5 + 56) = a2[2];
  *(a5 + 65) = *(a2 + 41);
  v14 = *(type metadata accessor for Tracklist.HorizontalTextStack(0, a3, a4, v13) + 44);
  *(a5 + v14) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10067E828(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4 = *(a1 + 16);
  swift_unknownObjectRetain();
  LOBYTE(v2) = v3(v4, v2);
  swift_unknownObjectRelease();
  if ((v2 & 1) != 0 && (*(v1 + 16) & 1) == 0)
  {
    if (qword_10117FC18 != -1)
    {
      swift_once();
    }

    return qword_1012193C0;
  }

  else if (sub_100679A18())
  {
    return *(v1 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067E910@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  type metadata accessor for Tracklist.Cell(0, v16);
  v11 = *(a4 + 104);
  swift_unknownObjectRetain();
  v12 = v11(a2, a4);
  v14 = v13;
  swift_unknownObjectRelease();
  *a7 = v12;
  a7[1] = v14;
  _s17ContextMenuButtonVMa(0);
  v16[0] = 0x4046000000000000;
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  v16[0] = 0x403C000000000000;
  return ScaledMetric.init(wrappedValue:)();
}

BOOL sub_10067EA04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = *(a1 + 16);
  swift_unknownObjectRetain();
  v2(v3, v1);
  LODWORD(v1) = v4;
  swift_unknownObjectRelease();
  return v1 < -2;
}

uint64_t sub_10067EA78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10119D650, &qword_100EDC3A8);
  __chkstk_darwin();
  v6 = v68 - v5;
  v78 = type metadata accessor for DynamicTypeSize();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = (v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v73 = v68 - v8;
  __chkstk_darwin();
  v80 = v68 - v9;
  sub_10010FC20(&qword_10119D658, &qword_100EDC3B0);
  __chkstk_darwin();
  v11 = v68 - v10;
  v12 = sub_10010FC20(&qword_10119D660, &qword_100EDC3B8);
  __chkstk_darwin();
  v14 = v68 - v13;
  v15 = sub_10010FC20(&qword_10119D668, &qword_100EDC3C0);
  __chkstk_darwin();
  v83 = v68 - v16;
  v81 = sub_10010FC20(&qword_10119D670, &qword_100EDC3C8);
  __chkstk_darwin();
  v82 = v68 - v17;
  v18 = sub_10010FC20(&qword_10119D678, &qword_100EDC3D0);
  __chkstk_darwin();
  v20 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = *v2;
  if (v22 == 2)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v23 = v87;
    v24 = BYTE8(v87);
    v25 = v88;
    v26 = BYTE8(v88);
    v86 = 1;
    v85 = BYTE8(v87);
    v84 = BYTE8(v88);
    *v6 = 0;
    v6[8] = 1;
    *(v6 + 2) = v23;
    v6[24] = v24;
    *(v6 + 4) = v25;
    v6[40] = v26;
    *(v6 + 3) = v89;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101199330, &qword_100ED7DE0);
    sub_10068F5F4();
    sub_100617DA4();
    return _ConditionalContent<>.init(storage:)();
  }

  v72 = v68 - v21;
  v74 = v18;
  v75 = v4;
  sub_10067F3C4(v22 & 1, v11);
  v28 = v2[3];
  if (qword_10117FB40 != -1)
  {
    swift_once();
  }

  v79 = a1;
  v29 = *&qword_1012192D8;
  if (v28 >= *&qword_1012192D8 && qword_10117FB28 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003D17C(v11, v14, &qword_10119D658, &qword_100EDC3B0);
  v30 = &v14[*(v12 + 36)];
  v31 = v88;
  *v30 = v87;
  *(v30 + 1) = v31;
  *(v30 + 2) = v89;
  v32 = static Edge.Set.leading.getter();
  if (v28 >= v29 && qword_10117FB28 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v14;
  v42 = v83;
  sub_10003D17C(v41, v83, &qword_10119D660, &qword_100EDC3B8);
  v43 = v42 + *(v15 + 36);
  *v43 = v32;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  v44 = static Edge.Set.bottom.getter();
  v45 = v44;
  v46 = v74;
  if (*(v2 + 2) == 1)
  {
    v71 = v44;
    type metadata accessor for Tracklist.LeadingIcon(0);
    sub_10056CABC(v80);
    if (qword_10117FB28 == -1)
    {
      if (byte_10119CDC0)
      {
LABEL_14:
        v47 = *(v77 + 8);
        v48 = v78;
        v47(v80, v78);
        v49 = v76;
        sub_10056CABC(v76);
        v47(v49, v48);
LABEL_17:
        v45 = v71;
        goto LABEL_18;
      }
    }

    else
    {
      swift_once();
      if (byte_10119CDC0)
      {
        goto LABEL_14;
      }
    }

    v70 = enum case for DynamicTypeSize.accessibility3(_:);
    v50 = v77;
    v69 = *(v77 + 104);
    v51 = v73;
    v52 = v78;
    v69(v73);
    v53 = v80;
    v68[3] = static DynamicTypeSize.< infix(_:_:)();
    v54 = *(v50 + 8);
    v54(v51, v52);
    v54(v53, v52);
    v55 = v76;
    sub_10056CABC(v76);
    (v69)(v51, v70, v52);
    v46 = v74;
    static DynamicTypeSize.< infix(_:_:)();
    v54(v51, v52);
    v54(v55, v52);
    goto LABEL_17;
  }

LABEL_18:
  EdgeInsets.init(_all:)();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v82;
  sub_10003D17C(v83, v82, &qword_10119D668, &qword_100EDC3C0);
  v65 = v64 + *(v81 + 36);
  *v65 = v45;
  *(v65 + 8) = v57;
  *(v65 + 16) = v59;
  *(v65 + 24) = v61;
  *(v65 + 32) = v63;
  *(v65 + 40) = 0;
  if (*(v2 + 3))
  {
    v66 = 1.0;
  }

  else
  {
    v66 = 0.5;
  }

  sub_10003D17C(v64, v20, &qword_10119D670, &qword_100EDC3C8);
  *&v20[*(v46 + 36)] = v66;
  v67 = v72;
  sub_10003D17C(v20, v72, &qword_10119D678, &qword_100EDC3D0);
  sub_1000089F8(v67, v6, &qword_10119D678, &qword_100EDC3D0);
  swift_storeEnumTagMultiPayload();
  sub_10010FC20(&qword_101199330, &qword_100ED7DE0);
  sub_10068F5F4();
  sub_100617DA4();
  _ConditionalContent<>.init(storage:)();
  return sub_1000095E8(v67, &qword_10119D678, &qword_100EDC3D0);
}

uint64_t sub_10067F3C4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = sub_10010FC20(&qword_10119D6E8, &unk_100EDC408);
  __chkstk_darwin();
  v4 = &v38 - v3;
  sub_10010FC20(&qword_101188610, &qword_100EC4D60);
  __chkstk_darwin();
  v6 = &v38 - v5;
  v40 = sub_10010FC20(&qword_10119D6D0, &qword_100EDC3E8);
  __chkstk_darwin();
  v8 = &v38 - v7;
  v41 = sub_10010FC20(&qword_10119D6C0, L"Z\v9");
  __chkstk_darwin();
  v10 = &v38 - v9;
  if (a1)
  {
    v39 = &v38 - v9;
    v11 = Image.init(systemName:)();
    type metadata accessor for Tracklist.LeadingIcon(0);
    sub_10010FC20(&qword_10119A070, "@R\n");
    ScaledMetric.wrappedValue.getter();
    static Font.Weight.bold.getter();
    v12 = type metadata accessor for Font.Design();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = static Font.system(size:weight:design:)();
    sub_1000095E8(v6, &qword_101188610, &qword_100EC4D60);
    KeyPath = swift_getKeyPath();
    if (qword_10117FB50 != -1)
    {
      v36 = KeyPath;
      swift_once();
      KeyPath = v36;
    }

    v44 = v11;
    v45 = KeyPath;
    v46 = v13;
    v47 = qword_1012192E8;

    v15 = AccessibilityString.popularBadgeLabel.unsafeMutableAddressor();
    v16 = *v15;
    v17 = v15[1];

    v18 = sub_10010FC20(&qword_10119D6E0, &unk_100EDC3F0);
    v19 = sub_10068FAA4();
    View.accessibilityLabel(_:)(v16, v17, v18, v19);

    v20 = AccessibilityIdentifier.trackListCellPopularBadge.unsafeMutableAddressor();
    v10 = v39;
  }

  else
  {
    v39 = v4;
    v21 = Image.init(systemName:)();
    type metadata accessor for Tracklist.LeadingIcon(0);
    sub_10010FC20(&qword_10119A070, "@R\n");
    ScaledMetric.wrappedValue.getter();
    static Font.Weight.bold.getter();
    v22 = type metadata accessor for Font.Design();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    v23 = static Font.system(size:weight:design:)();
    sub_1000095E8(v6, &qword_101188610, &qword_100EC4D60);
    v24 = swift_getKeyPath();
    if (qword_10117FB48 != -1)
    {
      v37 = v24;
      swift_once();
      v24 = v37;
    }

    v44 = v21;
    v45 = v24;
    v46 = v23;
    v47 = qword_1012192E0;

    v25 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
    v26 = *v25;
    v27 = v25[1];

    v28 = sub_10010FC20(&qword_10119D6E0, &unk_100EDC3F0);
    v29 = sub_10068FAA4();
    View.accessibilityLabel(_:)(v26, v27, v28, v29);

    v20 = AccessibilityIdentifier.trackListCellFavoriteBadge.unsafeMutableAddressor();
    v4 = v39;
  }

  v30 = *v20;
  v31 = v20[1];
  v32 = v20[2];
  v33 = v20[3];
  v34 = sub_10068F9E8();

  View.accessibilityIdentifier(_:)(v30, v31, v32, v33, v40, v34);

  sub_1000095E8(v8, &qword_10119D6D0, &qword_100EDC3E8);
  sub_1000089F8(v10, v4, &qword_10119D6C0, L"Z\v9");
  swift_storeEnumTagMultiPayload();
  sub_10068F92C();
  _ConditionalContent<>.init(storage:)();
  return sub_1000095E8(v10, &qword_10119D6C0, L"Z\v9");
}

uint64_t sub_10067F99C@<X0>(uint64_t a1@<X8>)
{
  v221 = a1;
  v219 = sub_10010FC20(&qword_10119D6F8, &unk_100EDC418);
  __chkstk_darwin();
  v220 = &v158 - v2;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v165 = &v158 - v3;
  v171 = sub_10010FC20(&qword_10119D700, &qword_100EDC428);
  v167 = *(v171 - 8);
  __chkstk_darwin();
  v166 = &v158 - v4;
  v173 = sub_10010FC20(&qword_10119D708, &qword_100EDC430);
  v172 = *(v173 - 8);
  __chkstk_darwin();
  v168 = &v158 - v5;
  v170 = sub_10010FC20(&qword_10119D710, &qword_100EDC438);
  __chkstk_darwin();
  v169 = &v158 - v6;
  v174 = sub_10010FC20(&qword_10119D718, &qword_100EDC440);
  __chkstk_darwin();
  v178 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v177 = &v158 - v8;
  v164 = sub_10010FC20(&qword_10119D720, &qword_100EDC448);
  __chkstk_darwin();
  v176 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v175 = &v158 - v10;
  v218 = sub_10010FC20(&qword_10119D728, &qword_100EDC450);
  __chkstk_darwin();
  v216 = (&v158 - v11);
  v229 = type metadata accessor for SocialProfile();
  v228 = *(v229 - 8);
  __chkstk_darwin();
  v215 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10119D730, &qword_100EDC458);
  __chkstk_darwin();
  v217 = &v158 - v13;
  v213 = type metadata accessor for AccessibilityTraits();
  v212 = *(v213 - 8);
  __chkstk_darwin();
  v211 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for AccessibilityChildBehavior();
  v209 = *(v210 - 8);
  __chkstk_darwin();
  v208 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for WaveformState();
  v204 = *(v206 - 8);
  __chkstk_darwin();
  v200 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_10010FC20(&qword_101198E68, &qword_100ED79E0);
  __chkstk_darwin();
  v199 = &v158 - v17;
  sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  __chkstk_darwin();
  v183 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v189 = &v158 - v19;
  v223 = type metadata accessor for ArtworkImage.ReusePolicy();
  v230 = *(v223 - 8);
  __chkstk_darwin();
  v222 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_10010FC20(&unk_1011A1400, &unk_100ECAD80);
  v180 = *(v181 - 8);
  __chkstk_darwin();
  v226 = &v158 - v21;
  v179 = sub_10010FC20(&qword_101186168, &qword_100EC19F0);
  __chkstk_darwin();
  v227 = &v158 - v22;
  v188 = sub_10010FC20(&qword_10119D738, &qword_100EDC460);
  __chkstk_darwin();
  v182 = &v158 - v23;
  v192 = sub_10010FC20(&qword_10119D740, &qword_100EDC468);
  v190 = *(v192 - 8);
  __chkstk_darwin();
  v187 = &v158 - v24;
  v195 = sub_10010FC20(&qword_10119D748, &qword_100EDC470);
  v193 = *(v195 - 8);
  __chkstk_darwin();
  v191 = &v158 - v25;
  v198 = sub_10010FC20(&qword_10119D750, &qword_100EDC478);
  v197 = *(v198 - 8);
  __chkstk_darwin();
  v194 = &v158 - v26;
  v201 = sub_10010FC20(&qword_10119D758, &qword_100EDC480);
  __chkstk_darwin();
  v202 = &v158 - v27;
  v203 = sub_10010FC20(&qword_10119D760, &qword_100EDC488);
  __chkstk_darwin();
  v205 = &v158 - v28;
  v214 = sub_10010FC20(&qword_10119D768, &qword_100EDC490);
  __chkstk_darwin();
  v224 = &v158 - v29;
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v207 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v158 - v31;
  v33 = type metadata accessor for DynamicTypeSize();
  v34 = *(v33 - 8);
  __chkstk_darwin();
  v36 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v158 - v37;
  __chkstk_darwin();
  v40 = &v158 - v39;
  v41 = type metadata accessor for Tracklist.Artwork(0);
  sub_10056CABC(v40);
  v225 = v41;
  v42 = *(v41 + 20);
  v231 = v1;
  v184 = v42;
  sub_1000089F8(v1 + v42, v32, &qword_101186E00, &qword_100EC31E0);
  v43 = *(v228 + 48);
  v186 = v228 + 48;
  v185 = v43;
  v44 = v43(v32, 1, v229);
  sub_1000095E8(v32, &qword_101186E00, &qword_100EC31E0);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    v45 = *(v34 + 8);
    v45(v40, v33);
    v163 = 0x4048000000000000;
    if (v44 == 1)
    {
      v46 = 0x4048000000000000;
    }

    else
    {
      v46 = 0x4040000000000000;
    }

    v47 = v231;
    sub_10056CABC(v36);
    v45(v36, v33);
    goto LABEL_17;
  }

  v48 = *(v34 + 104);
  LODWORD(v163) = enum case for DynamicTypeSize.accessibility3(_:);
  v162 = v48;
  (v48)(v38);
  v49 = static DynamicTypeSize.< infix(_:_:)();
  v50 = *(v34 + 8);
  v50(v38, v33);
  v50(v40, v33);
  if ((v49 & 1) == 0)
  {
    if (v44 == 1)
    {
      v51 = 0x4052000000000000;
      goto LABEL_14;
    }

LABEL_13:
    v51 = 0x4048000000000000;
    goto LABEL_14;
  }

  if (v44 == 1)
  {
    goto LABEL_13;
  }

  v51 = 0x4040000000000000;
LABEL_14:
  v47 = v231;
  sub_10056CABC(v36);
  (v162)(v38, v163, v33);
  v52 = static DynamicTypeSize.< infix(_:_:)();
  v50(v38, v33);
  v50(v36, v33);
  v53 = 0x4052000000000000;
  if (v52)
  {
    v53 = 0x4048000000000000;
  }

  v163 = v53;
  v46 = v51;
LABEL_17:
  v54 = v189;
  v55 = v227;
  v56 = type metadata accessor for ArtworkImage.Info(0);
  v57 = v56[5];
  v58 = v47 + v56[6];
  v59 = *v58;
  if (*(v58 + 8))
  {
    v59 = 1.0;
  }

  ArtworkImage.Size.init(height:aspectRatio:fittingAspectRatio:)(v46, 0, 0.0, 1, v232, v59);
  v60 = v230;
  v61 = *(v230 + 104);
  v62 = v222;
  v160 = enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:);
  v63 = v223;
  v161 = v230 + 104;
  v159 = v61;
  v61(v222);
  v64 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v47, v47 + v57, v232, v62, v226);
  v162 = *(v60 + 8);
  v230 = v60 + 8;
  v162(v62, v63, v64);
  v65 = (v47 + *(v225 + 24));
  v67 = *v65;
  v66 = v65[1];
  v68 = qword_10117F1F8;

  v69 = v47;
  v70 = v183;
  if (v68 != -1)
  {
    swift_once();
  }

  v71 = v55 + *(v179 + 36);
  *v71 = v67;
  *(v71 + 8) = v66;
  *(v71 + 16) = 2;
  v72 = qword_10117F5F8;

  if (v72 != -1)
  {
    swift_once();
  }

  *(v71 + 24) = (*(*qword_101218AC8 + 408))();
  type metadata accessor for PreviewPlaybackController(0);
  sub_10068DDB4(&qword_101185730, type metadata accessor for PreviewPlaybackController, &unk_100EBD1C0);
  *(v71 + 32) = ObservedObject.init(wrappedValue:)();
  *(v71 + 40) = v73;
  v74 = *(type metadata accessor for PreviewOverlay.ArtworkVariant(0) + 36);
  *(v71 + v74) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  (*(v180 + 32))(v55, v226, v181);
  v75 = *(v69 + *(v225 + 28));
  v76 = v204;
  if (v75)
  {
    swift_getKeyPath();
    *&v234 = v75;
    sub_10068DDB4(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v77 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
    swift_beginAccess();
    sub_1000089F8(v75 + v77, v54, &qword_101188100, &qword_100EC37B0);
    v78 = v206;
  }

  else
  {
    v78 = v206;
    (*(v204 + 56))(v54, 1, 1, v206);
  }

  sub_1000089F8(v54, v70, &qword_101188100, &qword_100EC37B0);
  v79 = *(v76 + 48);
  v80 = v79(v70, 1, v78);
  v189 = v46;
  if (v80 == 1)
  {
    v81 = v200;
    (*(v76 + 104))(v200, enum case for WaveformState.hidden(_:), v78);
    if (v79(v70, 1, v78) != 1)
    {
      sub_1000095E8(v70, &qword_101188100, &qword_100EC37B0);
    }
  }

  else
  {
    v81 = v200;
    (*(v76 + 32))(v200, v70, v78);
  }

  static Color.black.getter();
  v82 = Color.opacity(_:)();

  sub_1000095E8(v54, &qword_101188100, &qword_100EC37B0);
  v83 = v199;
  *&v199[*(v196 + 36)] = v82;
  (*(v76 + 32))(v83, v81, v78);
  v84 = v182;
  sub_10003D17C(v227, v182, &qword_101186168, &qword_100EC19F0);
  v85 = v188;
  sub_10003D17C(v83, v84 + *(v188 + 36), &qword_101198E68, &qword_100ED79E0);
  v86 = v69 + v56[8];
  v87 = *v86;
  v88 = *(v86 + 8);
  v89 = *(v86 + 16);
  v90 = sub_10068FBB0();
  v91 = v187;
  View.corner(_:)(v87, v88, v89, v85, v90);
  sub_1000095E8(v84, &qword_10119D738, &qword_100EDC460);
  v92 = Border.artwork.unsafeMutableAddressor();
  v93 = *v92;
  v94 = *(v92 + 1);
  LOBYTE(v84) = *(v92 + 16);

  *&v234 = v85;
  *(&v234 + 1) = v90;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = v191;
  v97 = v87;
  v98 = v192;
  View.border(_:corner:)(v93, v84, v97, v88, v89, v192, OpaqueTypeConformance2, v94);

  (*(v190 + 8))(v91, v98);
  v99 = v208;
  static AccessibilityChildBehavior.ignore.getter();
  *&v234 = v98;
  *(&v234 + 1) = OpaqueTypeConformance2;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v194;
  v102 = v195;
  View.accessibilityElement(children:)();
  (*(v209 + 8))(v99, v210);
  (*(v193 + 8))(v96, v102);
  v103 = AccessibilityIdentifier.trackListCellArtwork.unsafeMutableAddressor();
  v104 = *v103;
  v105 = v103[1];
  v106 = v103[2];
  v107 = v103[3];

  *&v234 = v102;
  *(&v234 + 1) = v100;
  v108 = swift_getOpaqueTypeConformance2();
  v109 = v202;
  v110 = v198;
  View.accessibilityIdentifier(_:)(v104, v105, v106, v107, v198, v108);

  (*(v197 + 8))(v101, v110);
  if (v75)
  {
    v111 = sub_1002743BC();
    v113 = v112;
  }

  else
  {
    v111 = 0;
    v113 = 0;
  }

  v114 = v229;
  v115 = sub_10068FC68();
  v116 = v205;
  View.accessibilityLabel(_:)(v111, v113, v201, v115);

  sub_1000095E8(v109, &qword_10119D758, &qword_100EDC480);
  v117 = v211;
  static AccessibilityTraits.updatesFrequently.getter();
  sub_10068FDE0();
  v118 = v224;
  View.accessibilityAddTraits(_:)();
  (*(v212 + 8))(v117, v213);
  sub_1000095E8(v116, &qword_10119D760, &qword_100EDC488);
  v119 = v207;
  sub_1000089F8(v231 + v184, v207, &qword_101186E00, &qword_100EC31E0);
  if (v185(v119, 1, v114) == 1)
  {
    sub_1000095E8(v119, &qword_101186E00, &qword_100EC31E0);
    sub_1000089F8(v118, v220, &qword_10119D768, &qword_100EDC490);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10119D788, &qword_10119D728, &qword_100EDC450, &protocol conformance descriptor for ZStack<A>);
    sub_10068FE9C();
    v120 = v217;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    (*(v228 + 32))();
    v121 = static Alignment.center.getter();
    v122 = v216;
    *v216 = v121;
    v122[1] = v123;
    v227 = v122 + *(sub_10010FC20(&qword_10119D798, &qword_100EDC498) + 44);
    v124 = v175;
    sub_1000089F8(v118, v175, &qword_10119D768, &qword_100EDC490);
    *(v124 + *(sub_10010FC20(&qword_10119D7A0, &qword_100EDC4A0) + 36)) = 256;
    sub_100681870(v125);
    static Alignment.topLeading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v126 = (v124 + *(v164 + 36));
    v127 = v232[4];
    *v126 = v232[3];
    v126[1] = v127;
    v126[2] = v232[5];
    v128 = v165;
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v114, &protocol witness table for SocialProfile, v165);
    v129 = SocialProfile.name.getter();
    v131 = v130;
    ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v189, 0, v189, 0, 0, 1, 2, &v233);
    v132 = v222;
    v133 = v223;
    v159(v222, v160, v223);
    v134 = v166;
    static ArtworkImage.socialArtworkImage(_:displayName:size:reusePolicy:)(v128, v129, v131, &v233, v132, v166);

    (v162)(v132, v133);
    sub_1000095E8(v128, &unk_10118A5E0, &unk_100EBCD90);
    v135 = sub_10068FF58();
    *&v234 = &type metadata for CNSwiftUIAvatarView;
    *(&v234 + 1) = v135;
    v136 = swift_getOpaqueTypeConformance2();
    v137 = v168;
    v138 = v171;
    View.corner(_:)(0, 0, 2, v171, v136);
    (*(v167 + 8))(v134, v138);
    v139 = *v92;
    v140 = *(v92 + 1);
    v141 = *(v92 + 16);

    *&v234 = v138;
    *(&v234 + 1) = v136;
    v142 = swift_getOpaqueTypeConformance2();
    v143 = v169;
    v144 = v141;
    v145 = v173;
    View.border(_:corner:)(v139, v144, 0, 0, 2, v173, v142, v140);

    (*(v172 + 8))(v137, v145);
    v146 = v143 + *(v170 + 36);
    *v146 = 0x3FF0000000000000;
    *(v146 + 8) = 0;
    sub_10068FFAC();
    v147 = v177;
    View.accessibilityHidden(_:)();
    sub_1000095E8(v143, &qword_10119D710, &qword_100EDC438);
    sub_100681870(v148);
    static Alignment.bottomTrailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    v149 = (v147 + *(v174 + 36));
    v150 = v235;
    *v149 = v234;
    v149[1] = v150;
    v149[2] = v236;
    v151 = v176;
    sub_1000089F8(v124, v176, &qword_10119D720, &qword_100EDC448);
    v152 = v114;
    v153 = v178;
    sub_1000089F8(v147, v178, &qword_10119D718, &qword_100EDC440);
    v154 = v227;
    sub_1000089F8(v151, v227, &qword_10119D720, &qword_100EDC448);
    v155 = sub_10010FC20(&qword_10119D7B8, &qword_100EDC4A8);
    sub_1000089F8(v153, v154 + *(v155 + 48), &qword_10119D718, &qword_100EDC440);
    sub_1000095E8(v147, &qword_10119D718, &qword_100EDC440);
    sub_1000095E8(v124, &qword_10119D720, &qword_100EDC448);
    sub_1000095E8(v153, &qword_10119D718, &qword_100EDC440);
    sub_1000095E8(v151, &qword_10119D720, &qword_100EDC448);
    v156 = v216;
    sub_1000089F8(v216, v220, &qword_10119D728, &qword_100EDC450);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10119D788, &qword_10119D728, &qword_100EDC450, &protocol conformance descriptor for ZStack<A>);
    sub_10068FE9C();
    v120 = v217;
    v118 = v224;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v156, &qword_10119D728, &qword_100EDC450);
    (*(v228 + 8))(v215, v152);
  }

  sub_10003D17C(v120, v221, &qword_10119D730, &qword_100EDC458);
  return sub_1000095E8(v118, &qword_10119D768, &qword_100EDC490);
}

double sub_100681870(__n128 a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = v1 + *(type metadata accessor for ArtworkImage.Info(0) + 24);
  v14 = *v13;
  v27 = *(v13 + 8);
  v15 = type metadata accessor for Tracklist.Artwork(0);
  sub_1000089F8(v1 + *(v15 + 36), v6, &qword_10118A610, &qword_100EBCDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v12, v6, v7);
  }

  else
  {
    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v25 + 8))(v4, v26);
  }

  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v8 + 8))(v12, v7);
    v18 = 16.0;
    v19 = 32.0;
  }

  else
  {
    (*(v8 + 104))(v10, enum case for DynamicTypeSize.accessibility3(_:), v7);
    v20 = static DynamicTypeSize.< infix(_:_:)();
    v21 = *(v8 + 8);
    v21(v10, v7);
    v21(v12, v7);
    v19 = 48.0;
    if (v20)
    {
      v19 = 32.0;
    }

    v18 = 24.0;
    if (v20)
    {
      v18 = 16.0;
    }
  }

  v22 = 1.0;
  if (!v27)
  {
    v22 = v14;
  }

  return v18 + v22 * v19;
}

uint64_t sub_100681C1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v103 = sub_10010FC20(&qword_101198FC8, &unk_100ED7AF0);
  __chkstk_darwin();
  v4 = &v89 - v3;
  v101 = sub_10010FC20(&qword_10119D7D0, &qword_100EDC4E8);
  __chkstk_darwin();
  v102 = &v89 - v5;
  v6 = type metadata accessor for AccessibilityTraits();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v98 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WaveformState();
  v96 = *(v9 - 8);
  v97 = v9;
  __chkstk_darwin();
  v94 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DancingPlaybackBarsConditionalModifier(0);
  __chkstk_darwin();
  v95 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188100, &qword_100EC37B0);
  __chkstk_darwin();
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v89 - v14;
  v16 = sub_10010FC20(&qword_10119D7D8, &qword_100EDC4F0);
  __chkstk_darwin();
  v18 = &v89 - v17;
  v93 = sub_10010FC20(&qword_10119D7E0, &qword_100EDC4F8);
  __chkstk_darwin();
  v20 = &v89 - v19;
  v100 = sub_10010FC20(&qword_10119D7E8, &qword_100EDC500);
  __chkstk_darwin();
  __chkstk_darwin();
  v23 = *a1;
  v24 = *(a1 + 8);
  v99 = a1;
  if (v24 < 0)
  {
    v98 = v4;
    *&v116[0] = v23;
    sub_1005C2A58();
    v116[0] = BinaryInteger.formatted()();
    sub_100009838();
    v37 = Text.init<A>(_:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    LODWORD(v116[0]) = static HierarchicalShapeStyle.primary.getter();
    v44 = Text.playableForegroundStyle<A>(_:isPlayable:)(v116, *(a1 + 9), v37, v39, v41 & 1, v43, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
    v46 = v45;
    v48 = v47;
    sub_10011895C(v37, v39, v41 & 1);

    if (qword_10117FB60 != -1)
    {
      swift_once();
    }

    v49 = Text.font(_:)();
    v51 = v50;
    v53 = v52;
    sub_10011895C(v44, v46, v48 & 1);

    if (qword_10117FB68 != -1)
    {
      swift_once();
    }

    v54 = Text.fontWeight(_:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_10011895C(v49, v51, v53 & 1);

    type metadata accessor for Tracklist.LeadingNumber(0);
    sub_10010FC20(&qword_10119A070, "@R\n");
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v61 = v58 & 1;
    v118 = v61;
    v62 = static Edge.Set.trailing.getter();
    if (qword_10117FB58 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v119 = 0;
    *&v105 = v54;
    *(&v105 + 1) = v56;
    LOBYTE(v106) = v61;
    *(&v106 + 1) = v60;
    v111 = v115[6];
    v112 = v115[7];
    v113 = v115[8];
    v107 = v115[2];
    v108 = v115[3];
    v109 = v115[4];
    v110 = v115[5];
    LOBYTE(v114) = v62;
    *(&v114 + 1) = v63;
    *&v115[0] = v64;
    *(&v115[0] + 1) = v65;
    *&v115[1] = v66;
    BYTE8(v115[1]) = 0;
    v67 = AccessibilityIdentifier.trackListCellChartNumber.unsafeMutableAddressor();
    v68 = *v67;
    v69 = v67[1];
    v70 = v67[2];
    v71 = v67[3];

    v72 = sub_10010FC20(&qword_101181120, &qword_100EBCC08);
    v73 = sub_100119518();
    v74 = v98;
    View.accessibilityIdentifier(_:)(v68, v69, v70, v71, v72, v73);

    v116[8] = v113;
    v116[9] = v114;
    v117[0] = v115[0];
    *(v117 + 9) = *(v115 + 9);
    v116[4] = v109;
    v116[5] = v110;
    v116[6] = v111;
    v116[7] = v112;
    v116[0] = v105;
    v116[1] = v106;
    v116[2] = v107;
    v116[3] = v108;
    sub_1000095E8(v116, &qword_101181120, &qword_100EBCC08);
    v75 = &qword_101198FC8;
    v76 = &unk_100ED7AF0;
    sub_1000089F8(v74, v102, &qword_101198FC8, &unk_100ED7AF0);
    swift_storeEnumTagMultiPayload();
    sub_1006900E4();
    sub_10068F538();
    _ConditionalContent<>.init(storage:)();
    v77 = v74;
  }

  else
  {
    v89 = v22;
    v90 = &v89 - v21;
    v91 = v7;
    v92 = v6;
    sub_100682900(v23, v24 & 1, a1, v18);
    v25 = a1[2];
    v26 = a1[3];
    v27 = qword_10117F1F8;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = &v18[*(v16 + 36)];
    *v28 = v25;
    *(v28 + 1) = v26;
    v28[16] = 2;
    v29 = qword_10117F5F8;

    if (v29 != -1)
    {
      swift_once();
    }

    *(v28 + 3) = (*(*qword_101218AC8 + 408))();
    type metadata accessor for PreviewPlaybackController(0);
    sub_10068DDB4(&qword_101185730, type metadata accessor for PreviewPlaybackController, &unk_100EBD1C0);
    *(v28 + 4) = ObservedObject.init(wrappedValue:)();
    *(v28 + 5) = v30;
    v31 = *(type metadata accessor for PreviewOverlay.TrackNumberVariant(0) + 32);
    *&v28[v31] = swift_getKeyPath();
    sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
    swift_storeEnumTagMultiPayload();
    v32 = v99[5];
    if (v32)
    {
      swift_getKeyPath();
      *&v116[0] = v32;
      sub_10068DDB4(&qword_101188108, type metadata accessor for WaveformPlayer.ListenerToken, &unk_100EC377C);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v33 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
      swift_beginAccess();
      sub_1000089F8(v32 + v33, v15, &qword_101188100, &qword_100EC37B0);
      v34 = v91;
      v36 = v96;
      v35 = v97;
    }

    else
    {
      v36 = v96;
      v35 = v97;
      (*(v96 + 56))(v15, 1, 1, v97);
      v34 = v91;
    }

    v97 = v20;
    sub_10003D17C(v15, v13, &qword_101188100, &qword_100EC37B0);
    v78 = *(v36 + 48);
    if (v78(v13, 1, v35) == 1)
    {
      v79 = v94;
      (*(v36 + 104))(v94, enum case for WaveformState.hidden(_:), v35);
      v80 = v78(v13, 1, v35);
      v81 = v79;
      if (v80 != 1)
      {
        sub_1000095E8(v13, &qword_101188100, &qword_100EC37B0);
      }
    }

    else
    {
      v81 = v94;
      (*(v36 + 32))(v94, v13, v35);
    }

    v82 = v95;
    (*(v36 + 32))(v95, v81, v35);
    v83 = v97;
    sub_10003D17C(v18, v97, &qword_10119D7D8, &qword_100EDC4F0);
    sub_10068DF34(v82, v83 + *(v93 + 36), type metadata accessor for DancingPlaybackBarsConditionalModifier);
    *&v105 = sub_100682F04();
    *(&v105 + 1) = v84;
    sub_1006901A0();
    sub_100009838();
    v85 = v89;
    View.accessibilityLabel<A>(_:)();

    sub_1000095E8(v83, &qword_10119D7E0, &qword_100EDC4F8);
    v86 = v98;
    static AccessibilityTraits.updatesFrequently.getter();
    v87 = v90;
    ModifiedContent<>.accessibilityAddTraits(_:)();
    (*(v34 + 8))(v86, v92);
    v75 = &qword_10119D7E8;
    v76 = &qword_100EDC500;
    sub_1000095E8(v85, &qword_10119D7E8, &qword_100EDC500);
    sub_1000089F8(v87, v102, &qword_10119D7E8, &qword_100EDC500);
    swift_storeEnumTagMultiPayload();
    sub_1006900E4();
    sub_10068F538();
    _ConditionalContent<>.init(storage:)();
    v77 = v87;
  }

  return sub_1000095E8(v77, v75, v76);
}

uint64_t sub_100682900@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v48 = type metadata accessor for DynamicTypeSize();
  v7 = *(v48 - 8);
  __chkstk_darwin();
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v11 = &v41[-v10];
  v12 = sub_10010FC20(&qword_10119D830, &unk_100EDC518);
  __chkstk_darwin();
  v49 = &v41[-v13];
  v14 = sub_10010FC20(&qword_10119D848, &qword_100EDC528);
  __chkstk_darwin();
  v16 = &v41[-v15];
  if (a2)
  {
    type metadata accessor for Tracklist.LeadingNumber(0);
    sub_10010FC20(&qword_10119A070, "@R\n");
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    countAndFlagsBits = v60._countAndFlagsBits;
    object = v60._object;
    v19 = v61;
    v20 = BYTE8(v61);
    LOBYTE(v51._countAndFlagsBits) = 1;
    v70 = v60._object;
    v69 = BYTE8(v61);
    *v16 = 0;
    v16[8] = 1;
    *(v16 + 2) = countAndFlagsBits;
    v16[24] = object;
    *(v16 + 4) = v19;
    v16[40] = v20;
    *(v16 + 3) = v62;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101199330, &qword_100ED7DE0);
    sub_100690428();
    sub_100617DA4();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v46 = v14;
    v47 = v12;
    v60._countAndFlagsBits = a1;
    sub_1005C2A58();
    v60 = BinaryInteger.formatted()();
    sub_100009838();
    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    LODWORD(v60._countAndFlagsBits) = static HierarchicalShapeStyle.secondary.getter();
    v29 = Text.playableForegroundStyle<A>(_:isPlayable:)(&v60, *(a3 + 9), v22, v24, v26 & 1, v28, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
    v44 = v30;
    v45 = v29;
    v42 = v31;
    v43 = v32;
    sub_10011895C(v22, v24, v26 & 1);

    type metadata accessor for Tracklist.LeadingNumber(0);
    sub_10010FC20(&qword_10119A070, "@R\n");
    ScaledMetric.wrappedValue.getter();
    sub_10056CAE4(v11);
    sub_10056CABC(v9);
    LOBYTE(v22) = sub_10068D7BC(v11, v9);
    (*(v7 + 8))(v9, v48);
    sub_1000095E8(v11, &unk_101184290, &qword_100EC0E60);
    if (v22)
    {
      static Alignment.leading.getter();
    }

    else
    {
      static Alignment.center.getter();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v70 = v42 & 1;
    v51._countAndFlagsBits = v45;
    v51._object = v44;
    LOBYTE(v52) = v42 & 1;
    *(&v52 + 1) = v43;
    v33 = AccessibilityIdentifier.trackListCellTrackNumber.unsafeMutableAddressor();
    v34 = *v33;
    v35 = v33[1];
    v36 = v33[2];
    v37 = v33[3];

    v38 = sub_10010FC20(&qword_101181130, &unk_100EBCC10);
    v39 = sub_1001195A4();
    v40 = v49;
    View.accessibilityIdentifier(_:)(v34, v35, v36, v37, v38, v39);

    v66 = v57;
    v67 = v58;
    v68 = v59;
    v62 = v53;
    v63 = v54;
    v64 = v55;
    v65 = v56;
    v60 = v51;
    v61 = v52;
    sub_1000095E8(&v60, &qword_101181130, &unk_100EBCC10);
    sub_1000089F8(v40, v16, &qword_10119D830, &unk_100EDC518);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101199330, &qword_100ED7DE0);
    sub_100690428();
    sub_100617DA4();
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v40, &qword_10119D830, &unk_100EDC518);
  }
}

uint64_t sub_100682F04()
{
  if (!*(v0 + 40))
  {
LABEL_8:
    v5 = _swiftEmptyArrayStorage;
    v9 = *(v0 + 8);
    if (v9 < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v1 = sub_1002743BC();
  if (!v2)
  {

    goto LABEL_8;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_100498B7C(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_100498B7C((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v3;
  *(v8 + 5) = v4;
  v9 = *(v0 + 8);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v9 & 1) == 0)
    {
      sub_1005C2A58();
      v10 = BinaryInteger.formatted()();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100498B7C(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_100498B7C((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      *&v5[16 * v12 + 32] = v10;
    }
  }

LABEL_15:
  sub_10010FC20(&qword_101183BC8, &unk_100EBF620);
  sub_100020674(&unk_101183BD0, &qword_101183BC8, &unk_100EBF620, &protocol conformance descriptor for [A]);
  v13 = BidirectionalCollection<>.joined(separator:)();

  return v13;
}

uint64_t sub_1006830F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10010FC20(&qword_10119D7C0, &qword_100EDC4D8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  sub_100681C1C(v2, &v10 - v4);
  if (*(v2 + 32) == 1)
  {
    if (qword_10117FBE0 != -1)
    {
      swift_once();
    }

    v6 = qword_101219388;
  }

  else
  {
    v6 = 0;
  }

  KeyPath = swift_getKeyPath();
  sub_10003D17C(v5, a1, &qword_10119D7C0, &qword_100EDC4D8);
  result = sub_10010FC20(&qword_10119D7C8, &qword_100EDC4E0);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_100683220(uint64_t a1)
{
  v1 = a1;
  v2 = sub_10010FC20(&qword_10119D850, &qword_100EDC530);
  __chkstk_darwin();
  v4 = &v32[-v3];
  v5 = sub_10010FC20(&qword_10119D858, &qword_100EDC538);
  __chkstk_darwin();
  v7 = &v32[-v6];
  v8 = sub_10010FC20(&qword_10119D860, &qword_100EDC540);
  __chkstk_darwin();
  v10 = &v32[-v9];
  *&v34 = Image.init(systemName:)();
  v33 = static HierarchicalShapeStyle.secondary.getter();
  View.playableForegroundStyle<A>(_:isPlayable:)(&v33, v1, &type metadata for Image, &type metadata for HierarchicalShapeStyle, &protocol witness table for Image);

  if (qword_10117FB88 != -1)
  {
    swift_once();
  }

  v11 = qword_101219320;
  KeyPath = swift_getKeyPath();
  v13 = &v4[*(v2 + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = qword_10117FB90;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_1006904E4();
  View.fontWeight(_:)();
  sub_1000095E8(v4, &qword_10119D850, &qword_100EDC530);
  v15 = static Edge.Set.trailing.getter();
  if (qword_10117FB78 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v16 = &v7[*(v5 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  if (qword_10117FB80 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v7, v10, &qword_10119D858, &qword_100EDC538);
  v21 = &v10[*(v8 + 36)];
  v22 = v39;
  v21[4] = v38;
  v21[5] = v22;
  v21[6] = v40;
  v23 = v35;
  *v21 = v34;
  v21[1] = v23;
  v24 = v37;
  v21[2] = v36;
  v21[3] = v24;
  v25 = AccessibilityIdentifier.trackListCellVideoIcon.unsafeMutableAddressor();
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  v30 = sub_1006905E0();

  View.accessibilityIdentifier(_:)(v26, v27, v28, v29, v8, v30);

  return sub_1000095E8(v10, &qword_10119D860, &qword_100EDC540);
}

__n128 sub_1006836A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&qword_10119D578, &qword_100EDC248);
  __chkstk_darwin();
  v6 = v12 - v5;
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_10010FC20(&qword_10119D580, &qword_100EDC250);
  sub_100683808(v2, *(a1 + 16), *(a1 + 24), &v6[*(v7 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v6, a2, &qword_10119D578, &qword_100EDC248);
  v8 = a2 + *(sub_10010FC20(&qword_10119D588, &qword_100EDC258) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_100683808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v127 = a3;
  v126 = a2;
  v125 = a4;
  v106 = type metadata accessor for DynamicTypeSize();
  v105 = *(v106 - 8);
  __chkstk_darwin();
  v104 = (&v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v109 = &v103 - v7;
  v112 = sub_10010FC20(&qword_101186080, &qword_100EDC260);
  v111 = *(v112 - 8);
  __chkstk_darwin();
  v110 = &v103 - v8;
  v114 = sub_10010FC20(&qword_10119D590, &qword_100EDC268);
  __chkstk_darwin();
  v115 = &v103 - v9;
  v124 = sub_10010FC20(&qword_10119D598, &unk_100EDC270);
  v123 = *(v124 - 8);
  __chkstk_darwin();
  v113 = &v103 - v10;
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v117 = &v103 - v11;
  v129 = type metadata accessor for AttributedString();
  v128 = *(v129 - 8);
  __chkstk_darwin();
  v108 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v103 - v13;
  sub_10010FC20(&qword_10119D5A0, &qword_100EDC280);
  __chkstk_darwin();
  v122 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v103 - v15;
  v16 = sub_10010FC20(&qword_10119D5A8, &qword_100EDC288);
  __chkstk_darwin();
  v18 = &v103 - v17;
  v118 = sub_10010FC20(&qword_10119D5B0, &qword_100EDC290);
  v19 = *(v118 - 1);
  __chkstk_darwin();
  v21 = &v103 - v20;
  v22 = sub_10010FC20(&qword_10119D5B8, &qword_100EDC298);
  __chkstk_darwin();
  v24 = &v103 - v23;
  sub_10010FC20(&qword_10119D5C0, &qword_100EDC2A0);
  __chkstk_darwin();
  v119 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v103 - v26;
  v116 = a1;
  v28 = a2;
  v29 = v127;
  sub_10068460C(v28, v127, v18);
  LODWORD(v137) = static HierarchicalShapeStyle.primary.getter();
  v30 = *(a1 + 16);
  v31 = sub_10068F0F0();
  v107 = v30;
  View.playableForegroundStyle<A>(_:isPlayable:)(&v137, v30, v16, &type metadata for HierarchicalShapeStyle, v31);
  sub_1000095E8(v18, &qword_10119D5A8, &qword_100EDC288);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v19 + 32))(v24, v21, v118);
  v32 = &v24[*(v22 + 36)];
  v33 = v135;
  *(v32 + 4) = v134;
  *(v32 + 5) = v33;
  *(v32 + 6) = v136;
  v34 = v131;
  *v32 = v130;
  *(v32 + 1) = v34;
  v35 = v133;
  *(v32 + 2) = v132;
  *(v32 + 3) = v35;
  v36 = AccessibilityIdentifier.trackListCellTitle.unsafeMutableAddressor();
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];
  v41 = sub_10068F200();

  v118 = v27;
  View.accessibilityIdentifier(_:)(v37, v38, v39, v40, v22, v41);

  sub_1000095E8(v24, &qword_10119D5B8, &qword_100EDC298);
  v42 = v126;
  v44 = type metadata accessor for Tracklist.VerticalTextStack(0, v126, v29, v43);
  v45 = v29;
  v46 = v29[7];
  swift_unknownObjectRetain();
  v47 = v117;
  v46(v42, v45);
  v48 = v128;
  swift_unknownObjectRelease();
  if ((*(v48 + 48))(v47, 1, v129) == 1)
  {
    sub_1000095E8(v47, &qword_101180C90, &unk_100EBC730);
    v49 = 1;
    v50 = v121;
  }

  else
  {
    v103 = v44;
    v51 = v120;
    v52 = v129;
    (*(v48 + 32))(v120, v47, v129);
    (*(v48 + 16))(v108, v51, v52);
    v53 = Text.init(_:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    LODWORD(v137) = static HierarchicalShapeStyle.secondary.getter();
    v60 = Text.playableForegroundStyle<A>(_:isPlayable:)(&v137, v107, v53, v55, v57 & 1, v59, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
    v62 = v61;
    v64 = v63;
    sub_10011895C(v53, v55, v57 & 1);

    if (qword_10117FBD8 != -1)
    {
      swift_once();
    }

    v65 = Text.font(_:)();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    sub_10011895C(v60, v62, v64 & 1);

    v72 = v127;
    v73 = v127[3];
    swift_unknownObjectRetain();
    v74 = v109;
    v73(v126, v72);
    swift_unknownObjectRelease();
    v75 = type metadata accessor for ArtworkImage.Info(0);
    LOBYTE(v76) = 1;
    v77 = (*(*(v75 - 8) + 48))(v74, 1, v75);
    sub_1000095E8(v74, &unk_10119F000, &qword_100EC31D0);
    if (v77 == 1)
    {
      v78 = 0;
    }

    else
    {
      v79 = v104;
      sub_10056CABC(v104);
      v76 = DynamicTypeSize.isAccessibilitySize.getter();
      (*(v105 + 8))(v79, v106);
      v78 = ~v76 & 1;
    }

    v80 = v120;
    KeyPath = swift_getKeyPath();
    *&v137 = v65;
    *(&v137 + 1) = v67;
    v82 = v69 & 1;
    LOBYTE(v138) = v82;
    *(&v138 + 1) = v71;
    *&v139 = KeyPath;
    *(&v139 + 1) = v78;
    LOBYTE(v140) = v76 & 1;
    if (qword_10117FBC8 != -1)
    {
      swift_once();
    }

    sub_10010FC20(&qword_1011860D0, &qword_100EC1980);
    sub_10023BB90();
    v83 = v110;
    View.minimumLineHeight(_:)();
    sub_10011895C(v65, v67, v82);

    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v84 = v115;
    (*(v111 + 32))(v115, v83, v112);
    v85 = v114;
    v86 = (v84 + *(v114 + 36));
    v87 = v142;
    v86[4] = v141;
    v86[5] = v87;
    v86[6] = v143;
    v88 = v138;
    *v86 = v137;
    v86[1] = v88;
    v89 = v140;
    v86[2] = v139;
    v86[3] = v89;
    v90 = AccessibilityIdentifier.trackListCellArtist.unsafeMutableAddressor();
    v91 = *v90;
    v92 = v90[1];
    v93 = v90[2];
    v94 = v90[3];
    v95 = sub_10068F470();

    v96 = v113;
    View.accessibilityIdentifier(_:)(v91, v92, v93, v94, v85, v95);

    sub_1000095E8(v84, &qword_10119D590, &qword_100EDC268);
    (*(v128 + 8))(v80, v129);
    v50 = v121;
    sub_10003D17C(v96, v121, &qword_10119D598, &unk_100EDC270);
    v49 = 0;
  }

  (*(v123 + 56))(v50, v49, 1, v124);
  v97 = v118;
  v98 = v119;
  sub_1000089F8(v118, v119, &qword_10119D5C0, &qword_100EDC2A0);
  v99 = v122;
  sub_1000089F8(v50, v122, &qword_10119D5A0, &qword_100EDC280);
  v100 = v125;
  sub_1000089F8(v98, v125, &qword_10119D5C0, &qword_100EDC2A0);
  v101 = sub_10010FC20(&qword_10119D5E8, &qword_100EDC2C0);
  sub_1000089F8(v99, v100 + *(v101 + 48), &qword_10119D5A0, &qword_100EDC280);
  sub_1000095E8(v50, &qword_10119D5A0, &qword_100EDC280);
  sub_1000095E8(v97, &qword_10119D5C0, &qword_100EDC2A0);
  sub_1000095E8(v99, &qword_10119D5A0, &qword_100EDC280);
  return sub_1000095E8(v98, &qword_10119D5C0, &qword_100EDC2A0);
}

uint64_t sub_10068460C@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a4;
  v7 = type metadata accessor for Text.Suffix();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin();
  v68 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10010FC20(&qword_101186090, &unk_100EDC2B0);
  __chkstk_darwin();
  v71 = &v67 - v9;
  v74 = sub_10010FC20(&qword_10119D5F8, &qword_100EDC300);
  __chkstk_darwin();
  v75 = (&v67 - v10);
  v72 = type metadata accessor for DynamicTypeSize();
  v11 = *(v72 - 8);
  __chkstk_darwin();
  v13 = (&v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v15 = &v67 - v14;
  type metadata accessor for Tracklist.VerticalTextStack(0, a2, a3, v16);
  v17 = a3[3];
  swift_unknownObjectRetain();
  v73 = a2;
  v17(a2, a3);
  swift_unknownObjectRelease();
  v18 = type metadata accessor for ArtworkImage.Info(0);
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
  {
    sub_1000095E8(v15, &unk_10119F000, &qword_100EC31D0);
LABEL_4:
    v20 = a3[6];
    swift_unknownObjectRetain();
    v21 = v73;
    v22 = v20(v73, a3);
    v24 = v23;
    swift_unknownObjectRelease();
    v78 = v22;
    v79 = v24;
    sub_100009838();
    v25 = Text.init<A>(_:)();
    v71 = v26;
    v72 = v25;
    LODWORD(v70) = v27;
    v69 = v28;
    v29 = a3[10];
    swift_unknownObjectRetain();
    v30 = v29(v21, a3);
    swift_unknownObjectRelease();
    v31 = TextBadge.view.getter(v30);
    v33 = v32;
    v35 = v34;
    v36 = v71;
    v37 = v72;
    v38 = static Text.+ infix(_:_:)();
    v40 = v39;
    LOBYTE(v22) = v41;
    v43 = v42;
    sub_10011895C(v31, v33, v35 & 1);

    sub_10011895C(v37, v36, v70 & 1);

    v44 = v75;
    *v75 = v38;
    v44[1] = v40;
    *(v44 + 16) = v22 & 1;
    v44[3] = v43;
    swift_storeEnumTagMultiPayload();
    sub_10023B9EC();
    return _ConditionalContent<>.init(storage:)();
  }

  sub_1000095E8(v15, &unk_10119F000, &qword_100EC31D0);
  sub_10056CABC(v13);
  v19 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v11 + 8))(v13, v72);
  if (v19)
  {
    goto LABEL_4;
  }

  v46 = a3[6];
  swift_unknownObjectRetain();
  v47 = v73;
  v48 = v46(v73, a3);
  v50 = v49;
  swift_unknownObjectRelease();
  v78 = v48;
  v79 = v50;
  sub_100009838();
  v51 = Text.init<A>(_:)();
  v53 = v52;
  v72 = v54;
  v78 = v51;
  v79 = v52;
  LOBYTE(v48) = v55 & 1;
  v80 = v55 & 1;
  v81 = v54;
  v56 = a3[10];
  swift_unknownObjectRetain();
  v57 = v56(v47, a3);
  swift_unknownObjectRelease();
  v58 = TextBadge.view.getter(v57);
  v60 = v59;
  LOBYTE(v47) = v61;
  v62 = v68;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v58, v60, v47 & 1);

  v63 = v71;
  View.textSuffix(_:)();
  (*(v69 + 8))(v62, v70);
  sub_10011895C(v51, v53, v48);

  KeyPath = swift_getKeyPath();
  v65 = v75;
  v66 = v63 + *(v76 + 36);
  *v66 = KeyPath;
  *(v66 + 8) = 1;
  *(v66 + 16) = 0;
  sub_1000089F8(v63, v65, &qword_101186090, &unk_100EDC2B0);
  swift_storeEnumTagMultiPayload();
  sub_10023B9EC();
  _ConditionalContent<>.init(storage:)();
  return sub_1000095E8(v63, &qword_101186090, &unk_100EDC2B0);
}

uint64_t sub_100684C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v58 = &v53 - v5;
  sub_10010FC20(&qword_10119D8C0, &qword_100EDC570);
  __chkstk_darwin();
  v60 = (&v53 - v6);
  v7 = sub_10010FC20(&qword_10119D5A8, &qword_100EDC288);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v54 = sub_10010FC20(&qword_10119D5B0, &qword_100EDC290);
  v10 = *(v54 - 8);
  __chkstk_darwin();
  v12 = &v53 - v11;
  v13 = sub_10010FC20(&qword_10119D5B8, &qword_100EDC298) - 8;
  __chkstk_darwin();
  v15 = &v53 - v14;
  v55 = sub_10010FC20(&qword_10119D8C8, &qword_100EDC578);
  __chkstk_darwin();
  v17 = &v53 - v16;
  sub_10010FC20(&qword_10119D8D0, &qword_100EDC580);
  __chkstk_darwin();
  v57 = &v53 - v18;
  v19 = *(a1 + 24);
  v56 = *(a1 + 16);
  sub_1006852D8(v56, v19, v9);
  LODWORD(v62[0]) = static HierarchicalShapeStyle.primary.getter();
  v59 = v3;
  LOBYTE(a1) = *(v3 + 16);
  v20 = sub_10068F0F0();
  View.playableForegroundStyle<A>(_:isPlayable:)(v62, a1, v7, &type metadata for HierarchicalShapeStyle, v20);
  sub_1000095E8(v9, &qword_10119D5A8, &qword_100EDC288);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v10 + 32))(v15, v12, v54);
  v21 = &v15[*(v13 + 44)];
  v22 = v62[5];
  *(v21 + 4) = v62[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = v62[6];
  v23 = v62[1];
  *v21 = v62[0];
  *(v21 + 1) = v23;
  v24 = v62[3];
  *(v21 + 2) = v62[2];
  *(v21 + 3) = v24;
  v25 = static Edge.Set.trailing.getter();
  if (qword_10117FBB8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10003D17C(v15, v17, &qword_10119D5B8, &qword_100EDC298);
  v34 = v55;
  v35 = &v17[*(v55 + 36)];
  *v35 = v25;
  *(v35 + 1) = v27;
  *(v35 + 2) = v29;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  v35[40] = 0;
  v36 = AccessibilityIdentifier.trackListCellTitle.unsafeMutableAddressor();
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];
  v41 = sub_10069093C();

  v42 = v57;
  View.accessibilityIdentifier(_:)(v37, v38, v39, v40, v34, v41);

  sub_1000095E8(v17, &qword_10119D8C8, &qword_100EDC578);
  v43 = v59;
  v44 = v19[3];
  swift_unknownObjectRetain();
  v45 = v58;
  v46 = v56;
  v44(v56, v19);
  swift_unknownObjectRelease();
  v47 = type metadata accessor for ArtworkImage.Info(0);
  v48 = (*(*(v47 - 8) + 48))(v45, 1, v47);
  sub_1000095E8(v45, &unk_10119F000, &qword_100EC31D0);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1 || v48 != 1)
  {
    v49 = static VerticalAlignment.center.getter();
  }

  else
  {
    v49 = static VerticalAlignment.firstTextLineCenter.getter();
  }

  v50 = v60;
  *v60 = v49;
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  v51 = sub_10010FC20(&qword_10119D8E0, &qword_100EDC588);
  sub_100685840(v43, v42, v46, v19, v50 + *(v51 + 44));
  sub_10003D17C(v50, v61, &qword_10119D8C0, &qword_100EDC570);
  return sub_1000095E8(v42, &qword_10119D8D0, &qword_100EDC580);
}

uint64_t sub_1006852D8@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v7 = type metadata accessor for Text.Suffix();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin();
  v61 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10010FC20(&qword_101186090, &unk_100EDC2B0);
  __chkstk_darwin();
  v10 = v60 - v9;
  v65 = sub_10010FC20(&qword_10119D5F8, &qword_100EDC300);
  __chkstk_darwin();
  v64 = v60 - v11;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v13 = v60 - v12;
  type metadata accessor for Tracklist.HorizontalTextStack(0, a2, a3, v14);
  v15 = a3[3];
  swift_unknownObjectRetain();
  v15(a2, a3);
  swift_unknownObjectRelease();
  v16 = type metadata accessor for ArtworkImage.Info(0);
  v17 = (*(*(v16 - 8) + 48))(v13, 1, v16);
  sub_1000095E8(v13, &unk_10119F000, &qword_100EC31D0);
  v18 = a3[6];
  swift_unknownObjectRetain();
  v19 = v18(a2, a3);
  v21 = v20;
  swift_unknownObjectRelease();
  v68 = v19;
  v69 = v21;
  sub_100009838();
  if (v17 == 1)
  {
    v22 = Text.init<A>(_:)();
    v23 = a2;
    v25 = v24;
    LODWORD(v63) = v26;
    v62 = v27;
    v28 = a3[10];
    swift_unknownObjectRetain();
    v29 = v28(v23, a3);
    swift_unknownObjectRelease();
    v30 = TextBadge.view.getter(v29);
    v32 = v31;
    v34 = v33;
    v35 = v25;
    v36 = v64;
    v37 = static Text.+ infix(_:_:)();
    v39 = v38;
    LOBYTE(v28) = v40;
    v61 = v41;
    sub_10011895C(v30, v32, v34 & 1);

    sub_10011895C(v22, v35, v63 & 1);

    *v36 = v37;
    *(v36 + 8) = v39;
    *(v36 + 16) = v28 & 1;
    *(v36 + 24) = v61;
    swift_storeEnumTagMultiPayload();
    sub_10023B9EC();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v43 = Text.init<A>(_:)();
    v45 = v44;
    v60[1] = v46;
    v68 = v43;
    v69 = v44;
    v48 = v47 & 1;
    v70 = v47 & 1;
    v71 = v46;
    v49 = v10;
    v50 = a3[10];
    swift_unknownObjectRetain();
    v51 = v50(a2, a3);
    swift_unknownObjectRelease();
    v52 = TextBadge.view.getter(v51);
    v54 = v53;
    v56 = v55;
    v57 = v61;
    static Text.Suffix.alwaysVisible(_:)();
    sub_10011895C(v52, v54, v56 & 1);

    View.textSuffix(_:)();
    (*(v62 + 8))(v57, v63);
    sub_10011895C(v43, v45, v48);

    KeyPath = swift_getKeyPath();
    v59 = v49 + *(v66 + 36);
    *v59 = KeyPath;
    *(v59 + 8) = 1;
    *(v59 + 16) = 0;
    sub_1000089F8(v49, v64, &qword_101186090, &unk_100EDC2B0);
    swift_storeEnumTagMultiPayload();
    sub_10023B9EC();
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v49, &qword_101186090, &unk_100EDC2B0);
  }
}

uint64_t sub_100685840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v177 = a2;
  v181 = a5;
  v172 = sub_10010FC20(&qword_10119D8E8, &qword_100EDC590);
  __chkstk_darwin();
  v157 = &v141[-v8];
  v153 = sub_10010FC20(&qword_10119D8F0, &qword_100EDC598);
  __chkstk_darwin();
  v155 = &v141[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v154 = &v141[-v10];
  __chkstk_darwin();
  v156 = &v141[-v11];
  v169 = sub_10010FC20(&qword_10119D8F8, &qword_100EDC5A0);
  __chkstk_darwin();
  v171 = &v141[-v12];
  v170 = sub_10010FC20(&qword_10119D900, &qword_100EDC5A8);
  __chkstk_darwin();
  v152 = &v141[-v13];
  sub_10010FC20(&qword_10119D908, &qword_100EDC5B0);
  __chkstk_darwin();
  v151 = &v141[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v160 = &v141[-v15];
  v146 = sub_10010FC20(&qword_10119D910, &qword_100EDC5B8);
  __chkstk_darwin();
  v149 = &v141[-v16];
  v148 = sub_10010FC20(&qword_10119D918, &qword_100EDC5C0);
  __chkstk_darwin();
  v150 = &v141[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v147 = &v141[-v18];
  __chkstk_darwin();
  v159 = &v141[-v19];
  v166 = sub_10010FC20(&qword_10119D920, &qword_100EDC5C8);
  __chkstk_darwin();
  v173 = &v141[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v167 = &v141[-v21];
  __chkstk_darwin();
  v158 = &v141[-v22];
  v182 = sub_10010FC20(&qword_10119D928, &qword_100EDC5D0);
  __chkstk_darwin();
  v168 = &v141[-v23];
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v164 = &v141[-v24];
  sub_10010FC20(&qword_10119D930, &qword_100EDC5D8);
  __chkstk_darwin();
  v183 = &v141[-v25];
  v178 = sub_10010FC20(&qword_10119D938, &qword_100EDC5E0);
  __chkstk_darwin();
  v180 = &v141[-v26];
  v179 = sub_10010FC20(&qword_10119D940, &qword_100EDC5E8);
  __chkstk_darwin();
  v162 = &v141[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v163 = &v141[-v28];
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v30 = &v141[-v29];
  v31 = type metadata accessor for AttributedString();
  v32 = *(v31 - 1);
  __chkstk_darwin();
  v161 = &v141[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v35 = &v141[-v34];
  v165 = type metadata accessor for Tracklist.HorizontalTextStack(0, a3, a4, v36);
  v176 = a1;
  v37 = *(a4 + 56);
  swift_unknownObjectRetain();
  v174 = a3;
  v175 = a4;
  v37(a3, a4);
  swift_unknownObjectRelease();
  if ((*(v32 + 6))(v30, 1, v31) == 1)
  {
    sub_1000095E8(v30, &qword_101180C90, &unk_100EBC730);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v38 = v162;
    sub_1000089F8(v177, v162, &qword_10119D8D0, &qword_100EDC580);
    v39 = &v38[*(v179 + 36)];
    v40 = v191;
    v41 = v193;
    v39[4] = v192;
    v39[5] = v41;
    v39[6] = v194;
    v42 = v189;
    *v39 = v188;
    v39[1] = v42;
    v39[2] = v190;
    v39[3] = v40;
    v43 = v163;
    sub_10003D17C(v38, v163, &qword_10119D940, &qword_100EDC5E8);
    sub_1000089F8(v43, v180, &qword_10119D940, &qword_100EDC5E8);
    swift_storeEnumTagMultiPayload();
    sub_1006909C8();
    sub_100690AA8();
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v43, &qword_10119D940, &qword_100EDC5E8);
  }

  else
  {
    (*(v32 + 4))(v35, v30, v31);
    v162 = v32;
    v163 = v31;
    v45 = *(v32 + 2);
    v145 = v35;
    v45(v161, v35, v31);
    v46 = Text.init(_:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    LODWORD(v188) = static HierarchicalShapeStyle.secondary.getter();
    v142 = *(v176 + 16);
    v53 = Text.playableForegroundStyle<A>(_:isPlayable:)(&v188, v142, v46, v48, v50 & 1, v52, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
    v143 = v54;
    v144 = v53;
    v55 = v54;
    LODWORD(v161) = v56;
    v58 = v57;
    sub_10011895C(v46, v48, v50 & 1);

    v59 = v175;
    v60 = *(v175 + 24);
    swift_unknownObjectRetain();
    v61 = v164;
    v60(v174, v59);
    swift_unknownObjectRelease();
    v62 = type metadata accessor for ArtworkImage.Info(0);
    v63 = (*(*(v62 - 8) + 48))(v61, 1, v62);
    LOBYTE(v46) = v63 == 1;
    v64 = v63 != 1;
    sub_1000095E8(v61, &unk_10119F000, &qword_100EC31D0);
    KeyPath = swift_getKeyPath();
    *&v188 = v53;
    *(&v188 + 1) = v55;
    LOBYTE(v53) = v161 & 1;
    LOBYTE(v189) = v161 & 1;
    *(&v189 + 1) = v58;
    *&v190 = KeyPath;
    *(&v190 + 1) = v64;
    LOBYTE(v191) = v46;
    v66 = AccessibilityIdentifier.trackListCellArtist.unsafeMutableAddressor();
    v67 = *v66;
    v68 = v66[1];
    v70 = v66[2];
    v69 = v66[3];

    v71 = sub_10010FC20(&qword_1011860D0, &qword_100EC1980);
    v72 = sub_10023BB90();
    View.accessibilityIdentifier(_:)(v67, v68, v70, v69, v71, v72);

    sub_10011895C(v144, v143, v53);

    v73 = *(v176 + 56);
    if (qword_10117FB38 != -1)
    {
      swift_once();
    }

    v74 = v177;
    if (*&qword_1012192D0 <= v73 && (v75 = v175, v76 = *(v175 + 64), swift_unknownObjectRetain(), v77 = v76(v174, v75), v79 = v78, swift_unknownObjectRelease(), v79))
    {
      sub_100686D94(1, v165);
      static Alignment.leading.getter();
      _FrameLayout.init(width:height:alignment:)();
      v80 = v158;
      sub_1000089F8(v74, v158, &qword_10119D8D0, &qword_100EDC580);
      v81 = &v80[*(v166 + 36)];
      v82 = v203;
      *v81 = v202;
      v81[1] = v82;
      v81[2] = v204;
      v83 = static Edge.Set.trailing.getter();
      v84 = v183;
      if (qword_10117FBB8 != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v93 = v84;
      v94 = v149;
      sub_1000089F8(v93, v149, &qword_10119D930, &qword_100EDC5D8);
      v95 = &v94[*(v146 + 36)];
      *v95 = v83;
      *(v95 + 1) = v86;
      *(v95 + 2) = v88;
      *(v95 + 3) = v90;
      *(v95 + 4) = v92;
      v95[40] = 0;
      if (qword_10117FB28 != -1)
      {
        swift_once();
      }

      static Alignment.leading.getter();
      _FrameLayout.init(width:height:alignment:)();
      v96 = v147;
      sub_10003D17C(v94, v147, &qword_10119D910, &qword_100EDC5B8);
      v97 = &v96[*(v148 + 36)];
      v98 = v206;
      *v97 = v205;
      v97[1] = v98;
      v97[2] = v207;
      sub_10003D17C(v96, v159, &qword_10119D918, &qword_100EDC5C0);
      *&v188 = v77;
      *(&v188 + 1) = v79;
      sub_100009838();
      v99 = Text.init<A>(_:)();
      v101 = v100;
      v103 = v102;
      v105 = v104;
      LODWORD(v188) = static HierarchicalShapeStyle.secondary.getter();
      v106 = Text.playableForegroundStyle<A>(_:isPlayable:)(&v188, v142, v99, v101, v103 & 1, v105, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
      v177 = v107;
      v109 = v108;
      v111 = v110;
      sub_10011895C(v99, v101, v103 & 1);

      v112 = swift_getKeyPath();
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v199[55] = v208[3];
      *&v199[71] = v208[4];
      *&v199[87] = v208[5];
      *&v199[103] = v209;
      *&v199[7] = v208[0];
      *&v199[23] = v208[1];
      *&v199[39] = v208[2];
      *&v187[65] = *&v199[64];
      *&v187[81] = *&v199[80];
      *&v187[97] = *&v199[96];
      *&v187[1] = *v199;
      *&v187[17] = *&v199[16];
      *&v187[33] = *&v199[32];
      v201 = v109 & 1;
      v200 = 0;
      *&v184 = v106;
      *(&v184 + 1) = v177;
      LOBYTE(v185) = v109 & 1;
      *(&v185 + 1) = v111;
      *&v186 = v112;
      *(&v186 + 1) = 1;
      v187[0] = 0;
      *&v187[112] = *(&v209 + 1);
      *&v187[49] = *&v199[48];
      v113 = AccessibilityIdentifier.trackListCellAlbum.unsafeMutableAddressor();
      v114 = *v113;
      v115 = v113[1];
      v116 = v113[2];
      v117 = v113[3];

      v118 = sub_10010FC20(&qword_10119D978, &qword_100EDC5F8);
      v119 = sub_100690BF0();
      View.accessibilityIdentifier(_:)(v114, v115, v116, v117, v118, v119);

      v196 = *&v187[80];
      v197 = *&v187[96];
      v198 = *&v187[112];
      v192 = *&v187[16];
      v193 = *&v187[32];
      v194 = *&v187[48];
      v195 = *&v187[64];
      v188 = v184;
      v189 = v185;
      v190 = v186;
      v191 = *v187;
      sub_1000095E8(&v188, &qword_10119D978, &qword_100EDC5F8);
      v120 = v167;
      sub_1000089F8(v158, v167, &qword_10119D920, &qword_100EDC5C8);
      v121 = v150;
      sub_1000089F8(v159, v150, &qword_10119D918, &qword_100EDC5C0);
      v122 = v151;
      sub_1000089F8(v160, v151, &qword_10119D908, &qword_100EDC5B0);
      v123 = v152;
      sub_1000089F8(v120, v152, &qword_10119D920, &qword_100EDC5C8);
      v124 = sub_10010FC20(&qword_10119D988, &unk_100EDC600);
      sub_1000089F8(v121, &v123[*(v124 + 48)], &qword_10119D918, &qword_100EDC5C0);
      sub_1000089F8(v122, &v123[*(v124 + 64)], &qword_10119D908, &qword_100EDC5B0);
      sub_1000095E8(v122, &qword_10119D908, &qword_100EDC5B0);
      sub_1000095E8(v121, &qword_10119D918, &qword_100EDC5C0);
      sub_1000095E8(v120, &qword_10119D920, &qword_100EDC5C8);
      sub_1000089F8(v123, v171, &qword_10119D900, &qword_100EDC5A8);
      swift_storeEnumTagMultiPayload();
      sub_100020674(&qword_10119D950, &qword_10119D900, &qword_100EDC5A8, &protocol conformance descriptor for TupleView<A>);
      sub_100020674(&qword_10119D958, &qword_10119D8E8, &qword_100EDC590, &protocol conformance descriptor for TupleView<A>);
      v125 = v168;
      _ConditionalContent<>.init(storage:)();
      v126 = v125;
      sub_1000095E8(v123, &qword_10119D900, &qword_100EDC5A8);
      sub_1000095E8(v160, &qword_10119D908, &qword_100EDC5B0);
      sub_1000095E8(v159, &qword_10119D918, &qword_100EDC5C0);
      sub_1000095E8(v158, &qword_10119D920, &qword_100EDC5C8);
      v127 = v183;
    }

    else
    {
      sub_100686D94(0, v165);
      static Alignment.leading.getter();
      _FrameLayout.init(width:height:alignment:)();
      v128 = v173;
      sub_1000089F8(v74, v173, &qword_10119D8D0, &qword_100EDC580);
      v129 = &v128[*(v166 + 36)];
      v130 = v185;
      *v129 = v184;
      v129[1] = v130;
      v129[2] = v186;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v131 = v154;
      sub_1000089F8(v183, v154, &qword_10119D930, &qword_100EDC5D8);
      v132 = &v131[*(v153 + 36)];
      v133 = v193;
      v132[4] = v192;
      v132[5] = v133;
      v132[6] = v194;
      v134 = v189;
      *v132 = v188;
      v132[1] = v134;
      v135 = v191;
      v132[2] = v190;
      v132[3] = v135;
      v136 = v156;
      sub_10003D17C(v131, v156, &qword_10119D8F0, &qword_100EDC598);
      v137 = v167;
      sub_1000089F8(v128, v167, &qword_10119D920, &qword_100EDC5C8);
      v138 = v155;
      sub_1000089F8(v136, v155, &qword_10119D8F0, &qword_100EDC598);
      v139 = v157;
      sub_1000089F8(v137, v157, &qword_10119D920, &qword_100EDC5C8);
      v140 = sub_10010FC20(&qword_10119D970, &qword_100EDC5F0);
      sub_1000089F8(v138, &v139[*(v140 + 48)], &qword_10119D8F0, &qword_100EDC598);
      sub_1000095E8(v138, &qword_10119D8F0, &qword_100EDC598);
      sub_1000095E8(v137, &qword_10119D920, &qword_100EDC5C8);
      sub_1000089F8(v139, v171, &qword_10119D8E8, &qword_100EDC590);
      swift_storeEnumTagMultiPayload();
      sub_100020674(&qword_10119D950, &qword_10119D900, &qword_100EDC5A8, &protocol conformance descriptor for TupleView<A>);
      sub_100020674(&qword_10119D958, &qword_10119D8E8, &qword_100EDC590, &protocol conformance descriptor for TupleView<A>);
      v126 = v168;
      _ConditionalContent<>.init(storage:)();
      v127 = v183;
      sub_1000095E8(v139, &qword_10119D8E8, &qword_100EDC590);
      sub_1000095E8(v136, &qword_10119D8F0, &qword_100EDC598);
      sub_1000095E8(v173, &qword_10119D920, &qword_100EDC5C8);
    }

    sub_1000089F8(v126, v180, &qword_10119D928, &qword_100EDC5D0);
    swift_storeEnumTagMultiPayload();
    sub_1006909C8();
    sub_100690AA8();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v126, &qword_10119D928, &qword_100EDC5D0);
    sub_1000095E8(v127, &qword_10119D930, &qword_100EDC5D8);
    return (*(v162 + 1))(v145, v163);
  }
}

double sub_100686D94(int a1, uint64_t a2)
{
  v29 = a1;
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v5 = &v28[-v4];
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v7 = &v28[-v6];
  v30 = type metadata accessor for DynamicTypeSize();
  v8 = *(v30 - 8);
  __chkstk_darwin();
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + 56);
  sub_10056CABC(v10);
  v14 = a2 + 16;
  v13 = *(a2 + 16);
  v12 = *(v14 + 8);
  v15 = *(v12 + 24);
  swift_unknownObjectRetain();
  v15(v13, v12);
  swift_unknownObjectRelease();
  v16 = type metadata accessor for ArtworkImage.Info(0);
  if ((*(*(v16 - 8) + 48))(v7, 1, v16) == 1)
  {
    sub_1000095E8(v7, &unk_10119F000, &qword_100EC31D0);
  }

  else
  {
    sub_10068E244(v7, type metadata accessor for ArtworkImage.Info);
  }

  v17 = *(v12 + 96);
  swift_unknownObjectRetain();
  v17(v13, v12);
  swift_unknownObjectRelease();
  v18 = type metadata accessor for SocialProfile();
  v19 = (*(*(v18 - 8) + 48))(v5, 1, v18);
  sub_1000095E8(v5, &qword_101186E00, &qword_100EC31E0);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    (*(v8 + 8))(v10, v30);
  }

  else
  {
    v20 = v19 != 1;
    v21 = 0.45;
    if (v29)
    {
      v21 = 0.3;
    }

    v22 = v21 * v11;
    sub_10068F2DC(v20, v10);
    v24 = v23;
    sub_10068F2DC(v20, v10);
    v26 = v25;
    (*(v8 + 8))(v10, v30);
    return v22 - (v24 - v26);
  }

  return v11;
}

uint64_t sub_100687154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v244 = a2;
  v239 = _s17ContextMenuButtonVMa(0);
  __chkstk_darwin();
  v250 = (&v194 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v242 = sub_10010FC20(&qword_10119D600, &unk_100EDC308);
  __chkstk_darwin();
  v243 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v241 = &v194 - v6;
  __chkstk_darwin();
  v251 = &v194 - v7;
  v8 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v206 = *(v8 - 8);
  v207 = v8;
  __chkstk_darwin();
  v204 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v203 = *(v205 - 8);
  __chkstk_darwin();
  v199 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v198 = *(v200 - 8);
  __chkstk_darwin();
  v196 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Duration.UnitsFormatStyle();
  v201 = *(v12 - 8);
  v202 = v12;
  __chkstk_darwin();
  v197 = &v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_10010FC20(&qword_101198FC8, &unk_100ED7AF0);
  __chkstk_darwin();
  v209 = &v194 - v14;
  sub_10010FC20(&qword_10119D608, &qword_100EDC318);
  __chkstk_darwin();
  v212 = &v194 - v15;
  v16 = sub_10010FC20(&qword_10119D610, &qword_100EDC320);
  v237 = *(v16 - 8);
  v238 = v16;
  __chkstk_darwin();
  v211 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v210 = &v194 - v18;
  sub_10010FC20(&qword_10119D618, &qword_100EDC328);
  __chkstk_darwin();
  v240 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v249 = &v194 - v20;
  v246 = type metadata accessor for DynamicTypeSize();
  v236 = *(v246 - 8);
  __chkstk_darwin();
  v235 = (&v194 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v222 = (&v194 - v22);
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v234 = &v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = (&v194 - v24);
  v233 = _s27DownloadStatusIndicatorViewVMa(0);
  __chkstk_darwin();
  v223 = &v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_10010FC20(&qword_101198C50, &unk_100EDC330);
  __chkstk_darwin();
  v232 = &v194 - v26;
  v27 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v227 = *(v27 - 8);
  v228 = v27;
  __chkstk_darwin();
  v226 = &v194 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v230 = *(v219 - 8);
  __chkstk_darwin();
  v218 = &v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v229 = &v194 - v30;
  sub_10010FC20(&qword_101198CC8, &qword_100ED7820);
  __chkstk_darwin();
  v248 = &v194 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v256 = &v194 - v32;
  v214 = sub_10010FC20(&qword_10119D620, &qword_100EDC340);
  __chkstk_darwin();
  v213 = &v194 - v33;
  v215 = sub_10010FC20(&qword_10119D628, &qword_100EDC348);
  __chkstk_darwin();
  v220 = &v194 - v34;
  v35 = sub_10010FC20(&qword_10119D630, &unk_100EDC350);
  v224 = *(v35 - 8);
  v225 = v35;
  __chkstk_darwin();
  v217 = &v194 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v216 = &v194 - v37;
  sub_10010FC20(&qword_1011A4740, &qword_100EC31F0);
  __chkstk_darwin();
  v39 = &v194 - v38;
  v40 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
  v41 = *(v40 - 8);
  __chkstk_darwin();
  v43 = (&v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_10119D638, &qword_100EDC360);
  __chkstk_darwin();
  v247 = &v194 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v254 = v2;
  v255 = &v194 - v45;
  v46 = *(a1 + 32);
  v47 = v46[14];
  v245 = a1;
  v48 = *(a1 + 16);
  swift_unknownObjectRetain();
  v252 = v48;
  v253 = v46;
  v47(v48, v46);
  swift_unknownObjectRelease();
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    sub_1000095E8(v39, &qword_1011A4740, &qword_100EC31F0);
    (*(v224 + 56))(v255, 1, 1, v225);
    v49 = v254;
    v50 = v229;
    v51 = v230;
    goto LABEL_13;
  }

  sub_10068DF34(v39, v43, type metadata accessor for Tracklist.ReactionsConfiguration);
  v52 = *v43;
  v53 = *(v40 + 20);
  v195 = v43;
  v54 = v43 + v53;
  v55 = _s6ButtonVMa(0);
  v56 = v213;
  sub_10068DF9C(v54, &v213[*(v55 + 20)], _s7ContextVMa);
  *v56 = v52;
  v57 = v56;
  *(v56 + *(v214 + 36)) = 257;
  v58 = v54 + *(_s7ContextVMa(0) + 20);
  v59 = *(v58 + 8);
  v49 = v254;
  v60 = v255;
  v50 = v229;
  v51 = v230;
  v61 = v224;
  v62 = v220;
  if (v59 == 255)
  {
    goto LABEL_9;
  }

  v63 = *v58;
  if (v59)
  {
    if (v63 >> 62)
    {
      v193 = _CocoaArrayWrapper.endIndex.getter();
      v62 = v220;
      v64 = 1.0;
      if (v193)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v64 = 1.0;
    if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      v64 = 0.0;
    }
  }

  else
  {
    v64 = 1.0;
    if (!*(v63 + 16))
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  sub_10003D17C(v57, v62, &qword_10119D620, &qword_100EDC340);
  *(v62 + *(v215 + 36)) = v64;

  v65 = static Edge.Set.trailing.getter();
  if (qword_10117FBF8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v217;
  sub_10003D17C(v62, v217, &qword_10119D628, &qword_100EDC348);
  v75 = v225;
  v76 = v74 + *(v225 + 36);
  *v76 = v65;
  *(v76 + 8) = v67;
  *(v76 + 16) = v69;
  *(v76 + 24) = v71;
  *(v76 + 32) = v73;
  *(v76 + 40) = 0;
  v77 = v74;
  v78 = v216;
  sub_10003D17C(v77, v216, &qword_10119D630, &unk_100EDC350);
  sub_10003D17C(v78, v60, &qword_10119D630, &unk_100EDC350);
  (*(v61 + 56))(v60, 0, 1, v75);
  sub_10068E244(v195, type metadata accessor for Tracklist.ReactionsConfiguration);
LABEL_13:
  v79 = *(**(v49 + 40) + 256);

  v81 = v226;
  v79(v80);

  v83 = v227;
  v82 = v228;
  if ((*(v227 + 88))(v81, v228) == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v83 + 96))(v81, v82);
    v84 = v81;
    v85 = v219;
    (*(v51 + 32))(v50, v84, v219);
    v86 = v218;
    (*(v51 + 104))(v218, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.userUploadRequired(_:), v85);
    v87 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
    v88 = *(v51 + 8);
    v88(v86, v85);
    if (v87)
    {
      swift_storeEnumTagMultiPayload();
      sub_1006160EC();
      sub_10068DDB4(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa, &unk_100ED7C18);
      _ConditionalContent<>.init(storage:)();
      v88(v50, v85);
      v89 = v234;
      v90 = v236;
      goto LABEL_19;
    }

    v88(v50, v85);
  }

  else
  {
    (*(v83 + 8))(v81, v82);
  }

  v90 = v236;

  v91 = v223;
  dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();

  v92 = type metadata accessor for MusicLibrary.DownloadStatus();
  (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
  v93 = *(v49 + 80);
  v94 = v221;
  sub_10056CAE4(v221);
  v95 = v222;
  sub_10056CABC(v222);
  v96 = sub_10068D124(v94, v95, v93);
  (*(v90 + 8))(v95, v246);
  sub_1000095E8(v94, &unk_101184290, &qword_100EC0E60);
  v97 = v233;
  *&v269 = 0x4000000000000000;
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  *&v269 = 0x3FF0000000000000;
  ScaledMetric.init(wrappedValue:)();
  *(v91 + *(v97 + 20)) = (v96 & 1) == 0;
  sub_10068DF9C(v91, v232, _s27DownloadStatusIndicatorViewVMa);
  swift_storeEnumTagMultiPayload();
  sub_1006160EC();
  sub_10068DDB4(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa, &unk_100ED7C18);
  _ConditionalContent<>.init(storage:)();
  sub_10068E244(v91, _s27DownloadStatusIndicatorViewVMa);
  v89 = v234;
LABEL_19:
  v98 = *(v49 + 80);
  sub_10056CAE4(v89);
  v99 = v235;
  sub_10056CABC(v235);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    (*(v90 + 8))(v99, v246);
    sub_1000095E8(v89, &unk_101184290, &qword_100EC0E60);
  }

  else
  {
    v100 = sub_10068D124(v89, v99, v98);
    (*(v90 + 8))(v99, v246);
    sub_1000095E8(v89, &unk_101184290, &qword_100EC0E60);
    if (v100)
    {
LABEL_25:
      (*(v237 + 56))(v249, 1, 1, v238);
      goto LABEL_35;
    }
  }

  v101 = v253;
  v102 = v253[9];
  swift_unknownObjectRetain();
  v103 = COERCE_DOUBLE(v102(v252, v101));
  v105 = v104;
  swift_unknownObjectRelease();
  if (v105)
  {
    goto LABEL_25;
  }

  if (qword_10117F720 != -1)
  {
    swift_once();
  }

  v106 = [qword_101218CE8 stringFromSeconds:v103];
  v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v108;

  *&v269 = v107;
  *(&v269 + 1) = v109;
  v246 = sub_100009838();
  v110 = Text.init<A>(_:)();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  LODWORD(v269) = static HierarchicalShapeStyle.secondary.getter();

  v117 = sub_1006796C0();

  v118 = Text.playableForegroundStyle<A>(_:isPlayable:)(&v269, v117 & 1, v110, v112, v114 & 1, v116, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle);
  v120 = v119;
  v122 = v121;
  sub_10011895C(v110, v112, v114 & 1);

  v123 = Text.monospacedDigit()();
  v125 = v124;
  LOBYTE(v116) = v126;
  v128 = v127;
  sub_10011895C(v118, v120, v122 & 1);

  sub_10010FC20(&qword_10119A070, "@R\n");
  ScaledMetric.wrappedValue.getter();
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v129 = v116 & 1;
  v280 = v129;
  v130 = static Edge.Set.trailing.getter();
  if (qword_10117FBF0 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v281 = 0;
  *&v258 = v123;
  *(&v258 + 1) = v125;
  LOBYTE(v259) = v129;
  *(&v259 + 1) = v128;
  v265 = v268[7];
  v266 = v268[8];
  v260 = v268[2];
  v261 = v268[3];
  v263 = v268[5];
  v264 = v268[6];
  v262 = v268[4];
  LOBYTE(v267) = v130;
  *(&v267 + 1) = v131;
  *&v268[0] = v132;
  *(&v268[0] + 1) = v133;
  *&v268[1] = v134;
  BYTE8(v268[1]) = 0;
  static Duration.seconds(_:)();
  sub_10010FC20(&unk_1011A38F0, &qword_100EDC3A0);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_100EBE260;
  static Duration.UnitsFormatStyle.Unit.hours.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  sub_10011064C(v135);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v136 = v196;
  static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
  v137 = v199;
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  v138 = v204;
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
  v139 = v197;
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v206 + 8))(v138, v207);
  (*(v203 + 8))(v137, v205);
  (*(v198 + 8))(v136, v200);
  sub_10068DDB4(&qword_10119D648, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
  v140 = v202;
  Duration.formatted<A>(_:)();
  (*(v201 + 8))(v139, v140);
  v257 = v269;
  v141 = Text.init<A>(_:)();
  v143 = v142;
  LOBYTE(v139) = v144;
  sub_10010FC20(&qword_101181120, &qword_100EBCC08);
  sub_100119518();
  v145 = v209;
  View.accessibility(label:)();
  sub_10011895C(v141, v143, v139 & 1);

  v277 = v266;
  v278 = v267;
  v279[0] = v268[0];
  *(v279 + 9) = *(v268 + 9);
  v273 = v262;
  v274 = v263;
  v275 = v264;
  v276 = v265;
  v269 = v258;
  v270 = v259;
  v271 = v260;
  v272 = v261;
  sub_1000095E8(&v269, &qword_101181120, &qword_100EBCC08);
  v146 = AccessibilityIdentifier.trackListCellDuration.unsafeMutableAddressor();
  v147 = *v146;
  v148 = v146[1];
  v149 = v146[2];
  v150 = v146[3];
  v151 = sub_10068F538();

  v152 = v212;
  View.accessibilityIdentifier(_:)(v147, v148, v149, v150, v208, v151);

  sub_1000095E8(v145, &qword_101198FC8, &unk_100ED7AF0);
  v153 = v253;
  v154 = v253[15];
  swift_unknownObjectRetain();
  LOBYTE(v148) = v154(v252, v153);
  swift_unknownObjectRelease();
  v155 = 0;
  if (v148)
  {
    if (qword_10117FBE0 != -1)
    {
      swift_once();
    }

    v155 = qword_101219388;
  }

  KeyPath = swift_getKeyPath();
  v157 = v211;
  sub_10003D17C(v152, v211, &qword_10119D608, &qword_100EDC318);
  v158 = v238;
  v159 = (v157 + *(v238 + 36));
  *v159 = KeyPath;
  v159[1] = v155;
  v160 = v157;
  v161 = v210;
  sub_10003D17C(v160, v210, &qword_10119D610, &qword_100EDC320);
  v162 = v161;
  v163 = v249;
  sub_10003D17C(v162, v249, &qword_10119D610, &qword_100EDC320);
  (*(v237 + 56))(v163, 0, 1, v158);
LABEL_35:
  v164 = v253;
  v165 = v253[13];
  swift_unknownObjectRetain();
  v166 = v252;
  v167 = v165(v252, v164);
  v169 = v168;
  swift_unknownObjectRelease();
  v170 = v250;
  *v250 = v167;
  v170[1] = v169;
  *&v269 = 0x4046000000000000;
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  *&v269 = 0x403C000000000000;
  ScaledMetric.init(wrappedValue:)();
  swift_unknownObjectRetain();
  v171 = v165(v166, v164);
  v173 = v172;
  swift_unknownObjectRelease();
  if (v171)
  {
    sub_100020438(v171, v173);
  }

  v174 = v171 == 0;
  v175 = swift_getKeyPath();
  v176 = swift_allocObject();
  *(v176 + 16) = v174;
  v177 = v241;
  sub_10068DF34(v250, v241, _s17ContextMenuButtonVMa);
  v178 = (v177 + *(v242 + 36));
  *v178 = v175;
  v178[1] = sub_100239940;
  v178[2] = v176;
  v179 = v251;
  sub_10003D17C(v177, v251, &qword_10119D600, &unk_100EDC308);
  v180 = v255;
  if (qword_10117FC08 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v253 = v270;
  v254 = v269;
  v250 = *(&v271 + 1);
  v252 = v271;
  LOBYTE(v258) = 1;
  LOBYTE(v257) = BYTE8(v269);
  v281 = BYTE8(v270);
  v181 = v247;
  sub_1000089F8(v180, v247, &qword_10119D638, &qword_100EDC360);
  v182 = v248;
  sub_1000089F8(v256, v248, &qword_101198CC8, &qword_100ED7820);
  v183 = v249;
  v184 = v240;
  sub_1000089F8(v249, v240, &qword_10119D618, &qword_100EDC328);
  v185 = v243;
  sub_1000089F8(v179, v243, &qword_10119D600, &unk_100EDC308);
  v186 = v258;
  LODWORD(v245) = v257;
  LODWORD(v246) = v281;
  v187 = v244;
  sub_1000089F8(v181, v244, &qword_10119D638, &qword_100EDC360);
  v188 = sub_10010FC20(&qword_10119D640, &qword_100EDC398);
  sub_1000089F8(v182, v187 + v188[12], &qword_101198CC8, &qword_100ED7820);
  sub_1000089F8(v184, v187 + v188[16], &qword_10119D618, &qword_100EDC328);
  sub_1000089F8(v185, v187 + v188[20], &qword_10119D600, &unk_100EDC308);
  v189 = v187 + v188[24];
  *v189 = 0;
  *(v189 + 8) = v186;
  *(v189 + 16) = v254;
  *(v189 + 24) = v245;
  *(v189 + 32) = v253;
  *(v189 + 40) = v246;
  v190 = v251;
  v191 = v250;
  *(v189 + 48) = v252;
  *(v189 + 56) = v191;
  sub_1000095E8(v190, &qword_10119D600, &unk_100EDC308);
  sub_1000095E8(v183, &qword_10119D618, &qword_100EDC328);
  sub_1000095E8(v256, &qword_101198CC8, &qword_100ED7820);
  sub_1000095E8(v255, &qword_10119D638, &qword_100EDC360);
  sub_1000095E8(v185, &qword_10119D600, &unk_100EDC308);
  sub_1000095E8(v184, &qword_10119D618, &qword_100EDC328);
  sub_1000095E8(v248, &qword_101198CC8, &qword_100ED7820);
  return sub_1000095E8(v247, &qword_10119D638, &qword_100EDC360);
}

void sub_100688FB0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10119CDC0 = v1 == 6;
}

uint64_t sub_10068905C()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 20.0;
  if (byte_10119CDC0)
  {
    v0 = 28.0;
  }

  qword_1012192D8 = *&v0;
  return result;
}

uint64_t sub_1006890C4(uint64_t a1)
{
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    static Color.accentColor.getter();
  }

  result = AnyShapeStyle.init<A>(_:)();
  qword_1012192E0 = result;
  return result;
}

uint64_t sub_100689168(uint64_t a1)
{
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    sub_10068FB5C();
  }

  result = AnyShapeStyle.init<A>(_:)();
  qword_1012192E8 = result;
  return result;
}

uint64_t sub_100689200()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_10119CDC0)
  {
    v0 = 4.0;
  }

  qword_1012192F0 = *&v0;
  return result;
}

uint64_t sub_1006892A8()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_10119CDC0)
  {
    v0 = 12.0;
  }

  qword_101219308 = *&v0;
  return result;
}

uint64_t sub_100689310()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 2.0;
  if (byte_10119CDC0)
  {
    v0 = 0.0;
  }

  qword_101219310 = *&v0;
  return result;
}

uint64_t sub_100689378()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 39.0;
  if (byte_10119CDC0)
  {
    v0 = 34.0;
  }

  qword_101219318 = *&v0;
  return result;
}

void sub_10068942C(uint64_t a1, double *a2)
{
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 == 1)
  {
    static Font.Weight.regular.getter();
  }

  else
  {
    static Font.Weight.semibold.getter();
  }

  *a2 = v3;
}

uint64_t sub_10068949C()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_10119CDC0)
  {
    v0 = 10.0;
  }

  qword_101219330 = *&v0;
  return result;
}

__n128 sub_100689510(uint64_t a1)
{
  v1 = Corner.small.unsafeMutableAddressor();
  v2 = v1[1].n128_i8[0];
  result = *v1;
  xmmword_101219340 = *v1;
  byte_101219350 = v2;
  return result;
}

uint64_t sub_100689540()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 9.0;
  if (byte_10119CDC0)
  {
    v0 = 0.0;
  }

  qword_101219358 = *&v0;
  return result;
}

uint64_t sub_1006895A8()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (byte_10119CDC0)
  {
    v0 = 0.0;
  }

  qword_101219360 = *&v0;
  return result;
}

uint64_t sub_10068961C(uint64_t a1, double *a2)
{
  if (qword_10117FB28 != -1)
  {
    v3 = a2;
    result = swift_once();
    a2 = v3;
  }

  v2 = 10.0;
  if (byte_10119CDC0)
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100689690()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 17.0;
  if (byte_10119CDC0)
  {
    v0 = 20.0;
  }

  qword_101219370 = *&v0;
  return result;
}

uint64_t sub_100689760(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (qword_10117FB28 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (byte_10119CDC0 == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

uint64_t sub_1006897F0(uint64_t a1)
{
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    result = 0;
  }

  else
  {
    v2 = *HI.Color.prominentTextColor.unsafeMutableAddressor();
    result = Color.init(_:)();
  }

  qword_101219388 = result;
  return result;
}

uint64_t sub_100689860()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 44.0;
  if (byte_10119CDC0)
  {
    v0 = 57.0;
  }

  qword_101219390 = *&v0;
  return result;
}

uint64_t sub_1006898D4()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 16.0;
  if (byte_10119CDC0)
  {
    v0 = 9.0;
  }

  qword_101219398 = *&v0;
  return result;
}

uint64_t sub_100689960()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 44.0;
  if (!byte_10119CDC0)
  {
    v0 = 28.0;
  }

  qword_1012193A8 = *&v0;
  return result;
}

uint64_t sub_1006899CC()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_10119CDC0)
  {
    v0 = 8.0;
  }

  qword_1012193B0 = *&v0;
  return result;
}

uint64_t sub_100689A58()
{
  if (qword_10117FB28 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_10119CDC0)
  {
    v0 = 0.0;
  }

  qword_1012193C0 = *&v0;
  return result;
}

uint64_t sub_100689AC0()
{
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10010FC20(&qword_10119CFC0, &qword_100EDBB78) - 8;
  __chkstk_darwin();
  v7 = &v35 - v6;
  v8 = sub_10010FC20(&qword_10119CFC8, &qword_100EDBB80);
  __chkstk_darwin();
  v10 = &v35 - v9;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v11 = sub_10010FC20(&qword_10119CFD0, &qword_100EDBB88);
  sub_100689DF4(v0, &v7[*(v11 + 44)]);
  v12 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v13 = &v7[*(v5 + 44)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  v18 = static Edge.Set.vertical.getter();
  type metadata accessor for Tracklist.EmptyCell(0);
  sub_10056CABC(v4);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 != 1)
  {
    DynamicTypeSize.isAccessibilitySize.getter();
  }

  (*(v2 + 8))(v4, v1);
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_10003D17C(v7, v10, &qword_10119CFC0, &qword_100EDBB78);
  v27 = &v10[*(v8 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = AccessibilityIdentifier.trackListEmptyCell.unsafeMutableAddressor();
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  v33 = sub_10068D5A0();

  View.accessibilityIdentifier(_:)(v29, v30, v31, v32, v8, v33);

  return sub_1000095E8(v10, &qword_10119CFC8, &qword_100EDBB80);
}

uint64_t sub_100689DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v322 = a1;
  v302 = a2;
  sub_10010FC20(&qword_10119CFF8, &qword_100EDBB98);
  __chkstk_darwin();
  v303 = &v248 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v301 = &v248 - v3;
  v300 = sub_10010FC20(&qword_10119D000, &qword_100EDBBA0);
  __chkstk_darwin();
  v269 = &v248 - v4;
  sub_10010FC20(&qword_10119D008, &qword_100EDBBA8);
  __chkstk_darwin();
  v259 = &v248 - v5;
  v258 = sub_10010FC20(&qword_10119D010, &qword_100EDBBB0);
  __chkstk_darwin();
  v267 = &v248 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v260 = &v248 - v7;
  __chkstk_darwin();
  v268 = &v248 - v8;
  sub_10010FC20(&qword_10119D018, &qword_100EDBBB8);
  __chkstk_darwin();
  v290 = &v248 - v9;
  v255 = sub_10010FC20(&qword_10119D020, &qword_100EDBBC0);
  __chkstk_darwin();
  v261 = &v248 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v254 = &v248 - v11;
  __chkstk_darwin();
  v266 = &v248 - v12;
  v296 = sub_10010FC20(&qword_10119D028, &qword_100EDBBC8);
  __chkstk_darwin();
  v298 = &v248 - v13;
  v293 = sub_10010FC20(&qword_10119D030, &qword_100EDBBD0);
  __chkstk_darwin();
  v265 = &v248 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v262 = &v248 - v15;
  v291 = sub_10010FC20(&qword_10119D038, &qword_100EDBBD8);
  __chkstk_darwin();
  v263 = &v248 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v292 = &v248 - v17;
  v270 = sub_10010FC20(&qword_10119D040, &qword_100EDBBE0);
  v253 = *(v270 - 8);
  __chkstk_darwin();
  v251 = (&v248 - v18);
  sub_10010FC20(&qword_10119D048, &qword_100EDBBE8);
  __chkstk_darwin();
  v256 = &v248 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v305 = &v248 - v20;
  sub_10010FC20(&qword_10119D050, &qword_100EDBBF0);
  __chkstk_darwin();
  v304 = (&v248 - v21);
  v295 = sub_10010FC20(&qword_10119D058, &qword_100EDBBF8);
  __chkstk_darwin();
  v257 = &v248 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v264 = &v248 - v23;
  sub_10010FC20(&qword_10119D060, &qword_100EDBC00);
  __chkstk_darwin();
  v299 = &v248 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v312 = &v248 - v25;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v310 = (&v248 - v26);
  sub_10010FC20(&qword_10119D068, &qword_100EDBC08);
  __chkstk_darwin();
  v297 = &v248 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v311 = &v248 - v28;
  v287 = sub_10010FC20(&qword_10119D070, &qword_100EDBC10);
  __chkstk_darwin();
  v314 = &v248 - v29;
  v288 = sub_10010FC20(&qword_10119D078, &qword_100EDBC18);
  __chkstk_darwin();
  v289 = &v248 - v30;
  v309 = sub_10010FC20(&qword_10119D080, &qword_100EDBC20);
  v294 = *(v309 - 8);
  __chkstk_darwin();
  v250 = &v248 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v321 = &v248 - v32;
  v285 = sub_10010FC20(&qword_10119D088, &qword_100EDBC28);
  __chkstk_darwin();
  v319 = &v248 - v33;
  v320 = type metadata accessor for Tracklist.EmptyCell(0);
  v281 = *(v320 - 8);
  __chkstk_darwin();
  v283 = v34;
  v284 = &v248 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_10010FC20(&qword_10119D090, &qword_100EDBC30);
  __chkstk_darwin();
  v318 = &v248 - v35;
  v323 = type metadata accessor for DynamicTypeSize();
  v313 = *(v323 - 8);
  __chkstk_darwin();
  v252 = (&v248 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v274 = (&v248 - v37);
  __chkstk_darwin();
  v317 = (&v248 - v38);
  __chkstk_darwin();
  v272 = (&v248 - v39);
  v278 = sub_10010FC20(&qword_10119D098, &qword_100EDBC38);
  v271 = *(v278 - 1);
  __chkstk_darwin();
  v41 = &v248 - v40;
  v315 = sub_10010FC20(&qword_10119D0A0, &qword_100EDBC40);
  __chkstk_darwin();
  v43 = &v248 - v42;
  v273 = sub_10010FC20(&qword_10119D0A8, &qword_100EDBC48);
  __chkstk_darwin();
  v276 = &v248 - v44;
  v275 = sub_10010FC20(&qword_10119D0B0, &qword_100EDBC50);
  __chkstk_darwin();
  v277 = &v248 - v45;
  v307 = sub_10010FC20(&qword_10119D0B8, &qword_100EDBC58);
  v286 = *(v307 - 8);
  __chkstk_darwin();
  v249 = &v248 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v316 = &v248 - v47;
  if (qword_10117FBA8 != -1)
  {
    swift_once();
  }

  v48 = xmmword_101219340;
  v49 = byte_101219350;
  v50 = sub_10068D6E4();
  View.corner(_:)(v48, *(&v48 + 1), v49, &type metadata for Rectangle, v50);
  v51 = Border.artwork.unsafeMutableAddressor();
  v52 = *v51;
  v53 = *(v51 + 1);
  v54 = *(v51 + 16);

  *&v346 = &type metadata for Rectangle;
  *(&v346 + 1) = v50;
  v306 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v308 = *(&v48 + 1);
  v280 = v48;
  v279 = v49;
  v56 = v278;
  View.border(_:corner:)(v52, v54, v48, *(&v48 + 1), v49, v278, OpaqueTypeConformance2, v53);

  (*(v271 + 1))(v41, v56);
  v278 = objc_opt_self();
  v57 = [v278 tertiarySystemFillColor];
  v58 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v60 = &v43[*(v315 + 36)];
  *v60 = KeyPath;
  v60[1] = v58;
  v61 = *(v320 + 40);
  v62 = v322;
  v63 = v272;
  sub_10056CABC(v272);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  v64 = v323;
  v315 = v61;
  LODWORD(v272) = byte_10119CDC0;
  if (byte_10119CDC0)
  {
    v65 = *(v313 + 8);
    v65(v63, v323);
    v66 = v274;
    sub_10056CABC(v274);
    v65(v66, v64);
  }

  else
  {
    v67 = enum case for DynamicTypeSize.accessibility3(_:);
    v68 = v313;
    v271 = v43;
    v69 = *(v313 + 104);
    v70 = v317;
    v69(v317, enum case for DynamicTypeSize.accessibility3(_:), v323);
    v71 = static DynamicTypeSize.< infix(_:_:)();
    v72 = *(v68 + 8);
    v72(v70, v64);
    v72(v63, v64);
    v73 = 0x4052000000000000;
    if (v71)
    {
      v73 = 0x4048000000000000;
    }

    v248 = v73;
    v74 = v274;
    sub_10056CABC(v274);
    v69(v70, v67, v64);
    static DynamicTypeSize.< infix(_:_:)();
    v72(v70, v64);
    v43 = v271;
    v72(v74, v64);
    v62 = v322;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v75 = v276;
  sub_10003D17C(v43, v276, &qword_10119D0A0, &qword_100EDBC40);
  v76 = (v75 + *(v273 + 36));
  v77 = v328;
  *v76 = v327;
  v76[1] = v77;
  v76[2] = v329;
  v78 = static Edge.Set.leading.getter();
  if (qword_10117FB98 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = v75;
  v88 = v277;
  sub_10003D17C(v87, v277, &qword_10119D0A8, &qword_100EDBC48);
  v89 = v88 + *(v275 + 36);
  *v89 = v78;
  *(v89 + 8) = v80;
  *(v89 + 16) = v82;
  *(v89 + 24) = v84;
  *(v89 + 32) = v86;
  *(v89 + 40) = 0;
  v90 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = v88;
  v100 = v316;
  sub_10003D17C(v99, v316, &qword_10119D0B0, &qword_100EDBC50);
  v101 = v308;
  v102 = v100 + *(v307 + 36);
  *v102 = v90;
  *(v102 + 8) = v92;
  *(v102 + 16) = v94;
  *(v102 + 24) = v96;
  *(v102 + 32) = v98;
  *(v102 + 40) = 0;
  v103 = v318;
  v104 = v280;
  v105 = v279;
  View.corner(_:)(v280, v101, v279, &type metadata for Rectangle, v306);
  v106 = v278;
  v107 = [v278 tertiarySystemFillColor];
  v108 = Color.init(_:)();
  v109 = swift_getKeyPath();
  v110 = v285;
  v111 = (v103 + *(v285 + 36));
  *v111 = v109;
  v111[1] = v108;
  v112 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v113 = v62;
  v114 = v284;
  sub_10068DF9C(v113, v284, type metadata accessor for Tracklist.EmptyCell);
  v115 = (*(v281 + 80) + 16) & ~*(v281 + 80);
  v116 = swift_allocObject();
  sub_10068DF34(v114, v116 + v115, type metadata accessor for Tracklist.EmptyCell);
  v117 = (v103 + *(v282 + 36));
  *v117 = v112;
  v117[1] = sub_10068D738;
  v117[2] = v116;
  v118 = v319;
  View.corner(_:)(v104, v308, v105, &type metadata for Rectangle, v306);
  v119 = [v106 tertiarySystemFillColor];
  v120 = Color.init(_:)();
  v121 = swift_getKeyPath();
  v122 = (v118 + *(v110 + 36));
  *v122 = v121;
  v122[1] = v120;
  v123 = Image.init(systemName:)();
  v124 = [v106 tertiarySystemFillColor];
  v125 = Color.init(_:)();
  v126 = swift_getKeyPath();
  v127 = static Font.callout.getter();
  v128 = swift_getKeyPath();
  *&v346 = v123;
  *(&v346 + 1) = v126;
  *&v347 = v125;
  *(&v347 + 1) = v128;
  *&v348 = v127;
  static Font.Weight.semibold.getter();
  sub_10010FC20(&qword_101196750, &qword_100EDBCC0);
  sub_1005963C0();
  v129 = v314;
  View.fontWeight(_:)();

  v130 = &v129[*(v287 + 36)];
  v131 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
  v132 = enum case for Image.Scale.medium(_:);
  v133 = type metadata accessor for Image.Scale();
  (*(*(v133 - 8) + 104))(v130 + v131, v132, v133);
  *v130 = swift_getKeyPath();
  if (qword_10117FC00 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  v134 = v321;
  v135 = v310;
  v136 = v317;
  v137 = v320;
  v138 = v289;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v314, v138, &qword_10119D070, &qword_100EDBC10);
  v139 = (v138 + *(v288 + 36));
  v140 = v335;
  v139[4] = v334;
  v139[5] = v140;
  v139[6] = v336;
  v141 = v331;
  *v139 = v330;
  v139[1] = v141;
  v142 = v333;
  v139[2] = v332;
  v139[3] = v142;
  v143 = static Edge.Set.trailing.getter();
  v144 = v322;
  if (qword_10117FC08 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v152 = v151;
  sub_10003D17C(v138, v134, &qword_10119D078, &qword_100EDBC18);
  v153 = v134 + *(v309 + 36);
  *v153 = v143;
  *(v153 + 8) = v146;
  *(v153 + 16) = v148;
  *(v153 + 24) = v150;
  *(v153 + 32) = v152;
  *(v153 + 40) = 0;
  v308 = *(v137 + 44);
  sub_10056CAE4(v135);
  sub_10056CABC(v136);
  v154 = sub_10068D7BC(v135, v136);
  v155 = v313 + 8;
  v314 = *(v313 + 8);
  (v314)(v136, v323);
  sub_1000095E8(v135, &unk_101184290, &qword_100EC0E60);
  if (v154)
  {
    v156 = 1;
    v157 = v311;
  }

  else
  {
    v157 = v311;
    sub_1000089F8(v316, v311, &qword_10119D0B8, &qword_100EDBC58);
    v156 = 0;
  }

  (*(v286 + 56))(v157, v156, 1, v307);
  v158 = *(v144 + 40);
  sub_10056CAE4(v135);
  sub_10056CABC(v136);
  v159 = sub_10068D124(v135, v136, v158);
  v160 = v323;
  v161 = v314;
  (v314)(v136, v323);
  sub_1000095E8(v135, &unk_101184290, &qword_100EC0E60);
  v306 = v155;
  if (v159)
  {
    v162 = static HorizontalAlignment.leading.getter();
    v163 = v304;
    *v304 = v162;
    v163[1] = 0;
    *(v163 + 16) = 0;
    sub_10056CAE4(v135);
    sub_10056CABC(v136);
    v164 = sub_10068D7BC(v135, v136);
    (v161)(v136, v160);
    sub_1000095E8(v135, &unk_101184290, &qword_100EC0E60);
    v165 = 1;
    v166 = v270;
    if (v164)
    {
      v167 = static VerticalAlignment.center.getter();
      v168 = v251;
      *v251 = v167;
      *(v168 + 8) = 0;
      *(v168 + 16) = 0;
      v169 = v168 + *(sub_10010FC20(&qword_10119D100, &qword_100EDBD18) + 44);
      v170 = v249;
      sub_1000089F8(v316, v249, &qword_10119D0B8, &qword_100EDBC58);
      v171 = v250;
      sub_1000089F8(v321, v250, &qword_10119D080, &qword_100EDBC20);
      sub_1000089F8(v170, v169, &qword_10119D0B8, &qword_100EDBC58);
      v172 = sub_10010FC20(&qword_10119D108, &unk_100EDBD20);
      v173 = v169 + *(v172 + 48);
      *v173 = 0;
      *(v173 + 8) = 1;
      sub_1000089F8(v171, v169 + *(v172 + 64), &qword_10119D080, &qword_100EDBC20);
      sub_1000095E8(v171, &qword_10119D080, &qword_100EDBC20);
      sub_1000095E8(v170, &qword_10119D0B8, &qword_100EDBC58);
      v174 = static Edge.Set.bottom.getter();
      if (qword_10117FBA0 != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v166 = v270;
      v175 = v168 + *(v270 + 36);
      *v175 = v174;
      *(v175 + 8) = v176;
      *(v175 + 16) = v177;
      *(v175 + 24) = v178;
      *(v175 + 32) = v179;
      *(v175 + 40) = 0;
      sub_10003D17C(v168, v305, &qword_10119D040, &qword_100EDBBE0);
      v165 = 0;
    }

    (*(v253 + 56))(v305, v165, 1, v166);
    v180 = sub_10010FC20(&qword_10119D0F0, &qword_100EDBD08);
    v313 = v304 + *(v180 + 44);
    sub_10010FC20(&qword_10119A070, "@R\n");
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v181 = v292;
    sub_1000089F8(v318, v292, &qword_10119D090, &qword_100EDBC30);
    v182 = (v181 + *(v291 + 36));
    v183 = v338;
    *v182 = v337;
    v182[1] = v183;
    v182[2] = v339;
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v307 = v340;
    v290 = v342;
    v291 = v341;
    v289 = *(&v342 + 1);
    v326 = 1;
    v325 = BYTE8(v340);
    v324 = BYTE8(v341);
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v184 = v262;
    sub_1000089F8(v319, v262, &qword_10119D088, &qword_100EDBC28);
    v185 = (v184 + *(v293 + 36));
    v186 = v344;
    *v185 = v343;
    v185[1] = v186;
    v185[2] = v345;
    v187 = v256;
    sub_1000089F8(v305, v256, &qword_10119D048, &qword_100EDBBE8);
    v188 = v181;
    v189 = v263;
    sub_1000089F8(v188, v263, &qword_10119D038, &qword_100EDBBD8);
    v190 = v326;
    v191 = v325;
    v192 = v324;
    v193 = v265;
    sub_1000089F8(v184, v265, &qword_10119D030, &qword_100EDBBD0);
    v194 = v313;
    sub_1000089F8(v187, v313, &qword_10119D048, &qword_100EDBBE8);
    v195 = sub_10010FC20(&qword_10119D0F8, &qword_100EDBD10);
    sub_1000089F8(v189, v194 + v195[12], &qword_10119D038, &qword_100EDBBD8);
    v196 = v194 + v195[16];
    *v196 = 0;
    *(v196 + 8) = v190;
    *(v196 + 16) = v307;
    *(v196 + 24) = v191;
    v197 = v290;
    *(v196 + 32) = v291;
    *(v196 + 40) = v192;
    v198 = v289;
    *(v196 + 48) = v197;
    *(v196 + 56) = v198;
    sub_1000089F8(v193, v194 + v195[20], &qword_10119D030, &qword_100EDBBD0);
    sub_1000095E8(v184, &qword_10119D030, &qword_100EDBBD0);
    sub_1000095E8(v292, &qword_10119D038, &qword_100EDBBD8);
    sub_1000095E8(v305, &qword_10119D048, &qword_100EDBBE8);
    sub_1000095E8(v193, &qword_10119D030, &qword_100EDBBD0);
    sub_1000095E8(v189, &qword_10119D038, &qword_100EDBBD8);
    sub_1000095E8(v187, &qword_10119D048, &qword_100EDBBE8);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v199 = v257;
    sub_10003D17C(v304, v257, &qword_10119D050, &qword_100EDBBF0);
    v200 = (v199 + *(v295 + 36));
    v201 = v351;
    v200[4] = v350;
    v200[5] = v201;
    v200[6] = v352;
    v202 = v347;
    *v200 = v346;
    v200[1] = v202;
    v203 = v349;
    v200[2] = v348;
    v200[3] = v203;
    v204 = v264;
    sub_10003D17C(v199, v264, &qword_10119D058, &qword_100EDBBF8);
    sub_1000089F8(v204, v298, &qword_10119D058, &qword_100EDBBF8);
    swift_storeEnumTagMultiPayload();
    sub_10068DCFC();
    sub_100020674(&qword_10119D0E0, &qword_10119D000, &qword_100EDBBA0, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    v205 = v204;
    v206 = &qword_10119D058;
    v207 = &qword_100EDBBF8;
  }

  else
  {
    v208 = v144 + *(v320 + 32);
    v307 = sub_10010FC20(&qword_10119A070, "@R\n");
    v320 = v208;
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v209 = v290;
    sub_1000089F8(v318, v290, &qword_10119D090, &qword_100EDBC30);
    v210 = (v209 + *(v291 + 36));
    v211 = v338;
    *v210 = v337;
    v210[1] = v211;
    v210[2] = v339;
    v212 = v252;
    sub_10056CABC(v252);
    if (v272)
    {
      (v314)(v212, v323);
    }

    else
    {
      v213 = enum case for DynamicTypeSize.accessibility3(_:);
      v214 = *(v313 + 104);
      v215 = v317;
      v216 = v323;
      v214(v317, enum case for DynamicTypeSize.accessibility3(_:), v323);
      static DynamicTypeSize.< infix(_:_:)();
      v217 = v314;
      (v314)(v215, v216);
      v214(v215, v213, v216);
      static DynamicTypeSize.< infix(_:_:)();
      (v217)(v215, v216);
      (v217)(v212, v216);
    }

    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v218 = v254;
    sub_10003D17C(v290, v254, &qword_10119D018, &qword_100EDBBB8);
    v219 = (v218 + *(v255 + 36));
    v220 = v341;
    *v219 = v340;
    v219[1] = v220;
    v219[2] = v342;
    v221 = v266;
    sub_10003D17C(v218, v266, &qword_10119D020, &qword_100EDBBC0);
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v222 = v259;
    sub_1000089F8(v319, v259, &qword_10119D088, &qword_100EDBC28);
    v223 = (v222 + *(v293 + 36));
    v224 = v344;
    *v223 = v343;
    v223[1] = v224;
    v223[2] = v345;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v225 = v260;
    sub_10003D17C(v222, v260, &qword_10119D008, &qword_100EDBBA8);
    v226 = (v225 + *(v258 + 36));
    v227 = v351;
    v226[4] = v350;
    v226[5] = v227;
    v226[6] = v352;
    v228 = v347;
    *v226 = v346;
    v226[1] = v228;
    v229 = v349;
    v226[2] = v348;
    v226[3] = v229;
    v230 = v268;
    sub_10003D17C(v225, v268, &qword_10119D010, &qword_100EDBBB0);
    v231 = v261;
    sub_1000089F8(v221, v261, &qword_10119D020, &qword_100EDBBC0);
    v232 = v267;
    sub_1000089F8(v230, v267, &qword_10119D010, &qword_100EDBBB0);
    v233 = v269;
    sub_1000089F8(v231, v269, &qword_10119D020, &qword_100EDBBC0);
    v234 = sub_10010FC20(&qword_10119D0C8, &qword_100EDBCF8);
    sub_1000089F8(v232, v233 + *(v234 + 48), &qword_10119D010, &qword_100EDBBB0);
    sub_1000095E8(v232, &qword_10119D010, &qword_100EDBBB0);
    sub_1000095E8(v231, &qword_10119D020, &qword_100EDBBC0);
    sub_1000089F8(v233, v298, &qword_10119D000, &qword_100EDBBA0);
    swift_storeEnumTagMultiPayload();
    sub_10068DCFC();
    sub_100020674(&qword_10119D0E0, &qword_10119D000, &qword_100EDBBA0, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v233, &qword_10119D000, &qword_100EDBBA0);
    sub_1000095E8(v230, &qword_10119D010, &qword_100EDBBB0);
    v205 = v221;
    v206 = &qword_10119D020;
    v207 = &qword_100EDBBC0;
  }

  sub_1000095E8(v205, v206, v207);
  v235 = v310;
  sub_10056CAE4(v310);
  v236 = v317;
  sub_10056CABC(v317);
  v237 = sub_10068D7BC(v235, v236);
  (v314)(v236, v323);
  sub_1000095E8(v235, &unk_101184290, &qword_100EC0E60);
  if (v237)
  {
    v238 = 1;
    v239 = v301;
  }

  else
  {
    v239 = v301;
    sub_1000089F8(v321, v301, &qword_10119D080, &qword_100EDBC20);
    v238 = 0;
  }

  (*(v294 + 56))(v239, v238, 1, v309);
  v240 = v311;
  v241 = v297;
  sub_1000089F8(v311, v297, &qword_10119D068, &qword_100EDBC08);
  v242 = v312;
  v243 = v299;
  sub_1000089F8(v312, v299, &qword_10119D060, &qword_100EDBC00);
  v244 = v303;
  sub_1000089F8(v239, v303, &qword_10119CFF8, &qword_100EDBB98);
  v245 = v302;
  sub_1000089F8(v241, v302, &qword_10119D068, &qword_100EDBC08);
  v246 = sub_10010FC20(&qword_10119D0E8, &qword_100EDBD00);
  sub_1000089F8(v243, v245 + *(v246 + 48), &qword_10119D060, &qword_100EDBC00);
  sub_1000089F8(v244, v245 + *(v246 + 64), &qword_10119CFF8, &qword_100EDBB98);
  sub_1000095E8(v239, &qword_10119CFF8, &qword_100EDBB98);
  sub_1000095E8(v242, &qword_10119D060, &qword_100EDBC00);
  sub_1000095E8(v240, &qword_10119D068, &qword_100EDBC08);
  sub_1000095E8(v244, &qword_10119CFF8, &qword_100EDBB98);
  sub_1000095E8(v243, &qword_10119D060, &qword_100EDBC00);
  sub_1000095E8(v241, &qword_10119D068, &qword_100EDBC08);
  sub_1000095E8(v321, &qword_10119D080, &qword_100EDBC20);
  sub_1000095E8(v319, &qword_10119D088, &qword_100EDBC28);
  sub_1000095E8(v318, &qword_10119D090, &qword_100EDBC30);
  return sub_1000095E8(v316, &qword_10119D0B8, &qword_100EDBC58);
}

double sub_10068C390()
{
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = (&v15 - v5);
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v8 = (&v15 - v7);
  v9 = 0.0;
  if (*v0 == 1)
  {
    type metadata accessor for Tracklist.EmptyCell(0);
    sub_10056CAE4(v8);
    sub_10056CABC(v6);
    v10 = sub_10068D7BC(v8, v6);
    v11 = *(v2 + 8);
    v11(v6, v1);
    sub_1000095E8(v8, &unk_101184290, &qword_100EC0E60);
    if ((v10 & 1) == 0)
    {
      sub_10056CABC(v4);
      if (qword_10117FB28 != -1)
      {
        swift_once();
      }

      if (byte_10119CDC0)
      {
        v11(v4, v1);
        v12 = 48.0;
      }

      else
      {
        (*(v2 + 104))(v6, enum case for DynamicTypeSize.accessibility3(_:), v1);
        v13 = static DynamicTypeSize.< infix(_:_:)();
        v11(v6, v1);
        v11(v4, v1);
        v12 = 72.0;
        if (v13)
        {
          v12 = 48.0;
        }
      }

      return -12.0 - v12;
    }
  }

  return v9;
}

uint64_t sub_10068C630@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v34 = a1;
  v35 = a5;
  v7 = a2 & 0x100;
  v32[2] = sub_10010FC20(&qword_10119D880, &qword_100EDC548);
  __chkstk_darwin();
  v9 = v32 - v8;
  v10 = sub_10010FC20(&qword_10119D888, &qword_100EDC550);
  __chkstk_darwin();
  v12 = v32 - v11;
  sub_10010FC20(&qword_10119D890, &qword_100EDC558);
  __chkstk_darwin();
  v14 = v32 - v13;
  v15 = sub_10010FC20(&qword_10119D898, &qword_100EDC560);
  __chkstk_darwin();
  v17 = v32 - v16;
  if ((a2 ^ (v7 >> 8)))
  {
    v32[1] = v10;
    if (v33)
    {
      v18 = sub_10010FC20(&qword_10119D8A0, &qword_100EDC568);
      (*(*(v18 - 8) + 16))(v9, v34, v18);
      swift_storeEnumTagMultiPayload();
      sub_100690790();
      sub_100020674(&qword_10119D8B0, &qword_10119D8A0, &qword_100EDC568, &protocol conformance descriptor for _ViewModifier_Content<A>);
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v26 = a3;
      v27 = static HorizontalAlignment.listRowSeparatorLeading.getter();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v29 = sub_10010FC20(&qword_10119D8A0, &qword_100EDC568);
      (*(*(v29 - 8) + 16))(v17, v34, v29);
      v30 = &v17[*(v15 + 36)];
      *v30 = v27;
      v30[1] = sub_100690900;
      v30[2] = v28;
      sub_1000089F8(v17, v9, &qword_10119D898, &qword_100EDC560);
      swift_storeEnumTagMultiPayload();
      sub_100690790();
      sub_100020674(&qword_10119D8B0, &qword_10119D8A0, &qword_100EDC568, &protocol conformance descriptor for _ViewModifier_Content<A>);
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v17, &qword_10119D898, &qword_100EDC560);
    }

    v23 = &qword_100EDC550;
    sub_1000089F8(v12, v14, &qword_10119D888, &qword_100EDC550);
    swift_storeEnumTagMultiPayload();
    sub_100690790();
    sub_100690848();
    _ConditionalContent<>.init(storage:)();
    v24 = v12;
    v25 = &qword_10119D888;
  }

  else
  {
    v19 = static HorizontalAlignment.listRowSeparatorLeading.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = a2 & 1;
    *(v20 + 17) = BYTE1(v7);
    *(v20 + 24) = a3;
    *(v20 + 32) = v33 & 1;
    v21 = sub_10010FC20(&qword_10119D8A0, &qword_100EDC568);
    (*(*(v21 - 8) + 16))(v17, v34, v21);
    v22 = &v17[*(v15 + 36)];
    *v22 = v19;
    v22[1] = sub_100690734;
    v22[2] = v20;
    v23 = &qword_100EDC560;
    sub_1000089F8(v17, v14, &qword_10119D898, &qword_100EDC560);
    swift_storeEnumTagMultiPayload();
    sub_100690790();
    sub_100690848();
    _ConditionalContent<>.init(storage:)();
    v24 = v17;
    v25 = &qword_10119D898;
  }

  return sub_1000095E8(v24, v25, v23);
}

uint64_t sub_10068CB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10068C630(a1, v3 | *v2, *(v2 + 1), v2[16], a2);
}

uint64_t sub_10068CB78@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorScheme();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v14 - v10;
  EnvironmentValues.colorScheme.getter();
  (*(v7 + 104))(v9, enum case for ColorScheme.light(_:), v6);
  static ColorScheme.== infix(_:_:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  v12(v11, v6);
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  result = Color.init(_:red:green:blue:opacity:)();
  *a1 = result;
  return result;
}

void sub_10068CDA4(void *a1)
{
  type metadata accessor for ObservedObject();
  if (v2 <= 0x3F)
  {
    v3 = a1[3];
    type metadata accessor for MusicLibrary.ItemState();
    swift_getWitnessTable();
    type metadata accessor for ObservedObject();
    if (v5 <= 0x3F)
    {
      type metadata accessor for MusicItemState(255, v3, a1[5], v4);
      swift_getWitnessTable();
      type metadata accessor for ObservedObject();
      if (v6 <= 0x3F)
      {
        sub_10068ECE0(319, &qword_101198890, type metadata accessor for WaveformPlayer.ListenerToken, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v8 <= 0x3F)
          {
            sub_100237820(319);
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10068D008(uint64_t a1)
{
  sub_100402A50(319);
  if (v1 <= 0x3F)
  {
    sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100237820(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10068D124(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for UserInterfaceSizeClass();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101185768, &qword_100EDBB70);
  __chkstk_darwin();
  v12 = v23 - v11;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v23 - v15;
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    goto LABEL_15;
  }

  v23[1] = a2;
  (*(v7 + 104))(v16, enum case for UserInterfaceSizeClass.compact(_:), v6);
  (*(v7 + 56))(v16, 0, 1, v6);
  v17 = *(v10 + 48);
  sub_1000089F8(a1, v12, &unk_101184290, &qword_100EC0E60);
  sub_1000089F8(v16, &v12[v17], &unk_101184290, &qword_100EC0E60);
  v18 = *(v7 + 48);
  if (v18(v12, 1, v6) == 1)
  {
    sub_1000095E8(v16, &unk_101184290, &qword_100EC0E60);
    if (v18(&v12[v17], 1, v6) == 1)
    {
      sub_1000095E8(v12, &unk_101184290, &qword_100EC0E60);
LABEL_15:
      v19 = 1;
      return v19 & 1;
    }

    goto LABEL_9;
  }

  sub_1000089F8(v12, v14, &unk_101184290, &qword_100EC0E60);
  if (v18(&v12[v17], 1, v6) == 1)
  {
    sub_1000095E8(v16, &unk_101184290, &qword_100EC0E60);
    (*(v7 + 8))(v14, v6);
LABEL_9:
    sub_1000095E8(v12, &qword_101185768, &qword_100EDBB70);
    goto LABEL_10;
  }

  (*(v7 + 32))(v9, &v12[v17], v6);
  sub_10068DDB4(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v7 + 8);
  v21(v9, v6);
  sub_1000095E8(v16, &unk_101184290, &qword_100EC0E60);
  v21(v14, v6);
  sub_1000095E8(v12, &unk_101184290, &qword_100EC0E60);
  if (v20)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (qword_10117FB30 != -1)
  {
    swift_once();
  }

  if (*&qword_1012192C8 > a3)
  {
    goto LABEL_15;
  }

  v19 = DynamicTypeSize.isAccessibilitySize.getter();
  return v19 & 1;
}

unint64_t sub_10068D5A0()
{
  result = qword_10119CFD8;
  if (!qword_10119CFD8)
  {
    sub_1001109D0(&qword_10119CFC8, &qword_100EDBB80);
    sub_10068D62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CFD8);
  }

  return result;
}

unint64_t sub_10068D62C()
{
  result = qword_10119CFE0;
  if (!qword_10119CFE0)
  {
    sub_1001109D0(&qword_10119CFC0, &qword_100EDBB78);
    sub_100020674(&qword_10119CFE8, &qword_10119CFF0, &qword_100EDBB90, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CFE0);
  }

  return result;
}

unint64_t sub_10068D6E4()
{
  result = qword_10119D0C0;
  if (!qword_10119D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D0C0);
  }

  return result;
}

double sub_10068D738()
{
  type metadata accessor for Tracklist.EmptyCell(0);
  static HorizontalAlignment.leading.getter();
  ViewDimensions.subscript.getter();
  return v0 + sub_10068C390();
}

uint64_t sub_10068D7BC(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v24 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101185768, &qword_100EDBB70);
  __chkstk_darwin();
  v7 = &v23 - v6;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if ((byte_10119CDC0 & 1) == 0)
  {
    (*(v13 + 104))(v15, enum case for DynamicTypeSize.accessibility3(_:), v12);
    sub_10068DDB4(&qword_1011810B0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v16 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v13 + 8))(v15, v12);
    if ((v16 & 1) == 0)
    {
      v19 = v24;
      (*(v24 + 104))(v11, enum case for UserInterfaceSizeClass.compact(_:), v2);
      (*(v19 + 56))(v11, 0, 1, v2);
      v20 = *(v5 + 48);
      sub_1000089F8(v23, v7, &unk_101184290, &qword_100EC0E60);
      sub_1000089F8(v11, &v7[v20], &unk_101184290, &qword_100EC0E60);
      v21 = *(v19 + 48);
      if (v21(v7, 1, v2) == 1)
      {
        sub_1000095E8(v11, &unk_101184290, &qword_100EC0E60);
        if (v21(&v7[v20], 1, v2) == 1)
        {
          sub_1000095E8(v7, &unk_101184290, &qword_100EC0E60);
          v17 = 1;
          return v17 & 1;
        }
      }

      else
      {
        sub_1000089F8(v7, v9, &unk_101184290, &qword_100EC0E60);
        if (v21(&v7[v20], 1, v2) != 1)
        {
          (*(v19 + 32))(v4, &v7[v20], v2);
          sub_10068DDB4(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
          v17 = dispatch thunk of static Equatable.== infix(_:_:)();
          v22 = *(v19 + 8);
          v22(v4, v2);
          sub_1000095E8(v11, &unk_101184290, &qword_100EC0E60);
          v22(v9, v2);
          sub_1000095E8(v7, &unk_101184290, &qword_100EC0E60);
          return v17 & 1;
        }

        sub_1000095E8(v11, &unk_101184290, &qword_100EC0E60);
        (*(v19 + 8))(v9, v2);
      }

      sub_1000095E8(v7, &qword_101185768, &qword_100EDBB70);
      v17 = 0;
      return v17 & 1;
    }
  }

  v17 = 0;
  return v17 & 1;
}

unint64_t sub_10068DCFC()
{
  result = qword_10119D0D0;
  if (!qword_10119D0D0)
  {
    sub_1001109D0(&qword_10119D058, &qword_100EDBBF8);
    sub_100020674(&qword_10119D0D8, &qword_10119D050, &qword_100EDBBF0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D0D0);
  }

  return result;
}

uint64_t sub_10068DDB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10068DF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10068DF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10068E004()
{
  result = qword_10119D148;
  if (!qword_10119D148)
  {
    sub_1001109D0(&qword_10119D110, &qword_100EDBD30);
    sub_10068DDB4(&qword_10119D150, type metadata accessor for Tracklist.Artwork, &unk_100EDC108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D148);
  }

  return result;
}

unint64_t sub_10068E0B8()
{
  result = qword_10119D158;
  if (!qword_10119D158)
  {
    sub_1001109D0(&qword_10119D118, &qword_100EDBD38);
    sub_10068DDB4(&qword_10119D160, type metadata accessor for Tracklist.LeadingNumber, &unk_100EDC0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D158);
  }

  return result;
}

unint64_t sub_10068E16C()
{
  result = qword_10119D168;
  if (!qword_10119D168)
  {
    sub_1001109D0(&qword_10119D120, &qword_100EDBD40);
    sub_10068E1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D168);
  }

  return result;
}

unint64_t sub_10068E1F0()
{
  result = qword_10119D170;
  if (!qword_10119D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D170);
  }

  return result;
}

uint64_t sub_10068E244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10068E2BC()
{
  result = qword_10119D178;
  if (!qword_10119D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D178);
  }

  return result;
}

unint64_t sub_10068E310()
{
  result = qword_10119D180;
  if (!qword_10119D180)
  {
    sub_1001109D0(&qword_10119D128, &qword_100EDBD48);
    sub_10068E39C();
    sub_10068E2BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D180);
  }

  return result;
}

unint64_t sub_10068E39C()
{
  result = qword_10119D188;
  if (!qword_10119D188)
  {
    sub_1001109D0(&qword_10119D190, &qword_100EDBE08);
    sub_100020674(&qword_10119D198, &qword_10119D1A0, &qword_100EDBE10, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D188);
  }

  return result;
}

unint64_t sub_10068E44C()
{
  result = qword_10119D1A8;
  if (!qword_10119D1A8)
  {
    sub_1001109D0(&qword_10119D130, &qword_100EDBD50);
    sub_100617DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D1A8);
  }

  return result;
}

unint64_t sub_10068E504()
{
  result = qword_10119D1B0;
  if (!qword_10119D1B0)
  {
    sub_1001109D0(&qword_10119D138, &unk_100EDBD58);
    sub_100020674(&qword_10119D1B8, &qword_10119D1C0, &qword_100EDBE18, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D1B0);
  }

  return result;
}

void sub_10068E5B4(uint64_t a1)
{
  type metadata accessor for ObservedObject();
  if (v1 <= 0x3F)
  {
    sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10068E6C0(uint64_t a1)
{
  type metadata accessor for ObservedObject();
  if (v1 <= 0x3F)
  {
    sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10068E7AC(void *a1)
{
  type metadata accessor for ObservedObject();
  if (v2 <= 0x3F)
  {
    v3 = a1[3];
    type metadata accessor for MusicLibrary.ItemState();
    swift_getWitnessTable();
    type metadata accessor for ObservedObject();
    if (v5 <= 0x3F)
    {
      type metadata accessor for MusicItemState(255, v3, a1[5], v4);
      swift_getWitnessTable();
      type metadata accessor for ObservedObject();
      if (v6 <= 0x3F)
      {
        sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v7 <= 0x3F)
        {
          sub_100237820(319);
          if (v8 <= 0x3F)
          {
            sub_100402A50(319);
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10068E9B0(uint64_t a1)
{
  sub_1000308A0(319, &qword_10118FC40, &type metadata for MusicItemID);
  if (v1 <= 0x3F)
  {
    sub_10068ECE0(319, &qword_101198890, type metadata accessor for WaveformPlayer.ListenerToken, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100402A50(319);
      if (v3 <= 0x3F)
      {
        sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100237820(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10068EB2C(uint64_t a1)
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v1 <= 0x3F)
  {
    sub_10068ECE0(319, &qword_101195CF8, &type metadata accessor for SocialProfile, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000308A0(319, &qword_10118FC40, &type metadata for MusicItemID);
      if (v3 <= 0x3F)
      {
        sub_10068ECE0(319, &qword_101198890, type metadata accessor for WaveformPlayer.ListenerToken, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10068ECE0(319, &unk_1011954D0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10068ECE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10068ED6C(uint64_t a1)
{
  sub_1000308A0(319, &unk_10119D518, &type metadata for Tracklist.LeadingIconState);
  if (v1 <= 0x3F)
  {
    sub_100402A50(319);
    if (v2 <= 0x3F)
    {
      sub_10068ECE0(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10068EE74()
{
  result = qword_10119D560;
  if (!qword_10119D560)
  {
    sub_1001109D0(&qword_10119D568, qword_100EDBF58);
    sub_10068D5A0();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D560);
  }

  return result;
}

unint64_t sub_10068EF34()
{
  result = qword_10119D570;
  if (!qword_10119D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D570);
  }

  return result;
}

unint64_t sub_10068F0F0()
{
  result = qword_10119D5C8;
  if (!qword_10119D5C8)
  {
    sub_1001109D0(&qword_10119D5A8, &qword_100EDC288);
    sub_10068F174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D5C8);
  }

  return result;
}

unint64_t sub_10068F174()
{
  result = qword_10119D5D0;
  if (!qword_10119D5D0)
  {
    sub_1001109D0(&qword_10119D5D8, &qword_100EDC2A8);
    sub_10023B9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D5D0);
  }

  return result;
}

unint64_t sub_10068F200()
{
  result = qword_10119D5E0;
  if (!qword_10119D5E0)
  {
    sub_1001109D0(&qword_10119D5B8, &qword_100EDC298);
    sub_1001109D0(&qword_10119D5A8, &qword_100EDC288);
    sub_10068F0F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D5E0);
  }

  return result;
}

void sub_10068F2DC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 != 1)
  {
    (*(v3 + 104))(v5, enum case for DynamicTypeSize.accessibility3(_:), v2);
    static DynamicTypeSize.< infix(_:_:)();
    (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_10068F470()
{
  result = qword_10119D5F0;
  if (!qword_10119D5F0)
  {
    sub_1001109D0(&qword_10119D590, &qword_100EDC268);
    sub_1001109D0(&qword_1011860D0, &qword_100EC1980);
    sub_10023BB90();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D5F0);
  }

  return result;
}

unint64_t sub_10068F538()
{
  result = qword_101198FD0;
  if (!qword_101198FD0)
  {
    sub_1001109D0(&qword_101198FC8, &unk_100ED7AF0);
    sub_100119518();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198FD0);
  }

  return result;
}

unint64_t sub_10068F5F4()
{
  result = qword_10119D680;
  if (!qword_10119D680)
  {
    sub_1001109D0(&qword_10119D678, &qword_100EDC3D0);
    sub_10068F680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D680);
  }

  return result;
}

unint64_t sub_10068F680()
{
  result = qword_10119D688;
  if (!qword_10119D688)
  {
    sub_1001109D0(&qword_10119D670, &qword_100EDC3C8);
    sub_10068F70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D688);
  }

  return result;
}

unint64_t sub_10068F70C()
{
  result = qword_10119D690;
  if (!qword_10119D690)
  {
    sub_1001109D0(&qword_10119D668, &qword_100EDC3C0);
    sub_10068F798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D690);
  }

  return result;
}

unint64_t sub_10068F798()
{
  result = qword_10119D698;
  if (!qword_10119D698)
  {
    sub_1001109D0(&qword_10119D660, &qword_100EDC3B8);
    sub_10068F824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D698);
  }

  return result;
}

unint64_t sub_10068F824()
{
  result = qword_10119D6A0;
  if (!qword_10119D6A0)
  {
    sub_1001109D0(&qword_10119D658, &qword_100EDC3B0);
    sub_10068F8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6A0);
  }

  return result;
}

unint64_t sub_10068F8A8()
{
  result = qword_10119D6A8;
  if (!qword_10119D6A8)
  {
    sub_1001109D0(&qword_10119D6B0, &qword_100EDC3D8);
    sub_10068F92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6A8);
  }

  return result;
}

unint64_t sub_10068F92C()
{
  result = qword_10119D6B8;
  if (!qword_10119D6B8)
  {
    sub_1001109D0(&qword_10119D6C0, L"Z\v9");
    sub_10068F9E8();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6B8);
  }

  return result;
}

unint64_t sub_10068F9E8()
{
  result = qword_10119D6C8;
  if (!qword_10119D6C8)
  {
    sub_1001109D0(&qword_10119D6D0, &qword_100EDC3E8);
    sub_10068FAA4();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6C8);
  }

  return result;
}

unint64_t sub_10068FAA4()
{
  result = qword_10119D6D8;
  if (!qword_10119D6D8)
  {
    sub_1001109D0(&qword_10119D6E0, &unk_100EDC3F0);
    sub_100238768();
    sub_100020674(&qword_101185BE0, &qword_101185BE8, &qword_100EDC400, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6D8);
  }

  return result;
}

unint64_t sub_10068FB5C()
{
  result = qword_10119D6F0;
  if (!qword_10119D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D6F0);
  }

  return result;
}

unint64_t sub_10068FBB0()
{
  result = qword_10119D770;
  if (!qword_10119D770)
  {
    sub_1001109D0(&qword_10119D738, &qword_100EDC460);
    sub_10023C2D8();
    sub_100020674(&qword_101198EB0, &qword_101198E68, &qword_100ED79E0, &unk_100ECAA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D770);
  }

  return result;
}

unint64_t sub_10068FC68()
{
  result = qword_10119D778;
  if (!qword_10119D778)
  {
    sub_1001109D0(&qword_10119D758, &qword_100EDC480);
    sub_1001109D0(&qword_10119D748, &qword_100EDC470);
    sub_1001109D0(&qword_10119D740, &qword_100EDC468);
    sub_1001109D0(&qword_10119D738, &qword_100EDC460);
    sub_10068FBB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D778);
  }

  return result;
}

unint64_t sub_10068FDE0()
{
  result = qword_10119D780;
  if (!qword_10119D780)
  {
    sub_1001109D0(&qword_10119D760, &qword_100EDC488);
    sub_10068FC68();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D780);
  }

  return result;
}

unint64_t sub_10068FE9C()
{
  result = qword_10119D790;
  if (!qword_10119D790)
  {
    sub_1001109D0(&qword_10119D768, &qword_100EDC490);
    sub_10068FDE0();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D790);
  }

  return result;
}

unint64_t sub_10068FF58()
{
  result = qword_10119D7A8;
  if (!qword_10119D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D7A8);
  }

  return result;
}

unint64_t sub_10068FFAC()
{
  result = qword_10119D7B0;
  if (!qword_10119D7B0)
  {
    sub_1001109D0(&qword_10119D710, &qword_100EDC438);
    sub_1001109D0(&qword_10119D708, &qword_100EDC430);
    sub_1001109D0(&qword_10119D700, &qword_100EDC428);
    sub_10068FF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D7B0);
  }

  return result;
}

unint64_t sub_1006900E4()
{
  result = qword_10119D7F0;
  if (!qword_10119D7F0)
  {
    sub_1001109D0(&qword_10119D7E8, &qword_100EDC500);
    sub_1006901A0();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D7F0);
  }

  return result;
}

unint64_t sub_1006901A0()
{
  result = qword_10119D7F8;
  if (!qword_10119D7F8)
  {
    sub_1001109D0(&qword_10119D7E0, &qword_100EDC4F8);
    sub_10069025C();
    sub_10068DDB4(&qword_10119D840, type metadata accessor for DancingPlaybackBarsConditionalModifier, &unk_100ECAAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D7F8);
  }

  return result;
}

unint64_t sub_10069025C()
{
  result = qword_10119D800;
  if (!qword_10119D800)
  {
    sub_1001109D0(&qword_10119D7D8, &qword_100EDC4F0);
    sub_100690318();
    sub_10068DDB4(&qword_10119D838, type metadata accessor for PreviewOverlay.TrackNumberVariant, &unk_100EE1A5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D800);
  }

  return result;
}

unint64_t sub_100690318()
{
  result = qword_10119D808;
  if (!qword_10119D808)
  {
    sub_1001109D0(&qword_10119D810, &qword_100EDC508);
    sub_10069039C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D808);
  }

  return result;
}

unint64_t sub_10069039C()
{
  result = qword_10119D818;
  if (!qword_10119D818)
  {
    sub_1001109D0(&qword_10119D820, &qword_100EDC510);
    sub_100690428();
    sub_100617DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D818);
  }

  return result;
}

unint64_t sub_100690428()
{
  result = qword_10119D828;
  if (!qword_10119D828)
  {
    sub_1001109D0(&qword_10119D830, &unk_100EDC518);
    sub_1001195A4();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D828);
  }

  return result;
}

unint64_t sub_1006904E4()
{
  result = qword_10119D868;
  if (!qword_10119D868)
  {
    sub_1001109D0(&qword_10119D850, &qword_100EDC530);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D868);
  }

  return result;
}

unint64_t sub_1006905E0()
{
  result = qword_10119D870;
  if (!qword_10119D870)
  {
    sub_1001109D0(&qword_10119D860, &qword_100EDC540);
    sub_10069066C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D870);
  }

  return result;
}

unint64_t sub_10069066C()
{
  result = qword_10119D878;
  if (!qword_10119D878)
  {
    sub_1001109D0(&qword_10119D858, &qword_100EDC538);
    sub_1001109D0(&qword_10119D850, &qword_100EDC530);
    sub_1006904E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D878);
  }

  return result;
}

double sub_100690734(__n128 a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  static HorizontalAlignment.leading.getter();
  ViewDimensions.subscript.getter();
  v5 = 0.0;
  if ((v3 & 1) == 0)
  {
    v5 = v2;
  }

  return v5 + v4;
}

unint64_t sub_100690790()
{
  result = qword_10119D8A8;
  if (!qword_10119D8A8)
  {
    sub_1001109D0(&qword_10119D898, &qword_100EDC560);
    sub_100020674(&qword_10119D8B0, &qword_10119D8A0, &qword_100EDC568, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D8A8);
  }

  return result;
}

unint64_t sub_100690848()
{
  result = qword_10119D8B8;
  if (!qword_10119D8B8)
  {
    sub_1001109D0(&qword_10119D888, &qword_100EDC550);
    sub_100690790();
    sub_100020674(&qword_10119D8B0, &qword_10119D8A0, &qword_100EDC568, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D8B8);
  }

  return result;
}

double sub_100690900(__n128 a1)
{
  v2 = *(v1 + 16);
  static HorizontalAlignment.leading.getter();
  ViewDimensions.subscript.getter();
  return v2 + v3;
}

unint64_t sub_10069093C()
{
  result = qword_10119D8D8;
  if (!qword_10119D8D8)
  {
    sub_1001109D0(&qword_10119D8C8, &qword_100EDC578);
    sub_10068F200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D8D8);
  }

  return result;
}

unint64_t sub_1006909C8()
{
  result = qword_10119D948;
  if (!qword_10119D948)
  {
    sub_1001109D0(&qword_10119D928, &qword_100EDC5D0);
    sub_100020674(&qword_10119D950, &qword_10119D900, &qword_100EDC5A8, &protocol conformance descriptor for TupleView<A>);
    sub_100020674(&qword_10119D958, &qword_10119D8E8, &qword_100EDC590, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D948);
  }

  return result;
}

unint64_t sub_100690AA8()
{
  result = qword_10119D960;
  if (!qword_10119D960)
  {
    sub_1001109D0(&qword_10119D940, &qword_100EDC5E8);
    sub_100690B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D960);
  }

  return result;
}

unint64_t sub_100690B34()
{
  result = qword_10119D968;
  if (!qword_10119D968)
  {
    sub_1001109D0(&qword_10119D8D0, &qword_100EDC580);
    sub_10069093C();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D968);
  }

  return result;
}

unint64_t sub_100690BF0()
{
  result = qword_10119D980;
  if (!qword_10119D980)
  {
    sub_1001109D0(&qword_10119D978, &qword_100EDC5F8);
    sub_10023BB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D980);
  }

  return result;
}

unint64_t sub_100690C8C()
{
  result = qword_10119D990;
  if (!qword_10119D990)
  {
    sub_1001109D0(&qword_10119D588, &qword_100EDC258);
    sub_100020674(&qword_10119D998, &qword_10119D578, &qword_100EDC248, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D990);
  }

  return result;
}

unint64_t sub_100690D44()
{
  result = qword_10119D9B0;
  if (!qword_10119D9B0)
  {
    sub_1001109D0(&qword_10119D9B8, &qword_100EDC630);
    sub_10068F5F4();
    sub_100617DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9B0);
  }

  return result;
}

unint64_t sub_100690DD0()
{
  result = qword_10119D9C0;
  if (!qword_10119D9C0)
  {
    sub_1001109D0(&qword_10119D730, &qword_100EDC458);
    sub_100020674(&qword_10119D788, &qword_10119D728, &qword_100EDC450, &protocol conformance descriptor for ZStack<A>);
    sub_10068FE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9C0);
  }

  return result;
}

unint64_t sub_100690E88()
{
  result = qword_10119D9C8;
  if (!qword_10119D9C8)
  {
    sub_1001109D0(&qword_10119D7C8, &qword_100EDC4E0);
    sub_100690F40();
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9C8);
  }

  return result;
}

unint64_t sub_100690F40()
{
  result = qword_10119D9D0;
  if (!qword_10119D9D0)
  {
    sub_1001109D0(&qword_10119D7C0, &qword_100EDC4D8);
    sub_100690FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9D0);
  }

  return result;
}

unint64_t sub_100690FC4()
{
  result = qword_10119D9D8;
  if (!qword_10119D9D8)
  {
    sub_1001109D0(&qword_10119D9E0, &qword_100EDC638);
    sub_1006900E4();
    sub_10068F538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9D8);
  }

  return result;
}

unint64_t sub_100691050()
{
  result = qword_10119D9E8;
  if (!qword_10119D9E8)
  {
    sub_1001109D0(&qword_10119D9F0, &qword_100EDC640);
    sub_1006905E0();
    sub_10068DDB4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9E8);
  }

  return result;
}

unint64_t sub_10069110C()
{
  result = qword_10119D9F8;
  if (!qword_10119D9F8)
  {
    sub_1001109D0(&qword_10119DA00, &qword_100EDC648);
    sub_100690790();
    sub_100690848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119D9F8);
  }

  return result;
}

NSString sub_1006911BC()
{
  result = String._bridgeToObjectiveC()();
  qword_1012193C8 = result;
  return result;
}

NSString sub_1006911F4()
{
  result = String._bridgeToObjectiveC()();
  qword_1012193D0 = result;
  return result;
}

NSString sub_10069122C()
{
  result = String._bridgeToObjectiveC()();
  qword_1012193D8 = result;
  return result;
}

id sub_100691398(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s8ActivityCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t TabIdentifier.musicTabID.getter@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = &enum case for MusicTabID.listenNow(_:);
      }

      else
      {
        v3 = &enum case for MusicTabID.browse(_:);
      }
    }

    else
    {
      v3 = &enum case for MusicTabID.library(_:);
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v3 = &enum case for MusicTabID.videos(_:);
    }

    else
    {
      *a2 = 0x7473696C79616C70;
      a2[1] = 0xE900000000000073;
      v3 = &enum case for MusicTabID.other(_:);
    }
  }

  else if (a1 == 3)
  {
    v3 = &enum case for MusicTabID.radio(_:);
  }

  else
  {
    v3 = &enum case for MusicTabID.search(_:);
  }

  v4 = *v3;
  v5 = type metadata accessor for MusicTabID();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_100691570(unsigned __int8 a1)
{
  sub_100009838();
  v1 = StringProtocol.capitalized.getter();

  return v1;
}

uint64_t sub_100691690@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = _s9MusicCore13TabIdentifierO0A0E05musicC2IDACSg0A2UI0acF0O_tcfC_0(a2);
  *a1 = result;
  return result;
}

uint64_t _s9MusicCore13TabIdentifierO0A0E05musicC2IDACSg0A2UI0acF0O_tcfC_0(uint64_t a1)
{
  v2 = type metadata accessor for MusicTabID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == enum case for MusicTabID.listenNow(_:))
  {
    return 1;
  }

  if (v4 == enum case for MusicTabID.browse(_:))
  {
    return 2;
  }

  if (v4 == enum case for MusicTabID.videos(_:))
  {
    return 5;
  }

  if (v4 == enum case for MusicTabID.radio(_:))
  {
    return 3;
  }

  if (v4 == enum case for MusicTabID.library(_:))
  {
    return 0;
  }

  if (v4 == enum case for MusicTabID.search(_:))
  {
    return 4;
  }

  (*(v3 + 8))(a1, v2);
  return 7;
}

uint64_t sub_10069180C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101184EA0, &unk_100EBFA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100691878()
{
  result = qword_10119DA88;
  if (!qword_10119DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119DA88);
  }

  return result;
}

uint64_t sub_1006918DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharePlayProxCard(0);
  v5 = (a2 + v4[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4[7];
  State.init(wrappedValue:)();
  *v6 = v15;
  *(v6 + 8) = v16;
  v7 = a2 + v4[8];
  State.init(wrappedValue:)();
  *v7 = v15;
  *(v7 + 8) = v16;
  v8 = a2 + v4[9];
  State.init(wrappedValue:)();
  *v8 = v15;
  *(v8 + 8) = v16;
  v9 = a2 + v4[10];
  State.init(wrappedValue:)();
  *v9 = v15;
  *(v9 + 8) = v16;
  sub_10069B540(a1, a2, type metadata accessor for SharePlayProxCard.ViewModel);
  v10 = (a2 + v4[5]);
  type metadata accessor for SharePlayProxCard.CardState(0);
  sub_100693494();
  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;
  result = sub_10069B35C(a1, type metadata accessor for SharePlayProxCard.ViewModel);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

void sub_100691A64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100691BD4();
  }
}