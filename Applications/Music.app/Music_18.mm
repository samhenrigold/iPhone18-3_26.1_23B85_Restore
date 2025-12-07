uint64_t sub_1002227B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100222850, v6, v5);
}

uint64_t sub_100222850()
{
  v3 = (&async function pointer to dispatch thunk of MusicSuggestedSongsViewModel.refresh() + async function pointer to dispatch thunk of MusicSuggestedSongsViewModel.refresh());
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1002228F8;

  return v3();
}

uint64_t sub_1002228F8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100222A94;
  }

  else
  {
    v5 = sub_100222A34;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100222A34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100222A94()
{
  v14 = v0;

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to refresh suggested songs with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100222C70@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v50 = a1;
  v46 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v44 - v5;
  v6 = (type metadata accessor for SuggestedSongsModule.ContentView(0) - 8);
  v7 = *v6;
  v8 = *(*v6 + 64);
  __chkstk_darwin();
  sub_10010FC20(&qword_1011856B0, &qword_100EC1018);
  __chkstk_darwin();
  v10 = &v44 - v9;
  v47 = sub_10010FC20(&qword_1011856B8, &qword_100EC1020);
  __chkstk_darwin();
  v48 = &v44 - v11;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v44 = *(sub_10010FC20(&qword_1011856C0, &qword_100EC1028) + 44);
  v51 = dispatch thunk of MusicSuggestedSongsViewModel.suggestedSongs.getter();
  sub_1002372D4(v2, &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestedSongsModule.ContentView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_10023733C(&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SuggestedSongsModule.ContentView);
  sub_10010FC20(&qword_1011856C8, &qword_100EC1030);
  sub_10010FC20(&qword_1011856D0, &qword_100EC1038);
  sub_100020674(&qword_1011856D8, &qword_1011856C8, &qword_100EC1030, &protocol conformance descriptor for [A]);
  sub_100020674(&qword_1011856E0, &qword_1011856D0, &qword_100EC1038, &protocol conformance descriptor for TupleView<A>);
  sub_100236DF0(&qword_1011856E8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  ForEach<>.init(_:content:)();
  v14 = static Edge.Set.top.getter();
  v15 = v6[9];
  v16 = v45;
  sub_1002372D4(v2 + v15, v45, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v16, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload != 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v10;
  v27 = v48;
  sub_10003D17C(v26, v48, &qword_1011856B0, &qword_100EC1018);
  v28 = v27 + *(v47 + 36);
  *v28 = v14;
  *(v28 + 8) = v19;
  *(v28 + 16) = v21;
  *(v28 + 24) = v23;
  *(v28 + 32) = v25;
  *(v28 + 40) = 0;
  v29 = static Edge.Set.bottom.getter();
  v30 = v3 + v15;
  v31 = v49;
  sub_1002372D4(v30, v49, type metadata accessor for SuggestedSongsDataSource.Placement);
  v32 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v31, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v32 == 1)
  {
    if (qword_10117F390 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_10117F390 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v50;
  sub_10003D17C(v27, v50, &qword_1011856B8, &qword_100EC1020);
  result = sub_10010FC20(&qword_1011856F0, &qword_100EC1040);
  v43 = v41 + *(result + 36);
  *v43 = v29;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_100223244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a3;
  v130 = type metadata accessor for DynamicTypeSize();
  v129 = *(v130 - 8);
  __chkstk_darwin();
  v126 = (&v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011856F8, &qword_100EC1048);
  __chkstk_darwin();
  v131 = &v123 - v6;
  v153 = sub_10010FC20(&qword_101185700, &qword_100EC1050);
  v152 = *(v153 - 8);
  __chkstk_darwin();
  v128 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v123 - v8;
  v147 = sub_10010FC20(&qword_101185708, &unk_100EC1058);
  __chkstk_darwin();
  v148 = &v123 - v9;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v124 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v157 = &v123 - v11;
  __chkstk_darwin();
  v161 = &v123 - v12;
  sub_10010FC20(&qword_101185710, &qword_100EC1068);
  __chkstk_darwin();
  v151 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v123 - v14;
  v15 = type metadata accessor for Song();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v146 = v17;
  v155 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SuggestedSongsModule.ContentView(0);
  v141 = *(v18 - 8);
  __chkstk_darwin();
  v142 = v19;
  v145 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v158 = (&v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v22 = &v123 - v21;
  v23 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  __chkstk_darwin();
  v25 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10010FC20(&qword_101185718, &qword_100EC1078);
  __chkstk_darwin();
  v136 = &v123 - v26;
  v135 = sub_10010FC20(&qword_101185720, &qword_100EC1080);
  __chkstk_darwin();
  v140 = &v123 - v27;
  v138 = sub_10010FC20(&qword_101185728, &qword_100EC1088);
  __chkstk_darwin();
  v149 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v137 = &v123 - v29;
  v30 = __chkstk_darwin();
  v32 = &v123 - v31;
  v156 = v16;
  v33 = *(v16 + 16);
  v159 = a1;
  v163 = v15;
  v144 = v16 + 16;
  v143 = v33;
  (v33)(v25, a1, v15, v30);
  v34 = *(a2 + 8);
  v125 = v18;
  v35 = a2;
  sub_1002372D4(a2 + *(v18 + 28), &v25[v23[8]], type metadata accessor for SuggestedSongsModule.Specs);
  v36 = &v25[v23[5]];
  type metadata accessor for MusicSuggestedSongsViewModel();
  sub_100236DF0(&qword_1011852A0, &type metadata accessor for MusicSuggestedSongsViewModel, &protocol conformance descriptor for MusicSuggestedSongsViewModel);

  v139 = v34;
  *v36 = ObservedObject.init(wrappedValue:)();
  v36[1] = v37;
  v38 = &v25[v23[6]];
  type metadata accessor for SuggestedSongsDataSource(0);
  sub_100236DF0(&qword_1011A4A60, type metadata accessor for SuggestedSongsDataSource, &unk_100EC0BF4);
  *v38 = ObservedObject.init(wrappedValue:)();
  v38[1] = v39;
  v40 = &v25[v23[7]];
  v165 = 0;
  State.init(wrappedValue:)();
  v41 = *(&v166 + 1);
  *v40 = v166;
  *(v40 + 1) = v41;
  v42 = &v25[v23[9]];
  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  v160 = v32;
  v162 = v35;
  type metadata accessor for PreviewPlaybackController(0);
  sub_100236DF0(&qword_101185730, type metadata accessor for PreviewPlaybackController, &unk_100EBD1C0);

  *v42 = ObservedObject.init(wrappedValue:)();
  v42[1] = v43;
  v44 = v23[10];
  *&v25[v44] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v45 = v23[11];
  *&v25[v45] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  swift_storeEnumTagMultiPayload();
  v46 = &v25[v23[12]];
  v47 = MetricsEvent.Page.libraryPlaylistDetail.unsafeMutableAddressor();
  sub_1002372D4(v47, v22, type metadata accessor for MetricsEvent.Page);
  v48 = type metadata accessor for MetricsEvent.Page(0);
  v49 = *(*(v48 - 8) + 56);
  v49(v22, 0, 1, v48);
  sub_1000089F8(v22, v158, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v133 = sub_10053771C();
  v132 = v50;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v51 = qword_101218AD0;
  v52 = GroupActivitiesManager.hasJoined.getter();
  v53 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v22, &unk_1011838F0, &qword_100EC1070);
  v54 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v55 = *(v51 + v54);
  v56 = type metadata accessor for Actions.MetricsReportingContext(0);
  v57 = v56[5];
  v49(&v46[v57], 1, 1, v48);
  v58 = v56[7];
  v59 = &v46[v56[6]];
  v60 = v56[8];
  *v46 = xmmword_100EC0B20;
  sub_10006B010(v158, &v46[v57], &unk_1011838F0, &qword_100EC1070);
  v61 = v132;
  *v59 = v133;
  v59[1] = v61;
  *&v46[v58] = 0;
  *&v46[v60] = 0;
  v62 = &v46[v56[9]];
  *v62 = v52 & 1;
  *(v62 + 1) = v53;
  *(v62 + 2) = v55;
  v63 = *(v162 + 40);
  v64 = *(v162 + 48);
  *&v166 = *(v162 + 32);
  *(&v166 + 1) = v63;
  LOBYTE(v167) = v64;
  sub_10010FC20(&qword_101185738, &qword_100EC1090);
  Binding.wrappedValue.getter();
  if (v164 == 1)
  {
    v65 = v163;
    if (qword_10117F3E0 != -1)
    {
      swift_once();
    }

    v66 = &qword_101184F48;
  }

  else
  {
    v65 = v163;
    if (qword_10117F3C8 != -1)
    {
      swift_once();
    }

    v66 = &qword_101184F30;
  }

  v67 = *v66;

  v68 = v136;
  sub_1002372D4(v25, v136, type metadata accessor for SuggestedSongsModule.SongCell);
  *(v68 + *(v134 + 9)) = v67;
  sub_10023754C(v25, type metadata accessor for SuggestedSongsModule.SongCell);
  v134 = type metadata accessor for SuggestedSongsModule.ContentView;
  v69 = v162;
  v70 = v145;
  sub_1002372D4(v162, v145, type metadata accessor for SuggestedSongsModule.ContentView);
  v71 = v141[80];
  v72 = (v71 + 16) & ~v71;
  v141 = v142 + v72;
  v158 = (v71 | 7);
  v73 = swift_allocObject();
  v142 = type metadata accessor for SuggestedSongsModule.ContentView;
  sub_10023733C(v70, v73 + v72, type metadata accessor for SuggestedSongsModule.ContentView);
  v74 = v140;
  v75 = &v140[*(v135 + 36)];
  v76 = v159;
  v77 = v65;
  v78 = v143;
  v143(v75, v159, v77);
  v79 = &v75[*(type metadata accessor for HostedTaggedView(0) + 20)];
  *v79 = sub_10023800C;
  v79[1] = v73;
  sub_10003D17C(v68, v74, &qword_101185718, &qword_100EC1078);
  sub_1002372D4(v69, v70, v134);
  v80 = v155;
  v78(v155, v76, v163);
  v81 = v156;
  v82 = *(v156 + 80);
  v83 = &v141[v82] & ~v82;
  v84 = swift_allocObject();
  sub_10023733C(v70, v84 + v72, v142);
  v85 = v81[4];
  v86 = v163;
  v158 = v81 + 4;
  v146 = v85;
  v85((v84 + v83), v80, v163);
  v87 = v137;
  sub_10003D17C(v74, v137, &qword_101185720, &qword_100EC1080);
  v88 = (v87 + *(v138 + 36));
  *v88 = sub_100238058;
  v88[1] = v84;
  v88[2] = 0;
  v88[3] = 0;
  sub_10003D17C(v87, v160, &qword_101185728, &qword_100EC1088);
  v89 = v161;
  v78(v161, v159, v86);
  v90 = v81[7];
  v91 = 1;
  v90(v89, 0, 1, v86);
  v92 = dispatch thunk of MusicSuggestedSongsViewModel.suggestedSongs.getter();
  v93 = *(v92 + 16);
  if (v93)
  {
    v94 = v157;
    v78(v157, v92 + ((v82 + 32) & ~v82) + v81[9] * (v93 - 1), v86);
    v91 = 0;
    v95 = v148;
  }

  else
  {
    v95 = v148;
    v94 = v157;
  }

  v90(v94, v91, 1, v86);
  v96 = *(v147 + 48);
  v97 = v86;
  v98 = v161;
  sub_1000089F8(v161, v95, &unk_101183960, &unk_100EBCF90);
  sub_1000089F8(v94, v95 + v96, &unk_101183960, &unk_100EBCF90);
  v99 = v81[6];
  if (v99(v95, 1, v97) == 1)
  {
    sub_1000095E8(v94, &unk_101183960, &unk_100EBCF90);
    sub_1000095E8(v98, &unk_101183960, &unk_100EBCF90);
    v100 = v99(v95 + v96, 1, v97);
    v101 = v150;
    if (v100 == 1)
    {
      sub_1000095E8(v95, &unk_101183960, &unk_100EBCF90);
      v102 = 1;
      v103 = v153;
      goto LABEL_26;
    }
  }

  else
  {
    v104 = v124;
    sub_1000089F8(v95, v124, &unk_101183960, &unk_100EBCF90);
    if (v99(v95 + v96, 1, v97) != 1)
    {
      v119 = v155;
      v146(v155, v95 + v96, v97);
      sub_100236DF0(&qword_101185748, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v120 = v104;
      v121 = dispatch thunk of static Equatable.== infix(_:_:)();
      v122 = *(v156 + 8);
      v122(v119, v97);
      sub_1000095E8(v157, &unk_101183960, &unk_100EBCF90);
      sub_1000095E8(v161, &unk_101183960, &unk_100EBCF90);
      v122(v120, v97);
      sub_1000095E8(v95, &unk_101183960, &unk_100EBCF90);
      v103 = v153;
      v101 = v150;
      if (v121)
      {
        v102 = 1;
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    sub_1000095E8(v157, &unk_101183960, &unk_100EBCF90);
    sub_1000095E8(v161, &unk_101183960, &unk_100EBCF90);
    (*(v156 + 8))(v104, v97);
    v101 = v150;
  }

  sub_1000095E8(v95, &qword_101185708, &unk_100EC1058);
  v103 = v153;
LABEL_21:
  v105 = v131;
  sub_100224BE4(v162, v131);
  v106 = v126;
  sub_10056CABC(v126);
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  if (byte_101184EE8 != 1)
  {
    DynamicTypeSize.isAccessibilitySize.getter();
  }

  (*(v129 + 8))(v106, v130);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v107 = v105;
  v108 = v128;
  sub_10003D17C(v107, v128, &qword_1011856F8, &qword_100EC1048);
  v109 = (v108 + *(v103 + 36));
  v110 = v167;
  *v109 = v166;
  v109[1] = v110;
  v109[2] = v168;
  v111 = v108;
  v112 = v127;
  sub_10003D17C(v111, v127, &qword_101185700, &qword_100EC1050);
  sub_10003D17C(v112, v101, &qword_101185700, &qword_100EC1050);
  v102 = 0;
LABEL_26:
  (*(v152 + 56))(v101, v102, 1, v103);
  v113 = v160;
  v114 = v149;
  sub_1000089F8(v160, v149, &qword_101185728, &qword_100EC1088);
  v115 = v151;
  sub_1000089F8(v101, v151, &qword_101185710, &qword_100EC1068);
  v116 = v154;
  sub_1000089F8(v114, v154, &qword_101185728, &qword_100EC1088);
  v117 = sub_10010FC20(&qword_101185740, &qword_100EC1098);
  sub_1000089F8(v115, v116 + *(v117 + 48), &qword_101185710, &qword_100EC1068);
  sub_1000095E8(v101, &qword_101185710, &qword_100EC1068);
  sub_1000095E8(v113, &qword_101185728, &qword_100EC1088);
  sub_1000095E8(v115, &qword_101185710, &qword_100EC1068);
  return sub_1000095E8(v114, &qword_101185728, &qword_100EC1088);
}

double sub_100224678(uint64_t a1)
{
  v1 = *(*(a1 + 24) + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_updateReceivers);
  v2 = sub_100009F78(0, &qword_101197A30, NSObject_ptr);

  v3 = static MPMediaLibraryFilteringOptions.none.getter();
  if (v3 != WeakArray.endIndex.getter(v1, v2, v4, v5))
  {
    while (1)
    {
      v11 = WeakArray.subscript.getter(v3, v1, v2, v6);
      v3 = FixedLengthCollection.index(after:)(v3);
      if (!v11)
      {
        goto LABEL_8;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        break;
      }

      v8 = v11;
LABEL_7:

LABEL_8:
      if (v3 == WeakArray.endIndex.getter(v1, v2, v9, v10))
      {

        return result;
      }
    }

    v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v11 + v12, v14, &unk_1011926C0, &unk_100ECF870);
    if (v14[8])
    {
      sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v8 = sub_1006A6078();

LABEL_16:
        sub_10084E514(v8);

        goto LABEL_7;
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  return result;
}

void sub_100224864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_impressedSongs;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v6 = sub_10048C2CC(a2, v5);

  if ((v6 & 1) == 0)
  {
    v7 = Song.catalogID.getter();
    if (v8)
    {
      v9 = HIBYTE(v8) & 0xF;
      v10 = v7 & 0xFFFFFFFFFFFFLL;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v11 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v11)
      {

        return;
      }

      if ((v8 & 0x1000000000000000) == 0)
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v36[0] = v7;
          v36[1] = v8 & 0xFFFFFFFFFFFFFFLL;
          if (v7 == 43)
          {
            if (v9)
            {
              v10 = v9 - 1;
              if (v9 != 1)
              {
                v14 = 0;
                v24 = v36 + 1;
                while (1)
                {
                  v25 = *v24 - 48;
                  if (v25 > 9)
                  {
                    break;
                  }

                  v26 = 10 * v14;
                  if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                  {
                    break;
                  }

                  v14 = v26 + v25;
                  if (__OFADD__(v26, v25))
                  {
                    break;
                  }

                  ++v24;
                  if (!--v10)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_74:
            __break(1u);
            return;
          }

          if (v7 != 45)
          {
            if (v9)
            {
              v14 = 0;
              v29 = v36;
              while (1)
              {
                v30 = *v29 - 48;
                if (v30 > 9)
                {
                  break;
                }

                v31 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  break;
                }

                v14 = v31 + v30;
                if (__OFADD__(v31, v30))
                {
                  break;
                }

                ++v29;
                if (!--v9)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_63;
          }

          if (v9)
          {
            v10 = v9 - 1;
            if (v9 != 1)
            {
              v14 = 0;
              v18 = v36 + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  break;
                }

                v20 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  break;
                }

                v14 = v20 - v19;
                if (__OFSUB__(v20, v19))
                {
                  break;
                }

                ++v18;
                if (!--v10)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v7 & 0x1000000000000000) != 0)
          {
            v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v12 = _StringObject.sharedUTF8.getter();
            v10 = v35;
          }

          v13 = *v12;
          if (v13 == 43)
          {
            if (v10 >= 1)
            {
              if (--v10)
              {
                v14 = 0;
                if (v12)
                {
                  v21 = v12 + 1;
                  while (1)
                  {
                    v22 = *v21 - 48;
                    if (v22 > 9)
                    {
                      goto LABEL_63;
                    }

                    v23 = 10 * v14;
                    if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v14 = v23 + v22;
                    if (__OFADD__(v23, v22))
                    {
                      goto LABEL_63;
                    }

                    ++v21;
                    if (!--v10)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_62;
              }

              goto LABEL_63;
            }

            goto LABEL_73;
          }

          if (v13 != 45)
          {
            if (v10)
            {
              v14 = 0;
              if (v12)
              {
                while (1)
                {
                  v27 = *v12 - 48;
                  if (v27 > 9)
                  {
                    goto LABEL_63;
                  }

                  v28 = 10 * v14;
                  if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v14 = v28 + v27;
                  if (__OFADD__(v28, v27))
                  {
                    goto LABEL_63;
                  }

                  ++v12;
                  if (!--v10)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_62;
            }

LABEL_63:
            v14 = 0;
            LOBYTE(v10) = 1;
LABEL_64:
            LOBYTE(v37) = v10;
            v32 = v10;

            if (v32)
            {
              return;
            }

            goto LABEL_65;
          }

          if (v10 >= 1)
          {
            if (--v10)
            {
              v14 = 0;
              if (v12)
              {
                v15 = v12 + 1;
                while (1)
                {
                  v16 = *v15 - 48;
                  if (v16 > 9)
                  {
                    goto LABEL_63;
                  }

                  v17 = 10 * v14;
                  if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v14 = v17 - v16;
                  if (__OFSUB__(v17, v16))
                  {
                    goto LABEL_63;
                  }

                  ++v15;
                  if (!--v10)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_62:
              LOBYTE(v10) = 0;
              goto LABEL_64;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v14 = sub_1002D0E10();
      v34 = v33;

      if ((v34 & 1) == 0)
      {
LABEL_65:
        swift_beginAccess();
        sub_1003B3AB0(&v37, v14);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_100224BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v4 = (v51 - v3);
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = (v51 - v9);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Divider();
  v58 = *(v13 - 8);
  v59 = v13;
  __chkstk_darwin();
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10010FC20(&qword_101185750, &qword_100EC10A0);
  __chkstk_darwin();
  v17 = v51 - v16;
  v60 = sub_10010FC20(&qword_101185758, &qword_100EC10A8);
  __chkstk_darwin();
  v61 = v51 - v18;
  v57 = v15;
  Divider.init()();
  v53 = static Edge.Set.leading.getter();
  v19 = type metadata accessor for SuggestedSongsModule.ContentView(0);
  v54 = *(v19 + 28);
  sub_1002372D4(a1 + v54, v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload == 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  v55 = *(v19 + 32);
  sub_10056CABC(v10);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    v21 = v5;
    v52 = *(v6 + 8);
    v52(v10, v5);
  }

  else
  {
    (*(v6 + 104))(v8, enum case for DynamicTypeSize.accessibility3(_:), v5);
    v51[3] = static DynamicTypeSize.< infix(_:_:)();
    v22 = v17;
    v23 = v10;
    v24 = *(v6 + 8);
    v24(v8, v5);
    v25 = v23;
    v17 = v22;
    v21 = v5;
    v52 = v24;
    v24(v25, v5);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v58 + 32))(v17, v57, v59);
  v34 = &v17[*(v56 + 36)];
  *v34 = v53;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = static Edge.Set.trailing.getter();
  sub_10056CAE4(v4);
  sub_10022205C(v4);
  sub_1000095E8(v4, &unk_101184290, &qword_100EC0E60);
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v61;
  sub_10003D17C(v17, v61, &qword_101185750, &qword_100EC10A0);
  v45 = v44 + *(v60 + 36);
  *v45 = v35;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v63);

  v46 = v63;
  sub_10056CAE4(v4);
  sub_10056CABC(v8);
  v47 = sub_10068D124(v4, v8, v46);
  v52(v8, v21);
  sub_1000095E8(v4, &unk_101184290, &qword_100EC0E60);
  if (v47)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = 1.0;
  }

  v49 = v62;
  sub_10003D17C(v44, v62, &qword_101185758, &qword_100EC10A8);
  result = sub_10010FC20(&qword_101185760, &unk_100EC10B0);
  *(v49 + *(result + 36)) = v48;
  return result;
}

uint64_t sub_10022527C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v259 = a1;
  v252 = type metadata accessor for AccessibilityActionKind();
  v251 = *(v252 - 8);
  __chkstk_darwin();
  v250 = &v203 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for AccessibilityTraits();
  v247 = *(v248 - 8);
  __chkstk_darwin();
  v245 = &v203 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for AccessibilityChildBehavior();
  v240 = *(v242 - 8);
  __chkstk_darwin();
  v239 = &v203 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for DynamicTypeSize();
  v223 = *(v224 - 8);
  __chkstk_darwin();
  v220 = (&v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v219 = sub_10010FC20(&qword_101185AF8, &qword_100EC13F0);
  __chkstk_darwin();
  v222 = (&v203 - v7);
  v221 = sub_10010FC20(&qword_101185B00, &qword_100EC13F8);
  __chkstk_darwin();
  v226 = &v203 - v8;
  v225 = sub_10010FC20(&qword_101185B08, &qword_100EC1400);
  __chkstk_darwin();
  v228 = &v203 - v9;
  v231 = sub_10010FC20(&qword_101185B10, &qword_100EC1408);
  __chkstk_darwin();
  v229 = &v203 - v10;
  v234 = sub_10010FC20(&qword_101185B18, &qword_100EC1410);
  v232 = *(v234 - 8);
  __chkstk_darwin();
  v230 = &v203 - v11;
  v236 = sub_10010FC20(&qword_101185B20, &qword_100EC1418);
  v235 = *(v236 - 8);
  __chkstk_darwin();
  v233 = &v203 - v12;
  v237 = sub_10010FC20(&qword_101185B28, &qword_100EC1420);
  __chkstk_darwin();
  v238 = &v203 - v13;
  v241 = sub_10010FC20(&qword_101185B30, &qword_100EC1428);
  __chkstk_darwin();
  v265 = (&v203 - v14);
  v271 = sub_10010FC20(&qword_101185B38, &qword_100EC1430);
  __chkstk_darwin();
  v244 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v249 = &v203 - v16;
  __chkstk_darwin();
  v268 = &v203 - v17;
  v257 = sub_10010FC20(&qword_101185B40, &qword_100EC1438);
  v255 = *(v257 - 8);
  __chkstk_darwin();
  v253 = &v203 - v18;
  v258 = sub_10010FC20(&qword_101185B48, &qword_100EC1440);
  v256 = *(v258 - 8);
  __chkstk_darwin();
  v254 = &v203 - v19;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v269 = &v203 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v263 = (&v203 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v260 = (&v203 - v22);
  v270 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v246 = &v203 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v243 = &v203 - v24;
  __chkstk_darwin();
  v218 = &v203 - v25;
  __chkstk_darwin();
  v211 = &v203 - v26;
  v27 = type metadata accessor for PlainButtonStyle();
  v214 = *(v27 - 8);
  __chkstk_darwin();
  v29 = &v203 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v274 = v32;
  v33 = &v203 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10010FC20(&qword_101185B50, &qword_100EC1448);
  v35 = *(v34 - 8);
  __chkstk_darwin();
  v37 = &v203 - v36;
  v204 = sub_10010FC20(&qword_101185B58, &qword_100EC1450);
  v203 = *(v204 - 8);
  __chkstk_darwin();
  v39 = &v203 - v38;
  v209 = sub_10010FC20(&qword_101185B60, &qword_100EC1458);
  v207 = *(v209 - 8);
  __chkstk_darwin();
  v206 = &v203 - v40;
  v205 = sub_10010FC20(&qword_101185B68, &qword_100EC1460);
  __chkstk_darwin();
  v210 = &v203 - v41;
  v208 = sub_10010FC20(&qword_101185B70, &qword_100EC1468);
  __chkstk_darwin();
  v217 = &v203 - v42;
  v216 = sub_10010FC20(&qword_101185B78, &qword_100EC1470);
  __chkstk_darwin();
  v212 = &v203 - v43;
  v213 = sub_10010FC20(&qword_101185B80, &qword_100EC1478);
  __chkstk_darwin();
  v215 = &v203 - v44;
  sub_10010FC20(&qword_101185B88, &qword_100EC1480);
  __chkstk_darwin();
  v266 = &v203 - v45;
  v261 = v30;
  v227 = *(v2 + *(v30 + 24) + 8);
  sub_10012B7A8(v227 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource, &v276);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(&v276);
  if (Strong)
  {
    v264 = sub_10003169C();
  }

  else
  {
    v264 = 0;
  }

  sub_1002372D4(v2, v33, type metadata accessor for SuggestedSongsModule.SongCell);
  v47 = *(v31 + 80);
  v48 = (v47 + 16) & ~v47;
  v273 = v47;
  v49 = swift_allocObject();
  v262 = v48;
  v267 = v33;
  sub_10023733C(v33, v49 + v48, type metadata accessor for SuggestedSongsModule.SongCell);
  __chkstk_darwin();
  v272 = v2;
  sub_10010FC20(&qword_101185B90, &qword_100EC1488);
  sub_1002392E4();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v50 = sub_100020674(&qword_101185BC0, &qword_101185B50, &qword_100EC1448, &protocol conformance descriptor for Button<A>);
  v51 = sub_100236DF0(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v214 + 8))(v29, v27);
  (*(v35 + 8))(v37, v34);
  v276 = v34;
  v277 = v27;
  v278 = v50;
  v279 = v51;
  v52 = v272;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v206;
  v55 = v204;
  View.hover(corner:outset:isRelative:namespace:isEnabled:)(0, 0, 2, 0, 0, 1, 1, v204, 0.0, OpaqueTypeConformance2);
  (*(v203 + 8))(v39, v55);
  v56 = v261;
  v57 = *(v261 + 32);
  v58 = v211;
  sub_1002372D4(v52 + v57, v211, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v58, type metadata accessor for SuggestedSongsDataSource.Placement);
  v214 = v57;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_8;
  }

  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  if (byte_101184EE8 != 1)
  {
    v62 = static Color.accentColor.getter();
    v61 = &type metadata for Color;
    v279 = &type metadata for Color;
    v280 = &protocol witness table for Color;
    v276 = v62;
  }

  else
  {
LABEL_8:
    v60 = static HierarchicalShapeStyle.secondary.getter();
    v61 = &type metadata for HierarchicalShapeStyle;
    v279 = &type metadata for HierarchicalShapeStyle;
    v280 = &protocol witness table for HierarchicalShapeStyle;
    LODWORD(v276) = v60;
  }

  sub_10000954C(&v276, v61);
  v63 = __chkstk_darwin();
  (*(v65 + 16))(&v203 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0), v63);
  v66 = AnyShapeStyle.init<A>(_:)();
  sub_10000959C(&v276);
  v67 = v210;
  (*(v207 + 32))(v210, v54, v209);
  *&v67[*(v205 + 36)] = v66;
  v68 = static Edge.Set.leading.getter();
  v211 = *(v56 + 44);
  v69 = v260;
  sub_10056CAE4(v260);
  sub_10023951C(v69);
  sub_1000095E8(v69, &unk_101184290, &qword_100EC0E60);
  EdgeInsets.init(_all:)();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v67;
  v79 = v217;
  sub_10003D17C(v78, v217, &qword_101185B68, &qword_100EC1460);
  v80 = &v79[*(v208 + 36)];
  *v80 = v68;
  *(v80 + 1) = v71;
  *(v80 + 2) = v73;
  *(v80 + 3) = v75;
  *(v80 + 4) = v77;
  v80[40] = 0;
  v81 = (v52 + *(v56 + 28));
  v82 = *v81;
  v83 = *(v81 + 1);
  LOBYTE(v276) = v82;
  v277 = v83;
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  State.wrappedValue.getter();
  LOBYTE(v69) = v275;
  KeyPath = swift_getKeyPath();
  v85 = swift_allocObject();
  *(v85 + 16) = v69;
  v86 = v212;
  sub_10003D17C(v79, v212, &qword_101185B70, &qword_100EC1468);
  v87 = (v86 + *(v216 + 36));
  *v87 = KeyPath;
  v87[1] = sub_100239940;
  v87[2] = v85;
  v217 = "Preview and add to playlist";
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v276 = String.init(localized:table:bundle:locale:comment:)();
  v277 = v88;
  sub_100239948();
  v89 = sub_100009838();
  v90 = v215;
  v216 = v89;
  View.accessibilityLabel<A>(_:)();

  sub_1000095E8(v86, &qword_101185B78, &qword_100EC1470);
  v91 = AccessibilityIdentifier.playlistSuggestedSongsCellAddButton.unsafeMutableAddressor();
  v92 = *v91;
  v93 = v91[1];
  v94 = v91[2];
  v95 = v91[3];
  v96 = sub_100238500(&qword_101185C00, &qword_101185B80, &qword_100EC1478, sub_100239948);

  v97 = v266;
  v98 = v96;
  v99 = v272;
  View.accessibilityIdentifier(_:)(v92, v93, v94, v95, v213, v98);

  sub_1000095E8(v90, &qword_101185B80, &qword_100EC1478);
  v100 = static VerticalAlignment.center.getter();
  v101 = v222;
  *v222 = v100;
  *(v101 + 8) = 0;
  *(v101 + 16) = 0;
  v102 = sub_10010FC20(&qword_101185C08, &qword_100EC14D8);
  sub_100228E4C(v99, v97, v264, (v101 + *(v102 + 44)));
  if (qword_10117FBD0 != -1)
  {
    swift_once();
  }

  v103 = qword_101219378;
  v104 = swift_getKeyPath();
  v105 = (v101 + *(v219 + 36));
  *v105 = v104;
  v105[1] = v103;

  v106 = static Edge.Set.vertical.getter();
  v107 = v220;
  sub_10056CABC(v220);
  v108 = v228;
  v109 = v226;
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 != 1)
  {
    DynamicTypeSize.isAccessibilitySize.getter();
  }

  (*(v223 + 8))(v107, v224);
  EdgeInsets.init(_all:)();
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  sub_10003D17C(v101, v109, &qword_101185AF8, &qword_100EC13F0);
  v118 = v109 + *(v221 + 36);
  *v118 = v106;
  *(v118 + 8) = v111;
  *(v118 + 16) = v113;
  *(v118 + 24) = v115;
  *(v118 + 32) = v117;
  *(v118 + 40) = 0;
  v119 = static Edge.Set.leading.getter();
  v120 = v218;
  sub_1002372D4(v99 + v214, v218, type metadata accessor for SuggestedSongsDataSource.Placement);
  v121 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v120, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v121 == 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  if (qword_10117F3A0 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  sub_10003D17C(v109, v108, &qword_101185B00, &qword_100EC13F8);
  v130 = v108 + *(v225 + 36);
  *v130 = v119;
  *(v130 + 8) = v123;
  *(v130 + 16) = v125;
  *(v130 + 24) = v127;
  *(v130 + 32) = v129;
  *(v130 + 40) = 0;
  v131 = static Edge.Set.trailing.getter();
  v132 = v260;
  sub_10056CAE4(v260);
  sub_10022205C(v132);
  sub_1000095E8(v132, &unk_101184290, &qword_100EC0E60);
  if (qword_10117F3A8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v141 = v229;
  sub_10003D17C(v108, v229, &qword_101185B08, &qword_100EC1400);
  v142 = v231;
  v143 = v141 + *(v231 + 36);
  *v143 = v131;
  *(v143 + 8) = v134;
  *(v143 + 16) = v136;
  *(v143 + 24) = v138;
  *(v143 + 32) = v140;
  *(v143 + 40) = 0;
  v144 = v267;
  sub_1002372D4(v99, v267, type metadata accessor for SuggestedSongsModule.SongCell);
  v145 = v262;
  v146 = swift_allocObject();
  sub_10023733C(v144, v146 + v145, type metadata accessor for SuggestedSongsModule.SongCell);
  v147 = sub_10023A090();
  v148 = v230;
  View.onTapGesture(count:perform:)();

  sub_1000095E8(v141, &qword_101185B10, &qword_100EC1408);
  v149 = v239;
  static AccessibilityChildBehavior.combine.getter();
  v276 = v142;
  v277 = v147;
  v150 = swift_getOpaqueTypeConformance2();
  v151 = v233;
  v152 = v234;
  View.accessibilityElement(children:)();
  (*(v240 + 8))(v149, v242);
  (*(v232 + 8))(v148, v152);
  v153 = v245;
  static AccessibilityTraits.isButton.getter();
  v276 = v152;
  v277 = v150;
  swift_getOpaqueTypeConformance2();
  v154 = v238;
  v155 = v236;
  View.accessibility(addTraits:)();
  (*(v247 + 8))(v153, v248);
  (*(v235 + 8))(v151, v155);
  v156 = AccessibilityIdentifier.playlistSuggestedSongsCell.unsafeMutableAddressor();
  v157 = *v156;
  v158 = v156[1];
  v159 = v156[2];
  v160 = v156[3];
  v161 = sub_10023A318();

  View.accessibilityIdentifier(_:)(v157, v158, v159, v160, v237, v161);

  sub_1000095E8(v154, &qword_101185B28, &qword_100EC1420);
  v162 = Song.id.getter();
  sub_10012BF2C(v162, v163);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v276 = String.init(localized:table:bundle:locale:comment:)();
  v277 = v164;
  sub_10023A454();
  v165 = v244;
  v166 = v265;
  View.accessibilityHint<A>(_:)();

  sub_1000095E8(v166, &qword_101185B30, &qword_100EC1428);
  v265 = type metadata accessor for SuggestedSongsModule.SongCell;
  v167 = v267;
  sub_1002372D4(v99, v267, type metadata accessor for SuggestedSongsModule.SongCell);
  v168 = v262;
  v169 = swift_allocObject();
  v263 = type metadata accessor for SuggestedSongsModule.SongCell;
  sub_10023733C(v167, v169 + v168, type metadata accessor for SuggestedSongsModule.SongCell);
  v170 = v250;
  static AccessibilityActionKind.default.getter();
  v171 = v249;
  ModifiedContent<>.accessibilityAction(_:_:)();

  (*(v251 + 8))(v170, v252);
  sub_1000095E8(v165, &qword_101185B38, &qword_100EC1430);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v276 = String.init(localized:table:bundle:locale:comment:)();
  v277 = v172;
  v173 = Text.init<A>(_:)();
  v174 = v99;
  v176 = v175;
  LOBYTE(v165) = v177;
  sub_1002372D4(v174, v167, v265);
  v178 = swift_allocObject();
  sub_10023733C(v167, v178 + v168, v263);
  ModifiedContent<>.accessibilityAction(named:_:)();

  sub_10011895C(v173, v176, v165 & 1);

  sub_1000095E8(v171, &qword_101185B38, &qword_100EC1430);
  v179 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  v180 = v227;
  swift_beginAccess();
  v181 = v180 + v179;
  v182 = v243;
  sub_1002372D4(v181, v243, type metadata accessor for SuggestedSongsDataSource.Placement);
  v183 = v246;
  sub_10023733C(v182, v246, type metadata accessor for SuggestedSongsDataSource.Placement);
  LODWORD(v270) = swift_getEnumCaseMultiPayload() == 1;
  sub_10023754C(v183, type metadata accessor for SuggestedSongsDataSource.Placement);
  v184 = type metadata accessor for SuggestedSong(0);
  v279 = v184;
  v185 = sub_10001C8B8(&v276);
  v186 = type metadata accessor for Song();
  (*(*(v186 - 8) + 16))(v185, v174, v186);
  v187 = v265;
  sub_1002372D4(v174, v167, v265);
  v188 = swift_allocObject();
  v189 = v263;
  sub_10023733C(v167, v188 + v168, v263);
  v190 = (v185 + *(v184 + 20));
  *v190 = sub_10023A484;
  v190[1] = v188;
  sub_1002372D4(v174, v167, v187);
  v191 = swift_allocObject();
  sub_10023733C(v167, v191 + v168, v189);
  __chkstk_darwin();
  v192 = sub_10010FC20(&qword_101185C50, &qword_100EC14E8);
  v201 = sub_100238500(&qword_101185C58, &qword_101185B38, &qword_100EC1430, sub_10023A454);
  v202 = sub_10023A55C();
  v193 = v271;
  v194 = v253;
  v195 = v268;
  View.onDrag<A>(isEnabled:localContext:_:onSessionBegan:onSessionEnded:preview:)();

  sub_1000095E8(v195, &qword_101185B38, &qword_100EC1430);
  sub_1000095E8(&v276, &unk_101183F30, qword_100EBF960);
  v276 = v193;
  v277 = v192;
  v278 = v201;
  v279 = v202;
  v196 = swift_getOpaqueTypeConformance2();
  v197 = v254;
  v198 = v257;
  View.supportsSystemDrag(_:)();
  (*(v255 + 8))(v194, v198);
  v276 = v198;
  v277 = v196;
  swift_getOpaqueTypeConformance2();
  v199 = v258;
  View.prefersFullSizeDragPreviews(_:)();

  (*(v256 + 8))(v197, v199);
  return sub_1000095E8(v266, &qword_101185B88, &qword_100EC1480);
}

uint64_t sub_100227634()
{
  v1 = v0;
  v2 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = type metadata accessor for MusicLibrary.AddStatus();
  v95 = *(v5 - 8);
  v96 = v5;
  __chkstk_darwin();
  v94 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = v75 - v7;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v92 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = v75 - v9;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v97 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v90 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = v75 - v12;
  __chkstk_darwin();
  v14 = v75 - v13;
  __chkstk_darwin();
  v16 = v75 - v15;
  __chkstk_darwin();
  v18 = v75 - v17;
  result = dispatch thunk of MusicSuggestedSongsViewModel.isPerformingUserInitiatedRefresh.getter();
  if ((result & 1) == 0)
  {
    v75[1] = v4;
    v76 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v0 + *(v2 + 28);
    v21 = *v20;
    v22 = *(v20 + 8);
    v100[0] = v21;
    v101 = v22;
    v102 = 1;
    sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
    State.wrappedValue.setter();
    if (qword_10117F1F8 != -1)
    {
      swift_once();
    }

    v23 = Song.id.getter();
    sub_10012BF2C(v23, v24);
    v26 = ~v25;

    if (v26)
    {
      sub_10012F360();
    }

    v27 = Song.catalogID.getter();
    v85 = v3;
    v82 = v16;
    v83 = v14;
    if (!v28)
    {
      v27 = Song.id.getter();
    }

    v29 = v27;
    v98 = v28;
    v30 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
    v86 = *(v1 + *(v2 + 24) + 8);
    v31 = v86;
    swift_beginAccess();
    sub_1002372D4(v31 + v30, v18, type metadata accessor for SuggestedSongsDataSource.Placement);
    v32 = sub_100222540();
    v87 = v33;
    v88 = v32;
    v81 = type metadata accessor for SuggestedSongsDataSource.Placement;
    sub_10023754C(v18, type metadata accessor for SuggestedSongsDataSource.Placement);
    sub_10010FC20(&qword_1011858B0, &unk_100EC1280);
    inited = swift_initStackObject();
    v84 = xmmword_100EBDC20;
    *(inited + 16) = xmmword_100EBDC20;
    sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
    v35 = swift_initStackObject();
    *(v35 + 16) = v84;
    *(v35 + 32) = 25705;
    *(v35 + 40) = 0xE200000000000000;
    *(v35 + 48) = v29;
    v78 = v29;
    v36 = v98;
    *(v35 + 56) = v98;
    v98 = v36;
    strcpy((v35 + 64), "locationType");
    *(v35 + 77) = 0;
    *(v35 + 78) = -5120;
    *(v35 + 80) = 0x657449666C656853;
    *(v35 + 88) = 0xE90000000000006DLL;

    v37 = sub_10010C578(v35);
    *&v84 = v1;
    v38 = v37;
    swift_setDeallocating();
    sub_10010FC20(&qword_101183AA0, &unk_100ECAF50);
    swift_arrayDestroy();
    *(inited + 32) = v38;
    v39 = sub_10010C578(&off_101099AE8);
    swift_arrayDestroy();
    *(inited + 40) = v39;
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_100EBEF50;
    *(v40 + 32) = 1684957547;
    *(v40 + 40) = 0xE400000000000000;
    *(v40 + 48) = 1735290739;
    *(v40 + 56) = 0xE400000000000000;
    *(v40 + 64) = 0x6F54646461;
    *(v40 + 72) = 0xE500000000000000;
    *(v40 + 80) = 0x7473696C79616C70;
    *(v40 + 88) = 0xE800000000000000;
    *(v40 + 96) = 0x4E6E6F6974636573;
    *(v40 + 104) = 0xEB00000000656D61;
    *(v40 + 112) = 0x6574736567677553;
    *(v40 + 120) = 0xEF73676E6F532064;
    *(v40 + 128) = 0x49746E65746E6F63;
    v41 = v88;
    *(v40 + 136) = 0xE900000000000064;
    *(v40 + 144) = v41;
    *(v40 + 152) = v87;

    v80 = sub_10010C578(v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    v42 = type metadata accessor for URL();
    v43 = *(*(v42 - 8) + 56);
    v43(v99, 1, 1, v42);
    v79 = sub_10018DA2C(inited);

    v44 = v86;
    v45 = v82;
    v77 = type metadata accessor for SuggestedSongsDataSource.Placement;
    sub_1002372D4(v86 + v30, v82, type metadata accessor for SuggestedSongsDataSource.Placement);
    v46 = v83;
    sub_1002372D4(v45, v83, type metadata accessor for SuggestedSongsDataSource.Placement);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v48 = EnumCaseMultiPayload == 1;
    if (EnumCaseMultiPayload == 1)
    {
      v49 = v45;
    }

    else
    {
      v49 = v46;
    }

    if (v48)
    {
      v50 = 0x7473696C79616C50;
    }

    else
    {
      v46 = v45;
      v50 = 0x72656B636950;
    }

    v51 = 0xE600000000000000;
    if (v48)
    {
      v51 = 0xE800000000000000;
    }

    v83 = v51;
    v52 = v81;
    sub_10023754C(v49, v81);
    sub_10023754C(v46, v52);
    v53 = v92;
    v43(v92, 1, 1, v42);
    v54 = v89;
    sub_1002372D4(v44 + v30, v89, v77);
    v55 = v90;
    sub_10023733C(v54, v90, type metadata accessor for SuggestedSongsDataSource.Placement);
    LOBYTE(v54) = swift_getEnumCaseMultiPayload() == 1;
    sub_10023754C(v55, v52);
    v56 = v97;
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v78, v98, 25, 3, v99, v79, 0, 12, v97, v80, 0, 768, v88, v87, v50, v83, v53, 0, v54, 2, 0, 0, 0);
    v57 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v58 = sub_10053771C();
    v60 = v59;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v61 = qword_101218AD0;
    v62 = GroupActivitiesManager.hasJoined.getter();
    v63 = GroupActivitiesManager.participantsCount.getter();
    v64 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v57) + 0xB8))(v56, v58, v60, v62 & 1, v63, *(v61 + v64));

    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    type metadata accessor for Song();
    v65 = v84;
    MusicLibrary.state<A>(for:)();

    v66 = v93;
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

    v68 = v94;
    v67 = v95;
    v69 = v96;
    (*(v95 + 104))(v94, enum case for MusicLibrary.AddStatus.added(_:), v96);
    sub_100236DF0(&qword_101185CC8, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    LOBYTE(v61) = dispatch thunk of static Equatable.== infix(_:_:)();
    v70 = *(v67 + 8);
    v70(v68, v69);
    v70(v66, v69);
    v71 = v85;
    if (v61)
    {
      sub_10022EDD4();
    }

    else
    {
      sub_10012B7A8(v86 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource, v100);
      v72 = v76;
      sub_1002372D4(v65, v76, type metadata accessor for SuggestedSongsModule.SongCell);
      v73 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v74 = swift_allocObject();
      sub_10023733C(v72, v74 + v73, type metadata accessor for SuggestedSongsModule.SongCell);
      static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(2, v100, 0, sub_10023A8A8, v74);

      sub_10012BA6C(v100);
    }

    return sub_10023754C(v56, type metadata accessor for MetricsEvent.Click);
  }

  return result;
}

uint64_t sub_100228178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v69 = type metadata accessor for Image.Scale();
  v68 = *(v69 - 8);
  __chkstk_darwin();
  v67 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v70 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v61 - v6;
  __chkstk_darwin();
  v63 = &v61 - v7;
  __chkstk_darwin();
  v9 = &v61 - v8;
  __chkstk_darwin();
  v11 = &v61 - v10;
  __chkstk_darwin();
  v13 = &v61 - v12;
  __chkstk_darwin();
  v15 = &v61 - v14;
  v65 = sub_10010FC20(&qword_10119A280, &qword_100EC11C0);
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v74 = &v61 - v16;
  v62 = sub_10010FC20(&qword_101185BB8, &unk_100EDD6F0);
  __chkstk_darwin();
  v75 = &v61 - v17;
  v71 = sub_10010FC20(&qword_101185BA8, &qword_100EC1490);
  __chkstk_darwin();
  v72 = &v61 - v18;
  v19 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v20 = *(a1 + *(v19 + 24) + 8);
  v21 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v20 + v21, v15, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023733C(v15, v13, type metadata accessor for SuggestedSongsDataSource.Placement);
  swift_getEnumCaseMultiPayload();
  sub_10023754C(v13, type metadata accessor for SuggestedSongsDataSource.Placement);
  v22 = Image.init(systemName:)();
  v23 = *(v19 + 32);
  v24 = a1;
  sub_1002372D4(a1 + v23, v11, type metadata accessor for SuggestedSongsDataSource.Placement);
  v76 = v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v11, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_4;
  }

  if (qword_10117F390 == -1)
  {
    if (byte_101184EE8)
    {
LABEL_4:
      v26 = static Font.title3.getter();
      goto LABEL_7;
    }
  }

  else
  {
    swift_once();
    if (byte_101184EE8)
    {
      goto LABEL_4;
    }
  }

  v26 = static Font.body.getter();
LABEL_7:
  v27 = v26;
  KeyPath = swift_getKeyPath();
  *&v77 = v22;
  *(&v77 + 1) = KeyPath;
  *&v78 = v27;
  sub_1002372D4(a1 + v23, v9, type metadata accessor for SuggestedSongsDataSource.Placement);
  v29 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v9, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v29 != 1)
  {
LABEL_10:
    static Font.Weight.medium.getter();
    goto LABEL_13;
  }

  if (qword_10117F390 == -1)
  {
    if (byte_101184EE8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    swift_once();
    if (byte_101184EE8)
    {
      goto LABEL_10;
    }
  }

  static Font.Weight.semibold.getter();
LABEL_13:
  sub_10010FC20(&unk_1011A1100, &unk_100ED3F40);
  sub_100238768();
  View.fontWeight(_:)();

  v61 = type metadata accessor for SuggestedSongsDataSource.Placement;
  v30 = v63;
  sub_1002372D4(a1 + v23, v63, type metadata accessor for SuggestedSongsDataSource.Placement);
  v31 = v23;
  v32 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v30, type metadata accessor for SuggestedSongsDataSource.Placement);
  v33 = v68;
  v34 = &enum case for Image.Scale.medium(_:);
  if (v32 != 1)
  {
    v34 = &enum case for Image.Scale.small(_:);
  }

  v35 = v67;
  v36 = v69;
  (*(v68 + 104))(v67, *v34, v69);
  v37 = swift_getKeyPath();
  v38 = v75;
  v39 = (v75 + *(v62 + 36));
  v40 = sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0);
  (*(v33 + 32))(v39 + *(v40 + 28), v35, v36);
  *v39 = v37;
  (*(v64 + 32))(v38, v74, v65);
  v41 = v31;
  v42 = v66;
  sub_1002372D4(v24 + v31, v66, v61);
  v43 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v42, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v43 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v44 = [objc_opt_self() defaultMetrics];
    [v44 scaledValueForValue:24.0];
  }

  v45 = v70;
  sub_1002372D4(v24 + v41, v70, type metadata accessor for SuggestedSongsDataSource.Placement);
  v46 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v45, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v46 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v47 = [objc_opt_self() defaultMetrics];
    [v47 scaledValueForValue:24.0];
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v48 = v72;
  sub_10003D17C(v75, v72, &qword_101185BB8, &unk_100EDD6F0);
  v49 = (v48 + *(v71 + 36));
  v50 = v82;
  v49[4] = v81;
  v49[5] = v50;
  v49[6] = v83;
  v51 = v78;
  *v49 = v77;
  v49[1] = v51;
  v52 = v80;
  v49[2] = v79;
  v49[3] = v52;
  v53 = static Alignment.center.getter();
  v55 = v54;
  v56 = sub_10010FC20(&qword_101185B90, &qword_100EC1488);
  v57 = v73;
  v58 = v73 + *(v56 + 36);
  sub_100228BAC(v24, v58);
  v59 = (v58 + *(sub_10010FC20(&qword_1011858A0, &qword_100EC11B8) + 36));
  *v59 = v53;
  v59[1] = v55;
  return sub_10003D17C(v48, v57, &qword_101185BA8, &qword_100EC1490);
}

uint64_t sub_100228BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011858A8, &qword_100EC11F8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v21 - v6);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v12 = *(a1 + *(type metadata accessor for SuggestedSongsModule.SongCell(0) + 24) + 8);
  v13 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v12 + v13, v11, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023733C(v11, v9, type metadata accessor for SuggestedSongsDataSource.Placement);
  LODWORD(v12) = swift_getEnumCaseMultiPayload();
  sub_10023754C(v9, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v12 == 1)
  {
    v14 = 1;
  }

  else
  {
    static Color.white.getter();
    v15 = Color.opacity(_:)();

    KeyPath = swift_getKeyPath();
    v17 = *(v4 + 36);
    v18 = enum case for BlendMode.plusLighter(_:);
    v19 = type metadata accessor for BlendMode();
    (*(*(v19 - 8) + 104))(v7 + v17, v18, v19);
    *v7 = KeyPath;
    v7[1] = v15;
    sub_10003D17C(v7, a2, &qword_1011858A8, &qword_100EC11F8);
    v14 = 0;
  }

  return (*(v5 + 56))(a2, v14, 1, v4);
}

uint64_t sub_100228E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v98 = a3;
  v100 = a4;
  sub_10010FC20(&qword_101185CD0, &qword_100EC15A8);
  __chkstk_darwin();
  v101 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v78 - v7;
  v95 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  __chkstk_darwin();
  v96 = v9;
  v97 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTypeSize();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin();
  v90 = (v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = (v78 - v12);
  v14 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin();
  v106 = (v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v17 = (v78 - v16);
  v105 = type metadata accessor for RoundedRectangle._Inset();
  __chkstk_darwin();
  v89 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = v78 - v19;
  v104 = type metadata accessor for ContentShapeKinds();
  v87 = *(v104 - 8);
  __chkstk_darwin();
  v103 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = v78 - v22;
  sub_10010FC20(&qword_101185CD8, &qword_100EC15B0);
  __chkstk_darwin();
  v25 = v78 - v24;
  v84 = sub_10010FC20(&qword_101185CE0, &qword_100EC15B8);
  __chkstk_darwin();
  v102 = v78 - v26;
  v88 = sub_10010FC20(&qword_101185CE8, &qword_100EC15C0);
  __chkstk_darwin();
  v91 = v78 - v27;
  v28 = sub_10010FC20(&qword_101185CF0, &qword_100EC15C8);
  v93 = *(v28 - 8);
  v94 = v28;
  __chkstk_darwin();
  v92 = v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = v78 - v30;
  v85 = v25;
  v78[0] = a2;
  sub_100229A40(a1, a2, v25);
  v86 = v23;
  static ContentShapeKinds.contextMenuPreview.getter();
  if (qword_10117F398 != -1)
  {
    swift_once();
  }

  v99 = v8;
  v82 = *(&xmmword_101184EF0 + 1);
  v83 = xmmword_101184EF0;
  v81 = byte_101184F00;
  v31 = Corner.radius(in:)(xmmword_101184EF0, 0.0, 0.0, 0.0, 0.0, *(&xmmword_101184EF0 + 1), byte_101184F00);
  v32 = *(v14 + 20);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  v35 = *(v34 - 8);
  v36 = *(v35 + 104);
  v80 = v33;
  v79 = v36;
  v78[1] = v35 + 104;
  v36(v17 + v32, v33, v34);
  *v17 = v31;
  v17[1] = v31;
  sub_10056CABC(v13);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  v110 = a1;
  v37 = byte_10119CDC0;
  if (byte_10119CDC0 == 1)
  {
    v38 = *(v107 + 8);
    v38(v13, v108);
    v39 = 10.0;
  }

  else
  {
    v40 = DynamicTypeSize.isAccessibilitySize.getter();
    v38 = *(v107 + 8);
    v38(v13, v108);
    v39 = 4.0;
    if (v40)
    {
      v39 = 14.0;
    }
  }

  v41 = -v39;
  sub_10023733C(v17, v20, &type metadata accessor for RoundedRectangle);
  *&v20[*(v105 + 20)] = v41;
  v42 = v102;
  v43 = v102 + *(v84 + 36);
  sub_10023733C(v20, v43, &type metadata accessor for RoundedRectangle._Inset);
  v44 = sub_10010FC20(&qword_101185CF8, &qword_100EC15D0);
  v45 = *(v87 + 32);
  v45(v43 + *(v44 + 40), v86, v104);
  *(v43 + *(v44 + 36)) = 0;
  sub_10003D17C(v85, v42, &qword_101185CD8, &qword_100EC15B0);
  static ContentShapeKinds.interaction.getter();
  v46 = Corner.radius(in:)(v83, 0.0, 0.0, 0.0, 0.0, v82, v81);
  v47 = v106;
  v79(v106 + *(v14 + 20), v80, v34);
  *v47 = v46;
  v47[1] = v46;
  v48 = v90;
  sub_10056CABC(v90);
  if (v37)
  {
    v38(v48, v108);
    v49 = 10.0;
  }

  else
  {
    v50 = DynamicTypeSize.isAccessibilitySize.getter();
    v38(v48, v108);
    v49 = 4.0;
    if (v50)
    {
      v49 = 14.0;
    }
  }

  v51 = -v49;
  v52 = v89;
  sub_10023733C(v106, v89, &type metadata accessor for RoundedRectangle);
  *(v52 + *(v105 + 20)) = v51;
  v53 = v88;
  v54 = v91;
  v55 = &v91[*(v88 + 36)];
  sub_10023733C(v52, v55, &type metadata accessor for RoundedRectangle._Inset);
  v45(v55 + *(v44 + 40), v103, v104);
  *(v55 + *(v44 + 36)) = 0;
  sub_10003D17C(v102, v54, &qword_101185CE0, &qword_100EC15B8);
  v56 = v110;
  v57 = sub_10022B56C();
  __chkstk_darwin();
  v58 = v97;
  v77[2] = v56;
  v77[3] = v98;
  sub_1002372D4(v56, v97, type metadata accessor for SuggestedSongsModule.SongCell);
  v59 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v60 = swift_allocObject();
  sub_10023733C(v58, v60 + v59, type metadata accessor for SuggestedSongsModule.SongCell);
  v61 = sub_10023AAC8();
  v62 = sub_10023AE50();
  View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:)(0, 0, v57, &off_101099AC0, sub_10023AA18, v77, sub_10023AA20, v60, v109, v53, &type metadata for ContextualPreview, v61, v62);

  sub_1000095E8(v54, &qword_101185CE8, &qword_100EC15C0);
  v63 = sub_100229E38();
  v64 = v99;
  if (v63)
  {
    v65 = 1;
  }

  else
  {
    sub_1000089F8(v78[0], v99, &qword_101185B88, &qword_100EC1480);
    v65 = 0;
  }

  v66 = sub_10010FC20(&qword_101185B88, &qword_100EC1480);
  (*(*(v66 - 8) + 56))(v64, v65, 1, v66);
  v68 = v92;
  v67 = v93;
  v69 = *(v93 + 16);
  v70 = v109;
  v71 = v94;
  v69(v92, v109, v94);
  v72 = v101;
  sub_1000089F8(v64, v101, &qword_101185CD0, &qword_100EC15A8);
  v73 = v100;
  v69(v100, v68, v71);
  v74 = sub_10010FC20(&qword_101185D68, &qword_100EC15F8);
  sub_1000089F8(v72, &v73[*(v74 + 48)], &qword_101185CD0, &qword_100EC15A8);
  sub_1000095E8(v64, &qword_101185CD0, &qword_100EC15A8);
  v75 = *(v67 + 8);
  v75(v70, v71);
  sub_1000095E8(v72, &qword_101185CD0, &qword_100EC15A8);
  return (v75)(v68, v71);
}

uint64_t sub_100229A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  sub_10010FC20(&qword_101185D50, &qword_100EC15F0);
  __chkstk_darwin();
  v6 = v23 - v5;
  sub_10010FC20(&qword_101185D78, &qword_100EC16A0);
  __chkstk_darwin();
  v8 = v23 - v7;
  sub_10010FC20(&qword_101185D40, &qword_100EC15E8);
  __chkstk_darwin();
  v10 = v23 - v9;
  v11 = sub_10010FC20(&qword_101185D30, &qword_100EC15E0);
  __chkstk_darwin();
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = v23 - v14;
  if (sub_100229E38())
  {
    *v10 = static HorizontalAlignment.leading.getter();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v16 = sub_10010FC20(&qword_101185D88, &qword_100EC16B0);
    sub_10022A4B8(a1, a2, &v10[*(v16 + 44)]);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10003D17C(v10, v13, &qword_101185D40, &qword_100EC15E8);
    v17 = &v13[*(v11 + 36)];
    v18 = v29;
    *(v17 + 4) = v28;
    *(v17 + 5) = v18;
    *(v17 + 6) = v30;
    v19 = v25;
    *v17 = v24;
    *(v17 + 1) = v19;
    v20 = v27;
    *(v17 + 2) = v26;
    *(v17 + 3) = v20;
    sub_10003D17C(v13, v15, &qword_101185D30, &qword_100EC15E0);
    sub_1000089F8(v15, v8, &qword_101185D30, &qword_100EC15E0);
    swift_storeEnumTagMultiPayload();
    sub_10023AD98();
    sub_100020674(&qword_101185D48, &qword_101185D50, &qword_100EC15F0, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v15, &qword_101185D30, &qword_100EC15E0);
  }

  else
  {
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v22 = sub_10010FC20(&qword_101185D80, &qword_100EC16A8);
    sub_10022AD1C(a1, &v6[*(v22 + 44)]);
    sub_1000089F8(v6, v8, &qword_101185D50, &qword_100EC15F0);
    swift_storeEnumTagMultiPayload();
    sub_10023AD98();
    sub_100020674(&qword_101185D48, &qword_101185D50, &qword_100EC15F0, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v6, &qword_101185D50, &qword_100EC15F0);
  }
}

BOOL sub_100229E38()
{
  v35 = type metadata accessor for UserInterfaceSizeClass();
  v33 = *(v35 - 8);
  __chkstk_darwin();
  v30 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10010FC20(&qword_101185768, &qword_100EDBB70);
  __chkstk_darwin();
  v3 = &v29 - v2;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v29 - v5;
  __chkstk_darwin();
  v8 = (&v29 - v7);
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v34 = v0;
  sub_10056CABC(v14);
  (*(v10 + 104))(v12, enum case for DynamicTypeSize.accessibility3(_:), v9);
  sub_100236DF0(&qword_1011810B0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v16 = dispatch thunk of static Comparable.< infix(_:_:)();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v17(v14, v9);
  if (v16)
  {
    return 0;
  }

  v29 = v15;
  sub_10056CAE4(v8);
  v19 = v33;
  v20 = v35;
  (*(v33 + 104))(v6, enum case for UserInterfaceSizeClass.compact(_:), v35);
  (*(v19 + 56))(v6, 0, 1, v20);
  v21 = *(v32 + 48);
  sub_1000089F8(v8, v3, &unk_101184290, &qword_100EC0E60);
  sub_1000089F8(v6, &v3[v21], &unk_101184290, &qword_100EC0E60);
  v22 = *(v19 + 48);
  if (v22(v3, 1, v20) == 1)
  {
    sub_1000095E8(v6, &unk_101184290, &qword_100EC0E60);
    sub_1000095E8(v8, &unk_101184290, &qword_100EC0E60);
    if (v22(&v3[v21], 1, v35) == 1)
    {
      sub_1000095E8(v3, &unk_101184290, &qword_100EC0E60);
      return 1;
    }

    goto LABEL_8;
  }

  v23 = v31;
  sub_1000089F8(v3, v31, &unk_101184290, &qword_100EC0E60);
  if (v22(&v3[v21], 1, v35) == 1)
  {
    sub_1000095E8(v6, &unk_101184290, &qword_100EC0E60);
    sub_1000095E8(v8, &unk_101184290, &qword_100EC0E60);
    (*(v19 + 8))(v23, v35);
LABEL_8:
    sub_1000095E8(v3, &qword_101185768, &qword_100EDBB70);
    goto LABEL_9;
  }

  v25 = &v3[v21];
  v26 = v30;
  v27 = v35;
  (*(v19 + 32))(v30, v25, v35);
  sub_100236DF0(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  LODWORD(v32) = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v19 + 8);
  v28(v26, v27);
  sub_1000095E8(v6, &unk_101184290, &qword_100EC0E60);
  sub_1000095E8(v8, &unk_101184290, &qword_100EC0E60);
  v28(v23, v27);
  sub_1000095E8(v3, &unk_101184290, &qword_100EC0E60);
  if (v32)
  {
    return 1;
  }

LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v36);

  v24 = v36;
  if (qword_10117FB30 != -1)
  {
    swift_once();
  }

  return v24 < *&qword_1012192C8;
}

uint64_t sub_10022A4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v49 = type metadata accessor for SuggestedSongsModule.VerticalText(0);
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v44 - v7;
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v44 - v12;
  sub_10010FC20(&qword_101185D90, &qword_100EC16B8);
  __chkstk_darwin();
  v15 = &v44 - v14;
  v45 = sub_10010FC20(&qword_101185D98, &qword_100EC16C0);
  __chkstk_darwin();
  v17 = &v44 - v16;
  v46 = sub_10010FC20(&qword_101185DA0, &qword_100EC16C8);
  __chkstk_darwin();
  v48 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v44 - v19;
  __chkstk_darwin();
  v47 = &v44 - v21;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v22 = sub_10010FC20(&qword_101185DA8, &qword_100EC16D0);
  sub_10022AADC(a1, a2, &v15[*(v22 + 44)]);
  type metadata accessor for SuggestedSongsModule.SongCell(0);
  v50 = a1;
  sub_10056CABC(v13);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    (*(v9 + 104))(v11, enum case for DynamicTypeSize.accessibility3(_:), v8);
    static DynamicTypeSize.< infix(_:_:)();
    v23 = *(v9 + 8);
    v23(v11, v8);
    v23(v13, v8);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003D17C(v15, v17, &qword_101185D90, &qword_100EC16B8);
  v24 = &v17[*(v45 + 36)];
  v25 = v53;
  *v24 = v52;
  *(v24 + 1) = v25;
  *(v24 + 2) = v54;
  v26 = static Edge.Set.bottom.getter();
  if (qword_10117FBA0 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_10003D17C(v17, v20, &qword_101185D98, &qword_100EC16C0);
  v35 = v47;
  v36 = &v20[*(v46 + 36)];
  *v36 = v26;
  *(v36 + 1) = v28;
  *(v36 + 2) = v30;
  *(v36 + 3) = v32;
  *(v36 + 4) = v34;
  v36[40] = 0;
  sub_10003D17C(v20, v35, &qword_101185DA0, &qword_100EC16C8);
  v37 = type metadata accessor for Song();
  v38 = v51;
  (*(*(v37 - 8) + 16))(v51, v50, v37);
  v39 = *(v49 + 20);
  *(v38 + v39) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v40 = v48;
  sub_1000089F8(v35, v48, &qword_101185DA0, &qword_100EC16C8);
  sub_1002372D4(v38, v6, type metadata accessor for SuggestedSongsModule.VerticalText);
  v41 = v44;
  sub_1000089F8(v40, v44, &qword_101185DA0, &qword_100EC16C8);
  v42 = sub_10010FC20(&qword_101185DB0, &qword_100EC16D8);
  sub_1002372D4(v6, v41 + *(v42 + 48), type metadata accessor for SuggestedSongsModule.VerticalText);
  sub_10023754C(v38, type metadata accessor for SuggestedSongsModule.VerticalText);
  sub_1000095E8(v35, &qword_101185DA0, &qword_100EC16C8);
  sub_10023754C(v6, type metadata accessor for SuggestedSongsModule.VerticalText);
  return sub_1000095E8(v40, &qword_101185DA0, &qword_100EC16C8);
}

uint64_t sub_10022AADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&qword_101185B88, &qword_100EC1480);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for SuggestedSongsModule.Artwork(0) - 8;
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v18 - v11;
  v13 = type metadata accessor for Song();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  v14 = *(v8 + 28);
  *&v12[v14] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  sub_1002372D4(v12, v10, type metadata accessor for SuggestedSongsModule.Artwork);
  sub_1000089F8(a2, v7, &qword_101185B88, &qword_100EC1480);
  sub_1002372D4(v10, a3, type metadata accessor for SuggestedSongsModule.Artwork);
  v15 = sub_10010FC20(&qword_101185DB8, &qword_100EC16E0);
  v16 = a3 + *(v15 + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_1000089F8(v7, a3 + *(v15 + 64), &qword_101185B88, &qword_100EC1480);
  sub_10023754C(v12, type metadata accessor for SuggestedSongsModule.Artwork);
  sub_1000095E8(v7, &qword_101185B88, &qword_100EC1480);
  return sub_10023754C(v10, type metadata accessor for SuggestedSongsModule.Artwork);
}

uint64_t sub_10022AD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = type metadata accessor for SuggestedSongsModule.HorizontalText(0);
  __chkstk_darwin();
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10010FC20(&qword_101185DC0, &qword_100EC16E8);
  __chkstk_darwin();
  v53 = &v43 - v4;
  v52 = type metadata accessor for SuggestedSongsModule.VerticalText(0);
  __chkstk_darwin();
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTypeSize();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin();
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v10 = (&v43 - v9);
  sub_10010FC20(&qword_101185DC8, &qword_100EC16F0);
  __chkstk_darwin();
  v54 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v43 - v12;
  v13 = type metadata accessor for SuggestedSongsModule.Artwork(0) - 8;
  __chkstk_darwin();
  v51 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v43 - v15;
  v17 = type metadata accessor for Song();
  v18 = *(*(v17 - 8) + 16);
  v18(v16, a1, v17);
  v19 = *(v13 + 28);
  *&v16[v19] = swift_getKeyPath();
  v20 = sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  v49 = v16;
  v45 = v20;
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v59);

  v22 = *&v59;
  sub_10056CAE4(v10);
  sub_10056CABC(v8);
  LOBYTE(v19) = sub_10068D124(v10, v8, v22);
  (*(v46 + 8))(v8, v47);
  sub_1000095E8(v10, &unk_101184290, &qword_100EC0E60);
  if (v19)
  {
    v23 = v43;
    v18(v43, a1, v17);
    v24 = *(v52 + 20);
    *(v23 + v24) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    sub_1002372D4(v23, v53, type metadata accessor for SuggestedSongsModule.VerticalText);
    swift_storeEnumTagMultiPayload();
    sub_100236DF0(&qword_101185DD0, type metadata accessor for SuggestedSongsModule.VerticalText, &unk_100EC18D4);
    sub_100236DF0(&qword_101185DD8, type metadata accessor for SuggestedSongsModule.HorizontalText, &unk_100EC1884);
    v25 = v50;
    _ConditionalContent<>.init(storage:)();
    v26 = type metadata accessor for SuggestedSongsModule.VerticalText;
    v27 = v23;
  }

  else
  {
    v28 = v44;
    v18(v44, a1, v17);
    v29 = *(v21 + 32);
    v30 = v55;
    sub_1002372D4(a1 + v29, v28 + *(v55 + 24), type metadata accessor for SuggestedSongsModule.Specs);
    v31 = (v28 + v30[5]);
    type metadata accessor for SuggestedSongsDataSource(0);
    sub_100236DF0(&qword_1011A4A60, type metadata accessor for SuggestedSongsDataSource, &unk_100EC0BF4);

    *v31 = ObservedObject.init(wrappedValue:)();
    v31[1] = v32;
    v33 = v28 + v30[7];
    type metadata accessor for CGSize(0);
    v57 = 0;
    v58 = 0;
    State.init(wrappedValue:)();
    v34 = v60;
    *v33 = v59;
    *(v33 + 16) = v34;
    v35 = v30[8];
    *(v28 + v35) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v36 = v30[9];
    *(v28 + v36) = swift_getKeyPath();
    sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
    swift_storeEnumTagMultiPayload();
    sub_1002372D4(v28, v53, type metadata accessor for SuggestedSongsModule.HorizontalText);
    swift_storeEnumTagMultiPayload();
    sub_100236DF0(&qword_101185DD0, type metadata accessor for SuggestedSongsModule.VerticalText, &unk_100EC18D4);
    sub_100236DF0(&qword_101185DD8, type metadata accessor for SuggestedSongsModule.HorizontalText, &unk_100EC1884);
    v25 = v50;
    _ConditionalContent<>.init(storage:)();
    v26 = type metadata accessor for SuggestedSongsModule.HorizontalText;
    v27 = v28;
  }

  sub_10023754C(v27, v26);
  v37 = v49;
  v38 = v51;
  sub_1002372D4(v49, v51, type metadata accessor for SuggestedSongsModule.Artwork);
  v39 = v54;
  sub_1000089F8(v25, v54, &qword_101185DC8, &qword_100EC16F0);
  v40 = v56;
  sub_1002372D4(v38, v56, type metadata accessor for SuggestedSongsModule.Artwork);
  v41 = sub_10010FC20(&qword_101185DE0, &qword_100EC16F8);
  sub_1000089F8(v39, v40 + *(v41 + 48), &qword_101185DC8, &qword_100EC16F0);
  sub_1000095E8(v25, &qword_101185DC8, &qword_100EC16F0);
  sub_10023754C(v37, type metadata accessor for SuggestedSongsModule.Artwork);
  sub_1000095E8(v39, &qword_101185DC8, &qword_100EC16F0);
  return sub_10023754C(v38, type metadata accessor for SuggestedSongsModule.Artwork);
}

uint64_t sub_10022B56C()
{
  v1 = type metadata accessor for UUID();
  v114 = *(v1 - 8);
  v115 = v1;
  __chkstk_darwin();
  v113 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v112 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v3;
  __chkstk_darwin();
  v121 = &v98 - v4;
  v107 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v111 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v5;
  __chkstk_darwin();
  v120 = &v98 - v6;
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v105 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v98 - v12;
  __chkstk_darwin();
  v117 = &v98 - v13;
  __chkstk_darwin();
  v104 = &v98 - v14;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v116 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v98 - v16;
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v98 - v19;
  v103 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v21 = v103[6];
  v118 = v0;
  v22 = *(v0 + v21 + 8);
  v23 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v22 + v23, v20, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023733C(v20, v18, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v18, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  sub_10012B7A8(v22 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource, &v136);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(&v136);
  if (!Strong)
  {
    return 0;
  }

  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100EBC6B0;
  *(v26 + 56) = v7;
  *(v26 + 64) = &protocol witness table for Song;
  v27 = sub_10001C8B8((v26 + 32));
  v28 = *(v8 + 16);
  v29 = v118;
  v28(v27, v118, v7);
  type metadata accessor for MusicLibrary();
  v99 = static MusicLibrary.shared.getter();
  sub_100009F78(0, &qword_10118AB70, MPCPlaybackIntent_ptr);
  v28(v10, v29, v7);
  v30 = Strong;
  v31 = MPCPlaybackIntent.init<A>(_:)();
  v32 = v104;
  PlaybackIntentDescriptor.IntentType.init(_:)(v31, v104);
  *&v138 = 0;
  v136 = 0u;
  v137 = 0u;
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v33 = qword_101218AD8;
  v34 = v117;
  sub_1000089F8(v32, v117, &unk_1011838E0, &unk_100EC1670);
  v35 = v33;
  v36 = UIViewController.playActivityInformation.getter();
  v100 = v37;
  v101 = v36;
  v39 = v38;
  v41 = v40;
  sub_1000089F8(&v136, &v128, &unk_101183910, &unk_100EBDD00);
  if (*(&v129 + 1))
  {
    sub_100059A8C(&v128, &v132);
  }

  else
  {
    *&v144 = v30;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v43 = v30;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v147, &v132);
    }

    else
    {
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
      *&v132 = v43;
      v44 = v43;
      v45 = String.init<A>(reflecting:)();
      v133 = &type metadata for Player.CommandIssuerIdentity;
      v134 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v132 = v45;
      *(&v132 + 1) = v46;
      if (*(&v148 + 1))
      {
        sub_1000095E8(&v147, &unk_101183910, &unk_100EBDD00);
      }
    }

    v34 = v117;
    if (*(&v129 + 1))
    {
      sub_1000095E8(&v128, &unk_101183910, &unk_100EBDD00);
    }
  }

  v47 = v119;
  v98 = v35;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v35, v34, v101, v39, v41, v100, &v132, v119);

  sub_1000095E8(&v136, &unk_101183910, &unk_100EBDD00);
  sub_1000095E8(v32, &unk_1011838E0, &unk_100EC1670);
  v48 = type metadata accessor for Actions.PlaybackContext(0);
  v49 = *(v48 - 8);
  (*(v49 + 56))(v47, 0, 1, v48);
  v50 = type metadata accessor for PlaylistContext(0);
  (*(*(v50 - 8) + 56))(v120, 1, 1, v50);
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v140 = 1;
  v141 = 0;
  v143 = 0;
  v142 = 0;
  v51 = v121;
  sub_1002372D4(v118 + v103[12], v121, type metadata accessor for Actions.MetricsReportingContext);
  v52 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  sub_100008FE4(v26 + 32, v135);

  sub_1000089F8(&v136, &v128, &unk_1011845E0, &unk_100EBF3A0);
  if (v131 == 1)
  {
    v149 = 0;
    v147 = 0u;
    v148 = 0u;
    v150 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v30, &v147, &v132);
    v53 = v116;
    if (v131 != 1)
    {
      sub_1000095E8(&v128, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v128, &v132);
    v53 = v116;
  }

  swift_getObjectType();
  v54 = swift_conformsToProtocol2();
  if (v54)
  {
    v104 = v54;
    v55 = v30;
    v117 = v30;
  }

  else
  {
    v117 = 0;
    v104 = 0;
  }

  v118 = swift_allocBox();
  v57 = v56;
  sub_1000089F8(v119, v53, &unk_10118AB20, &unk_100EBF390);
  v58 = *(v49 + 48);
  v59 = v58(v53, 1, v48);
  v102 = v30;
  if (v59 == 1)
  {
    v60 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v61 = v106;
    (*(*(v60 - 8) + 56))(v106, 1, 1, v60);
    v130 = 0;
    v128 = 0u;
    v129 = 0u;
    sub_1000089F8(v61, v105, &unk_1011838E0, &unk_100EC1670);
    v103 = v98;
    v62 = UIViewController.playActivityInformation.getter();
    v101 = v63;
    v65 = v64;
    v67 = v66;
    sub_1000089F8(&v128, &v126, &unk_101183910, &unk_100EBDD00);
    if (v127)
    {
      sub_100059A8C(&v126, &v144);
    }

    else
    {
      v125 = v30;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v68 = v30;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v122, &v144);
        v53 = v116;
      }

      else
      {
        v124 = 0;
        v122 = 0u;
        v123 = 0u;
        *&v144 = v68;
        v69 = v68;
        v70 = String.init<A>(reflecting:)();
        *(&v145 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v146 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v144 = v70;
        *(&v144 + 1) = v71;
        v53 = v116;
        if (*(&v123 + 1))
        {
          sub_1000095E8(&v122, &unk_101183910, &unk_100EBDD00);
        }
      }

      v30 = v102;
      if (v127)
      {
        sub_1000095E8(&v126, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v103, v105, v62, v101, v65, v67, &v144, v57);
    sub_1000095E8(&v128, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v106, &unk_1011838E0, &unk_100EC1670);
    if (v58(v53, 1, v48) != 1)
    {
      sub_1000095E8(v53, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_10023733C(v53, v57, type metadata accessor for Actions.PlaybackContext);
  }

  v72 = *(v48 + 28);
  sub_1000089F8(&v57[v72], &v144, &unk_101183910, &unk_100EBDD00);
  if (*(&v145 + 1))
  {
    sub_100059A8C(&v144, &v128);
  }

  else
  {
    *&v128 = v30;
    v73 = v30;
    v74 = String.init<A>(reflecting:)();
    *(&v129 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v130 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v128 = v74;
    *(&v128 + 1) = v75;
    if (*(&v145 + 1))
    {
      sub_1000095E8(&v144, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_100EBDC20;
  *(v76 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v76 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v76 + 32) = 0x4D747865746E6F43;
  *(v76 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v128, v76 + 72);
  v77 = static Player.CommandIssuer<>.combining(_:)(v76);
  v79 = v78;

  sub_10000959C(&v128);
  *(&v129 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v130 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v128 = v77;
  *(&v128 + 1) = v79;
  sub_10006B010(&v128, &v57[v72], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v135, &v128);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v116 = String.init<A>(describing:)();
  v106 = v80;
  v105 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v135, &v126);
  sub_10012B7A8(&v132, &v128);
  v81 = v112;
  sub_1000089F8(v121, v112, &unk_1011838D0, &unk_100EC0320);
  v82 = v111;
  sub_1000089F8(v120, v111, &unk_1011845D0, &unk_100EBF380);
  v83 = (*(v109 + 80) + 160) & ~*(v109 + 80);
  v84 = (v110 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = (*(v107 + 80) + v85 + 8) & ~*(v107 + 80);
  v110 = (v86 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + v108 + 31) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  sub_100059A8C(&v126, v88 + 16);
  *(v88 + 56) = v99;
  sub_10012B828(&v128, v88 + 64);
  sub_10003D17C(v81, v88 + v83, &unk_1011838D0, &unk_100EC0320);
  *(v88 + v84) = v105;
  *(v88 + v85) = v118;
  sub_10003D17C(v82, v88 + v86, &unk_1011845D0, &unk_100EBF380);
  v89 = v88 + v110;
  v90 = v104;
  *v89 = v117;
  *(v89 + 8) = v90;
  *(v89 + 16) = 2;
  v91 = (v88 + v87);
  *v91 = variable initialization expression of Library.Context.playlistVariants;
  v91[1] = 0;
  swift_unknownObjectRetain();

  v92 = v113;
  UUID.init()();
  v93 = UUID.uuidString.getter();
  v95 = v94;
  (*(v114 + 8))(v92, v115);
  v151._countAndFlagsBits = v116;
  v151._object = v106;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v144, v151, v93, v95, sub_1001CFB84, v88);
  swift_unknownObjectRelease();

  sub_10012BA6C(&v132);
  sub_10000959C(v135);
  sub_1000095E8(v121, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(&v136, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v120, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v119, &unk_10118AB20, &unk_100EBF390);

  ActionMenuBuilder.menu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v97 = v96;

  v136 = v144;
  sub_100015BB0(&v136);
  v132 = v145;
  sub_100015BB0(&v132);

  return v97;
}

uint64_t sub_10022C684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = sub_100248BF8();
  v12 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  if (((a2 != 0) ^ *(v11 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron)))
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v14[-2] = v11;
    LOBYTE(v14[-1]) = a2 != 0;
    v14[1] = v11;
    sub_100236DF0(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    result = (*(v7 + 8))(v10, v6);
  }

  else
  {
    result = (*(v7 + 8))(v10, v6);
    *(v11 + v12) = a2 != 0;
  }

  *a3 = v11;
  return result;
}

double sub_10022C8A0(uint64_t a1)
{
  v2 = (type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v3 = *v2;
  v4 = *(*v2 + 64);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v16[-v6];
  sub_10012B7A8(*(a1 + v2[8] + 8) + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource, v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v16);
  if (Strong)
  {
    v10 = sub_10003169C();

    if (v10)
    {
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      sub_1002372D4(a1, &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SuggestedSongsModule.SongCell);
      type metadata accessor for MainActor();

      v12 = static MainActor.shared.getter();
      v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      *(v15 + 24) = &protocol witness table for MainActor;
      sub_10023733C(v5, v15 + v13, type metadata accessor for SuggestedSongsModule.SongCell);
      *(v15 + v14) = v10;
      sub_10086E3AC(0, 0, v7, &unk_100EC1608, v15);
    }
  }

  return result;
}

uint64_t sub_10022CAF8(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v57 - v6;
  __chkstk_darwin();
  v8 = &v57 - v7;
  __chkstk_darwin();
  v10 = &v57 - v9;
  __chkstk_darwin();
  v12 = &v57 - v11;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v68 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v57 - v14;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v18 = v1 + *(v17 + 28);
  v19 = *v18;
  v20 = *(v18 + 8);
  v72[0] = v19;
  v73 = v20;
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  result = State.wrappedValue.getter();
  if (v71[0])
  {
    return result;
  }

  result = dispatch thunk of MusicSuggestedSongsViewModel.isPerformingUserInitiatedRefresh.getter();
  if (result)
  {
    return result;
  }

  v65 = v5;
  v67 = v16;
  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  v22 = Song.id.getter();
  sub_10012BF2C(v22, v23);
  v25 = v24;

  if (v25 > 1u)
  {
    if (v25 == 2)
    {
      sub_10012F360();
      v26 = 62;
      goto LABEL_13;
    }

    sub_10012C194(v2, 0);
LABEL_12:
    dispatch thunk of MusicSuggestedSongsViewModel.didPreview(_:)();
    v26 = 61;
    goto LABEL_13;
  }

  if (v25)
  {
    sub_10012E578();
    goto LABEL_12;
  }

  sub_10012F0E8();
  v26 = 62;
LABEL_13:
  v64 = v26;
  v27 = Song.catalogID.getter();
  v66 = v3;
  if (!v28)
  {
    v27 = Song.id.getter();
  }

  v29 = v27;
  v30 = v28;
  v62 = v28;
  v63 = v27;
  sub_10010FC20(&qword_1011858B0, &unk_100EC1280);
  inited = swift_initStackObject();
  v61 = xmmword_100EBDC20;
  *(inited + 16) = xmmword_100EBDC20;
  sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
  v32 = swift_initStackObject();
  *(v32 + 16) = v61;
  *(v32 + 32) = 25705;
  *(v32 + 40) = 0xE200000000000000;
  *(v32 + 48) = v29;
  *(v32 + 56) = v30;
  strcpy((v32 + 64), "locationType");
  *(v32 + 77) = 0;
  *(v32 + 78) = -5120;
  *(v32 + 80) = 0x657449666C656853;
  *(v32 + 88) = 0xE90000000000006DLL;

  v33 = sub_10010C578(v32);
  swift_setDeallocating();
  sub_10010FC20(&qword_101183AA0, &unk_100ECAF50);
  swift_arrayDestroy();
  *(inited + 32) = v33;
  v34 = sub_10010C578(&off_101099B48);
  swift_arrayDestroy();
  *(inited + 40) = v34;
  v35 = type metadata accessor for URL();
  v58 = *(*(v35 - 8) + 56);
  v58(v70, 1, 1, v35);
  *&v61 = sub_10018DA2C(inited);

  v36 = *(v2 + *(v17 + 24) + 8);
  v37 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v36 + v37, v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  v60 = sub_100222540();
  v59 = v38;
  sub_10023754C(v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_1002372D4(v36 + v37, v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_1002372D4(v10, v8, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = EnumCaseMultiPayload == 1;
  if (EnumCaseMultiPayload == 1)
  {
    v41 = v10;
  }

  else
  {
    v41 = v8;
  }

  if (v40)
  {
    v42 = v8;
  }

  else
  {
    v42 = v10;
  }

  v43 = 0x72656B636950;
  if (v40)
  {
    v43 = 0x7473696C79616C50;
  }

  v57 = v43;
  if (v40)
  {
    v44 = 0xE800000000000000;
  }

  else
  {
    v44 = 0xE600000000000000;
  }

  sub_10023754C(v41, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023754C(v42, type metadata accessor for SuggestedSongsDataSource.Placement);
  v45 = v68;
  v58(v68, 1, 1, v35);
  v46 = v69;
  sub_1002372D4(v36 + v37, v69, type metadata accessor for SuggestedSongsDataSource.Placement);
  v47 = v65;
  sub_10023733C(v46, v65, type metadata accessor for SuggestedSongsDataSource.Placement);
  LOBYTE(v46) = swift_getEnumCaseMultiPayload() == 1;
  sub_10023754C(v47, type metadata accessor for SuggestedSongsDataSource.Placement);
  v48 = v67;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v63, v62, 25, v64, v70, v61, 0, 12, v67, 0, 0, 65280, v60, v59, v57, v44, v45, 0, v46, 2, 0, 0, 0);
  v49 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v50 = sub_10053771C();
  v52 = v51;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v53 = qword_101218AD0;
  v54 = GroupActivitiesManager.hasJoined.getter();
  v55 = GroupActivitiesManager.participantsCount.getter();
  v56 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v49) + 0xB8))(v48, v50, v52, v54 & 1, v55, *(v53 + v56));

  return sub_10023754C(v48, type metadata accessor for MetricsEvent.Click);
}

double sub_10022D318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1002372D4(a2, v10, type metadata accessor for SuggestedSongsModule.SongCell);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = (v9 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_10023733C(v10, v17 + v15, type metadata accessor for SuggestedSongsModule.SongCell);
  (*(v5 + 32))(v17 + v16, v7, v4);
  sub_1001F4CB8(0, 0, v12, &unk_100EC1578, v17);

  return result;
}

uint64_t sub_10022D5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10022D66C, v7, v6);
}

uint64_t sub_10022D66C()
{
  v1 = *(v0 + 24);

  sub_10022D6D8(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10022D6D8(uint64_t a1, __n128 a2)
{
  v28 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v24 - v6;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v24 - v9;
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  v25 = *(v13 + 56);
  v25(v11, 0, 1, v12);
  v26 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v27 = v2;
  v14 = *(v2 + *(v26 + 24) + 8);
  v15 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v14 + v15, v7, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_1002372D4(v7, v5, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10023754C(v7, type metadata accessor for SuggestedSongsDataSource.Placement);
    v16 = v29;
    (*(v13 + 32))(v29, v5, v12);
    v25(v16, 0, 1, v12);
  }

  else
  {
    v16 = v29;
    dispatch thunk of MusicLibraryPlaylistViewModel.playlist.getter();

    sub_10023754C(v7, type metadata accessor for SuggestedSongsDataSource.Placement);
  }

  v17 = v30;
  sub_10003D17C(v16, v30, &unk_1011814D0, &qword_100EC12A0);
  sub_100236DF0(&qword_101185CC0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v18 = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v17, &unk_1011814D0, &qword_100EC12A0);
  result = sub_1000095E8(v11, &unk_1011814D0, &qword_100EC12A0);
  if (v18)
  {
    if (qword_10117F1F8 != -1)
    {
      swift_once();
    }

    v20 = Song.id.getter();
    sub_10012BF2C(v20, v21);
    v23 = ~v22;

    if (v23)
    {
      sub_10012F360();
    }

    return dispatch thunk of MusicSuggestedSongsViewModel.didSelect(_:)();
  }

  return result;
}

id sub_10022DACC()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v5 = &v16 - v4;
  Song.url.getter();
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &qword_101183A20, &unk_100EBCF80);
    return [objc_allocWithZone(NSItemProvider) init];
  }

  else
  {
    URL._bridgeToObjectiveC()(v8);
    v11 = v10;
    (*(v7 + 8))(v5, v6);
    v12 = v11;
    static UTType.url.getter();
    UTType.identifier.getter();
    (*(v1 + 8))(v3, v0);
    v13 = objc_allocWithZone(NSItemProvider);
    v14 = String._bridgeToObjectiveC()();

    v15 = [v13 initWithItem:v12 typeIdentifier:v14];

    return v15;
  }
}

uint64_t sub_10022DD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_10010FC20(&qword_101185CA8, &qword_100EC1518);
  sub_10022DF0C(a1, a2 + *(v5 + 44));
  UIScreen.Dimensions.size.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(a1) = static Edge.Set.all.getter();
  v14 = a2 + *(sub_10010FC20(&qword_101185C80, &qword_100EC14F8) + 36);
  *v14 = a1;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = (a2 + *(sub_10010FC20(&qword_101185C70, &qword_100EC14F0) + 36));
  *v15 = v23;
  v15[1] = v24;
  v15[2] = v25;
  v16 = (a2 + *(sub_10010FC20(&qword_101185C50, &qword_100EC14E8) + 36));
  v17 = sub_10010FC20(&qword_101185CA0, &unk_100EC1508);
  static ContentShapeKinds.dragPreview.getter();
  if (qword_10117F248 != -1)
  {
    swift_once();
  }

  v18 = qword_1012186A8;
  v19 = *(type metadata accessor for RoundedRectangle() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  result = (*(*(v21 - 8) + 104))(v16 + v19, v20, v21);
  *v16 = v18;
  v16[1] = v18;
  *(v16 + *(v17 + 36)) = 0;
  return result;
}

uint64_t sub_10022DF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v53 = type metadata accessor for ArtworkImage.ReusePolicy();
  v3 = *(v53 - 8);
  __chkstk_darwin();
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v9 = &v52 - v8;
  v10 = sub_10010FC20(&unk_1011A1400, &unk_100ECAD80);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v52 - v12;
  v14 = sub_10010FC20(&unk_10119F190, &qword_100EC1520);
  v54 = *(v14 - 8);
  v55 = v14;
  __chkstk_darwin();
  v16 = &v52 - v15;
  v56 = sub_10010FC20(&qword_101185CB0, &unk_100EC1528);
  __chkstk_darwin();
  v57 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v52 - v18;
  v20 = type metadata accessor for Song();
  v58 = a1;
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v20, &protocol witness table for Song, v9);
  if (qword_10117F250 != -1)
  {
    swift_once();
  }

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(qword_1012186B0, 0, qword_1012186B0, 0, 0, 1, 2, v62);
  v21 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v21 - 8) + 56))(v7, 1, 11, v21);
  v22 = v53;
  (*(v3 + 104))(v5, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v53);
  v23 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v9, v7, v62, v5, v13);
  (*(v3 + 8))(v5, v22, v23);
  sub_10023754C(v7, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v9, &unk_10118A5E0, &unk_100EBCD90);
  if (qword_10117F258 != -1)
  {
    swift_once();
  }

  v24 = qword_1012186B8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.corner(_:)(v24, -1, 0, v10, OpaqueTypeConformance2);
  (*(v11 + 8))(v13, v10);
  v26 = Border.artwork.unsafeMutableAddressor();
  v27 = *v26;
  v28 = *(v26 + 1);
  v29 = *(v26 + 16);

  v60 = v10;
  v61 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v24;
  v32 = v55;
  View.border(_:corner:)(v27, v29, v31, -1, 0, v55, v30, v28);

  (*(v54 + 8))(v16, v32);
  v33 = static Edge.Set.trailing.getter();
  if (qword_10117F260 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v34 = &v19[*(v56 + 36)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v60 = Song.title.getter();
  v61 = v39;
  sub_100009838();
  v40 = Text.init<A>(_:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  KeyPath = swift_getKeyPath();
  v48 = v57;
  sub_1000089F8(v19, v57, &qword_101185CB0, &unk_100EC1528);
  v49 = v59;
  sub_1000089F8(v48, v59, &qword_101185CB0, &unk_100EC1528);
  v50 = v49 + *(sub_10010FC20(&qword_101185CB8, &qword_100EC1568) + 48);
  *v50 = v40;
  *(v50 + 8) = v42;
  v44 &= 1u;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = KeyPath;
  *(v50 + 40) = 1;
  *(v50 + 48) = 0;
  sub_10021D0C0(v40, v42, v44);

  sub_1000095E8(v19, &qword_101185CB0, &unk_100EC1528);
  sub_10011895C(v40, v42, v44);

  return sub_1000095E8(v48, &qword_101185CB0, &unk_100EC1528);
}

uint64_t sub_10022E5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  v5[46] = swift_task_alloc();
  v6 = type metadata accessor for Song();
  v5[47] = v6;
  v7 = *(v6 - 8);
  v5[48] = v7;
  v5[49] = *(v7 + 64);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[54] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[55] = v9;
  v5[56] = v8;

  return _swift_task_switch(sub_10022E724, v9, v8);
}

uint64_t sub_10022E724()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v32 = *(v0 + 400);
  v3 = *(v0 + 384);
  v29 = *(v0 + 408);
  v30 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v6 = *(v0 + 352);
  v33 = *(v0 + 360);
  v7 = *(v3 + 16);
  v7(v2, v6, v5);
  type metadata accessor for MusicLibrary();
  v25 = static MusicLibrary.shared.getter();
  v8 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v31 = v4;
  sub_1002372D4(v6 + *(v8 + 48), v4, type metadata accessor for Actions.MetricsReportingContext);
  v9 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v26 = MusicLibrary.state<A>(for:)();
  v10 = Song.albumTitle.getter();
  v27 = v11;
  v28 = v10;
  v7(v1, v2, v5);
  v7(v29, v2, v5);
  v12 = *(v3 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v25;
  v15 = *(v3 + 32);
  v15(v14 + v13, v29, v5);
  *(v14 + ((v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v15(v32, v2, v5);
  v16 = (v12 + 25) & ~v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v26;
  *(v17 + 24) = 2;
  v15(v17 + v16, v32, v5);
  *(v17 + ((v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)(v1, v28, v27, sub_10023AFC4, v14, &unk_100EC1620, v17, v31, (v0 + 272), v5, &protocol witness table for Song);
  static Actions.GoToAlbum.action(context:)((v0 + 272), v0 + 16);
  *(v0 + 336) = *(v0 + 272);

  sub_1000095E8(v0 + 336, &qword_1011815E0, &qword_100EBD050);

  v18 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v18;
  v19 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v19;
  v20 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v20;
  v21 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v21;
  v22 = swift_task_alloc();
  *(v0 + 456) = v22;
  v23 = sub_10010FC20(&qword_101185D70, &unk_100EC1630);
  *v22 = v0;
  v22[1] = sub_10022EAC0;

  return Action.execute(checkSupportedStatus:)(v23, 1, v23);
}

uint64_t sub_10022EAC0()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 448);
  if (v0)
  {
    v5 = sub_10022EC98;
  }

  else
  {
    v5 = sub_10022EBD4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10022EBD4()
{
  sub_1000095E8(v0 + 16, &qword_101185D70, &unk_100EC1630);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022EC98()
{

  sub_1000095E8(v0 + 16, &qword_101185D70, &unk_100EC1630);

  v1 = *(v0 + 8);

  return v1();
}

void sub_10022ED58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_10022EDD4();
  }

  else
  {
    type metadata accessor for SuggestedSongsModule.SongCell(0);
    sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
    State.wrappedValue.setter();
  }
}

void sub_10022EDD4()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v62 = &v58 - v2;
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v59 = *(v64 - 8);
  __chkstk_darwin();
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v58 - v6;
  v60 = v8;
  __chkstk_darwin();
  v10 = &v58 - v9;
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, qword_101219770);
  sub_1002372D4(v0, v10, type metadata accessor for SuggestedSongsModule.SongCell);
  sub_1002372D4(v0, v7, type metadata accessor for SuggestedSongsModule.SongCell);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v68 = v0;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock = v67;
    *v15 = 136446466;
    type metadata accessor for Song();
    sub_100236DF0(&unk_101183F40, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_10023754C(v10, type metadata accessor for SuggestedSongsModule.SongCell);
    v19 = sub_1000105AC(v16, v18, &aBlock);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = v64;
    v21 = *&v7[*(v64 + 24) + 8];
    v22 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
    swift_beginAccess();
    sub_1002372D4(v21 + v22, v4, type metadata accessor for SuggestedSongsDataSource.Placement);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_10023754C(v7, type metadata accessor for SuggestedSongsModule.SongCell);
    v26 = sub_1000105AC(v23, v25, &aBlock);

    *(v15 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v12, v13, "Preparing to add song=%{public}s from the suggested songs module to placement=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v1 = v68;
  }

  else
  {

    sub_10023754C(v7, type metadata accessor for SuggestedSongsModule.SongCell);
    sub_10023754C(v10, type metadata accessor for SuggestedSongsModule.SongCell);
    v20 = v64;
  }

  v27 = *(*(v1 + *(v20 + 24) + 8) + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_updateReceivers);
  v28 = sub_100009F78(0, &qword_101197A30, NSObject_ptr);

  v29 = static MPMediaLibraryFilteringOptions.none.getter();
  if (v29 != WeakArray.endIndex.getter(v27, v28, v30, v31))
  {
    LODWORD(v67) = enum case for Track.song(_:);
    v63 = &v71;
    v66 = xmmword_100EBC6B0;
    do
    {
      v42 = WeakArray.subscript.getter(v29, v27, v28, v32);
      v29 = FixedLengthCollection.index(after:)(v29);
      if (v42)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          sub_10010FC20(&qword_101193E80, &unk_100ECF120);
          v43 = type metadata accessor for Track();
          v44 = *(v43 - 8);
          v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
          v46 = swift_allocObject();
          *(v46 + 16) = v66;
          v47 = type metadata accessor for Song();
          (*(*(v47 - 8) + 16))(v46 + v45, v68, v47);
          (*(v44 + 104))(v46 + v45, v67, v43);
          v48 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
          swift_beginAccess();
          sub_1000089F8(v42 + v48, &aBlock, &unk_1011926C0, &unk_100ECF870);
          if (v70)
          {

            sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
            continue;
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
          if (Strong)
          {
            v65 = sub_1006A6078();

            v50 = swift_allocObject();
            *(v50 + 16) = v42;
            *(v50 + 24) = v46;
            v51 = swift_allocObject();
            *(v51 + 16) = sub_10023AA08;
            *(v51 + 24) = v50;
            v73 = sub_100029B94;
            v74 = v51;
            aBlock = _NSConcreteStackBlock;
            v70 = 1107296256;
            v71 = sub_100029B9C;
            v72 = &unk_1010A1BC0;
            v52 = _Block_copy(&aBlock);
            v53 = v42;

            v54 = swift_allocObject();
            *(v54 + 16) = v53;
            v73 = sub_10023AA10;
            v74 = v54;
            aBlock = _NSConcreteStackBlock;
            v70 = 1107296256;
            v71 = sub_1005C3688;
            v72 = &unk_1010A1C10;
            v55 = _Block_copy(&aBlock);
            v56 = v53;

            v57 = v65;
            [v65 performBatchUpdates:v52 completion:v55];

            _Block_release(v55);
            _Block_release(v52);

            continue;
          }
        }
      }
    }

    while (v29 != WeakArray.endIndex.getter(v27, v28, v40, v41));
  }

  v33 = v68;
  dispatch thunk of MusicSuggestedSongsViewModel.didSelect(_:)();
  v34 = type metadata accessor for TaskPriority();
  v35 = v62;
  (*(*(v34 - 8) + 56))(v62, 1, 1, v34);
  v36 = v61;
  sub_1002372D4(v33, v61, type metadata accessor for SuggestedSongsModule.SongCell);
  type metadata accessor for MainActor();
  v37 = static MainActor.shared.getter();
  v38 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = &protocol witness table for MainActor;
  sub_10023733C(v36, v39 + v38, type metadata accessor for SuggestedSongsModule.SongCell);
  sub_1001F4CB8(0, 0, v35, &unk_100EC1590, v39);
}

double sub_10022F770(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + *(type metadata accessor for SuggestedSongsModule.SongCell(0) + 24) + 8) + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_updateReceivers);
  v4 = sub_100009F78(0, &qword_101197A30, NSObject_ptr);

  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  if (v5 != WeakArray.endIndex.getter(v3, v4, v6, v7))
  {
    v10 = enum case for Track.song(_:);
    do
    {
      v18 = WeakArray.subscript.getter(v5, v3, v4, v8);
      v5 = FixedLengthCollection.index(after:)(v5);
      if (v18)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          sub_10010FC20(&qword_101193E80, &unk_100ECF120);
          v11 = type metadata accessor for Track();
          v12 = *(v11 - 8);
          v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_100EBC6B0;
          v15 = type metadata accessor for Song();
          (*(*(v15 - 8) + 16))(v14 + v13, a2, v15);
          (*(v12 + 104))(v14 + v13, v10, v11);
          sub_10081E1F4(v14, a1);
        }

        else
        {
        }
      }
    }

    while (v5 != WeakArray.endIndex.getter(v3, v4, v16, v17));
  }

  return result;
}

uint64_t sub_10022F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v6;
  v4[13] = v5;

  return _swift_task_switch(sub_10022FABC, v6, v5);
}

uint64_t sub_10022FABC()
{
  v1 = v0[10];
  v2 = *(v0[6] + *(v0[7] + 24) + 8);
  v3 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v2 + v3, v1, type metadata accessor for SuggestedSongsDataSource.Placement);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_10022FBAC;
  v5 = v0[6];

  return sub_100230294(v5);
}

uint64_t sub_10022FBAC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 120) = v0;

  sub_10023754C(v3, type metadata accessor for SuggestedSongsDataSource.Placement);
  v4 = *(v2 + 104);
  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_10022FF84;
  }

  else
  {
    v6 = sub_10022FD18;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10022FD18()
{
  v17 = v0;

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101219770);
  sub_1002372D4(v2, v1, type metadata accessor for SuggestedSongsModule.SongCell);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    type metadata accessor for Song();
    sub_100236DF0(&unk_101183F40, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10023754C(v7, type metadata accessor for SuggestedSongsModule.SongCell);
    v13 = sub_1000105AC(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully added song=%{public}s from the suggested songs module", v8, 0xCu);
    sub_10000959C(v9);
  }

  else
  {

    sub_10023754C(v7, type metadata accessor for SuggestedSongsModule.SongCell);
  }

  sub_10022F770(0, v0[6]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10022FF84()
{
  v22 = v0;

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101219770);
  sub_1002372D4(v2, v1, type metadata accessor for SuggestedSongsModule.SongCell);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136446466;
    type metadata accessor for Song();
    sub_100236DF0(&unk_101183F40, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_10023754C(v7, type metadata accessor for SuggestedSongsModule.SongCell);
    v12 = sub_1000105AC(v9, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v0[5] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v21);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to add song=%{public}s from the suggested songs with error=%{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v0[8];

    sub_10023754C(v16, type metadata accessor for SuggestedSongsModule.SongCell);
  }

  v17 = v0[15];
  v18 = v0[6];
  swift_errorRetain();
  sub_10022F770(v17, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100230294(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Playlist();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for Track();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100230448, 0, 0);
}

uint64_t sub_100230448()
{
  sub_1002372D4(v0[3], v0[15], type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    (*(v0[8] + 32))(v0[10], v2, v0[7]);
    type metadata accessor for MusicLibrary();
    v0[19] = static MusicLibrary.shared.getter();
    (*(v4 + 104))(v3, enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.includeDuplicates(_:), v5);
    v6 = swift_task_alloc();
    v0[20] = v6;
    v7 = type metadata accessor for Song();
    *v6 = v0;
    v6[1] = sub_1002308C4;
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[6];
    v11 = v0[2];

    return MusicLibrary.add<A>(_:to:duplicatePolicy:importAllowedHandler:)(v8, v11, v9, v10, 0, 0, v7, &protocol witness table for Song);
  }

  else
  {
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];
    v15 = v0[2];
    v0[16] = *v2;
    v16 = type metadata accessor for Song();
    (*(*(v16 - 8) + 16))(v12, v15, v16);
    (*(v13 + 104))(v12, enum case for Track.song(_:), v14);
    v21 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistViewModel.append<A>(_:) + async function pointer to dispatch thunk of MusicLibraryPlaylistViewModel.append<A>(_:));
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_1002306B4;
    v18 = v0[13];
    v19 = v0[11];

    return v21(v18, v19, &protocol witness table for Track);
  }
}

uint64_t sub_1002306B4()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100230B1C;
  }

  else
  {
    v5 = sub_100230824;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100230824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002308C4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_100230BC4;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[4];
    v9 = v2[5];

    (*(v9 + 8))(v7, v8);
    v10 = *(v5 + 8);
    v2[22] = v10;
    v2[23] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v3 = sub_100230A74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100230A74()
{
  (*(v0 + 176))(*(v0 + 80), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100230B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100230BC4()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

__n128 sub_100230C80@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v24[-v7];
  sub_10010FC20(&qword_101186060, &qword_100EC1928);
  __chkstk_darwin();
  v10 = &v24[-v9];
  v11 = sub_10010FC20(&qword_101186068, &qword_100EC1930);
  __chkstk_darwin();
  v13 = &v24[-v12];
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v14 = sub_10010FC20(&qword_101186070, &qword_100EC1938);
  sub_100231070(v1, &v10[*(v14 + 44)]);
  type metadata accessor for SuggestedSongsModule.VerticalText(0);
  sub_10056CABC(v8);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v4 + 104))(v6, enum case for DynamicTypeSize.accessibility3(_:), v3);
    static DynamicTypeSize.< infix(_:_:)();
    v15 = *(v4 + 8);
    v15(v6, v3);
    v15(v8, v3);
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v10, v13, &qword_101186060, &qword_100EC1928);
  v16 = &v13[*(v11 + 36)];
  v17 = v28;
  v16[4] = v27;
  v16[5] = v17;
  v16[6] = v29;
  v18 = *&v24[24];
  *v16 = *&v24[8];
  v16[1] = v18;
  v19 = v26;
  v16[2] = v25;
  v16[3] = v19;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v13, a1, &qword_101186068, &qword_100EC1930);
  v20 = a1 + *(sub_10010FC20(&qword_101186078, &unk_100EC1940) + 36);
  v21 = v35;
  *(v20 + 64) = v34;
  *(v20 + 80) = v21;
  *(v20 + 96) = v36;
  v22 = v31;
  *v20 = v30;
  *(v20 + 16) = v22;
  result = v33;
  *(v20 + 32) = v32;
  *(v20 + 48) = result;
  return result;
}

uint64_t sub_100231070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_10010FC20(&qword_101186080, &qword_100EDC260);
  v129 = *(v3 - 8);
  v130 = v3;
  __chkstk_darwin();
  v128 = &v106 - v4;
  sub_10010FC20(&qword_101186088, &unk_100EC1950);
  __chkstk_darwin();
  v132 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v106 - v6;
  v109 = type metadata accessor for Text.Suffix();
  v108 = *(v109 - 8);
  __chkstk_darwin();
  v106 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10010FC20(&qword_101186090, &unk_100EDC2B0);
  __chkstk_darwin();
  v111 = &v106 - v8;
  v118 = sub_10010FC20(&qword_101186098, &qword_100EC1960);
  __chkstk_darwin();
  v112 = &v106 - v9;
  v113 = sub_10010FC20(&qword_1011860A0, &unk_100EC1968);
  __chkstk_darwin();
  v115 = &v106 - v10;
  v114 = sub_10010FC20(&qword_101184C80, &qword_100EC0810);
  __chkstk_darwin();
  v107 = &v106 - v11;
  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011860A8, &qword_100EC1978);
  __chkstk_darwin();
  v127 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v106 - v17;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v19 = &v106 - v18;
  Song.contentRating.getter();
  v20 = TextBadge.init(for:isPlayable:)(v19, 1);
  v21 = TextBadge.view.getter(v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v117 = *(type metadata accessor for SuggestedSongsModule.VerticalText(0) + 20);
  sub_10056CABC(v15);
  LOBYTE(v19) = DynamicTypeSize.isAccessibilitySize.getter();
  v28 = *(v13 + 8);
  v119 = v15;
  v121 = v12;
  v120 = v13 + 8;
  v116 = v28;
  v28(v15, v12);
  v126 = a1;
  v29 = Song.title.getter();
  v125 = v27;
  v124 = v21;
  v123 = v23;
  v122 = v25;
  v135 = v29;
  v136 = v30;
  sub_100009838();
  if (v19)
  {
    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    v36 = static Text.+ infix(_:_:)();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_10011895C(v31, v33, v35 & 1);

    v135 = v36;
    v136 = v38;
    v40 &= 1u;
    v137 = v40;
    v138 = v42;
    v43 = AccessibilityIdentifier.playlistSuggestedSongsCellTitle.unsafeMutableAddressor();
    v44 = *v43;
    v45 = v43[1];
    v47 = v43[2];
    v46 = v43[3];

    v48 = v107;
    View.accessibilityIdentifier(_:)(v44, v45, v47, v46, &type metadata for Text, &protocol witness table for Text);

    sub_10011895C(v36, v38, v40);

    sub_1000089F8(v48, v115, &qword_101184C80, &qword_100EC0810);
    swift_storeEnumTagMultiPayload();
    sub_10023BAD4();
    sub_100238500(&qword_1011860C8, &qword_101186098, &qword_100EC1960, sub_10023B9EC);
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v48, &qword_101184C80, &qword_100EC0810);
  }

  else
  {
    v49 = Text.init<A>(_:)();
    v51 = v50;
    v135 = v49;
    v136 = v50;
    v53 = v52 & 1;
    v137 = v52 & 1;
    v138 = v54;
    v55 = v106;
    static Text.Suffix.alwaysVisible(_:)();
    v56 = v111;
    View.textSuffix(_:)();
    (*(v108 + 8))(v55, v109);
    sub_10011895C(v49, v51, v53);

    KeyPath = swift_getKeyPath();
    v58 = v110;
    v59 = v56 + *(v110 + 36);
    *v59 = KeyPath;
    *(v59 + 8) = 1;
    *(v59 + 16) = 0;
    v60 = AccessibilityIdentifier.playlistSuggestedSongsCellTitle.unsafeMutableAddressor();
    v61 = *v60;
    v62 = v60[1];
    v63 = v60[2];
    v64 = v60[3];
    v65 = sub_10023B9EC();

    v66 = v112;
    View.accessibilityIdentifier(_:)(v61, v62, v63, v64, v58, v65);

    sub_1000095E8(v56, &qword_101186090, &unk_100EDC2B0);
    sub_1000089F8(v66, v115, &qword_101186098, &qword_100EC1960);
    swift_storeEnumTagMultiPayload();
    sub_10023BAD4();
    sub_100238500(&qword_1011860C8, &qword_101186098, &qword_100EC1960, sub_10023B9EC);
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v66, &qword_101186098, &qword_100EC1960);
  }

  v135 = Song.artistName.getter();
  v136 = v67;
  sub_100009838();
  v68 = Text.init<A>(_:)();
  v70 = v69;
  v72 = v71;
  if (qword_10117FBD8 != -1)
  {
    swift_once();
  }

  v73 = Text.font(_:)();
  v75 = v74;
  v77 = v76;
  sub_10011895C(v68, v70, v72 & 1);

  LODWORD(v135) = static HierarchicalShapeStyle.secondary.getter();
  v78 = Text.foregroundStyle<A>(_:)();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  sub_10011895C(v73, v75, v77 & 1);

  v85 = v119;
  sub_10056CABC(v119);
  v86 = DynamicTypeSize.isAccessibilitySize.getter();
  v116(v85, v121);
  v87 = swift_getKeyPath();
  v135 = v78;
  v136 = v80;
  v137 = v82 & 1;
  v138 = v84;
  v139 = v87;
  v140 = (v86 & 1) == 0;
  v141 = v86 & 1;
  if (qword_10117FBC8 != -1)
  {
    swift_once();
  }

  v88 = sub_10010FC20(&qword_1011860D0, &qword_100EC1980);
  v89 = sub_10023BB90();
  v90 = v128;
  View.minimumLineHeight(_:)();
  sub_10011895C(v78, v80, v82 & 1);

  v91 = AccessibilityIdentifier.playlistSuggestedSongsCellArtistName.unsafeMutableAddressor();
  v92 = *v91;
  v93 = v91[1];
  v94 = v91[2];
  v95 = v91[3];

  v135 = v88;
  v136 = v89;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = v131;
  v98 = v92;
  v99 = v130;
  View.accessibilityIdentifier(_:)(v98, v93, v94, v95, v130, OpaqueTypeConformance2);

  (*(v129 + 8))(v90, v99);
  v100 = v134;
  v101 = v127;
  sub_1000089F8(v134, v127, &qword_1011860A8, &qword_100EC1978);
  v102 = v132;
  sub_1000089F8(v97, v132, &qword_101186088, &unk_100EC1950);
  v103 = v133;
  sub_1000089F8(v101, v133, &qword_1011860A8, &qword_100EC1978);
  v104 = sub_10010FC20(&qword_1011860E0, &qword_100EC1988);
  sub_1000089F8(v102, v103 + *(v104 + 48), &qword_101186088, &unk_100EC1950);
  sub_10011895C(v124, v123, v122 & 1);

  sub_1000095E8(v97, &qword_101186088, &unk_100EC1950);
  sub_1000095E8(v100, &qword_1011860A8, &qword_100EC1978);
  sub_1000095E8(v102, &qword_101186088, &unk_100EC1950);
  return sub_1000095E8(v101, &qword_1011860A8, &qword_100EC1978);
}

__n128 sub_100231D34@<Q0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011860E8, &qword_100EC1990);
  __chkstk_darwin();
  v4 = v10 - v3;
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = sub_10010FC20(&qword_1011860F0, &qword_100EC1998);
  sub_100231E90(v1, &v4[*(v5 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v4, a1, &qword_1011860E8, &qword_100EC1990);
  v6 = a1 + *(sub_10010FC20(&qword_1011860F8, &qword_100EC19A0) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_100231E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a1;
  v132 = a2;
  v130 = sub_10010FC20(&qword_101186100, &qword_100EC19A8);
  v128 = *(v130 - 8);
  __chkstk_darwin();
  v110[0] = v110 - v2;
  v126 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v125 = v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = v110 - v4;
  sub_10010FC20(&qword_101186108, &qword_100EC19B0);
  __chkstk_darwin();
  v131 = v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v133 = v110 - v6;
  sub_10010FC20(&qword_101186110, &qword_100EC19B8);
  __chkstk_darwin();
  v129 = v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v135 = v110 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v119 = *(v9 - 8);
  v120 = v9;
  __chkstk_darwin();
  v117 = v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = v110 - v11;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v111 = v110 - v12;
  v123 = type metadata accessor for Text.Suffix();
  v115 = *(v123 - 8);
  __chkstk_darwin();
  v112 = v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10010FC20(&qword_101186090, &unk_100EDC2B0) - 8;
  __chkstk_darwin();
  v113 = v110 - v14;
  v121 = sub_10010FC20(&qword_101186118, &qword_100EC19C0);
  __chkstk_darwin();
  v122 = v110 - v15;
  sub_10010FC20(&qword_101186120, &qword_100EC19C8);
  __chkstk_darwin();
  v127 = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = v110 - v17;
  *&v149 = Song.title.getter();
  *(&v149 + 1) = v18;
  v118 = sub_100009838();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.callout.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v110[1] = v29;

  sub_10011895C(v19, v21, v23 & 1);

  *&v149 = v24;
  *(&v149 + 1) = v26;
  LOBYTE(v21) = v28 & 1;
  LOBYTE(v150) = v28 & 1;
  *(&v150 + 1) = v30;
  v31 = v111;
  Song.contentRating.getter();
  v32 = TextBadge.init(for:isPlayable:)(v31, 1);
  v33 = TextBadge.view.getter(v32);
  v35 = v34;
  v37 = v36;
  v38 = v112;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v33, v35, v37 & 1);

  v39 = v113;
  View.textSuffix(_:)();
  (*(v115 + 8))(v38, v123);
  v40 = v24;
  v41 = v39;
  sub_10011895C(v40, v26, v21);

  KeyPath = swift_getKeyPath();
  v43 = &v39[*(v114 + 44)];
  *v43 = KeyPath;
  *(v43 + 1) = 1;
  v43[16] = 0;
  v123 = type metadata accessor for SuggestedSongsModule.HorizontalText(0);
  v44 = v116;
  sub_10056CABC(v116);
  v46 = v119;
  v45 = v120;
  v47 = v117;
  (*(v119 + 104))(v117, enum case for DynamicTypeSize.accessibility1(_:), v120);
  LOBYTE(v26) = static DynamicTypeSize.< infix(_:_:)();
  v48 = *(v46 + 8);
  v48(v47, v45);
  v48(v44, v45);
  if (v26)
  {
    sub_100232B94();
  }

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v49 = v122;
  sub_10003D17C(v41, v122, &qword_101186090, &unk_100EDC2B0);
  v50 = v121;
  v51 = (v49 + *(v121 + 36));
  v52 = v162;
  *v51 = v161;
  v51[1] = v52;
  v51[2] = v163;
  v53 = AccessibilityIdentifier.playlistSuggestedSongsCellTitle.unsafeMutableAddressor();
  v54 = *v53;
  v55 = v53[1];
  v56 = v53[2];
  v57 = v53[3];
  v58 = sub_10023BC48();

  View.accessibilityIdentifier(_:)(v54, v55, v56, v57, v50, v58);

  sub_1000095E8(v49, &qword_101186118, &qword_100EC19C0);
  *&v149 = Song.artistName.getter();
  *(&v149 + 1) = v59;
  v60 = Text.init<A>(_:)();
  v62 = v61;
  v64 = v63;
  static Font.callout.getter();
  v65 = Text.font(_:)();
  v67 = v66;
  v69 = v68;
  v71 = v70;

  sub_10011895C(v60, v62, v64 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v159 = v69 & 1;
  LODWORD(v60) = static HierarchicalShapeStyle.secondary.getter();
  v72 = swift_getKeyPath();
  v160 = 0;
  *&v139 = v65;
  *(&v139 + 1) = v67;
  LOBYTE(v140) = v69 & 1;
  *(&v140 + 1) = v71;
  v145 = v148[6];
  v146 = v148[7];
  v147 = v148[8];
  v141 = v148[2];
  v142 = v148[3];
  v143 = v148[4];
  v144 = v148[5];
  LODWORD(v148[0]) = v60;
  *(&v148[0] + 1) = v72;
  *&v148[1] = 1;
  BYTE8(v148[1]) = 0;
  v73 = AccessibilityIdentifier.playlistSuggestedSongsCellArtistName.unsafeMutableAddressor();
  v74 = *v73;
  v75 = v73[1];
  v76 = v73[2];
  v77 = v73[3];

  v78 = sub_10010FC20(&qword_101186130, &qword_100EC19D0);
  v79 = sub_10023BCD4();
  v80 = v76;
  v81 = v134;
  View.accessibilityIdentifier(_:)(v74, v75, v80, v77, v78, v79);
  v82 = 1;

  v157 = v147;
  v158[0] = v148[0];
  *(v158 + 9) = *(v148 + 9);
  v153 = v143;
  v154 = v144;
  v155 = v145;
  v156 = v146;
  v149 = v139;
  v150 = v140;
  v151 = v141;
  v152 = v142;
  sub_1000095E8(&v149, &qword_101186130, &qword_100EC19D0);
  v83 = v123;
  v84 = *(v81 + *(v123 + 20) + 8);
  v85 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  v86 = v84 + v85;
  v87 = v124;
  sub_1002372D4(v86, v124, type metadata accessor for SuggestedSongsDataSource.Placement);
  v88 = v125;
  sub_10023733C(v87, v125, type metadata accessor for SuggestedSongsDataSource.Placement);
  LODWORD(v87) = swift_getEnumCaseMultiPayload();
  sub_10023754C(v88, type metadata accessor for SuggestedSongsDataSource.Placement);
  v89 = v130;
  if (v87 == 1)
  {
    v90 = Song.duration.getter();
    if (v91)
    {
      v82 = 1;
    }

    else
    {
      v92 = v110[0];
      *v110[0] = v90;
      v93 = type metadata accessor for SuggestedSongsModule.DurationView(0);
      v94 = *(v93 + 20);
      *(v92 + v94) = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
      swift_storeEnumTagMultiPayload();
      v95 = *(v93 + 24);
      *(v92 + v95) = swift_getKeyPath();
      sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
      swift_storeEnumTagMultiPayload();
      v96 = v81 + *(v83 + 28);
      v97 = *(v96 + 16);
      v137 = *v96;
      v138 = v97;
      sub_10010FC20(&qword_101186158, &qword_100EC19E8);
      State.projectedValue.getter();
      v98 = *(&v139 + 1);
      v99 = v140;
      v100 = v92 + *(v89 + 36);
      *v100 = v139;
      *(v100 + 8) = v98;
      *(v100 + 16) = v99;
      sub_10003D17C(v92, v133, &qword_101186100, &qword_100EC19A8);
      v82 = 0;
    }
  }

  v101 = v133;
  (*(v128 + 56))(v133, v82, 1, v89);
  v102 = v127;
  sub_1000089F8(v136, v127, &qword_101186120, &qword_100EC19C8);
  v103 = v135;
  v104 = v129;
  sub_1000089F8(v135, v129, &qword_101186110, &qword_100EC19B8);
  v105 = v131;
  sub_1000089F8(v101, v131, &qword_101186108, &qword_100EC19B0);
  v106 = v132;
  sub_1000089F8(v102, v132, &qword_101186120, &qword_100EC19C8);
  v107 = sub_10010FC20(&qword_101186150, &qword_100EC19E0);
  v108 = v106 + v107[12];
  *v108 = 0x4030000000000000;
  *(v108 + 8) = 0;
  sub_1000089F8(v104, v106 + v107[16], &qword_101186110, &qword_100EC19B8);
  sub_1000089F8(v105, v106 + v107[20], &qword_101186108, &qword_100EC19B0);
  sub_1000095E8(v101, &qword_101186108, &qword_100EC19B0);
  sub_1000095E8(v103, &qword_101186110, &qword_100EC19B8);
  sub_1000095E8(v136, &qword_101186120, &qword_100EC19C8);
  sub_1000095E8(v105, &qword_101186108, &qword_100EC19B0);
  sub_1000095E8(v104, &qword_101186110, &qword_100EC19B8);
  return sub_1000095E8(v102, &qword_101186120, &qword_100EC19C8);
}

double sub_100232B94()
{
  v1 = v0;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v3 = (v34 - v2);
  v35 = type metadata accessor for DynamicTypeSize();
  v4 = *(v35 - 8);
  __chkstk_darwin();
  v34[0] = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (v34 - v6);
  v8 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v36 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v34 - v10;
  v12 = type metadata accessor for SuggestedSongsModule.HorizontalText(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  v13 = *&v38;
  v14 = *(v12 + 24);
  sub_1002372D4(v1 + v14, v11, type metadata accessor for SuggestedSongsDataSource.Placement);
  v34[1] = v8;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v11, type metadata accessor for SuggestedSongsDataSource.Placement);
  v16 = 16.0;
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }

    if (byte_101184EE8)
    {
      v16 = 24.0;
    }

    else
    {
      v16 = 20.0;
    }
  }

  sub_10056CABC(v7);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v4 + 8))(v7, v35);
    v17 = 48.0;
  }

  else
  {
    v18 = v34[0];
    v19 = v35;
    (*(v4 + 104))(v34[0], enum case for DynamicTypeSize.accessibility3(_:), v35);
    v20 = static DynamicTypeSize.< infix(_:_:)();
    v21 = *(v4 + 8);
    v21(v18, v19);
    v21(v7, v19);
    if (v20)
    {
      v17 = 48.0;
    }

    else
    {
      v17 = 72.0;
    }
  }

  sub_10056CAE4(v3);
  v22 = sub_10023951C(v3);
  sub_1000095E8(v3, &unk_101184290, &qword_100EC0E60);
  v23 = (v1 + *(v12 + 28));
  v24 = *(v23 + 2);
  v38 = *v23;
  v39 = v24;
  sub_10010FC20(&qword_101186158, &qword_100EC19E8);
  State.wrappedValue.getter();
  v25 = v37[0];
  v26 = v36;
  sub_1002372D4(v1 + v14, v36, type metadata accessor for SuggestedSongsDataSource.Placement);
  v27 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v26, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v27 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }

    if (byte_101184EE8)
    {
      v28 = 44.0;
    }

    else
    {
      v28 = 28.0;
    }
  }

  else
  {
    v29 = [objc_opt_self() defaultMetrics];
    [v29 scaledValueForValue:24.0];
    v28 = v30;
  }

  v31 = v13 - v16 - v17 + -12.0 - (v22 + v22) - v25 - v28;
  sub_10056CAE4(v3);
  v32 = sub_10022205C(v3);
  sub_1000095E8(v3, &unk_101184290, &qword_100EC0E60);
  return v31 - v32;
}

__n128 sub_1002330F8@<Q0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v60 = type metadata accessor for DynamicTypeSize();
  v59 = *(v60 - 8);
  __chkstk_darwin();
  v54 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v54 - v2;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v57 = (&v54 - v3);
  v4 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Duration.TimeFormatStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10010FC20(&qword_101186288, &qword_100EC1B18);
  __chkstk_darwin();
  v55 = &v54 - v12;
  sub_10010FC20(&qword_101186290, &qword_100EC1B20);
  __chkstk_darwin();
  v14 = &v54 - v13;
  static Duration.seconds(_:)();
  static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
  static FormatStyle<>.time(pattern:)();
  (*(v5 + 8))(v7, v4);
  sub_100236DF0(&qword_101186298, &type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
  Duration.formatted<A>(_:)();
  (*(v9 + 8))(v11, v8);
  v62 = v63;
  sub_100009838();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.callout.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  LOBYTE(v5) = v23;
  v25 = v24;

  sub_10011895C(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v27 = static HierarchicalShapeStyle.secondary.getter();
  v28 = v5 & 1;
  v29 = v14;
  v73 = v28;
  v72 = 0;
  *&v63 = v20;
  *(&v63 + 1) = v22;
  LOBYTE(v64) = v28;
  *(&v64 + 1) = v62;
  DWORD1(v64) = *(&v62 + 3);
  *(&v64 + 1) = v25;
  *&v65 = KeyPath;
  *(&v65 + 1) = 1;
  v66.n128_u8[0] = 0;
  *(v66.n128_u16 + 1) = v70;
  v66.n128_u8[3] = v71;
  v66.n128_u32[1] = v27;
  sub_10010FC20(&qword_1011862A0, &qword_100EC1B28);
  sub_10023C8E4();
  v30 = v55;
  View.monospacedDigit()();
  sub_10011895C(v20, v22, v28);

  LOBYTE(v20) = static Edge.Set.leading.getter();
  type metadata accessor for SuggestedSongsModule.DurationView(0);
  v31 = v57;
  sub_10056CAE4(v57);
  sub_10023951C(v31);
  sub_1000095E8(v31, &unk_101184290, &qword_100EC0E60);
  EdgeInsets.init(_all:)();
  v32 = v56;
  v33 = v30 + *(v56 + 36);
  *v33 = v20;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  *(v33 + 32) = v37;
  *(v33 + 40) = 0;
  v38 = AccessibilityIdentifier.playlistSuggestedSongsCellDuration.unsafeMutableAddressor();
  v39 = *v38;
  v40 = v38[1];
  v41 = v38[2];
  v42 = v38[3];
  v43 = sub_10023C99C();

  View.accessibilityIdentifier(_:)(v39, v40, v41, v42, v32, v43);
  v44 = v58;

  sub_1000095E8(v30, &qword_101186288, &qword_100EC1B18);
  sub_10056CABC(v44);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v59 + 8))(v44, v60);
  }

  else
  {
    v45 = v59;
    v46 = v54;
    v47 = v60;
    (*(v59 + 104))(v54, enum case for DynamicTypeSize.accessibility3(_:), v60);
    static DynamicTypeSize.< infix(_:_:)();
    v48 = *(v45 + 8);
    v48(v46, v47);
    v48(v44, v47);
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v49 = v61;
  sub_10003D17C(v29, v61, &qword_101186290, &qword_100EC1B20);
  v50 = v49 + *(sub_10010FC20(&qword_1011862B8, &qword_100EC1B30) + 36);
  v51 = v68;
  *(v50 + 64) = v67;
  *(v50 + 80) = v51;
  *(v50 + 96) = v69;
  v52 = v64;
  *v50 = v63;
  *(v50 + 16) = v52;
  result = v66;
  *(v50 + 32) = v65;
  *(v50 + 48) = result;
  return result;
}

uint64_t sub_100233878@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v84 = type metadata accessor for ArtworkImage.ReusePolicy();
  v83 = *(v84 - 8);
  __chkstk_darwin();
  v82 = &v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v81 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v77 - v7;
  __chkstk_darwin();
  v10 = &v77 - v9;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v12 = &v77 - v11;
  v13 = sub_10010FC20(&unk_1011A1400, &unk_100ECAD80);
  v86 = *(v13 - 8);
  __chkstk_darwin();
  v85 = &v77 - v14;
  v97 = sub_10010FC20(&qword_101186168, &qword_100EC19F0);
  __chkstk_darwin();
  v87 = &v77 - v15;
  v16 = sub_10010FC20(&qword_101186170, &qword_100EC19F8);
  v92 = *(v16 - 8);
  v93 = v16;
  __chkstk_darwin();
  v89 = &v77 - v17;
  v18 = sub_10010FC20(&qword_101186178, &qword_100EC1A00);
  v90 = *(v18 - 8);
  v91 = v18;
  __chkstk_darwin();
  v88 = &v77 - v19;
  v94 = sub_10010FC20(&qword_101186180, &qword_100EC1A08);
  __chkstk_darwin();
  v95 = &v77 - v20;
  v21 = type metadata accessor for Song();
  v80 = v12;
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v21, &protocol witness table for Song, v12);
  type metadata accessor for SuggestedSongsModule.Artwork(0);
  sub_10056CABC(v10);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    v22 = *(v4 + 8);
    v22(v10, v3);
    sub_10056CABC(v6);
    v22(v6, v3);
    v23 = 0x4048000000000000;
    v24 = 0x4048000000000000;
  }

  else
  {
    v78 = enum case for DynamicTypeSize.accessibility3(_:);
    v79 = v13;
    v77 = *(v4 + 104);
    v77(v8);
    v25 = static DynamicTypeSize.< infix(_:_:)();
    v26 = v6;
    v27 = *(v4 + 8);
    v27(v8, v3);
    v27(v10, v3);
    if (v25)
    {
      v23 = 0x4048000000000000;
    }

    else
    {
      v23 = 0x4052000000000000;
    }

    sub_10056CABC(v26);
    (v77)(v8, v78, v3);
    v13 = v79;
    v28 = static DynamicTypeSize.< infix(_:_:)();
    v27(v8, v3);
    v27(v26, v3);
    if (v28)
    {
      v24 = 0x4048000000000000;
    }

    else
    {
      v24 = 0x4052000000000000;
    }
  }

  v29 = v87;
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v23, 0, v24, 0, 0, 1, 2, v100);
  v30 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  v31 = v81;
  (*(*(v30 - 8) + 56))(v81, 1, 11, v30);
  v32 = v83;
  v33 = v82;
  v34 = v84;
  (*(v83 + 104))(v82, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v84);
  v35 = v85;
  v36 = v80;
  v37 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v80, v31, v100, v33, v85);
  (*(v32 + 8))(v33, v34, v37);
  sub_10023754C(v31, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v36, &unk_10118A5E0, &unk_100EBCD90);
  v38 = Song.id.getter();
  if (qword_10117F1F8 != -1)
  {
    v75 = v38;
    v76 = v39;
    swift_once();
    v39 = v76;
    v38 = v75;
  }

  v40 = v29 + *(v97 + 36);
  *v40 = v38;
  *(v40 + 8) = v39;
  *(v40 + 16) = 256;
  v41 = qword_10117F5F8;

  if (v41 != -1)
  {
    swift_once();
  }

  *(v40 + 24) = (*(*qword_101218AC8 + 408))();
  type metadata accessor for PreviewPlaybackController(0);
  sub_100236DF0(&qword_101185730, type metadata accessor for PreviewPlaybackController, &unk_100EBD1C0);
  *(v40 + 32) = ObservedObject.init(wrappedValue:)();
  *(v40 + 40) = v42;
  v43 = *(type metadata accessor for PreviewOverlay.ArtworkVariant(0) + 36);
  *(v40 + v43) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  (*(v86 + 32))(v29, v35, v13);
  if (qword_10117FBA8 != -1)
  {
    swift_once();
  }

  v44 = xmmword_101219340;
  v45 = byte_101219350;
  v46 = sub_10023C2D8();
  v47 = v89;
  v48 = v97;
  View.corner(_:)(v44, *(&v44 + 1), v45, v97, v46);
  sub_1000095E8(v29, &qword_101186168, &qword_100EC19F0);
  v49 = Border.artwork.unsafeMutableAddressor();
  v50 = v48;
  v51 = *v49;
  v52 = *(v49 + 1);
  v53 = *(v49 + 16);

  v98 = v50;
  v99 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v88;
  v56 = v93;
  View.border(_:corner:)(v51, v53, v44, *(&v44 + 1), v45, v93, OpaqueTypeConformance2, v52);

  (*(v92 + 8))(v47, v56);
  LOBYTE(v56) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v95;
  (*(v90 + 32))(v95, v55, v91);
  v66 = v94;
  v67 = v65 + *(v94 + 36);
  *v67 = v56;
  *(v67 + 8) = v58;
  *(v67 + 16) = v60;
  *(v67 + 24) = v62;
  *(v67 + 32) = v64;
  *(v67 + 40) = 0;
  v68 = AccessibilityIdentifier.playlistSuggestedSongsCellArtwork.unsafeMutableAddressor();
  v69 = *v68;
  v70 = v68[1];
  v71 = v68[2];
  v72 = v68[3];
  v73 = sub_10023C3AC();

  View.accessibilityIdentifier(_:)(v69, v70, v71, v72, v66, v73);

  return sub_1000095E8(v65, &qword_101186180, &qword_100EC1A08);
}

void sub_100234378()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_101184EE8 = v1 == 6;
}

uint64_t sub_1002343DC()
{
  sub_10010FC20(&qword_101185770, &unk_100EC10C0);
  __chkstk_darwin();
  v2 = &aBlock[-1] - v1;
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  v3 = byte_101184EE8;
  sub_1002372D4(v0, v2, type metadata accessor for SuggestedSongsDataSource.Placement);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (v3)
    {
      v21 = type metadata accessor for Material();
      v22 = &protocol witness table for Material;
      sub_10001C8B8(&v20);
      static Material.ultraThin.getter();
    }

    else
    {
      v7 = objc_allocWithZone(UIColor);
      v18 = sub_100234720;
      v19 = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10003640C;
      v17 = &unk_1010A19B8;
      v8 = _Block_copy(aBlock);
      [v7 initWithDynamicProvider:v8];
      _Block_release(v8);

      v9 = Color.init(_:)();
      v21 = &type metadata for Color;
      v22 = &protocol witness table for Color;
      *&v20 = v9;
    }

    sub_10023754C(v2, type metadata accessor for SuggestedSongsDataSource.Placement);
  }

  else
  {
    sub_10023754C(v2, type metadata accessor for SuggestedSongsDataSource.Placement);
    v4 = [objc_opt_self() whiteColor];
    v5 = [v4 colorWithAlphaComponent:0.05];

    v6 = Color.init(_:)();
    v21 = &type metadata for Color;
    v22 = &protocol witness table for Color;
    *&v20 = v6;
  }

  sub_100059A8C(&v20, aBlock);
  sub_10000954C(aBlock, v17);
  v10 = __chkstk_darwin();
  (*(v12 + 16))(&aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v13 = AnyShapeStyle.init<A>(_:)();
  sub_10000959C(aBlock);
  return v13;
}

id sub_100234720(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  sub_100009F78(0, &qword_101180C98, UIColor_ptr);
  if (v1 == 2)
  {
    v2 = 21;
    v3 = 21;
    v4 = 23;
  }

  else
  {
    v2 = 244;
    v3 = 244;
    v4 = 245;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v2, v3, v4, 1.0);
}

uint64_t sub_1002347B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002343DC();
  *a1 = result;
  return result;
}

__n128 sub_1002347DC(uint64_t a1)
{
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  if (byte_101184EE8 == 1)
  {
    v1 = Corner.large.unsafeMutableAddressor();
  }

  else
  {
    v1 = Corner.small.unsafeMutableAddressor();
  }

  v2 = v1[1].n128_i8[0];
  result = *v1;
  xmmword_101184EF0 = *v1;
  byte_101184F00 = v2;
  return result;
}

uint64_t sub_100234854()
{
  if (qword_10117F390 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_101184EE8)
  {
    v0 = 10.0;
  }

  qword_101184F08 = *&v0;
  return result;
}

uint64_t sub_1002348BC()
{
  if (qword_10117F390 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_101184EE8)
  {
    v0 = 8.0;
  }

  qword_101184F10 = *&v0;
  return result;
}

void sub_100234938()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  Animation.delay(_:)();

  AnyTransition.animation(_:)();

  static UnitPoint.center.getter();
  static AnyTransition.scale(scale:anchor:)();
  static Animation.easeIn(duration:)();
  Animation.delay(_:)();

  AnyTransition.animation(_:)();

  v0 = AnyTransition.combined(with:)();

  qword_101184F20 = v0;
}

void sub_100234A5C()
{
  if (qword_10117F3B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10117F3C0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = static AnyTransition.asymmetric(insertion:removal:)();

  qword_101184F30 = v1;
}

void sub_100234B28()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  Animation.delay(_:)();

  v0 = AnyTransition.animation(_:)();

  qword_101184F38 = v0;
}

void sub_100234BC0(double a1, uint64_t a2, uint64_t *a3)
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  v4 = AnyTransition.animation(_:)();

  *a3 = v4;
}

void sub_100234C28()
{
  if (qword_10117F3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_10117F3D8;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = static AnyTransition.asymmetric(insertion:removal:)();

  qword_101184F48 = v1;
}

uint64_t sub_100234CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v56 = a1;
  v57 = a2;
  v5 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin();
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10010FC20(&qword_101185648, &qword_100EC0FD8);
  __chkstk_darwin();
  v8 = &v49 - v7;
  v50 = sub_10010FC20(&qword_101185650, &qword_100EC0FE0);
  __chkstk_darwin();
  v10 = &v49 - v9;
  v11 = sub_10010FC20(&qword_101185658, &qword_100EC0FE8);
  __chkstk_darwin();
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v49 - v13;
  v14 = sub_10010FC20(&qword_101185660, &qword_100EC0FF0);
  __chkstk_darwin();
  v16 = &v49 - v15;
  sub_10010FC20(&qword_101185668, &qword_100EC0FF8);
  __chkstk_darwin();
  v18 = &v49 - v17;
  v19 = type metadata accessor for SuggestedSongsModule.Background(0);
  v20 = *(v4 + *(v19 + 20));
  sub_1002372D4(v4, v18, type metadata accessor for SuggestedSongsDataSource.Placement);
  v53 = v5;
  LODWORD(v5) = swift_getEnumCaseMultiPayload() == 1;
  sub_10023754C(v18, type metadata accessor for SuggestedSongsDataSource.Placement);
  if ((v5 ^ v20))
  {
    v49 = v14;
    v21 = v11;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v22 = sub_10010FC20(&qword_101185670, &qword_100EC1000);
    v23 = *(*(v22 - 8) + 16);
    v24 = v56;
    v56 = v22;
    v23(v8, v24);
    v25 = &v8[*(v51 + 36)];
    v26 = v63;
    *(v25 + 4) = v62;
    *(v25 + 5) = v26;
    *(v25 + 6) = v64;
    v27 = v59;
    *v25 = v58;
    *(v25 + 1) = v27;
    v28 = v61;
    *(v25 + 2) = v60;
    *(v25 + 3) = v28;
    v29 = &v10[*(v50 + 36)];
    sub_1002372D4(v4, v29, type metadata accessor for SuggestedSongsDataSource.Placement);
    v30 = static Edge.Set.all.getter();
    *(v29 + *(sub_10010FC20(&qword_101185678, &qword_100EC1008) + 36)) = v30;
    sub_10003D17C(v8, v10, &qword_101185648, &qword_100EC0FD8);
    v31 = v52;
    sub_1002372D4(v4 + *(v19 + 24), v52, type metadata accessor for SuggestedSongsDataSource.Placement);
    LODWORD(v29) = swift_getEnumCaseMultiPayload();
    sub_10023754C(v31, type metadata accessor for SuggestedSongsDataSource.Placement);
    if (v29 == 1)
    {
      v32 = v11;
      if (qword_10117F390 != -1)
      {
        swift_once();
      }

      if (byte_101184EE8)
      {
        v33 = 20.0;
      }

      else
      {
        v33 = 10.0;
      }
    }

    else
    {
      v36 = [objc_opt_self() currentTraitCollection];
      static Corner.collectionViewBackgroundCornerRadius(traitCollection:)();
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v33 = Corner.radius(in:)(v38, 0.0, 0.0, 0.0, 0.0, v40, v42);
      v32 = v21;
    }

    v43 = v54;
    v44 = &v54[*(v32 + 36)];
    v45 = *(type metadata accessor for RoundedRectangle() + 20);
    v46 = enum case for RoundedCornerStyle.continuous(_:);
    v47 = type metadata accessor for RoundedCornerStyle();
    (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
    *v44 = v33;
    v44[1] = v33;
    *(v44 + *(sub_10010FC20(&qword_101185680, &qword_100EC1010) + 36)) = 256;
    sub_10003D17C(v10, v43, &qword_101185650, &qword_100EC0FE0);
    v48 = v55;
    sub_10003D17C(v43, v55, &qword_101185658, &qword_100EC0FE8);
    sub_1000089F8(v48, v16, &qword_101185658, &qword_100EC0FE8);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101185688, &qword_101185670, &qword_100EC1000, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100237AE0();
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v48, &qword_101185658, &qword_100EC0FE8);
  }

  else
  {
    v34 = sub_10010FC20(&qword_101185670, &qword_100EC1000);
    (*(*(v34 - 8) + 16))(v16, v56, v34);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101185688, &qword_101185670, &qword_100EC1000, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100237AE0();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100235458(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for GeometryProxy();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = static Color.clear.getter();
  (*(v13 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  (*(v13 + 32))(v17 + v16, &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *a4 = v15;
  a4[1] = sub_10023C87C;
  a4[2] = v17;
  a4[3] = 0;
  a4[4] = 0;
}

uint64_t sub_1002355CC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  GeometryProxy.size.getter();
  sub_10010FC20(&qword_101186280, &qword_100EC1B10);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100235648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  *(v9 + 4) = v7;
  *(v9 + 5) = v8;

  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = sub_10010FC20(&qword_101186270, &qword_100EC1B00);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_10010FC20(&qword_101186278, &qword_100EC1B08);
  v15 = (a2 + *(result + 36));
  *v15 = sub_10023C870;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

double sub_100235744()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1002357B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double sub_10023582C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = v12 - v2 + 16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    static ApplicationCapabilities.shared.getter(v12);
    sub_100014984(v12);
    v7 = v12[1];
    swift_getKeyPath();
    swift_getKeyPath();
    v13[0] = v7;

    static Published.subscript.setter();
    static ApplicationCapabilities.shared.getter(v13);
    sub_100014984(v13);
    if (v13[1])
    {
      v8 = *(dispatch thunk of MusicSuggestedSongsViewModel.suggestedSongs.getter() + 16);

      if (!v8)
      {
        v9 = type metadata accessor for TaskPriority();
        (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
        v10 = swift_allocObject();
        v10[2] = 0;
        v10[3] = 0;
        v10[4] = v6;

        sub_1001F4CB8(0, 0, v3, &unk_100EC0C90, v10);
      }
    }
  }

  return result;
}

uint64_t sub_100235A2C()
{
  v3 = (&async function pointer to dispatch thunk of MusicSuggestedSongsViewModel.refresh() + async function pointer to dispatch thunk of MusicSuggestedSongsViewModel.refresh());
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100235AD4;

  return v3();
}

uint64_t sub_100235AD4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100235C08, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100235C08()
{
  v14 = v0;
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[5];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to refresh suggested songs after regaining network connectivity with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100235DD8()
{

  sub_10023754C(v0 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10012BA6C(v0 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource);

  v1 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource__availableWidth;
  v2 = sub_10010FC20(&qword_101180F88, &qword_100EBCA98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource__hasNetworkConnectivity;
  v4 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_100235F0C()
{
  sub_100235DD8();

  return swift_deallocClassInstance();
}

void sub_100235F8C(uint64_t a1, __n128 a2)
{
  type metadata accessor for SuggestedSongsDataSource.Placement(319);
  if (v2 <= 0x3F)
  {
    sub_1002377D0(319, &qword_101180DB0, &type metadata for CGFloat, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      sub_1002377D0(319, &qword_10119ED80, &type metadata for Bool, &type metadata accessor for Published);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100236130@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SuggestedSongsDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

double sub_100236170@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = static Alignment.center.getter();
  v10 = v9;
  v11 = a3 + *(sub_10010FC20(&qword_101185AE0, &qword_100EC13D8) + 36);
  v12 = type metadata accessor for Song();
  (*(*(v12 - 8) + 16))(v11, v5, v12);
  v13 = (v5 + *(a2 + 20));
  v15 = *v13;
  v14 = v13[1];
  v16 = (v11 + *(type metadata accessor for TaggedViewResolver(0) + 20));
  *v16 = v15;
  v16[1] = v14;
  v17 = (v11 + *(sub_10010FC20(&qword_101185AE8, &qword_100EC13E0) + 36));
  *v17 = v8;
  v17[1] = v10;
  v18 = sub_10010FC20(&qword_101185AF0, &qword_100EC13E8);
  (*(*(v18 - 8) + 16))(a3, a1, v18);

  return result;
}

double sub_100236398()
{
  v1 = OBJC_IVAR____TtCV5Music18TaggedViewResolver4View_song;
  v2 = type metadata accessor for Song();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

id sub_100236414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TaggedViewResolver.View(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002364F4(uint64_t a1)
{
  result = type metadata accessor for Song();
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

uint64_t sub_1002365E0(uint64_t a1)
{
  result = type metadata accessor for MusicLibraryPlaylistViewModel();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Playlist();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100236654(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Song();
  v4 = __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2, v4);
  v8 = (v2 + *(a2 + 20));
  v9 = *v8;
  v10 = v8[1];
  v11 = objc_allocWithZone(type metadata accessor for TaggedViewResolver.View(0));

  v12 = sub_10023BE64(v6, v9, v10);

  return v12;
}

uint64_t sub_1002367A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100236DF0(&qword_101186160, type metadata accessor for TaggedViewResolver, &unk_100EC17F4);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10023683C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100236DF0(&qword_101186160, type metadata accessor for TaggedViewResolver, &unk_100EC17F4);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1002368D0(uint64_t a1)
{
  sub_100236DF0(&qword_101186160, type metadata accessor for TaggedViewResolver, &unk_100EC17F4);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100236928(void *a1)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for Song();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenericMusicItem();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v38 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin();
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210, &unk_100EC0C30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBE260;
  v11 = type metadata accessor for DragDropToLibrary(0);
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_100236DF0(&qword_101185218, type metadata accessor for DragDropToLibrary, &unk_100ED84CC);
  v12 = sub_10001C8B8((v10 + 32));
  v13 = *(v4 + 16);
  v13(v12, v2, v3);
  v14 = enum case for GenericMusicItem.song(_:);
  v35 = v7;
  v15 = *(v7 + 104);
  v15(v12, enum case for GenericMusicItem.song(_:), v6);
  *(v12 + *(v11 + 20)) = 1;
  *(v10 + 96) = &type metadata for DragDropToPlaylist;
  *(v10 + 104) = sub_100236D7C();
  v16 = swift_allocObject();
  *(v10 + 72) = v16;
  *(v16 + 40) = v3;
  *(v16 + 48) = &protocol witness table for Song;
  *(v16 + 56) = &protocol witness table for Song;
  v17 = sub_10001C8B8((v16 + 16));
  v18 = v37;
  v13(v17, v37, v3);
  v19 = type metadata accessor for SuggestedSong(0);
  v20 = v18;
  v21 = (v18 + *(v19 + 20));
  v22 = v21[1];
  *(v16 + 64) = *v21;
  *(v16 + 72) = v22;
  *(v16 + 80) = 2;
  v23 = v38;
  v13(v38, v20, v3);
  v15(v23, v14, v6);
  v24 = v33;
  if (v33)
  {

    v25 = v24;
  }

  else
  {
    sub_100009F78(0, &qword_10118AB70, MPCPlaybackIntent_ptr);
    v13(v32, v37, v3);

    v23 = v38;
    v25 = MPCPlaybackIntent.init<A>(_:)();
  }

  v26 = v36;
  (*(v35 + 32))(v36, v23, v6);
  *(v26 + *(v34 + 20)) = v25;
  v27 = type metadata accessor for DragDropToQueue(0);
  *(v10 + 136) = v27;
  *(v10 + 144) = sub_100236DF0(&qword_101185228, type metadata accessor for DragDropToQueue, &unk_100EE1F7C);
  v28 = sub_10001C8B8((v10 + 112));
  sub_10023733C(v26, v28, type metadata accessor for DragDropToQueue.Origin);
  *(v28 + *(v27 + 20)) = 3;
  v29 = v24;
  return v10;
}

unint64_t sub_100236D7C()
{
  result = qword_101185220;
  if (!qword_101185220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185220);
  }

  return result;
}

uint64_t sub_100236DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100236E38(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100236EB8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100236F2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100235A0C(a1, v4, v5, v6);
}

void sub_100237048(uint64_t a1)
{
  sub_100237120(319);
  if (v1 <= 0x3F)
  {
    sub_1002371B4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SuggestedSongsModule.Specs(319);
      if (v3 <= 0x3F)
      {
        sub_1002377D0(319, &qword_101197850, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100237120(uint64_t a1)
{
  if (!qword_101185298)
  {
    type metadata accessor for MusicSuggestedSongsViewModel();
    sub_100236DF0(&qword_1011852A0, &type metadata accessor for MusicSuggestedSongsViewModel, &protocol conformance descriptor for MusicSuggestedSongsViewModel);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_101185298);
    }
  }
}

void sub_1002371B4(uint64_t a1)
{
  if (!qword_1011852A8)
  {
    type metadata accessor for SuggestedSongsDataSource(255);
    sub_100236DF0(&qword_1011A4A60, type metadata accessor for SuggestedSongsDataSource, &unk_100EC0BF4);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1011852A8);
    }
  }
}

uint64_t sub_1002372D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023733C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002373A4(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for SuggestedSongsModule(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10021E7BC(a1, a2, v6);
}

unint64_t sub_100237424()
{
  result = qword_101185418;
  if (!qword_101185418)
  {
    sub_1001109D0(&qword_101185400, &qword_100EC0D80);
    sub_100020674(&qword_101185420, &qword_101185428, &qword_100EC0D98, &protocol conformance descriptor for VStack<A>);
    sub_100236DF0(&qword_101185430, type metadata accessor for SuggestedSongsModule.Background, &unk_100EC0F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185418);
  }

  return result;
}

uint64_t sub_10023754C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002375D4(uint64_t a1)
{
  result = type metadata accessor for SuggestedSongsDataSource.Placement(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SuggestedSongsModule.Specs(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100237698(uint64_t a1)
{
  sub_100237120(319);
  if (v1 <= 0x3F)
  {
    sub_1002371B4(319);
    if (v2 <= 0x3F)
    {
      sub_1002377D0(319, &qword_101185550, &type metadata for Bool, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SuggestedSongsModule.Specs(319);
        if (v4 <= 0x3F)
        {
          sub_10023B4F4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_100237820(319);
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

void sub_1002377D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100237820(uint64_t a1)
{
  if (!qword_101185558)
  {
    sub_1001109D0(&unk_101184290, &qword_100EC0E60);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_101185558);
    }
  }
}

void sub_1002378AC(uint64_t a1)
{
  sub_100237120(319);
  if (v1 <= 0x3F)
  {
    sub_1002371B4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SuggestedSongsModule.Specs(319);
      if (v3 <= 0x3F)
      {
        sub_100237820(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100237960()
{
  result = qword_101185630;
  if (!qword_101185630)
  {
    sub_1001109D0(&qword_101185638, qword_100EC0E78);
    sub_1001109D0(&qword_101185400, &qword_100EC0D80);
    sub_100237424();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185630);
  }

  return result;
}

unint64_t sub_100237A70()
{
  result = qword_101185640;
  if (!qword_101185640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185640);
  }

  return result;
}

unint64_t sub_100237AE0()
{
  result = qword_101185690;
  if (!qword_101185690)
  {
    sub_1001109D0(&qword_101185658, &qword_100EC0FE8);
    sub_100237B98();
    sub_100020674(&qword_1011A16F0, &qword_101185680, &qword_100EC1010, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185690);
  }

  return result;
}

unint64_t sub_100237B98()
{
  result = qword_101185698;
  if (!qword_101185698)
  {
    sub_1001109D0(&qword_101185650, &qword_100EC0FE0);
    sub_100237C50();
    sub_100020674(&qword_1011856A8, &qword_101185678, &qword_100EC1008, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185698);
  }

  return result;
}

unint64_t sub_100237C50()
{
  result = qword_1011856A0;
  if (!qword_1011856A0)
  {
    sub_1001109D0(&qword_101185648, &qword_100EC0FD8);
    sub_100020674(&qword_101185688, &qword_101185670, &qword_100EC1000, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011856A0);
  }

  return result;
}

uint64_t sub_100237D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SuggestedSongsModule.ContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100223244(a1, v6, a2);
}

uint64_t sub_100237DA8()
{
  v1 = type metadata accessor for SuggestedSongsModule.ContentView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Playlist();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[8];
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[9];
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_100238058()
{
  v1 = *(type metadata accessor for SuggestedSongsModule.ContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Song() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_100224864(v0 + v2, v5);
}

unint64_t sub_100238124()
{
  result = qword_101185808;
  if (!qword_101185808)
  {
    sub_1001109D0(&qword_1011857C0, &qword_100EC1110);
    sub_1002381DC();
    sub_100020674(&qword_101185858, &qword_10119A1A0, &qword_100EC1180, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185808);
  }

  return result;
}

unint64_t sub_1002381DC()
{
  result = qword_101185810;
  if (!qword_101185810)
  {
    sub_1001109D0(&qword_1011857B8, &qword_100EC1108);
    sub_10023AC64(&qword_101185818, &qword_1011857B0, &qword_100EC1100, sub_100238294);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185810);
  }

  return result;
}

unint64_t sub_100238294()
{
  result = qword_101185820;
  if (!qword_101185820)
  {
    sub_1001109D0(&qword_101185828, &unk_100EC1150);
    sub_100020674(&qword_101180F58, &qword_101199ED0, &qword_100ED89A0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1001109D0(&qword_101185830, &qword_100EC1160);
    sub_1001109D0(&qword_101185838, &qword_100EC1168);
    type metadata accessor for PlainButtonStyle();
    sub_10023841C();
    sub_100236DF0(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185820);
  }

  return result;
}

unint64_t sub_10023841C()
{
  result = qword_101185840;
  if (!qword_101185840)
  {
    sub_1001109D0(&qword_101185838, &qword_100EC1168);
    sub_100020674(&qword_101185848, &qword_101185850, &unk_100EC1170, &protocol conformance descriptor for Button<A>);
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185840);
  }

  return result;
}

uint64_t sub_100238500(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    sub_100236DF0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002385E8()
{
  result = qword_101185880;
  if (!qword_101185880)
  {
    sub_1001109D0(&qword_101185878, &qword_100EC1198);
    sub_1002386A0();
    sub_100020674(&qword_101185898, &qword_1011858A0, &qword_100EC11B8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185880);
  }

  return result;
}

unint64_t sub_1002386A0()
{
  result = qword_101185888;
  if (!qword_101185888)
  {
    sub_1001109D0(&qword_101185890, &unk_100EC11A0);
    sub_1001109D0(&unk_1011A1100, &unk_100ED3F40);
    sub_100238768();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185888);
  }

  return result;
}

unint64_t sub_100238768()
{
  result = qword_10119A230;
  if (!qword_10119A230)
  {
    sub_1001109D0(&unk_1011A1100, &unk_100ED3F40);
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A230);
  }

  return result;
}

uint64_t sub_100238820(uint64_t a1)
{
  v4 = *(type metadata accessor for SuggestedSongsModule.HeaderView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_1002227B8(a1, v6, v7, v1 + v5);
}

uint64_t sub_100238924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002389A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100238A34(uint64_t a1)
{
  result = type metadata accessor for SuggestedSongsDataSource.Placement(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100238AC8(uint64_t a1)
{
  result = type metadata accessor for Song();
  if (v2 <= 0x3F)
  {
    result = sub_10001F7E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100238B74(uint64_t a1)
{
  type metadata accessor for Song();
  if (v1 <= 0x3F)
  {
    sub_100237120(319);
    if (v2 <= 0x3F)
    {
      sub_1002371B4(319);
      if (v3 <= 0x3F)
      {
        sub_1002377D0(319, &qword_101197850, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SuggestedSongsModule.Specs(319);
          if (v5 <= 0x3F)
          {
            sub_100238CF4(319);
            if (v6 <= 0x3F)
            {
              sub_10023B4F4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                sub_100237820(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Actions.MetricsReportingContext(319);
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
    }
  }
}

void sub_100238CF4(uint64_t a1)
{
  if (!qword_101185A40)
  {
    type metadata accessor for PreviewPlaybackController(255);
    sub_100236DF0(&qword_101185730, type metadata accessor for PreviewPlaybackController, &unk_100EBD1C0);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_101185A40);
    }
  }
}

unint64_t sub_100238D88()
{
  result = qword_101185A90;
  if (!qword_101185A90)
  {
    sub_1001109D0(&qword_101185A98, qword_100EC12E0);
    sub_100020674(&qword_101185688, &qword_101185670, &qword_100EC1000, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100237AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185A90);
  }

  return result;
}

unint64_t sub_100238E40()
{
  result = qword_101185AA0;
  if (!qword_101185AA0)
  {
    sub_1001109D0(&qword_1011856F0, &qword_100EC1040);
    sub_100238ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AA0);
  }

  return result;
}

unint64_t sub_100238ECC()
{
  result = qword_101185AA8;
  if (!qword_101185AA8)
  {
    sub_1001109D0(&qword_1011856B8, &qword_100EC1020);
    sub_100020674(&qword_101185AB0, &qword_1011856B0, &qword_100EC1018, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AA8);
  }

  return result;
}

unint64_t sub_100238F84()
{
  result = qword_101185AB8;
  if (!qword_101185AB8)
  {
    sub_1001109D0(&qword_1011857A8, &qword_100EC10F8);
    sub_100239010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AB8);
  }

  return result;
}

unint64_t sub_100239010()
{
  result = qword_101185AC0;
  if (!qword_101185AC0)
  {
    sub_1001109D0(&qword_101185798, &qword_100EC10E8);
    sub_10023909C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AC0);
  }

  return result;
}

unint64_t sub_10023909C()
{
  result = qword_101185AC8;
  if (!qword_101185AC8)
  {
    sub_1001109D0(&qword_101185790, &qword_100EC10E0);
    sub_100239128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AC8);
  }

  return result;
}

unint64_t sub_100239128()
{
  result = qword_101185AD0;
  if (!qword_101185AD0)
  {
    sub_1001109D0(&qword_101185788, &qword_100EC10D8);
    sub_100020674(&qword_101185AD8, &qword_101185780, &qword_100EC10D0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AD0);
  }

  return result;
}

unint64_t sub_1002392E4()
{
  result = qword_101185B98;
  if (!qword_101185B98)
  {
    sub_1001109D0(&qword_101185B90, &qword_100EC1488);
    sub_10023939C();
    sub_100020674(&qword_101185898, &qword_1011858A0, &qword_100EC11B8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185B98);
  }

  return result;
}

unint64_t sub_10023939C()
{
  result = qword_101185BA0;
  if (!qword_101185BA0)
  {
    sub_1001109D0(&qword_101185BA8, &qword_100EC1490);
    sub_100239428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185BA0);
  }

  return result;
}

unint64_t sub_100239428()
{
  result = qword_101185BB0;
  if (!qword_101185BB0)
  {
    sub_1001109D0(&qword_101185BB8, &unk_100EDD6F0);
    sub_1001109D0(&unk_1011A1100, &unk_100ED3F40);
    sub_100238768();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0, &qword_100EC0AD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185BB0);
  }

  return result;
}

double sub_10023951C(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101185768, &qword_100EDBB70);
  __chkstk_darwin();
  v8 = &v18 - v7;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v18 - v11;
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  result = 9.0;
  if ((byte_101184EE8 & 1) == 0)
  {
    (*(v3 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v2, 9.0);
    (*(v3 + 56))(v12, 0, 1, v2);
    v14 = *(v6 + 48);
    sub_1000089F8(a1, v8, &unk_101184290, &qword_100EC0E60);
    sub_1000089F8(v12, &v8[v14], &unk_101184290, &qword_100EC0E60);
    v15 = *(v3 + 48);
    if (v15(v8, 1, v2) == 1)
    {
      sub_1000095E8(v12, &unk_101184290, &qword_100EC0E60);
      if (v15(&v8[v14], 1, v2) == 1)
      {
        sub_1000095E8(v8, &unk_101184290, &qword_100EC0E60);
        return 10.0;
      }
    }

    else
    {
      sub_1000089F8(v8, v10, &unk_101184290, &qword_100EC0E60);
      if (v15(&v8[v14], 1, v2) != 1)
      {
        (*(v3 + 32))(v5, &v8[v14], v2);
        sub_100236DF0(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        v17 = *(v3 + 8);
        v17(v5, v2);
        sub_1000095E8(v12, &unk_101184290, &qword_100EC0E60);
        v17(v10, v2);
        sub_1000095E8(v8, &unk_101184290, &qword_100EC0E60);
        result = 10.0;
        if (v16)
        {
          return result;
        }

        return 16.0;
      }

      sub_1000095E8(v12, &unk_101184290, &qword_100EC0E60);
      (*(v3 + 8))(v10, v2);
    }

    sub_1000095E8(v8, &qword_101185768, &qword_100EDBB70);
    return 16.0;
  }

  return result;
}

unint64_t sub_100239948()
{
  result = qword_101185BC8;
  if (!qword_101185BC8)
  {
    sub_1001109D0(&qword_101185B78, &qword_100EC1470);
    sub_100239A00();
    sub_100020674(&qword_101185BF0, &qword_101185BF8, &qword_100EC14D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185BC8);
  }

  return result;
}

unint64_t sub_100239A00()
{
  result = qword_101185BD0;
  if (!qword_101185BD0)
  {
    sub_1001109D0(&qword_101185B70, &qword_100EC1468);
    sub_100239A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185BD0);
  }

  return result;
}

unint64_t sub_100239A8C()
{
  result = qword_101185BD8;
  if (!qword_101185BD8)
  {
    sub_1001109D0(&qword_101185B68, &qword_100EC1460);
    sub_1001109D0(&qword_101185B58, &qword_100EC1450);
    sub_1001109D0(&qword_101185B50, &qword_100EC1448);
    type metadata accessor for PlainButtonStyle();
    sub_100020674(&qword_101185BC0, &qword_101185B50, &qword_100EC1448, &protocol conformance descriptor for Button<A>);
    sub_100236DF0(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_101185BE0, &qword_101185BE8, &qword_100EDC400, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185BD8);
  }

  return result;
}

uint64_t sub_100239C40()
{
  v1 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = type metadata accessor for Song();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Playlist();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  v6 = v1[10];
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  v8 = v1[11];
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v2 + v1[12];
  if (*(v11 + 8) >= 0xDuLL)
  {
  }

  v12 = v11 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 20);
  v13 = type metadata accessor for MetricsEvent.Page(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {

    v14 = *(v13 + 24);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v12 + v14, 1, v15))
    {
      (*(v16 + 8))(v12 + v14, v15);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_10023A090()
{
  result = qword_101185C10;
  if (!qword_101185C10)
  {
    sub_1001109D0(&qword_101185B10, &qword_100EC1408);
    sub_10023A11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C10);
  }

  return result;
}

unint64_t sub_10023A11C()
{
  result = qword_101185C18;
  if (!qword_101185C18)
  {
    sub_1001109D0(&qword_101185B08, &qword_100EC1400);
    sub_10023A1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C18);
  }

  return result;
}

unint64_t sub_10023A1A8()
{
  result = qword_101185C20;
  if (!qword_101185C20)
  {
    sub_1001109D0(&qword_101185B00, &qword_100EC13F8);
    sub_10023A234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C20);
  }

  return result;
}

unint64_t sub_10023A234()
{
  result = qword_101185C28;
  if (!qword_101185C28)
  {
    sub_1001109D0(&qword_101185AF8, &qword_100EC13F0);
    sub_100020674(&qword_101185C30, &qword_101185C38, &qword_100EC14E0, &protocol conformance descriptor for HStack<A>);
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C28);
  }

  return result;
}

unint64_t sub_10023A318()
{
  result = qword_101185C40;
  if (!qword_101185C40)
  {
    sub_1001109D0(&qword_101185B28, &qword_100EC1420);
    sub_1001109D0(&qword_101185B18, &qword_100EC1410);
    sub_1001109D0(&qword_101185B10, &qword_100EC1408);
    sub_10023A090();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100236DF0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C40);
  }

  return result;
}

double sub_10023A484(uint64_t a1)
{
  v3 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10022D318(a1, v4);
}

id sub_10023A4F4()
{
  type metadata accessor for SuggestedSongsModule.SongCell(0);

  return sub_10022DACC();
}

unint64_t sub_10023A55C()
{
  result = qword_101185C60;
  if (!qword_101185C60)
  {
    sub_1001109D0(&qword_101185C50, &qword_100EC14E8);
    sub_10023A614();
    sub_100020674(&qword_101185C98, &qword_101185CA0, &unk_100EC1508, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C60);
  }

  return result;
}

unint64_t sub_10023A614()
{
  result = qword_101185C68;
  if (!qword_101185C68)
  {
    sub_1001109D0(&qword_101185C70, &qword_100EC14F0);
    sub_10023A6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C68);
  }

  return result;
}

unint64_t sub_10023A6A0()
{
  result = qword_101185C78;
  if (!qword_101185C78)
  {
    sub_1001109D0(&qword_101185C80, &qword_100EC14F8);
    sub_100020674(&qword_101185C88, &qword_101185C90, &qword_100EC1500, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C78);
  }

  return result;
}

uint64_t sub_10023A758(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_10022D5D4(a1, v10, v11, v1 + v6, v1 + v9);
}

void sub_10023A8A8(uint64_t a1)
{
  v3 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10022ED58(a1, v4);
}

uint64_t sub_10023A918(uint64_t a1)
{
  v4 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10022F9BC(a1, v6, v7, v1 + v5);
}

uint64_t sub_10023AA4C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_10023AAC8()
{
  result = qword_101185D00;
  if (!qword_101185D00)
  {
    sub_1001109D0(&qword_101185CE8, &qword_100EC15C0);
    sub_10023AB80();
    sub_100020674(&qword_101185D58, &qword_101185CF8, &qword_100EC15D0, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185D00);
  }

  return result;
}

unint64_t sub_10023AB80()
{
  result = qword_101185D08;
  if (!qword_101185D08)
  {
    sub_1001109D0(&qword_101185CE0, &qword_100EC15B8);
    sub_10023AC64(&qword_101185D10, &qword_101185CD8, &qword_100EC15B0, sub_10023ACE0);
    sub_100020674(&qword_101185D58, &qword_101185CF8, &qword_100EC15D0, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185D08);
  }

  return result;
}

uint64_t sub_10023AC64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10023ACE0()
{
  result = qword_101185D18;
  if (!qword_101185D18)
  {
    sub_1001109D0(&qword_101185D20, &qword_100EC15D8);
    sub_10023AD98();
    sub_100020674(&qword_101185D48, &qword_101185D50, &qword_100EC15F0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185D18);
  }

  return result;
}

unint64_t sub_10023AD98()
{
  result = qword_101185D28;
  if (!qword_101185D28)
  {
    sub_1001109D0(&qword_101185D30, &qword_100EC15E0);
    sub_100020674(&qword_101185D38, &qword_101185D40, &qword_100EC15E8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185D28);
  }

  return result;
}

unint64_t sub_10023AE50()
{
  result = qword_101185D60;
  if (!qword_101185D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185D60);
  }

  return result;
}

uint64_t sub_10023AEA4(uint64_t a1)
{
  v4 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10022E5CC(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_10023AFC4()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10021D920(v3, v0 + v2, v4);
}

uint64_t sub_10023B054()
{
  v2 = *(type metadata accessor for Song() - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_10021D9D0(v4, v6, v0 + v3, v5);
}

uint64_t sub_10023B200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10023B2D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Song();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10023B3B0(uint64_t a1)
{
  type metadata accessor for Song();
  if (v1 <= 0x3F)
  {
    sub_1002371B4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SuggestedSongsModule.Specs(319);
      if (v3 <= 0x3F)
      {
        sub_10023B4F4(319, &unk_101185EE0, type metadata accessor for CGSize, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_10023B4F4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_100237820(319);
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

void sub_10023B4F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10023B580(uint64_t a1)
{
  type metadata accessor for Song();
  if (v1 <= 0x3F)
  {
    sub_10023B4F4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10023B648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10010FC20(&qword_10119F0B0, "lf\n");
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10023B758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Song();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10010FC20(&qword_10119F0B0, "lf\n");
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t sub_10023B860()
{
  result = qword_101186040;
  if (!qword_101186040)
  {
    sub_1001109D0(&qword_101185AE0, &qword_100EC13D8);
    sub_100020674(&qword_101186048, &qword_101185AF0, &qword_100EC13E8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100020674(&qword_101186050, &qword_101185AE8, &qword_100EC13E0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186040);
  }

  return result;
}

unint64_t sub_10023B9EC()
{
  result = qword_1011860B0;
  if (!qword_1011860B0)
  {
    sub_1001109D0(&qword_101186090, &unk_100EDC2B0);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011860B0);
  }

  return result;
}

unint64_t sub_10023BAD4()
{
  result = qword_1011860C0;
  if (!qword_1011860C0)
  {
    sub_1001109D0(&qword_101184C80, &qword_100EC0810);
    sub_100236DF0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011860C0);
  }

  return result;
}

unint64_t sub_10023BB90()
{
  result = qword_1011860D8;
  if (!qword_1011860D8)
  {
    sub_1001109D0(&qword_1011860D0, &qword_100EC1980);
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011860D8);
  }

  return result;
}

unint64_t sub_10023BC48()
{
  result = qword_101186128;
  if (!qword_101186128)
  {
    sub_1001109D0(&qword_101186118, &qword_100EC19C0);
    sub_10023B9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186128);
  }

  return result;
}

unint64_t sub_10023BCD4()
{
  result = qword_101186138;
  if (!qword_101186138)
  {
    sub_1001109D0(&qword_101186130, &qword_100EC19D0);
    sub_10023BD8C();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186138);
  }

  return result;
}

unint64_t sub_10023BD8C()
{
  result = qword_101186140;
  if (!qword_101186140)
  {
    sub_1001109D0(&qword_101186148, &qword_100EC19D8);
    sub_1001195A4();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186140);
  }

  return result;
}

uint64_t sub_10023BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtCV5Music18TaggedViewResolver4View_song;
  v8 = type metadata accessor for Song();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v10 = &v3[OBJC_IVAR____TtCV5Music18TaggedViewResolver4View_windowObserver];
  *v10 = a2;
  *(v10 + 1) = a3;
  v45.receiver = v3;
  v45.super_class = type metadata accessor for TaggedViewResolver.View(0);

  v11 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  result = Song.catalogID.getter();
  if (!v13)
  {
    goto LABEL_65;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = result & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_65;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v18 = sub_1002D0E10();
    v41 = v40;

    if (v41)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v15 = v42;
    }

    v17 = *result;
    if (v17 == 43)
    {
      if (v15 >= 1)
      {
        if (--v15)
        {
          v18 = 0;
          if (result)
          {
            v25 = (result + 1);
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_62;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_62;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_62;
              }

              ++v25;
              if (!--v15)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v17 != 45)
    {
      if (v15)
      {
        v18 = 0;
        if (result)
        {
          while (1)
          {
            v31 = *result - 48;
            if (v31 > 9)
            {
              goto LABEL_62;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_62;
            }

            v18 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v15)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      v18 = 0;
      LOBYTE(v15) = 1;
LABEL_63:
      v44 = v15;
      v36 = v15;

      if (v36)
      {
LABEL_65:
        v37 = objc_opt_self();
        v38 = v11;
        v39 = [v37 clearColor];
        [v38 setBackgroundColor:v39];

        [v38 setUserInteractionEnabled:0];
        (*(v9 + 8))(a1, v8);
        return v38;
      }

LABEL_64:
      [v11 setTag:v18];
      goto LABEL_65;
    }

    if (v15 >= 1)
    {
      if (--v15)
      {
        v18 = 0;
        if (result)
        {
          v19 = (result + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_62;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_62;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              goto LABEL_62;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v15) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v43[0] = result;
  v43[1] = v13 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v14)
      {
        v18 = 0;
        v33 = v43;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v14)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v14)
    {
      v15 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        v22 = v43 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v15)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_71;
  }

  if (v14)
  {
    v15 = v14 - 1;
    if (v14 != 1)
    {
      v18 = 0;
      v28 = v43 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        v30 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          break;
        }

        v18 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          break;
        }

        ++v28;
        if (!--v15)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_10023C2D8()
{
  result = qword_101186188;
  if (!qword_101186188)
  {
    sub_1001109D0(&qword_101186168, &qword_100EC19F0);
    swift_getOpaqueTypeConformance2();
    sub_100236DF0(&qword_101186190, type metadata accessor for PreviewOverlay.ArtworkVariant, &unk_100EE1AAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186188);
  }

  return result;
}

unint64_t sub_10023C3AC()
{
  result = qword_101186198;
  if (!qword_101186198)
  {
    sub_1001109D0(&qword_101186180, &qword_100EC1A08);
    sub_1001109D0(&qword_101186170, &qword_100EC19F8);
    sub_1001109D0(&qword_101186168, &qword_100EC19F0);
    sub_10023C2D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186198);
  }

  return result;
}

uint64_t sub_10023C4B8(uint64_t a1, int a2)
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

uint64_t sub_10023C500(uint64_t result, int a2, int a3)
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

void sub_10023C578(uint64_t a1)
{
  sub_10023B4F4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100237820(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10023C63C()
{
  result = qword_101186238;
  if (!qword_101186238)
  {
    sub_1001109D0(&qword_101186078, &unk_100EC1940);
    sub_10023C6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186238);
  }

  return result;
}

unint64_t sub_10023C6C8()
{
  result = qword_101186240;
  if (!qword_101186240)
  {
    sub_1001109D0(&qword_101186068, &qword_100EC1930);
    sub_100020674(&qword_101186248, &qword_101186060, &qword_100EC1928, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186240);
  }

  return result;
}

unint64_t sub_10023C780()
{
  result = qword_101186250;
  if (!qword_101186250)
  {
    sub_1001109D0(&qword_1011860F8, &qword_100EC19A0);
    sub_100020674(&qword_101186258, &qword_1011860E8, &qword_100EC1990, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186250);
  }

  return result;
}

uint64_t sub_10023C87C()
{
  type metadata accessor for GeometryProxy();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];
  v4 = v0[5];

  return sub_1002355CC(v1, v2, v3, v4);
}

unint64_t sub_10023C8E4()
{
  result = qword_1011862A8;
  if (!qword_1011862A8)
  {
    sub_1001109D0(&qword_1011862A0, &qword_100EC1B28);
    sub_10023BB90();
    sub_100020674(&unk_101184E40, &qword_10119A240, &qword_100EC09F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011862A8);
  }

  return result;
}

unint64_t sub_10023C99C()
{
  result = qword_1011862B0;
  if (!qword_1011862B0)
  {
    sub_1001109D0(&qword_101186288, &qword_100EC1B18);
    sub_1001109D0(&qword_1011862A0, &qword_100EC1B28);
    sub_10023C8E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011862B0);
  }

  return result;
}

unint64_t sub_10023CA64()
{
  result = qword_1011862C0;
  if (!qword_1011862C0)
  {
    sub_1001109D0(&qword_101186278, &qword_100EC1B08);
    sub_100020674(&qword_1011862C8, &qword_101186270, &qword_100EC1B00, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100020674(&qword_1011862D0, &qword_1011862D8, &qword_100EC1B38, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011862C0);
  }

  return result;
}

unint64_t sub_10023CB48()
{
  result = qword_1011862E0;
  if (!qword_1011862E0)
  {
    sub_1001109D0(&qword_1011862B8, &qword_100EC1B30);
    sub_100238500(&qword_1011862E8, &qword_101186290, &qword_100EC1B20, sub_10023C99C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011862E0);
  }

  return result;
}

uint64_t sub_10023CC30()
{
  v21[1] = 0;
  v0 = (type metadata accessor for ContextualPreview.Artwork(0) - 8);
  __chkstk_darwin();
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Album();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v3, &protocol witness table for Album, v2);
  v4 = v0[8];
  v5 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 11, v5);
  v6 = &v2[v0[7]];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v2[v0[9]] = 0;
  *&v2[v0[10]] = 0x3FF0000000000000;
  v7 = &v2[v0[11]];
  *v7 = xmmword_100EC1B40;
  v7[16] = 1;
  v8 = sub_10034DFAC();
  v10 = v9;
  v11 = sub_10034E12C();
  v13 = v12;
  type metadata accessor for ContextualPreview.Data(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v21[0] = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v2, v14 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v8, v10);
  sub_100242ABC(v11, v13);
  if (v17[1])
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v21[-3] = 0;
    v21[-2] = 0;
    v21[-4] = v14;
    v22 = v14;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v14 + v18))
    {
LABEL_3:
      *(v14 + v18) = 1;
      goto LABEL_6;
    }
  }

  else
  {
    *v17 = 0;
    v17[1] = 0;
    if (*(v14 + v18))
    {
      goto LABEL_3;
    }
  }

  swift_getKeyPath();
  __chkstk_darwin();
  v21[-2] = v14;
  LOBYTE(v21[-1]) = 1;
  v22 = v14;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  v19 = v21[0];
  if (*(v14 + v21[0]))
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v21[-2] = v14;
    LOBYTE(v21[-1]) = 0;
    v22 = v14;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v2, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v2, type metadata accessor for ContextualPreview.Artwork);
    *(v14 + v19) = 0;
  }

  return v14;
}

uint64_t sub_10023D0E4()
{
  v25 = 0;
  v0 = (type metadata accessor for ContextualPreview.Artwork(0) - 8);
  __chkstk_darwin();
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MusicVideo();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v3, &protocol witness table for MusicVideo, v2);
  v4 = v0[8];
  v5 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v5 - 8) + 56))(&v2[v4], 5, 11, v5);
  v6 = &v2[v0[7]];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v2[v0[9]] = 0;
  *&v2[v0[10]] = 0x3FFC71C71C71C71CLL;
  v7 = &v2[v0[11]];
  *v7 = xmmword_100EC1B40;
  v7[16] = 1;
  v24 = MusicVideo.title.getter();
  v9 = v8;
  v23 = MusicVideo.artistName.getter();
  v11 = v10;
  v12 = MusicVideo.albumTitle.getter();
  v14 = v13;
  type metadata accessor for ContextualPreview.Data(0);
  v15 = swift_allocObject();
  v16 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v20 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v2, v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v24, v9);
  sub_100242ABC(v23, v11);
  sub_100242C68(v12, v14);
  if (*(v15 + v19) == 1)
  {
    *(v15 + v19) = 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v22 - 2) = v15;
    *(&v22 - 8) = 1;
    v26 = v15;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v15 + v20))
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v22 - 2) = v15;
    *(&v22 - 8) = 0;
    v26 = v15;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v2, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v2, type metadata accessor for ContextualPreview.Artwork);
    *(v15 + v20) = 0;
  }

  return v15;
}

id sub_10023D4E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [v4 cellForItemAtIndexPath:isa];

  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v9 window];
  if (v10)
  {

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v11 = 0.0;
      v12 = Corner.extraSmall.unsafeMutableAddressor();
    }

    else
    {
      v11 = 8.0;
      v12 = Corner.large.unsafeMutableAddressor();
    }

    v14 = *v12;
    v15 = v12[1];
    v16 = *(v12 + 16);
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    v18 = NSDirectionalEdgeInsets.init(edge:length:)(v17, v11);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v9 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [v9 effectiveUserInterfaceLayoutDirection];
    if ((a3 & 1) == 0)
    {
      NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

      v18 = NSDirectionalEdgeInsets.init(edge:length:)(v34, *&a2);
      v20 = v35;
      v22 = v36;
      v24 = v37;
    }

    v38 = [objc_allocWithZone(UIPreviewParameters) init];
    v39 = CGRect.outset(by:for:)(v33, v18, v20, v22, v24, v26, v28, v30, v32);
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = Corner.radius(in:)(v14, v39, v40, v42, v44, v15, v16);
    v47 = [objc_opt_self() bezierPathWithRoundedRect:v39 cornerRadius:{v41, v43, v45, v46}];
    [v38 setVisiblePath:v47];

    [v9 setHighlighted:0];
    [v9 setSelected:0];
    [v9 setBackgroundColor:0];
    v48 = [objc_allocWithZone(UITargetedPreview) initWithView:v9 parameters:v38];

    return v48;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10023D798(uint64_t a1)
{
  v2 = type metadata accessor for ContextualPreview.InlinePreview(0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101186668, &qword_100EC1FF0);
  __chkstk_darwin();
  v6 = v10 - v5;
  swift_getKeyPath();
  v10[1] = a1;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
  swift_retain_n();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(a1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle);

  if (v7 == 1)
  {
    *v6 = a1;
    v6[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_10024DFB0();
    sub_10024E004(&qword_101186678, type metadata accessor for ContextualPreview.InlinePreview, &unk_100EC2098);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v4 = a1;
    v4[8] = 0;
    v9 = *(v2 + 24);
    *&v4[v9] = swift_getKeyPath();
    sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
    swift_storeEnumTagMultiPayload();
    sub_10024DF48(v4, v6, type metadata accessor for ContextualPreview.InlinePreview);
    swift_storeEnumTagMultiPayload();
    sub_10024DFB0();
    sub_10024E004(&qword_101186678, type metadata accessor for ContextualPreview.InlinePreview, &unk_100EC2098);
    _ConditionalContent<>.init(storage:)();
    return sub_10024DE78(v4, type metadata accessor for ContextualPreview.InlinePreview);
  }
}

uint64_t sub_10023DA80@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v69 = type metadata accessor for AccessibilityChildBehavior();
  v67 = *(v69 - 8);
  __chkstk_darwin();
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10010FC20(&qword_1011A1440, &unk_100ECAF00);
  __chkstk_darwin();
  v72 = &v62 - v7;
  sub_10010FC20(&qword_101186750, &qword_100EC2140);
  __chkstk_darwin();
  v9 = &v62 - v8;
  v10 = sub_10010FC20(&qword_101186758, &qword_100EC2148) - 8;
  __chkstk_darwin();
  v12 = &v62 - v11;
  v13 = sub_10010FC20(&qword_101186760, &qword_100EC2150) - 8;
  __chkstk_darwin();
  v15 = &v62 - v14;
  v16 = sub_10010FC20(&qword_101186768, &qword_100EC2158) - 8;
  __chkstk_darwin();
  v18 = &v62 - v17;
  v71 = sub_10010FC20(&qword_101186770, &qword_100EC2160);
  __chkstk_darwin();
  v70 = &v62 - v19;
  v64 = sub_10010FC20(&qword_101186778, &qword_100EC2168);
  v63 = *(v64 - 8);
  __chkstk_darwin();
  v62 = &v62 - v20;
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = sub_10010FC20(&qword_101186780, &qword_100EC2170);
  sub_10023E230(a1, a2 & 1, &v9[*(v21 + 44)]);
  sub_10023F29C(a2 & 1);
  if (v22 < 200.0)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  KeyPath = swift_getKeyPath();
  sub_10003D17C(v9, v12, &qword_101186750, &qword_100EC2140);
  v25 = &v12[*(v10 + 44)];
  *v25 = KeyPath;
  *(v25 + 1) = v23;
  v25[16] = 0;
  sub_10003D17C(v12, v15, &qword_101186758, &qword_100EC2148);
  *&v15[*(v13 + 44)] = 256;
  v26 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_10003D17C(v15, v18, &qword_101186760, &qword_100EC2150);
  v35 = &v18[*(v16 + 44)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  sub_10023F29C(a2 & 1);
  v37 = v36;
  sub_10023F29C(a2 & 1);
  v39 = v38 + 32.0;
  *&v40 = COERCE_DOUBLE(sub_10023F518(a2 & 1));
  v42 = v41;
  static Alignment.center.getter();
  v43 = *&v40;
  if (v42)
  {
    v43 = v39;
  }

  if (v37 + 32.0 > v39 || v39 > v43)
  {
    v44 = static os_log_type_t.fault.getter();
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v45, "Contradictory frame constraints specified.", 42, 2, _swiftEmptyArrayStorage);
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v46 = v70;
  sub_10003D17C(v18, v70, &qword_101186768, &qword_100EC2158);
  v47 = v71;
  v48 = (v46 + *(v71 + 36));
  v49 = v82;
  v48[4] = v81;
  v48[5] = v49;
  v48[6] = v83;
  v50 = v78;
  *v48 = v77;
  v48[1] = v50;
  v51 = v80;
  v48[2] = v79;
  v48[3] = v51;
  v52 = enum case for DynamicTypeSize.accessibility2(_:);
  v53 = type metadata accessor for DynamicTypeSize();
  v54 = v72;
  (*(*(v53 - 8) + 104))(v72, v52, v53);
  sub_10024E004(&qword_1011A1490, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v56 = sub_10024E50C();
    v57 = sub_100020674(&qword_1011A14A0, &qword_1011A1440, &unk_100ECAF00, &protocol conformance descriptor for PartialRangeThrough<A>);
    v58 = v62;
    v59 = v65;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v54, &qword_1011A1440, &unk_100ECAF00);
    sub_1000095E8(v46, &qword_101186770, &qword_100EC2160);
    v60 = v66;
    static AccessibilityChildBehavior.combine.getter();
    v73 = v47;
    v74 = v59;
    v75 = v56;
    v76 = v57;
    swift_getOpaqueTypeConformance2();
    v61 = v64;
    View.accessibilityElement(children:)();
    (*(v67 + 8))(v60, v69);
    return (*(v63 + 8))(v58, v61);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10023E230@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  LODWORD(v110) = a2;
  v109 = a3;
  v114 = sub_10010FC20(&qword_1011867B0, &qword_100EC21B0);
  __chkstk_darwin();
  v118 = &v101[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v121 = &v101[-v5];
  v6 = sub_10010FC20(&qword_1011867B8, &qword_100EC21B8);
  __chkstk_darwin();
  v8 = &v101[-v7];
  v9 = sub_10010FC20(&qword_1011867C0, &qword_100EC21C0);
  v112 = *(v9 - 8);
  v113 = v9;
  __chkstk_darwin();
  v111 = &v101[-v10];
  v108 = sub_10010FC20(&qword_1011867C8, &qword_100EC21C8);
  v107 = *(v108 - 8);
  __chkstk_darwin();
  v117 = &v101[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v120 = &v101[-v12];
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data___observationRegistrar;
  v122 = a1;
  v14 = sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = a1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  v16 = type metadata accessor for ContextualPreview.Artwork(0);
  v17 = *(v15 + *(v16 + 32));
  v18 = objc_opt_self();
  v19 = &selRef_systemFillColor;
  if (v17 >= 1.0)
  {
    v19 = &selRef_clearColor;
  }

  v20 = [v18 *v19];
  v104 = Color.init(_:)();
  swift_getKeyPath();
  v122 = a1;
  v21 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v15 + *(v16 + 32));
  v119 = v14;
  v106 = v16;
  v105 = v15;
  if (v22 >= 1.0)
  {
    swift_getKeyPath();
    v122 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v15 + *(v16 + 32));
  }

  else
  {
    v23 = 0x3FF0000000000000;
  }

  v24 = v13;
  v25 = static Alignment.center.getter();
  v27 = v26;
  v115 = v6;
  v28 = &v8[*(v6 + 36)];
  v29 = v21;
  sub_10023ECB8(v21, v110 & 1, v28);
  v30 = (v28 + *(sub_10010FC20(&qword_1011867D0, &unk_100EC21D0) + 36));
  *v30 = v25;
  v30[1] = v27;
  *v8 = v104;
  *(v8 + 1) = v23;
  *(v8 + 8) = 0;
  swift_getKeyPath();
  v122 = v21;
  v116 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = v106;
  v32 = v105;
  v33 = v105 + *(v106 + 36);
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(v24) = *(v33 + 16);
  v36 = sub_10024E794();
  v37 = v111;
  View.corner(_:)(v34, v35, v24, v115, v36);
  sub_1000095E8(v8, &qword_1011867B8, &qword_100EC21B8);
  v38 = Border.artwork.unsafeMutableAddressor();
  v39 = *v38;
  v40 = *(v38 + 1);
  LODWORD(v110) = *(v38 + 16);
  swift_getKeyPath();
  v122 = v29;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = v32 + *(v31 + 36);
  v42 = *v41;
  v43 = *(v41 + 8);
  LOBYTE(v31) = *(v41 + 16);
  v122 = v115;
  v123 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v42;
  v46 = v113;
  View.border(_:corner:)(v39, v110, v45, v43, v31, v113, OpaqueTypeConformance2, v40);

  (*(v112 + 8))(v37, v46);
  swift_getKeyPath();
  v122 = v29;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  v48 = *(v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title + 8);
  v49 = sub_100479D70(&off_101099BA8);

  v50 = Text.init(optional:options:)(v47, v48, v49);
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v122 = v50;
  v123 = v52;
  v124 = v54;
  v125 = v56;
  v126 = KeyPath;
  v127 = v57;
  static Font.Weight.semibold.getter();
  sub_10010FC20(&qword_1011867F8, &qword_100EC2210);
  sub_10024E8D0();
  View.fontWeight(_:)();
  sub_10024EA04(v50, v52, v54, v56);

  LODWORD(v50) = static HierarchicalShapeStyle.primary.getter();
  v59 = sub_10010FC20(&qword_101186808, &qword_100EC2228);
  v60 = v121;
  *&v121[*(v59 + 36)] = v50;
  LOBYTE(v50) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v61 = &v60[*(v114 + 36)];
  *v61 = v50;
  *(v61 + 1) = v62;
  *(v61 + 2) = v63;
  *(v61 + 3) = v64;
  *(v61 + 4) = v65;
  v61[40] = 0;
  swift_getKeyPath();
  v122 = v29;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = *(v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  v67 = *(v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle + 8);
  v68 = sub_100479D70(&off_101099BD0);

  v69 = Text.init(optional:options:)(v66, v67, v68);
  v114 = v70;
  v115 = v69;
  v112 = v72;
  v113 = v71;
  v111 = static Font.body.getter();
  v110 = swift_getKeyPath();
  LODWORD(v106) = static HierarchicalShapeStyle.secondary.getter();
  swift_getKeyPath();
  v122 = v29;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v73 = *(v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  v74 = *(v29 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText + 8);
  v75 = sub_100479D70(&off_101099BF8);

  v104 = Text.init(optional:options:)(v73, v74, v75);
  v119 = v76;
  v116 = v77;
  v105 = v78;
  v103 = static Font.footnote.getter();
  v79 = swift_getKeyPath();
  v102 = static HierarchicalShapeStyle.secondary.getter();
  v80 = v107;
  v81 = *(v107 + 16);
  v82 = v117;
  v83 = v108;
  v81(v117, v120, v108);
  v84 = v60;
  v85 = v118;
  sub_1000089F8(v84, v118, &qword_1011867B0, &qword_100EC21B0);
  v86 = v109;
  v81(v109, v82, v83);
  v87 = sub_10010FC20(&qword_101186810, &unk_100EC2230);
  sub_1000089F8(v85, &v86[v87[12]], &qword_1011867B0, &qword_100EC21B0);
  v88 = &v86[v87[16]];
  v90 = v114;
  v89 = v115;
  *v88 = v115;
  *(v88 + 1) = v90;
  v92 = v112;
  v91 = v113;
  *(v88 + 2) = v113;
  *(v88 + 3) = v92;
  v93 = v111;
  *(v88 + 4) = v110;
  *(v88 + 5) = v93;
  *(v88 + 12) = v106;
  v94 = &v86[v87[20]];
  v95 = v104;
  v96 = v119;
  *v94 = v104;
  *(v94 + 1) = v96;
  LOBYTE(v86) = v116;
  v97 = v105;
  *(v94 + 2) = v116;
  *(v94 + 3) = v97;
  v98 = v103;
  *(v94 + 4) = v79;
  *(v94 + 5) = v98;
  *(v94 + 12) = v102;
  sub_10024EA48(v89, v90, v91, v92);

  sub_10024EA48(v95, v96, v86, v97);

  sub_1000095E8(v121, &qword_1011867B0, &qword_100EC21B0);
  v99 = *(v80 + 8);
  v99(v120, v83);
  sub_10024EA04(v95, v96, v86, v97);

  sub_10024EA04(v115, v114, v113, v112);

  sub_1000095E8(v118, &qword_1011867B0, &qword_100EC21B0);
  return (v99)(v117, v83);
}

uint64_t sub_10023ECB8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v35 = a3;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v7 = &v26 - v6;
  v8 = sub_10010FC20(&qword_101186818, &unk_100ED77D0);
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin();
  v31 = &v26 - v9;
  swift_getKeyPath();
  v36[0] = a1;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = a1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  v30 = v7;
  sub_1000089F8(v10, v7, &unk_10118A5E0, &unk_100EBCD90);
  swift_getKeyPath();
  v36[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = type metadata accessor for ContextualPreview.Artwork(0);
  v12 = (v10 + v11[5]);
  v14 = *v12;
  v13 = v12[1];
  v27 = v12[2];
  v28 = v13;
  swift_getKeyPath();
  v36[0] = a1;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = v10 + v11[6];
  v32 = v5;
  sub_10024DF48(v15, v5, type metadata accessor for ArtworkImage.Placeholder);
  swift_getKeyPath();
  v36[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v10 + v11[8]);
  v17 = v29 & 1;
  sub_10023F29C(v29 & 1);
  v19 = v18;
  if (v16 < 1.0)
  {
    swift_getKeyPath();
    v36[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = v19 * *(v10 + v11[8]);
  }

  swift_getKeyPath();
  v36[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)(*&v19, 0, 0.0, 1, v36, *(v10 + v11[8]));
  v20 = v30;
  v21 = v31;
  v22 = v32;
  static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(v30, v14, v28, v27, 1, v32, v36, v31);

  sub_10024DE78(v22, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v20, &unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  *(&v26 - 2) = a1;
  *(&v26 - 8) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v34;
  View.placeholderStyle(_:)(sub_10024EA8C, (&v26 - 4), v34, OpaqueTypeConformance2);
  return (*(v33 + 8))(v21, v24);
}

uint64_t sub_10023F158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = a1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  if (*(v4 + *(type metadata accessor for ContextualPreview.Artwork(0) + 28)) == 1)
  {
    v5 = ArtworkImage.Placeholder.View.Style.accentuated.unsafeMutableAddressor();
    sub_10024DF48(v5, a2, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

void sub_10023F29C(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    v13 = [v2 currentTraitCollection];
    UITraitCollection.isAccessibilitySizeCategory.getter();

    v14 = [objc_opt_self() mainScreen];
    [v14 bounds];

    return;
  }

  if ((a1 & 1) == 0)
  {
    return;
  }

  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 connectedScenes];
  sub_100062364();
  sub_10024E004(&qword_101183DE0, sub_100062364, &protocol conformance descriptor for NSObject);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v7);
  v9 = v8;

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_1007E90D4(0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

  v12 = UIWindowScene.mainWindow.getter();

  if (v12)
  {
    [v12 bounds];
  }
}

uint64_t sub_10023F518(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    if (a1)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = 600.0;
    }
  }

  else
  {
    v6 = [v2 currentTraitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7)
    {
      *&result = 343.0;
    }

    else
    {
      v8 = [objc_opt_self() mainScreen];
      [v8 bounds];
      v10 = v9;

      *&result = v10 + -48.0;
    }
  }

  return result;
}

uint64_t sub_10023F640@<X0>(uint64_t a1@<X8>)
{
  v213 = a1;
  sub_10010FC20(&qword_101186820, &qword_100EC2240);
  __chkstk_darwin();
  v195 = (&v180 - v2);
  v193 = sub_10010FC20(&qword_101186828, &qword_100EC2248);
  __chkstk_darwin();
  v192 = &v180 - v3;
  v190 = sub_10010FC20(&qword_101186830, &qword_100EC2250);
  __chkstk_darwin();
  v194 = &v180 - v4;
  v191 = sub_10010FC20(&qword_101186838, &qword_100EC2258);
  __chkstk_darwin();
  v196 = &v180 - v5;
  v211 = sub_10010FC20(&qword_101186840, &qword_100EC2260);
  __chkstk_darwin();
  v198 = &v180 - v6;
  v212 = sub_10010FC20(&qword_101186848, &qword_100EC2268);
  v201 = *(v212 - 8);
  __chkstk_darwin();
  v199 = &v180 - v7;
  v209 = sub_10010FC20(&qword_101186850, &qword_100EC2270);
  __chkstk_darwin();
  v210 = &v180 - v8;
  v9 = type metadata accessor for AccessibilityChildBehavior();
  v207 = *(v9 - 8);
  v208 = v9;
  __chkstk_darwin();
  v204 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_10010FC20(&qword_1011A1440, &unk_100ECAF00);
  __chkstk_darwin();
  v200 = &v180 - v11;
  v184 = sub_10010FC20(&qword_101186858, &qword_100EC2278);
  __chkstk_darwin();
  v217 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v216 = (&v180 - v13);
  sub_10010FC20(&qword_101186860, &qword_100EC2280);
  __chkstk_darwin();
  v218 = (&v180 - v14);
  v188 = sub_10010FC20(&qword_101186868, &qword_100EC2288);
  __chkstk_darwin();
  v187 = &v180 - v15;
  v185 = sub_10010FC20(&qword_101186870, &qword_100EC2290);
  __chkstk_darwin();
  v189 = &v180 - v16;
  v186 = sub_10010FC20(&qword_101186878, &qword_100EC2298);
  __chkstk_darwin();
  v202 = &v180 - v17;
  v219 = sub_10010FC20(&qword_101186880, &qword_100EC22A0);
  __chkstk_darwin();
  v197 = &v180 - v18;
  v203 = sub_10010FC20(&qword_101186888, &qword_100EC22A8);
  v181 = *(v203 - 8);
  __chkstk_darwin();
  v180 = &v180 - v19;
  v205 = sub_10010FC20(&qword_101186890, &qword_100EC22B0);
  v183 = *(v205 - 8);
  __chkstk_darwin();
  v182 = &v180 - v20;
  v21 = type metadata accessor for DynamicTypeSize();
  v220 = *(v21 - 8);
  v221 = v21;
  __chkstk_darwin();
  v23 = (&v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *v1;
  swift_getKeyPath();
  *&v261 = v24;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v24 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  v26 = *(v24 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title + 8);
  v27 = sub_100479D70(&off_101099C20);

  v238 = Text.init(optional:options:)(v25, v26, v27);
  v222 = v28;
  v225 = v30;
  v226 = v29;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v234 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v31 = static HierarchicalShapeStyle.primary.getter();
  swift_getKeyPath();
  *&v261 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v24 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  v33 = *(v24 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle + 8);
  v34 = sub_100479D70(&off_101099C48);

  v230 = Text.init(optional:options:)(v32, v33, v34);
  v231 = v35;
  v232 = v36;
  v237 = v37;
  v239 = static Font.footnote.getter();
  v240 = swift_getKeyPath();
  v215 = static HierarchicalShapeStyle.secondary.getter();
  swift_getKeyPath();
  *&v261 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v24 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  v39 = *(v24 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText + 8);
  v40 = sub_100479D70(&off_101099C70);

  v235 = Text.init(optional:options:)(v38, v39, v40);
  v236 = v41;
  v227 = v42;
  v223 = v43;
  v44 = static Font.footnote.getter();
  v229 = swift_getKeyPath();
  v214 = static HierarchicalShapeStyle.secondary.getter();
  type metadata accessor for ContextualPreview.InlinePreview(0);
  sub_10056CABC(v23);
  LOBYTE(v38) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v220 + 8))(v23, v221);
  v228 = v44;
  if (v38)
  {
    v45 = static HorizontalAlignment.leading.getter();
    v46 = v238;
    v254 = v238;
    v47 = v222;
    v255 = v222;
    v48 = v226;
    v256 = v226;
    v257 = v225;
    v49 = v31;
    v50 = v225;
    v258 = KeyPath;
    v259 = v234;
    v260 = v49;
    v51 = v218;
    *v218 = v45;
    v51[1] = 0;
    *(v51 + 16) = 0;
    v201 = v51 + *(sub_10010FC20(&qword_1011868F0, &qword_100EC22C0) + 44);

    sub_10024EA48(v46, v47, v48, v50);
    v52 = v230;
    v53 = v231;
    v54 = v237;
    sub_10024EA48(v230, v231, v232, v237);
    v55 = v227;
    sub_10024EA48(v235, v227, v223, v236);
    v56 = static VerticalAlignment.center.getter();
    v57 = v216;
    *v216 = v56;
    v57[1] = 0x4030000000000000;
    *(v57 + 16) = 0;
    v58 = v57;
    v59 = sub_10010FC20(&qword_1011868F8, &qword_100EC22C8);
    sub_100240DF0(v224, &v254, v58 + *(v59 + 44));
    LOBYTE(v46) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v60 = v58 + *(v184 + 36);
    *v60 = v46;
    *(v60 + 8) = v61;
    *(v60 + 16) = v62;
    *(v60 + 24) = v63;
    *(v60 + 32) = v64;
    *(v60 + 40) = 0;
    v65 = v217;
    sub_1000089F8(v58, v217, &qword_101186858, &qword_100EC2278);
    v66 = v65;
    v67 = v201;
    sub_1000089F8(v66, v201, &qword_101186858, &qword_100EC2278);
    v68 = sub_10010FC20(&qword_101186900, &qword_100EC22D0);
    v69 = v67 + *(v68 + 48);
    *v69 = v52;
    *(v69 + 8) = v53;
    v70 = v232;
    *(v69 + 16) = v232;
    *(v69 + 24) = v54;
    v71 = v239;
    *(v69 + 32) = v240;
    *(v69 + 40) = v71;
    *(v69 + 48) = v215;
    v72 = v67 + *(v68 + 64);
    *v72 = v235;
    *(v72 + 8) = v55;
    v73 = v55;
    LOBYTE(v67) = v223;
    v74 = v236;
    *(v72 + 16) = v223;
    *(v72 + 24) = v74;
    v75 = v228;
    *(v72 + 32) = v229;
    *(v72 + 40) = v75;
    *(v72 + 48) = v214;

    v76 = v237;
    sub_10024EA48(v52, v53, v70, v237);
    v77 = v235;
    sub_10024EA48(v235, v73, v67, v74);

    sub_10024EA48(v52, v53, v70, v76);

    sub_10024EA48(v77, v73, v67, v74);

    sub_1000095E8(v216, &qword_101186858, &qword_100EC2278);
    sub_10024EA04(v77, v73, v67, v74);

    v78 = v237;
    sub_10024EA04(v52, v53, v70, v237);

    sub_1000095E8(v217, &qword_101186858, &qword_100EC2278);
    sub_10024EA04(v238, v222, v226, v225);

    sub_10024EA04(v52, v53, v70, v78);

    sub_10024EA04(v77, v227, v67, v236);

    v79 = swift_getKeyPath();
    v80 = v187;
    sub_10003D17C(v218, v187, &qword_101186860, &qword_100EC2280);
    v81 = v80 + *(v188 + 36);
    *v81 = v79;
    *(v81 + 8) = 2;
    *(v81 + 16) = 0;
    v82 = v80;
    v83 = v189;
    sub_10003D17C(v82, v189, &qword_101186868, &qword_100EC2288);
    *(v83 + *(v185 + 36)) = 256;
    LOBYTE(v79) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v202;
    sub_10003D17C(v83, v202, &qword_101186870, &qword_100EC2290);
    v93 = v92 + *(v186 + 36);
    *v93 = v79;
    *(v93 + 8) = v85;
    *(v93 + 16) = v87;
    *(v93 + 24) = v89;
    *(v93 + 32) = v91;
    *(v93 + 40) = 0;
    LOBYTE(v79) = *(v224 + 8);
    sub_10023F29C(v79);
    v95 = v94;
    sub_10023F29C(v79);
    v97 = v96;
    *&v98 = COERCE_DOUBLE(sub_10023F518(v79));
    LOBYTE(v83) = v99;
    static Alignment.center.getter();
    v100 = *&v98;
    if (v83)
    {
      v100 = v97;
    }

    if (v95 > v97 || v97 > v100)
    {
      v101 = static os_log_type_t.fault.getter();
      v102 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v102, "Contradictory frame constraints specified.", 42, 2, _swiftEmptyArrayStorage);

      v92 = v202;
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v103 = v197;
    sub_10003D17C(v92, v197, &qword_101186878, &qword_100EC2298);
    v104 = v219;
    v105 = (v103 + *(v219 + 36));
    v106 = v266;
    v105[4] = v265;
    v105[5] = v106;
    v105[6] = v267;
    v107 = v262;
    *v105 = v261;
    v105[1] = v107;
    v108 = v264;
    v105[2] = v263;
    v105[3] = v108;
    v109 = v200;
    (*(v220 + 104))(v200, enum case for DynamicTypeSize.accessibility2(_:), v221);
    sub_10024E004(&qword_1011A1490, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      v111 = sub_10024ED20();
      v112 = v103;
      v113 = sub_100020674(&qword_1011A14A0, &qword_1011A1440, &unk_100ECAF00, &protocol conformance descriptor for PartialRangeThrough<A>);
      v114 = v180;
      v115 = v223;
      v116 = v104;
      v117 = v206;
      View.dynamicTypeSize<A>(_:)();
      sub_1000095E8(v109, &qword_1011A1440, &unk_100ECAF00);
      sub_1000095E8(v112, &qword_101186880, &qword_100EC22A0);
      v118 = v204;
      static AccessibilityChildBehavior.combine.getter();
      v247 = v116;
      v248 = v117;
      v249 = v111;
      v250 = v113;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v120 = v182;
      v121 = v203;
      View.accessibilityElement(children:)();
      (*(v207 + 8))(v118, v208);
      (*(v181 + 8))(v114, v121);
      v122 = v183;
      v123 = v205;
      (*(v183 + 16))(v210, v120, v205);
      swift_storeEnumTagMultiPayload();
      v247 = v121;
      v248 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v124 = sub_10024EA98();
      v247 = v211;
      v248 = v124;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      sub_10024EA04(v235, v227, v115, v236);

      sub_10024EA04(v230, v231, v232, v237);

      sub_10024EA04(v238, v222, v226, v225);

      return (*(v122 + 8))(v120, v123);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v254 = v238;
    v125 = v223;
    v255 = v222;
    v256 = v226;
    v257 = v225;
    v258 = KeyPath;
    v259 = v234;
    v260 = v31;
    v247 = v230;
    v248 = v231;
    v126 = v232;
    v249 = v232;
    v127 = v237;
    v250 = v237;
    v251 = v240;
    v252 = v239;
    v253 = v215;
    v128 = v235;
    v245[0] = v235;
    v129 = v227;
    v245[1] = v227;
    v245[2] = v223;
    v245[3] = v236;
    v245[4] = v229;
    v245[5] = v44;
    v246 = v214;

    v130 = v222;
    v132 = v225;
    v131 = v226;
    sub_10024EA48(v238, v222, v226, v225);
    sub_10024EA48(v230, v231, v126, v127);
    v133 = v128;
    v134 = v125;
    v135 = v236;
    sub_10024EA48(v133, v129, v125, v236);
    v136 = static VerticalAlignment.center.getter();
    v137 = v195;
    *v195 = v136;
    v137[1] = 0;
    *(v137 + 16) = 0;
    v138 = sub_10010FC20(&qword_101186898, &qword_100EC22B8);
    v139 = v224;
    sub_1002415AC(v224, &v254, &v247, v245, v137 + *(v138 + 44));
    sub_10024EA04(v238, v130, v131, v132);

    sub_10024EA04(v230, v231, v232, v237);

    sub_10024EA04(v235, v227, v134, v135);

    v140 = swift_getKeyPath();
    v141 = v137;
    v142 = v192;
    sub_10003D17C(v141, v192, &qword_101186820, &qword_100EC2240);
    v143 = v142 + *(v193 + 36);
    *v143 = v140;
    *(v143 + 8) = 2;
    *(v143 + 16) = 0;
    v144 = v142;
    v145 = v194;
    sub_10003D17C(v144, v194, &qword_101186828, &qword_100EC2248);
    *(v145 + *(v190 + 36)) = 256;
    LOBYTE(v140) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v147 = v146;
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v154 = v196;
    sub_10003D17C(v145, v196, &qword_101186830, &qword_100EC2250);
    v155 = v154 + *(v191 + 36);
    *v155 = v140;
    *(v155 + 8) = v147;
    *(v155 + 16) = v149;
    *(v155 + 24) = v151;
    *(v155 + 32) = v153;
    *(v155 + 40) = 0;
    LOBYTE(v140) = *(v139 + 8);
    sub_10023F29C(v140);
    v157 = v156;
    sub_10023F29C(v140);
    v159 = v158;
    *&v160 = COERCE_DOUBLE(sub_10023F518(v140));
    LOBYTE(v127) = v161;
    static Alignment.center.getter();
    v162 = *&v160;
    if (v127)
    {
      v162 = v159;
    }

    v163 = v130;
    if (v157 > v159 || v159 > v162)
    {
      v164 = static os_log_type_t.fault.getter();
      v165 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v164, &_mh_execute_header, v165, "Contradictory frame constraints specified.", 42, 2, _swiftEmptyArrayStorage);
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v166 = v198;
    sub_10003D17C(v154, v198, &qword_101186838, &qword_100EC2258);
    v167 = v211;
    v168 = (v166 + *(v211 + 36));
    v169 = v266;
    v168[4] = v265;
    v168[5] = v169;
    v168[6] = v267;
    v170 = v262;
    *v168 = v261;
    v168[1] = v170;
    v171 = v264;
    v168[2] = v263;
    v168[3] = v171;
    v172 = v204;
    static AccessibilityChildBehavior.combine.getter();
    v173 = sub_10024EA98();
    v174 = v199;
    View.accessibilityElement(children:)();
    (*(v207 + 8))(v172, v208);
    sub_1000095E8(v166, &qword_101186840, &qword_100EC2260);
    v175 = v201;
    v176 = v212;
    (*(v201 + 16))(v210, v174, v212);
    swift_storeEnumTagMultiPayload();
    v177 = sub_10024ED20();
    v178 = sub_100020674(&qword_1011A14A0, &qword_1011A1440, &unk_100ECAF00, &protocol conformance descriptor for PartialRangeThrough<A>);
    v241 = v219;
    v242 = v206;
    v243 = v177;
    v244 = v178;
    v179 = swift_getOpaqueTypeConformance2();
    v241 = v203;
    v242 = v179;
    swift_getOpaqueTypeConformance2();
    v241 = v167;
    v242 = v173;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_10024EA04(v235, v227, v223, v236);

    sub_10024EA04(v230, v231, v232, v237);

    sub_10024EA04(v238, v163, v226, v225);

    return (*(v175 + 8))(v174, v176);
  }

  return result;
}

uint64_t sub_100240DF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v66 = a3;
  v59 = sub_10010FC20(&qword_101186818, &unk_100ED77D0);
  v60 = *(v59 - 8);
  __chkstk_darwin();
  v57 = &v55 - v4;
  v61 = sub_10010FC20(&qword_101186908, &qword_100EC22D8);
  v62 = *(v61 - 8);
  __chkstk_darwin();
  v56 = &v55 - v5;
  v63 = sub_10010FC20(&qword_101186910, &qword_100EC22E0);
  v64 = *(v63 - 8);
  __chkstk_darwin();
  v58 = &v55 - v6;
  v55 = type metadata accessor for DynamicTypeSize();
  v7 = *(v55 - 8);
  __chkstk_darwin();
  v9 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (type metadata accessor for ContextualPreview.Artwork(0) - 8);
  __chkstk_darwin();
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101186918, &qword_100EC22E8);
  __chkstk_darwin();
  v68 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v55 - v14;
  v15 = *a1;
  swift_getKeyPath();
  v73[0] = v15;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_10024DF48(v16, v12, type metadata accessor for ContextualPreview.Artwork);
  type metadata accessor for ContextualPreview.InlinePreview(0);
  sub_10056CABC(v9);
  v17 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v7 + 8))(v9, v55);
  if (v17)
  {
    v18 = 78.0;
  }

  else
  {
    v18 = 92.0;
  }

  swift_getKeyPath();
  v73[0] = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = v10[10];
  *&v20 = v18 * *(v16 + v19);
  v21 = v10[8];
  v22 = &v12[v10[7]];
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)(v20, 0, 0.0, 1, v73, *&v12[v19]);
  v26 = v57;
  static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(v12, v23, v24, v25, 1, &v12[v21], v73, v57);
  v27 = &v12[v10[11]];
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v25) = v27[16];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v56;
  v32 = v59;
  View.corner(_:)(v28, v29, v25, v59, OpaqueTypeConformance2);
  (*(v60 + 8))(v26, v32);
  v33 = Border.artwork.unsafeMutableAddressor();
  v34 = *v33;
  v35 = *(v33 + 1);
  LOBYTE(v24) = *(v33 + 16);

  v71 = v32;
  v72 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v58;
  v38 = v28;
  v39 = v61;
  View.border(_:corner:)(v34, v24, v38, v29, v25, v61, v36, v35);

  (*(v62 + 8))(v31, v39);
  v70 = v12;
  v71 = v39;
  v72 = v36;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v67;
  v42 = v63;
  View.placeholderStyle(_:)(sub_10024EFA8, v69, v63, v40);
  (*(v64 + 8))(v37, v42);
  sub_10024DE78(v12, type metadata accessor for ContextualPreview.Artwork);
  v43 = *v65;
  v44 = v65[1];
  v45 = v65[2];
  v46 = v65[3];
  v47 = v65[4];
  v48 = v65[5];
  LODWORD(v42) = *(v65 + 12);
  v49 = v41;
  v50 = v68;
  sub_1000089F8(v49, v68, &qword_101186918, &qword_100EC22E8);
  v51 = v50;
  v52 = v66;
  sub_1000089F8(v51, v66, &qword_101186918, &qword_100EC22E8);
  v53 = v52 + *(sub_10010FC20(&qword_101186920, &qword_100EC22F0) + 48);
  *v53 = v43;
  *(v53 + 8) = v44;
  *(v53 + 16) = v45;
  *(v53 + 24) = v46;
  *(v53 + 32) = v47;
  *(v53 + 40) = v48;
  *(v53 + 48) = v42;
  sub_10024EA48(v43, v44, v45, v46);

  sub_10024EA48(v43, v44, v45, v46);

  sub_1000095E8(v67, &qword_101186918, &qword_100EC22E8);
  sub_10024EA04(v43, v44, v45, v46);

  return sub_1000095E8(v68, &qword_101186918, &qword_100EC22E8);
}

uint64_t sub_1002415AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v129 = a3;
  v130 = a4;
  v128 = a2;
  v135 = a5;
  v6 = sub_10010FC20(&qword_101186928, &qword_100EC22F8);
  v7 = *(v6 - 8);
  v131 = v6;
  v132 = v7;
  __chkstk_darwin();
  v110 = &v110 - v8;
  sub_10010FC20(&qword_101186930, &qword_100EC2300);
  __chkstk_darwin();
  v134 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v110 - v10;
  v11 = sub_10010FC20(&qword_101186818, &unk_100ED77D0);
  v12 = *(v11 - 8);
  v120 = v11;
  v121 = v12;
  __chkstk_darwin();
  v115 = &v110 - v13;
  v122 = sub_10010FC20(&qword_101186908, &qword_100EC22D8);
  v124 = *(v122 - 8);
  __chkstk_darwin();
  v114 = &v110 - v14;
  v125 = sub_10010FC20(&qword_101186910, &qword_100EC22E0);
  v127 = *(v125 - 8);
  __chkstk_darwin();
  v117 = &v110 - v15;
  v16 = type metadata accessor for DynamicTypeSize();
  v111 = *(v16 - 8);
  v112 = v16;
  __chkstk_darwin();
  v18 = (&v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (type metadata accessor for ContextualPreview.Artwork(0) - 8);
  __chkstk_darwin();
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101186918, &qword_100EC22E8);
  __chkstk_darwin();
  v113 = &v110 - v22;
  v118 = sub_10010FC20(&qword_101186938, &qword_100EC2308) - 8;
  __chkstk_darwin();
  v133 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v110 - v24;
  __chkstk_darwin();
  v137 = &v110 - v25;
  v26 = *a1;
  swift_getKeyPath();
  v27 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data___observationRegistrar;
  *&v143 = v26;
  v28 = sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
  v119 = v27;
  v123 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = v26 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_10024DF48(v29, v21, type metadata accessor for ContextualPreview.Artwork);
  type metadata accessor for ContextualPreview.InlinePreview(0);
  sub_10056CABC(v18);
  v30 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v111 + 8))(v18, v112);
  if (v30)
  {
    v31 = 78.0;
  }

  else
  {
    v31 = 92.0;
  }

  swift_getKeyPath();
  v126 = v26;
  *&v143 = v26;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = v19[10];
  *&v33 = v31 * *(v29 + v32);
  v34 = v19[8];
  v35 = &v21[v19[7]];
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)(v33, 0, 0.0, 1, v168, *&v21[v32]);
  v39 = v21;
  v40 = v115;
  static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(v21, v36, v37, v38, 1, &v21[v34], v168, v115);
  v41 = &v21[v19[11]];
  v42 = *v41;
  v43 = *(v41 + 1);
  LOBYTE(v38) = v41[16];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v114;
  v46 = v120;
  View.corner(_:)(v42, v43, v38, v120, OpaqueTypeConformance2);
  v47 = v40;
  v48 = v46;
  (*(v121 + 8))(v47, v46);
  v49 = Border.artwork.unsafeMutableAddressor();
  v50 = *v49;
  v51 = *(v49 + 1);
  LOBYTE(v36) = *(v49 + 16);

  *&v143 = v48;
  *(&v143 + 1) = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v117;
  v54 = v42;
  v55 = v122;
  View.border(_:corner:)(v50, v36, v54, v43, v38, v122, v52, v51);

  (*(v124 + 8))(v45, v55);
  v138[2] = v39;
  *&v143 = v55;
  *(&v143 + 1) = v52;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v113;
  v58 = v125;
  View.placeholderStyle(_:)(sub_10024F1AC, v138, v125, v56);
  (*(v127 + 8))(v53, v58);
  sub_10024DE78(v39, type metadata accessor for ContextualPreview.Artwork);
  LOBYTE(v36) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = v116;
  sub_10003D17C(v57, v116, &qword_101186918, &qword_100EC22E8);
  v68 = v67 + *(v118 + 44);
  *v68 = v36;
  *(v68 + 8) = v60;
  *(v68 + 16) = v62;
  *(v68 + 24) = v64;
  *(v68 + 32) = v66;
  *(v68 + 40) = 0;
  sub_10003D17C(v67, v137, &qword_101186938, &qword_100EC2308);
  v127 = static HorizontalAlignment.leading.getter();
  v153 = 0;
  sub_10024235C(v128, v129, v130, &v143);
  v162 = v144[7];
  v163 = v144[8];
  v158 = v144[3];
  v159 = v144[4];
  v161 = v144[6];
  v160 = v144[5];
  v154 = v143;
  v155 = v144[0];
  v156 = v144[1];
  v157 = v144[2];
  v165[8] = v144[7];
  v165[9] = v144[8];
  v165[4] = v144[3];
  v165[5] = v144[4];
  v165[7] = v144[6];
  v165[6] = v144[5];
  v165[0] = v143;
  v165[1] = v144[0];
  v164 = v144[9];
  v166 = v144[9];
  v165[3] = v144[2];
  v165[2] = v144[1];
  sub_1000089F8(&v154, &v139, &qword_101186940, &qword_100EC2310);
  v69 = v131;
  sub_1000095E8(v165, &qword_101186940, &qword_100EC2310);
  *(&v152[7] + 7) = v161;
  *(&v152[8] + 7) = v162;
  *(&v152[9] + 7) = v163;
  *(&v152[3] + 7) = v157;
  *(&v152[4] + 7) = v158;
  *(&v152[5] + 7) = v159;
  *(&v152[6] + 7) = v160;
  *(v152 + 7) = v154;
  *(&v152[1] + 7) = v155;
  *(&v152[10] + 7) = v164;
  *(&v152[2] + 7) = v156;
  LODWORD(v130) = v153;
  LODWORD(v129) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  swift_getKeyPath();
  *&v143 = v126;
  v78 = v126;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v79 = 1;
  if (*(v78 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) == 1)
  {
    v80 = Image.init(systemName:)();
    v81 = static Font.body.getter();
    KeyPath = swift_getKeyPath();
    v83 = static HierarchicalShapeStyle.secondary.getter();
    v84 = v110;
    v85 = &v110[*(v69 + 36)];
    v86 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
    v87 = enum case for Image.Scale.medium(_:);
    v88 = type metadata accessor for Image.Scale();
    (*(*(v88 - 8) + 104))(v85 + v86, v87, v88);
    *v85 = swift_getKeyPath();
    *v84 = v80;
    *(v84 + 8) = KeyPath;
    *(v84 + 16) = v81;
    *(v84 + 24) = v83;
    sub_10003D17C(v84, v136, &qword_101186928, &qword_100EC22F8);
    v79 = 0;
  }

  v89 = v136;
  (*(v132 + 56))(v136, v79, 1, v69);
  v90 = v137;
  v91 = v133;
  sub_1000089F8(v137, v133, &qword_101186938, &qword_100EC2308);
  v92 = v134;
  sub_1000089F8(v89, v134, &qword_101186930, &qword_100EC2300);
  v93 = v135;
  sub_1000089F8(v91, v135, &qword_101186938, &qword_100EC2308);
  v94 = sub_10010FC20(&qword_101186948, &qword_100EC2318);
  v95 = v94[12];
  *(&v140[7] + 1) = v152[7];
  *(&v140[8] + 1) = v152[8];
  *(&v140[9] + 1) = v152[9];
  *(&v140[9] + 12) = *(&v152[9] + 11);
  *(&v140[3] + 1) = v152[3];
  *(&v140[4] + 1) = v152[4];
  v96 = (v93 + v95);
  v97 = v127;
  v139 = v127;
  v98 = v130;
  LOBYTE(v140[0]) = v130;
  *(&v140[5] + 1) = v152[5];
  *(&v140[6] + 1) = v152[6];
  *(&v140[1] + 1) = v152[1];
  *(&v140[2] + 1) = v152[2];
  *(v140 + 1) = v152[0];
  v99 = v129;
  LOBYTE(v141) = v129;
  *(&v141 + 1) = *v167;
  DWORD1(v141) = *&v167[3];
  *(&v141 + 1) = v71;
  *&v142[0] = v73;
  *(&v142[0] + 1) = v75;
  *&v142[1] = v77;
  BYTE8(v142[1]) = 0;
  v100 = v140[8];
  v96[8] = v140[7];
  v96[9] = v100;
  v101 = v140[10];
  v96[10] = v140[9];
  v96[11] = v101;
  v102 = v140[4];
  v96[4] = v140[3];
  v96[5] = v102;
  v103 = v140[6];
  v96[6] = v140[5];
  v96[7] = v103;
  v104 = v140[0];
  *v96 = v139;
  v96[1] = v104;
  v105 = v140[2];
  v96[2] = v140[1];
  v96[3] = v105;
  v106 = *(v142 + 9);
  v107 = v142[0];
  v96[12] = v141;
  v96[13] = v107;
  *(v96 + 217) = v106;
  v108 = v93 + v94[16];
  *v108 = 0;
  *(v108 + 8) = 1;
  sub_1000089F8(v92, v93 + v94[20], &qword_101186930, &qword_100EC2300);
  sub_1000089F8(&v139, &v143, &qword_101186950, &unk_100EC2320);
  sub_1000095E8(v89, &qword_101186930, &qword_100EC2300);
  sub_1000095E8(v90, &qword_101186938, &qword_100EC2308);
  sub_1000095E8(v92, &qword_101186930, &qword_100EC2300);
  *(&v144[7] + 1) = v152[7];
  *(&v144[8] + 1) = v152[8];
  *(&v144[9] + 1) = v152[9];
  *(&v144[9] + 12) = *(&v152[9] + 11);
  *(&v144[3] + 1) = v152[3];
  *(&v144[4] + 1) = v152[4];
  *(&v144[5] + 1) = v152[5];
  *(&v144[6] + 1) = v152[6];
  *(v144 + 1) = v152[0];
  *(&v144[1] + 1) = v152[1];
  v143 = v97;
  LOBYTE(v144[0]) = v98;
  *(&v144[2] + 1) = v152[2];
  v145 = v99;
  *v146 = *v167;
  *&v146[3] = *&v167[3];
  v147 = v71;
  v148 = v73;
  v149 = v75;
  v150 = v77;
  v151 = 0;
  sub_1000095E8(&v143, &qword_101186950, &unk_100EC2320);
  return sub_1000095E8(v91, &qword_101186938, &qword_100EC2308);
}